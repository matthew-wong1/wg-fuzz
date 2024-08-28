struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 20>;

var<private> global2: bool = true;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    var var_0 = 4294967295u;
    var_0 = ~u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-101f, _wgslsmith_f_op_f32(select(-1000f, -255f, true)), _wgslsmith_f_op_f32(round(-860f))), vec3<f32>(-1267f, 1355f, -1138f)), vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-589f, 402f, -396f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1404f), -1000f, _wgslsmith_f_op_f32(ceil(869f))), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)] & global1[_wgslsmith_index_u32(u_input.a.x, 20u)], !global1[_wgslsmith_index_u32(1u, 20u)], true)))));
    let var_2 = !arg_0.x;
    let var_3 = Struct_1(var_1.x, countOneBits(~firstLeadingBit(u_input.a.x) | (4294967295u & _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 7897u))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(32774u, u_input.a.x), select(u_input.a.x, 4294967295u, false)), reverseBits(u_input.a.x), ~(~0u)), select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 76879u, u_input.a.x), vec3<u32>(0u, 70805u, 43071u)), _wgslsmith_div_u32(4294967295u, u_input.a.x), abs(4294967295u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(u_input.a.x, 18122u, 1u), vec3<u32>(u_input.a.x, 0u, u_input.a.x)), arg_0.x)), 20u)]);
    return true;
}

fn func_2() -> bool {
    return all(select(!select(vec4<bool>(false, false, false, false), !vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], false), true), select(vec4<bool>(true, func_3(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], true, false, global1[_wgslsmith_index_u32(u_input.a.x, 20u)])), true && global1[_wgslsmith_index_u32(4294967295u, 20u)], true), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(22635u, 20u)], true, global1[_wgslsmith_index_u32(0u, 20u)]), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(62560u, 20u)]), !global1[_wgslsmith_index_u32(u_input.a.x, 20u)])), false));
}

