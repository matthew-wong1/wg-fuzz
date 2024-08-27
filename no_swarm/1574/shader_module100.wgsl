struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(80464u, vec3<i32>(-29389i, 2147483647i, 1234i), 0i, vec3<i32>(2147483647i, -19231i, 66220i)), Struct_1(4294967295u, vec3<i32>(-39340i, 0i, 2147483647i), -56510i, vec3<i32>(-11412i, 0i, 41831i)), Struct_1(0u, vec3<i32>(-45602i, 34973i, -16051i), 7062i, vec3<i32>(-51231i, 1i, 28530i)), Struct_1(20867u, vec3<i32>(0i, 9994i, 42030i), 0i, vec3<i32>(1i, 47887i, 11351i)), Struct_1(4294967295u, vec3<i32>(1i, 2147483647i, -1i), -49915i, vec3<i32>(1i, 2147483647i, -1i)), Struct_1(33022u, vec3<i32>(82785i, 1i, i32(-2147483648)), -1i, vec3<i32>(13807i, -1i, -1i)), Struct_1(52177u, vec3<i32>(37349i, -35469i, 29079i), -12996i, vec3<i32>(-1i, 2147483647i, -29191i)), Struct_1(21047u, vec3<i32>(0i, 2147483647i, -1i), i32(-2147483648), vec3<i32>(1i, -48676i, 2147483647i)), Struct_1(17045u, vec3<i32>(i32(-2147483648), 43052i, 59598i), i32(-2147483648), vec3<i32>(-33866i, 0i, 19189i)), Struct_1(0u, vec3<i32>(19269i, 0i, 4440i), -1570i, vec3<i32>(50582i, 2147483647i, 6038i)), Struct_1(1u, vec3<i32>(-8696i, -10129i, 2147483647i), 25223i, vec3<i32>(25464i, 2147483647i, 0i)), Struct_1(57034u, vec3<i32>(20556i, 1i, -29491i), 1718i, vec3<i32>(0i, 61524i, 0i)), Struct_1(39427u, vec3<i32>(0i, 0i, -1i), 1i, vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i)));

var<private> global2: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false));

