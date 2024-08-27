struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<bool>(false, true), vec4<u32>(64949u, 14312u, 4294967295u, 0u)), Struct_1(vec2<bool>(false, false), vec4<u32>(0u, 39434u, 3702u, 4294967295u)), Struct_1(vec2<bool>(false, true), vec4<u32>(3070u, 6740u, 4294967295u, 59506u)), Struct_1(vec2<bool>(false, false), vec4<u32>(66708u, 0u, 1u, 14678u)));

var<private> global1: array<i32, 11> = array<i32, 11>(-1i, 89835i, -15542i, 4623i, i32(-2147483648), -2864i, -27224i, 30983i, 2147483647i, -23017i, -7321i);

var<private> global2: array<Struct_1, 12>;

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<bool>(false, true), vec4<u32>(1u, 4294967295u, 1u, 4294967295u)), Struct_1(vec2<bool>(false, false), vec4<u32>(103852u, 0u, 4294967295u, 4294967295u)), Struct_1(vec2<bool>(true, false), vec4<u32>(36992u, 60646u, 1u, 14095u)), Struct_1(vec2<bool>(true, false), vec4<u32>(0u, 37828u, 46089u, 1u)), Struct_1(vec2<bool>(false, true), vec4<u32>(0u, 0u, 147721u, 1u)), Struct_1(vec2<bool>(true, false), vec4<u32>(4294967295u, 61532u, 69870u, 17680u)), Struct_1(vec2<bool>(false, false), vec4<u32>(0u, 1707u, 42035u, 4294967295u)), Struct_1(vec2<bool>(false, true), vec4<u32>(64779u, 52300u, 0u, 4294967295u)), Struct_1(vec2<bool>(false, true), vec4<u32>(0u, 4294967295u, 4294967295u, 19957u)), Struct_1(vec2<bool>(true, false), vec4<u32>(20219u, 0u, 35116u, 1u)), Struct_1(vec2<bool>(true, false), vec4<u32>(46187u, 41016u, 1u, 36786u)), Struct_1(vec2<bool>(false, false), vec4<u32>(103811u, 6362u, 4682u, 1u)), Struct_1(vec2<bool>(true, true), vec4<u32>(79567u, 4294967295u, 4294967295u, 4294967295u)), Struct_1(vec2<bool>(true, false), vec4<u32>(90103u, 1u, 0u, 16162u)), Struct_1(vec2<bool>(true, false), vec4<u32>(0u, 0u, 84585u, 16774u)), Struct_1(vec2<bool>(false, true), vec4<u32>(4294967295u, 10966u, 12666u, 49797u)), Struct_1(vec2<bool>(false, false), vec4<u32>(4294967295u, 3464u, 4294967295u, 1u)), Struct_1(vec2<bool>(true, false), vec4<u32>(138191u, 1u, 4294967295u, 80039u)), Struct_1(vec2<bool>(false, true), vec4<u32>(9827u, 4294967295u, 0u, 36573u)), Struct_1(vec2<bool>(true, false), vec4<u32>(72003u, 33322u, 2472u, 4294967295u)), Struct_1(vec2<bool>(false, false), vec4<u32>(32507u, 72019u, 28875u, 72434u)), Struct_1(vec2<bool>(true, true), vec4<u32>(69448u, 36959u, 102112u, 31815u)), Struct_1(vec2<bool>(true, true), vec4<u32>(4294967295u, 18754u, 68832u, 28311u)), Struct_1(vec2<bool>(false, false), vec4<u32>(4294967295u, 4246u, 33920u, 1u)), Struct_1(vec2<bool>(false, false), vec4<u32>(28012u, 4294967295u, 1u, 2344u)));

var<private> global4: array<u32, 29>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = ~u_input.c;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-465f, -469f, 262f, -337f))) * vec4<f32>(_wgslsmith_f_op_f32(max(640f, 1822f)), _wgslsmith_f_op_f32(abs(-291f)), _wgslsmith_f_op_f32(abs(593f)), _wgslsmith_f_op_f32(f32(-1f) * -1215f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1849f, 930f, 245f, -513f) * vec4<f32>(248f, -624f, -256f, 1000f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1203f - _wgslsmith_f_op_f32(ceil(1426f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(235f, -1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1363f) - -1181f), 1149f));
    let var_2 = ~4294967295u;
    global3 = array<Struct_1, 25>();
    var var_3 = u_input.c.xy;
    return vec3<u32>(select(~reverseBits(arg_0.b.x), 87717u, false), ~(~max(0u, ~global4[_wgslsmith_index_u32(var_2, 29u)])), select(_wgslsmith_clamp_u32(firstTrailingBit(30668u), _wgslsmith_mult_u32(arg_0.b.x, abs(54853u)), 50040u), 0u, true));
}

