struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<Struct_1, 20>;

var<private> global2: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-1000f, 1469f), vec2<f32>(1174f, 670f), vec2<f32>(472f, -346f), vec2<f32>(-538f, -1521f), vec2<f32>(116f, -425f), vec2<f32>(1000f, -562f), vec2<f32>(877f, 386f), vec2<f32>(791f, -1323f), vec2<f32>(-481f, 1000f), vec2<f32>(1635f, -764f), vec2<f32>(-318f, 391f), vec2<f32>(-532f, -905f), vec2<f32>(619f, 1874f), vec2<f32>(-2524f, 1135f), vec2<f32>(-565f, -788f), vec2<f32>(-804f, -650f), vec2<f32>(-752f, -570f), vec2<f32>(-856f, -1000f), vec2<f32>(396f, -726f));

var<private> global3: array<vec2<f32>, 31>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<u32> {
    global1 = array<Struct_1, 20>();
    global3 = array<vec2<f32>, 31>();
    global3 = array<vec2<f32>, 31>();
    let var_0 = vec4<u32>(~1u, ~firstLeadingBit(~1u), 4294967295u, ~_wgslsmith_mod_u32(reverseBits(41628u), 33075u)) & (vec4<u32>(_wgslsmith_clamp_u32(~36492u, reverseBits(10293u), 1u), 38533u, 1u, 4294967295u) >> (countOneBits(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)));
    global1 = array<Struct_1, 20>();
    return reverseBits(~select(~(~vec3<u32>(var_0.x, 88837u, var_0.x)), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(11112u, var_0.x, 0u), var_0.xxw)), !select(vec3<bool>(arg_0.x, arg_0.x, true), arg_0.yyw, false)));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_4, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_4(arg_2.a, arg_3.c.d);
    global0 = ~u_input.b;
    return max(44380i, ~12347i);
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: u32, arg_3: vec3<bool>) -> Struct_2 {
    global1 = array<Struct_1, 20>();
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(795f * -295f))) + _wgslsmith_f_op_f32(max(1324f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(389f - -817f), _wgslsmith_f_op_f32(420f - 625f)))))), arg_2, Struct_4(select(select(select(vec4<bool>(arg_3.x, true, arg_3.x, true), vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x), vec4<bool>(true, arg_3.x, true, arg_3.x)), select(vec4<bool>(false, true, false, arg_3.x), vec4<bool>(arg_3.x, false, false, false), arg_3.x), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x)), select(!vec4<bool>(arg_3.x, false, true, arg_3.x), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -441f))), _wgslsmith_f_op_f32(582f - _wgslsmith_f_op_f32(trunc(-855f))), _wgslsmith_div_f32(-558f, _wgslsmith_f_op_f32(max(122f, -172f))), -600f)), Struct_3(!vec4<bool>(arg_3.x, true, true, false && arg_3.x), vec3<u32>(92796u, arg_2, arg_2) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, 25791u, arg_2), func_3(vec4<bool>(false, true, false, true))), Struct_2(~_wgslsmith_add_u32(1u, arg_2), !(!arg_3.x), firstLeadingBit(~u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1375f, -1336f, -1000f, 1183f)))));
    let var_1 = Struct_4(select(!select(!vec4<bool>(true, true, true, arg_3.x), vec4<bool>(arg_3.x, false, arg_3.x, arg_3.x), !vec4<bool>(arg_3.x, false, true, arg_3.x)), vec4<bool>(!arg_3.x, arg_3.x, true, any(vec3<bool>(arg_3.x, true, arg_3.x))), ~76946u > arg_2), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2009f, -786f, 1454f, -221f), _wgslsmith_f_op_vec4_f32(vec4<f32>(284f, 1000f, -1162f, 903f) * vec4<f32>(1000f, -688f, -522f, 1000f)), !arg_3.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1670f, -531f, -844f)), vec4<f32>(156f, -1485f, 1125f, -213f)), false)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(1043f, -1000f)), 1f, 736f, _wgslsmith_f_op_f32(abs(1247f))))))));
    global0 = countOneBits(firstLeadingBit(1i));
    let var_2 = _wgslsmith_div_u32(62634u, 33639u);
    return Struct_2(select(1u, ~_wgslsmith_sub_u32(~var_2, arg_2 ^ var_2), var_1.b.x > var_1.b.x), arg_3.x, 18780i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(1f)), var_1.b.x, var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -334f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(var_1.b, vec4<f32>(225f, var_1.b.x, var_1.b.x, var_1.b.x)), vec4<f32>(var_1.b.x, 1263f, 874f, -489f)))))));
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(abs(arg_0.a), arg_0.a, arg_1, arg_0.a), max(~vec4<u32>(4294967295u, 0u, arg_0.a, arg_0.a) >> (~vec4<u32>(48370u, 17456u, arg_0.a, 18576u) % vec4<u32>(32u)), reverseBits(~vec4<u32>(32949u, 4294967295u, arg_1, arg_1)))), ~(~select(vec4<u32>(arg_1, arg_0.a, 20000u, 35517u), vec4<u32>(arg_0.a, arg_1, 37790u, arg_0.a), vec4<bool>(arg_0.b, false, arg_0.b, false))) & ((_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, arg_0.a, 1u), vec4<u32>(4294967295u, 4294967295u, 52753u, arg_1)) & ~vec4<u32>(39299u, arg_0.a, arg_1, arg_1)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(26602u, arg_0.a, 10138u, arg_1), vec4<u32>(0u, arg_1, 55318u, 4294967295u)) % vec4<u32>(32u)))), 20u)];
    var var_1 = Struct_4(vec4<bool>(all(vec2<bool>(true, true)), !(!arg_0.b), !(arg_0.c < (i32(-1i) * -1787i)), func_2(-var_0.a.x, ~var_0.a, 35152u, vec3<bool>(true, arg_0.b, false)).b || false), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, 1469f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1588f, -488f, -2173f, -399f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1318f, -647f, arg_0.d.x, 677f) * arg_0.d))))));
    var_1 = Struct_4(select(vec4<bool>(false, func_2(-6935i, vec4<i32>(u_input.b, arg_0.c, 53227i, u_input.a.x) | var_0.a, arg_0.a, var_1.a.yww).b, any(var_1.a.zzw), !any(var_1.a.xw)), vec4<bool>(arg_0.b, any(var_1.a.wwx), true, select(arg_0.b, true, true)), var_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(492f, _wgslsmith_f_op_f32(f32(-1f) * -825f), _wgslsmith_f_op_f32(abs(-228f)), var_1.b.x))));
    global3 = array<vec2<f32>, 31>();
    let var_2 = ~1u;
    return 117f;
}

