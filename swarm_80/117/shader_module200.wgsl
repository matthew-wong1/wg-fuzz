struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<Struct_3, 11>;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<i32>(-21218i, i32(-2147483648), 32343i), vec4<i32>(1i, 0i, i32(-2147483648), i32(-2147483648)), 167f, false, 798f), Struct_1(vec3<i32>(42800i, -4262i, 2147483647i), vec4<i32>(1i, -19192i, -32765i, 1i), -1263f, true, -192f), Struct_1(vec3<i32>(0i, -1i, -32693i), vec4<i32>(0i, 1i, 2147483647i, 2147483647i), 1095f, false, 1000f), Struct_1(vec3<i32>(21988i, 52644i, -52550i), vec4<i32>(i32(-2147483648), 23619i, 1i, -5576i), 829f, false, -1432f), Struct_1(vec3<i32>(-5841i, 7441i, 46046i), vec4<i32>(0i, 1i, 0i, 0i), 796f, true, -1097f), Struct_1(vec3<i32>(i32(-2147483648), -22084i, -28844i), vec4<i32>(-9772i, i32(-2147483648), 27328i, -10009i), 349f, false, 582f), Struct_1(vec3<i32>(1i, -26889i, 2147483647i), vec4<i32>(-1680i, -11370i, -1i, -44896i), -856f, false, 1412f), Struct_1(vec3<i32>(0i, -131i, 4408i), vec4<i32>(-17453i, 2147483647i, 23775i, 0i), 927f, true, -1552f), Struct_1(vec3<i32>(2147483647i, 35466i, -41476i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 1i), -878f, true, -491f), Struct_1(vec3<i32>(-9718i, -40333i, 1954i), vec4<i32>(0i, i32(-2147483648), 54580i, -6590i), 612f, true, 593f), Struct_1(vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(-1i, 21015i, 0i, i32(-2147483648)), 1727f, true, 1217f), Struct_1(vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(23905i, i32(-2147483648), 0i, -1i), -1066f, false, 1289f), Struct_1(vec3<i32>(-1i, 2147483647i, 0i), vec4<i32>(-10024i, 2147483647i, 2147483647i, 20564i), -1344f, false, 141f), Struct_1(vec3<i32>(-1i, -49795i, 1836i), vec4<i32>(22928i, 0i, 69591i, -1i), 1830f, false, -190f), Struct_1(vec3<i32>(0i, 2147483647i, 2147483647i), vec4<i32>(i32(-2147483648), -6569i, -12574i, i32(-2147483648)), -287f, false, 2489f), Struct_1(vec3<i32>(-6514i, 0i, 2147483647i), vec4<i32>(0i, -1i, i32(-2147483648), 0i), -1922f, true, 666f), Struct_1(vec3<i32>(32957i, 2147483647i, 2147483647i), vec4<i32>(15253i, -8978i, 1i, 8108i), 674f, false, 617f), Struct_1(vec3<i32>(65011i, -44604i, 2147483647i), vec4<i32>(-24370i, -30236i, 5218i, i32(-2147483648)), -306f, true, 1091f), Struct_1(vec3<i32>(-47003i, i32(-2147483648), 2991i), vec4<i32>(0i, 0i, 6375i, 0i), 1538f, true, -1047f), Struct_1(vec3<i32>(2147483647i, 49700i, 39520i), vec4<i32>(2147483647i, 8246i, 2147483647i, 0i), 1556f, true, -223f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 11>();
    global2 = array<Struct_1, 20>();
    var var_0 = _wgslsmith_f_op_f32(trunc(-1023f));
    global1 = array<Struct_3, 11>();
    global1 = array<Struct_3, 11>();
    global1 = array<Struct_3, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(u_input.a, ~_wgslsmith_clamp_i32(u_input.a, -57055i, u_input.a), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(-62829i, 41078i)))), abs(u_input.a));
}

