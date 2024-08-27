struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec3<i32>(0i, 21152i, 1i)), Struct_3(vec3<i32>(44001i, 0i, i32(-2147483648))), Struct_3(vec3<i32>(-22612i, 1i, -26775i)), Struct_3(vec3<i32>(-29268i, 1i, -1i)), Struct_3(vec3<i32>(4856i, -24699i, 41155i)), Struct_3(vec3<i32>(-1i, 0i, 2147483647i)), Struct_3(vec3<i32>(i32(-2147483648), -33397i, 31704i)), Struct_3(vec3<i32>(2147483647i, -29430i, 2147483647i)), Struct_3(vec3<i32>(-1i, -9440i, 20362i)), Struct_3(vec3<i32>(44324i, -1i, -6223i)), Struct_3(vec3<i32>(2147483647i, -1i, 2147483647i)), Struct_3(vec3<i32>(-38883i, -1i, 2147483647i)), Struct_3(vec3<i32>(-5855i, 0i, -1i)), Struct_3(vec3<i32>(-25609i, 0i, i32(-2147483648))), Struct_3(vec3<i32>(-42611i, -9405i, 14311i)), Struct_3(vec3<i32>(-5410i, 41029i, -1485i)), Struct_3(vec3<i32>(-1i, 0i, 1i)), Struct_3(vec3<i32>(1i, -1i, 0i)), Struct_3(vec3<i32>(1i, 30937i, 0i)), Struct_3(vec3<i32>(-1i, -82139i, -45051i)));

var<private> global1: array<f32, 15> = array<f32, 15>(578f, 373f, 1394f, 609f, -795f, 1000f, -1000f, 1684f, 1198f, -1646f, 1177f, -431f, -3507f, 403f, -645f);

var<private> global2: array<f32, 2>;

var<private> global3: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> u32 {
    global3 = Struct_3(abs(vec3<i32>(abs(u_input.a), arg_1.a.x, -select(u_input.e.x, 10659i, true))));
    global3 = global0[_wgslsmith_index_u32(countOneBits(firstTrailingBit(0u)), 20u)];
    let var_0 = Struct_4(arg_1, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 2u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 15u)] - -228f)))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(16982u, 54180u, u_input.c.x)) ^ ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 43407u), vec3<u32>(u_input.c.x, 59134u, u_input.c.x)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(global3.a.x, -global3.a.x, global3.a.x << (44399u % 32u)), -1314i), ~vec4<i32>(u_input.b, 53423i, -1i, -1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], 1380f))), vec2<f32>(352f, global1[_wgslsmith_index_u32(4294967295u, 15u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(0u, 2u)], -1248f) - vec2<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], -2222f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], -1030f), global1[_wgslsmith_index_u32(u_input.c.x, 15u)]));
    global3 = Struct_3(var_0.b.d.wyz);
    global0 = array<Struct_3, 20>();
    return u_input.c.x << (4084u % 32u);
}

