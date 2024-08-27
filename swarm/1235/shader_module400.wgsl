struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(5206i, 37174i, -1i, -1i), vec4<i32>(51846i, 40198i, 0i, 1i), vec4<i32>(-1i, 4218i, 20401i, 2147483647i), vec4<i32>(1i, 0i, -55143i, 0i), vec4<i32>(28906i, -32888i, -1i, -16567i), vec4<i32>(2147483647i, 15353i, 6194i, -17458i), vec4<i32>(1i, -21222i, 26855i, 32088i), vec4<i32>(-1i, -34932i, -1i, -1i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 13026i), vec4<i32>(i32(-2147483648), 2147483647i, -63577i, 1i), vec4<i32>(-13184i, -7788i, i32(-2147483648), -14210i), vec4<i32>(1i, 51697i, -1i, -19879i), vec4<i32>(2147483647i, -4769i, -24475i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, -23156i, 610i), vec4<i32>(51485i, 0i, 52491i, -13254i), vec4<i32>(-9615i, -11850i, 1i, 42806i), vec4<i32>(11694i, 2147483647i, 23149i, 21771i), vec4<i32>(-52957i, -20180i, -20503i, 25453i), vec4<i32>(-1i, 0i, 0i, 40141i), vec4<i32>(9454i, -1i, -3582i, i32(-2147483648)), vec4<i32>(0i, 0i, 50770i, -59196i), vec4<i32>(2147483647i, -12747i, -1i, -1i), vec4<i32>(-17089i, -27756i, 4010i, 43428i), vec4<i32>(14764i, 2147483647i, 4691i, 0i), vec4<i32>(-16891i, -4331i, 2147483647i, -8449i), vec4<i32>(-27366i, 1i, -1i, i32(-2147483648)), vec4<i32>(1i, i32(-2147483648), 3483i, 74846i), vec4<i32>(40253i, -1i, 2147483647i, -41009i), vec4<i32>(30095i, 4497i, -1i, 1i), vec4<i32>(1i, 2147483647i, 1i, 31200i), vec4<i32>(2147483647i, -20509i, -29227i, -30145i), vec4<i32>(63752i, 35332i, 2147483647i, 10184i));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global0 = array<bool, 18>();
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(63123u, 18u)]);
    return arg_0.b.x;
}

fn func_2(arg_0: Struct_3) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 2240f) * vec2<f32>(202f, -389f)), vec2<f32>(-145f, -414f))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(732f, 945f), vec2<f32>(1000f, -2099f))), vec2<f32>(1403f, 801f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-445f))), _wgslsmith_f_op_f32(func_3(Struct_2(vec2<i32>(1i, u_input.c) ^ u_input.d.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1179f, -711f)))))));
}

fn func_1() -> vec3<u32> {
    global1 = array<vec4<i32>, 32>();
    let var_0 = Struct_2(u_input.a.wx, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_3(vec2<bool>(global0[_wgslsmith_index_u32(34284u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]), Struct_1(global0[_wgslsmith_index_u32(u_input.b, 18u)])))) * vec2<f32>(-1000f, -1080f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1472f, -595f), vec2<f32>(2495f, 322f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1015f, -148f), vec2<f32>(-1033f, -1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-638f, 189f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-543f, -480f))))));
    let var_1 = false;
    global1 = array<vec4<i32>, 32>();
    global0 = array<bool, 18>();
    return ~(~_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, 0u, 1u)), max(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(u_input.b, u_input.b, 0u)))) >> ((_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 5646u, 1u), vec3<u32>(u_input.b, 24899u, ~u_input.b)) << ((vec3<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_sub_u32(u_input.b, 43587u), 1u ^ u_input.b) | vec3<u32>(0u, 57766u, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec2_i32(u_input.d.xx | (-(vec2<i32>(u_input.c, 0i) >> (arg_1.xy % vec2<u32>(32u))) | countOneBits(-vec2<i32>(u_input.c, -3294i))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -u_input.a.x), ~vec2<i32>(firstTrailingBit(u_input.d.x), ~u_input.a.x)), ~(~u_input.a.xx));
    var var_1 = global0[_wgslsmith_index_u32(u_input.b, 18u)];
    var var_2 = Struct_3(select(vec2<bool>(true, arg_0.a), select(vec2<bool>(true, false), select(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_1.x, 18u)]), !vec2<bool>(global0[_wgslsmith_index_u32(arg_1.x, 18u)], true), vec2<bool>(true, global0[_wgslsmith_index_u32(arg_3, 18u)])), select(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(arg_3, 18u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 18u)], arg_0.a), global0[_wgslsmith_index_u32(24020u, 18u)]), vec2<bool>(arg_0.a, false), true)), true), Struct_1(arg_0.a));
    var var_3 = ~(~arg_1);
    let var_4 = Struct_3(vec2<bool>(!all(var_2.a), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, 97844u, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 8954u)), abs(vec4<u32>(1u, arg_1.x, var_3.x, var_3.x))) > var_3.x), arg_0);
    return Struct_2(reverseBits(vec2<i32>(-max(16283i, -13666i), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_clamp_i32(u_input.d.x, -25795i, -59823i)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_2), -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(!vec3<bool>(!global0[_wgslsmith_index_u32(countOneBits(u_input.b), 18u)], any(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(u_input.b, 18u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 18u)], false, false), global0[_wgslsmith_index_u32(4294967295u, 18u)])), u_input.e != (29788i | u_input.e)), func_4(Struct_1(global0[_wgslsmith_index_u32(~countOneBits(37613u), 18u)]), ~firstLeadingBit(func_1()), 1287f, ~reverseBits(~112441u)), Struct_2(vec2<i32>(-u_input.c, max(-1i, 1i >> (u_input.b % 32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(614f + -1000f), _wgslsmith_f_op_f32(func_3(Struct_2(u_input.a.xz, vec2<f32>(574f, 524f))))) + vec2<f32>(_wgslsmith_f_op_f32(239f + 399f), _wgslsmith_div_f32(331f, 1000f)))), !select(any(!vec2<bool>(global0[_wgslsmith_index_u32(105177u, 18u)], false)), !global0[_wgslsmith_index_u32(reverseBits(0u), 18u)], any(select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 18u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(u_input.b, 18u)]), vec3<bool>(global0[_wgslsmith_index_u32(11502u, 18u)], false, true)))));
    global0 = array<bool, 18>();
    global1 = array<vec4<i32>, 32>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.b.x, -757f));
    global0 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec4<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), u_input.b, ~4294967295u, u_input.b << (16998u % 32u)), vec4<u32>(firstLeadingBit(9939u), ~u_input.b, _wgslsmith_clamp_u32(select(u_input.b, 57276u, false), countOneBits(35950u), u_input.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 1u, u_input.b, 28962u), vec4<u32>(33376u, u_input.b, 9714u, 1u) ^ vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)))), _wgslsmith_f_op_f32(abs(-239f)), select(func_1().x, u_input.b, true), ~52867u);
}

