struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8>;

var<private> global1: array<Struct_2, 20>;

var<private> global2: array<i32, 24> = array<i32, 24>(-9235i, -13350i, -50240i, -13491i, -26363i, 1011i, i32(-2147483648), 2147483647i, 3031i, 69975i, -44863i, -31441i, 8273i, 2147483647i, -1i, 9510i, -5339i, 1i, i32(-2147483648), -1i, 13159i, 0i, -16866i, i32(-2147483648));

var<private> global3: array<u32, 24> = array<u32, 24>(42516u, 0u, 22220u, 1u, 0u, 1u, 21142u, 1u, 24032u, 0u, 57888u, 4294967295u, 41382u, 21099u, 1u, 1048u, 22797u, 32769u, 6989u, 3528u, 0u, 0u, 0u, 75258u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    var var_1 = select(vec3<bool>(60415u < _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, global3[_wgslsmith_index_u32(arg_0.a, 24u)], 5843u), vec3<u32>(arg_0.a, 1u, u_input.a)), 12179u, _wgslsmith_mult_u32(var_0.a, 59794u)), false, false), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), vec3<bool>(true, true || !any(vec2<bool>(false, false)), all(vec2<bool>(false, 89267u == var_0.a))));
    global0 = array<vec3<i32>, 8>();
    var var_2 = Struct_1(~u_input.a);
    var var_3 = Struct_2(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1563f, -1452f, 358f, 1302f), vec4<f32>(172f, -1000f, 264f, -1512f), vec4<bool>(var_1.x, true, false, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-805f, -875f, 634f, -743f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1148f, 332f, -709f, 1000f), vec4<f32>(116f, 1344f, 1120f, -1603f), any(var_1.zy))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-609f, -285f, 337f, -1957f) + vec4<f32>(1098f, 968f, 573f, -1648f)) - vec4<f32>(442f, 390f, 615f, -114f)))), _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a, var_0.a, var_2.a, arg_0.a), vec4<u32>(11514u, u_input.a, 0u, 26165u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a, 29274u, global3[_wgslsmith_index_u32(30076u, 24u)], global3[_wgslsmith_index_u32(var_0.a, 24u)]) >> (vec4<u32>(var_0.a, var_2.a, 4294967295u, var_2.a) % vec4<u32>(32u)), ~vec4<u32>(22765u, global3[_wgslsmith_index_u32(var_2.a, 24u)], arg_0.a, 4294967295u))) & vec4<u32>(1u, var_2.a, 0u, 6630u), select(vec2<bool>(true, true), var_1.zy, vec2<bool>(true, (37620u == u_input.a) == all(vec4<bool>(var_1.x, var_1.x, false, var_1.x)))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.b.x - var_3.b.x)))))))));
}

fn func_2() -> Struct_1 {
    let var_0 = countOneBits(796u);
    global3 = array<u32, 24>();
    global2 = array<i32, 24>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_1(0u))))), -910f));
    var var_2 = Struct_1((~(~1u) >> (_wgslsmith_clamp_u32(~0u, _wgslsmith_add_u32(4294967295u, global3[_wgslsmith_index_u32(70294u, 24u)]), ~var_0) % 32u)) ^ _wgslsmith_div_u32(~min(0u, global3[_wgslsmith_index_u32(42048u, 24u)]), global3[_wgslsmith_index_u32(36833u, 24u)]));
    return Struct_1(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u) | vec2<u32>(12465u, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(53866u, var_2.a), vec2<u32>(1u, u_input.a)))));
}

