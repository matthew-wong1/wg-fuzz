struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_4,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: array<bool, 15> = array<bool, 15>(true, true, true, false, true, true, false, true, false, true, true, true, true, false, false);

var<private> global2: u32 = 4294967295u;

var<private> global3: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(-646f, 0u, Struct_1(vec4<bool>(true, true, false, true))), Struct_2(293f, 11642u, Struct_1(vec4<bool>(false, true, true, true))), Struct_2(1678f, 4294967295u, Struct_1(vec4<bool>(true, false, true, true))), Struct_2(-518f, 0u, Struct_1(vec4<bool>(true, true, false, false))), Struct_2(-346f, 4294967295u, Struct_1(vec4<bool>(true, true, false, true))), Struct_2(404f, 9245u, Struct_1(vec4<bool>(false, true, true, false))), Struct_2(-794f, 27793u, Struct_1(vec4<bool>(false, false, true, false))), Struct_2(-637f, 18873u, Struct_1(vec4<bool>(false, true, false, true))), Struct_2(-1000f, 1u, Struct_1(vec4<bool>(true, false, false, false))), Struct_2(-680f, 8006u, Struct_1(vec4<bool>(true, false, true, true))), Struct_2(-1525f, 1u, Struct_1(vec4<bool>(true, false, true, true))), Struct_2(1167f, 21517u, Struct_1(vec4<bool>(true, true, false, false))), Struct_2(-831f, 4294967295u, Struct_1(vec4<bool>(true, false, true, false))), Struct_2(-465f, 0u, Struct_1(vec4<bool>(true, false, false, false))), Struct_2(2004f, 24498u, Struct_1(vec4<bool>(true, true, true, false))), Struct_2(-950f, 17235u, Struct_1(vec4<bool>(false, true, false, true))), Struct_2(-315f, 0u, Struct_1(vec4<bool>(true, false, true, true))), Struct_2(-1101f, 51399u, Struct_1(vec4<bool>(true, true, false, true))), Struct_2(-202f, 48299u, Struct_1(vec4<bool>(false, false, false, false))), Struct_2(1000f, 0u, Struct_1(vec4<bool>(true, true, false, false))), Struct_2(565f, 4294967295u, Struct_1(vec4<bool>(false, false, false, false))), Struct_2(-184f, 9539u, Struct_1(vec4<bool>(true, true, true, true))), Struct_2(194f, 0u, Struct_1(vec4<bool>(false, true, true, true))), Struct_2(-532f, 7976u, Struct_1(vec4<bool>(true, true, false, false))), Struct_2(-824f, 1u, Struct_1(vec4<bool>(false, true, true, true))), Struct_2(1496f, 138780u, Struct_1(vec4<bool>(true, true, true, false))));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> u32 {
    var var_0 = arg_0.c.b.x;
    global1 = array<bool, 15>();
    var var_1 = select(select(vec2<bool>(_wgslsmith_f_op_f32(ceil(arg_0.b.x)) == arg_0.c.d.a, all(vec2<bool>(false, false))), !arg_0.c.d.c.a.xz, select(arg_2.a.xw, vec2<bool>(arg_2.a.x, global1[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), 15u)]), global1[_wgslsmith_index_u32(51742u, 15u)])), vec2<bool>(true, _wgslsmith_f_op_f32(arg_1.x + arg_1.x) >= arg_0.c.d.a), vec2<bool>(all(vec2<bool>(true, any(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 15u)], arg_2.a.x, arg_2.a.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-510f)), -104f)) > _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -880f))));
    let var_2 = arg_3;
    global1 = array<bool, 15>();
    return 1u;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_5) -> u32 {
    global2 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.e, min(arg_2.c.c.d.b, 1u) | u_input.a.x), ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.b.e, 11193u), u_input.a, vec2<u32>(70567u, global0[_wgslsmith_index_u32(16878u, 9u)])) << (~u_input.a % vec2<u32>(32u)))), 1u);
    global0 = array<u32, 9>();
    var var_0 = select(arg_2.b.b, select(!vec4<bool>(select(false, arg_1.a.x, arg_0), any(arg_2.c.c.b.wxz), true, all(vec2<bool>(false, true))), !select(arg_2.b.d.c.a, !arg_1.a, select(arg_1.a, arg_2.b.d.c.a, vec4<bool>(true, arg_0, true, arg_2.b.a))), any(!arg_2.b.c.a)), !vec4<bool>(true, arg_2.b.b.x, firstTrailingBit(1u) >= abs(u_input.a.x), arg_1.a.x));
    var_0 = arg_1.a;
    var_0 = vec4<bool>(!select(arg_1.a.x, true, var_0.x), false, !all(vec3<bool>(any(vec4<bool>(false, false, false, var_0.x)), true, false)), true);
    return ~(1u | global0[_wgslsmith_index_u32(24559u, 9u)]);
}

