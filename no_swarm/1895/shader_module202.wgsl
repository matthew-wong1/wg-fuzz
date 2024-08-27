struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: vec4<f32> = vec4<f32>(-244f, 1861f, -1308f, -833f);

var<private> global2: u32;

var<private> global3: array<i32, 31> = array<i32, 31>(-13683i, -1i, 0i, -34016i, 2147483647i, 2147483647i, 3971i, i32(-2147483648), -1i, 1i, 1i, 0i, 0i, -1i, 49631i, i32(-2147483648), 3615i, -1i, -1i, 0i, 0i, 2147483647i, -1i, 53497i, 2147483647i, -98925i, 1i, -1i, -16225i, -1i, 7455i);

var<private> global4: array<i32, 32> = array<i32, 32>(-4846i, 2147483647i, 20957i, 1i, 9428i, 2147483647i, -1i, -20653i, 0i, -10738i, -1i, -6018i, i32(-2147483648), 18391i, 1i, -8616i, 1i, -64841i, 20553i, 1i, 2147483647i, -48228i, 2147483647i, 0i, -1i, 50437i, i32(-2147483648), 2147483647i, 15520i, 1i, 1i, 34661i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1() -> u32 {
    var var_0 = 37973u;
    var var_1 = -2147483647i;
    global3 = array<i32, 31>();
    global2 = 1u;
    let var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(0u, 65236u, 1u, 77334u)), _wgslsmith_mult_vec4_u32(min(vec4<u32>(0u, 66994u, 1u, 27202u), vec4<u32>(32763u, 74043u, 52981u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)), abs(vec4<u32>(25173u, 0u, 4294967295u, 0u))), vec4<u32>(1u, 1u, 1u, 1u)), countOneBits(~(~vec4<u32>(1u, 1u, 1u, 1u))));
    return ~var_2.x;
}

fn func_3() -> bool {
    global3 = array<i32, 31>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-427f, global1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -1177f) - global1.x)))), -(vec4<i32>(~u_input.a, i32(-1i) * -22936i, 2861i, ~(-2147483647i)) >> (~countOneBits(vec4<u32>(0u, 17186u, 0u, 103555u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))))))), global3[_wgslsmith_index_u32(0u, 31u)]);
    global4 = array<i32, 32>();
    var var_1 = false;
    let var_2 = select(reverseBits(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(31815u, 0u, 1u, 78249u)), ~vec4<u32>(1u, 1u, 1u, 1u))), ~1u, global0.x);
    return !(false && (global0.x & !(0u < var_2)));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec2<bool>) -> u32 {
    let var_0 = ~firstLeadingBit(func_1());
    var var_1 = vec3<i32>(global3[_wgslsmith_index_u32(1u, 31u)], -2147483647i, abs(u_input.a));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_div_f32(global1.x, -199f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-724f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -347f), _wgslsmith_f_op_f32(floor(-476f))))), global1.x, -1913f), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.x, 128f))), -446f)), 1193f, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(141f * global1.x))), !select(!(!vec4<bool>(arg_0, true, arg_0, arg_1)), select(!vec4<bool>(true, true, global0.x, global0.x), !vec4<bool>(false, true, arg_2.x, false), false), select(vec4<bool>(arg_2.x, arg_1, arg_0, false), !vec4<bool>(arg_0, false, false, false), !vec4<bool>(arg_2.x, false, arg_2.x, arg_1)))));
    global4 = array<i32, 32>();
    global2 = _wgslsmith_mod_u32(_wgslsmith_add_u32(var_0, _wgslsmith_div_u32(var_0, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, var_0, var_0), vec4<u32>(var_0, var_0, var_0, var_0)))), var_0);
    return 62382u;
}

