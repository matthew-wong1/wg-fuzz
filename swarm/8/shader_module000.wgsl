struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<u32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(Struct_1(2147483647i, -1000f, vec3<bool>(true, false, false), vec4<f32>(-598f, 107f, -123f, 383f)), vec4<bool>(true, true, false, true), vec3<u32>(1u, 58778u, 19276u), false, Struct_1(i32(-2147483648), 641f, vec3<bool>(false, false, true), vec4<f32>(375f, 513f, -576f, 436f))), Struct_4(Struct_1(6489i, -233f, vec3<bool>(false, false, false), vec4<f32>(1000f, -251f, 1693f, 624f)), vec4<bool>(false, true, true, false), vec3<u32>(0u, 26690u, 8554u), true, Struct_1(-13252i, -1481f, vec3<bool>(false, true, true), vec4<f32>(-2049f, -528f, -1743f, 940f))), Struct_4(Struct_1(36421i, -1195f, vec3<bool>(false, true, true), vec4<f32>(671f, -1382f, 611f, -990f)), vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 81656u, 1u), false, Struct_1(19009i, 1211f, vec3<bool>(false, true, true), vec4<f32>(1877f, 532f, 730f, 820f))), Struct_4(Struct_1(-36379i, -552f, vec3<bool>(false, true, true), vec4<f32>(435f, 1079f, -720f, -764f)), vec4<bool>(true, true, true, false), vec3<u32>(1u, 30100u, 0u), true, Struct_1(-28583i, 660f, vec3<bool>(false, true, true), vec4<f32>(1130f, -1000f, 1000f, 266f))), Struct_4(Struct_1(11560i, 1605f, vec3<bool>(false, false, true), vec4<f32>(-2658f, -468f, 1148f, -1471f)), vec4<bool>(true, true, false, true), vec3<u32>(27570u, 13967u, 30517u), true, Struct_1(-15707i, -286f, vec3<bool>(false, false, true), vec4<f32>(1003f, 1288f, 619f, -745f))), Struct_4(Struct_1(i32(-2147483648), 449f, vec3<bool>(true, true, true), vec4<f32>(373f, -645f, 421f, 1057f)), vec4<bool>(false, false, true, false), vec3<u32>(0u, 1u, 48609u), false, Struct_1(-1i, 240f, vec3<bool>(false, true, false), vec4<f32>(2137f, -521f, -326f, 632f))), Struct_4(Struct_1(56907i, -195f, vec3<bool>(false, true, false), vec4<f32>(-496f, 585f, -1640f, 1000f)), vec4<bool>(true, false, false, true), vec3<u32>(4294967295u, 1u, 4294967295u), true, Struct_1(i32(-2147483648), -1654f, vec3<bool>(false, true, true), vec4<f32>(-745f, 137f, 128f, 912f))), Struct_4(Struct_1(-1i, 261f, vec3<bool>(false, true, true), vec4<f32>(-1765f, 484f, 410f, 528f)), vec4<bool>(true, false, true, false), vec3<u32>(57430u, 0u, 42344u), false, Struct_1(15109i, 1172f, vec3<bool>(false, false, true), vec4<f32>(256f, 327f, 432f, 578f))), Struct_4(Struct_1(99013i, -362f, vec3<bool>(true, false, false), vec4<f32>(-721f, -1184f, -1420f, -566f)), vec4<bool>(true, false, false, false), vec3<u32>(58188u, 3731u, 4294967295u), false, Struct_1(-24132i, 1111f, vec3<bool>(true, false, true), vec4<f32>(1206f, -1264f, 650f, -1195f))), Struct_4(Struct_1(3884i, -611f, vec3<bool>(false, true, true), vec4<f32>(-1127f, 337f, -352f, 1598f)), vec4<bool>(false, true, true, true), vec3<u32>(95366u, 71927u, 1u), true, Struct_1(i32(-2147483648), -166f, vec3<bool>(true, true, true), vec4<f32>(269f, -106f, -1000f, 625f))), Struct_4(Struct_1(2147483647i, 459f, vec3<bool>(false, false, true), vec4<f32>(1730f, 794f, -311f, -1376f)), vec4<bool>(false, true, true, true), vec3<u32>(63330u, 1u, 4294967295u), true, Struct_1(2147483647i, 429f, vec3<bool>(false, false, true), vec4<f32>(364f, 554f, -123f, 572f))), Struct_4(Struct_1(-66427i, 1448f, vec3<bool>(false, true, true), vec4<f32>(3164f, -283f, -1890f, -1540f)), vec4<bool>(false, false, false, false), vec3<u32>(73948u, 0u, 0u), false, Struct_1(9946i, 714f, vec3<bool>(true, true, false), vec4<f32>(-1501f, 1143f, 277f, -460f))), Struct_4(Struct_1(-55395i, 175f, vec3<bool>(true, true, true), vec4<f32>(305f, 1000f, -1403f, -649f)), vec4<bool>(true, true, true, false), vec3<u32>(3289u, 1u, 1u), true, Struct_1(0i, 147f, vec3<bool>(false, false, true), vec4<f32>(-967f, 621f, -2338f, -248f))), Struct_4(Struct_1(i32(-2147483648), -1593f, vec3<bool>(false, false, false), vec4<f32>(1000f, 1317f, -646f, 1154f)), vec4<bool>(false, false, false, true), vec3<u32>(134044u, 79199u, 0u), false, Struct_1(2147483647i, 1756f, vec3<bool>(false, true, false), vec4<f32>(-809f, -1000f, 426f, -745f))), Struct_4(Struct_1(-1i, -258f, vec3<bool>(false, true, true), vec4<f32>(1482f, -850f, -1545f, -649f)), vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 23878u, 16606u), false, Struct_1(2147483647i, -1000f, vec3<bool>(false, true, false), vec4<f32>(151f, 156f, -1920f, -362f))), Struct_4(Struct_1(i32(-2147483648), -217f, vec3<bool>(true, true, true), vec4<f32>(436f, 397f, -454f, -357f)), vec4<bool>(true, false, false, true), vec3<u32>(81139u, 4294967295u, 14576u), false, Struct_1(1i, 1685f, vec3<bool>(false, true, true), vec4<f32>(-115f, -294f, 1000f, 935f))), Struct_4(Struct_1(-29869i, -1189f, vec3<bool>(false, false, false), vec4<f32>(-908f, 155f, 1003f, 1000f)), vec4<bool>(false, true, false, false), vec3<u32>(1u, 0u, 4294967295u), false, Struct_1(0i, -145f, vec3<bool>(true, false, false), vec4<f32>(-637f, 242f, 152f, 1606f))), Struct_4(Struct_1(1i, 1000f, vec3<bool>(false, true, false), vec4<f32>(-249f, 604f, -766f, 1387f)), vec4<bool>(true, false, true, false), vec3<u32>(116630u, 1u, 0u), true, Struct_1(0i, -676f, vec3<bool>(false, true, true), vec4<f32>(-1533f, -2171f, 578f, -908f))));

var<private> global1: vec3<i32> = vec3<i32>(22714i, i32(-2147483648), -5078i);

var<private> global2: array<i32, 1>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(788f, _wgslsmith_dot_vec3_i32(~vec3<i32>(~global1.x, ~70102i, -1i), ~vec3<i32>(global1.x, global1.x, global2[_wgslsmith_index_u32(firstTrailingBit(54984u), 1u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-726f))), ~min(u_input.d.x, _wgslsmith_clamp_u32(4294967295u, ~u_input.b, u_input.a)), firstTrailingBit(global2[_wgslsmith_index_u32(3583u, 1u)]));
}

