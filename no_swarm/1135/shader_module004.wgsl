struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-24841i, 2147483647i), 916f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>) -> vec4<u32> {
    var var_0 = Struct_2(vec3<bool>(u_input.c.x <= u_input.c.x, global1.x, !global1.x));
    let var_1 = Struct_1(reverseBits(select(_wgslsmith_mult_vec2_i32(global2.a, arg_0.zz) ^ u_input.d, ~(~vec2<i32>(u_input.e, u_input.e)), -760f == _wgslsmith_div_f32(global2.b, -1414f))), _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(-global2.b)));
    var var_2 = u_input.b.zw;
    let var_3 = u_input.d;
    var_2 = ~(u_input.c.yy >> (_wgslsmith_sub_vec2_u32(~min(vec2<u32>(29928u, 41550u), vec2<u32>(var_2.x, u_input.c.x)), vec2<u32>(reverseBits(1u), max(var_2.x, var_2.x))) % vec2<u32>(32u)));
    return ~(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, 11577u, var_2.x), u_input.b) << (countOneBits(4294967295u) % 32u), reverseBits(var_2.x), 32967u, 15190u) & ~u_input.b);
}

fn func_2(arg_0: vec3<i32>) -> bool {
    global0 = array<Struct_2, 8>();
    var var_0 = _wgslsmith_clamp_vec4_u32(u_input.b, firstLeadingBit(_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(u_input.a, u_input.b.x, u_input.c.x, 4294967295u) ^ vec4<u32>(0u, 1u, u_input.c.x, u_input.b.x))), u_input.b | ~func_3(vec4<i32>(1i, 2147483647i, 2147483647i, arg_0.x))) | _wgslsmith_clamp_vec4_u32(vec4<u32>(~52185u, ~11589u, abs(5707u), u_input.a) ^ vec4<u32>(abs(u_input.b.x), ~u_input.a, 76624u, 0u >> (u_input.c.x % 32u)), u_input.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(func_3(vec4<i32>(28673i, arg_0.x, arg_0.x, u_input.e)).x, ~u_input.a, u_input.c.x, u_input.b.x), reverseBits(vec4<u32>(u_input.c.x, 0u, 43377u, 0u)) | select(u_input.b, u_input.b, vec4<bool>(global1.x, true, true, false)), u_input.b));
    var var_1 = Struct_1(~vec2<i32>(arg_0.x, global2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -342f));
    var var_2 = u_input.e;
    var var_3 = abs(var_1.a.x);
    return global1.x;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>) -> bool {
    let var_0 = min(~9700i, countOneBits(u_input.d.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x)))) * -832f);
    var var_2 = _wgslsmith_f_op_f32(-var_1);
    global0 = array<Struct_2, 8>();
    let var_3 = Struct_2(vec3<bool>(func_2(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(43590i, global2.a.x, -2147483647i), vec3<i32>(27057i, -1i, -7604i), vec3<i32>(global2.a.x, 1i, u_input.e)))), !all(select(vec4<bool>(arg_0.a.x, global1.x, global1.x, arg_0.a.x), vec4<bool>(false, arg_0.a.x, true, arg_1), vec4<bool>(false, global1.x, true, false))), -_wgslsmith_div_i32(2147483647i, var_0) != 17781i));
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: bool) -> StorageBuffer {
    let var_0 = u_input.b;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(731f, arg_1.x, 259f), arg_1))))))), u_input.e, vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_div_i32(2147483647i, global2.a.x), max(global2.a.x, 61495i), global2.a.x, _wgslsmith_mult_i32(u_input.e, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 8>();
    global1 = !(!select(select(select(vec4<bool>(false, false, true, global1.x), vec4<bool>(false, false, global1.x, true), false), !vec4<bool>(true, global1.x, global1.x, global1.x), !global1.x), vec4<bool>(any(global1.zyz), global1.x, global1.x, true), select(vec4<bool>(global1.x, false, global1.x, global1.x), select(vec4<bool>(true, false, false, true), vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x)), select(true, true, true))));
    global0 = array<Struct_2, 8>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1592f, -1011f, global2.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, 1000f, -628f)) - _wgslsmith_div_vec3_f32(vec3<f32>(1614f, global2.b, global2.b), vec3<f32>(global2.b, global2.b, global2.b))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(736f, 923f, global2.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-387f, -772f, global2.b)), select(vec3<bool>(false, global1.x, global1.x), global1.wxz, global1.x))))));
    let var_1 = u_input.b.x;
    var var_2 = vec3<i32>(0i, ~2147483647i, -5162i);
    let x = u_input.a;
    s_output = func_4(select(!select(!global1.zzz, global1.xwx, true), !vec3<bool>(true, any(global1.wwy), true), func_1(Struct_2(vec3<bool>(global1.x, false, false)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, var_1), vec3<u32>(0u, u_input.a, u_input.c.x)) > 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1499f, var_0.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -892f, var_0.x) + vec3<f32>(global2.b, -704f, global2.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(103f, var_0.x, global2.b), vec3<f32>(-489f, global2.b, 801f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, global2.b, global2.b) - vec3<f32>(global2.b, var_0.x, global2.b)))))), !global1.x | global1.x);
}

