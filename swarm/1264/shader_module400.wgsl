struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec3<bool>(false, true, false), vec2<u32>(1u, 65893u), Struct_1(vec2<i32>(-1994i, 16415i), vec3<i32>(-15117i, 0i, 1i), vec3<i32>(0i, 12470i, 0i), 2147483647i), true), Struct_2(vec3<bool>(false, false, true), vec2<u32>(54342u, 5039u), Struct_1(vec2<i32>(0i, 1i), vec3<i32>(21460i, -25129i, 1i), vec3<i32>(0i, -36064i, 1i), -17843i), true), Struct_2(vec3<bool>(true, false, false), vec2<u32>(0u, 0u), Struct_1(vec2<i32>(0i, 0i), vec3<i32>(2147483647i, 0i, -7141i), vec3<i32>(0i, 2090i, -32518i), i32(-2147483648)), true), Struct_2(vec3<bool>(true, false, false), vec2<u32>(14476u, 13188u), Struct_1(vec2<i32>(2147483647i, 22738i), vec3<i32>(39703i, 2147483647i, i32(-2147483648)), vec3<i32>(-3928i, -2785i, 3234i), -511i), true), Struct_2(vec3<bool>(false, true, false), vec2<u32>(0u, 20944u), Struct_1(vec2<i32>(0i, 1i), vec3<i32>(0i, 33102i, 42154i), vec3<i32>(9305i, -41229i, 54939i), -1i), false), Struct_2(vec3<bool>(true, false, false), vec2<u32>(4294967295u, 6426u), Struct_1(vec2<i32>(1i, -42109i), vec3<i32>(2147483647i, 7783i, -29041i), vec3<i32>(-7623i, 6322i, 42569i), 37454i), true), Struct_2(vec3<bool>(true, false, false), vec2<u32>(0u, 1u), Struct_1(vec2<i32>(16715i, -26720i), vec3<i32>(15666i, -31060i, 0i), vec3<i32>(i32(-2147483648), -41878i, 1i), 2569i), true), Struct_2(vec3<bool>(true, false, false), vec2<u32>(4294967295u, 0u), Struct_1(vec2<i32>(-45077i, 0i), vec3<i32>(15758i, 6127i, -32095i), vec3<i32>(22648i, 46598i, 0i), i32(-2147483648)), true), Struct_2(vec3<bool>(true, true, false), vec2<u32>(4294967295u, 39352u), Struct_1(vec2<i32>(6538i, -61238i), vec3<i32>(-1i, 14527i, i32(-2147483648)), vec3<i32>(-27633i, 5888i, 57567i), 0i), false), Struct_2(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 1u), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec3<i32>(-10086i, 1i, i32(-2147483648)), vec3<i32>(0i, -1i, 56748i), 7196i), false), Struct_2(vec3<bool>(true, true, true), vec2<u32>(17460u, 45412u), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec3<i32>(-26869i, 2147483647i, 11744i), vec3<i32>(12192i, 0i, 2147483647i), 2147483647i), false), Struct_2(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 16721u), Struct_1(vec2<i32>(1i, 5027i), vec3<i32>(-28479i, 15434i, 16173i), vec3<i32>(2147483647i, -27680i, 13659i), -651i), true), Struct_2(vec3<bool>(true, false, false), vec2<u32>(1u, 1u), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec3<i32>(-1i, -56893i, 2147483647i), vec3<i32>(0i, -13391i, i32(-2147483648)), -9713i), true), Struct_2(vec3<bool>(false, true, true), vec2<u32>(4294967295u, 1u), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec3<i32>(-1i, 0i, 4681i), vec3<i32>(59923i, 1i, 61202i), 0i), true), Struct_2(vec3<bool>(true, false, true), vec2<u32>(78073u, 4542u), Struct_1(vec2<i32>(i32(-2147483648), 5465i), vec3<i32>(-27641i, -1i, 5398i), vec3<i32>(-1i, i32(-2147483648), 1i), -69332i), false), Struct_2(vec3<bool>(true, true, true), vec2<u32>(0u, 16746u), Struct_1(vec2<i32>(2147483647i, -1i), vec3<i32>(2147483647i, -5847i, -26112i), vec3<i32>(-32310i, -2234i, -1i), -14205i), true), Struct_2(vec3<bool>(false, false, true), vec2<u32>(104984u, 11743u), Struct_1(vec2<i32>(2147483647i, -1i), vec3<i32>(-1i, 45130i, 1i), vec3<i32>(i32(-2147483648), 0i, -1i), 21794i), true), Struct_2(vec3<bool>(false, true, true), vec2<u32>(26616u, 113812u), Struct_1(vec2<i32>(1704i, 2147483647i), vec3<i32>(1i, 0i, 0i), vec3<i32>(2147483647i, 90326i, -875i), -5658i), true), Struct_2(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 124749u), Struct_1(vec2<i32>(8815i, 0i), vec3<i32>(-2011i, 2147483647i, 0i), vec3<i32>(-28869i, 0i, -48968i), -1i), false));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    let var_0 = Struct_2(!vec3<bool>(!select(false, false, true), true, false), _wgslsmith_div_vec2_u32(~firstLeadingBit(vec2<u32>(u_input.a, u_input.b)), select(vec2<u32>(~u_input.a, u_input.b), vec2<u32>(~u_input.b, u_input.a), select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec3<bool>(false, false, true))))), Struct_1(arg_0, vec3<i32>(arg_0.x, _wgslsmith_sub_i32(arg_0.x, arg_0.x), _wgslsmith_add_i32(-arg_0.x, arg_0.x)), abs(firstTrailingBit(abs(vec3<i32>(arg_0.x, arg_0.x, arg_0.x)))), 2147483647i), all(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true)));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3000f + _wgslsmith_f_op_f32(1820f - 1112f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-599f + -238f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1347f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_1 = 2243f;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, -119f), vec2<f32>(210f, 1306f)))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-364f, 137f) + vec2<f32>(810f, -947f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(357f, -1139f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1176f, 660f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(490f, 1169f), vec2<f32>(-641f, 2542f)) * vec2<f32>(-177f, 2186f)))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 1000f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, -2217f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-163f, 1014f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-977f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + -404f) * 378f)) - vec2<f32>(_wgslsmith_f_op_f32(-1841f - _wgslsmith_f_op_f32(var_2.x - 830f)), var_2.x)));
    return _wgslsmith_f_op_f32(sign(var_2.x));
}

