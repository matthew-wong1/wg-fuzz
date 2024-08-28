struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(4294967295u, 0u, 0u, 44271u, 4294967295u, 63520u, 14807u, 1u, 4294967295u, 27045u, 1u, 84767u, 5397u, 0u, 1u, 0u, 65525u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> f32 {
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    var var_0 = Struct_2(-(min(countOneBits(arg_1.xx), arg_1.zx) | countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 5033i), arg_1.zz))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1086f, -249f, -1234f, 609f))), vec4<f32>(-175f, _wgslsmith_f_op_f32(560f * 218f), _wgslsmith_f_op_f32(step(-1000f, 716f)), _wgslsmith_f_op_f32(143f - -1000f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1006f, -563f, 253f, -467f), vec4<f32>(-644f, 1778f, -1815f, 269f))))), 19976u);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-var_0.b.x), -arg_0);
    return -1000f;
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> f32 {
    global0 = array<u32, 17>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1188f, -435f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1801f), _wgslsmith_f_op_f32(abs(-1939f)))))) + _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_i32(arg_1.x, u_input.a), -select(vec3<i32>(arg_1.x, 0i, -2147483647i), vec3<i32>(22599i, -5777i, arg_1.x), true)))), firstTrailingBit(arg_1.x));
    var var_1 = vec3<bool>(false, arg_0, true);
    global0 = array<u32, 17>();
    return -858f;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_5) -> f32 {
    var var_0 = ~(~(~(~1u)));
    let var_1 = _wgslsmith_sub_u32(reverseBits(14884u), firstTrailingBit(~(~(~arg_1.c))));
    let var_2 = 78446u;
    var_0 = ~_wgslsmith_dot_vec2_u32(max(~(~vec2<u32>(9628u, 1u)), vec2<u32>(~4294967295u, 0u)), (_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 28353u), vec2<u32>(56087u, var_1)) | select(vec2<u32>(u_input.b.x, var_2), vec2<u32>(0u, arg_1.c), arg_3.a.b.x)) & ~u_input.b.zy);
    var var_3 = ~(~max(vec2<u32>(_wgslsmith_mod_u32(23290u, global0[_wgslsmith_index_u32(5994u, 17u)]), _wgslsmith_add_u32(var_2, 0u)), vec2<u32>(_wgslsmith_mod_u32(21601u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)]), 1u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3.a.a, _wgslsmith_div_f32(-372f, 1072f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.x + arg_1.b.x))), 272f))));
}

fn func_1() -> vec3<u32> {
    global0 = array<u32, 17>();
    let var_0 = vec3<f32>(-228f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(497f))) - -280f), _wgslsmith_f_op_f32(func_4(u_input.c, Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -14791i), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -64914i), vec2<i32>(30849i, u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -111f, 203f, -790f)) + vec4<f32>(1000f, -1000f, 725f, 1324f)), global0[_wgslsmith_index_u32(~4294967295u, 17u)]), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1164f)), -199f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * -606f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(true, vec3<i32>(u_input.c, u_input.a, 1i))), _wgslsmith_f_op_f32(-2328f * -605f))), Struct_5(Struct_1(-418f, vec2<bool>(false, false), -vec4<i32>(u_input.c, 2147483647i, -34442i, u_input.a), -u_input.c), (u_input.c | u_input.c) > -49670i))));
    var var_1 = Struct_2(abs(_wgslsmith_add_vec2_i32(min(~vec2<i32>(u_input.c, 37076i), vec2<i32>(-13642i, u_input.a) | vec2<i32>(u_input.c, 26315i)), abs(select(vec2<i32>(u_input.c, u_input.a), vec2<i32>(u_input.a, 0i), vec2<bool>(true, true))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(func_4(2147483647i, Struct_2(vec2<i32>(u_input.c, 46620i), vec4<f32>(658f, var_0.x, var_0.x, var_0.x), 11128u), vec4<f32>(var_0.x, var_0.x, var_0.x, -300f), Struct_5(Struct_1(-107f, vec2<bool>(true, false), vec4<i32>(u_input.a, u_input.a, 45598i, -2147483647i), u_input.a), true)))))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-1572f - var_0.x))), ~u_input.b.x);
    var var_2 = _wgslsmith_f_op_f32(-828f * var_1.b.x);
    var_1 = Struct_2(vec2<i32>((var_1.a.x ^ (i32(-1i) * -52181i)) >> (var_1.c % 32u), -abs(~u_input.c)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_1.b, vec4<f32>(930f, -2427f, var_0.x, -192f))) - vec4<f32>(1239f, -866f, var_1.b.x, var_1.b.x))))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 4294967295u, global0[_wgslsmith_index_u32(var_1.c, 17u)], var_1.c)) | vec4<u32>(31211u, u_input.b.x, var_1.c, 3963u)), firstTrailingBit(vec4<u32>(~global0[_wgslsmith_index_u32(var_1.c, 17u)], ~var_1.c, var_1.c, _wgslsmith_mult_u32(0u, 4294967295u)))), 17u)]);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(round(-434f)), u_input.a);
    var var_1 = func_1();
    global0 = array<u32, 17>();
    var_1 = ~abs(countOneBits(u_input.b));
    var_0 = Struct_4(var_0.a, _wgslsmith_mod_i32(var_0.b, countOneBits(10660i)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~min(~vec4<u32>(var_1.x, 61497u, 0u, u_input.b.x), firstTrailingBit(vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.b.x, 17u)], 2358u, 1u)))), _wgslsmith_f_op_f32(func_4(_wgslsmith_mod_i32(~(-1i), _wgslsmith_div_i32(-2147483647i, i32(-1i) * -19706i)), Struct_2(-vec2<i32>(-3357i, 2147483647i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_0.a, -419f) - vec4<f32>(var_0.a, 1973f, var_0.a, -654f)), vec4<f32>(-716f, var_0.a, var_0.a, var_0.a)), ~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(74353u, 17u)], 4294967295u)), vec4<f32>(var_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(var_0.b, vec3<i32>(-66348i, u_input.c, 20217i))), _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-549f))), _wgslsmith_f_op_f32(-1f)), Struct_5(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2355f), vec2<bool>(false, true), -vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 6533i), vec2<i32>(u_input.c, 0i))), true))), vec4<i32>(~(-var_0.b), u_input.a | 37179i, i32(-1i) * -54957i, _wgslsmith_sub_i32(u_input.c, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(var_0.b, 0i)))));
}

