struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> u32 {
    let var_0 = Struct_2(arg_1.a & _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(53088u, 54133u, 0u, u_input.d) ^ arg_1.a), arg_1.a), global0[_wgslsmith_index_u32(0u, 6u)], arg_1.c);
    global1 = array<Struct_1, 10>();
    var var_1 = _wgslsmith_mult_i32(u_input.c, -11439i);
    let var_2 = global0[_wgslsmith_index_u32(u_input.d, 6u)];
    var var_3 = select(min(~0i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.b, u_input.b)), -vec2<i32>(u_input.b, u_input.c))), reverseBits(_wgslsmith_sub_i32(max(u_input.b, u_input.c), u_input.c)), var_2.a.x) & (select(u_input.c, u_input.c, false) & u_input.c);
    return min(_wgslsmith_clamp_u32(45770u, arg_1.a.x, ~44688u), _wgslsmith_dot_vec4_u32(abs(var_0.a) | vec4<u32>(arg_1.a.x, var_0.a.x, var_0.a.x << (4294967295u % 32u), 1u), arg_1.a));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: u32) -> i32 {
    global1 = array<Struct_1, 10>();
    var var_0 = Struct_2(abs(max(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(23443u, u_input.a.x, 47994u, u_input.d), vec4<u32>(38150u, arg_2, 0u, 4294967295u), vec4<u32>(4294967295u, 67074u, arg_2, 29294u))), vec4<u32>(4294967295u, 1u, _wgslsmith_clamp_u32(u_input.a.x, arg_1, 11569u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(arg_2, arg_0, 1u))))), Struct_1(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, arg_0 > arg_1), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), -12803i >= u_input.c))), Struct_1(vec3<bool>(true, true, true)));
    return _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.b, ~u_input.b, u_input.b, _wgslsmith_mult_i32(-18611i, u_input.c)), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(29596i, u_input.b), _wgslsmith_sub_i32(-10939i, u_input.b)), ~61586i, -(~49177i), u_input.b)), _wgslsmith_add_vec4_i32(~min(vec4<i32>(11660i, u_input.b, -10012i, u_input.c), min(vec4<i32>(10145i, 2147483647i, 2147483647i, 1i), vec4<i32>(2147483647i, u_input.b, 2147483647i, u_input.b))), vec4<i32>(~u_input.c, firstTrailingBit(_wgslsmith_div_i32(u_input.c, 12787i)), u_input.c, -u_input.c)));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0)), arg_0, _wgslsmith_f_op_f32(arg_0 * arg_0)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(591f, arg_0, -1048f) - vec3<f32>(arg_0, -602f, -1680f))) + vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(trunc(arg_0)), 861f))))));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(-1680f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -445f))), var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, var_0.x, arg_0, -633f), vec4<f32>(var_0.x, var_0.x, 1402f, var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-781f, arg_0, -697f, 721f), vec4<f32>(var_0.x, -833f, arg_0, 313f)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(814f, 1194f, var_0.x, arg_0))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -568f, var_0.x, -372f) * vec4<f32>(arg_0, arg_0, var_0.x, -371f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, var_0.x, 1807f, 586f))), vec4<f32>(var_0.x, arg_0, var_0.x, 1529f)))));
    let var_2 = func_4(u_input.d, ~func_3(Struct_1(vec3<bool>(true, true, true)), Struct_2(~vec4<u32>(7507u, u_input.d, 6397u, 76533u), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, false))), var_1), 1u);
    var var_3 = vec4<i32>(var_2, _wgslsmith_div_i32(0i, u_input.b), var_2, _wgslsmith_mod_i32(-5903i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(~0i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 1i), ~vec2<i32>(u_input.c, u_input.b)))));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.xz), 6u)];
    return var_2;
}

fn func_1() -> vec2<u32> {
    global0 = array<Struct_1, 6>();
    var var_0 = Struct_1(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(!select(true, false, false), all(vec3<bool>(false, true, false)), true), vec3<bool>(any(vec4<bool>(true, true, false, true)), ~u_input.c >= (4980i ^ u_input.c), any(vec3<bool>(true, true, true)))));
    var var_1 = -596f;
    let var_2 = -_wgslsmith_mod_vec4_i32(-((vec4<i32>(u_input.c, -1i, u_input.c, -50678i) << (vec4<u32>(u_input.d, u_input.a.x, 12401u, u_input.d) % vec4<u32>(32u))) & ~vec4<i32>(u_input.b, -32841i, -26066i, u_input.b)), vec4<i32>(u_input.b, _wgslsmith_div_i32(-2147483647i ^ u_input.c, i32(-1i) * -5775i), func_2(-1000f), ~select(48215i, -15610i, var_0.a.x)));
    global1 = array<Struct_1, 10>();
    return vec2<u32>(_wgslsmith_add_u32(u_input.d, 1u & max(u_input.a.x, min(8808u, 1u))), ~(~u_input.a.x >> ((u_input.d << (u_input.a.x % 32u)) % 32u)) >> (~(~u_input.a.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 6>();
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    let var_0 = ~max(func_1(), vec2<u32>(4294967295u, u_input.a.x));
    var var_1 = true;
    let var_2 = Struct_2(vec4<u32>(1u, var_0.x, ~u_input.d, 1u), Struct_1(vec3<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, var_0.x, var_0.x), vec4<u32>(var_0.x, 63329u, u_input.a.x, var_0.x)) == _wgslsmith_add_u32(31141u, 80948u))), Struct_1(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), all(vec2<bool>(true, false)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(568f - _wgslsmith_f_op_f32(f32(-1f) * -985f)), 392f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-2252f)))), _wgslsmith_f_op_f32(floor(1f)))));
    var var_4 = Struct_1(select(var_2.b.a, vec3<bool>(all(select(vec2<bool>(var_2.c.a.x, var_2.c.a.x), var_2.c.a.zz, true)), all(var_2.c.a.yz), var_2.c.a.x), !select(vec3<bool>(true, true, var_2.b.a.x), select(var_2.c.a, var_2.b.a, var_2.b.a.x), select(var_2.b.a, var_2.c.a, var_2.c.a))));
    var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(1022f, 803f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), var_3.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + -258f))), 1307f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(824f, 231f, -615f, -2195f) * vec4<f32>(var_3.x, var_3.x, var_3.x, 803f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(336f, var_3.x, 1338f, var_3.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.x, var_3.x, -1495f, var_3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, -365f, var_3.x)))), select(select(vec4<bool>(false, var_4.a.x, var_4.a.x, var_2.b.a.x), vec4<bool>(false, true, var_2.b.a.x, true), vec4<bool>(true, var_4.a.x, true, var_4.a.x)), vec4<bool>(var_4.a.x, true, true, var_4.a.x), vec4<bool>(var_2.c.a.x, false, var_4.a.x, var_2.c.a.x))))), firstLeadingBit(vec2<i32>(-1i, 30323i)));
}

