struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec3<bool>(false, true, false), 2147483647i, 562f, vec2<i32>(-1i, 31897i), -928f), Struct_3(vec3<bool>(false, false, false), 31869i, 178f, vec2<i32>(52077i, 38909i), 1298f), Struct_3(vec3<bool>(false, true, false), -8742i, -1098f, vec2<i32>(-1i, 2147483647i), 399f), Struct_3(vec3<bool>(true, true, true), -1i, -586f, vec2<i32>(-18365i, 9200i), 998f), Struct_3(vec3<bool>(true, true, true), -35868i, -352f, vec2<i32>(6715i, 0i), 301f), Struct_3(vec3<bool>(true, false, true), 40444i, -2298f, vec2<i32>(0i, -16451i), -177f), Struct_3(vec3<bool>(false, false, true), -3810i, 583f, vec2<i32>(-19528i, i32(-2147483648)), 742f), Struct_3(vec3<bool>(true, true, true), -26928i, -787f, vec2<i32>(-1i, 25581i), -1225f), Struct_3(vec3<bool>(false, false, false), 3937i, -1000f, vec2<i32>(-8701i, 1i), 389f), Struct_3(vec3<bool>(true, true, true), 0i, -682f, vec2<i32>(2147483647i, -10085i), -382f), Struct_3(vec3<bool>(true, true, false), -12552i, -1004f, vec2<i32>(-1i, 20507i), 1026f), Struct_3(vec3<bool>(false, true, false), 6427i, 1371f, vec2<i32>(i32(-2147483648), i32(-2147483648)), 1317f), Struct_3(vec3<bool>(false, true, false), 0i, -548f, vec2<i32>(2147483647i, -1i), -1380f), Struct_3(vec3<bool>(true, true, true), 2147483647i, 1896f, vec2<i32>(-33215i, -1i), -816f), Struct_3(vec3<bool>(false, true, false), 0i, 1000f, vec2<i32>(2147483647i, 2147483647i), -1647f), Struct_3(vec3<bool>(true, true, false), 0i, -926f, vec2<i32>(-1i, 25030i), 475f), Struct_3(vec3<bool>(true, false, false), i32(-2147483648), -377f, vec2<i32>(i32(-2147483648), 1i), 764f), Struct_3(vec3<bool>(false, false, false), -1i, 636f, vec2<i32>(-31986i, i32(-2147483648)), 1807f), Struct_3(vec3<bool>(false, true, false), 24126i, -229f, vec2<i32>(12125i, -1i), 1152f), Struct_3(vec3<bool>(true, false, false), -3757i, -525f, vec2<i32>(50896i, 1i), 1127f), Struct_3(vec3<bool>(false, false, true), i32(-2147483648), 774f, vec2<i32>(-1i, 1i), 1000f), Struct_3(vec3<bool>(true, true, false), 1i, -704f, vec2<i32>(0i, 9655i), -164f));

var<private> global1: array<Struct_2, 5>;

var<private> global2: u32 = 21599u;

var<private> global3: array<vec3<f32>, 3>;

var<private> global4: array<vec3<u32>, 29>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: bool) -> u32 {
    var var_0 = arg_0.a;
    let var_1 = vec3<i32>(countOneBits(43642i), _wgslsmith_dot_vec4_i32(-(firstLeadingBit(vec4<i32>(arg_0.d, 51728i, arg_1.d.x, arg_1.d.x)) >> (~arg_0.b % vec4<u32>(32u))), vec4<i32>(arg_1.b, 2950i, abs(min(arg_1.b, -34342i)), ~arg_1.d.x)), -u_input.c);
    global1 = array<Struct_2, 5>();
    let var_2 = Struct_2(363f, ~1i);
    var var_3 = all(select(!select(vec3<bool>(false, false, arg_3), select(vec3<bool>(false, arg_3, true), arg_1.a, arg_1.a), !arg_3), select(!(!arg_1.a), select(!vec3<bool>(true, arg_0.e, true), select(vec3<bool>(false, false, false), vec3<bool>(arg_0.c, true, false), vec3<bool>(false, false, arg_3)), arg_1.a.x), arg_0.c), vec3<bool>(select(!arg_1.a.x, false, true), any(arg_1.a.zz), any(vec3<bool>(arg_0.c, true, arg_3)))));
    return _wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(u_input.a.x, ~(1u & arg_0.b.x), arg_0.a) | ~_wgslsmith_mod_u32(1u, 4294967295u | u_input.b.x));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(func_3(Struct_1(18253u, vec4<u32>(u_input.a.x, 0u, u_input.a.x, 38474u), any(vec3<bool>(true, true, true)), u_input.c, false), Struct_3(vec3<bool>(false, true, true), -1i, -307f, vec2<i32>(u_input.c, u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -1133f)), max(u_input.a, select(vec2<u32>(17614u, u_input.a.x), u_input.a, false)), false) & max(~(~10381u), reverseBits(~u_input.b.x)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 21884u, 50360u, 37270u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 6090u) ^ vec4<u32>(u_input.a.x, 23037u, 1u, u_input.a.x))), all(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(false, false, false, false)), true, true, true), vec4<bool>(true, true, true, true))), abs(u_input.c), true);
    var var_1 = countOneBits(u_input.c);
    global2 = var_0.b.x;
    let var_2 = Struct_4(Struct_1(var_0.b.x, vec4<u32>(~var_0.b.x, u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(var_0.a, 0u)), var_0.b.x), any(vec2<bool>(var_0.e, var_0.c)), 2147483647i, var_0.c));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1173f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-772f)))) - _wgslsmith_f_op_f32(f32(-1f) * -736f)), _wgslsmith_mult_i32(0i, min(min(_wgslsmith_sub_i32(37172i, 92404i), var_0.d), u_input.c)));
    return _wgslsmith_div_i32(min(u_input.c, var_2.a.d), -17969i);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> i32 {
    global0 = array<Struct_3, 22>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(arg_0.e + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1309f, -1027f))), _wgslsmith_mult_i32(~u_input.c, -2147483647i));
    var var_1 = Struct_4(Struct_1(0u >> (u_input.a.x % 32u), u_input.b, false, func_2(), arg_0.a.x));
    var var_2 = var_1.a;
    var var_3 = var_2.d;
    return arg_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~select(u_input.c, func_1(Struct_3(vec3<bool>(false, false, true), u_input.c, 889f, vec2<i32>(-1i, u_input.c), 942f), Struct_3(vec3<bool>(true, false, true), 5112i, 160f, vec2<i32>(u_input.c, u_input.c), -423f)) | (i32(-1i) * -45631i), all(vec2<bool>(true, true))));
    global2 = ~(~max(~_wgslsmith_div_u32(38677u, u_input.b.x), ~4294967295u));
    global0 = array<Struct_3, 22>();
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-467f, 438f, 651f, -1447f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1664f, -175f, 445f, 606f) * vec4<f32>(1405f, -1000f, -467f, -779f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 679f, -1135f, 1354f))))))));
    let var_2 = u_input.b.x;
    let var_3 = global1[_wgslsmith_index_u32(u_input.a.x, 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-33682i, ~(-var_3.b) ^ 25962i));
}

