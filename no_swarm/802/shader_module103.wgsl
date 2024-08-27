struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(4294967295u, vec4<bool>(true, true, true, false)), Struct_1(77833u, vec4<bool>(true, false, false, false)), Struct_1(48436u, vec4<bool>(false, true, false, false)), Struct_1(1u, vec4<bool>(false, false, false, false)), Struct_1(1u, vec4<bool>(false, true, false, true)), Struct_1(4294967295u, vec4<bool>(false, false, true, false)), Struct_1(1u, vec4<bool>(false, false, true, true)), Struct_1(0u, vec4<bool>(false, false, false, false)));

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<Struct_1, 15>;

var<private> global3: array<i32, 17> = array<i32, 17>(-8078i, -14152i, -46554i, 12772i, 8897i, 18374i, -5190i, i32(-2147483648), 68132i, 0i, 0i, 1i, -1i, -7101i, 2147483647i, -39779i, 0i);

var<private> global4: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(4294967295u, vec4<bool>(false, false, true, true)), Struct_1(48887u, vec4<bool>(true, true, true, true)), Struct_1(4294967295u, vec4<bool>(true, false, false, true)), Struct_1(15952u, vec4<bool>(false, false, true, true)), Struct_1(18522u, vec4<bool>(false, true, true, true)), Struct_1(4294967295u, vec4<bool>(true, true, false, false)), Struct_1(0u, vec4<bool>(true, false, true, false)), Struct_1(1u, vec4<bool>(true, false, true, true)), Struct_1(1u, vec4<bool>(false, true, true, false)), Struct_1(0u, vec4<bool>(false, false, false, true)), Struct_1(19985u, vec4<bool>(false, false, false, false)), Struct_1(59707u, vec4<bool>(true, false, false, false)), Struct_1(1u, vec4<bool>(false, true, false, false)), Struct_1(36079u, vec4<bool>(false, false, true, false)), Struct_1(1u, vec4<bool>(false, false, true, true)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: i32, arg_3: vec2<i32>) -> f32 {
    global2 = array<Struct_1, 15>();
    var var_0 = ~(-16888i);
    let var_1 = global1[_wgslsmith_index_u32(~select(abs(abs(1u)), abs(min(~0u, 0u)), !arg_0), 10u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(584f - var_2.x) * var_2.x) * _wgslsmith_f_op_f32(-var_2.x)));
    return -1595f;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(560f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(114f - _wgslsmith_f_op_f32(548f + 185f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(841f, 1228f) - _wgslsmith_f_op_f32(select(-1000f, -591f, false)))) - _wgslsmith_f_op_f32(func_3(true, -vec4<i32>(15447i, 2147483647i, 0i, global3[_wgslsmith_index_u32(arg_1.a, 17u)]), -2147483647i, vec2<i32>(u_input.a, -1i) & (vec2<i32>(-1351i, u_input.a) | vec2<i32>(u_input.a, u_input.a))))));
    let var_1 = global1[_wgslsmith_index_u32(~arg_1.a, 10u)];
    let var_2 = 137f;
    let var_3 = -2147483647i;
    global2 = array<Struct_1, 15>();
    return select(reverseBits(26727u), countOneBits(var_1.a), 0u < ~arg_1.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_0.a, 1u, ~0u), arg_2.a, ~(~arg_1.a)) >= arg_2.a) & !(!arg_0.b.x);
    let var_1 = ~countOneBits(~(~vec4<u32>(1u, arg_3.a, arg_2.a, arg_2.a)) ^ vec4<u32>(~arg_0.a, arg_1.a, arg_3.a, arg_3.a));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-183f, -1049f, -1501f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1727f, _wgslsmith_f_op_f32(f32(-1f) * -154f), _wgslsmith_f_op_f32(977f - 1131f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-445f, -548f, -399f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -693f), -102f, _wgslsmith_f_op_f32(f32(-1f) * -693f)))), arg_1.b.yww));
    let var_3 = -1i;
    var var_4 = var_2.x;
    return vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-var_2.x))), -708f, _wgslsmith_f_op_f32(func_3(all(select(!arg_1.b, arg_2.b, vec4<bool>(true, false, arg_3.b.x, true))), ~vec4<i32>(32829i, -u_input.a, -3994i, _wgslsmith_mod_i32(29145i, var_3)), _wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(global3[_wgslsmith_index_u32(var_1.x, 17u)], 1i, global3[_wgslsmith_index_u32(2824u, 17u)])), vec3<i32>(1i, -var_3, var_3)), ~abs(min(vec2<i32>(var_3, 1i), vec2<i32>(18900i, u_input.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(125f * var_2.x) - _wgslsmith_f_op_f32(f32(-1f) * -1110f)));
}

