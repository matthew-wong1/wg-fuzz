struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: vec4<i32> = vec4<i32>(1i, -1i, -40891i, 0i);

var<private> global2: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: u32, arg_1: f32) -> vec3<bool> {
    var var_0 = global1.x;
    let var_1 = 0u;
    return select(!(!vec3<bool>(arg_1 == arg_1, true, any(vec4<bool>(true, false, false, false)))), vec3<bool>(true, true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)))), vec3<bool>(any(vec3<bool>(true, true, true)) == true, !((u_input.b & 34028u) < _wgslsmith_clamp_u32(77234u, 1u, var_1)), false));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec3<u32> {
    global2 = !select(true, false, any(func_1(arg_0.b.x, 923f)) && all(select(vec2<bool>(arg_1.a, true), vec2<bool>(true, false), arg_1.a)));
    var var_0 = ~arg_0.b.x;
    global2 = !(((2147483647i >> (u_input.b % 32u)) < u_input.a) | arg_1.a);
    let var_1 = !(true & (any(select(vec3<bool>(true, true, arg_1.a), vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(false, true, false))) | arg_1.a));
    let var_2 = ~vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.b.x, 1u), 67945u), ~_wgslsmith_mult_u32(~u_input.b, _wgslsmith_add_u32(6495u, u_input.b)), reverseBits(42838u));
    return vec3<u32>(4294967295u, arg_0.b.x, _wgslsmith_mult_u32(~4294967295u, 1u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(step(arg_3.a, _wgslsmith_f_op_f32(arg_1.a * 1036f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-590f, arg_1.a, arg_2.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(1827f)), _wgslsmith_f_op_f32(trunc(-1279f)), _wgslsmith_f_op_f32(floor(arg_0.a))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(-573f * 477f), _wgslsmith_f_op_f32(arg_3.a + arg_1.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-427f, 186f, arg_3.a) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-847f, 875f, arg_3.a)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.a, arg_1.a, 188f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_3.a, arg_0.a))))))), all(vec2<bool>(true, true))));
    global1 = vec4<i32>(min(~46873i, -(~(-2147483647i << (0u % 32u)))), 8927i, firstLeadingBit(min(global1.x, -(global1.x << (68667u % 32u)))), _wgslsmith_dot_vec3_i32(vec3<i32>(min(global1.x, 8491i), 12955i, -1i), firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -27409i, global1.x), global1.yxx))) | countOneBits(abs(2024i) & u_input.a));
    let var_1 = ~_wgslsmith_mult_u32(~abs(arg_1.b.x) | _wgslsmith_mod_u32(arg_3.b.x, 4294967295u), ~1u);
    global2 = any(!(!vec3<bool>(all(vec3<bool>(arg_2.a, arg_2.a, true)), true || arg_2.a, false)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a, 693f, var_0.x) - vec3<f32>(var_0.x, var_0.x, 793f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(804f, 320f, arg_3.a))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = ~(35678u & u_input.b);
    global2 = func_1(select(0u, abs(var_0), false == (_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 13360i), global0[_wgslsmith_index_u32(var_0, 5u)]) > 20421i)), _wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 202f)), abs(func_3(Struct_2(297f, vec3<u32>(u_input.b, 55605u, var_0)), Struct_1(true)))), Struct_2(1000f, vec3<u32>(firstTrailingBit(var_0), u_input.b & 4294967295u, var_0)), Struct_1(true), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(118f + 176f) + _wgslsmith_f_op_f32(min(-1785f, -563f))), vec3<u32>(46066u, _wgslsmith_mult_u32(u_input.b, var_0), max(4294967295u, var_0)))))).x;
    let var_1 = Struct_1(all(vec2<bool>(true, true)) || false);
    let var_2 = _wgslsmith_div_f32(939f, 1845f);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1522f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(457f))))), ~vec3<u32>(~var_0, func_3(Struct_2(436f, vec3<u32>(1u, 64866u, 4294967295u)), var_1).x, ~u_input.b) ^ ((~vec3<u32>(57402u, var_0, 4294967295u) >> ((vec3<u32>(43041u, 35948u, 1u) >> (vec3<u32>(var_0, 95858u, var_0) % vec3<u32>(32u))) % vec3<u32>(32u))) & vec3<u32>(_wgslsmith_div_u32(21614u, u_input.b), var_0, _wgslsmith_add_u32(var_0, 0u))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = firstTrailingBit((0i << (_wgslsmith_add_u32(0u, arg_1.b.x) % 32u)) ^ 2147483647i) << ((~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 1u), vec3<u32>(arg_1.b.x, u_input.b, 0u)), _wgslsmith_sub_u32(0u, 0u)) << (~1u % 32u)) % 32u);
    var var_1 = ~(~vec4<u32>(func_3(arg_1, arg_0).x, ~(~4294967295u), 4294967295u, ~_wgslsmith_div_u32(arg_1.b.x, arg_1.b.x)));
    let var_2 = false;
    global0 = array<vec2<i32>, 5>();
    var_1 = vec4<u32>(abs(~(~20510u)), 4294967295u, 53938u, (_wgslsmith_sub_u32(0u, firstLeadingBit(var_1.x)) << (~abs(47306u) % 32u)) & (111890u & u_input.b));
    return Struct_1(true);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = ~(~reverseBits(min(~vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<u32>(39610u, 51928u, 42636u, u_input.b))));
    global2 = false;
    var var_1 = vec4<bool>(true, arg_0.x, !arg_0.x, select(select(true, true, 1i > ~u_input.a), arg_2.a, ~u_input.b >= 11726u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-138f, -1020f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-166f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(830f + 173f)))));
    global0 = array<vec2<i32>, 5>();
    return -_wgslsmith_mult_i32(-(~(-2147483647i)) & _wgslsmith_sub_i32(u_input.a, -2147483647i), reverseBits(0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1093f + 1239f), -204f))) >= 935f);
    global2 = false;
    global1 = vec4<i32>(u_input.a, func_6(!select(select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(true, var_0.a, true)), select(vec3<bool>(false, true, false), vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(false, true, true)), func_1(63662u, 890f)), func_5(Struct_1(true), func_2(~u_input.a), Struct_1(var_0.a & var_0.a), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(885f, -260f)))), func_5(func_5(func_5(Struct_1(var_0.a), Struct_2(893f, vec3<u32>(u_input.b, u_input.b, u_input.b)), Struct_1(var_0.a), vec2<f32>(-742f, -1208f)), Struct_2(-431f, vec3<u32>(u_input.b, u_input.b, 4294967295u)), Struct_1(false), _wgslsmith_f_op_vec2_f32(vec2<f32>(-489f, 928f) * vec2<f32>(1807f, -1271f))), Struct_2(_wgslsmith_f_op_f32(round(208f)), vec3<u32>(u_input.b, 10858u, u_input.b)), func_5(Struct_1(true), func_2(u_input.a), Struct_1(var_0.a), vec2<f32>(-1843f, -1294f)), vec2<f32>(-1204f, _wgslsmith_f_op_f32(-536f + 1000f)))), -3934i, -(2147483647i & u_input.a));
    global0 = array<vec2<i32>, 5>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(256f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-554f)), _wgslsmith_f_op_f32(-576f * func_2(-43684i).a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1), 935f, select(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(29803u, u_input.b, abs(u_input.b)), true));
}

