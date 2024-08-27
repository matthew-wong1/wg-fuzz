struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: bool,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_4, 27>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec2<f32> {
    let var_0 = Struct_1(vec4<u32>(4294967295u, _wgslsmith_mod_u32(u_input.c, 7352u) & ~_wgslsmith_mult_u32(u_input.c, 1u), u_input.c, 0u), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, 4294967295u), u_input.d.zx), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-605f)) - 791f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), -294f)) * 1781f), _wgslsmith_f_op_f32(global1.x - 774f)), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1430f, 357f)))))));
    var var_1 = var_0.c;
    let var_2 = -u_input.a;
    let var_3 = 0i;
    let var_4 = false || (var_3 < _wgslsmith_mod_i32(u_input.a.x ^ _wgslsmith_add_i32(22082i, var_3), (var_2.x ^ 0i) >> (4294967295u % 32u)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(var_0.c.xz))))), _wgslsmith_f_op_vec2_f32(trunc(var_1.zy)))) + vec2<f32>(-664f, var_1.x));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_5) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(arg_1.a.c.x, arg_2.b.b), arg_2.b.b, _wgslsmith_f_op_f32(floor(global1.x)), 394f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.b, arg_1.b.b.d, 815f, global1.x) - vec4<f32>(arg_1.a.d, arg_2.b.b, 437f, arg_2.b.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.b, global1.x, -1121f, -122f)))))))));
    var var_1 = arg_0.xyz;
    global0 = !select(vec4<bool>(true, _wgslsmith_f_op_f32(trunc(359f)) >= arg_2.b.b, true, all(vec3<bool>(false, arg_2.c, arg_1.b.a.x))), vec4<bool>(true, any(vec4<bool>(arg_2.a, true, arg_1.b.a.x, arg_2.c)), all(select(global0.xw, arg_1.b.a.yy, vec2<bool>(global0.x, true))), arg_2.a), any(!global0.yw));
    let var_2 = 1189f;
    var var_3 = -1000f;
    return arg_1.b.a.x;
}

fn func_2() -> f32 {
    global2 = array<Struct_4, 27>();
    let var_0 = ~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.c, u_input.c) | vec4<u32>(u_input.c, 19761u, 24461u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.d.x, 1u) >> (vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.d.x) % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global1.x));
    let var_2 = Struct_5(all(vec2<bool>(true, select(global0.x, global0.x, false) && true)), Struct_4(min(var_0.zz, max(~vec2<u32>(u_input.c, 4294967295u), vec2<u32>(47968u, 13191u))), _wgslsmith_f_op_f32(-632f * global1.x)), select(all(!global0.wy), func_3(vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(-2147483647i, u_input.a.x, -18418i), 2147483647i, -u_input.b.x), Struct_3(Struct_1(vec4<u32>(var_0.x, 1u, 0u, var_0.x), 1u, global1.www, 282f), Struct_2(vec3<bool>(true, global0.x, false), Struct_1(vec4<u32>(0u, 0u, 7049u, u_input.d.x), var_0.x, vec3<f32>(global1.x, var_1, var_1), 1000f))), Struct_5(true, global2[_wgslsmith_index_u32(u_input.d.x, 27u)], global0.x & global0.x, u_input.d.x << (u_input.c % 32u), _wgslsmith_add_i32(u_input.a.x, -2147483647i))), !global0.x), _wgslsmith_dot_vec3_u32(u_input.d, var_0.xxz), reverseBits(-2147483647i));
    var var_3 = var_2;
    return var_2.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~(~(~min(u_input.b.x, u_input.b.x))), u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.zz) * global1.wy)), _wgslsmith_f_op_vec2_f32(global1.wy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(481f, -447f), vec2<f32>(-1000f, 174f), global0.x)))))) + global1.xz);
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 984f, 199f, -2162f), vec4<f32>(global1.x, var_1.x, 634f, global1.x), vec4<bool>(global0.x, false, false, false))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, global1.x, -166f, 1611f), vec4<f32>(global1.x, 106f, var_1.x, -1460f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(412f * var_1.x))) + global1.zwy), var_1);
}

