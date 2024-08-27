struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: bool,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<bool>;

var<private> global2: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global3: array<i32, 32> = array<i32, 32>(19853i, -1i, 2147483647i, -1i, 0i, -1i, -6802i, 0i, 31892i, 1i, i32(-2147483648), 55397i, -18120i, 0i, -41226i, 0i, 0i, -41219i, i32(-2147483648), i32(-2147483648), 24337i, 0i, 0i, -6942i, 2147483647i, 99325i, 2147483647i, 1i, 54188i, 1i, 14732i, 2147483647i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> vec3<bool> {
    global3 = array<i32, 32>();
    let var_0 = Struct_2(Struct_1(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-377f + -1899f)))), _wgslsmith_f_op_f32(step(-1622f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(-378f)))))), Struct_1(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1119f))), _wgslsmith_f_op_f32(-682f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(974f))))), false, vec4<u32>(arg_0, _wgslsmith_clamp_u32(firstTrailingBit(~arg_0), ~45554u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0), u_input.e.yz)), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, 1u), firstTrailingBit(~18309u)), _wgslsmith_clamp_u32(1u, u_input.b.x, ~(arg_0 >> (u_input.d % 32u)))));
    global1 = select(select(select(vec3<bool>(var_0.c, var_0.c, any(vec3<bool>(var_0.c, global1.x, false))), vec3<bool>(!var_0.c, global1.x, all(vec3<bool>(var_0.c, false, global1.x))), var_0.c || false), vec3<bool>(true, false, _wgslsmith_f_op_f32(1814f - var_0.b.c) < -831f), var_0.c), select(vec3<bool>(any(vec4<bool>(true, global1.x, var_0.c, true)), all(vec4<bool>(global1.x, false, global1.x, global1.x)), true), vec3<bool>(false, !(!global1.x), true), !vec3<bool>(var_0.c, false, var_0.c)), select(true, all(vec4<bool>(false, true, global1.x, true)), any(!vec2<bool>(var_0.c, true))));
    global1 = select(!vec3<bool>(var_0.c, true, var_0.c), vec3<bool>(-1470f < var_0.b.b, true, true), !select(!(!vec3<bool>(false, false, global1.x)), select(select(vec3<bool>(var_0.c, global1.x, global1.x), vec3<bool>(false, false, false), var_0.c), !vec3<bool>(global1.x, false, true), !vec3<bool>(false, true, var_0.c)), all(!vec3<bool>(var_0.c, global1.x, global1.x))));
    global1 = !(!(!select(!vec3<bool>(true, global1.x, global1.x), vec3<bool>(var_0.c, global1.x, global1.x), false)));
    return select(!vec3<bool>(var_0.c, true, all(global1.xz)), vec3<bool>(select(global1.x, true, all(vec3<bool>(var_0.c, true, true))), true, var_0.c), any(!(!select(global2[_wgslsmith_index_u32(u_input.e.x, 17u)], vec2<bool>(global1.x, global1.x), var_0.c))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<f32>, arg_3: vec2<u32>) -> bool {
    let var_0 = 14103u;
    global1 = !select(select(vec3<bool>(true, global1.x & false, global1.x), func_3(abs(var_0), vec2<i32>(-13957i, u_input.c.x) | u_input.c), global1.x), vec3<bool>(true, all(vec3<bool>(global1.x, true, global1.x)), abs(-18211i) >= _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -14869i, u_input.c.x, global3[_wgslsmith_index_u32(arg_0, 32u)]), vec4<i32>(u_input.c.x, u_input.c.x, -1i, -56202i))), true);
    let var_1 = false;
    global0 = any(global2[_wgslsmith_index_u32(u_input.d, 17u)]);
    global2 = array<vec2<bool>, 17>();
    return true;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    global2 = array<vec2<bool>, 17>();
    let var_0 = true;
    global3 = array<i32, 32>();
    let var_1 = vec2<bool>(func_2(min(4294967295u, u_input.e.x), 1u, vec4<f32>(-283f, arg_3.e.x, _wgslsmith_f_op_f32(sign(arg_0.b)), arg_0.b), _wgslsmith_add_vec2_u32(vec2<u32>(firstLeadingBit(748u), _wgslsmith_sub_u32(86554u, arg_0.d.x)), ~countOneBits(vec2<u32>(arg_3.d.x, u_input.d)))), !arg_0.a);
    global3 = array<i32, 32>();
    return Struct_3(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1806f + 1733f) * _wgslsmith_f_op_f32(trunc(arg_0.b))))), true, _wgslsmith_mod_vec4_u32(arg_3.d, vec4<u32>(arg_3.d.x >> (arg_3.d.x % 32u), _wgslsmith_mod_u32(4294967295u, 59647u), ~79306u, 0u)) >> (firstTrailingBit(abs(arg_3.d)) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b)) + arg_3.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + arg_3.b), -340f)))));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = 0i;
    global1 = !select(vec3<bool>(any(vec3<bool>(global1.x, true, global1.x)), u_input.a <= _wgslsmith_add_u32(53984u, 2611u), global1.x), !vec3<bool>(true & global1.x, true, global1.x | false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(any(global2[_wgslsmith_index_u32(0u, 17u)]), true, all(global2[_wgslsmith_index_u32(u_input.d, 17u)]))));
    global3 = array<i32, 32>();
    var var_1 = _wgslsmith_f_op_f32(-1299f - -1253f);
    let var_2 = ~firstTrailingBit(~vec3<u32>(u_input.b.x & u_input.d, u_input.e.x, u_input.d | u_input.b.x));
    return func_4(Struct_3(func_2(38563u, ~u_input.b.x, vec4<f32>(-1304f, -177f, 1168f, -1406f), var_2.zx), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(435f * 475f))), -1003f)), (u_input.c.x >> (~1u % 32u)) == firstTrailingBit(_wgslsmith_mod_i32(64067i, u_input.c.x)), u_input.e ^ u_input.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(179f, -421f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-940f, -1623f) + vec2<f32>(1974f, -449f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1029f, 364f) - vec2<f32>(638f, 692f)), vec2<f32>(-255f, -1691f), vec2<bool>(true, global1.x))))), arg_0 >> (11793u % 32u), global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~4294967295u, reverseBits(4294967295u)), 32u)] >> (2858u % 32u), Struct_3(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1107f), false, select(u_input.e, ~_wgslsmith_mod_vec4_u32(vec4<u32>(26028u, 50196u, var_2.x, var_2.x), vec4<u32>(u_input.b.x, 0u, var_2.x, 87991u)), global1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-531f, -493f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1265f, -1000f))), func_3(4294967295u, vec2<i32>(global3[_wgslsmith_index_u32(65209u, 32u)], -2147483647i)).x)))));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> vec4<u32> {
    let var_0 = Struct_1(-min(~u_input.c, abs(-vec2<i32>(u_input.c.x, arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1428f + arg_0.b) - _wgslsmith_f_op_f32(arg_0.e.x + arg_0.e.x))) - -550f), _wgslsmith_f_op_f32(-1000f + arg_0.e.x));
    var var_1 = Struct_2(Struct_1(abs(vec2<i32>(1i, abs(37839i))), _wgslsmith_f_op_f32(min(arg_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_div_f32(-943f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1515f, -559f, false)) * arg_0.e.x))), var_0, !(!(true | global1.x)), u_input.e);
    let var_2 = ~reverseBits(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_1, 2147483647i, 43470i)), vec3<i32>(20439i, 0i, -12751i)) | ~global3[_wgslsmith_index_u32(abs(arg_2), 32u)]);
    var var_3 = Struct_2(Struct_1(vec2<i32>(-var_0.a.x, countOneBits(2649i & global3[_wgslsmith_index_u32(31743u, 32u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + func_1(global3[_wgslsmith_index_u32(39906u, 32u)]).b) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_0.c)), 310f, true && arg_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + -572f) + -381f)), var_1.a, true, vec4<u32>(arg_0.d.x, arg_0.d.x | _wgslsmith_div_u32(abs(arg_0.d.x), arg_2), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d.x, 1u, arg_0.d.x), ~u_input.e.wyz), 0u), _wgslsmith_add_u32(~(~arg_2), u_input.a)));
    global1 = !(!vec3<bool>(!global1.x, global1.x, false));
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var var_1 = Struct_1(-_wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(2147483647i, 14049i), u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1954f, 766f)) - 736f) + -163f)), 577f);
    var var_2 = func_5(func_1(reverseBits(firstLeadingBit(-2147483647i))), u_input.c.x, 1u);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 378f, _wgslsmith_f_op_f32(sign(-103f)), 445f)));
    let var_4 = Struct_1(vec2<i32>(max(countOneBits(0i), firstLeadingBit(-1i)), 1i) | vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(38661u, 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)], var_1.a.x), vec3<i32>(-63156i, 2147483647i, var_1.a.x)) & _wgslsmith_div_i32(var_1.a.x, var_1.a.x), ~_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(1u, 32u)], -77020i)), -589f, var_1.c);
    var_2 = u_input.e << (firstLeadingBit(u_input.e) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(43569u, ~u_input.b.x, u_input.e.x), var_3.wy, min(vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(4294967295u, 32u)], _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c.x, global3[_wgslsmith_index_u32(var_2.x, 32u)], var_4.a.x), vec3<i32>(u_input.c.x, 2147483647i, -75163i) & vec3<i32>(1i, -1i, 0i)), ~(~2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, _wgslsmith_clamp_i32(var_1.a.x, global3[_wgslsmith_index_u32(85680u, 32u)], 12535i), -var_1.a.x, u_input.c.x), firstLeadingBit(vec4<i32>(var_4.a.x, 14307i, var_4.a.x, 9269i)), vec4<i32>(global3[_wgslsmith_index_u32(u_input.e.x, 32u)] & u_input.c.x, 1i, -31849i, ~u_input.c.x))), ~(-vec4<i32>(-2147483647i, 1i, var_4.a.x, u_input.c.x) << (vec4<u32>(27814u, u_input.d, 1u, u_input.a) % vec4<u32>(32u))));
}

