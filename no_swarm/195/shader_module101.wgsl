struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(-94000i, 2147483647i, 1i));

var<private> global2: array<Struct_1, 15>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_2(859f, -vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(_wgslsmith_clamp_u32(arg_0, 0u, 1u), ~firstLeadingBit(0u)) % vec2<u32>(32u)), arg_3);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(612f * -962f)), vec2<f32>(arg_3.a.x, _wgslsmith_f_op_f32(trunc(-292f))), !(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true), false))));
    var var_2 = vec2<i32>(-1i, _wgslsmith_div_i32(-33545i, -2147483647i >> (firstTrailingBit(30752u) % 32u)) | (countOneBits(firstTrailingBit(u_input.a)) << (35823u % 32u)));
    var var_3 = vec4<i32>(reverseBits(abs(-1i)), var_2.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_2.x, -u_input.a, -var_2.x, var_0.b.x)), firstLeadingBit(vec4<i32>(var_2.x, _wgslsmith_add_i32(u_input.a, 231i), -18738i, i32(-1i) * -68324i))), -24363i);
    var var_4 = vec4<i32>(31675i, min(1i, u_input.a), var_3.x, -abs(var_2.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c.a.x, -1865f))))));
}

fn func_2() -> bool {
    var var_0 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27452u, 27u)], 27u)], 27u)], 15u)];
    var var_1 = ~abs(4294967295u);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(reverseBits(0u), _wgslsmith_f_op_f32(var_0.a.x + -2322f), vec4<u32>(109664u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27792u, 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(109638u, 27u)], 111199u), global2[_wgslsmith_index_u32(reverseBits(1u), 15u)]))))), _wgslsmith_mult_vec2_i32(max(vec2<i32>(_wgslsmith_clamp_i32(2147483647i, u_input.a, 2147483647i), u_input.a), abs(-vec2<i32>(u_input.a, 0i))), vec2<i32>(1i, -u_input.a)), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0.a)) + _wgslsmith_f_op_vec2_f32(trunc(var_0.a))), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))))));
    var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f)), reverseBits(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a, -73462i), ~u_input.a), ~(u_input.a ^ var_2.b.x))), global2[_wgslsmith_index_u32(~firstLeadingBit(12744u), 15u)]);
    let var_3 = select(~abs(vec3<i32>(-30867i, var_2.b.x | u_input.a, var_2.b.x)), firstLeadingBit(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4321u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51030u, 27u)], 27u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75642u, 27u)], 27u)], 27u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)])), 2u)] << (~(vec3<u32>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(4239u, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61799u, 27u)], 27u)], 27u)]) >> (vec3<u32>(29990u, 54593u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<bool>(any(vec3<bool>(true, true, true)), !select(all(vec3<bool>(true, true, false)), true, true), true));
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_2(-810f, vec2<i32>(u_input.a, _wgslsmith_sub_i32(_wgslsmith_mult_i32(69885i, max(-1487i, u_input.a)), -35969i)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1338f, 1224f, arg_0.x)), _wgslsmith_f_op_f32(floor(685f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global2 = array<Struct_1, 15>();
    var var_1 = _wgslsmith_sub_u32(firstTrailingBit(countOneBits(countOneBits(~arg_1.x))), ~global0[_wgslsmith_index_u32(arg_1.x, 27u)]);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(770f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1022f, var_0.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + var_0.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.a.x), var_0.a) * _wgslsmith_f_op_f32(var_0.c.a.x + _wgslsmith_f_op_f32(1006f * 690f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1284f - 632f), var_0.c.a.x, -1837f, _wgslsmith_f_op_f32(abs(var_0.c.a.x))))));
    global0 = array<u32, 27>();
    return Struct_2(var_2.x, vec2<i32>(_wgslsmith_dot_vec3_i32(abs(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 2u)]), min(global1[_wgslsmith_index_u32(4294967295u, 2u)], vec3<i32>(var_0.b.x, var_0.b.x, 21774i))) & max(-2833i, var_0.b.x), 49686i), global2[_wgslsmith_index_u32(~abs(max(_wgslsmith_add_u32(arg_1.x, 4294967295u), countOneBits(arg_1.x))), 15u)]);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global0 = array<u32, 27>();
    var var_0 = vec2<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))) & true, false);
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.c.a.x))) * vec2<f32>(_wgslsmith_f_op_f32(arg_0.c.a.x * 254f), func_4(vec3<bool>(var_0.x, true, false), vec2<u32>(2924u, 4294967295u)).c.a.x)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.c.a.x, -1000f), _wgslsmith_f_op_vec2_f32(step(arg_0.c.a, vec2<f32>(1764f, 129f))))), vec2<f32>(1935f, _wgslsmith_f_op_f32(arg_0.a - arg_0.c.a.x)), select(vec2<bool>(var_0.x, false), select(vec2<bool>(var_0.x, false), vec2<bool>(true, false), vec2<bool>(false, true)), any(vec4<bool>(false, var_0.x, false, var_0.x))))))));
    return global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1751u, 27u)], 15u)];
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-351f)) * _wgslsmith_f_op_f32(select(-209f, -890f, true))), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1255f))));
    var var_1 = func_5(func_4(select(vec3<bool>(true, true, true), vec3<bool>(true, func_2(), all(vec2<bool>(true, true))), vec3<bool>(true, true, true)), arg_1.zw));
    let var_2 = 0i;
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    return _wgslsmith_div_i32(abs(var_2 ^ firstLeadingBit(var_2)), arg_0.x);
}