fn func_2() -> f32 {
    global2 = array<f32, 2>();
    var var_0 = u_input.b;
    global1 = array<f32, 15>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 15u)] * global2[_wgslsmith_index_u32(u_input.c.x, 2u)])))) * global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(30201u, u_input.c.x), u_input.c.x) & func_3(reverseBits(u_input.d), global0[_wgslsmith_index_u32(~0u, 20u)]), 2u)]), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(func_3(-539i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), 20u)]), 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)]), global1[_wgslsmith_index_u32(~4294967295u, 15u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(7521u, 19009u)), vec2<u32>(4294967295u, u_input.c.x))), 2u)] + -619f));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -421f))), ~min(~vec3<u32>(u_input.c.x, u_input.c.x, 101066u), vec3<u32>(55575u, u_input.c.x, 0u)), u_input.b, vec4<i32>(~global3.a.x << (0u % 32u), -80127i, global3.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.b, u_input.d), -vec4<i32>(u_input.d, u_input.d, -1i, -31659i)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], 630f))), vec2<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 15u)])), -434f), false)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(max(var_2.a.b, vec3<u32>(u_input.c.x, u_input.c.x, var_2.a.b.x)), vec3<u32>(0u, 0u, var_2.a.b.x)), 15u)])));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(u_input.c.x, ~func_3(-1i, Struct_3(vec3<i32>(-10898i, 42980i, arg_3.c)))) & u_input.c.x, select(~(~reverseBits(u_input.c.x)), ~1u, false), 0u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_3.b.x, arg_3.b.x, arg_3.b.x), ~(~vec3<u32>(4294967295u, u_input.c.x, u_input.c.x))), arg_3.b));
    let var_1 = arg_0.zy;
    let var_2 = global0[_wgslsmith_index_u32(abs(var_0.x), 20u)];
    let var_3 = vec3<i32>(-2899i, _wgslsmith_dot_vec2_i32(global3.a.zy, vec2<i32>(_wgslsmith_div_i32(-arg_0.x, _wgslsmith_dot_vec2_i32(var_2.a.yz, arg_1.yy)), u_input.a)), _wgslsmith_mult_i32(global3.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-arg_3.d, _wgslsmith_sub_vec4_i32(vec4<i32>(-36794i, 49261i, global3.a.x, -1i), vec4<i32>(-65279i, -2147483647i, arg_3.d.x, global3.a.x))), -38609i)));
    let var_4 = ~(~46148u);
    return Struct_1(-925f, var_0.yww, _wgslsmith_sub_i32(0i, 2147483647i), arg_0);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(~(i32(-1i) * -1i)), _wgslsmith_mod_i32(-1i, _wgslsmith_mult_i32(global3.a.x ^ global3.a.x, max(10996i, 46548i)))), u_input.e.xz);
    let var_1 = !(!((global3.a.x > -26290i) && (true & select(false, false, true))));
    var var_2 = _wgslsmith_f_op_f32(1296f + arg_1.x);
    let var_3 = _wgslsmith_add_vec3_i32(global3.a, u_input.e);
    var var_4 = ~var_3.x << (reverseBits(1u) % 32u);
    return func_4(reverseBits(vec4<i32>(0i, 1i, _wgslsmith_dot_vec3_i32(var_3, u_input.e), -2147483647i) << (_wgslsmith_mod_vec4_u32(vec4<u32>(10028u, arg_0.x, u_input.c.x, u_input.c.x) | vec4<u32>(u_input.c.x, 0u, u_input.c.x, 17413u), ~vec4<u32>(4294967295u, 4294967295u, arg_0.x, u_input.c.x)) % vec4<u32>(32u))), vec4<i32>(u_input.e.x, u_input.b << (~(u_input.c.x >> (4294967295u % 32u)) % 32u), global3.a.x, _wgslsmith_sub_i32(-1i, 1i)), vec4<bool>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 15u)])) <= _wgslsmith_f_op_f32(func_2()), false, abs(~49072u) == ~u_input.c.x), Struct_1(-1000f, ~(~(vec3<u32>(arg_0.x, arg_0.x, 16276u) << (vec3<u32>(4294967295u, 1u, u_input.c.x) % vec3<u32>(32u)))), u_input.d >> (~50323u % 32u), vec4<i32>(firstTrailingBit(1i), 8971i, max(countOneBits(var_3.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-8462i, 0i, u_input.a, var_3.x), vec4<i32>(-22268i, 19150i, -10826i, var_3.x))), -2457i)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<u32>) -> Struct_2 {
    global0 = array<Struct_3, 20>();
    var var_0 = _wgslsmith_sub_vec4_i32(arg_1.d, _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, arg_1.c, -83435i), vec4<i32>(-6650i, arg_0.a.d.x, -abs(arg_0.a.d.x), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(arg_1.d.wyw, vec3<i32>(-2147483647i, -20794i, u_input.a)), global3.a))));
    let var_1 = true;
    var_0 = select(vec4<i32>(var_0.x | abs(_wgslsmith_dot_vec3_i32(global3.a, u_input.e)), -1i, _wgslsmith_div_i32(1i, -var_0.x) ^ _wgslsmith_div_i32(arg_1.d.x, 19206i), arg_1.d.x >> (72956u % 32u)), countOneBits(select(arg_0.a.d, _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.d.x, global3.a.x, arg_0.a.d.x, -1i), arg_1.d), vec4<bool>(var_1, false, false, var_0.x <= var_0.x))), vec4<bool>(true, u_input.a >= var_0.x, any(select(select(vec4<bool>(var_1, true, true, var_1), vec4<bool>(var_1, false, false, true), vec4<bool>(var_1, false, false, false)), select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(false, true, false, true), vec4<bool>(var_1, var_1, true, true)), 1i < global3.a.x)), false));
    global1 = array<f32, 15>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a;
    var var_1 = _wgslsmith_mult_vec3_i32(~global3.a, vec3<i32>(u_input.a, var_0.x, 1i));
    var var_2 = -675f;
    var_1 = global3.a;
    var var_3 = func_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(4734u, 2u)])), 352f)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.c.x, 29339u), vec3<u32>(u_input.c.x, 0u, u_input.c.x)), ~vec3<u32>(u_input.c.x, u_input.c.x, 0u)), 2147483647i, vec4<i32>(-20014i, u_input.d, var_0.x, _wgslsmith_div_i32(u_input.b, global3.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], global1[_wgslsmith_index_u32(reverseBits(u_input.c.x), 15u)]))), func_1(~(~countOneBits(u_input.c)), vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 15u)]), 175f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(383f, global2[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)]))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 2u)] - global1[_wgslsmith_index_u32(u_input.c.x, 15u)]), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), 15u)], global2[_wgslsmith_index_u32(u_input.c.x, 2u)]))))), vec2<u32>(func_3(min(var_0.x, 0i) >> (52617u % 32u), global0[_wgslsmith_index_u32(6351u, 20u)]), 4294967295u));
    var_0 = vec3<i32>(firstTrailingBit(var_0.x), -(i32(-1i) * -1i), func_1(vec2<u32>(~var_3.a.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 67183u, u_input.c.x), var_3.a.b) % 32u), u_input.c.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(var_3.b))))).d.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

