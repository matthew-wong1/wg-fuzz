struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: f32;

var<private> global2: u32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: u32) -> bool {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + 3225f);
    let var_0 = vec4<i32>(-(firstTrailingBit(0i) | firstTrailingBit(8697i)), -_wgslsmith_div_i32(2929i, 46175i), -abs(max(2147483647i, 0i)), -_wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, 2147483647i), -34514i)) ^ ~(~vec4<i32>(i32(-1i) * -5803i, -1i, _wgslsmith_div_i32(1i, -1i), 0i));
    var var_1 = Struct_1(false, select(vec4<bool>(true, !(u_input.c.x >= arg_2), arg_0, true), !(!vec4<bool>(arg_0, arg_0, true, true)), any(select(vec2<bool>(arg_0, false), vec2<bool>(true, true), arg_0)) != (true | select(arg_0, true, false))), _wgslsmith_mod_vec2_u32(~vec2<u32>(firstTrailingBit(9842u), _wgslsmith_div_u32(arg_1, 4294967295u)), vec2<u32>(arg_1, ~u_input.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(929f)), _wgslsmith_div_f32(795f, -275f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1390f)))))), _wgslsmith_div_f32(-2124f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -170f), _wgslsmith_f_op_f32(f32(-1f) * -169f))))), 63908u);
    global2 = _wgslsmith_clamp_u32(1u, ~(max(~4294967295u, _wgslsmith_div_u32(60154u, u_input.b)) >> (u_input.a % 32u)), 1u >> (arg_2 % 32u));
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(abs(u_input.c.x >> (1046u % 32u)), max(min(57953u, var_1.e), select(arg_1, arg_1, false)), 46603u, firstTrailingBit(4294967295u) >> (var_1.e % 32u)), max(abs(firstTrailingBit(vec4<u32>(19895u, 4294967295u, 0u, var_1.c.x))), ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_2, u_input.c.x, 34953u, 4294967295u), vec4<u32>(4294967295u, var_1.e, 1u, arg_2)))) ^ ~vec4<u32>(~0u, arg_1, u_input.b, u_input.c.x);
    return !var_1.b.x;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: bool) -> Struct_1 {
    global0 = array<Struct_1, 1>();
    let var_0 = select(!(!vec3<bool>(arg_0 > arg_0, arg_2, func_3(true, u_input.c.x, u_input.c.x))), select(vec3<bool>(true, true, all(!vec4<bool>(arg_2, false, arg_2, true))), select(!(!vec3<bool>(arg_2, true, arg_1)), vec3<bool>(u_input.a != 1u, arg_1, true), u_input.b == ~u_input.a), select(select(!vec3<bool>(true, arg_1, false), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_1, arg_1, arg_1)), select(select(vec3<bool>(arg_2, true, false), vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_2, arg_2, arg_1)), !vec3<bool>(false, arg_1, arg_2), !vec3<bool>(arg_2, true, true)), !(!vec3<bool>(arg_2, false, true)))), all(vec2<bool>(false, !(!arg_1))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), 1u)];
    global0 = array<Struct_1, 1>();
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-736f)) + _wgslsmith_f_op_f32(var_1.d - -1546f))))));
    return global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(0u, u_input.a)), 1u)), 1u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(arg_2));
    global2 = u_input.c.x;
    let var_1 = u_input.c.x;
    let var_2 = func_2(select(_wgslsmith_sub_i32(abs(2147483647i << (var_1 % 32u)), _wgslsmith_div_i32(i32(-1i) * -25808i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -13643i, 1i, -38999i), vec4<i32>(-1i, 62078i, 43277i, -74042i)))), firstLeadingBit(max(-1i, 8250i)) ^ countOneBits(select(41707i, -2147483647i, arg_1.a)), arg_0.b.x), true, ~arg_0.e > (abs(_wgslsmith_div_u32(30072u, 34488u)) << (0u % 32u)));
    return var_2.e;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> bool {
    global2 = 1u;
    global0 = array<Struct_1, 1>();
    var var_0 = vec3<u32>(arg_1.c.x, _wgslsmith_mult_u32(func_4(Struct_1(true, vec4<bool>(true, true, true, true), vec2<u32>(arg_1.c.x, 0u), _wgslsmith_f_op_f32(max(235f, 793f)), arg_1.c.x), func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, arg_3, 0i, -2147483647i), vec4<i32>(10161i, -7357i, -58377i, 24270i)), true, all(arg_1.b.ywz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, arg_1.d, 450f, arg_1.d)))), 0u), ~(~_wgslsmith_div_u32(_wgslsmith_mod_u32(35794u, arg_0.e), ~0u)));
    global2 = arg_0.e;
    global2 = ~(~reverseBits(u_input.a));
    return all(vec3<bool>(arg_3 <= 1i, true, func_3(any(!arg_1.b.wy), _wgslsmith_div_u32(1u, 32995u) >> (_wgslsmith_add_u32(arg_1.e, 0u) % 32u), arg_0.c.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: Struct_1) -> vec2<u32> {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d * -736f) - _wgslsmith_f_op_f32(step(arg_0.d, _wgslsmith_div_f32(1f, arg_0.d))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(622f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.d), -877f))))));
    let var_1 = true;
    var var_2 = ~vec3<u32>(u_input.a, 11870u, abs(arg_1.x));
    let var_3 = arg_3;
    return ~firstLeadingBit(_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_1.x, u_input.a), ~select(vec2<u32>(arg_1.x, var_3.e), arg_0.c, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 74225u;
    let var_0 = ~(-2147483647i);
    var var_1 = Struct_1(true, vec4<bool>(true, true, true, true), func_5(Struct_1(func_1(global0[_wgslsmith_index_u32(u_input.c.x >> (u_input.a % 32u), 1u)], global0[_wgslsmith_index_u32(~u_input.c.x, 1u)], all(vec4<bool>(true, true, true, true)), ~0i), func_2(select(1i, var_0, true), false, true).b, vec2<u32>(~1u, 18825u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 118f)), func_4(global0[_wgslsmith_index_u32(~0u, 1u)], global0[_wgslsmith_index_u32(abs(u_input.b), 1u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-369f, 500f, -1000f, -2108f)))), max(~vec3<u32>(29378u, 1u, u_input.b) ^ ~vec3<u32>(u_input.b, 7345u, 64645u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(28384u, u_input.c.x, 64379u), vec3<u32>(u_input.a, u_input.c.x, 37060u))), vec4<bool>(u_input.c.x > 1u, true, false, true), Struct_1(any(vec2<bool>(true, false)) & false, vec4<bool>(u_input.a >= u_input.c.x, true, true, true), ~u_input.c, _wgslsmith_f_op_f32(floor(527f)), ~0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1313f, -413f, false)), -1590f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))), ~select(~u_input.c.x, ~u_input.b, any(vec4<bool>(true, false, true, true))) & u_input.a);
    var var_2 = global0[_wgslsmith_index_u32(abs(~u_input.c.x), 1u)];
    var_1 = Struct_1(var_1.a, vec4<bool>(true, var_2.b.x, !(!(var_2.b.x && var_1.b.x)), (_wgslsmith_f_op_f32(-var_1.d) != _wgslsmith_f_op_f32(f32(-1f) * -798f)) && (var_0 > -4350i)), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d, -525f)), _wgslsmith_f_op_f32(max(var_2.d, _wgslsmith_f_op_f32(-1162f * var_1.d)))))), ~var_2.e & select(15511u, abs(firstLeadingBit(var_2.c.x)), !(!var_2.b.x)));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~(~38691u)), _wgslsmith_mod_u32(~(~var_2.c.x), var_2.c.x), 62708u), vec3<u32>(11511u, ~19831u, func_5(func_2(-var_0, -2147483647i < var_0, var_0 >= var_0), vec3<u32>(21964u, 4294967295u, var_1.c.x) ^ vec3<u32>(var_1.e, u_input.b, var_1.c.x), !vec4<bool>(var_2.b.x, true, false, false), Struct_1(true, vec4<bool>(var_1.a, true, var_2.a, false), var_1.c, _wgslsmith_f_op_f32(var_2.d + -303f), ~6583u)).x)), 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x, reverseBits(1u), firstLeadingBit(0u));
}

