struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(1u, 53592u, 45386u, 1u), vec4<u32>(0u, 72542u, 42658u, 4294967295u), vec4<u32>(69740u, 1u, 42435u, 0u), vec4<u32>(87454u, 0u, 58638u, 1u), vec4<u32>(1u, 23927u, 81100u, 0u), vec4<u32>(106802u, 4294967295u, 4294967295u, 92405u), vec4<u32>(14530u, 6718u, 4294967295u, 0u), vec4<u32>(43520u, 4294967295u, 44053u, 0u), vec4<u32>(0u, 0u, 9225u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 59768u, 4563u));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    global0 = array<u32, 1>();
    return ~((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)] ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 1u)], 1u, global0[_wgslsmith_index_u32(0u, 1u)]), vec3<u32>(1u, global0[_wgslsmith_index_u32(0u, 1u)], 17528u))) >> (_wgslsmith_dot_vec3_u32(select(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(112142u, 1u)], 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46580u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<u32>(global0[_wgslsmith_index_u32(40252u, 1u)], global0[_wgslsmith_index_u32(20408u, 1u)], global0[_wgslsmith_index_u32(88549u, 1u)]), vec3<bool>(false, false, true)), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(5225u, 1u)], 1u)) % 32u)) & 27220u;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_4) -> i32 {
    var var_0 = arg_2.x;
    global0 = array<u32, 1>();
    let var_1 = _wgslsmith_div_vec3_u32(max(arg_2.xww, select(vec3<u32>(~39572u, 14145u, 0u), vec3<u32>(~arg_0, arg_0, func_3(vec4<f32>(115f, 1860f, arg_1.a.x, -305f))), vec3<bool>(true, arg_1.a.x <= arg_3.c.c.a.x, false))), ~arg_2.yww);
    let var_2 = -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~1i, 13230i, -arg_3.b.b.x, _wgslsmith_mod_i32(-76011i, arg_3.c.b.x)), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, arg_3.d.a.x, arg_3.b.b.x, arg_3.c.b.x)), abs(vec4<i32>(arg_3.c.b.x, -1i, 2147483647i, u_input.a.x)))), _wgslsmith_dot_vec4_i32(vec4<i32>(~25872i, 27170i, _wgslsmith_mod_i32(12176i, u_input.a.x), -25465i), ~vec4<i32>(21316i, -25960i, u_input.a.x, -2147483647i)), -(15095i ^ ~arg_3.c.b.x), firstLeadingBit(i32(-1i) * -u_input.a.x));
    let var_3 = var_1.x;
    return u_input.a.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: i32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(833f, -129f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1063f - -1276f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))))))));
    var var_1 = ~firstTrailingBit(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.x, 4294967295u, global0[_wgslsmith_index_u32(0u, 1u)]), 1u)], arg_0.x << (arg_0.x % 32u)));
    var var_2 = vec2<bool>(false, true);
    var var_3 = 27339i;
    var var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 600f, -799f))))), u_input.a.xy, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(535f, 342f, -400f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1385f, 361f, 493f), vec3<f32>(448f, -481f, -352f), vec3<bool>(false, var_2.x, var_2.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-556f, 410f, -386f) * vec3<f32>(1572f, -337f, -127f))))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -636f)), _wgslsmith_f_op_f32(-var_4.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_4.c.a.x * -616f))) * -289f)));
}

fn func_1(arg_0: bool, arg_1: i32) -> bool {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(func_4((vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)], 25866u, 5901u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)]) | vec4<u32>(21950u, global0[_wgslsmith_index_u32(55275u, 1u)], 1u, global0[_wgslsmith_index_u32(0u, 1u)])) & vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18079u, 1u)], 1u)], 1u)], 1u)], 4294967295u, global0[_wgslsmith_index_u32(0u, 1u)], 0u), ~func_2(1u, Struct_1(vec3<f32>(1000f, 509f, -1336f)), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4494u, 1u)], 11u)], Struct_4(8387u, Struct_3(Struct_1(vec3<f32>(379f, 866f, 1000f)), vec2<i32>(arg_1, arg_1), Struct_1(vec3<f32>(-1293f, -1827f, -566f))), Struct_3(Struct_1(vec3<f32>(-1368f, -245f, -583f)), vec2<i32>(u_input.a.x, 1i), Struct_1(vec3<f32>(-113f, 449f, 1000f))), Struct_2(u_input.a, u_input.a.x)))))), _wgslsmith_mult_vec2_i32(-(~select(u_input.a.zx, u_input.a.xy, vec2<bool>(false, false))), u_input.a.zz), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1796f), _wgslsmith_div_f32(1010f, 1223f), _wgslsmith_f_op_f32(-1000f + -888f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1385f, 742f, 1910f), vec3<f32>(1000f, 1000f, 1653f))) + vec3<f32>(-364f, -588f, -1119f)))));
    var var_1 = vec4<bool>(all(!vec3<bool>(arg_0, all(vec4<bool>(true, arg_0, arg_0, arg_0)), arg_0)), arg_0, any(!vec2<bool>(arg_0, any(vec4<bool>(arg_0, false, arg_0, arg_0)))), arg_0);
    global0 = array<u32, 1>();
    return all(select(var_1.wyy, vec3<bool>(all(vec3<bool>(true, arg_0, var_1.x)), all(vec4<bool>(true, arg_0, false, true)), !arg_0), select(vec3<bool>(arg_0, false, true), vec3<bool>(true, true, arg_0), select(vec3<bool>(var_1.x, arg_0, true), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, true, arg_0))))) == true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 11>();
    global1 = array<vec4<u32>, 11>();
    global1 = array<vec4<u32>, 11>();
    let var_0 = select(select(vec3<bool>(select(all(vec2<bool>(false, false)), select(true, false, true), false), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), true), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(true, true, true)), false), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), !(!vec3<bool>(true, false, any(vec3<bool>(false, false, false)))), true);
    var var_1 = !vec4<bool>(any(select(select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), true), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(true, true, var_0.x, var_0.x), false))), true, true, !func_1(!var_0.x, u_input.a.x));
    var var_2 = -(~reverseBits(u_input.a.x)) ^ u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~global1[_wgslsmith_index_u32(((4294967295u << (0u % 32u)) ^ global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(38352u, 2400u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58442u, 1u)], 1u)]), 1u)]) ^ min(0u, 17097u), 11u)], _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1135f * -1617f), _wgslsmith_f_op_f32(abs(-304f)), _wgslsmith_f_op_f32(max(1352f, _wgslsmith_f_op_f32(select(1181f, -130f, var_0.x)))), _wgslsmith_f_op_f32(trunc(-1517f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(4051f, 575f, -3953f, 737f) - vec4<f32>(-1472f, 1000f, 1217f, -427f)))), vec4<f32>(-911f, -522f, -1027f, _wgslsmith_f_op_f32(f32(-1f) * -1352f)), !vec4<bool>(var_1.x, false, false, var_0.x))), vec4<bool>(select(true, var_0.x || var_1.x, false), var_1.x, false, any(select(vec3<bool>(var_1.x, true, var_0.x), vec3<bool>(var_1.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_1.x)))))), -870f);
}

