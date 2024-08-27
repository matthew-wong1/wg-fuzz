struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: array<f32, 28>;

var<private> global2: array<f32, 20>;

var<private> global3: array<u32, 7> = array<u32, 7>(33166u, 17757u, 1655u, 5645u, 4294967295u, 11238u, 1u);

var<private> global4: Struct_1 = Struct_1(1050f, vec4<f32>(-1283f, 468f, -1000f, 461f), -1431i, 2513u, vec3<f32>(2062f, 1348f, -210f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<bool>) -> f32 {
    global1 = array<f32, 28>();
    let var_0 = vec4<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(firstLeadingBit(11198u), ~u_input.a.x, ~7838u), _wgslsmith_mult_vec3_u32(u_input.a, ~vec3<u32>(arg_1, global4.d, 37656u))), _wgslsmith_dot_vec4_u32(select((vec4<u32>(36731u, u_input.a.x, 1u, arg_1) & vec4<u32>(51028u, u_input.a.x, 17120u, global4.d)) >> ((vec4<u32>(u_input.a.x, 18694u, u_input.a.x, arg_1) ^ vec4<u32>(0u, 22820u, 4294967295u, global4.d)) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25808u, 7u)], 7u)], u_input.a.x, arg_1, 32178u)) ^ firstLeadingBit(vec4<u32>(3545u, 0u, global4.d, 0u)), arg_2.x && false), ~(~vec4<u32>(global3[_wgslsmith_index_u32(arg_1, 7u)], 24750u, 77396u, 1u))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(~countOneBits(4294967295u)), countOneBits(~1u)), 7u)]);
    var var_1 = Struct_2(Struct_1(218f, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global4.b, _wgslsmith_div_vec4_f32(global4.b, vec4<f32>(-227f, global2[_wgslsmith_index_u32(arg_1, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global4.a))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], -216f, global1[_wgslsmith_index_u32(arg_1, 28u)], -733f))))), global4.c, ~global4.d, _wgslsmith_f_op_vec3_f32(trunc(global4.e))));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, ~var_0.x), _wgslsmith_dot_vec2_u32(var_0.zy, min(vec2<u32>(21281u, 14456u), min(vec2<u32>(arg_1, u_input.a.x) | vec2<u32>(29943u, 86267u), u_input.a.zy << (vec2<u32>(var_1.a.d, global3[_wgslsmith_index_u32(50893u, 7u)]) % vec2<u32>(32u))))));
    let var_3 = Struct_2(var_1.a);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.a)))))));
}

