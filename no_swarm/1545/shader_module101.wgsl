struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23>;

var<private> global1: Struct_3 = Struct_3(Struct_2(false, 8100u), vec3<u32>(4294967295u, 4294967295u, 1u), vec4<bool>(true, false, true, true), vec3<u32>(9062u, 42176u, 91351u), Struct_1(-45559i, 116f));

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(2147483647i, -1274f), Struct_1(-32249i, 1122f), Struct_1(1i, 317f), Struct_1(10091i, -1000f), Struct_1(2147483647i, 467f), Struct_1(-55578i, 1000f), Struct_1(14916i, -274f), Struct_1(-1i, 1465f), Struct_1(0i, 1875f), Struct_1(11731i, 1625f), Struct_1(0i, -1000f), Struct_1(1i, 108f), Struct_1(15032i, -129f), Struct_1(-31216i, -1363f), Struct_1(-388i, -661f), Struct_1(i32(-2147483648), 1621f), Struct_1(0i, -1113f), Struct_1(32288i, 1181f), Struct_1(15798i, 616f), Struct_1(-18826i, 223f), Struct_1(i32(-2147483648), 477f), Struct_1(-28757i, -1964f), Struct_1(1i, -518f), Struct_1(i32(-2147483648), -853f), Struct_1(66179i, 743f));

var<private> global3: Struct_2;

var<private> global4: array<Struct_2, 31>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32) -> f32 {
    global3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.e.b, 1115f)), -1515f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(516f - global1.e.b))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-152f, -889f)), 677f)), _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.b.x, 48654u, u_input.d), vec3<u32>(0u, global1.d.x, global1.a.b)), ~(~0u)), 22350u));
    let var_0 = vec2<i32>(max(-(0i ^ _wgslsmith_sub_i32(global1.e.a, -19006i)), -1i), -1i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.b, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.e.b, -758f), 1f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.b * global1.e.b))))));
    let var_2 = Struct_2(true, ~(~(~firstTrailingBit(12296u))));
    var var_3 = global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(global1.d.x, ~(~u_input.d)), 31u)];
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(func_3(global1.e.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1159f, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -473f))), _wgslsmith_f_op_f32(-1834f - _wgslsmith_f_op_f32(f32(-1f) * -239f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1622f, arg_0.x, global1.e.b, global1.e.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.b, 449f, arg_0.x, -837f)))))));
    var var_1 = Struct_3(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(~firstTrailingBit(vec4<u32>(u_input.d, 1u, u_input.d, global3.b))), ~firstLeadingBit(reverseBits(vec4<u32>(0u, global1.a.b, 0u, 0u)))), 31u)], abs(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 62065u, global3.b), global1.b)), select(global1.c, select(!vec4<bool>(true, global3.a, global1.a.a, global3.a), !(!vec4<bool>(global1.c.x, false, global3.a, true)), global3.a), global1.c), _wgslsmith_div_vec3_u32(vec3<u32>(abs(_wgslsmith_mod_u32(10836u, global1.b.x)), select(4294967295u, global3.b, global3.a) >> (global3.b % 32u), 0u), ~global1.d), Struct_1(min(global1.e.a, 1542i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(531f - var_0.x)), 1345f)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-711f, 1286f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-1i))))), 767f, -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(499f + arg_1)), _wgslsmith_f_op_f32(round(1244f))))));
    var var_2 = vec4<bool>(!(u_input.a != -min(27078i, 24940i)), true, global1.c.x, select(select(any(vec4<bool>(true, false, false, false)), any(vec3<bool>(true, false, true)), any(vec4<bool>(global3.a, var_1.c.x, global1.a.a, false))), any(vec3<bool>(global3.a, false, global3.a)), true) || any(var_1.c));
    global3 = Struct_2(!(any(var_2.wy) & false), max(44552u, countOneBits(35063u)));
    return Struct_1(33094i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1395f)), _wgslsmith_f_op_f32(1000f - arg_0.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> u32 {
    var var_0 = -1116f;
    let var_1 = vec3<u32>(~abs(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 48585u), vec2<u32>(0u, global3.b)), u_input.d)), ~1u, 1u);
    return 93960u;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = vec2<u32>(abs(u_input.d) >> (_wgslsmith_sub_u32(func_4(func_2(vec2<f32>(-179f, -1025f), 258f), global1.e.b), 0u) % 32u), select(~_wgslsmith_sub_u32(~0u, global1.a.b ^ 1u), global3.b << ((0u << (_wgslsmith_mod_u32(u_input.d, u_input.d) % 32u)) % 32u), global3.a == true));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(func_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(f32(-1f) * -1194f)), global1.e.b).b, _wgslsmith_f_op_f32(func_3(2147483647i ^ select(1i, u_input.a, true))))) * global1.e.b);
    return Struct_3(Struct_2(arg_2.a, abs(arg_2.b)), abs(~vec3<u32>(global1.d.x | var_0.x, global1.d.x, countOneBits(4294967295u))), vec4<bool>(~arg_2.b != ~(~global3.b), select(arg_0.x > u_input.a, -1271f >= global1.e.b, any(arg_1.xw)) || ((global3.b | 22049u) == u_input.d), !(~u_input.c.x == select(global1.e.a, global1.e.a, false)), !arg_2.a), abs(global1.b), Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(50230i, u_input.a, 0i)), countOneBits(vec3<i32>(arg_0.x, 373i, global1.e.a))), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-10522i, 21657i, -2147483647i)), arg_0.x, -1i)), -2488f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~_wgslsmith_div_vec2_i32(vec2<i32>(~u_input.b.x, global1.e.a), u_input.c.zz), global1.c, global1.a);
    global2 = array<Struct_1, 25>();
    let var_1 = u_input.c;
    var var_2 = var_0.e;
    global2 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.d, reverseBits(select(abs(69220u), ~4294967295u, false)), 1u, var_0.b.x), u_input.b.zy, _wgslsmith_add_vec4_u32(vec4<u32>(29603u, var_0.a.b, _wgslsmith_add_u32(var_0.d.x, var_0.d.x), global3.b), ~firstLeadingBit(~vec4<u32>(1u, 35359u, global1.d.x, 4294967295u))), -_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_1.x, global1.e.a) & var_1.zzy, var_1.xzz) << (_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(16832u, var_0.b.x, 4294967295u)) >> (~var_0.d % vec3<u32>(32u)), ~var_0.b) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(230f, var_0.e.b, global1.e.b, -2249f) + vec4<f32>(var_0.e.b, -1000f, var_2.b, var_0.e.b))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-466f, var_0.e.b, var_2.b, var_0.e.b), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b, 1401f, var_2.b, var_2.b), vec4<f32>(global1.e.b, 1000f, 728f, global1.e.b), global1.a.a)))))));
}

