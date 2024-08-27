struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22>;

var<private> global1: f32 = -696f;

var<private> global2: array<Struct_5, 31>;

var<private> global3: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(1764i, -58896i), vec2<i32>(2147483647i, 0i), vec2<i32>(11293i, -3865i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_5 {
    let var_0 = Struct_1(vec4<bool>(false, (all(vec3<bool>(false, false, true)) & true) && true, select(select(u_input.c.x, arg_1.a, true) > (1u << (u_input.c.x % 32u)), select(u_input.b < u_input.d, u_input.b != 2147483647i, false), !select(false, true, true)), false), -firstLeadingBit(vec4<i32>(u_input.b, _wgslsmith_mult_i32(42601i, -46579i), u_input.d, 1i)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-756f, -1716f, -464f)))))), u_input.c.x < min(arg_0.x, 4294967295u << (arg_1.a % 32u)));
    global3 = array<vec2<i32>, 3>();
    global0 = array<vec3<i32>, 22>();
    global1 = 1588f;
    let var_1 = firstTrailingBit(u_input.c.xzy);
    return global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(12775u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_1.x, 4294967295u), arg_1.a)), ~4294967295u), 31u)];
}

fn func_3(arg_0: Struct_5) -> Struct_4 {
    global1 = arg_0.b.a;
    global0 = array<vec3<i32>, 22>();
    global0 = array<vec3<i32>, 22>();
    let var_0 = vec4<bool>(!(!(_wgslsmith_mod_u32(u_input.c.x, 1u) <= _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.a))), !any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)), arg_0.a <= (_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -55121i, u_input.b, u_input.d) | vec4<i32>(u_input.d, 2147483647i, -26106i, arg_0.a), vec4<i32>(0i, 35293i, u_input.d, arg_0.a)) & _wgslsmith_add_i32(~(-54339i), u_input.b)), select(!((u_input.b < -1i) | select(true, true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(1f + -388f) < arg_0.b.a));
    return Struct_4(0u);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: u32) -> vec2<u32> {
    let var_0 = func_3(func_2(select(u_input.c.xw, u_input.c.zw, !arg_1.x), Struct_3(countOneBits(arg_2))));
    global3 = array<vec2<i32>, 3>();
    let var_1 = vec2<bool>(arg_1.x, arg_1.x);
    return vec2<u32>(arg_2, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.e | (u_input.e & ~0u), 22u)];
    var var_1 = max(~func_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1155f, -354f))), vec3<bool>(false, false, false), u_input.c.x & 36593u), _wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.c.ww, vec2<u32>(4294967295u, 31563u)), u_input.c.xz, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.e), vec2<u32>(u_input.e, 72218u)), ~u_input.e))) >> (u_input.c.xy % vec2<u32>(32u));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -210f) * 569f));
    var var_3 = Struct_1(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false), true), !all(vec4<bool>(true, true, true, false))), ~(~(-vec4<i32>(u_input.b, u_input.d, 1i, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.a, 494f, var_2.a))))))), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let var_4 = -(var_0.yy >> (~(u_input.c.wz | u_input.c.xz) % vec2<u32>(32u))) ^ ~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(368i, -44297i, var_0.x), vec3<i32>(-38595i, var_3.b.x, 2147483647i)), ~abs(2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.zy, 0u, _wgslsmith_mod_i32(2147483647i, -14860i >> (1u % 32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_2.a)), _wgslsmith_div_f32(665f, -316f), false)), var_3.c.x, 938f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-809f - _wgslsmith_f_op_f32(f32(-1f) * -1377f))), var_2.a)));
}