fn func_2() -> Struct_2 {
    global1 = array<f32, 28>();
    global4 = Struct_1(_wgslsmith_f_op_f32(select(global4.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 28u)]) * 856f), any(vec2<bool>(u_input.a.x == global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)], any(vec2<bool>(true, true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global4.b)))), 6612i, 0u, vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(select(global4.d, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.d, 7u)], 7u)], 7u)], false), global4.d), 7u)], 20u)] + 187f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(209f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1448f) - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(144563u, 20u)] + global2[_wgslsmith_index_u32(0u, 20u)]))), _wgslsmith_f_op_f32(f32(-1f) * -732f)));
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global4.d, 28u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-700f, _wgslsmith_f_op_f32(func_3(false, 1u, vec2<bool>(true, true))), 202f, 1f)), global4.c & _wgslsmith_mult_i32(global4.c, 1i), u_input.a.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(global4.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global4.b.zzw, global4.e)))))));
    var var_1 = Struct_1(-132f, vec4<f32>(var_0.a.a, global4.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-677f, _wgslsmith_f_op_f32(var_0.a.e.x * 857f))) * _wgslsmith_f_op_f32(func_3(true, 65982u, select(vec2<bool>(false, false), vec2<bool>(false, false), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, 25001u, vec2<bool>(false, false))) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 28u)])))), (global4.c << (~_wgslsmith_dot_vec4_u32(vec4<u32>(67072u, u_input.a.x, global4.d, global4.d), vec4<u32>(1u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.a.d, 7u)], 7u)], 43292u)) % 32u)) << (_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(max(abs(u_input.a.x), _wgslsmith_mod_u32(global4.d, var_0.a.d)), 7u)], _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 61514u, 17522u), vec4<u32>(global4.d, global4.d, global4.d, global3[_wgslsmith_index_u32(61314u, 7u)]), vec4<u32>(var_0.a.d, u_input.a.x, u_input.a.x, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global4.d, var_0.a.d, u_input.a.x, var_0.a.d), vec4<u32>(var_0.a.d, 60972u, 53496u, var_0.a.d), vec4<u32>(57574u, global4.d, 0u, 111620u))), 1u >> (global4.d % 32u)) % 32u), firstLeadingBit(1u), var_0.a.b.yxy);
    let var_2 = vec4<u32>(_wgslsmith_add_u32(95541u, firstTrailingBit(abs(0u))) >> (1u % 32u), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.d, 28470u), ~(vec2<u32>(0u, var_1.d) ^ vec2<u32>(4294967295u, 50095u)))), _wgslsmith_dot_vec2_u32(u_input.a.yz ^ vec2<u32>(reverseBits(74634u), global4.d), u_input.a.zx), 4294967295u);
    return Struct_2(var_0.a);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = -516f;
    var var_2 = var_0.a.b;
    var var_3 = Struct_2(func_2().a);
    return Struct_1(-1000f, var_0.a.b, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(global4.d, 5u)], global4.c), -54655i, ~0i), vec3<i32>(_wgslsmith_mult_i32(-4846i, var_0.a.c), arg_0, i32(-1i) * -19971i)), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-28137i, var_0.a.c, -6059i)), vec3<i32>(-1i, -global0[_wgslsmith_index_u32(u_input.a.x, 5u)], func_2().a.c))), 48620u, _wgslsmith_div_vec3_f32(global4.e, _wgslsmith_f_op_vec3_f32(var_3.a.e + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, global2[_wgslsmith_index_u32(global4.d, 20u)], 293f) + vec3<f32>(171f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_3.a.d, 7u)], 20u)], 1500f)), _wgslsmith_f_op_vec3_f32(select(var_2.zxx, var_2.wxx, false)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(2147483647i << (min(4294967295u, _wgslsmith_add_u32(4294967295u, u_input.a.x)) % 32u)));
    global3 = array<u32, 7>();
    global2 = array<f32, 20>();
    var var_1 = select(vec2<bool>(!all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true))), !all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))), select(vec2<bool>(true, !(global3[_wgslsmith_index_u32(22685u, 7u)] > global4.d)), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), true), true), true), var_0.a.e.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -166f) * _wgslsmith_f_op_f32(-var_0.a.e.x)) - 176f));
    let var_2 = _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(4294967295u, 5u)], global4.c, -38061i), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_0.a.c, global0[_wgslsmith_index_u32(0u, 5u)], var_0.a.c), vec4<i32>(global4.c, -1i, 60516i, -9581i)))) ^ ((reverseBits(vec4<i32>(-22561i, 6622i, 19611i, var_0.a.c)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_0.a.c, 78467i, global4.c), vec4<i32>(24272i, var_0.a.c, global0[_wgslsmith_index_u32(global4.d, 5u)], 2147483647i))) << (max(min(vec4<u32>(global4.d, global3[_wgslsmith_index_u32(u_input.a.x, 7u)], global4.d, var_0.a.d), vec4<u32>(global3[_wgslsmith_index_u32(var_0.a.d, 7u)], global3[_wgslsmith_index_u32(37571u, 7u)], 31746u, global3[_wgslsmith_index_u32(1u, 7u)])), select(vec4<u32>(6305u, var_0.a.d, 1u, 27995u), vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<bool>(false, true, true, true))) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(-(_wgslsmith_mod_vec4_i32(vec4<i32>(-32194i, var_0.a.c, -40044i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(51434u, 7u)], 5u)]), vec4<i32>(-1i, 12409i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 7u)], 5u)], global4.c)) & ~vec4<i32>(-1i, 44163i, global4.c, global4.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.c, 0i, 0i, 8629i), firstTrailingBit(vec4<i32>(global4.c, global0[_wgslsmith_index_u32(1u, 5u)], var_0.a.c, global4.c))) & abs(_wgslsmith_add_vec4_i32(vec4<i32>(10708i, global4.c, 3359i, 0i), vec4<i32>(0i, -16874i, global4.c, global4.c)))));
    let var_3 = _wgslsmith_f_op_f32(-216f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1484f - 1000f)))), _wgslsmith_f_op_f32(var_0.a.b.x + -1608f))));
    let x = u_input.a;
    s_output = StorageBuffer(-101f);
}

