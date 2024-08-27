struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = 0u;
    let var_1 = _wgslsmith_div_i32(-44698i, arg_0 ^ -26586i) ^ (i32(-1i) * -arg_0);
    let var_2 = Struct_4(vec4<bool>(any(!select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), select(false, !(arg_3.e.x > arg_3.d.x), true), !(-1250f == _wgslsmith_f_op_f32(136f * arg_3.e.x)), arg_2));
    let var_3 = -64138i;
    return -select(vec3<i32>(_wgslsmith_sub_i32(-79413i, ~arg_0), -2147483647i, abs(var_3)), -max(vec3<i32>(var_1, -28381i, var_3) ^ vec3<i32>(var_3, arg_0, -14195i), ~vec3<i32>(arg_0, 54791i, -1i)), var_2.a.wyx);
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> u32 {
    var var_0 = !select(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), ~arg_1 >= 1u, true, true), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true);
    let var_1 = 1i;
    let var_2 = Struct_4(select(select(vec4<bool>(var_0.x, var_0.x, select(var_0.x, var_0.x, var_0.x), true), vec4<bool>(any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), var_0.x & false, all(vec4<bool>(false, var_0.x, var_0.x, true)), true), !var_0.x), !select(!vec4<bool>(false, var_0.x, true, false), !vec4<bool>(var_0.x, false, false, true), true), vec4<bool>(var_0.x | true, var_0.x, true, false)));
    var var_3 = -2147483647i;
    var var_4 = ~(-vec2<i32>(1i, var_1) << (~_wgslsmith_div_vec2_u32(vec2<u32>(29711u, 37990u), vec2<u32>(u_input.a, 4160u)) % vec2<u32>(32u))) ^ abs(countOneBits(~(-vec2<i32>(var_1, var_1))));
    return u_input.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(arg_1.c.www * _wgslsmith_f_op_vec3_f32(-arg_1.a.d.xwz));
    let var_1 = arg_1.a;
    var var_2 = Struct_1((u_input.a > ~abs(arg_2.x)) == true, 3302u, _wgslsmith_f_op_f32(-1503f * var_0.x), vec4<f32>(var_1.e.x, -263f, _wgslsmith_f_op_f32(step(arg_1.a.e.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-2092f, var_1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -637f)))), 312f), arg_1.c.xz);
    let var_3 = Struct_3(arg_1.b, 4294967295u);
    var_2 = var_1;
    return arg_1;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(arg_3.a, 10624i), min(arg_3.a, arg_3.a)), 0i, ~8296i), ~((vec3<i32>(arg_3.a, 5012i, -51868i) | vec3<i32>(-2147483647i, -18160i, -1i)) | func_2(arg_3.a, arg_2.a.ww, false, Struct_1(arg_2.a.x, arg_1.b, -1187f, arg_1.d, arg_0)))), Struct_2(Struct_1(true, arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.e.x, arg_0.x)), arg_1.d, arg_1.d.xw), 47207i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2232f, arg_0.x, -674f, arg_0.x) - arg_1.d) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.d * vec4<f32>(arg_0.x, arg_1.e.x, 327f, -1000f)) * arg_1.d))), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, arg_3.b, arg_3.b, 0u), vec4<u32>(1u, 21358u, arg_1.b, 0u)), u_input.b & 22579u, func_3(vec2<f32>(467f, arg_0.x), arg_1.b), 8429u) ^ vec4<u32>(6948u, 2765u, ~58914u, ~arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c - 129f) + _wgslsmith_f_op_f32(abs(1208f)))))));
    let var_1 = -2147483647i;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(select(!vec4<bool>(true, any(vec3<bool>(true, false, true)), true, true), select(vec4<bool>(all(vec4<bool>(true, false, true, true)), true, select(false, false, true), true), select(func_1(vec2<f32>(-127f, 1048f), Struct_1(true, 4294967295u, 1000f, vec4<f32>(-602f, 1359f, 377f, -1264f), vec2<f32>(-171f, 266f)), Struct_4(vec4<bool>(true, false, true, true)), Struct_3(0i, u_input.c.x)), vec4<bool>(false, true, true, false), true), func_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1106f, -1159f))), func_4(vec3<i32>(1i, 4316i, -23211i), Struct_2(Struct_1(true, u_input.c.x, 245f, vec4<f32>(298f, 1083f, -879f, -1383f), vec2<f32>(-1858f, 1105f)), -51462i, vec4<f32>(1000f, -272f, -459f, -222f)), vec4<u32>(u_input.c.x, 1u, 90360u, 49853u), -829f).a, Struct_4(vec4<bool>(false, true, false, false)), Struct_3(-1i, u_input.b))), true));
    let var_1 = Struct_3(-2147483647i, 4294967295u);
    var var_2 = ~(~countOneBits(min(vec4<u32>(5940u, 77314u, 1u, 1u), vec4<u32>(var_1.b, var_1.b, 4294967295u, u_input.b)) >> (vec4<u32>(1u, var_1.b, var_1.b, 0u) % vec4<u32>(32u))));
    var var_3 = vec4<u32>(var_1.b, 43036u, 41981u | _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 4294967295u) ^ vec2<u32>(var_2.x, var_1.b), vec2<u32>(~var_1.b, ~52211u)), var_2.x);
    var_2 = firstLeadingBit(abs(select(vec4<u32>(1u, ~25261u, 47493u, 4294967295u), ~(~vec4<u32>(var_2.x, 0u, 64960u, 22318u)), true)));
    var_3 = ~(~(~vec4<u32>(~var_1.b, 18170u, func_3(vec2<f32>(917f, -3324f), var_3.x), 1u)));
    var var_4 = true;
    var var_5 = vec4<bool>(false, var_0.a.x | var_0.a.x, true, var_0.a.x);
    var_2 = firstTrailingBit((_wgslsmith_add_vec4_u32(~vec4<u32>(0u, var_2.x, 1646u, var_3.x), vec4<u32>(0u, 1u, var_3.x, 9750u)) ^ _wgslsmith_mult_vec4_u32(min(vec4<u32>(var_1.b, 57522u, var_3.x, 6554u), vec4<u32>(50622u, 0u, 1u, 70753u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_2.x, var_3.x), vec4<u32>(4294967295u, var_2.x, var_2.x, var_1.b)))) << (countOneBits(~countOneBits(vec4<u32>(75995u, 7905u, 0u, 33082u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(2147483647i, var_1.a) >> ((func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(873f, -938f)), 1u >> (u_input.a % 32u)) << ((firstTrailingBit(var_3.x) & func_4(vec3<i32>(-2147483647i, var_1.a, 2147483647i), Struct_2(Struct_1(var_0.a.x, u_input.a, -525f, vec4<f32>(-1201f, 166f, 2115f, 332f), vec2<f32>(-1491f, -137f)), var_1.a, vec4<f32>(307f, 129f, -571f, 1443f)), vec4<u32>(44831u, var_2.x, var_3.x, var_3.x), 645f).a.b) % 32u)) % 32u), 1186f);
}