fn func_1(arg_0: Struct_2) -> vec4<u32> {
    global2 = array<vec2<f32>, 19>();
    global2 = array<vec2<f32>, 19>();
    global2 = array<vec2<f32>, 19>();
    global0 = arg_0.c;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(903f * _wgslsmith_f_op_f32(func_5(func_2(u_input.a.x, reverseBits(vec4<i32>(-20121i, u_input.a.x, 402i, 2147483647i)), min(66667u, 6833u), !vec3<bool>(arg_0.b, true, arg_0.b)), abs(firstTrailingBit(arg_0.a))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f) - arg_0.d.x)));
    return vec4<u32>(arg_0.a, _wgslsmith_mult_u32(12453u, ~(~1u)), max(arg_0.a, ~(arg_0.a >> (arg_0.a % 32u))), min(~4294967295u, ~(~9614u))) & ~(~firstTrailingBit(min(vec4<u32>(4294967295u, arg_0.a, 40541u, arg_0.a), vec4<u32>(arg_0.a, arg_0.a, 0u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 19>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global2[_wgslsmith_index_u32(~0u, 19u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(1u, 19u)] + global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(57072u, 27914u), 19u)])))));
    let var_1 = select(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(73906u, 4294967295u)), ~vec2<u32>(7916u, 4294967295u)), 1u, 4294967295u), _wgslsmith_clamp_vec4_u32(max(max(~vec4<u32>(46508u, 0u, 1u, 0u), vec4<u32>(15303u, 32540u, 0u, 23643u)), vec4<u32>(30622u << (1u % 32u), 1u, ~0u, ~4294967295u)), select(_wgslsmith_sub_vec4_u32(~vec4<u32>(58607u, 1u, 1u, 49048u), func_1(Struct_2(0u, true, -2147483647i, vec4<f32>(1559f, 1000f, var_0.x, var_0.x)))), func_1(func_2(u_input.b, vec4<i32>(u_input.a.x, -33573i, -3027i, 2147483647i), 0u, vec3<bool>(true, false, false))), vec4<bool>(true, true, true, true)), ~select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 0u, 1u, 0u), true)), select(false, true, true));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, _wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(min(u_input.b, 49691i), ~u_input.a.x)), u_input.b, _wgslsmith_div_i32(~12220i, ~(-u_input.b))), vec4<i32>(-2147483647i, -_wgslsmith_mod_i32(1i << (var_1.x % 32u), _wgslsmith_sub_i32(u_input.b, u_input.b)), u_input.a.x, (_wgslsmith_clamp_i32(u_input.b, 7181i, 7837i) << (~10708u % 32u)) & (u_input.b << (reverseBits(var_1.x) % 32u))));
    let var_3 = Struct_4(vec4<bool>(select(_wgslsmith_f_op_f32(var_0.x + 655f) <= 408f, true, select(true, true, select(true, false, true))), true != any(vec3<bool>(true, true, true)), false, false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1471f, 2365f, -731f, var_0.x))))) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(min(-151f, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_2(var_1.x, true, u_input.b, vec4<f32>(-412f, 747f, var_0.x, var_0.x)), 4294967295u)) - -263f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_0.x)), func_2(u_input.a.x, vec4<i32>(-1i, 1i, var_2, u_input.b), 4294967295u, vec3<bool>(false, true, false)).d.x)))));
    var var_4 = global1[_wgslsmith_index_u32(~func_2(15442i, _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2, -2147483647i, u_input.b, var_2), vec4<i32>(25815i, u_input.a.x, 1i, var_2), vec4<i32>(-9225i, u_input.b, var_2, 1i)) & -vec4<i32>(1i, 19525i, 1i, var_2), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(45782i, 39432i, -5908i, 5142i), vec4<i32>(var_2, -2147483647i, -2147483647i, var_2)), ~vec4<i32>(23432i, var_2, u_input.a.x, 0i))), 1u, select(vec3<bool>(any(var_3.a.wzw), var_3.a.x || var_3.a.x, select(var_3.a.x, var_3.a.x, true)), var_3.a.zxz, (var_3.a.x == var_3.a.x) || !var_3.a.x)).a, 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-2147483647i >> (select(var_1.x | var_1.x, countOneBits(4294967295u), !var_3.a.x) % 32u)));
}

