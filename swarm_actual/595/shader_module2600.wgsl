struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: vec2<i32>;

var<private> global2: Struct_1;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> vec3<u32> {
    let var_0 = Struct_1(vec3<i32>(~u_input.b.x, global1.x, 2147483647i), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(585f)), global2.b.x, global2.d) - _wgslsmith_f_op_vec3_f32(-global2.b)))), ~abs(~vec3<u32>(10446u, u_input.a.x, 31896u)), global2.d);
    let var_1 = vec2<i32>(global2.a.x, 28032i);
    let var_2 = !arg_0.xy;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.x, -1449f, -389f));
    var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.b, var_0.b))))), var_0.b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(var_0.b, vec3<f32>(1070f, var_0.b.x, _wgslsmith_f_op_f32(min(-588f, 2401f))), arg_1)))), arg_0.x));
    return _wgslsmith_mult_vec3_u32(~var_0.c | _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 2077u, var_0.c.x), var_0.c), vec3<u32>(u_input.a.x, var_0.c.x, u_input.a.x)), var_0.c) >> (_wgslsmith_add_vec3_u32(u_input.a.xww, abs(~(~var_0.c))) % vec3<u32>(32u));
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(-(~(vec3<i32>(-1i) * -vec3<i32>(-33883i, -22256i, 1i))), _wgslsmith_f_op_vec3_f32(-global2.b), arg_3.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.b.x)) + _wgslsmith_f_op_f32(global2.d - global2.d)), _wgslsmith_f_op_f32(min(global2.d, _wgslsmith_f_op_f32(f32(-1f) * -1305f))))));
    global0 = firstLeadingBit(global2.a.x);
    let var_1 = !vec3<bool>(true, true, arg_2);
    var var_2 = reverseBits(global2.c);
    var var_3 = vec3<bool>(var_0.c.x < arg_3.c.x, all(var_1.zz) || false, !(!all(vec3<bool>(var_1.x, var_1.x, false))));
    return global1.x;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global0 = _wgslsmith_sub_i32(~(~global1.x), 36854i);
    global2 = Struct_1(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(select(global1.x, 33361i, true), select(0i, u_input.b.x, true)), i32(-1i) * -global2.a.x), func_4(2147483647i, global2.a.zz, true, Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(max(global2.b, global2.b)), func_3(vec4<bool>(false, true, false, false), false), _wgslsmith_f_op_f32(arg_0.x + global2.d))), ~(~global1.x & 60648i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 784f, global2.d))))), select(~global2.c, vec3<u32>(u_input.a.x, 4294967295u, max(global2.c.x, ~u_input.a.x)), false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -448f)), global2.d, any(vec4<bool>(false, false, false, false)) & true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-209f + _wgslsmith_f_op_f32(global2.d * global2.b.x)) * global2.b.x)));
    var var_0 = global2.b.x;
    let var_1 = global2.a.x;
    let var_2 = 1u;
    return Struct_1(u_input.b.yzz, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.d, arg_0.x, arg_0.x))) * _wgslsmith_f_op_vec3_f32(-global2.b))))), u_input.a.zww, 963f);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = arg_0;
    return func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.b.x, -884f, _wgslsmith_f_op_f32(-577f - 1219f), global2.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(abs(select(4294967295u, global2.c.x, all(vec2<bool>(true, true)))), true, vec2<bool>(true, true), vec4<bool>(true, true, true, true));
    let var_0 = !(global2.b.x >= _wgslsmith_f_op_f32(global2.b.x + _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(global2.d - global2.d))));
    global2 = Struct_1(_wgslsmith_div_vec3_i32(global2.a, (u_input.b.wzz & ~vec3<i32>(u_input.b.x, global2.a.x, 6087i)) >> (abs(u_input.a.xyw ^ u_input.a.wwz) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(func_1(1u, var_0, vec2<bool>(var_0, false), vec4<bool>(var_0, var_0, var_0, true)).b.x, _wgslsmith_f_op_f32(500f + global2.b.x), -3284f) - vec3<f32>(_wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(-global2.d), -492f))), func_3(select(vec4<bool>(false, var_0, var_0, true), select(vec4<bool>(true, var_0, true, false), vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(false, var_0, var_0, true)), vec4<bool>(true, true, true, true)), true) | global2.c, _wgslsmith_f_op_f32(exp2(global2.d)));
    var var_1 = var_0;
    var var_2 = max(global2.c.yy, ~global2.c.zx);
    global0 = -1i;
    var var_3 = vec2<i32>(u_input.b.x, _wgslsmith_add_i32(~abs(12203i << (0u % 32u)), 64290i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, vec2<u32>(global2.c.x | 6323u, _wgslsmith_sub_u32(~(~u_input.a.x), firstTrailingBit(4294967295u) | 0u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -749f), global2.b.x), 1543f, u_input.b.x);
}

