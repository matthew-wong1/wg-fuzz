struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
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

var<private> global0: array<Struct_1, 19>;

var<private> global1: vec3<f32> = vec3<f32>(-297f, -1341f, -157f);

var<private> global2: array<u32, 8>;

var<private> global3: vec3<i32>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<u32> {
    let var_0 = select(select(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(_wgslsmith_f_op_f32(global1.x - global1.x) < 1f, true), vec2<bool>(true, true)), vec2<bool>((reverseBits(111221u) << (global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 18614u, 11606u), 8u)] % 32u)) <= (9077u | global2[_wgslsmith_index_u32(33500u, 8u)]), true != ((global4.b < u_input.a.x) || true)), true);
    global0 = array<Struct_1, 19>();
    let var_1 = vec4<i32>((_wgslsmith_sub_i32(1i, _wgslsmith_div_i32(global3.x, global4.a)) ^ 2147483647i) << (~_wgslsmith_clamp_u32(~1u, ~global2[_wgslsmith_index_u32(13598u, 8u)], _wgslsmith_mult_u32(4294967295u, global2[_wgslsmith_index_u32(50825u, 8u)])) % 32u), _wgslsmith_add_i32(_wgslsmith_add_i32(-u_input.b, ~1i), _wgslsmith_add_i32(global3.x, 1i)), u_input.a.x, -(~select(1i, -24191i, all(vec4<bool>(false, true, var_0.x, true)))));
    var var_2 = global0[_wgslsmith_index_u32(1u, 19u)];
    global3 = reverseBits(vec3<i32>(43588i, var_1.x, 1i));
    return firstLeadingBit(~(~(~(~vec4<u32>(0u, 17821u, 1898u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 8u)])))));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-384f, _wgslsmith_f_op_f32(min(global1.x, 2080f))), 137f)), _wgslsmith_div_f32(586f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(f32(-1f) * -1509f))), _wgslsmith_f_op_f32(trunc(global1.x)), global1.x));
    var var_1 = countOneBits(~func_3());
    var var_2 = Struct_1(abs(-1i), _wgslsmith_dot_vec2_i32(global3.xy, global3.xx) ^ -global3.x);
    var var_3 = vec3<u32>(max(~(~4294967295u), global2[_wgslsmith_index_u32(abs(1u), 8u)]), max(~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(var_1.x, 8u)], arg_1), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(var_1.x, 8u)] | var_1.x, global2[_wgslsmith_index_u32(arg_1, 8u)])) >> (~_wgslsmith_dot_vec3_u32(var_1.wxx, firstLeadingBit(var_1.wxz)) % 32u), _wgslsmith_mult_u32(78655u, 0u));
    let var_4 = vec4<u32>(reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(10297u, 20748u), vec2<u32>(0u, arg_1))), 81137u, _wgslsmith_clamp_u32(~(~var_1.x), ~var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1), vec2<u32>(23381u, var_3.x)) >> (arg_1 % 32u)), var_1.x) & min(max(~firstTrailingBit(vec4<u32>(arg_1, var_3.x, global2[_wgslsmith_index_u32(var_3.x, 8u)], arg_1)), select(vec4<u32>(arg_1, 4294967295u, var_3.x, 1u), firstTrailingBit(vec4<u32>(arg_1, 25136u, var_3.x, 31592u)), true)), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~64797u), 8u)], 8u)], _wgslsmith_mod_u32(~var_1.x, 15799u), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(10146u, var_3.x, 1u, 4294967295u), vec4<u32>(30570u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1, 8u)], 8u)], var_3.x, 1u))), ~global2[_wgslsmith_index_u32(var_1.x ^ 0u, 8u)]));
    return var_4.x;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> u32 {
    global3 = u_input.c;
    var var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(global2[_wgslsmith_index_u32(0u, 8u)], 4294967295u, global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(1u, 8u)]) & vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 0u, global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(1u, 8u)]), max(~vec4<u32>(4294967295u, 35790u, 4294967295u, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(37485u, 8u)], 1u, global2[_wgslsmith_index_u32(26580u, 8u)], 4294967295u))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30309u, 8u)], 8u)], 8u)], 8u)], 8u)], global2[_wgslsmith_index_u32(1u, 8u)]), countOneBits(4294967295u), abs(4294967295u), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)]), _wgslsmith_div_vec4_u32(vec4<u32>(54146u, global2[_wgslsmith_index_u32(7209u, 8u)], global2[_wgslsmith_index_u32(1u, 8u)], 32092u) | vec4<u32>(global2[_wgslsmith_index_u32(38671u, 8u)], 16522u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(42957u, 8u)], 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(44598u, 8u)], 8u)], 8u)]), min(vec4<u32>(39263u, 54605u, 17990u, global2[_wgslsmith_index_u32(20910u, 8u)]), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 8u)], global2[_wgslsmith_index_u32(7814u, 8u)]))))), _wgslsmith_add_u32(~abs(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(85275u, 8u)], global2[_wgslsmith_index_u32(0u, 8u)], 1u)), firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 78024u), vec2<u32>(0u, 22694u)), func_2(Struct_1(2147483647i, arg_3.b), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1206u, 8u)], 8u)]), 10128u | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6927u, 8u)], 8u)], 8u)]), 8u)])));
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(247f - global1.x))), -1968f);
    let var_1 = _wgslsmith_f_op_f32(sign(global1.x));
    return ~var_0.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(~countOneBits(~(~global2[_wgslsmith_index_u32(30992u, 8u)])), 8u)];
    var var_1 = firstTrailingBit(i32(-1i) * -1i);
    global2 = array<u32, 8>();
    var var_2 = !(max(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)] ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59575u, 8u)], 8u)]), ~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49718u, 8u)], 8u)], 8u)], 8u)], 8u)] | 11595u)) <= 1u);
    let var_3 = Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(select(countOneBits(vec2<i32>(arg_2.a, u_input.b)), _wgslsmith_mod_vec2_i32(global3.zz, vec2<i32>(arg_0.b, global4.b)), vec2<bool>(true, true)), u_input.c.xy), countOneBits(~u_input.c.x) | u_input.a.x), 33710i);
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13079u, 8u)], 8u)], 8u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], global2[_wgslsmith_index_u32(1u, 8u)])) >> (select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24672u, 8u)], 8u)], 8u)], 8u)], global2[_wgslsmith_index_u32(1u, 8u)], false) % 32u)), 84984u), ~(~_wgslsmith_sub_u32(func_2(var_3, 1u), 1u))), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(-15336i, 2147483647i), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(46469u, 8u)], ~88397u) ^ ~(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], global2[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_sub_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 8u)], 25740u), ~vec2<u32>(global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(0u, 8u)])) >> (~vec2<u32>(26864u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24736u, 8u)], 8u)], 8u)], 8u)]) % vec2<u32>(32u))), 19u)], global0[_wgslsmith_index_u32(func_1(_wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i, global3.x), 0i) == u_input.b, select(false, true, select(false, true, true)), true, global0[_wgslsmith_index_u32(~(~72741u), 19u)]), 19u)]);
    let var_1 = select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, false, true, false)), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)))), vec4<bool>(all(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true))), true || !any(vec3<bool>(false, false, true)), any(vec4<bool>(true, true, true, true)), false), select(select(vec4<bool>(true, true, true, all(vec3<bool>(true, true, true))), vec4<bool>(all(vec4<bool>(true, true, false, false)), any(vec2<bool>(false, true)), any(vec2<bool>(true, true)), select(false, true, false)), true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, !any(vec3<bool>(false, false, false)))));
    global0 = array<Struct_1, 19>();
    global3 = firstLeadingBit(~_wgslsmith_add_vec3_i32(u_input.c, -(vec3<i32>(-20643i, global3.x, global4.b) | u_input.c)));
    global3 = -vec3<i32>(abs(var_0.b), -31918i ^ global3.x, 1i);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 1000f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 329f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) - vec3<f32>(552f, global1.x, global1.x)), var_1.zzy))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, global1.x, global1.x))) * vec3<f32>(global1.x, global1.x, global1.x)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1340f, global1.x, global1.x), vec3<f32>(152f, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, global1.x, global1.x))), all(vec3<bool>(false, var_1.x, var_1.x)))))));
    let var_3 = u_input.c;
    var var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(529f)), global1.x));
}