fn func_4(arg_0: Struct_1) -> bool {
    global0 = array<vec3<i32>, 8>();
    global2 = array<i32, 24>();
    global1 = array<Struct_2, 20>();
    global2 = array<i32, 24>();
    global2 = array<i32, 24>();
    return true;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1279f, _wgslsmith_f_op_f32(277f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global0 = array<vec3<i32>, 8>();
    global1 = array<Struct_2, 20>();
    let var_1 = !select(vec4<bool>(!(var_0.x <= var_0.x), func_4(func_2()), true, true), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), _wgslsmith_add_u32(u_input.a, u_input.a | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 24u)], 24u)]) <= select(~global3[_wgslsmith_index_u32(0u, 24u)], 1u, all(vec2<bool>(true, true))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-154f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(1000f, var_0.x)))), _wgslsmith_f_op_f32(-var_0.x)));
    return Struct_3(global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], 10457u, 11855u, 8536u), ~vec4<u32>(u_input.a, 69246u, u_input.a, u_input.a)), _wgslsmith_dot_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(36274u, 24u)], 14640u, u_input.a), vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 24u)], global3[_wgslsmith_index_u32(4294967295u, 24u)], 23478u))), 24u)], 20u)], var_1.x, global1[_wgslsmith_index_u32(1u, 20u)]);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<i32>) -> Struct_3 {
    global3 = array<u32, 24>();
    global2 = array<i32, 24>();
    let var_0 = vec2<bool>(select(true, (-2147483647i != _wgslsmith_div_i32(arg_2.x, -6703i)) | arg_1.c.a, arg_0.a.a), arg_0.c.a);
    var var_1 = func_2();
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.c.b), arg_1.c.b);
    return arg_1;
}

fn func_6(arg_0: Struct_3, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1833f);
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(arg_3.b.wy, vec2<f32>(408f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(246f)) * arg_3.b.x)))), _wgslsmith_f_op_vec2_f32(-arg_3.b.ww)));
    var var_2 = -select(~vec4<i32>(arg_2.x, 2147483647i, 2147483647i, 28985i) >> ((vec4<u32>(arg_3.c.x, arg_0.c.c.x, 4294967295u, arg_0.c.c.x) & arg_0.c.c) % vec4<u32>(32u)), vec4<i32>(48812i, i32(-1i) * -1i, countOneBits(1i), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_3.c.x, 24u)], 24u)], 23264u), 24u)], countOneBits(global2[_wgslsmith_index_u32(0u, 24u)]))), vec4<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(arg_0.a.d.x, true, arg_3.d.x), vec3<bool>(arg_0.a.a, arg_3.a, arg_0.c.d.x))), _wgslsmith_f_op_f32(arg_1 - -1553f) != _wgslsmith_div_f32(arg_0.c.b.x, 899f), true, !arg_0.b));
    var var_3 = select(select(!select(!vec3<bool>(arg_3.d.x, arg_0.a.a, true), vec3<bool>(true, true, true), !vec3<bool>(true, arg_3.a, arg_3.a)), select(select(vec3<bool>(arg_3.a, true, arg_0.c.d.x), vec3<bool>(false, arg_0.b, true), arg_1 < 1462f), vec3<bool>(!arg_3.a, var_1.x >= var_1.x, false), select(select(vec3<bool>(false, true, true), vec3<bool>(arg_3.a, arg_3.d.x, arg_0.b), false), vec3<bool>(false, arg_0.a.a, arg_3.d.x), vec3<bool>(true, arg_3.d.x, false))), select(select(select(vec3<bool>(arg_3.d.x, true, arg_3.d.x), vec3<bool>(true, false, false), vec3<bool>(arg_3.d.x, arg_3.a, arg_0.b)), vec3<bool>(arg_3.a, arg_3.d.x, arg_0.b), vec3<bool>(arg_0.a.a, false, true)), select(vec3<bool>(arg_0.b, arg_0.c.a, false), !vec3<bool>(true, arg_3.d.x, arg_0.b), vec3<bool>(false, arg_0.a.a, arg_0.a.a)), !arg_0.a.a)), select(vec3<bool>(all(vec2<bool>(true, true)), arg_3.d.x, arg_3.d.x), select(!select(vec3<bool>(arg_3.a, arg_3.d.x, arg_0.a.a), vec3<bool>(arg_3.d.x, true, true), vec3<bool>(arg_3.d.x, true, false)), select(select(vec3<bool>(arg_3.d.x, arg_3.a, true), vec3<bool>(arg_0.c.d.x, true, true), vec3<bool>(arg_0.c.a, arg_3.d.x, true)), vec3<bool>(arg_3.a, true, false), select(vec3<bool>(arg_0.a.a, arg_0.a.d.x, false), vec3<bool>(arg_3.d.x, arg_0.b, arg_0.c.a), vec3<bool>(arg_3.d.x, false, false))), false & all(vec2<bool>(false, arg_3.a))), !arg_0.c.d.x), false);
    var_0 = _wgslsmith_f_op_f32(arg_0.a.b.x * -676f);
    return func_2();
}

