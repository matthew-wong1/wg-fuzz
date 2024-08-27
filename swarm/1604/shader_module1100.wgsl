struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(-1i, 1i, -43287i));

var<private> global1: array<f32, 8>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec3<bool>(true, true, _wgslsmith_f_op_f32(1816f + _wgslsmith_f_op_f32(-1277f + -1000f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.d.x))));
    var var_1 = 1082f;
    let var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(max(~_wgslsmith_div_vec2_u32(vec2<u32>(40153u, 1u), vec2<u32>(15141u, 15878u)), ~vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 0u)), ~vec2<u32>(67576u, 1u)), vec2<u32>(1u, 1u))), 1u);
    var var_3 = arg_0.a.d.x >= arg_0.a.d.x;
    global1 = array<f32, 8>();
    return Struct_2(arg_0.a);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: vec2<f32>) -> bool {
    let var_0 = Struct_1(0i, u_input.a, -(~max(arg_1.a.c, vec4<i32>(u_input.a, arg_1.a.a, -11032i, -7485i))), _wgslsmith_f_op_vec2_f32(-arg_0.a.d));
    global1 = array<f32, 8>();
    global1 = array<f32, 8>();
    global0 = array<vec3<i32>, 1>();
    var var_1 = Struct_2(func_2(func_2(func_2(Struct_2(arg_0.a)))).a);
    return true;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = any(vec2<bool>(!all(vec2<bool>(false, true)), func_3(Struct_2(Struct_1(-1i, -2147483647i, vec4<i32>(-2147483647i, arg_0, -2950i, u_input.a), vec2<f32>(-448f, global1[_wgslsmith_index_u32(1u, 8u)]))), func_2(Struct_2(Struct_1(arg_0, arg_0, vec4<i32>(62252i, arg_0, arg_0, u_input.a), vec2<f32>(135f, global1[_wgslsmith_index_u32(1u, 8u)])))), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 18666u), 8u)], -2428f))));
    let var_1 = vec3<i32>(arg_0, u_input.a, -(~arg_0));
    let var_2 = _wgslsmith_sub_u32(~(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(1u, 22707u, 73595u, 52063u)) & firstTrailingBit(0u)), _wgslsmith_mod_u32(~116133u, 1u));
    var var_3 = Struct_1(21412i, (func_2(Struct_2(Struct_1(var_1.x, arg_0, vec4<i32>(arg_0, var_1.x, 3702i, u_input.b.x), vec2<f32>(324f, 490f)))).a.c.x | _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -8237i, var_1.x), vec3<i32>(arg_0, arg_0, 42859i))) & -15326i, _wgslsmith_add_vec4_i32(~countOneBits(-vec4<i32>(2147483647i, 5051i, 6810i, arg_0)), reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(22005i, u_input.a, -2147483647i, -30518i), vec4<i32>(58489i, 10130i, arg_0, 0i)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0, u_input.b.x, u_input.b.x, var_1.x), vec4<i32>(var_1.x, -75729i, 0i, u_input.a)), abs(vec4<i32>(var_1.x, arg_0, 2147483647i, arg_0))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(688f, global1[_wgslsmith_index_u32(~4294967295u, 8u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1055f, 488f) + vec2<f32>(-1160f, 1136f))))));
    var_3 = func_2(func_2(func_2(Struct_2(func_2(Struct_2(Struct_1(var_1.x, 2147483647i, var_3.c, var_3.d))).a)))).a;
    return func_2(Struct_2(func_2(func_2(Struct_2(Struct_1(u_input.b.x, arg_0, var_3.c, vec2<f32>(-963f, 1532f))))).a)).a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<f32> {
    global1 = array<f32, 8>();
    global1 = array<f32, 8>();
    var var_0 = arg_1.x;
    var_0 = abs(~1u);
    let var_1 = arg_0.b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(~arg_1.x ^ firstTrailingBit(arg_1.x), 8u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(arg_1.x, 25586u), arg_1.x), 8u)], global1[_wgslsmith_index_u32(61702u, 8u)], _wgslsmith_f_op_f32(-arg_0.d.x)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-467f, global1[_wgslsmith_index_u32(arg_1.x, 8u)], 483f, 1166f)))))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<f32>) -> vec2<bool> {
    global0 = array<vec3<i32>, 1>();
    let var_0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, u_input.b.x, 0i, u_input.b.x), -vec4<i32>(u_input.b.x, u_input.a, u_input.a, -1i)), vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.b.x, u_input.a, 6345i)) ^ 43907i;
    let var_1 = false;
    let var_2 = ~reverseBits(1u);
    var var_3 = min(u_input.a, var_0 ^ firstLeadingBit(56385i));
    return vec2<bool>(!all(vec2<bool>(true, all(vec3<bool>(var_1, false, var_1)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 1>();
    var var_0 = all(func_5(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(~0u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(5538u, 8u)])), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(28071u, 25431u, 9230u), 8u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(5357u, 8u)] + global1[_wgslsmith_index_u32(43088u, 8u)]), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(0u, 8u)]))) - _wgslsmith_f_op_vec4_f32(func_4(func_1(u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 0u, 36183u), vec4<u32>(0u, 22134u, 4294967295u, 22106u), vec4<u32>(4294967295u, 44279u, 23027u, 4294967295u)))))));
    var var_1 = Struct_1(1i, -reverseBits(func_2(Struct_2(Struct_1(23948i, u_input.b.x, vec4<i32>(1i, u_input.a, -13071i, 24050i), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)])))).a.a), ~min(vec4<i32>(~u_input.b.x, u_input.b.x, u_input.b.x << (11678u % 32u), u_input.a & u_input.a), -_wgslsmith_div_vec4_i32(vec4<i32>(-16808i, u_input.b.x, -32162i, 45458i), vec4<i32>(u_input.b.x, u_input.a, 16492i, u_input.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1411f * global1[_wgslsmith_index_u32(4294967295u, 8u)]), _wgslsmith_f_op_f32(step(-1000f, global1[_wgslsmith_index_u32(1u, 8u)]))))));
    var_0 = false;
    global0 = array<vec3<i32>, 1>();
    let var_2 = Struct_2(Struct_1(-2147483647i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, -16598i) ^ select(u_input.b.zy, u_input.b.xy, false), ~vec2<i32>(-2147483647i, 14248i)), var_1.c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)])) - -1000f), 803f)));
    let var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 8u)], -507f))), _wgslsmith_f_op_f32(ceil(2103f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a.d.x), _wgslsmith_f_op_vec4_f32(func_4(Struct_1(u_input.a, var_2.a.c.x, var_1.c, vec2<f32>(-376f, 1000f)), abs(vec4<u32>(var_3, var_3, 30758u, 4294967295u)))).x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -362f), var_1.d.x, -1452f, var_1.d.x) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.d.x, -617f, -460f, -3823f))))))), 15975u, _wgslsmith_f_op_f32(select(var_2.a.d.x, var_1.d.x, false)));
}

