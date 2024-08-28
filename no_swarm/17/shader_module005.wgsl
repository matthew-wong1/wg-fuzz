struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(178f, -1119f, vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<i32>(2147483647i, -1i, -1i, 1742i), vec3<bool>(true, true, true));

var<private> global2: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec4<i32>(0i, 2147483647i, 0i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, -25736i), Struct_2(817f, 644f, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<i32>(1i, 1i, -10320i, -32594i), vec3<bool>(true, false, true))), Struct_3(vec4<i32>(-27919i, 0i, 0i, -7623i), vec3<i32>(0i, 0i, -1i), Struct_2(1057f, -344f, vec4<u32>(4294967295u, 42621u, 4294967295u, 50140u), vec4<i32>(-17971i, 34213i, 11856i, 2443i), vec3<bool>(false, false, false))), Struct_3(vec4<i32>(-1i, -1i, -11453i, -10799i), vec3<i32>(0i, 5832i, 0i), Struct_2(-1000f, -276f, vec4<u32>(22451u, 58503u, 33400u, 48095u), vec4<i32>(-50864i, 20468i, 34730i, 55678i), vec3<bool>(false, false, false))), Struct_3(vec4<i32>(53781i, -25046i, -1i, 4968i), vec3<i32>(-14994i, i32(-2147483648), -33262i), Struct_2(884f, -1776f, vec4<u32>(1u, 49487u, 1u, 30208u), vec4<i32>(2147483647i, i32(-2147483648), 22949i, 0i), vec3<bool>(false, true, false))), Struct_3(vec4<i32>(-1i, 12012i, i32(-2147483648), -1i), vec3<i32>(-89047i, 2147483647i, 0i), Struct_2(-484f, 1623f, vec4<u32>(7956u, 0u, 4294967295u, 4294967295u), vec4<i32>(1i, 2147483647i, 0i, 20771i), vec3<bool>(true, true, false))), Struct_3(vec4<i32>(-32041i, -19780i, 1i, 1i), vec3<i32>(-1i, 2147483647i, 0i), Struct_2(1640f, -887f, vec4<u32>(99791u, 0u, 151224u, 14099u), vec4<i32>(-24436i, 32260i, -47827i, 1i), vec3<bool>(false, false, true))), Struct_3(vec4<i32>(19633i, 43769i, 29353i, 18787i), vec3<i32>(i32(-2147483648), 14168i, -34968i), Struct_2(1010f, -634f, vec4<u32>(1u, 34079u, 0u, 4294967295u), vec4<i32>(i32(-2147483648), 2147483647i, 36959i, 2147483647i), vec3<bool>(false, true, true))), Struct_3(vec4<i32>(-13544i, -1i, i32(-2147483648), 6529i), vec3<i32>(-1i, 0i, 6621i), Struct_2(-452f, -1000f, vec4<u32>(4294967295u, 56819u, 9516u, 0u), vec4<i32>(-58854i, 9019i, -16993i, 1i), vec3<bool>(false, false, true))), Struct_3(vec4<i32>(2147483647i, 37011i, 0i, -1i), vec3<i32>(-4128i, i32(-2147483648), 1i), Struct_2(-752f, -472f, vec4<u32>(26881u, 1u, 1u, 4294967295u), vec4<i32>(-29944i, 0i, 14478i, 7232i), vec3<bool>(true, true, true))), Struct_3(vec4<i32>(33814i, 1i, 0i, -53260i), vec3<i32>(0i, 2147483647i, 0i), Struct_2(768f, -630f, vec4<u32>(483u, 50249u, 12586u, 0u), vec4<i32>(2147483647i, 5681i, 92375i, 24776i), vec3<bool>(false, false, true))), Struct_3(vec4<i32>(44378i, -13911i, 1i, i32(-2147483648)), vec3<i32>(-45899i, 1i, 23022i), Struct_2(377f, -1356f, vec4<u32>(9745u, 4294967295u, 58938u, 1u), vec4<i32>(3978i, 0i, 2147483647i, 1i), vec3<bool>(false, true, false))), Struct_3(vec4<i32>(2147483647i, -1i, 0i, -55499i), vec3<i32>(-37155i, 23775i, 0i), Struct_2(854f, -694f, vec4<u32>(8725u, 1u, 45576u, 80706u), vec4<i32>(-30457i, 14315i, 2147483647i, 1i), vec3<bool>(true, false, false))), Struct_3(vec4<i32>(-1i, 58748i, -23324i, 46559i), vec3<i32>(1i, -1851i, i32(-2147483648)), Struct_2(851f, 1000f, vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<i32>(-1i, i32(-2147483648), -1i, i32(-2147483648)), vec3<bool>(false, true, true))), Struct_3(vec4<i32>(0i, 31453i, 47170i, 3111i), vec3<i32>(73789i, 2147483647i, -1i), Struct_2(-114f, -751f, vec4<u32>(1u, 29115u, 1u, 4294967295u), vec4<i32>(17070i, 2147483647i, -18381i, -18516i), vec3<bool>(false, true, true))), Struct_3(vec4<i32>(-42904i, 16284i, -32401i, -1i), vec3<i32>(27463i, 1i, 16461i), Struct_2(-868f, -264f, vec4<u32>(4294967295u, 4294967295u, 15692u, 0u), vec4<i32>(-8626i, 1i, 0i, 1i), vec3<bool>(true, false, false))), Struct_3(vec4<i32>(-2892i, -749i, 1i, 63482i), vec3<i32>(69417i, -1663i, -1i), Struct_2(-1376f, 899f, vec4<u32>(1u, 1u, 45920u, 0u), vec4<i32>(2147483647i, 5049i, 1i, 8175i), vec3<bool>(true, false, true))), Struct_3(vec4<i32>(-57111i, -70223i, 24693i, 61278i), vec3<i32>(27338i, -1i, -3393i), Struct_2(-508f, -1178f, vec4<u32>(1u, 7899u, 27016u, 55638u), vec4<i32>(i32(-2147483648), 27135i, 43627i, -10346i), vec3<bool>(true, true, false))), Struct_3(vec4<i32>(-25786i, 63593i, -16976i, -62495i), vec3<i32>(1i, 1601i, 0i), Struct_2(-474f, 147f, vec4<u32>(17306u, 0u, 4294967295u, 0u), vec4<i32>(1i, -74218i, -1i, 1i), vec3<bool>(true, true, false))), Struct_3(vec4<i32>(25389i, -16393i, 1i, 0i), vec3<i32>(-28576i, 7504i, -1i), Struct_2(138f, 1000f, vec4<u32>(0u, 36104u, 4294967295u, 48883u), vec4<i32>(1i, 2147483647i, 2147483647i, i32(-2147483648)), vec3<bool>(false, false, false))), Struct_3(vec4<i32>(1i, -21862i, 2156i, 1i), vec3<i32>(1i, 20692i, 0i), Struct_2(541f, -260f, vec4<u32>(21927u, 4294967295u, 37244u, 1u), vec4<i32>(18599i, 45134i, -14356i, -85701i), vec3<bool>(false, false, false))), Struct_3(vec4<i32>(1i, 17829i, 14075i, 20684i), vec3<i32>(43253i, 2147483647i, 1i), Struct_2(-803f, -689f, vec4<u32>(1u, 4294967295u, 0u, 87586u), vec4<i32>(-23816i, 1i, 0i, 0i), vec3<bool>(true, true, false))), Struct_3(vec4<i32>(1i, -37050i, 2147483647i, -1i), vec3<i32>(4731i, 45721i, -35877i), Struct_2(-108f, 725f, vec4<u32>(909u, 58047u, 26361u, 4206u), vec4<i32>(29830i, -1i, 15797i, 16972i), vec3<bool>(false, false, false))), Struct_3(vec4<i32>(258i, 2147483647i, 0i, 53703i), vec3<i32>(-19299i, 30274i, -35592i), Struct_2(-1292f, -1662f, vec4<u32>(36916u, 4294967295u, 0u, 15117u), vec4<i32>(i32(-2147483648), -17410i, 46941i, 11412i), vec3<bool>(true, true, false))), Struct_3(vec4<i32>(2147483647i, 2147483647i, -40459i, -1i), vec3<i32>(5732i, -14075i, 2147483647i), Struct_2(458f, 1000f, vec4<u32>(1u, 0u, 13334u, 0u), vec4<i32>(-23737i, 5149i, 1i, 1i), vec3<bool>(false, true, true))), Struct_3(vec4<i32>(5551i, 52833i, 17342i, -41414i), vec3<i32>(-1i, -78371i, 1i), Struct_2(-1101f, 173f, vec4<u32>(0u, 0u, 0u, 36349u), vec4<i32>(-1i, 7714i, 1i, 29359i), vec3<bool>(false, true, true))), Struct_3(vec4<i32>(1i, -1i, -1i, -67792i), vec3<i32>(i32(-2147483648), -1i, 2147483647i), Struct_2(-485f, 820f, vec4<u32>(0u, 0u, 23730u, 1738u), vec4<i32>(-48838i, 2147483647i, 46258i, 1i), vec3<bool>(true, true, false))), Struct_3(vec4<i32>(1i, -4730i, i32(-2147483648), 2147483647i), vec3<i32>(-15161i, 2147483647i, 34072i), Struct_2(1601f, -1124f, vec4<u32>(0u, 4294967295u, 70504u, 33174u), vec4<i32>(0i, -3244i, 47717i, -33850i), vec3<bool>(true, false, true))), Struct_3(vec4<i32>(22364i, -35920i, 38925i, 4630i), vec3<i32>(1i, -2531i, 1i), Struct_2(1011f, 602f, vec4<u32>(66825u, 16213u, 4294967295u, 4294967295u), vec4<i32>(-40218i, 11936i, -1i, -5693i), vec3<bool>(true, true, true))), Struct_3(vec4<i32>(44759i, -39708i, -13765i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 30492i, i32(-2147483648)), Struct_2(-1484f, 1110f, vec4<u32>(126340u, 4294967295u, 1u, 13595u), vec4<i32>(2147483647i, 2147483647i, -1i, 0i), vec3<bool>(false, false, false))), Struct_3(vec4<i32>(-1i, -2136i, -4360i, -25479i), vec3<i32>(4773i, -1i, 1i), Struct_2(574f, -1000f, vec4<u32>(4294967295u, 1u, 43378u, 39874u), vec4<i32>(0i, -31063i, -2186i, 2147483647i), vec3<bool>(false, true, false))), Struct_3(vec4<i32>(-1i, 2147483647i, -1i, 0i), vec3<i32>(35310i, -34157i, i32(-2147483648)), Struct_2(-1000f, -1102f, vec4<u32>(4294967295u, 14745u, 0u, 52034u), vec4<i32>(36153i, -7958i, 14168i, i32(-2147483648)), vec3<bool>(false, true, true))), Struct_3(vec4<i32>(-6805i, 7896i, 1i, -49048i), vec3<i32>(-36861i, -1i, -28980i), Struct_2(-603f, -173f, vec4<u32>(1u, 59140u, 18160u, 4294967295u), vec4<i32>(i32(-2147483648), -30389i, i32(-2147483648), -43649i), vec3<bool>(true, false, true))));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> bool {
    let var_0 = Struct_1(vec3<f32>(1113f, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-379f, -1314f, global0.b.x)))))), !(!vec3<bool>(true, global1.e.x, any(global0.b))), ~firstLeadingBit(global1.c.x));
    let var_1 = global0.a.x;
    global1 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.a.x)), var_0.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.x)) * global0.a.x), 1596f)) + global0.a.x), countOneBits(max(firstLeadingBit(vec4<u32>(global1.c.x, global0.c, var_0.c, 4294967295u)), vec4<u32>(0u, 46903u, 11580u, u_input.b.x)) ^ global1.c), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(global1.d, _wgslsmith_div_vec4_i32(global1.d, global1.d)) >> ((abs(global1.c) >> ((global1.c ^ vec4<u32>(u_input.b.x, var_0.c, global0.c, u_input.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(vec4<i32>(u_input.a ^ u_input.d, ~(-9154i), global1.d.x, _wgslsmith_dot_vec4_i32(global1.d, vec4<i32>(17820i, -2147483647i, -1i, -1i))))), vec3<bool>(global0.b.x, global0.b.x, !global1.e.x));
    var var_2 = Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~firstTrailingBit(4294967295u), var_0.c), ~(~global1.c.zx)), 32u)], ~vec3<u32>(reverseBits(global0.c), ~0u, ~10257u & _wgslsmith_div_u32(global0.c, 46169u)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, 2656f, global0.a.x))), global0.b, 1u), vec2<bool>(true, !all(var_0.b.yx)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(global0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(step(var_0.a.x, -518f)), _wgslsmith_f_op_f32(select(986f, global1.b, global0.b.x)), _wgslsmith_f_op_f32(ceil(var_0.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, global1.a, global0.a.x))))));
    return true;
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-501f * 548f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.b, global0.a.x)) - _wgslsmith_f_op_f32(global1.b + global0.a.x))), _wgslsmith_f_op_f32(-280f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_div_f32(378f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.x)) - -1014f)), global1.a) + vec4<f32>(_wgslsmith_f_op_f32(sign(global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), -1000f, global1.b));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(-334f, 2434f), var_0.x, _wgslsmith_div_f32(global0.a.x, var_0.x), -1275f);
    let var_2 = !(!func_3());
    var var_3 = ~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, u_input.b.x), global1.c.zw << (vec2<u32>(26347u, u_input.b.x) % vec2<u32>(32u)))) >> (~_wgslsmith_add_u32(global0.c, global0.c) % 32u);
    var var_4 = Struct_4(Struct_3(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 19122i, -1142i, u_input.c), _wgslsmith_mod_vec4_i32(global1.d, vec4<i32>(u_input.d, global1.d.x, 1i, 1i))), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(-5224i, -59891i, global1.d.x, u_input.e.x)), ~global1.d, -vec4<i32>(-2147483647i, global1.d.x, 1i, u_input.a))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, 2147483647i, global1.d.x, global1.d.x), vec4<i32>(4070i, 1i, global1.d.x, u_input.c) & vec4<i32>(u_input.a, global1.d.x, 0i, 10701i)), 1i, _wgslsmith_mult_i32(-1i, global1.d.x) | global1.d.x), Struct_2(-1000f, 160f, firstLeadingBit(~vec4<u32>(61560u, 60555u, u_input.b.x, global1.c.x)), -(global1.d ^ vec4<i32>(-85493i, global1.d.x, -42014i, u_input.a)), !(!global0.b))), min(global1.c.wzz, ~global1.c.wyx), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1577f, 564f, 180f))) - _wgslsmith_f_op_vec3_f32(-var_0.zxz)), vec3<f32>(global0.a.x, 1000f, _wgslsmith_f_op_f32(-global1.a))), global0.b, ~0u), vec2<bool>(abs(29304i ^ u_input.e.x) != (_wgslsmith_div_i32(21723i, global1.d.x) & 1i), !(!var_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(255f, _wgslsmith_f_op_f32(ceil(global1.a)), 294f, var_0.x)));
    return Struct_4(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32((vec2<u32>(global1.c.x, 28802u) << (global1.c.zz % vec2<u32>(32u))) & ~vec2<u32>(117921u, 1u), global1.c.yz), 32u)], select(vec3<u32>(_wgslsmith_mod_u32(83577u, 9607u), _wgslsmith_add_u32(global1.c.x, global1.c.x), var_4.a.c.c.x), reverseBits(global1.c.xxx) ^ var_4.b, global1.e) << (global1.c.xyw % vec3<u32>(32u)), Struct_1(global0.a, vec3<bool>(var_4.a.c.e.x, var_4.a.b.x >= var_4.a.c.d.x, global0.b.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(~global1.c.x, 71100u), global0.c)), !select(vec2<bool>(true, global0.b.x), !select(global0.b.zx, vec2<bool>(var_4.a.c.e.x, var_4.d.x), global0.b.x), !global1.e.xz), _wgslsmith_f_op_vec4_f32(select(var_4.e, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, var_0.x, global1.a, -1000f) * var_4.e) * vec4<f32>(var_0.x, var_1.x, -1000f, global1.b)))), vec4<bool>(true, global0.b.x, any(vec4<bool>(global1.e.x, false, false, false)) && global0.b.x, true))));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = !func_2().d;
    var var_1 = Struct_3(vec4<i32>(max(u_input.d, ~global1.d.x | -1i), 2147483647i, firstTrailingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_2.d.x, u_input.e.x), vec2<i32>(arg_0.a.b.x, arg_0.a.c.d.x) >> (u_input.b % vec2<u32>(32u)))), global1.d.x), _wgslsmith_sub_vec3_i32(arg_2.d.zww, -((vec3<i32>(23192i, u_input.e.x, u_input.a) | global1.d.xyw) << (arg_0.a.c.c.xyy % vec3<u32>(32u)))), arg_2);
    let var_2 = select(arg_0.a.c.e, vec3<bool>(false, select(!(!arg_0.c.b.x), func_2().d.x, any(!vec3<bool>(arg_0.c.b.x, global0.b.x, false))), 1u <= (~global0.c << (~global0.c % 32u))), true);
    var var_3 = firstLeadingBit(1i);
    global1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.c.b + -838f), -222f)), _wgslsmith_f_op_f32(func_2().a.c.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, 201f)), _wgslsmith_div_f32(var_1.c.a, -1418f)))), arg_2.b, ~(~(~global1.c)) | vec4<u32>(global1.c.x, global1.c.x, _wgslsmith_clamp_u32(max(global0.c, 22174u), _wgslsmith_add_u32(0u, global0.c), arg_2.c.x), 1u), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-1i, -1i), global1.d.x, -global1.d.x, -2147483647i), select(_wgslsmith_mult_vec4_i32(global1.d, arg_2.d), countOneBits(vec4<i32>(-12211i, arg_0.a.c.d.x, u_input.d, 30360i)), !vec4<bool>(true, arg_0.d.x, true, var_0.x)), _wgslsmith_div_vec4_i32(global1.d, global1.d)), arg_0.a.a | _wgslsmith_add_vec4_i32(vec4<i32>(-63546i, arg_2.d.x, 1i, 1i), -vec4<i32>(38i, -1i, -2147483647i, arg_0.a.b.x)), !arg_2.e.x), !func_2().a.c.e);
    return func_2().c;
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_3, 32>();
    global0 = func_4(func_2(), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, _wgslsmith_dot_vec4_u32(global1.c, ~global1.c), ~global0.c, 25447u), global1.c), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(global0.a.x * global1.a)) - global0.a.x), global1.b, ~select(_wgslsmith_div_vec4_u32(global1.c, global1.c), global1.c, all(global1.e.yx)), vec4<i32>(-1i) * -(vec4<i32>(global1.d.x, 32098i, -1i, 7560i) << (vec4<u32>(0u, 1u, global1.c.x, 0u) % vec4<u32>(32u))), func_2().c.b));
    global1 = Struct_2(_wgslsmith_f_op_f32(floor(-1000f)), 1000f, global1.c, firstLeadingBit(global1.d | firstTrailingBit(countOneBits(global1.d))), vec3<bool>(global0.b.x & global1.e.x, false, func_3()));
    global2 = array<Struct_3, 32>();
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1196f, -853f, -1399f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global0.a, vec3<f32>(global0.a.x, -238f, global0.a.x))) - _wgslsmith_f_op_vec3_f32(-global0.a)))), func_2().a.c.e, _wgslsmith_mult_u32(~(~4294967295u), ~firstTrailingBit(_wgslsmith_div_u32(global0.c, 4294967295u))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global0.a.x, -3060f), global1.b, -578f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, 303f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 1256f, -740f) - vec3<f32>(-167f, -542f, global1.a))))), select(global0.b, vec3<bool>(select(-67462i <= u_input.e.x, all(vec2<bool>(global1.e.x, global1.e.x)), select(global0.b.x, global1.e.x, false)), any(select(vec3<bool>(global0.b.x, global0.b.x, true), global0.b, global0.b)), true), !(!select(global1.e, vec3<bool>(true, global0.b.x, global0.b.x), global0.b))), ~u_input.b.x);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<u32>) -> vec3<f32> {
    var var_0 = -global1.d.x;
    var var_1 = Struct_4(func_2().a, reverseBits(global1.c.xxz) >> (vec3<u32>(global0.c, ~75181u, 1u) % vec3<u32>(32u)), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-357f, -1351f, _wgslsmith_f_op_f32(max(246f, arg_1.a.x))), vec3<f32>(861f, global1.a, global1.b)), vec3<bool>((59241u > arg_1.c) | (9099u != u_input.b.x), !func_4(Struct_4(global2[_wgslsmith_index_u32(arg_3.x, 32u)], global1.c.xyz, Struct_1(arg_1.a, global1.e, 55278u), arg_1.b.yz, vec4<f32>(918f, -1582f, 1000f, arg_0.x)), arg_1.c, Struct_2(global1.a, 567f, vec4<u32>(arg_1.c, 53379u, arg_1.c, global1.c.x), arg_2, arg_1.b)).b.x, func_1().b.x), global1.c.x), select(select(vec2<bool>(global1.e.x, true), func_2().a.c.e.zx, false), global0.b.xz, false), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1334f, -1435f, arg_1.a.x) + vec4<f32>(global1.b, -552f, global1.b, arg_1.a.x)), vec4<f32>(-944f, arg_0.x, global0.a.x, global1.b)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, 134f, arg_1.a.x, -357f)))))));
    let var_2 = ~var_1.a.c.d.yx;
    var var_3 = ~(~select(~(~global0.c), 827u, !arg_1.b.x));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-991f + global1.a)), _wgslsmith_f_op_f32(step(global1.a, arg_1.a.x)), vec4<u32>(~_wgslsmith_dot_vec3_u32(global1.c.zxw, var_1.a.c.c.wyw), global1.c.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global1.c.x), global1.c.zy), ~vec2<u32>(global0.c, arg_3.x)), arg_1.c) ^ ~(~var_1.a.c.c), vec4<i32>(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(1i, var_1.a.c.d.x)), vec2<i32>(arg_2.x | -2147483647i, _wgslsmith_dot_vec3_i32(var_1.a.b, arg_2.zyz))), -1i, 0i, var_1.a.b.x), var_1.c.b);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(arg_1.a)))), vec3<f32>(_wgslsmith_f_op_f32(max(var_1.e.x, var_1.a.c.b)), _wgslsmith_f_op_f32(min(2697f, var_4.b)), _wgslsmith_f_op_f32(-global1.b)), func_4(func_2(), ~arg_1.c, var_4).b)), _wgslsmith_div_vec3_f32(arg_1.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, var_1.e.x, 226f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c.xzw;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_5(vec2<f32>(1196f, -804f), func_1(), select(global1.d, global1.d, true), vec3<u32>(u_input.b.x, 50791u, global1.c.x)))))), select(select(global1.e, vec3<bool>(global0.b.x, global1.e.x, func_1().b.x), global1.e.x & (global0.b.x | false)), vec3<bool>(global0.b.x, -2147483647i <= ~global1.d.x, !select(true, global0.b.x, true)), func_2().c.b), global0.c);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x)))) - 125f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -319f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - 517f)))));
    let var_3 = firstTrailingBit(u_input.a);
    var var_4 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(global1.b * var_1.a.x)), _wgslsmith_f_op_f32(sign(750f)))), global1.c << (global1.c % vec4<u32>(32u)), var_1.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.a.x, -641f), -672f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, var_1.a.x))), vec2<f32>(-1149f, _wgslsmith_f_op_f32(trunc(global1.b))), true)), vec3<u32>(0u, var_1.c, 61569u));
}

