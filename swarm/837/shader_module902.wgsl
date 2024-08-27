struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 19>;

var<private> global2: vec4<u32> = vec4<u32>(27805u, 4294967295u, 4294967295u, 87825u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<i32>) -> u32 {
    let var_0 = select(!vec4<bool>(true, false, select(any(vec2<bool>(true, false)), true, any(vec2<bool>(false, true))), _wgslsmith_f_op_f32(-arg_1.b) > arg_1.b), select(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), -450f > _wgslsmith_f_op_f32(sign(arg_2.x))), vec4<bool>(!all(vec2<bool>(false, false)), false, !(0i >= arg_3.x), true), -1i > ~_wgslsmith_div_i32(arg_3.x, 10317i)), !all(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false), true)));
    var var_1 = Struct_1(arg_3.x, _wgslsmith_f_op_f32(194f - -1000f));
    let var_2 = arg_1;
    var var_3 = Struct_1(-2147483647i, arg_0.b);
    let var_4 = var_2;
    return _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global2.zzw & global2.xyx, abs(~global2.wyz)), 41746u, global2.x << ((~76428u ^ global1[_wgslsmith_index_u32(global2.x, 19u)]) % 32u)), 32907u);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(reverseBits(-1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -574f) - _wgslsmith_f_op_f32(f32(-1f) * -859f)), 1000f))));
    global0 = _wgslsmith_mult_u32(reverseBits(45569u), ~u_input.a.x);
    var var_1 = var_0.a;
    let var_2 = _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(0u, 26628u | func_3(var_0, var_0, vec3<f32>(var_0.b, var_0.b, -867f), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a, 61138i, var_0.a, var_0.a), vec4<i32>(-64015i, -14554i, var_0.a, var_0.a)))));
    let var_3 = _wgslsmith_add_vec4_u32(~(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(63706u, 493u, 17488u, 106001u)), vec4<u32>(46609u, 0u, u_input.a.x, u_input.a.x) ^ vec4<u32>(0u, 32177u, 25662u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 19u)]) & vec4<u32>(28165u, 19219u, 31305u, 50972u)) ^ _wgslsmith_mod_vec4_u32(~vec4<u32>(var_2.x, global2.x, 25638u, u_input.a.x), firstTrailingBit(vec4<u32>(2110u, 1403u, 1u, global1[_wgslsmith_index_u32(63696u, 19u)])))), vec4<u32>(459u, reverseBits(1u), ~global2.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_2.x ^ global2.x, 11093u), min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, global2.x, var_2.x, 100293u), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], 8044u, u_input.a.x, global1[_wgslsmith_index_u32(0u, 19u)])), global2.x), ~_wgslsmith_mult_u32(24313u, var_2.x))));
    return -1i;
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(func_2(), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1228f - 1222f)), _wgslsmith_f_op_f32(-226f - _wgslsmith_f_op_f32(f32(-1f) * -603f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1742f))))));
    var var_1 = any(vec4<bool>(true, -reverseBits(var_0.a) < (var_0.a << (_wgslsmith_sub_u32(arg_0.x, global1[_wgslsmith_index_u32(1u, 19u)]) % 32u)), all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), true)), !(!(41010u >= global1[_wgslsmith_index_u32(17991u, 19u)]))));
    let var_2 = ~abs(9277i);
    let var_3 = var_0;
    let var_4 = 52995i;
    return var_3;
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    global1 = array<u32, 19>();
    var var_0 = global2.x;
    let var_1 = func_1(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(select(countOneBits(vec4<u32>(52876u, u_input.a.x, global1[_wgslsmith_index_u32(34744u, 19u)], 57193u)), ~vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(global2.x, 19u)], 4294967295u, global2.x), vec4<bool>(false, true, true, true)), max(~vec4<u32>(u_input.a.x, 43960u, u_input.a.x, global2.x), vec4<u32>(68181u, global1[_wgslsmith_index_u32(33100u, 19u)], global2.x, global1[_wgslsmith_index_u32(32765u, 19u)]))), vec4<u32>(~21083u, select(min(global2.x, global2.x), global1[_wgslsmith_index_u32(1u, 19u)], true), abs(u_input.a.x) & ~47142u, global1[_wgslsmith_index_u32(global2.x ^ (global2.x ^ 26992u), 19u)])));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1391f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - var_1.b))))) + _wgslsmith_f_op_f32(f32(-1f) * -449f));
    let var_3 = !select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), !select(true, false, true)), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), true);
    return ~vec4<u32>(38948u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(~28458u, select(4294967295u, 14534u, var_3.x)), u_input.a.x), global2.x, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_add_vec4_u32(func_4(func_1((vec4<u32>(global1[_wgslsmith_index_u32(1u, 19u)], 0u, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 19u)]) & vec4<u32>(91634u, global2.x, 19904u, global2.x)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(49766u, global1[_wgslsmith_index_u32(26597u, 19u)], 106791u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 0u, global2.x)) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(~vec4<u32>(global2.x ^ 140517u, ~55814u, select(1u, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], false), ~67336u), _wgslsmith_add_vec4_u32((vec4<u32>(0u, 4294967295u, 43532u, 47262u) << (vec4<u32>(51058u, global2.x, 30160u, global1[_wgslsmith_index_u32(0u, 19u)]) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global2.x, 61372u, u_input.a.x), vec4<u32>(20760u, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 44888u, 16434u)), ~vec4<u32>(6125u, 1u, 49923u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 19u)]) >> (vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], 34170u, global2.x, global1[_wgslsmith_index_u32(global2.x, 19u)]) % vec4<u32>(32u)))));
    global2 = vec4<u32>(1u, ~(~u_input.a.x), func_3(func_1(vec4<u32>(_wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26562u, 19u)], 19u)], 19u)]), global1[_wgslsmith_index_u32(global2.x & u_input.a.x, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], ~global2.x)), Struct_1(1i, -772f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1005f, -507f, 233f))))), vec4<i32>(1i, 1i, 1i, 1i) << (vec4<u32>(global1[_wgslsmith_index_u32(25930u, 19u)], 69219u, u_input.a.x & global1[_wgslsmith_index_u32(global2.x, 19u)], firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.x, 19u)], 19u)])) % vec4<u32>(32u))), select(func_4(Struct_1(-3701i, _wgslsmith_f_op_f32(select(-374f, 305f, false)))).x, min(countOneBits(~u_input.a.x), 1u), select(all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), false)), false, false)));
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, 4294967295u, 68168u, global1[_wgslsmith_index_u32(1u, 19u)]), vec4<u32>(5485u, 4058u, 102067u, u_input.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 19u)], 30707u, 0u, 1u), vec4<u32>(global2.x, u_input.a.x, 63103u, 1u))), 4294967295u, abs(~0u), _wgslsmith_add_u32(19379u, 62749u) | firstLeadingBit(global2.x)), vec4<u32>(reverseBits(1u), ~_wgslsmith_mod_u32(global2.x >> (4294967295u % 32u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.x, 19u)], 19u)]), _wgslsmith_mult_u32(69734u, func_3(Struct_1(16323i, 165f), Struct_1(2147483647i, 1289f), vec3<f32>(-136f, 1337f, 2003f), ~vec4<i32>(0i, -16836i, -20572i, 0i))), min(~(~0u), abs(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, global2.x), 19u)]))));
    let var_0 = func_1(vec4<u32>(1u, ~0u | ((0u >> (u_input.a.x % 32u)) >> (1u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, global2.x), ~global2.x, ~global2.x), global2.wzw), 4294967295u));
    let var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, var_0.b, var_0.b, 1181f), vec4<f32>(-1401f, -691f, var_1.b, 568f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1238f, 1614f, var_1.b, var_0.b)))) * vec4<f32>(1421f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-940f)))), var_0.b, var_0.b)));
}

