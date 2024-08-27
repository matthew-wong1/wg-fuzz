struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(511f, -13148i), Struct_1(-1455f, 1i), Struct_1(1091f, 1i), Struct_1(-654f, 2147483647i), Struct_1(2943f, -1i), Struct_1(-2194f, -9907i), Struct_1(-130f, -59319i), Struct_1(571f, 1i), Struct_1(-1685f, 2147483647i), Struct_1(-525f, 2147483647i), Struct_1(717f, -1i), Struct_1(1687f, 1i), Struct_1(156f, -28002i), Struct_1(106f, -1i), Struct_1(1285f, 9192i), Struct_1(-1276f, 1i), Struct_1(-2000f, -1i), Struct_1(-1911f, i32(-2147483648)), Struct_1(1000f, 9492i), Struct_1(-326f, 23276i), Struct_1(-455f, -1i), Struct_1(-715f, 6129i));

var<private> global1: Struct_1;

var<private> global2: array<u32, 24> = array<u32, 24>(7137u, 1u, 6303u, 1u, 45064u, 31229u, 1u, 4294967295u, 21363u, 41434u, 1u, 0u, 48358u, 4294967295u, 31171u, 0u, 1u, 4294967295u, 15280u, 92179u, 17514u, 0u, 0u, 2073u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: bool) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 22u)];
    var var_1 = Struct_2(~vec2<u32>(0u, ~(u_input.a.x ^ 15784u)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - -2003f)))), _wgslsmith_dot_vec2_i32(~arg_1 ^ select(u_input.b, arg_1, arg_2), arg_1)), ~(vec2<i32>(-arg_1.x, -1i >> (u_input.a.x % 32u)) >> (reverseBits(_wgslsmith_div_vec2_u32(u_input.a.zx, u_input.a.zz)) % vec2<u32>(32u))), global0[_wgslsmith_index_u32(4294967295u, 22u)]);
    var var_2 = true;
    var var_3 = Struct_2(vec2<u32>(select(_wgslsmith_dot_vec2_u32(vec2<u32>(19266u, 4294967295u), var_1.a), u_input.a.x, all(vec4<bool>(arg_2, arg_2, arg_2, true))), 1u) | vec2<u32>(~0u, select(~4294967295u, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(7686u, 24u)], 4294967295u), all(vec4<bool>(false, arg_2, arg_2, true)))), var_1.d, var_1.c | reverseBits(reverseBits(~var_1.c)), global0[_wgslsmith_index_u32(1u, 22u)]);
    let var_4 = global0[_wgslsmith_index_u32(1u, 22u)];
    return false;
}

