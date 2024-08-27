struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(vec2<bool>(false, false), vec2<u32>(11893u, 0u), vec2<i32>(-1i, 0i), vec3<f32>(135f, 1083f, 508f), -10283i), false), Struct_2(Struct_1(vec2<bool>(true, true), vec2<u32>(20733u, 51862u), vec2<i32>(i32(-2147483648), -356i), vec3<f32>(540f, 253f, 176f), 2147483647i), true), Struct_2(Struct_1(vec2<bool>(true, false), vec2<u32>(0u, 19865u), vec2<i32>(1i, 5311i), vec3<f32>(-984f, 2077f, -222f), i32(-2147483648)), true), Struct_2(Struct_1(vec2<bool>(false, true), vec2<u32>(15570u, 5508u), vec2<i32>(14744i, 16672i), vec3<f32>(-1339f, 296f, -246f), 0i), true), Struct_2(Struct_1(vec2<bool>(false, false), vec2<u32>(4294967295u, 84916u), vec2<i32>(-9724i, i32(-2147483648)), vec3<f32>(-1192f, 1471f, -363f), 0i), true), Struct_2(Struct_1(vec2<bool>(false, false), vec2<u32>(19925u, 1u), vec2<i32>(0i, 2147483647i), vec3<f32>(1050f, 132f, -1800f), -1i), false), Struct_2(Struct_1(vec2<bool>(true, false), vec2<u32>(4294967295u, 50680u), vec2<i32>(2147483647i, 2147483647i), vec3<f32>(-1412f, 2050f, 930f), 9924i), false), Struct_2(Struct_1(vec2<bool>(true, false), vec2<u32>(4294967295u, 4294967295u), vec2<i32>(6255i, 1i), vec3<f32>(735f, -959f, 512f), 10945i), true), Struct_2(Struct_1(vec2<bool>(false, false), vec2<u32>(4294967295u, 0u), vec2<i32>(-2222i, 2147483647i), vec3<f32>(-1000f, -1407f, -470f), 3003i), false), Struct_2(Struct_1(vec2<bool>(false, true), vec2<u32>(1u, 12701u), vec2<i32>(2147483647i, 14040i), vec3<f32>(1000f, 343f, 1329f), -93215i), false), Struct_2(Struct_1(vec2<bool>(true, true), vec2<u32>(0u, 20909u), vec2<i32>(2147483647i, 0i), vec3<f32>(-957f, -561f, 949f), 2147483647i), true), Struct_2(Struct_1(vec2<bool>(false, true), vec2<u32>(4294967295u, 19987u), vec2<i32>(1240i, -13855i), vec3<f32>(918f, 843f, 299f), -1i), true), Struct_2(Struct_1(vec2<bool>(true, false), vec2<u32>(30926u, 4294967295u), vec2<i32>(-71307i, -196i), vec3<f32>(376f, 713f, -738f), -4381i), true), Struct_2(Struct_1(vec2<bool>(false, false), vec2<u32>(0u, 31293u), vec2<i32>(13924i, 78180i), vec3<f32>(1000f, 1172f, -628f), i32(-2147483648)), false), Struct_2(Struct_1(vec2<bool>(true, false), vec2<u32>(28833u, 4294967295u), vec2<i32>(-46450i, 34517i), vec3<f32>(1000f, 1432f, 1000f), -1i), true), Struct_2(Struct_1(vec2<bool>(false, false), vec2<u32>(24013u, 4294967295u), vec2<i32>(-1i, 5690i), vec3<f32>(114f, -1065f, -728f), -1i), true), Struct_2(Struct_1(vec2<bool>(true, false), vec2<u32>(4294967295u, 4294967295u), vec2<i32>(1i, 2147483647i), vec3<f32>(-1121f, 1525f, 1357f), -5933i), true), Struct_2(Struct_1(vec2<bool>(true, true), vec2<u32>(1u, 27928u), vec2<i32>(2147483647i, 15229i), vec3<f32>(-613f, 1342f, 1069f), 8775i), true), Struct_2(Struct_1(vec2<bool>(false, false), vec2<u32>(1u, 51791u), vec2<i32>(i32(-2147483648), 21095i), vec3<f32>(184f, 1282f, -839f), 417i), true), Struct_2(Struct_1(vec2<bool>(true, true), vec2<u32>(37034u, 25752u), vec2<i32>(0i, 32219i), vec3<f32>(-1000f, 1076f, 2141f), -1i), true), Struct_2(Struct_1(vec2<bool>(true, false), vec2<u32>(0u, 41816u), vec2<i32>(i32(-2147483648), 0i), vec3<f32>(550f, -327f, -520f), -27358i), true), Struct_2(Struct_1(vec2<bool>(false, false), vec2<u32>(4294967295u, 0u), vec2<i32>(-1i, i32(-2147483648)), vec3<f32>(363f, 1000f, -194f), i32(-2147483648)), true), Struct_2(Struct_1(vec2<bool>(false, false), vec2<u32>(0u, 4294967295u), vec2<i32>(-34918i, 38699i), vec3<f32>(1000f, 685f, 1508f), -1i), false), Struct_2(Struct_1(vec2<bool>(true, false), vec2<u32>(10639u, 1u), vec2<i32>(1i, -14489i), vec3<f32>(284f, 206f, 1567f), -4457i), false), Struct_2(Struct_1(vec2<bool>(false, true), vec2<u32>(0u, 1u), vec2<i32>(0i, 2147483647i), vec3<f32>(333f, 1321f, -819f), -1i), true), Struct_2(Struct_1(vec2<bool>(true, true), vec2<u32>(0u, 65368u), vec2<i32>(39800i, -1i), vec3<f32>(377f, -1000f, -1000f), -1i), true), Struct_2(Struct_1(vec2<bool>(true, true), vec2<u32>(27896u, 7194u), vec2<i32>(2147483647i, 67238i), vec3<f32>(-752f, -1091f, -1078f), -1i), true), Struct_2(Struct_1(vec2<bool>(false, true), vec2<u32>(0u, 4294967295u), vec2<i32>(9114i, -6034i), vec3<f32>(748f, 598f, 862f), 5798i), false));