fn func_5(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, 1000f, arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-758f)), arg_0.x)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))))) - var_0.x);
    var var_2 = ~_wgslsmith_div_u32(~(~min(61763u, 8919u)), ~min(~48465u, 56499u));
    let var_3 = global1[_wgslsmith_index_u32(max(firstTrailingBit(1334u), ~(~0u >> (~firstTrailingBit(52420u) % 32u))), 10u)];
    var_1 = arg_0.x;
    return Struct_1(4294967295u, var_3.b);
}

fn func_1() -> vec4<bool> {
    global1 = array<Struct_1, 10>();
    let var_0 = global1[_wgslsmith_index_u32(1u, 10u)];
    global3 = array<i32, 17>();
    let var_1 = func_5(_wgslsmith_f_op_vec4_f32(func_4(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(3511u, 4294967295u, 31816u, 0u), vec4<u32>(47641u, var_0.a, var_0.a, 57029u)), vec4<u32>(1127u, var_0.a, 31437u, 62491u) & vec4<u32>(1u, 19791u, var_0.a, 3278u)), ~(~var_0.a)), 10u)], Struct_1(countOneBits(var_0.a), !(!var_0.b)), Struct_1(func_2(vec2<bool>(true, var_0.b.x), global1[_wgslsmith_index_u32(29819u, 10u)], var_0.a), var_0.b), Struct_1(~var_0.a, !vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true)))));
    var var_2 = func_5(vec4<f32>(175f, _wgslsmith_f_op_f32(735f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(929f * -132f))), -479f, 1000f)).b.x;
    return vec4<bool>(any(select(select(!vec2<bool>(true, var_0.b.x), !var_1.b.zw, var_1.b.wy), vec2<bool>(true, all(var_1.b.wy)), var_1.b.x)), true && var_0.b.x, !(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_0.a, var_1.a, var_1.a, 23065u)), vec4<u32>(54144u, 16944u, var_0.a, 0u)) >= 58090u), all(var_1.b.wz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(0u, 6306u, 25016u), vec3<u32>(41426u, 1u, 64397u), vec3<bool>(var_0, true, true)))) <= (firstTrailingBit(_wgslsmith_div_u32(~4294967295u, 1u)) >> (0u % 32u));
    var var_2 = select(vec4<bool>(!var_0, false, any(vec3<bool>(true, !var_0, false)), var_0), !select(select(vec4<bool>(false, false, var_0, var_0), !vec4<bool>(var_0, var_0, var_0, var_0), true), !func_1(), !var_0), !vec4<bool>(var_0, true, var_0, var_0));
    var var_3 = false;
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    let var_4 = ~firstTrailingBit(-18365i);
    let var_5 = ~(~(~1u)) >= (~8248u >> (select(~firstTrailingBit(98987u), ~_wgslsmith_add_u32(2829u, 47917u), any(var_2.yw)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(519f, -510f, 1306f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2411f, 697f, -549f), vec3<f32>(438f, -780f, 246f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1312f, 131f, 1000f)))), var_2.yzy))), _wgslsmith_sub_u32(min(~17368u, func_5(vec4<f32>(-914f, 391f, 1167f, 1610f)).a), 1u) >> (firstTrailingBit(~select(14580u, 23774u, false)) % 32u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-534f, -861f, -1693f, -175f) * vec4<f32>(-569f, 1246f, -120f, -1397f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(true, vec4<i32>(-1i, -1i, global3[_wgslsmith_index_u32(4903u, 17u)], global3[_wgslsmith_index_u32(0u, 17u)]), i32(-1i) * -1i, reverseBits(vec2<i32>(var_4, 15982i)))), -236f)));
}