fn func_2(arg_0: vec2<u32>) -> vec4<u32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(12338u, 38427u), 22u)];
    global0 = array<Struct_1, 22>();
    let var_1 = func_3(-1000f, vec2<i32>(_wgslsmith_add_i32(var_0.b, global1.b), ~3182i ^ var_0.b), true);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32((abs(~u_input.a.x) | 0u) >> (~u_input.a.x % 32u), firstTrailingBit(countOneBits(~u_input.a.x ^ firstTrailingBit(u_input.a.x)))), 22u)];
    global2 = array<u32, 24>();
    return ~u_input.a;
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1.b.b;
    let var_1 = 1u;
    let var_2 = u_input.a.xxz & u_input.a.zzy;
    var var_3 = _wgslsmith_dot_vec4_u32(max(~(func_2(vec2<u32>(52334u, 7135u)) << (~u_input.a % vec4<u32>(32u))), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_2.x, 17364u, 0u, var_2.x), ~u_input.a, ~u_input.a)), u_input.a);
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a, arg_1.d.a, global1.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global1.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 946f, global1.a, -108f) + vec4<f32>(arg_0, arg_1.d.a, arg_0, arg_0)) + _wgslsmith_div_vec4_f32(vec4<f32>(1458f, -1287f, arg_0, 272f), vec4<f32>(428f, arg_1.d.a, 1235f, arg_1.b.a)))), vec4<bool>(true | all(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(floor(-710f)) >= _wgslsmith_f_op_f32(f32(-1f) * -2102f), func_3(global1.a, arg_1.c, false) | true, 392f < _wgslsmith_f_op_f32(floor(arg_0))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -165f, 1001f, -447f) * vec4<f32>(-133f, 312f, -1301f, global1.a)))))));
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(462f * _wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(arg_0, arg_1.d.a))))), _wgslsmith_dot_vec3_i32(~vec3<i32>(21625i, reverseBits(2147483647i), -18868i), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c.yyx, u_input.c.ywx), ~u_input.c.wyy), u_input.c.xwy)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = ~(~0u);
    var var_1 = func_3(_wgslsmith_f_op_f32(select(func_1(global1.a, Struct_2(_wgslsmith_sub_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, var_0)), func_1(arg_1.a, Struct_2(vec2<u32>(var_0, 1586u), arg_1, u_input.b, Struct_1(722f, -16061i))), select(vec2<i32>(u_input.b.x, -1i), u_input.b, vec2<bool>(false, true)), global0[_wgslsmith_index_u32(reverseBits(4294967295u), 22u)])).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1556f))), all(vec2<bool>(true, true)))), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_1.b, arg_0.x), reverseBits(arg_1.b)) ^ -_wgslsmith_div_i32(42794i, u_input.c.x), arg_0.x), true || any(vec2<bool>(true, global1.b == arg_0.x)));
    var var_2 = ~u_input.c.yxx;
    let var_3 = Struct_2(u_input.a.wx, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(312f - 1f) + _wgslsmith_f_op_f32(f32(-1f) * -1412f)), Struct_2(vec2<u32>(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(var_0, 24u)], 24u)], 1u ^ global2[_wgslsmith_index_u32(4294967295u, 24u)]), func_1(1622f, Struct_2(u_input.a.wz, Struct_1(global1.a, arg_1.b), arg_0, Struct_1(1068f, 56i))), (arg_0 << (u_input.a.yw % vec2<u32>(32u))) ^ ~vec2<i32>(var_2.x, 1i), global0[_wgslsmith_index_u32(var_0, 22u)])), var_2.xz, global0[_wgslsmith_index_u32(1u, 22u)]);
    var_2 = _wgslsmith_add_vec3_i32(abs(vec3<i32>(arg_0.x, global1.b, ~arg_1.b)), select(_wgslsmith_div_vec3_i32(vec3<i32>(-2338i, 1i, 16064i) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(var_3.a.x, 1u, 1u), vec3<u32>(1u, var_0, 1u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, var_3.c.x, 2147483647i) << (vec3<u32>(global2[_wgslsmith_index_u32(var_3.a.x, 24u)], u_input.a.x, 0u) % vec3<u32>(32u)), vec3<i32>(-4872i, -2147483647i, 0i))), reverseBits(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.b, 0i, 0i), vec3<i32>(-1i, -23597i, -7390i), u_input.c.wwz), u_input.c.wyw)), select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), true), vec3<bool>(select(true, false, true), var_3.b.a >= -177f, select(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))));
    return ~select(_wgslsmith_sub_i32(min(var_3.c.x, 2147483647i), ~1i) | -55778i, -34171i, all(vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.yy;
    global0 = array<Struct_1, 22>();
    let var_1 = Struct_1(global1.a, global1.b);
    var var_2 = ~_wgslsmith_mod_i32(func_4(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, -55284i), vec2<i32>(u_input.b.x, u_input.c.x))), func_1(1616f, Struct_2(vec2<u32>(4294967295u, var_0.x), var_1, vec2<i32>(u_input.b.x, 0i), var_1))), abs(global1.b));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a)))))), global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-941f, -1429f)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(179f, var_1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a))))))));
}