var<private> global3: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(i32(-2147483648), i32(-2147483648), -21656i, 22152i), vec4<i32>(-19550i, 2147483647i, 2147483647i, 0i), vec4<i32>(33823i, -22436i, 1i, -1i), vec4<i32>(215i, -48813i, i32(-2147483648), 1i), vec4<i32>(-46242i, 1i, 40720i, i32(-2147483648)), vec4<i32>(9850i, i32(-2147483648), 18104i, 1i), vec4<i32>(2147483647i, 18095i, 17843i, 1i), vec4<i32>(i32(-2147483648), 2147483647i, 41832i, -84700i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(i32(-2147483648), -1i, -1i, 15932i), vec4<i32>(0i, 1i, 1i, i32(-2147483648)), vec4<i32>(28295i, -39888i, 79130i, 37025i), vec4<i32>(9984i, -27459i, 9217i, -9035i), vec4<i32>(-31680i, 2147483647i, -4233i, 0i), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -54307i), vec4<i32>(1i, 2147483647i, 2147483647i, -31162i), vec4<i32>(25618i, -46367i, -1i, i32(-2147483648)));

var<private> global4: array<f32, 23> = array<f32, 23>(-1555f, -173f, -1000f, 1041f, -781f, 147f, 291f, -530f, 157f, 105f, -470f, -612f, -197f, -261f, -1903f, -584f, -981f, -496f, 1471f, 1000f, -109f, -230f, 1952f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(7936u, 23u)];
    var var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.a, 4294967295u, u_input.a), vec4<u32>(33765u, u_input.a, 0u, 0u), vec4<u32>(35407u, 1u, 35826u, u_input.b)) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 9805u, 20325u, 40147u), ~vec4<u32>(u_input.b, u_input.a, 26761u, 46167u), ~vec4<u32>(1u, 9413u, u_input.c, u_input.c)) % vec4<u32>(32u))), max(_wgslsmith_mult_i32(~(i32(-1i) * -5379i), 21632i >> (u_input.b % 32u)), ~_wgslsmith_sub_i32(select(-40452i, 36321i, false), -1i)));
}

