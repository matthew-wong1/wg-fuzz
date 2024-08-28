struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 19>;

var<private> global1: f32 = 1000f;

var<private> global2: array<vec2<f32>, 24>;

var<private> global3: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(0u, 33799u, 0u), vec3<u32>(1u, 70508u, 859u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> f32 {
    let var_0 = vec4<bool>(all(select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, all(vec4<bool>(arg_0, true, arg_0, true)), !arg_0), 700f < _wgslsmith_f_op_f32(trunc(-1312f)))), arg_0, arg_0, !(!arg_0));
    var var_1 = ~global3[_wgslsmith_index_u32(~countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(1u, 4294967295u, u_input.a, 0u)), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u))), 2u)];
    var var_2 = Struct_4(-20055i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1427f * 656f))), -499f) + -1815f), var_0.x, true);
    var var_3 = ~u_input.a;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(sign(-1086f)), Struct_1(var_1.x, reverseBits(_wgslsmith_mult_u32(var_1.x, ~u_input.a))), abs(_wgslsmith_clamp_vec2_i32(arg_1, max(arg_1, vec2<i32>(arg_1.x, -1i)), ~vec2<i32>(var_2.a, -5347i))) ^ firstLeadingBit(abs(min(arg_1, vec2<i32>(37043i, arg_1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.b))), Struct_1(var_1.x, select(u_input.a, 4294967295u, var_0.x)));
    return _wgslsmith_f_op_f32(866f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_4.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -448f), _wgslsmith_f_op_f32(-636f - var_4.a))), true)) - _wgslsmith_f_op_f32(f32(-1f) * -568f)));
}