fn func_2() -> f32 {
    let var_0 = !vec3<bool>(!((u_input.d < 21912u) | true), any(vec3<bool>(true, true, true)), !(!any(vec3<bool>(false, false, false))));
    let var_1 = min(~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, 1247u), ~vec3<u32>(u_input.d, u_input.a, 0u)), func_3(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 29u)] << (u_input.d % 32u), 4u)])), countOneBits(min(~(~vec3<u32>(u_input.a, 4294967295u, 49747u)), vec3<u32>(u_input.a ^ global4[_wgslsmith_index_u32(0u, 29u)], u_input.d | global4[_wgslsmith_index_u32(60690u, 29u)], 29222u))));
    var var_2 = _wgslsmith_sub_vec4_u32(~(~(vec4<u32>(79971u, global4[_wgslsmith_index_u32(var_1.x, 29u)], 3522u, u_input.a) & vec4<u32>(u_input.a, 107172u, 0u, 1u))), select(~vec4<u32>(0u, global4[_wgslsmith_index_u32(var_1.x, 29u)], u_input.a, 64637u) >> (countOneBits(vec4<u32>(global4[_wgslsmith_index_u32(0u, 29u)], u_input.a, var_1.x, 26848u)) % vec4<u32>(32u)), ~(~vec4<u32>(4294967295u, u_input.d, 1u, var_1.x)), vec4<bool>(any(vec4<bool>(var_0.x, var_0.x, false, true)), all(vec4<bool>(var_0.x, true, false, var_0.x)), var_0.x, all(vec4<bool>(var_0.x, true, true, true))))) ^ ~firstLeadingBit(countOneBits(~vec4<u32>(1u, u_input.a, 1u, 75767u)));
    var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(abs(select(vec4<u32>(87734u, var_1.x, global4[_wgslsmith_index_u32(15872u, 29u)], 1u), vec4<u32>(1u, global4[_wgslsmith_index_u32(3429u, 29u)], u_input.a, var_2.x), vec4<bool>(var_0.x, false, var_0.x, false)) & ~vec4<u32>(36755u, 4294967295u, var_2.x, var_2.x)), _wgslsmith_div_vec4_u32(min(firstTrailingBit(vec4<u32>(var_1.x, var_2.x, 4294967295u, u_input.d)), ~vec4<u32>(28254u, 4294967295u, var_2.x, var_1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, var_2.x, u_input.a, var_1.x) ^ vec4<u32>(global4[_wgslsmith_index_u32(58374u, 29u)], 21248u, 14305u, 4294967295u), vec4<u32>(var_1.x, 4294967295u, global4[_wgslsmith_index_u32(29653u, 29u)], var_2.x) << (vec4<u32>(u_input.d, 0u, var_2.x, global4[_wgslsmith_index_u32(55782u, 29u)]) % vec4<u32>(32u))))), select(vec4<u32>(4294967295u, ~_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(var_2.x, 29u)], u_input.d), global4[_wgslsmith_index_u32(~(~0u), 29u)], ~(~41353u)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(79462u, u_input.d, 0u, var_1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, global4[_wgslsmith_index_u32(var_1.x, 29u)], var_1.x), vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(0u, 29u)], 13224u, 21625u))), _wgslsmith_div_vec4_u32(~vec4<u32>(var_1.x, 35469u, 49260u, 34607u), _wgslsmith_clamp_vec4_u32(vec4<u32>(26403u, 1u, 50427u, 22621u), vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(1u, var_2.x, 1u, 34702u)))), vec4<bool>(true, true, false, var_0.x)));
    let var_3 = 1i;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(144f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -406f))) + _wgslsmith_f_op_f32(f32(-1f) * -484f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-304f * -1950f), _wgslsmith_f_op_f32(-163f + 490f), all(var_0)))))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global1 = array<i32, 11>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-992f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(trunc(2135f))));
    global3 = array<Struct_1, 25>();
    global3 = array<Struct_1, 25>();
    let var_1 = ~select(~select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 0u, 6787u), vec3<u32>(20569u, global4[_wgslsmith_index_u32(1u, 29u)], 937u)), countOneBits(vec3<u32>(global4[_wgslsmith_index_u32(u_input.a, 29u)], global4[_wgslsmith_index_u32(65826u, 29u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(13426u, 29u)], 29u)])), vec3<bool>(false, false, false)), _wgslsmith_mult_vec3_u32(vec3<u32>(~global4[_wgslsmith_index_u32(16082u, 29u)], global4[_wgslsmith_index_u32(u_input.a, 29u)], u_input.a), vec3<u32>(firstTrailingBit(35281u), u_input.a, countOneBits(40624u))), !(all(vec4<bool>(true, false, true, true)) | true));
    return Struct_1(vec2<bool>(true, false), select(min(vec4<u32>(~u_input.a, countOneBits(global4[_wgslsmith_index_u32(1u, 29u)]), var_1.x, countOneBits(global4[_wgslsmith_index_u32(u_input.a, 29u)])), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 69902u, global4[_wgslsmith_index_u32(var_1.x, 29u)], 4294967295u) ^ vec4<u32>(u_input.d, 6152u, 39060u, var_1.x), vec4<u32>(39717u, global4[_wgslsmith_index_u32(4294967295u, 29u)], 1u, 4294967295u))), vec4<u32>(~(~11370u), 49988u, var_1.x << (firstTrailingBit(u_input.d) % 32u), ~_wgslsmith_sub_u32(38393u, u_input.a)), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false))), all(vec3<bool>(false, false, true)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> u32 {
    var var_0 = Struct_1(!vec2<bool>(any(vec3<bool>(arg_0.x, arg_2.a.x, arg_0.x)), all(select(vec4<bool>(false, false, arg_2.a.x, arg_2.a.x), vec4<bool>(arg_0.x, false, true, true), vec4<bool>(arg_2.a.x, arg_2.a.x, true, false)))), (_wgslsmith_sub_vec4_u32(~arg_2.b, vec4<u32>(arg_2.b.x, 4294967295u, global4[_wgslsmith_index_u32(29202u, 29u)], u_input.a)) | select(firstLeadingBit(vec4<u32>(1u, 1u, arg_3.x, 19351u)), arg_2.b | vec4<u32>(arg_2.b.x, u_input.a, arg_2.b.x, arg_3.x), false)) >> (~abs(vec4<u32>(51418u, global4[_wgslsmith_index_u32(1u, 29u)], arg_2.b.x, 4294967295u)) % vec4<u32>(32u)));
    let var_1 = vec4<u32>(~func_3(func_1(60179i)).x ^ select(arg_2.b.x, arg_2.b.x, !(!var_0.a.x)), 1u, arg_3.x, 31884u);
    var var_2 = arg_2.b;
    var var_3 = ~1u;
    global1 = array<i32, 11>();
    return ~(~(~1u << (arg_2.b.x % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    global1 = array<i32, 11>();
    let var_0 = global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~reverseBits(_wgslsmith_clamp_u32(22460u, 24278u, ~0u)), 29u)], 11u)];
    global1 = array<i32, 11>();
    var var_1 = arg_2;
    global0 = array<Struct_1, 4>();
    return _wgslsmith_add_u32(~33139u, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.zw;
    let var_1 = _wgslsmith_f_op_f32(1354f * 127f);
    global0 = array<Struct_1, 4>();
    var var_2 = Struct_1(vec2<bool>(true, true), ~abs(_wgslsmith_div_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(715u, 29u)], 29u)], u_input.d, 4294967295u, 8360u), vec4<u32>(u_input.d, 0u, 0u, global4[_wgslsmith_index_u32(u_input.d, 29u)]))) | abs(vec4<u32>(~23124u, ~55999u, 4294967295u, global4[_wgslsmith_index_u32(countOneBits(0u), 29u)])));
    var var_3 = _wgslsmith_div_u32(global4[_wgslsmith_index_u32(u_input.d, 29u)], func_5(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~var_2.b.x), func_4(select(vec3<bool>(true, false, true), vec3<bool>(var_2.a.x, false, true), false), -2147483647i, func_1(2147483647i), vec4<u32>(var_2.b.x, 1u, 0u, 23532u) & vec4<u32>(70843u, 72632u, var_2.b.x, 0u))), 12u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -1000f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1159f, -1043f, -336f), vec3<f32>(var_1, -1048f, 1945f), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(484f, var_1, -922f)))), Struct_1(!func_1(global1[_wgslsmith_index_u32(4294967295u, 11u)]).a, ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.d, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_2.b.x, 29u)], 29u)], 26313u), vec4<u32>(4294967295u, u_input.d, u_input.a, 8955u)))));
    global0 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b.x, u_input.c.zxw, vec4<u32>(var_2.b.x, ~(~global4[_wgslsmith_index_u32(9573u, 29u)]), ~(~75036u), (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_2.b.x, 29u)], 29u)] << (var_2.b.x % 32u)) & global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d, 29u)], 29u)]), 29u)]) ^ firstTrailingBit(vec4<u32>(global4[_wgslsmith_index_u32(22420u, 29u)] & 4294967295u, 44229u, 1u, 4294967295u)));
}

