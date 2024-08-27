struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(1093f, vec3<f32>(459f, -152f, -884f)), Struct_2(226f, vec3<f32>(176f, -553f, -1000f)), Struct_2(-105f, vec3<f32>(340f, 164f, 246f)), Struct_2(722f, vec3<f32>(1000f, 144f, -904f)), Struct_2(-715f, vec3<f32>(994f, -1000f, 1649f)), Struct_2(-499f, vec3<f32>(499f, 1119f, 851f)), Struct_2(1159f, vec3<f32>(845f, -1083f, -319f)), Struct_2(1000f, vec3<f32>(1252f, 1586f, -183f)), Struct_2(-1326f, vec3<f32>(313f, -1608f, 260f)), Struct_2(105f, vec3<f32>(-236f, -456f, -1472f)), Struct_2(-721f, vec3<f32>(540f, 1148f, -117f)), Struct_2(732f, vec3<f32>(-620f, -1505f, 1867f)), Struct_2(1392f, vec3<f32>(-1390f, 1000f, 433f)), Struct_2(236f, vec3<f32>(345f, -238f, 452f)), Struct_2(-399f, vec3<f32>(1571f, -666f, 838f)), Struct_2(-2007f, vec3<f32>(-488f, 811f, -1274f)), Struct_2(1117f, vec3<f32>(-1000f, 1000f, -984f)), Struct_2(2760f, vec3<f32>(366f, 1403f, 389f)), Struct_2(-673f, vec3<f32>(2261f, -950f, 316f)), Struct_2(775f, vec3<f32>(1482f, -418f, 274f)), Struct_2(474f, vec3<f32>(607f, 638f, -510f)), Struct_2(-1775f, vec3<f32>(-1627f, -273f, 1351f)), Struct_2(-925f, vec3<f32>(-909f, 2122f, 1128f)), Struct_2(2522f, vec3<f32>(460f, 642f, -1000f)), Struct_2(1000f, vec3<f32>(537f, -1586f, -631f)), Struct_2(-435f, vec3<f32>(-1062f, -746f, -182f)));

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(518f, vec3<f32>(-1503f, -2395f, -654f)), Struct_2(169f, vec3<f32>(385f, 1517f, -1380f)), Struct_2(-174f, vec3<f32>(-1181f, -1000f, -459f)), Struct_2(371f, vec3<f32>(-1000f, -304f, 571f)), Struct_2(-570f, vec3<f32>(670f, 1000f, -721f)), Struct_2(-351f, vec3<f32>(-1431f, 2271f, -691f)), Struct_2(-1000f, vec3<f32>(-152f, 463f, -372f)), Struct_2(-221f, vec3<f32>(-2078f, 2130f, -430f)), Struct_2(636f, vec3<f32>(-321f, -764f, 1000f)), Struct_2(331f, vec3<f32>(-1503f, 912f, -1018f)), Struct_2(-588f, vec3<f32>(879f, 1415f, 309f)), Struct_2(-847f, vec3<f32>(-897f, -1135f, 768f)), Struct_2(-2362f, vec3<f32>(457f, 1455f, 588f)), Struct_2(1443f, vec3<f32>(-291f, -141f, -834f)), Struct_2(-572f, vec3<f32>(-848f, 1330f, -1653f)), Struct_2(2042f, vec3<f32>(-797f, 1175f, 1000f)), Struct_2(147f, vec3<f32>(-1000f, -387f, 1000f)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, true, false, true);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -900f) + _wgslsmith_f_op_f32(ceil(110f)))))), 378f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1010f)) - -402f));
    global1 = array<Struct_2, 17>();
    let var_2 = vec2<u32>(u_input.c.x, _wgslsmith_div_u32(~71238u, 17926u));
    var var_3 = all(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.e), firstLeadingBit(firstTrailingBit(vec2<i32>(29456i, -2147483647i)) >> (_wgslsmith_div_vec2_u32(var_2, var_2) % vec2<u32>(32u)))), -(~countOneBits(-vec3<i32>(-2147483647i, -2147483647i, 59721i))), min(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e, ~u_input.e), firstLeadingBit(-vec2<i32>(-1i, 2147483647i))), firstTrailingBit(vec2<i32>(~0i, _wgslsmith_add_i32(-1i, u_input.e)))));
}