fn func_2() -> f32 {
    global2 = array<vec2<f32>, 24>();
    global3 = array<vec3<u32>, 2>();
    var var_0 = Struct_4(16071i, _wgslsmith_f_op_f32(-148f - _wgslsmith_f_op_f32(func_3(all(vec3<bool>(false, true, false)), -_wgslsmith_sub_vec2_i32(vec2<i32>(-4859i, 57220i), vec2<i32>(21173i, 2147483647i))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(217f)) + _wgslsmith_f_op_f32(max(-842f, -1000f))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 1048f)) * -1262f)), true);
    global2 = array<vec2<f32>, 24>();
    let var_1 = Struct_4(-_wgslsmith_sub_i32(min(firstLeadingBit(var_0.a), var_0.a), firstLeadingBit(var_0.a >> (u_input.a % 32u))), _wgslsmith_div_f32(460f, var_0.b), var_0.d, all(!(!vec4<bool>(var_0.d, true, true, var_0.d))));
    return 1043f;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: vec4<u32>) -> vec2<u32> {
    global0 = array<vec3<i32>, 19>();
    global1 = arg_0;
    global2 = array<vec2<f32>, 24>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) + 1f) - -197f), arg_0);
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_add_i32(-8938i, -27243i), ~1i) << (~u_input.a % 32u);
    return countOneBits(~(~arg_3.zz));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> i32 {
    var var_0 = countOneBits(~vec3<u32>(53379u, u_input.a, ~0u)) & (vec3<u32>(~(~u_input.a), 21182u, 4294967295u) << (vec3<u32>(u_input.a, 39464u, _wgslsmith_sub_u32(u_input.a, u_input.a)) % vec3<u32>(32u)));
    let var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) - arg_0.x), Struct_2(_wgslsmith_f_op_f32(func_2()), Struct_1(1u, select(_wgslsmith_sub_u32(u_input.a, 0u), min(u_input.a, u_input.a), var_0.x >= 56296u)), vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -19889i, 9255i), 11407i), _wgslsmith_f_op_f32(func_3(true, -abs(vec2<i32>(-17756i, 2147483647i)))), Struct_1(1u, ~select(4294967295u, var_0.x, false))), arg_1, ~reverseBits(~(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-arg_0.x), Struct_1(_wgslsmith_clamp_u32(var_0.x >> (~var_1.x % 32u), 106804u, u_input.a), 4294967295u), vec2<i32>(max(2476i >> (0u % 32u), -2147483647i) << (~(~var_1.x) % 32u), _wgslsmith_div_i32(abs(~34301i), max(2147483647i, ~0i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * arg_0.x), Struct_1(countOneBits(1u), ~(min(var_0.x, var_0.x) >> (114120u % 32u))));
    let var_3 = arg_0.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(529f, -314f)), _wgslsmith_f_op_f32(-arg_0.x), var_2.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, var_2.a, -941f))), any(vec2<bool>(arg_1, false)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3, var_2.d, var_3), vec3<f32>(var_3, var_3, arg_0.x), true))))))));
    return _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-68619i, var_2.c.x), var_2.c.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(~(~13909i), var_2.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), var_2.c) | var_2.c.x), ~countOneBits(_wgslsmith_dot_vec2_i32(var_2.c, vec2<i32>(2147483647i, var_2.c.x)))));
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    global0 = array<vec3<i32>, 19>();
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -206f)))))));
    var var_0 = min(arg_0.a, firstTrailingBit(firstTrailingBit(2147483647i))) >> (38694u % 32u);
    var var_1 = Struct_3(Struct_2(arg_0.b, Struct_1(0u, 0u), vec2<i32>(-select(arg_0.a, arg_0.a, false), arg_0.a), _wgslsmith_f_op_f32(-arg_0.b), Struct_1(62158u, u_input.a)), Struct_2(_wgslsmith_f_op_f32(ceil(arg_0.b)), Struct_1(u_input.a, abs(~u_input.a)), _wgslsmith_add_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(45746u, 19u)], global0[_wgslsmith_index_u32(10851u, 19u)]), _wgslsmith_mult_i32(-492i, -14475i))), arg_0.b, Struct_1(reverseBits(4294967295u), 4630u)), !vec3<bool>(arg_0.d, true, arg_0.d));
    global3 = array<vec3<u32>, 2>();
    return Struct_1(~((u_input.a >> ((20515u & var_1.b.e.b) % 32u)) & countOneBits(u_input.a | var_1.b.e.b)), ~(_wgslsmith_dot_vec4_u32(~vec4<u32>(85611u, 1u, 0u, var_1.b.e.a), max(vec4<u32>(24323u, u_input.a, var_1.b.b.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, var_1.b.e.b))) | _wgslsmith_mod_u32(u_input.a, _wgslsmith_div_u32(u_input.a, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_4(_wgslsmith_add_i32(_wgslsmith_mult_i32(1i, -1i), (i32(-1i) * -2147483647i) & func_1(vec2<f32>(1352f, -448f), true)), -1071f, true, true || (any(vec2<bool>(false, true)) || true)));
    let var_1 = Struct_1(~_wgslsmith_mult_u32(func_5(Struct_4(-1i, 677f, false, false)).a, u_input.a), func_5(Struct_4(-2147483647i, 318f, any(vec2<bool>(true, true)), !any(vec4<bool>(false, false, false, false)))).b);
    var var_2 = ~(~select(i32(-1i) * -26348i, 0i, any(vec2<bool>(true, false))));
    global3 = array<vec3<u32>, 2>();
    var var_3 = ~abs(global0[_wgslsmith_index_u32(~var_1.a, 19u)]);
    var var_4 = Struct_3(Struct_2(_wgslsmith_f_op_f32(func_2()), var_1, vec2<i32>(0i, var_3.x), -700f, Struct_1(~_wgslsmith_sub_u32(var_0.a, var_1.a), 4294967295u)), Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2()))), Struct_1(~u_input.a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(12723u, var_1.a, u_input.a), ~u_input.a)), reverseBits(var_3.xz), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -146f))), Struct_1(36417u, _wgslsmith_mod_u32(u_input.a | var_1.b, ~0u))), vec3<bool>(all(vec3<bool>(0u != var_1.a, true, select(true, false, false))), true, var_3.x != select(i32(-1i) * -5567i, -2147483647i, true)));
    var var_5 = vec2<bool>(true, _wgslsmith_mult_i32(~(~var_3.x), var_3.x) <= var_4.b.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, ~(vec3<u32>(firstTrailingBit(849u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_4.b.e.b, 1u), vec2<u32>(26559u, var_0.b)), _wgslsmith_div_u32(var_0.a, var_4.a.b.b)) | global3[_wgslsmith_index_u32(var_0.a, 2u)]));
}