fn func_1(arg_0: f32) -> vec3<u32> {
    let var_0 = global3[_wgslsmith_index_u32(~6252u | global0[_wgslsmith_index_u32(~select(0u | firstTrailingBit(global0[_wgslsmith_index_u32(29853u, 9u)]), ~33715u, global1[_wgslsmith_index_u32(func_2(Struct_4(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]), vec3<f32>(arg_0, 1000f, arg_0), Struct_3(global1[_wgslsmith_index_u32(23699u, 15u)], vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 15u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 15u)]), Struct_1(vec4<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 15u)], false)), global3[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(42825u, 9u)])), vec4<f32>(-174f, arg_0, -158f, 1000f), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(1u, 15u)], false, false, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(4467u, 6639u, u_input.a.x, 3657u), vec4<u32>(1u, 37331u, 43171u, 0u))), 15u)]), 9u)], 26u)];
    let var_1 = Struct_1(vec4<bool>(false, !(-2147483647i > (-33084i >> (var_0.b % 32u))), !(!global1[_wgslsmith_index_u32(var_0.b, 15u)]) | !global1[_wgslsmith_index_u32(var_0.b, 15u)], any(vec3<bool>(false, true, any(vec4<bool>(var_0.c.a.x, global1[_wgslsmith_index_u32(4294967295u, 15u)], true, global1[_wgslsmith_index_u32(0u, 15u)]))))));
    var var_2 = Struct_4(~select(vec2<u32>(0u ^ global0[_wgslsmith_index_u32(41791u, 9u)], ~0u), ~(~u_input.a), true), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a, arg_0, 1596f), vec3<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-arg_0)), var_0.a, _wgslsmith_div_f32(var_0.a, 569f)))), Struct_3(global1[_wgslsmith_index_u32(~firstLeadingBit(1u), 15u)], vec4<bool>(false, !any(var_0.c.a), var_0.c.a.x, false), var_1, Struct_2(_wgslsmith_f_op_f32(max(-1626f, -745f)), _wgslsmith_sub_u32(func_3(var_1.a.x, Struct_1(vec4<bool>(false, true, var_1.a.x, true)), Struct_5(vec3<i32>(5838i, -19594i, -9506i), Struct_3(var_1.a.x, vec4<bool>(true, false, var_1.a.x, false), var_0.c, global3[_wgslsmith_index_u32(var_0.b, 26u)], 58263u), Struct_4(vec2<u32>(1u, 86773u), vec3<f32>(var_0.a, -1120f, var_0.a), Struct_3(true, vec4<bool>(false, false, false, true), Struct_1(var_0.c.a), Struct_2(var_0.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], var_1), u_input.a.x)), vec4<i32>(-20435i, 1i, -16229i, 28958i))), 49648u), Struct_1(!var_0.c.a)), 20064u));
    let var_3 = false;
    var var_4 = var_1;
    return ~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(6580u, 4294967295u, 61309u), select(vec3<u32>(u_input.a.x, var_2.a.x, var_0.b), vec3<u32>(46187u, var_2.c.e, 35442u), var_3) & abs(vec3<u32>(0u, 20265u, 5737u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(vec2<bool>(true, !global1[_wgslsmith_index_u32(u_input.a.x, 15u)])), false);
    var var_1 = 56964i;
    var var_2 = ~_wgslsmith_clamp_vec3_u32((vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], u_input.a.x) >> ((vec3<u32>(u_input.a.x, 1u, 33731u) >> (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 9u)], 9u)], 9u)], 43647u, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(16087u, 18605u, u_input.a.x), vec3<u32>(52753u, 1u, 1u)) % vec3<u32>(32u)), ~max(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 9u)], 9u)], 94951u, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 1u)) & (vec3<u32>(global0[_wgslsmith_index_u32(54757u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], 93952u) | vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 9u)], 1u)), func_1(1f));
    var var_3 = Struct_5(-(max(-vec3<i32>(-11946i, -34779i, 7031i), firstLeadingBit(vec3<i32>(-14776i, -11770i, 23476i))) >> (~vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 9u)], var_2.x) % vec3<u32>(32u))), Struct_3(all(!vec4<bool>(var_0.x, false, false, true)), select(select(vec4<bool>(true, var_0.x, false, global1[_wgslsmith_index_u32(var_2.x, 15u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(40055u, 15u)], true, var_0.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.x, 9u)], 15u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(1u, 15u)], false, false), vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(4294967295u, 15u)])), !var_0.x), vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], var_0.x), true), Struct_1(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, global1[_wgslsmith_index_u32(66258u, 15u)], false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6350u, 9u)], 15u)]), var_0.x), select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(false, global1[_wgslsmith_index_u32(var_2.x, 15u)], var_0.x, var_0.x), true), !var_0.x)), Struct_2(1329f, u_input.a.x, Struct_1(select(vec4<bool>(global1[_wgslsmith_index_u32(4574u, 15u)], true, global1[_wgslsmith_index_u32(0u, 15u)], false), vec4<bool>(false, false, global1[_wgslsmith_index_u32(43275u, 15u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(var_2.x, 15u)], true, false)))), global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), Struct_4(u_input.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-588f, -405f, 1073f), vec3<f32>(883f, -1000f, -1000f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(179f, -1131f, -512f), vec3<f32>(134f, -788f, -829f)))))), Struct_3(global1[_wgslsmith_index_u32(reverseBits(~1431u), 15u)], !select(vec4<bool>(global1[_wgslsmith_index_u32(20995u, 15u)], var_0.x, var_0.x, true), vec4<bool>(true, true, global1[_wgslsmith_index_u32(var_2.x, 15u)], false), global1[_wgslsmith_index_u32(28427u, 15u)]), Struct_1(!vec4<bool>(var_0.x, true, true, global1[_wgslsmith_index_u32(4294967295u, 15u)])), global3[_wgslsmith_index_u32(u_input.a.x, 26u)], (var_2.x & u_input.a.x) >> (4294967295u % 32u))), vec4<i32>(1i, 1i, 1i, 1i));
    var var_4 = var_3.c.c.c;
    var_1 = var_3.d.x;
    global3 = array<Struct_2, 26>();
    let var_5 = true;
    var_3 = Struct_5(reverseBits(var_3.d.www), var_3.b, Struct_4(abs(vec2<u32>(func_1(-233f).x, global0[_wgslsmith_index_u32(4294967295u, 9u)] & 0u)), var_3.c.b, Struct_3(var_3.b.c.a.x || (false || global1[_wgslsmith_index_u32(u_input.a.x, 15u)]), select(var_4.a, vec4<bool>(var_4.a.x, global1[_wgslsmith_index_u32(var_2.x, 15u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 15u)]), var_4.a.x), Struct_1(select(vec4<bool>(true, var_0.x, var_4.a.x, false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 15u)], var_5, var_0.x, var_4.a.x), var_4.a)), Struct_2(_wgslsmith_f_op_f32(4260f + var_3.c.c.d.a), ~var_2.x, Struct_1(var_3.b.c.a)), 33267u)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(var_3.d, var_3.d), var_3.d << (abs(vec4<u32>(var_3.b.e, var_3.b.d.b, global0[_wgslsmith_index_u32(27034u, 9u)], u_input.a.x)) % vec4<u32>(32u))), vec4<i32>(var_3.a.x, 1i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-1737i, var_3.a.x, 1i, var_3.d.x)), var_3.d & var_3.d), var_3.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.d, ~min(select(~vec3<u32>(var_2.x, 0u, var_3.b.d.b), ~vec3<u32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 9u)]), true), abs(vec3<u32>(var_2.x, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)]))), select(_wgslsmith_div_u32(u_input.a.x, 0u), global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(10847u, 9u)]), 9u)], var_3.b.c.a.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.b.d.a, _wgslsmith_f_op_f32(floor(-2601f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_3.b.d.a, var_3.c.c.d.a, var_0.x)), var_3.c.b.x))))), var_3.c.c.d.a);
}

