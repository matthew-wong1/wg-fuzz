struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, 0i, -43772i);

var<private> global1: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true));

var<private> global2: array<vec2<bool>, 18>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    var var_0 = arg_0.a;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-502f, -1000f, arg_0.a.x, 764f), vec4<f32>(741f, -1155f, var_0.x, var_0.x)))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_0.a * vec3<f32>(-363f, -552f, arg_0.a.x)))) * arg_0.a)));
    let var_2 = Struct_1(arg_0.a);
    global0 = select(vec3<i32>(~abs(-2147483647i), ~(-2147483647i) | u_input.d.x, _wgslsmith_add_i32(-38011i, _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b, 1i), ~0i))), _wgslsmith_mult_vec3_i32(select(-vec3<i32>(0i, global0.x, u_input.d.x), abs(-vec3<i32>(-1i, -15719i, global0.x)), select(global1[_wgslsmith_index_u32(~u_input.a, 5u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 56082u), vec2<u32>(8752u, u_input.a)), 5u)], all(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)))), ~(~(~vec3<i32>(0i, -1i, u_input.d.x)))), vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -953f) - _wgslsmith_f_op_f32(var_2.a.x * -110f)) != 935f, true));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_1.a * vec4<f32>(var_2.a.x, var_1.a.x, var_0.x, var_1.a.x))))), Struct_1(vec3<f32>(986f, 480f, -1856f)));
    return ~u_input.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>) -> vec4<i32> {
    var var_0 = select(vec2<u32>(1u & u_input.a, abs(u_input.a)), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, ~0u), vec2<u32>(~1u, countOneBits(u_input.a))), abs(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 146291u), vec2<u32>(0u, u_input.a)), firstLeadingBit(vec2<u32>(67078u, u_input.a)), vec2<u32>(36567u, u_input.a)))), select(select(select(!global2[_wgslsmith_index_u32(0u, 18u)], vec2<bool>(true, false), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(43764u, u_input.a), 18u)]), global2[_wgslsmith_index_u32(1u, 18u)], true), vec2<bool>(select(global0.x <= arg_0.x, true, true), true), true));
    let var_1 = _wgslsmith_sub_vec3_i32(abs(vec3<i32>(-_wgslsmith_mod_i32(arg_0.x, 12255i), firstLeadingBit(min(u_input.b, 4238i)), ~1i)), vec3<i32>(min(-32456i, func_3(Struct_1(arg_1), global2[_wgslsmith_index_u32(~u_input.a, 18u)])), -1i, global0.x));
    var var_2 = vec2<u32>(countOneBits(firstLeadingBit(1u)), var_0.x) | _wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(~vec2<u32>(11361u, 4294967295u), firstLeadingBit(vec2<u32>(u_input.a, 16635u))), _wgslsmith_add_vec2_u32(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(var_0.x, var_0.x))), ~abs(vec2<u32>(40230u, var_0.x))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(208f, 222f, arg_1.x, arg_1.x)))))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(arg_1.x - -140f))), arg_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_1.x)))))));
    var var_4 = func_3(var_3.b, vec2<bool>(true, arg_1.x <= -2036f));
    return abs(select(~vec4<i32>(-2718i, arg_0.x, 1i, var_1.x), ~vec4<i32>(21925i, var_1.x, 41630i, 10494i), vec4<bool>(true, true, true, true))) | ~(-vec4<i32>(var_1.x, _wgslsmith_add_i32(arg_0.x, var_1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -33124i, var_1.x), var_1), 8585i));
}

fn func_1(arg_0: vec3<i32>) -> vec4<i32> {
    global2 = array<vec2<bool>, 18>();
    var var_0 = u_input.a;
    let var_1 = !(!(!(u_input.a < u_input.a)) | !any(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 5u)]));
    var var_2 = select(!(!vec4<bool>(false, all(vec4<bool>(var_1, var_1, false, var_1)), var_1, false)), vec4<bool>(var_1 | var_1, all(select(global1[_wgslsmith_index_u32(u_input.a, 5u)], !global1[_wgslsmith_index_u32(u_input.a, 5u)], vec3<bool>(var_1, var_1, true))), var_1, var_1), vec4<bool>(true, false, true, false));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(821f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-565f * 2238f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -215f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1851f * 377f), _wgslsmith_f_op_f32(-1168f * -1735f)))));
    return -func_2(global0.zy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(786f, var_3.x, var_3.x)))) + vec3<f32>(1f, -1086f, _wgslsmith_f_op_f32(max(2172f, var_3.x)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: bool) -> f32 {
    let var_0 = arg_2;
    global1 = array<vec3<bool>, 5>();
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(var_0.a));
    global1 = array<vec3<bool>, 5>();
    global1 = array<vec3<bool>, 5>();
    return var_0.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_mult_vec4_i32(firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.d.x, u_input.c, u_input.b, u_input.d.x))), func_1(vec3<i32>(-1i, global0.x, u_input.b)) << (vec4<u32>(1u, 71612u, 24410u, u_input.a) % vec4<u32>(32u))), vec2<bool>(true, !all(global1[_wgslsmith_index_u32(1u, 5u)])), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(134f, 837f, -1350f, 344f))), Struct_1(vec3<f32>(-255f, -451f, -959f))), !any(vec4<bool>(false, true, true, false)))));
    global2 = array<vec2<bool>, 18>();
    let var_1 = all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, any(vec4<bool>(false, true, false, true)), true), vec4<bool>(true, any(global2[_wgslsmith_index_u32(14997u, 18u)]), true, true), true), select(vec4<bool>(all(vec4<bool>(true, false, false, true)), any(vec2<bool>(false, false)), true, true), vec4<bool>(true, true, true, true), false)));
    global0 = abs(_wgslsmith_mult_vec3_i32(vec3<i32>(select(-46689i, u_input.d.x, var_1), 0i, u_input.b), vec3<i32>(-1i, -1i, 0i))) | ~vec3<i32>(select(~(-1i), max(-5216i, global0.x), var_1), ~global0.x, global0.x);
    var var_2 = !select(select(vec3<bool>(true, var_1, !var_1), global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(71227u, 0u, 1u, u_input.a))), 5u)], true), vec3<bool>(true, var_1, select(var_1, all(vec2<bool>(true, true)), true)), var_1 | var_1);
    global2 = array<vec2<bool>, 18>();
    global1 = array<vec3<bool>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-18603i >> (1u % 32u), 1i ^ u_input.b), ~(~10467u & u_input.a));
}

