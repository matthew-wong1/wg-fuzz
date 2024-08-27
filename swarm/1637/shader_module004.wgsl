struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
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

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 21>;

var<private> global2: vec4<f32>;

var<private> global3: array<u32, 5>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = Struct_1(arg_0, ~global0.b, global0.c, _wgslsmith_div_i32(~reverseBits(_wgslsmith_clamp_i32(2147483647i, -7240i, 2147483647i)), u_input.b.x));
    let var_1 = ~(~_wgslsmith_clamp_vec4_u32(min(var_0.b & var_0.b, ~vec4<u32>(31185u, global3[_wgslsmith_index_u32(90047u, 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)], var_0.b.x)), reverseBits(firstLeadingBit(vec4<u32>(1u, 12916u, global3[_wgslsmith_index_u32(95978u, 5u)], 4294967295u))), global0.b));
    var var_2 = global1[_wgslsmith_index_u32(var_1.x, 21u)];
    var var_3 = Struct_1(-90808i, var_2.b, true, var_2.a);
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -400f)), _wgslsmith_f_op_f32(floor(global2.x))))), global2.x));
    return reverseBits(~(_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_1.x, 26753u, var_0.b.x, var_2.b.x), vec4<u32>(var_1.x, 37349u, var_0.b.x, 0u)), ~vec4<u32>(1u, global0.b.x, 0u, 4294967295u)) | _wgslsmith_dot_vec3_u32(reverseBits(var_2.b.zxx), firstLeadingBit(global0.b.ywx))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<bool> {
    let var_0 = ~vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(18788u, u_input.c.x) ^ ~arg_0, global3[_wgslsmith_index_u32(36971u, 5u)]), ~arg_2.b.x, ~arg_0);
    var var_1 = false;
    var_1 = _wgslsmith_mod_u32(~1u, func_3(i32(-1i) * -u_input.a)) >= ~select(1u, 13195u >> (u_input.c.x % 32u), all(!vec4<bool>(false, arg_2.c, false, arg_2.c)));
    var var_2 = select(select(select(vec3<bool>(any(vec2<bool>(true, true)), true, any(vec4<bool>(false, arg_2.c, global0.c, global0.c))), !(!vec3<bool>(global0.c, global0.c, false)), select(select(vec3<bool>(false, global0.c, true), vec3<bool>(false, true, true), false), select(vec3<bool>(arg_2.c, true, global0.c), vec3<bool>(true, arg_2.c, arg_2.c), true), true | global0.c)), select(select(!vec3<bool>(arg_2.c, true, arg_2.c), !vec3<bool>(true, false, global0.c), true), vec3<bool>(true, true, true), !(!global0.c)), vec3<bool>(true, (global0.b.x << (30966u % 32u)) != (u_input.c.x << (arg_2.b.x % 32u)), false)), vec3<bool>(any(select(vec2<bool>(false, global0.c), vec2<bool>(global0.c, global0.c), false)), !any(!vec3<bool>(true, global0.c, true)), any(!(!vec3<bool>(false, global0.c, global0.c)))), vec3<bool>(arg_2.c, global0.c, false));
    let var_3 = Struct_1(arg_2.d, vec4<u32>(global3[_wgslsmith_index_u32(~19072u, 5u)], _wgslsmith_sub_u32(4294967295u, ~1u), ~(5358u & _wgslsmith_mult_u32(var_0.x, 38823u)), ~(_wgslsmith_add_u32(0u, 73264u) << (u_input.e % 32u))), all(vec3<bool>(true, false, !var_2.x)), abs(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(arg_1, -2147483647i)) & firstLeadingBit(u_input.b), abs(_wgslsmith_add_vec2_i32(u_input.b, u_input.b)))));
    return select(vec2<bool>(all(vec3<bool>(var_2.x, var_3.c, true)), global0.c), !(!select(select(var_2.zy, vec2<bool>(true, true), global0.c), vec2<bool>(false, var_3.c), !arg_2.c)), any(select(!(!vec3<bool>(false, true, arg_2.c)), vec3<bool>(true, true, false), !(1u < arg_2.b.x))));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-766f, 1000f, 572f, global2.x) - vec4<f32>(global2.x, global2.x, global2.x, global2.x))) + vec4<f32>(_wgslsmith_f_op_f32(global2.x + -948f), -496f, _wgslsmith_f_op_f32(trunc(-455f)), _wgslsmith_f_op_f32(exp2(global2.x)))))));
    var var_0 = arg_2;
    var var_1 = countOneBits(reverseBits(firstTrailingBit(-2147483647i))) < var_0.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1527f)))), 401f, -1000f, global2.x)), vec4<f32>(global2.x, -1451f, -566f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1682f * global2.x))))));
    global2 = var_2;
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = func_4(all(!select(vec4<bool>(global0.c, false, arg_0.c, arg_0.c), !vec4<bool>(true, arg_2.c, false, global0.c), all(vec4<bool>(true, false, true, global0.c)))), select(select(vec2<bool>(global0.c, all(vec2<bool>(true, true))), vec2<bool>(false == arg_2.c, arg_0.d == u_input.b.x), global0.c), func_2(arg_2.b.x, arg_2.a, Struct_1(0i, countOneBits(global0.b), false, -4702i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, global2.x, 155f, 257f))))), arg_0.c), Struct_1(arg_1.x, firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0.b, vec4<u32>(1u, arg_2.b.x, global0.b.x, 0u)), abs(arg_0.b))), arg_2.c, arg_1.x), select(select(select(!vec4<bool>(arg_2.c, arg_2.c, true, arg_0.c), !vec4<bool>(false, arg_2.c, false, false), false), vec4<bool>(global0.c != false, arg_2.c || true, all(vec3<bool>(arg_2.c, arg_2.c, arg_2.c)), true), true), !select(!vec4<bool>(false, global0.c, arg_0.c, arg_0.c), !vec4<bool>(arg_2.c, global0.c, true, global0.c), arg_2.c && arg_2.c), arg_2.c));
    var var_1 = arg_0;
    var_0 = Struct_1(firstLeadingBit(_wgslsmith_mult_i32(firstLeadingBit(arg_2.d), _wgslsmith_clamp_i32(~(-1i), global0.a & 1i, 1i))), (select(vec4<u32>(global0.b.x, 28187u, 21953u, global0.b.x), var_0.b, var_0.c) ^ vec4<u32>(_wgslsmith_add_u32(arg_0.b.x, arg_2.b.x), 67314u, ~90040u, func_3(28316i))) ^ vec4<u32>(min(62004u, min(4294967295u, 0u)), 58094u, firstLeadingBit(8642u), 1u << (~var_0.b.x % 32u)), !((!arg_2.c && true) != (global2.x == -950f)), arg_0.d);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -518f))))))));
    var var_3 = 0u;
    return select(vec3<u32>(~1u, arg_2.b.x, max(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(arg_2.b.x, 3928u)), ~var_0.b.x)), ~var_1.b.yzz >> (var_1.b.zxz % vec3<u32>(32u)), all(select(select(!vec3<bool>(false, false, var_0.c), select(vec3<bool>(arg_0.c, arg_2.c, true), vec3<bool>(var_0.c, false, false), global0.c), vec3<bool>(var_1.c, false, var_1.c)), select(!vec3<bool>(false, var_0.c, arg_2.c), !vec3<bool>(global0.c, false, global0.c), !vec3<bool>(true, var_0.c, arg_2.c)), !any(vec2<bool>(var_1.c, var_1.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 5>();
    let var_0 = select(u_input.b, u_input.b, !(any(vec3<bool>(global0.c, false, false)) || !(u_input.e < 10622u)));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(32645u, u_input.e), ~u_input.c.zy), 1u);
    var var_2 = global2.x;
    var var_3 = 10266u;
    let var_4 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x << (0u % 32u), _wgslsmith_clamp_u32(1u, var_1.x, global0.b.x), ~62848u), ~func_1(Struct_1(-9873i, vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(0u, 5u)], global3[_wgslsmith_index_u32(u_input.c.x, 5u)]), true, global0.d), vec4<i32>(u_input.b.x, var_0.x, 1i, 0i), Struct_1(42183i, vec4<u32>(0u, 25760u, global0.b.x, var_1.x), global0.c, global0.d)), global0.b.zww), abs(~_wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(21441u, 43856u, 0u)))) ^ ~global0.b.wxy;
    let var_5 = func_4(!global0.c, !func_2(reverseBits(select(var_4.x, 4294967295u, true)), global0.a, global1[_wgslsmith_index_u32(var_4.x, 21u)], _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1466f, global2.x, global2.x, -688f) - vec4<f32>(global2.x, -516f, global2.x, global2.x))))), func_4(global0.c, select(select(func_2(global0.b.x, var_0.x, Struct_1(u_input.a, vec4<u32>(695u, 1u, global3[_wgslsmith_index_u32(1u, 5u)], 2840u), global0.c, 1762i), vec4<f32>(-754f, global2.x, -419f, 1000f)), select(vec2<bool>(false, global0.c), vec2<bool>(global0.c, global0.c), false), vec2<bool>(global0.c, true)), vec2<bool>(global0.b.x == 27203u, true), false), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(global0.b ^ global0.b, ~vec4<u32>(var_4.x, 0u, u_input.c.x, var_1.x)), 21u)], select(vec4<bool>(true, true, true, all(vec4<bool>(global0.c, global0.c, false, true))), !select(vec4<bool>(false, global0.c, global0.c, true), vec4<bool>(false, global0.c, false, global0.c), vec4<bool>(true, false, true, global0.c)), !select(vec4<bool>(false, false, global0.c, false), vec4<bool>(true, false, true, false), global0.c))), select(select(select(vec4<bool>(true, false, global0.c, false), !vec4<bool>(global0.c, true, true, false), select(vec4<bool>(global0.c, global0.c, global0.c, global0.c), vec4<bool>(false, false, global0.c, global0.c), global0.c)), !vec4<bool>(global0.c, false, global0.c, global0.c), global0.c), vec4<bool>(global0.c, false, false, false), vec4<bool>(func_2(4106u, u_input.b.x, global1[_wgslsmith_index_u32(1u, 21u)], vec4<f32>(-308f, 322f, global2.x, -1756f)).x & true, true, true && (false & global0.c), true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(0i), func_4(!any(select(vec4<bool>(false, var_5.c, var_5.c, global0.c), vec4<bool>(false, var_5.c, var_5.c, global0.c), vec4<bool>(global0.c, global0.c, var_5.c, var_5.c))), vec2<bool>(true, all(vec2<bool>(global0.c, global0.c)) & global0.c), var_5, !select(select(vec4<bool>(var_5.c, false, global0.c, global0.c), vec4<bool>(global0.c, true, true, false), vec4<bool>(false, var_5.c, false, true)), !vec4<bool>(global0.c, false, global0.c, false), true)).b.x);
}

