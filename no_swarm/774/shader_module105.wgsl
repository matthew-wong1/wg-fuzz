struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(1u, 1u, 0u, 29766u), vec4<u32>(0u, 19155u, 0u, 51918u), vec4<u32>(1u, 49704u, 23545u, 4294967295u), vec4<u32>(398u, 10329u, 4294967295u, 0u), vec4<u32>(1u, 1u, 53830u, 1u), vec4<u32>(26759u, 1u, 1u, 4294967295u), vec4<u32>(0u, 20479u, 56202u, 1u), vec4<u32>(1u, 46891u, 30070u, 1u), vec4<u32>(24784u, 1u, 1u, 1u), vec4<u32>(79672u, 0u, 48133u, 11819u), vec4<u32>(0u, 1u, 18903u, 0u), vec4<u32>(14148u, 0u, 0u, 1u), vec4<u32>(94637u, 2358u, 82985u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, 4585u), vec4<u32>(1u, 1u, 15791u, 0u), vec4<u32>(38748u, 37317u, 32686u, 4294967295u), vec4<u32>(75955u, 4294967295u, 1u, 4294967295u), vec4<u32>(4294967295u, 48243u, 4294967295u, 0u), vec4<u32>(67247u, 1u, 1u, 1420u), vec4<u32>(1u, 1u, 4294967295u, 1u), vec4<u32>(0u, 30082u, 38837u, 17066u), vec4<u32>(24326u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 82164u, 7912u, 43455u), vec4<u32>(4294967295u, 1u, 4294967295u, 1u));

var<private> global2: u32 = 0u;

