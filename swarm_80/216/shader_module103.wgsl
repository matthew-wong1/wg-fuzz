struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20>;

var<private> global1: f32;

var<private> global2: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(4294967295u, false, vec4<f32>(-153f, 519f, -1000f, -1335f), vec3<bool>(false, true, true), 1u), vec4<i32>(0i, i32(-2147483648), -1i, 35551i), true), Struct_2(Struct_1(15257u, false, vec4<f32>(-2244f, -353f, -1233f, -1440f), vec3<bool>(true, false, false), 7674u), vec4<i32>(-15868i, 31974i, 43891i, -10687i), false), Struct_2(Struct_1(62274u, true, vec4<f32>(-1064f, 570f, -2657f, 264f), vec3<bool>(true, false, false), 36113u), vec4<i32>(-43037i, -1i, -26161i, i32(-2147483648)), false), Struct_2(Struct_1(34684u, true, vec4<f32>(205f, 1500f, -1383f, -1181f), vec3<bool>(false, false, true), 41297u), vec4<i32>(-45469i, 19046i, 2147483647i, i32(-2147483648)), true), Struct_2(Struct_1(0u, true, vec4<f32>(-144f, -729f, 1639f, 819f), vec3<bool>(false, true, false), 0u), vec4<i32>(-28846i, 0i, 2147483647i, i32(-2147483648)), false), Struct_2(Struct_1(8147u, true, vec4<f32>(-802f, 490f, -177f, -967f), vec3<bool>(false, true, true), 4294967295u), vec4<i32>(0i, -1i, -31765i, i32(-2147483648)), false), Struct_2(Struct_1(47742u, true, vec4<f32>(1685f, 236f, -1367f, 110f), vec3<bool>(true, false, false), 12790u), vec4<i32>(12248i, 25730i, -34829i, 0i), false), Struct_2(Struct_1(14434u, true, vec4<f32>(557f, 1000f, 302f, 971f), vec3<bool>(false, true, true), 74602u), vec4<i32>(27405i, -1i, i32(-2147483648), -55863i), true), Struct_2(Struct_1(1u, true, vec4<f32>(763f, -229f, 1000f, -699f), vec3<bool>(true, true, true), 1379u), vec4<i32>(0i, 43286i, -1i, -1i), true), Struct_2(Struct_1(0u, true, vec4<f32>(652f, 1028f, 534f, -1203f), vec3<bool>(true, false, false), 75646u), vec4<i32>(0i, 1i, 0i, 43537i), false), Struct_2(Struct_1(0u, false, vec4<f32>(-575f, -1745f, 1000f, 1291f), vec3<bool>(true, true, false), 1u), vec4<i32>(17998i, 2147483647i, 14892i, -1i), true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(abs(u_input.b.x) << (reverseBits(1u) % 32u), u_input.b.x, _wgslsmith_clamp_u32(firstTrailingBit(u_input.b.x), u_input.d, ~41143u))), 11u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-137f)));
    var var_2 = Struct_3(u_input.c.yz, global2[_wgslsmith_index_u32(72538u, 11u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(258f, var_0.a.c.x, var_0.a.c.x, var_0.a.c.x))), _wgslsmith_add_i32(u_input.c.x, abs(5091i)) & var_0.b.x);
    var var_3 = !var_2.b.a.d.yy;
    let var_4 = vec3<i32>(0i, var_2.a.x, 15806i);
    let var_5 = var_0.a.d.x;
    let var_6 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wyz, var_2.c.x, reverseBits(~vec3<u32>(4294967295u, _wgslsmith_div_u32(61497u, 59730u), ~66902u)));
}

