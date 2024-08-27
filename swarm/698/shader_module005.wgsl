struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 13>;

var<private> global1: array<bool, 2>;

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(28461u), Struct_2(25189u), Struct_2(4294967295u), Struct_2(0u), Struct_2(8315u), Struct_2(4294967295u), Struct_2(7193u), Struct_2(4294967295u), Struct_2(1u), Struct_2(4294967295u), Struct_2(0u), Struct_2(51711u), Struct_2(15416u), Struct_2(35061u), Struct_2(112142u), Struct_2(24159u), Struct_2(2143u), Struct_2(1u), Struct_2(24187u), Struct_2(62077u), Struct_2(1u), Struct_2(0u), Struct_2(0u), Struct_2(1u), Struct_2(8550u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> f32 {
    let var_0 = -5388i;
    var var_1 = var_0;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-232f, _wgslsmith_f_op_f32(max(-762f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1000f)), 355f, global1[_wgslsmith_index_u32(49030u, 2u)])))))), -150f));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> vec4<u32> {
    global1 = array<bool, 2>();
    global0 = array<vec3<f32>, 13>();
    var var_0 = !arg_1;
    global2 = array<Struct_2, 25>();
    global0 = array<vec3<f32>, 13>();
    return (min(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(1u, 81655u, 1u, 1u)), ~vec4<u32>(0u, 75670u, arg_0.x, arg_0.x)), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(1u, 21770u, u_input.a.x, u_input.d.x)), ~vec4<u32>(arg_0.x, 8640u, arg_0.x, 1u), ~vec4<u32>(u_input.d.x, arg_0.x, arg_0.x, 77706u))) | vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, u_input.d.x, 0u, u_input.d.x), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 11163u, 1959u), vec4<u32>(u_input.d.x, u_input.a.x, u_input.d.x, 0u))), ~_wgslsmith_add_u32(arg_0.x, 4294967295u), arg_0.x, u_input.a.x)) & ~select(abs(vec4<u32>(101695u, u_input.a.x, 83838u, arg_0.x)), vec4<u32>(54807u, arg_0.x, arg_0.x, 12205u) ^ vec4<u32>(0u, 0u, arg_0.x, arg_0.x), true);
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = ~vec3<u32>(arg_0.d.x, u_input.a.x, select(~(~4294967295u), ~_wgslsmith_div_u32(29771u, u_input.a.x), global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(u_input.d.x, 47154u)), 2u)]));
    let var_1 = _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(select(-760f, _wgslsmith_f_op_f32(-arg_0.b.x), true)));
    var var_2 = arg_0;
    global1 = array<bool, 2>();
    let var_3 = arg_0;
    return var_2.b;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1230f * _wgslsmith_div_f32(-672f, 230f)), _wgslsmith_f_op_f32(func_2())) - -1505f)));
    var_0 = _wgslsmith_f_op_f32(step(1041f, 432f));
    var var_1 = Struct_1(vec4<u32>(arg_0, u_input.d.x, ~4294967295u, _wgslsmith_mod_u32(~1u, 33158u ^ u_input.d.x) | u_input.a.x), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_div_vec4_u32(func_3(vec3<u32>(u_input.d.x, 1u, 29385u), global1[_wgslsmith_index_u32(u_input.d.x, 2u)]), ~vec4<u32>(1u, 10802u, u_input.d.x, 88930u)), vec2<f32>(_wgslsmith_f_op_f32(max(1960f, 284f)), -1079f), vec2<i32>(u_input.c, u_input.c), ~(~u_input.d.xz), min(firstTrailingBit(u_input.a), firstTrailingBit(vec2<u32>(arg_0, arg_0)))))), vec2<i32>(-(~u_input.b.x) & ~u_input.c, firstTrailingBit(_wgslsmith_add_i32(-68940i, reverseBits(u_input.c)))), ~(~(~countOneBits(u_input.a))), u_input.d.zz);
    var var_2 = Struct_1(var_1.a, _wgslsmith_div_vec2_f32(vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -416f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.b.x, 1069f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(750f, -1521f) - var_1.b))))), _wgslsmith_mult_vec2_i32(vec2<i32>(-max(var_1.c.x, 4093i), var_1.c.x ^ u_input.b.x), _wgslsmith_add_vec2_i32(abs(~u_input.b), vec2<i32>(_wgslsmith_mod_i32(42842i, u_input.b.x), -var_1.c.x))), vec2<u32>(var_1.a.x, 0u), var_1.e);
    var_1 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(1u, ~_wgslsmith_mod_u32(u_input.d.x, 1u)), firstLeadingBit(arg_0 >> (1u % 32u)), firstLeadingBit(_wgslsmith_mod_u32(var_2.d.x, firstLeadingBit(var_1.a.x))), 24461u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(665f, -276f), var_1.b)))))), var_1.c, u_input.d.xx, vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_2.a, var_2.a), ~vec4<u32>(var_2.a.x, var_2.a.x, arg_0, 17846u)), reverseBits(u_input.a.x)));
    return Struct_2(abs(0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(min(_wgslsmith_dot_vec2_u32(u_input.d.yz, vec2<u32>(u_input.d.x, 0u) | _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), vec2<u32>(4294967295u, 4294967295u))), _wgslsmith_div_u32(~u_input.d.x, 1u)));
    var var_1 = 1i;
    let var_2 = func_1(_wgslsmith_dot_vec2_u32((_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a, var_0.a), u_input.d.xz) >> (func_3(u_input.d, true).yx % vec2<u32>(32u))) | vec2<u32>(36470u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 27448u) ^ u_input.d.zx, u_input.a)));
    let var_3 = false;
    let var_4 = select(select(vec2<bool>(any(vec4<bool>(false, global1[_wgslsmith_index_u32(59429u, 2u)], var_3, var_3)), false), !select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], true), !vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 2u)]), var_3), select(!any(vec4<bool>(true, false, var_3, var_3)), all(vec4<bool>(global1[_wgslsmith_index_u32(var_0.a, 2u)], global1[_wgslsmith_index_u32(var_2.a, 2u)], global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)])) | !var_3, true)), vec2<bool>(var_3, true), global1[_wgslsmith_index_u32(~6596u, 2u)]);
    var var_5 = firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(~(~u_input.c), u_input.c, _wgslsmith_div_i32(1591i, _wgslsmith_div_i32(28225i, u_input.c))), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-2147483647i, u_input.c, 34116i), vec3<i32>(u_input.b.x, -2147483647i, u_input.c)), ~(vec3<i32>(u_input.c, 2147483647i, u_input.b.x) >> (vec3<u32>(0u, 40141u, u_input.d.x) % vec3<u32>(32u))))));
    var var_6 = var_5.x;
    let var_7 = var_5.x;
    var_1 = abs(u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(select((var_2.a ^ (28021u | var_2.a)) ^ var_0.a, 1u, var_4.x), -_wgslsmith_div_vec4_i32(-(~vec4<i32>(-2147483647i, 0i, u_input.c, 0i)), select(-vec4<i32>(var_5.x, var_5.x, 45734i, u_input.b.x), vec4<i32>(-6227i, -45254i, 11275i, 23315i), !vec4<bool>(false, global1[_wgslsmith_index_u32(35190u, 2u)], var_3, global1[_wgslsmith_index_u32(69441u, 2u)]))), u_input.a, u_input.b.x);
}

