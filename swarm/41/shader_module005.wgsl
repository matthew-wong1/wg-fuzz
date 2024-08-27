struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7>;

var<private> global1: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(vec3<f32>(420f, -1000f, 1522f), 42419u, Struct_2(Struct_1(-1000f, 2147483647i, vec2<bool>(false, true)))), Struct_4(vec3<f32>(-453f, 278f, 1000f), 0u, Struct_2(Struct_1(-887f, 42021i, vec2<bool>(false, true)))), Struct_4(vec3<f32>(502f, 902f, 703f), 1u, Struct_2(Struct_1(-1000f, 0i, vec2<bool>(true, true)))), Struct_4(vec3<f32>(-1083f, -442f, -1000f), 1491u, Struct_2(Struct_1(-1000f, 1i, vec2<bool>(false, true)))), Struct_4(vec3<f32>(977f, 1729f, 1436f), 0u, Struct_2(Struct_1(1000f, -1i, vec2<bool>(true, true)))), Struct_4(vec3<f32>(-935f, -101f, -951f), 25855u, Struct_2(Struct_1(-783f, -1i, vec2<bool>(false, true)))), Struct_4(vec3<f32>(-792f, 1147f, -375f), 1u, Struct_2(Struct_1(-113f, 26978i, vec2<bool>(true, true)))), Struct_4(vec3<f32>(381f, 248f, -1165f), 0u, Struct_2(Struct_1(-190f, -1i, vec2<bool>(false, true)))), Struct_4(vec3<f32>(-1038f, -587f, 349f), 43385u, Struct_2(Struct_1(1000f, 9023i, vec2<bool>(false, false)))), Struct_4(vec3<f32>(-1256f, -1067f, -1000f), 51125u, Struct_2(Struct_1(-383f, i32(-2147483648), vec2<bool>(false, false)))), Struct_4(vec3<f32>(-580f, -443f, -1067f), 1u, Struct_2(Struct_1(467f, 1251i, vec2<bool>(false, true)))), Struct_4(vec3<f32>(-415f, -947f, 1346f), 4294967295u, Struct_2(Struct_1(420f, -18151i, vec2<bool>(false, false)))), Struct_4(vec3<f32>(-241f, 358f, -1295f), 18453u, Struct_2(Struct_1(276f, 63946i, vec2<bool>(true, false)))), Struct_4(vec3<f32>(-476f, 653f, -1313f), 11610u, Struct_2(Struct_1(-154f, 22390i, vec2<bool>(true, true)))), Struct_4(vec3<f32>(143f, -1474f, 455f), 0u, Struct_2(Struct_1(-1249f, 23335i, vec2<bool>(true, false)))), Struct_4(vec3<f32>(1523f, -545f, 723f), 35927u, Struct_2(Struct_1(1000f, 21698i, vec2<bool>(false, false)))), Struct_4(vec3<f32>(572f, -657f, 2441f), 65719u, Struct_2(Struct_1(1497f, -35253i, vec2<bool>(true, true)))), Struct_4(vec3<f32>(881f, 644f, -1286f), 1u, Struct_2(Struct_1(2360f, 0i, vec2<bool>(true, true)))), Struct_4(vec3<f32>(538f, -216f, -1087f), 988u, Struct_2(Struct_1(-740f, -51462i, vec2<bool>(false, false)))), Struct_4(vec3<f32>(113f, 929f, 495f), 30453u, Struct_2(Struct_1(-739f, i32(-2147483648), vec2<bool>(true, true)))), Struct_4(vec3<f32>(394f, -670f, -1759f), 14518u, Struct_2(Struct_1(-166f, 2147483647i, vec2<bool>(true, true)))), Struct_4(vec3<f32>(-1753f, 308f, -698f), 1u, Struct_2(Struct_1(121f, -2865i, vec2<bool>(false, true)))), Struct_4(vec3<f32>(-1000f, 139f, 283f), 0u, Struct_2(Struct_1(677f, 2147483647i, vec2<bool>(true, false)))), Struct_4(vec3<f32>(604f, -469f, -527f), 58598u, Struct_2(Struct_1(-1043f, 1i, vec2<bool>(false, true)))), Struct_4(vec3<f32>(647f, -102f, -1021f), 1961u, Struct_2(Struct_1(1575f, -1i, vec2<bool>(false, true)))), Struct_4(vec3<f32>(-1000f, -756f, 608f), 101679u, Struct_2(Struct_1(2110f, -1i, vec2<bool>(false, false)))), Struct_4(vec3<f32>(-359f, 672f, -1214f), 0u, Struct_2(Struct_1(-1727f, 22178i, vec2<bool>(false, false)))), Struct_4(vec3<f32>(1062f, -387f, -1974f), 38876u, Struct_2(Struct_1(290f, -30327i, vec2<bool>(true, false)))));

var<private> global2: array<vec4<u32>, 17>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1650f, -1049f, 1191f, 523f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-895f, -954f, -1567f, -307f) * vec4<f32>(446f, -1016f, -843f, -286f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-944f, 740f, 930f, -1094f))))))));
    global0 = array<vec3<bool>, 7>();
    var var_2 = _wgslsmith_add_i32(1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(1i, 1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(44408i, 2147483647i))), 2147483647i));
    global0 = array<vec3<bool>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xzw);
}

