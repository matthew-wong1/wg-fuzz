struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<vec2<f32>, 29>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1189f, 178f)), -1001f)), _wgslsmith_f_op_f32(-1298f * _wgslsmith_f_op_f32(min(1155f, 807f)))), -770f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(47495u, 29u)] * _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(17113u, 29u)] * global2[_wgslsmith_index_u32(u_input.a, 29u)])))));
    global1 = _wgslsmith_mod_i32(abs(1i), ~_wgslsmith_clamp_i32(1i, u_input.c, ~1i));
    global2 = array<vec2<f32>, 29>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(~43132u, ~u_input.a)), 29u)]), false, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0.x)))), 1000f, _wgslsmith_f_op_f32(var_0.x + 1077f)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1814f), 414f)), 300f), false)), _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(u_input.d, 29u)] + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-940f, 1283f) * _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(u_input.d, 29u)])))));
    var var_2 = select(arg_0, arg_0, true);
    return _wgslsmith_mod_u32(select(u_input.d, u_input.a, arg_0.x), u_input.d);
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    let var_0 = vec3<bool>(!arg_2.a.b, arg_2.e, any(vec4<bool>(any(vec3<bool>(arg_2.c, true, true)), arg_2.a.b, 45392u <= u_input.d, true)) || true);
    let var_1 = ~58229u;
    global0 = array<Struct_1, 13>();
    global1 = ~(~arg_1.x);
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.c.x * arg_2.a.c.x) * _wgslsmith_f_op_f32(-195f * arg_2.a.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-194f * arg_2.a.d.x) + arg_2.a.d.x))));
    return 38252i >= _wgslsmith_mod_i32(u_input.c, -6251i);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.d, 13u)], u_input.d, func_4(_wgslsmith_mod_u32(func_3(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), -1i, select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), u_input.a > u_input.a), u_input.d), ~(vec3<i32>(2147483647i, u_input.c, -2147483647i) << ((vec3<u32>(59987u, 79225u, u_input.d) << (vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_2(Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.d), 29u)], all(vec4<bool>(false, true, false, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1962f, -427f, -876f)), vec2<f32>(-246f, 345f)), reverseBits(~65272u), true, _wgslsmith_div_u32(max(1u, 0u), 75572u), true && all(vec3<bool>(false, false, false)))), u_input.d, false);
    global2 = array<vec2<f32>, 29>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -812f) + _wgslsmith_f_op_f32(1f - var_0.a.c.x));
    var var_2 = var_0.a.d.x;
    global1 = u_input.b.x;
    return var_0.a;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    let var_0 = arg_2.x;
    global0 = array<Struct_1, 13>();
    global2 = array<vec2<f32>, 29>();
    global1 = u_input.b.x;
    global0 = array<Struct_1, 13>();
    return func_2();
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(20875u, _wgslsmith_mod_u32(~u_input.a, arg_2.d), 1u, min(~1u, ~89494u)), min(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 0u, arg_2.d), firstLeadingBit(vec4<u32>(u_input.d, u_input.a, arg_2.d, 33487u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.d, arg_2.d, arg_2.b), vec4<u32>(u_input.d, 72388u, arg_2.b, arg_2.d)), 1u, max(0u, 1u), u_input.a)) ^ vec4<u32>(u_input.a, ~1u, ~(~arg_2.b), arg_2.d));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(arg_2.d, 13u)], abs(1u), -342f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1220f)) + arg_3), 4294967295u, false);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.d.x))))), _wgslsmith_f_op_f32(ceil(604f))));
    var var_3 = Struct_2(func_1(any(select(!arg_0, select(vec4<bool>(false, arg_1.b, arg_0.x, arg_1.b), vec4<bool>(arg_1.b, true, arg_1.b, var_1.a.b), arg_0), arg_0.x)), u_input.c, vec3<f32>(-263f, arg_3, arg_1.d.x), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(16811u, 48411u, u_input.a), vec3<u32>(1u, 61848u, u_input.d) >> (vec3<u32>(var_1.d, 14719u, 1u) % vec3<u32>(32u))), vec3<u32>(~1u, ~var_1.d, var_1.d))), 68477u, true, var_0, firstTrailingBit(~(1u & var_1.d)) < 1u);
    global2 = array<vec2<f32>, 29>();
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, ~firstLeadingBit(u_input.b.x)), vec2<i32>(u_input.c, _wgslsmith_mod_i32(u_input.c, 2147483647i) & _wgslsmith_clamp_i32(u_input.c, u_input.c, -9334i))), countOneBits(u_input.c));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_u32(max(~(~vec2<u32>(18009u, u_input.a)), vec2<u32>(arg_0.d | arg_0.d, arg_0.b)) & ~countOneBits(min(vec2<u32>(arg_0.d, arg_0.d), vec2<u32>(u_input.a, u_input.d))), _wgslsmith_div_vec2_u32(~(select(vec2<u32>(0u, 1u), vec2<u32>(1999u, 4294967295u), arg_0.a.b) ^ ~vec2<u32>(0u, arg_0.b)), countOneBits(countOneBits(vec2<u32>(77932u, 43524u) >> (vec2<u32>(arg_0.b, u_input.d) % vec2<u32>(32u))))));
    var_0 = ~_wgslsmith_clamp_u32(57851u & abs(~arg_0.b), ~1u, 4294967295u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(arg_0.d, 29u)])), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.a.c))) + _wgslsmith_f_op_vec3_f32(step(arg_0.a.c, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1113f, 103f, 1008f), vec3<f32>(-511f, arg_0.a.d.x, 176f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-299f, _wgslsmith_f_op_f32(-145f - 1135f))) * global2[_wgslsmith_index_u32(arg_0.d << (_wgslsmith_add_u32(firstLeadingBit(1u), 15747u) % 32u), 29u)]));
    global1 = func_5(vec4<bool>(var_1.b, false, !arg_0.a.b && any(vec4<bool>(true, false, false, var_1.b)), true), global0[_wgslsmith_index_u32(func_3(!vec4<bool>(!var_1.b, -7368i == arg_2, !arg_0.e, false), ~(~_wgslsmith_add_i32(arg_2, arg_3.x)), vec3<bool>(any(vec2<bool>(arg_0.c, true)), !all(vec4<bool>(arg_0.a.b, true, false, false)), true), select(57675u & u_input.a, arg_0.d ^ arg_0.d, any(vec4<bool>(arg_0.a.b, false, var_1.b, arg_0.a.b))) == _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b, arg_0.b, 18116u, u_input.d), vec4<u32>(u_input.a, 1u, u_input.a, 1u)), vec4<u32>(1u, u_input.a, 5699u, 16558u))), 13u)], Struct_2(global0[_wgslsmith_index_u32(firstLeadingBit(arg_0.d), 13u)], (1u >> (u_input.a % 32u)) | min(1u, ~u_input.d), !(var_1.d.x < 156f), 4294967295u, false), -1266f);
    var_0 = 4294967295u;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 13u)], 1u, all(vec3<bool>(any(vec2<bool>(false, true)), true, true)), 4294967295u << (~u_input.d % 32u), _wgslsmith_add_i32(-1i, u_input.b.x) != _wgslsmith_div_i32(-u_input.b.x, firstLeadingBit(2147483647i))), _wgslsmith_mod_vec4_i32(~(-min(vec4<i32>(u_input.b.x, u_input.b.x, 33601i, -62800i), vec4<i32>(8180i, u_input.b.x, u_input.b.x, u_input.c))), abs(-abs(vec4<i32>(u_input.b.x, -68391i, 0i, u_input.b.x)))), 1i, vec4<i32>(_wgslsmith_add_i32(~u_input.c, 2147483647i), u_input.c, ~(-19637i), -func_5(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), false), func_1(false, u_input.b.x, vec3<f32>(535f, 1000f, -157f), 4294967295u), Struct_2(Struct_1(vec2<f32>(-1807f, 818f), false, vec3<f32>(2219f, -761f, -217f), vec2<f32>(-514f, 191f)), 3746u, true, u_input.a, true), -1765f)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2399f);
    let var_2 = u_input.c;
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    let var_3 = !select(vec4<bool>(true, func_6(Struct_2(Struct_1(vec2<f32>(561f, var_0.d.x), var_0.b, var_0.c, var_0.c.yx), 0u, false, 0u, false), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.b.x, u_input.b.x, 0i), vec4<i32>(-16339i, var_2, 2147483647i, u_input.b.x), vec4<i32>(14254i, 2147483647i, 1i, var_2)), 7829i, vec4<i32>(-6127i, 1i, u_input.c, 1i)).b, var_0.b || true, true), !(!vec4<bool>(var_0.b, var_0.b, var_0.b, true)), vec4<bool>(!var_0.b, !(u_input.c < u_input.c), _wgslsmith_f_op_f32(sign(-992f)) < 709f, false));
    global1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec2<u32>(4294967295u, select(u_input.d, u_input.a, false))), 4294967295u, u_input.d, u_input.b);
}

