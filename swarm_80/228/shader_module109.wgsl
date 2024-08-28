struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(-355f, -1000f, 1000f, 242f, 1467f, 1279f, -1000f);

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<u32>(16209u, 115126u, 0u), vec4<u32>(40706u, 4294967295u, 34564u, 62694u), vec4<bool>(false, false, true, false), 6982u), Struct_1(vec3<u32>(0u, 27628u, 1u), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<bool>(true, false, true, true), 1u), Struct_1(vec3<u32>(52093u, 0u, 4294967295u), vec4<u32>(80684u, 76642u, 0u, 35189u), vec4<bool>(false, true, true, false), 78091u), Struct_1(vec3<u32>(56148u, 41994u, 1u), vec4<u32>(4294967295u, 0u, 77878u, 4294967295u), vec4<bool>(true, false, false, false), 76u), Struct_1(vec3<u32>(0u, 27357u, 18395u), vec4<u32>(1u, 63399u, 27533u, 1u), vec4<bool>(false, false, true, false), 58416u), Struct_1(vec3<u32>(1889u, 4294967295u, 0u), vec4<u32>(0u, 1u, 87809u, 10987u), vec4<bool>(false, false, false, true), 81442u), Struct_1(vec3<u32>(0u, 37474u, 72010u), vec4<u32>(34574u, 4294967295u, 4294967295u, 120550u), vec4<bool>(false, true, true, false), 69093u), Struct_1(vec3<u32>(0u, 169u, 0u), vec4<u32>(73105u, 0u, 4294967295u, 1u), vec4<bool>(true, false, false, false), 4294967295u), Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec4<u32>(27831u, 8752u, 1u, 106u), vec4<bool>(false, false, false, true), 4294967295u), Struct_1(vec3<u32>(3102u, 16377u, 0u), vec4<u32>(21283u, 0u, 18074u, 0u), vec4<bool>(false, true, false, false), 4330u), Struct_1(vec3<u32>(1u, 0u, 43163u), vec4<u32>(1u, 4294967295u, 1u, 1u), vec4<bool>(true, false, true, false), 0u), Struct_1(vec3<u32>(0u, 0u, 35712u), vec4<u32>(79536u, 40604u, 0u, 53717u), vec4<bool>(true, false, true, true), 88059u), Struct_1(vec3<u32>(42394u, 4294967295u, 4294967295u), vec4<u32>(15091u, 1u, 2613u, 1u), vec4<bool>(true, true, true, true), 25422u), Struct_1(vec3<u32>(0u, 4294967295u, 33925u), vec4<u32>(24078u, 4294967295u, 31864u, 7724u), vec4<bool>(true, false, false, true), 4294967295u), Struct_1(vec3<u32>(1u, 14481u, 1u), vec4<u32>(1u, 4294967295u, 20831u, 4294967295u), vec4<bool>(true, true, false, false), 10639u), Struct_1(vec3<u32>(0u, 1u, 33104u), vec4<u32>(24184u, 1u, 101433u, 8878u), vec4<bool>(false, true, true, false), 4294967295u), Struct_1(vec3<u32>(71387u, 4294967295u, 31901u), vec4<u32>(35112u, 57756u, 12022u, 4294967295u), vec4<bool>(false, true, false, false), 56005u), Struct_1(vec3<u32>(29139u, 56175u, 4294967295u), vec4<u32>(27645u, 27782u, 4294967295u, 23175u), vec4<bool>(true, false, false, true), 12311u), Struct_1(vec3<u32>(7535u, 7118u, 1u), vec4<u32>(11852u, 87098u, 23662u, 0u), vec4<bool>(true, false, true, true), 52107u), Struct_1(vec3<u32>(1u, 0u, 1u), vec4<u32>(13615u, 1u, 256u, 13812u), vec4<bool>(false, false, true, true), 75891u), Struct_1(vec3<u32>(21362u, 4294967295u, 1u), vec4<u32>(4294967295u, 26736u, 49318u, 25996u), vec4<bool>(true, false, false, false), 19114u), Struct_1(vec3<u32>(54110u, 4294967295u, 4294967295u), vec4<u32>(0u, 15583u, 0u, 0u), vec4<bool>(false, false, true, true), 1u), Struct_1(vec3<u32>(1u, 71784u, 1u), vec4<u32>(8964u, 24940u, 28415u, 4294967295u), vec4<bool>(false, false, true, false), 4294967295u), Struct_1(vec3<u32>(63073u, 40715u, 26855u), vec4<u32>(1u, 13847u, 67734u, 4294967295u), vec4<bool>(false, true, false, false), 81934u), Struct_1(vec3<u32>(0u, 11834u, 1u), vec4<u32>(29521u, 4294967295u, 0u, 1u), vec4<bool>(true, true, false, true), 102963u), Struct_1(vec3<u32>(4294967295u, 1u, 28413u), vec4<u32>(4294967295u, 1u, 42325u, 42070u), vec4<bool>(false, false, false, true), 117893u), Struct_1(vec3<u32>(4294967295u, 25223u, 1u), vec4<u32>(0u, 29586u, 4294967295u, 37647u), vec4<bool>(false, true, false, false), 1u), Struct_1(vec3<u32>(4294967295u, 9158u, 0u), vec4<u32>(1285u, 58561u, 1u, 4294967295u), vec4<bool>(false, true, false, true), 50122u), Struct_1(vec3<u32>(22764u, 0u, 1u), vec4<u32>(10889u, 1u, 0u, 12896u), vec4<bool>(false, false, false, true), 31266u), Struct_1(vec3<u32>(1u, 0u, 135076u), vec4<u32>(27804u, 9523u, 22641u, 86916u), vec4<bool>(true, true, false, false), 1u), Struct_1(vec3<u32>(9793u, 1509u, 24259u), vec4<u32>(0u, 66171u, 44491u, 21518u), vec4<bool>(true, false, true, false), 4787u));

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<u32>(17805u, 4294967295u, 86439u), vec4<u32>(1u, 36457u, 1u, 28728u), vec4<bool>(false, false, false, false), 0u), Struct_1(vec3<u32>(50643u, 1u, 17255u), vec4<u32>(13284u, 7138u, 11837u, 45645u), vec4<bool>(false, false, false, false), 4294967295u), Struct_1(vec3<u32>(1u, 29873u, 0u), vec4<u32>(56134u, 67839u, 4294967295u, 0u), vec4<bool>(false, false, true, true), 4294967295u), Struct_1(vec3<u32>(38775u, 0u, 61350u), vec4<u32>(0u, 17162u, 42801u, 36698u), vec4<bool>(true, true, false, false), 4294967295u), Struct_1(vec3<u32>(11771u, 30731u, 29176u), vec4<u32>(25719u, 1u, 1u, 20860u), vec4<bool>(true, true, true, true), 28432u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), vec4<u32>(0u, 47216u, 18867u, 68303u), vec4<bool>(true, false, false, false), 0u), Struct_1(vec3<u32>(0u, 4294967295u, 83916u), vec4<u32>(1u, 1u, 4294967295u, 66352u), vec4<bool>(false, true, true, true), 24128u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    global0 = array<f32, 7>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(19436u, max((arg_0 >> (4294967295u % 32u)) | abs(1u), arg_0)), arg_0, ~arg_0), 7u)];
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(8889u, arg_0), 7u)];
    return Struct_1(~abs(firstTrailingBit(firstLeadingBit(vec3<u32>(arg_0, var_1.a.x, 1u)))), ~vec4<u32>(~1u, firstLeadingBit(1u), ~(~53844u), var_1.a.x), var_1.c, arg_0);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: vec2<i32>) -> bool {
    return true;
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 7>();
    var var_0 = func_2(~(~(~1u)));
    global0 = array<f32, 7>();
    let var_1 = global2[_wgslsmith_index_u32(~var_0.d, 7u)];
    let var_2 = select(vec3<bool>(func_3(Struct_1(vec3<u32>(var_0.d, var_1.d, 1u), ~vec4<u32>(var_0.d, 69318u, 78287u, 67691u), vec4<bool>(true, var_0.c.x, false, true), var_1.b.x), u_input.b.x, -1000f, _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.xy, u_input.b.zw))), !var_0.c.x, !select(false, true, any(vec2<bool>(true, true)))), select(func_2(~var_0.d).c.wxz, vec3<bool>(var_0.c.x, -37699i <= u_input.b.x, !var_0.c.x), var_0.c.x), !(select(!var_1.c.x, true, true) && (!var_1.c.x || any(var_1.c.zwx))));
    return Struct_1(min(vec3<u32>(_wgslsmith_dot_vec2_u32(~var_1.b.zy, firstTrailingBit(vec2<u32>(1u, 1u))), 0u, 15166u), _wgslsmith_div_vec3_u32(var_1.b.wwz, countOneBits(select(var_0.b.xxw, vec3<u32>(1u, 39714u, 8279u), true)))), vec4<u32>(4294967295u, ~_wgslsmith_mod_u32(var_1.a.x, 50573u) | _wgslsmith_sub_u32(var_1.a.x ^ var_0.d, ~var_0.a.x), 4294967295u, min(_wgslsmith_mod_u32(countOneBits(var_1.d), var_1.b.x), ~abs(var_1.a.x))), var_0.c, max(_wgslsmith_sub_u32(var_1.b.x, _wgslsmith_add_u32(var_0.d, ~56373u)), firstTrailingBit(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 31u)];
    let var_1 = func_1();
    let var_2 = -_wgslsmith_add_vec3_i32(u_input.b.zzy, countOneBits(u_input.b.zwy));
    let var_3 = func_2(1u).c.yz;
    var var_4 = func_1().c.wzy;
    let var_5 = _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, _wgslsmith_mult_i32(-11692i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_2.x), var_2.xx), _wgslsmith_sub_i32(var_2.x, var_2.x)))), u_input.b.zx);
    var var_6 = _wgslsmith_clamp_i32(~24550i, -var_2.x, min(_wgslsmith_dot_vec3_i32(var_2 & vec3<i32>(691i, var_5, -28204i), reverseBits(select(vec3<i32>(-2147483647i, var_2.x, var_2.x), vec3<i32>(-2147483647i, -445i, u_input.b.x), vec3<bool>(true, var_0.c.x, false)))), _wgslsmith_div_i32(u_input.b.x, -(u_input.b.x >> (var_1.a.x % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-467f);
}