fn func_4(arg_0: bool) -> Struct_1 {
    var var_0 = 1i << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(u_input.a.x, 1u)), min(select(u_input.a, u_input.a, vec2<bool>(global1[_wgslsmith_index_u32(3153u, 20u)], false)), _wgslsmith_mod_vec2_u32(u_input.a, u_input.a))), u_input.a.x & u_input.a.x) % 32u);
    var var_1 = vec4<u32>(u_input.a.x, (u_input.a.x << (~40770u % 32u)) >> (firstLeadingBit(4294967295u) % 32u), _wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(45295u, 0u)), ~vec2<u32>(23142u, _wgslsmith_add_u32(29286u, 85767u))), 685u);
    let var_2 = select(!select(vec4<bool>(arg_0 & arg_0, global1[_wgslsmith_index_u32(reverseBits(403u), 20u)], func_2(), true), !select(vec4<bool>(false, false, true, true), vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 20u)], global1[_wgslsmith_index_u32(30589u, 20u)], arg_0, global1[_wgslsmith_index_u32(var_1.x, 20u)]), arg_0), global1[_wgslsmith_index_u32(min(var_1.x, ~44602u), 20u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), !(!vec4<bool>(func_2(), true, arg_0, false)));
    var var_3 = Struct_3(false, _wgslsmith_div_vec4_u32(vec4<u32>(118345u, select(74888u, ~45488u, global1[_wgslsmith_index_u32(var_1.x, 20u)]), 46947u, 1u), select(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, 57275u), 28379u, ~11545u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 4294967295u, 1u, 1u), vec4<u32>(76147u, var_1.x, u_input.a.x, 1u))), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_1.x, 11769u, 14037u) & vec4<u32>(var_1.x, u_input.a.x, 4294967295u, u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 67424u, 4294967295u, 0u), vec4<u32>(23699u, var_1.x, u_input.a.x, u_input.a.x))), var_2)));
    var_1 = var_3.b;
    return Struct_1(_wgslsmith_f_op_f32(-865f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-806f * -865f))))), _wgslsmith_mod_u32(~4294967295u, 33697u), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_1.x), vec2<u32>(1u, 42313u) ^ u_input.a) ^ (0u >> (u_input.a.x % 32u)), var_3.b.x), 20u)]);
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) - -360f)))));
    var var_1 = Struct_2(func_4(func_2()), true, select(vec4<u32>(~u_input.a.x << (u_input.a.x % 32u), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 68195u, 46540u), vec4<u32>(u_input.a.x, 62598u, u_input.a.x, 3847u))), firstTrailingBit(func_4(false).b), firstTrailingBit(4294967295u)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 12177u, 34165u), ~vec4<u32>(44923u, u_input.a.x, 0u, 4294967295u)), false), u_input.a);
    global0 = 2519u;
    global1 = array<bool, 20>();
    let var_2 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(max(vec3<u32>(0u, u_input.a.x, 37413u), var_1.c.yyz)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a.b, 0u, 30203u), var_1.c.xxz, vec3<u32>(0u, u_input.a.x, u_input.a.x)), vec3<u32>(1u, var_1.d.x, u_input.a.x))), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.b, var_1.c.x, 4294967295u, 15475u), var_1.c) ^ 0u)), 20u)], firstLeadingBit(var_1.c));
    return var_2.b.x;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<f32>) -> vec2<bool> {
    var var_0 = arg_1.a;
    var var_1 = _wgslsmith_f_op_f32(sign(-171f));
    var var_2 = all(!vec3<bool>(false, arg_1.a.c, _wgslsmith_f_op_f32(var_0.a + -107f) < var_0.a));
    var var_3 = ~min(_wgslsmith_sub_u32(var_0.b, _wgslsmith_div_u32(~var_0.b, ~arg_1.d.x)), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(1u, 0u), firstLeadingBit(4294967295u)));
    let var_4 = Struct_1(_wgslsmith_div_f32(-189f, arg_1.a.a), arg_1.c.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(abs(var_0.b), var_0.b, var_0.b), ~vec3<u32>(u_input.a.x, 52070u, 56895u) >> (arg_0.b.xwx % vec3<u32>(32u))) % 32u), arg_0.a && (-1i == (_wgslsmith_dot_vec2_i32(vec2<i32>(12416i, -2147483647i), vec2<i32>(-46759i, 36557i)) << (_wgslsmith_div_u32(var_0.b, var_0.b) % 32u))));
    return select(!select(select(vec2<bool>(arg_1.b, false), select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(arg_1.c.x, 20u)], arg_0.a), true), !vec2<bool>(false, var_4.c)), vec2<bool>(false, arg_1.b), !(!vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 20u)]))), select(!(!vec2<bool>(false, arg_0.a)), !vec2<bool>(select(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], var_4.c, false), any(vec3<bool>(arg_0.a, true, var_0.c))), arg_1.a.c), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~80560u;
    global2 = global1[_wgslsmith_index_u32(~21981u << (~(u_input.a.x | 4294967295u) % 32u), 20u)];
    var var_0 = func_5(Struct_3(global1[_wgslsmith_index_u32(10495u, 20u)], vec4<u32>(~min(u_input.a.x, 8175u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(2485u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 29130u, 4294967295u, u_input.a.x), true), vec4<u32>(u_input.a.x, 34301u, u_input.a.x, 1u)), ~u_input.a.x, func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-176f, 2098f, 2045f, 1004f) + vec4<f32>(1367f, 537f, 449f, -1941f))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1491f, 118f)), reverseBits(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(1u, u_input.a.x))), global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), all(vec4<bool>(true, false, !global1[_wgslsmith_index_u32(u_input.a.x, 20u)], true)), ~vec4<u32>(~1118u, ~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(33436u, u_input.a.x), vec2<u32>(u_input.a.x, 4294967295u)), reverseBits(51298u)), u_input.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(684f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(func_4(global1[_wgslsmith_index_u32(u_input.a.x, 20u)]).a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-396f - 943f))), 662f), _wgslsmith_div_f32(func_4(all(vec2<bool>(true, true))).a, 1720f)));
    let var_1 = Struct_3(func_3(vec4<bool>(true, !(!var_0.x), var_0.x, select(global1[_wgslsmith_index_u32(select(u_input.a.x, u_input.a.x, var_0.x), 20u)], all(vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 20u)], true)), func_5(Struct_3(true, vec4<u32>(u_input.a.x, 22623u, u_input.a.x, u_input.a.x)), Struct_2(Struct_1(-364f, u_input.a.x, global1[_wgslsmith_index_u32(1u, 20u)]), var_0.x, vec4<u32>(u_input.a.x, 4294967295u, 33754u, 1u), u_input.a), vec4<f32>(605f, -1000f, 1000f, 732f)).x))), min(~vec4<u32>(max(78022u, 0u), ~1u, 47361u, u_input.a.x & u_input.a.x), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(82829u, 50100u, u_input.a.x, u_input.a.x) ^ vec4<u32>(24155u, 1u, 11822u, 62017u), min(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))))));
    global1 = array<bool, 20>();
    var_0 = vec2<bool>(global1[_wgslsmith_index_u32(firstTrailingBit(countOneBits(24220u)), 20u)], false);
    var_0 = !vec2<bool>(true, global1[_wgslsmith_index_u32(~(~27166u), 20u)]);
    var var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(max(-26087i, -_wgslsmith_div_i32(_wgslsmith_clamp_i32(0i, -19315i, 9841i), 1i)), u_input.a.x, vec4<i32>(-_wgslsmith_div_i32(8278i >> (var_1.b.x % 32u), 1i), firstLeadingBit(14097i), 1i, -max(countOneBits(1i), -2147483647i)), min(abs(vec2<i32>(21226i, 1i) >> (u_input.a % vec2<u32>(32u))) ^ -countOneBits(vec2<i32>(-12697i, -2147483647i)), vec2<i32>(reverseBits(_wgslsmith_add_i32(-2147483647i, -1i)), 18470i)), 0i);
}