var<private> global3: array<vec4<bool>, 26>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5) -> vec4<bool> {
    let var_0 = 12537u;
    global2 = _wgslsmith_div_u32(arg_0.c.a.a | (44783u ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, 0u), arg_0.b)), 0u);
    let var_1 = Struct_3(-vec3<i32>(u_input.a.x, 1i, countOneBits(max(45712i, u_input.b))), select(select(global3[_wgslsmith_index_u32(min(~27938u, ~9561u), 26u)], vec4<bool>(true, true, true, true), arg_0.c.b.a == arg_0.c.a.a), vec4<bool>(!any(global3[_wgslsmith_index_u32(31247u, 26u)]), false, true, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(375f)), -605f)) >= _wgslsmith_f_op_f32(max(arg_0.a.b.x, 529f))), Struct_2(Struct_1(select(var_0, 106007u, any(global3[_wgslsmith_index_u32(var_0, 26u)])), arg_0.a.b), arg_0.c.b), true);
    var var_2 = !vec4<bool>(any(vec3<bool>(true, true, var_1.c.a.b.x > arg_0.a.b.x)), all(select(var_1.b.yzz, vec3<bool>(var_1.b.x, true, true), var_1.b.wyw)), select(false, select(true, true, true), var_1.b.x & true), false);
    global1 = array<vec4<u32>, 24>();
    return select(vec4<bool>(var_2.x, !var_1.b.x, true, select(var_1.b.x, any(var_1.b), false)), select(!vec4<bool>(true, var_0 >= 0u, var_1.d, true && var_2.x), select(vec4<bool>(var_2.x, all(var_2.zwy), any(global3[_wgslsmith_index_u32(39985u, 26u)]), false), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~53911u, arg_0.c.b.a), 26u)], vec4<bool>(var_1.c.a.b.x == arg_0.a.b.x, var_2.x, !var_2.x, any(vec3<bool>(var_2.x, var_2.x, var_1.d)))), var_1.b), any(!vec4<bool>(var_2.x, var_2.x, true, var_2.x)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<i32>) -> i32 {
    var var_0 = arg_0.a.b.x;
    global2 = arg_1.x;
    var var_1 = ~vec2<u32>(~arg_1.x, ~_wgslsmith_clamp_u32(97624u, 1u, firstLeadingBit(81718u)));
    var var_2 = Struct_3(arg_2 >> (~arg_1.wyy % vec3<u32>(32u)), select(global3[_wgslsmith_index_u32(var_1.x, 26u)], func_3(Struct_5(Struct_1(arg_1.x, vec3<f32>(-1000f, arg_0.b.b.x, 404f)), ~vec2<u32>(4294967295u, arg_1.x), arg_0)), true), Struct_2(arg_0.a, Struct_1(_wgslsmith_clamp_u32(arg_1.x, _wgslsmith_dot_vec3_u32(arg_1.www, vec3<u32>(arg_1.x, 72445u, 0u)), 39969u), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_f_op_f32(abs(arg_0.b.b.x)), _wgslsmith_f_op_f32(select(arg_0.a.b.x, arg_0.b.b.x, true))))), true);
    let var_3 = 0u;
    return firstLeadingBit(-var_2.a.x & ~_wgslsmith_sub_i32(arg_2.x, 2147483647i)) >> (57214u % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(arg_0.a, 24u)], _wgslsmith_add_vec4_u32(firstLeadingBit(global1[_wgslsmith_index_u32(42206u, 24u)]), firstTrailingBit(global1[_wgslsmith_index_u32(arg_0.a, 24u)]))) >> (~0u % 32u), arg_1);
    var var_1 = u_input.a.xw;
    global0 = array<Struct_2, 18>();
    let var_2 = vec2<i32>(arg_2, 61779i);
    global1 = array<vec4<u32>, 24>();
    return Struct_3(~select(vec3<i32>(1i, 1083i, func_2(global0[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(arg_0.a, 24u)], u_input.c)), vec3<i32>(i32(-1i) * -38070i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), 1i), vec3<bool>(true, true, true)), !vec4<bool>(all(vec2<bool>(true, true)), !any(vec3<bool>(true, false, false)), all(vec2<bool>(true, true)), true), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a, 40311u, var_0.a), vec3<u32>(arg_0.a, 0u, var_0.a), vec3<u32>(9542u, 4294967295u, arg_0.a)), ~vec3<u32>(114031u, var_0.a, var_0.a)), ~firstTrailingBit(vec3<u32>(var_0.a, 89495u, 0u))), 18u)], false);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    let var_0 = arg_1.c.b.b.xz;
    global3 = array<vec4<bool>, 26>();
    global0 = array<Struct_2, 18>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -853f);
    var var_2 = 396f;
    return Struct_1(92391u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.b) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(181f, 1608f, 514f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~max(12349u << (1u % 32u), 1u)));
    global0 = array<Struct_2, 18>();
    var var_1 = Struct_4(Struct_3(max(vec3<i32>(~8512i, u_input.c.x, -19186i), ~vec3<i32>(u_input.c.x, 0i, u_input.a.x) & min(vec3<i32>(u_input.a.x, u_input.b, u_input.a.x), u_input.a.yyz)), !global3[_wgslsmith_index_u32(abs(1u), 26u)], Struct_2(func_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(11134u, 1u), 18u)], func_1(Struct_1(69941u, vec3<f32>(-351f, -323f, 1000f)), vec3<f32>(-974f, 1576f, -764f), -1i, vec4<f32>(-1243f, 299f, 1000f, 1000f))), Struct_1(abs(4294967295u), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1440f, 207f, 188f), vec3<f32>(919f, 1083f, -1630f))))), _wgslsmith_f_op_f32(func_1(Struct_1(0u, vec3<f32>(-1220f, -469f, 1186f)), vec3<f32>(1407f, -1342f, -400f), u_input.b, vec4<f32>(-1000f, 277f, 476f, -825f)).c.a.b.x - _wgslsmith_f_op_f32(max(1000f, 1898f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-737f - 1552f), _wgslsmith_f_op_f32(-974f + 617f))));
    global3 = array<vec4<bool>, 26>();
    global1 = array<vec4<u32>, 24>();
    global1 = array<vec4<u32>, 24>();
    let var_2 = Struct_5(func_4(func_1(var_1.a.c.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1.a.c.a.b))), var_1.a.a.x, _wgslsmith_div_vec4_f32(vec4<f32>(598f, var_1.a.c.b.b.x, var_1.a.c.a.b.x, var_1.a.c.a.b.x), vec4<f32>(var_1.a.c.b.b.x, var_1.a.c.b.b.x, var_1.a.c.a.b.x, -1000f))).c, Struct_3(u_input.a.xzy, !vec4<bool>(var_1.a.b.x, true, false, true), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(var_1.a.c.b.a, 24u)], global1[_wgslsmith_index_u32(var_1.a.c.a.a, 24u)]), select(var_1.a.c.a.a, var_1.a.c.a.a, var_1.a.d)), 18u)], all(vec2<bool>(true, var_1.a.b.x)))), vec2<u32>(firstLeadingBit(var_1.a.c.b.a), ~(~var_1.a.c.a.a | func_1(Struct_1(4294967295u, var_1.a.c.b.b), vec3<f32>(-1829f, var_1.a.c.a.b.x, var_1.a.c.a.b.x), u_input.b, vec4<f32>(var_1.a.c.a.b.x, -2547f, var_1.a.c.a.b.x, 573f)).c.b.a)), global0[_wgslsmith_index_u32(11242u, 18u)]);
    var var_3 = _wgslsmith_f_op_f32(min(601f, -120f));
    var var_4 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-361f, _wgslsmith_f_op_f32(trunc(416f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-580f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1711f, var_1.a.c.a.b.x))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1420f, var_1.a.c.b.b.x, var_2.a.b.x))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2.c.b.b.x)), _wgslsmith_f_op_f32(-1220f + var_2.c.a.b.x), _wgslsmith_div_f32(var_2.c.a.b.x, -1274f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.c.b.b - var_2.c.b.b) - var_2.c.b.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(1771i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2969f), _wgslsmith_f_op_f32(step(935f, var_4.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_4.x + var_1.a.c.b.b.x))), !(false || var_1.a.b.x)))), ~select(_wgslsmith_mod_u32(~var_1.a.c.b.a, 1u), var_1.a.c.a.a, all(select(vec4<bool>(false, var_1.a.d, var_1.a.b.x, var_1.a.d), global3[_wgslsmith_index_u32(var_2.a.a, 26u)], var_1.a.d))));
}

