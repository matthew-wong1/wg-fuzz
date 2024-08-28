struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32>;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 1u);

var<private> global2: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global3: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(12379i, vec3<u32>(4294967295u, 1u, 44u)), Struct_4(1i, vec3<u32>(23623u, 42262u, 0u)), Struct_4(-31200i, vec3<u32>(44407u, 51172u, 4294967295u)), Struct_4(-25032i, vec3<u32>(0u, 0u, 0u)), Struct_4(8551i, vec3<u32>(4294967295u, 4294967295u, 60758u)), Struct_4(-38679i, vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_4(11421i, vec3<u32>(37274u, 0u, 26805u)), Struct_4(9239i, vec3<u32>(1u, 4294967295u, 1u)), Struct_4(1i, vec3<u32>(21626u, 0u, 31885u)), Struct_4(2147483647i, vec3<u32>(61858u, 0u, 1u)), Struct_4(34003i, vec3<u32>(1836u, 26382u, 23570u)), Struct_4(19954i, vec3<u32>(4294967295u, 4294967295u, 90215u)), Struct_4(1i, vec3<u32>(26373u, 4294967295u, 0u)), Struct_4(i32(-2147483648), vec3<u32>(24324u, 1367u, 34184u)), Struct_4(-7201i, vec3<u32>(0u, 4294967295u, 1u)), Struct_4(-65072i, vec3<u32>(0u, 1u, 47105u)), Struct_4(10255i, vec3<u32>(24078u, 45976u, 1u)));

var<private> global4: vec4<u32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec2<f32>, arg_3: f32) -> u32 {
    global3 = array<Struct_4, 17>();
    var var_0 = vec3<i32>(firstTrailingBit(reverseBits(_wgslsmith_add_i32(countOneBits(2147483647i), u_input.b))), -1i, 419i);
    let var_1 = Struct_2(1u, vec2<bool>(true, any(vec2<bool>(false, true))), (~(vec4<u32>(global4.x, 4294967295u, 39652u, 4294967295u) ^ vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)) ^ ~vec4<u32>(34200u, global4.x, global4.x, 48570u)) & vec4<u32>(firstLeadingBit(global1.x) >> (8226u % 32u), ~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), global1.x, ~(~58536u)), (vec3<u32>(~global1.x, u_input.a.x, 93242u) << (_wgslsmith_mod_vec3_u32(global0[_wgslsmith_index_u32(global4.x, 32u)] ^ global4.zxx, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(3149u, 0u, global4.x, 0u), vec4<u32>(1u, u_input.a.x, 47069u, u_input.a.x)), 32u)]) % vec3<u32>(32u))) & vec3<u32>(global4.x, 47667u, ~(~u_input.a.x)), 19323i <= min(u_input.b, -610i));
    var var_2 = abs(~(~firstLeadingBit(global4.x | global1.x)));
    let var_3 = var_0.xy;
    return 39155u;
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = 1i;
    global1 = u_input.a ^ global4.wx;
    let var_1 = ~_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(24684u, 1u, 99087u, 4246u))), ~vec4<u32>(global1.x, 0u, u_input.a.x, 97981u) >> (~reverseBits(vec4<u32>(global1.x, global4.x, 4356u, global1.x)) % vec4<u32>(32u)));
    let var_2 = -(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, var_0, u_input.b, 2147483647i), vec4<i32>(u_input.b, 23740i, 1i, 18488i))) & select(countOneBits(~vec4<i32>(10859i, 0i, -1i, var_0)), _wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, var_0, 0i, var_0), vec4<i32>(2147483647i, 0i, var_0, -2716i) | vec4<i32>(-43407i, var_0, -2147483647i, u_input.b)), _wgslsmith_mult_u32(0u, 83058u) < var_1));
    var var_3 = Struct_4(~(0i << (_wgslsmith_div_u32(4294967295u, func_3(-2147483647i, -1560f, vec2<f32>(1634f, -978f), 766f)) % 32u)), max(abs(min(vec3<u32>(4294967295u, global4.x, global4.x), ~global0[_wgslsmith_index_u32(40197u, 32u)])), global0[_wgslsmith_index_u32(~(~35699u ^ (1u >> (global4.x % 32u))), 32u)]));
    return var_3.a;
}

fn func_1() -> bool {
    var var_0 = (u_input.b << (_wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(global4.x, global1.x)) % 32u)) >> (~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, 1u, 37983u), vec4<u32>(global4.x, 0u, 34871u, global1.x)))) % 32u);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(358f * 651f) - _wgslsmith_f_op_f32(f32(-1f) * -1738f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-342f)), _wgslsmith_f_op_f32(-920f + 747f))));
    var var_2 = ~reverseBits(min(vec3<i32>(36974i, u_input.b, u_input.b) << (~vec3<u32>(0u, 4294967295u, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(func_2(true), firstLeadingBit(2147483647i), u_input.b)));
    var var_3 = global3[_wgslsmith_index_u32(~u_input.a.x, 17u)];
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~(select(_wgslsmith_add_vec4_u32(vec4<u32>(global4.x, global1.x, 1u, 17985u), vec4<u32>(u_input.a.x, global1.x, global1.x, 0u)), vec4<u32>(global4.x, ~u_input.a.x, u_input.a.x, 0u), vec4<bool>(true, true, any(vec4<bool>(true, false, true, true)), true)) >> (vec4<u32>(~(~global4.x), _wgslsmith_mult_u32(global1.x & 70762u, ~0u), 40195u & u_input.a.x, ~countOneBits(global4.x)) % vec4<u32>(32u)));
    var var_0 = Struct_4(_wgslsmith_dot_vec3_i32(select(~vec3<i32>(u_input.b, -1i, 0i), vec3<i32>(u_input.b, 17453i, u_input.b), vec3<bool>(true, true, true)) << ((~vec3<u32>(u_input.a.x, 43902u, 4294967295u) << (~global4.yzy % vec3<u32>(32u))) % vec3<u32>(32u)), min(~vec3<i32>(14005i, -13656i, 1i), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<i32>(u_input.b, u_input.b, -30189i), vec3<i32>(19434i, u_input.b, u_input.b)))), vec3<u32>(~4294967295u, _wgslsmith_mod_u32(~global4.x, global1.x) >> (global1.x % 32u), global1.x));
    var var_1 = func_1();
    global3 = array<Struct_4, 17>();
    let var_2 = _wgslsmith_sub_i32(reverseBits(_wgslsmith_mod_i32(1i, ~(-2147483647i))), ~var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(65319u, _wgslsmith_mod_vec2_i32(vec2<i32>(func_2(true), _wgslsmith_div_i32(~1i, min(var_0.a, 21495i))), _wgslsmith_div_vec2_i32(select(-vec2<i32>(22212i, u_input.b), vec2<i32>(0i, -49380i), func_1()), _wgslsmith_clamp_vec2_i32(vec2<i32>(-28778i, var_0.a) ^ vec2<i32>(-46065i, 2147483647i), -vec2<i32>(-50049i, 2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a, -2237i), vec2<i32>(-38485i, 48912i))))));
}