var<private> global3: array<u32, 20>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 13>();
    var var_0 = vec2<u32>(~abs(71202u), ~(~countOneBits(arg_1.x << (18207u % 32u))));
    var_0 = ~abs(u_input.c.yx);
    global0 = array<Struct_1, 31>();
    global1 = array<Struct_1, 13>();
    return arg_0;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>) -> i32 {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -1151f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1508f)))), _wgslsmith_div_f32(480f, _wgslsmith_f_op_f32(f32(-1f) * -1107f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1240f) - _wgslsmith_f_op_f32(f32(-1f) * -942f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(999f, 1990f, -892f, 272f) * vec4<f32>(1283f, -153f, 122f, 825f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1138f, 1000f, -1628f, -2024f)))))));
    global3 = array<u32, 20>();
    global3 = array<u32, 20>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -639f));
    return 2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>) -> vec3<i32> {
    global2 = array<vec4<bool>, 19>();
    var var_0 = arg_0.a & u_input.c.x;
    var var_1 = reverseBits(-2147483647i);
    let var_2 = func_2(Struct_1(60887u, vec3<i32>(firstTrailingBit(23802i), -1i, arg_2.x) & arg_2.wxx, -47520i, ~(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.a, -14350i), vec3<i32>(-1i, u_input.b, u_input.b)) & vec3<i32>(arg_0.c, arg_0.c, 2147483647i))), u_input.c.xz, func_2(func_2(global0[_wgslsmith_index_u32(arg_0.a, 31u)], vec2<u32>(48182u, arg_0.a), func_2(func_2(global1[_wgslsmith_index_u32(4294967295u, 13u)], u_input.c.yy, arg_0), u_input.c.yz, func_2(global1[_wgslsmith_index_u32(18765u, 13u)], u_input.c.xy, Struct_1(global3[_wgslsmith_index_u32(1u, 20u)], vec3<i32>(arg_2.x, arg_0.c, -17595i), arg_2.x, vec3<i32>(-1i, arg_0.c, -1i))))), select(select(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a, 0u), u_input.c.yx), ~vec2<u32>(u_input.c.x, 4294967295u), vec2<bool>(true, true)), _wgslsmith_add_vec2_u32(~u_input.c.xx, max(vec2<u32>(arg_0.a, 44936u), u_input.c.xz)), vec2<bool>(true, true)), Struct_1(u_input.c.x, vec3<i32>(-1i) * -arg_0.d, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), ~arg_2.ww), vec3<i32>(-u_input.b, -u_input.b, _wgslsmith_sub_i32(-8101i, arg_2.x)))));
    let var_3 = global1[_wgslsmith_index_u32(~func_2(var_2, vec2<u32>(_wgslsmith_sub_u32(~var_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 56330u, var_2.a, var_2.a), vec4<u32>(arg_0.a, 509u, 38626u, var_2.a))), 58693u), Struct_1(arg_0.a, var_2.d, reverseBits(_wgslsmith_sub_i32(var_2.b.x, arg_2.x)), select(-arg_0.d, min(arg_0.b, vec3<i32>(arg_2.x, 2147483647i, 7536i)), vec3<bool>(true, true, true)))).a, 13u)];
    return vec3<i32>(var_3.d.x, var_3.c, func_3(vec4<i32>(~(-1i), 0i, var_3.d.x, _wgslsmith_clamp_i32(arg_2.x, 1i, -9093i)), -arg_2) | 4500i);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = false;
    let var_1 = Struct_1(u_input.c.x | arg_1.a, func_4(func_2(Struct_1(~1u, -vec3<i32>(-7007i, 11954i, -77408i), firstLeadingBit(-2147483647i), -arg_1.b), arg_2, global1[_wgslsmith_index_u32(1u, 13u)]), arg_0.x, vec4<i32>(func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, arg_1.b.x, arg_1.b.x, arg_1.d.x), vec4<i32>(arg_1.d.x, 1i, u_input.b, u_input.a)), select(vec4<i32>(arg_1.b.x, arg_1.b.x, u_input.a, u_input.a), vec4<i32>(u_input.b, u_input.a, 1i, 2147483647i), global2[_wgslsmith_index_u32(4294967295u, 19u)])), -41842i, i32(-1i) * -arg_1.c, -2147483647i)), u_input.b, vec3<i32>(4063i, -42857i, arg_1.c));
    var var_2 = max(arg_1.b, var_1.d);
    let var_3 = Struct_1(0u, -arg_1.b, var_2.x, vec3<i32>(var_2.x, ~(-2147483647i), ~(var_1.b.x << (35013u % 32u)) >> ((var_1.a << (879u % 32u)) % 32u)));
    var var_4 = u_input.c.x;
    return func_2(arg_1, _wgslsmith_sub_vec2_u32(~(~arg_2), ~(~_wgslsmith_mod_vec2_u32(u_input.c.xz, vec2<u32>(81322u, arg_1.a)))), global0[_wgslsmith_index_u32(~5920u, 31u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(498f)))), _wgslsmith_f_op_f32(f32(-1f) * -469f)))), global1[_wgslsmith_index_u32(~33253u, 13u)], u_input.c.yx);
    let var_1 = _wgslsmith_mult_vec3_u32((~select(u_input.c, vec3<u32>(1u, var_0.a, 1u), true) >> (u_input.c % vec3<u32>(32u))) >> (~vec3<u32>(0u, abs(83436u), ~16774u) % vec3<u32>(32u)), max(_wgslsmith_clamp_vec3_u32(vec3<u32>(countOneBits(0u), ~23577u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(76933u, 20u)], 4294967295u, 40380u, 0u), vec4<u32>(global3[_wgslsmith_index_u32(49523u, 20u)], 43956u, u_input.c.x, global3[_wgslsmith_index_u32(7689u, 20u)]))), ~u_input.c, min(u_input.c, ~vec3<u32>(4294967295u, u_input.c.x, 1u))), _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.a, 20u)], 20u)], 4294967295u, u_input.c.x)) << (~(~vec3<u32>(17624u, var_0.a, 1u)) % vec3<u32>(32u))));
    global3 = array<u32, 20>();
    global3 = array<u32, 20>();
    let var_2 = false;
    let var_3 = firstTrailingBit(1u);
    global3 = array<u32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(43196i, 0i), -463f);
}