fn func_7(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    global1 = array<Struct_2, 20>();
    global2 = array<i32, 24>();
    var var_0 = true;
    var var_1 = global1[_wgslsmith_index_u32(arg_2.a, 20u)];
    var var_2 = 1i;
    return Struct_3(global1[_wgslsmith_index_u32(~firstTrailingBit(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~47201u, 4294967295u | u_input.a), 24u)]), 20u)], var_1.a, func_1(global0[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_mod_i32(arg_3, arg_3)).a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 20>();
    let var_0 = func_7(~countOneBits(global3[_wgslsmith_index_u32(u_input.a, 24u)] << (30980u % 32u)), !(global3[_wgslsmith_index_u32(0u, 24u)] < _wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(u_input.a, 0u))), func_6(func_5(func_1(vec3<i32>(-14088i, global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(0u, 24u)]), global2[_wgslsmith_index_u32(4294967295u, 24u)] ^ -2147483647i), func_1(global0[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 2083u), 24u)]), vec4<i32>(~2147483647i, _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(54040u, 24u)], 24u)], 24u)], 8u)], global0[_wgslsmith_index_u32(48212u, 8u)]), reverseBits(global2[_wgslsmith_index_u32(u_input.a, 24u)]), select(global2[_wgslsmith_index_u32(1u, 24u)], -1i, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(Struct_3(global1[_wgslsmith_index_u32(17520u, 20u)], false, Struct_2(false, vec4<f32>(736f, -1391f, 822f, 3396f), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 24u)], 24u)], 4294967295u, 13054u, 1u), vec2<bool>(true, true))), Struct_3(Struct_2(false, vec4<f32>(-973f, 1000f, 341f, 817f), vec4<u32>(global3[_wgslsmith_index_u32(0u, 24u)], global3[_wgslsmith_index_u32(0u, 24u)], 1u, u_input.a), vec2<bool>(false, false)), true, Struct_2(false, vec4<f32>(527f, 729f, 1474f, 1000f), vec4<u32>(0u, 1u, u_input.a, u_input.a), vec2<bool>(true, false))), vec4<i32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 24u)], 24u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 24u)], 24u)], global2[_wgslsmith_index_u32(9555u, 24u)], -2147483647i)).a.b.x)), global0[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(func_5(func_1(countOneBits(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(6773u, 24u)])), -20347i), Struct_3(global1[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(59653u, 24u)]), 20u)], true, global1[_wgslsmith_index_u32(~0u, 20u)]), -vec4<i32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 24u)], 24u)], 1i, global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)])).c.c.x, 20u)]), abs(_wgslsmith_div_i32(-1i, abs(27946i))));
    let var_1 = true;
    global1 = array<Struct_2, 20>();
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.b.zwy) - _wgslsmith_f_op_vec3_f32(var_0.c.b.xyx * vec3<f32>(func_1(global0[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(64854u, 24u)]).c.b.x, _wgslsmith_f_op_f32(var_0.a.b.x + var_0.c.b.x), _wgslsmith_f_op_f32(-var_0.c.b.x)))));
}