fn func_2(arg_0: vec4<f32>) -> vec4<bool> {
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    var var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2117f - _wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<i32>(-7603i, -2147483647i))) - arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(2702f))))), _wgslsmith_f_op_f32(f32(-1f) * -361f))));
    let var_1 = ~(~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, 34989u), vec3<u32>(0u, u_input.b, 60211u)))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), -201f)), 1000f, -834f);
    return vec4<bool>(true, true, false, 1i < firstLeadingBit(_wgslsmith_clamp_i32(1i, 1i, ~(-18524i))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<i32>) -> vec3<u32> {
    let var_0 = arg_1;
    let var_1 = !func_2(vec4<f32>(_wgslsmith_div_f32(377f, arg_0), _wgslsmith_f_op_f32(-369f * arg_0), arg_0, arg_0));
    global0 = array<Struct_2, 19>();
    let var_2 = vec3<f32>(816f, -403f, arg_0);
    global0 = array<Struct_2, 19>();
    return countOneBits(abs(vec3<u32>(47723u, u_input.a ^ 4294967295u, 1u)) ^ _wgslsmith_clamp_vec3_u32(~vec3<u32>(58207u, 27816u, 1u), min(vec3<u32>(u_input.a, 0u, 1u), ~vec3<u32>(u_input.b, 4294967295u, 98043u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.a, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 5163u, 31585u), vec3<u32>(u_input.a, 16916u, 6610u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(_wgslsmith_div_u32(u_input.b, 5785u), ~1u, ~u_input.a) | _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(81401u, u_input.a, u_input.a), ~vec3<u32>(0u, 4294967295u, u_input.b), func_1(808f, false, vec3<i32>(2147483647i, -17027i, -11634i)))));
}