fn func_6(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: u32, arg_3: i32) -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(~_wgslsmith_div_u32(22564u, 53925u) & countOneBits(arg_2 << (4294967295u % 32u))), 27u)], 27u)] <= global0[_wgslsmith_index_u32(75298u, 27u)];
    let var_1 = 1i;
    let var_2 = arg_2;
    let var_3 = func_5(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -691f), vec2<i32>(reverseBits(u_input.a), _wgslsmith_sub_i32(1i, -34357i | var_1)), global2[_wgslsmith_index_u32(3937u, 15u)]));
    global0 = array<u32, 27>();
    return select(!(!vec4<bool>(all(vec3<bool>(var_0, true, var_0)), var_0, any(vec3<bool>(var_0, true, false)), var_0 && true)), !select(select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, true, var_0, var_0)), !vec4<bool>(false, var_0, var_0, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, var_0, var_0, var_0), var_0), vec4<bool>(var_0, false, var_0, var_0), !vec4<bool>(var_0, var_0, var_0, true))), !select(select(!vec4<bool>(var_0, true, var_0, true), select(vec4<bool>(false, var_0, false, var_0), vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(false, true, false, var_0)), var_0), !(!vec4<bool>(var_0, true, var_0, false)), !select(vec4<bool>(true, var_0, true, var_0), vec4<bool>(var_0, true, true, var_0), vec4<bool>(false, false, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec2<i32>(u_input.a, func_1(-vec4<i32>(-18907i, -2147483647i, -2147483647i, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16104u, 27u)], 27u)], global0[_wgslsmith_index_u32(4851u, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)]), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(9182u, 27u)], 10539u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)], 27u)]))) & 2147483647i), ~(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a) ^ global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 2u)], global1[_wgslsmith_index_u32(10639u, 2u)] | vec3<i32>(u_input.a, 2147483647i, u_input.a))), ~28932u, 2147483647i);
    var var_1 = -943f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1825f)) + _wgslsmith_f_op_f32(f32(-1f) * -728f)))) + _wgslsmith_f_op_f32(-892f * 1000f));
    var_0 = vec4<bool>(true, select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 18061u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], 27u)]), vec4<u32>(51430u, 30584u, 31529u, 2454u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], 4294967295u), 27u)], 27u)], ~max(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)]), true) >= (~(~1u) & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], global0[_wgslsmith_index_u32(39884u, 27u)]), vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)])) | _wgslsmith_div_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)]), 27u)]), false, var_0.x);
    var_0 = vec4<bool>(func_6(vec2<i32>(u_input.a, (u_input.a << (0u % 32u)) ^ u_input.a), _wgslsmith_div_vec3_i32(global1[_wgslsmith_index_u32(~(~22533u), 2u)], (global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 2u)] ^ vec3<i32>(-2147483647i, u_input.a, -45932i)) ^ (global1[_wgslsmith_index_u32(24217u, 2u)] ^ vec3<i32>(2147483647i, u_input.a, 1i))), ~reverseBits(global0[_wgslsmith_index_u32(~51907u, 27u)]), u_input.a).x, true, !var_0.x, any(select(vec4<bool>(var_0.x, false, all(var_0.yyy), var_0.x), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, false), var_0.x), func_6(select(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-46445i, u_input.a), vec2<bool>(var_0.x, var_0.x)), ~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21832u, 27u)], 27u)], 27u)], 27u)], 27u)], 27u)], 27u)], 2u)], 4294967295u, u_input.a & u_input.a))));
    var var_2 = var_0.xy;
    global0 = array<u32, 27>();
    var var_3 = reverseBits(~(~(~select(global0[_wgslsmith_index_u32(59579u, 27u)], 4294967295u, false))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~max(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a, 0i, -1i), vec4<i32>(u_input.a, 48805i, u_input.a, u_input.a)), vec4<i32>(0i, -14014i, 89702i, u_input.a) & vec4<i32>(u_input.a, 2147483647i, 0i, 1i))));
}