fn func_5(arg_0: vec2<u32>) -> vec4<f32> {
    global4 = array<i32, 32>();
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(max(vec2<u32>(min(arg_0.x, arg_0.x), ~64588u), _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(0u, arg_0.x)), ~arg_0, arg_0))), vec2<u32>(abs(~_wgslsmith_mult_u32(arg_0.x, arg_0.x)), 1u)), 31u)];
    var_0 = 6617i;
    var var_1 = select(-_wgslsmith_dot_vec4_i32(~vec4<i32>(-14374i, global3[_wgslsmith_index_u32(arg_0.x, 31u)], 1i, global3[_wgslsmith_index_u32(arg_0.x, 31u)]), vec4<i32>(1190i, -3533i, global3[_wgslsmith_index_u32(45016u, 31u)], 29623i)), 1i, -374f > global1.x) & global4[_wgslsmith_index_u32(1u, 32u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), 1000f, true)), 205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))), global1.x)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(146f, global1.x, global1.x, 1533f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, 491f, global1.x, var_2.x))), vec4<bool>(global0.x, global0.x, global0.x, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-781f, 109f, var_2.x, global1.x), _wgslsmith_div_vec4_f32(vec4<f32>(972f, global1.x, global1.x, var_2.x), vec4<f32>(var_2.x, var_2.x, var_2.x, -1104f)), select(true, true, false))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(2077f, var_2.x, 150f, var_2.x) * vec4<f32>(var_2.x, var_2.x, -177f, var_2.x)))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> vec3<i32> {
    var var_0 = vec4<i32>(-1i) * -vec4<i32>(43369i, -20777i, 1i, arg_2.b.x);
    var var_1 = !arg_1;
    var_1 = !arg_1;
    var var_2 = 91594i;
    global1 = _wgslsmith_f_op_vec4_f32(func_5(vec2<u32>(_wgslsmith_mult_u32(51356u, ~firstTrailingBit(10748u)), func_4(all(vec4<bool>(arg_1, arg_1, arg_1, false)), func_3(), select(vec2<bool>(true, true), vec2<bool>(global0.x, arg_1), !arg_1)))));
    return vec3<i32>(2147483647i, _wgslsmith_clamp_i32(40085i << (select(0u, ~43620u, arg_1 | global0.x) % 32u), global3[_wgslsmith_index_u32(63839u, 31u)], 9219i | firstTrailingBit(countOneBits(u_input.a))), reverseBits(~28834i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(767f, global1.x, global1.x, _wgslsmith_f_op_f32(round(global1.x))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -419f), global1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-404f + global1.x), global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(f32(-1f) * -816f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 588f, global1.x, global1.x) + vec4<f32>(440f, 1633f, 430f, -201f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1263f, global1.x, global1.x, global1.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, 1296f, -297f), vec4<f32>(-1221f, -1340f, global1.x, -159f), false)))), !vec4<bool>(false, any(vec3<bool>(true, global0.x, true)), global4[_wgslsmith_index_u32(4294967295u, 32u)] < u_input.a, global0.x & global0.x))), !global0.x));
    let var_0 = ~(~(~(~vec3<u32>(0u, 1u, 34398u)))) ^ (vec3<u32>(~0u, ~(0u >> (1u % 32u)), ~1u) >> (vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(41197u, 9474u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 19845u, 7373u), vec4<u32>(21421u, 4294967295u, 38123u, 12240u)), 4294967295u), ~_wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u), ~0u) % vec3<u32>(32u)));
    let var_1 = true;
    global4 = array<i32, 32>();
    let var_2 = 1u;
    global0 = !vec2<bool>(global0.x, 894f > _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(global1.x + global1.x)));
    var var_3 = -327f;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(vec4<i32>(global3[_wgslsmith_index_u32(func_1(), 31u)], _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 4713i, global3[_wgslsmith_index_u32(var_0.x, 31u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(21512u, 32u)], global4[_wgslsmith_index_u32(44798u, 32u)], -2147483647i), vec3<i32>(30353i, u_input.a, 2515i))), -2147483647i, max(global4[_wgslsmith_index_u32(var_0.x, 32u)] & global3[_wgslsmith_index_u32(47413u, 31u)], _wgslsmith_mult_i32(-8559i, 51817i))), true, Struct_1(global1.x, vec4<i32>(global3[_wgslsmith_index_u32(1u, 31u)], u_input.a, 1i, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))), global4[_wgslsmith_index_u32(~17753u, 32u)]), 818f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) + -102f), _wgslsmith_f_op_f32(max(-1082f, _wgslsmith_f_op_f32(205f + -357f)))))));
}

