struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 27>;

var<private> global1: vec2<i32> = vec2<i32>(54948i, 1i);

var<private> global2: vec4<i32> = vec4<i32>(-45632i, 681i, -1i, 13562i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<f32> {
    let var_0 = vec2<bool>(!(!any(select(global0[_wgslsmith_index_u32(u_input.e, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)], false))), _wgslsmith_f_op_f32(579f * 478f) >= _wgslsmith_f_op_f32(-931f * _wgslsmith_f_op_f32(-2580f * _wgslsmith_f_op_f32(floor(-936f)))));
    let var_1 = Struct_2(Struct_1(-vec2<i32>(1i, _wgslsmith_mod_i32(global1.x, global1.x)), select(1u, u_input.a, true)), _wgslsmith_sub_i32(0i >> (~(4294967295u | u_input.e) % 32u), 6571i << (u_input.a % 32u)));
    let var_2 = ~vec2<i32>(global1.x, _wgslsmith_mod_i32(-_wgslsmith_mod_i32(var_1.a.a.x, -15667i), -var_1.b));
    var var_3 = select(select(var_0, select(vec2<bool>(!var_0.x, any(vec3<bool>(true, true, false))), var_0, var_0), false || var_0.x), vec2<bool>(false, any(!select(vec3<bool>(var_0.x, false, false), vec3<bool>(false, var_0.x, true), vec3<bool>(false, false, var_0.x)))), all(!select(global0[_wgslsmith_index_u32(10071u, 27u)], vec3<bool>(true, true, var_0.x), all(global0[_wgslsmith_index_u32(1u, 27u)]))));
    var var_4 = Struct_2(var_1.a, _wgslsmith_dot_vec2_i32(reverseBits(u_input.c.zx), countOneBits(vec2<i32>(select(0i, -2147483647i, true), -1i))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-828f, 564f, -364f), vec3<f32>(-327f, -1076f, 306f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-537f, -1000f, 973f))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(185f, -149f, -887f), vec3<f32>(1351f, -1059f, -214f), var_3.x)) + vec3<f32>(-1000f, 344f, 240f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(530f, -1034f, 647f), vec3<f32>(772f, 1191f, -1000f), global0[_wgslsmith_index_u32(39841u, 27u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1193f, 1448f))))));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = -abs(_wgslsmith_dot_vec2_i32(global2.zz, countOneBits(-vec2<i32>(-17922i, -1i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(1254f)), _wgslsmith_f_op_f32(f32(-1f) * -140f), -2155f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(495f, -610f, -488f), _wgslsmith_f_op_vec3_f32(func_3())))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(3468f, -1619f, _wgslsmith_f_op_f32(1128f + 264f))))));
    let var_2 = Struct_1(~global2.zz, 0u);
    var var_3 = var_2.a.x;
    let var_4 = ~firstTrailingBit(u_input.c.xz);
    return 11009u & var_2.b;
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<bool>(true, all(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(u_input.a, 27u)]), !select(global0[_wgslsmith_index_u32(u_input.e, 27u)], vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(u_input.a, 27u)]), select(select(global0[_wgslsmith_index_u32(u_input.e, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)], vec3<bool>(false, false, false)), vec3<bool>(true, false, true), true))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, ~1u, 1u, firstTrailingBit(u_input.e)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 29813u, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, 0u, u_input.e))) > ~4294967295u);
    let var_1 = 1u >> (1u % 32u);
    global2 = vec4<i32>(1i, -global2.x, _wgslsmith_dot_vec2_i32(-(~abs(vec2<i32>(u_input.c.x, 78903i))), vec2<i32>(-1i) * -vec2<i32>(u_input.b, global2.x)), u_input.d);
    var_0 = vec3<bool>(var_0.x, abs(func_2(0u)) > _wgslsmith_mult_u32(~var_1, countOneBits(~u_input.a)), false);
    let var_2 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(global2.xz, vec2<i32>(1i, u_input.b) & _wgslsmith_sub_vec2_i32(u_input.c.xz, vec2<i32>(-41360i, 4265i))), abs(min(global2.zy, vec2<i32>(-370i, -1i)) ^ -global2.wy)), select(~_wgslsmith_mult_u32(1u, 1u), var_1, true));
    return Struct_2(Struct_1(global2.zz, 1u), firstLeadingBit(_wgslsmith_add_i32(-39683i | (global1.x >> (4294967295u % 32u)), _wgslsmith_mod_i32(firstLeadingBit(global1.x), global1.x))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_1;
    global0 = array<vec3<bool>, 27>();
    var var_1 = func_1().a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(360f)));
    global0 = array<vec3<bool>, 27>();
    return Struct_1(vec2<i32>(_wgslsmith_sub_i32(abs(_wgslsmith_mult_i32(-1i, var_1.a.x)), countOneBits(1i)), -17185i), arg_2.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2.xw;
    var var_0 = 1405i;
    global0 = array<vec3<bool>, 27>();
    global0 = array<vec3<bool>, 27>();
    let var_1 = Struct_2(func_4(_wgslsmith_f_op_f32(max(-661f, _wgslsmith_f_op_f32(f32(-1f) * -211f))), Struct_2(Struct_1(-vec2<i32>(11061i, 25801i), 0u), _wgslsmith_mod_i32(abs(global2.x), global2.x)), func_1()), 1i);
    var var_2 = 957f;
    global0 = array<vec3<bool>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-890f)), -1592f, any(vec4<bool>(true, false, false, true))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2400f, _wgslsmith_f_op_vec3_f32(func_3()).x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1770f + 349f), -301f)))), u_input.c.zz, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(664f, 922f), _wgslsmith_f_op_f32(sign(-114f)), true))))), _wgslsmith_div_vec4_i32(vec4<i32>(-u_input.b, global2.x | 4415i, -32218i, reverseBits(u_input.c.x)) << (min(firstLeadingBit(vec4<u32>(var_1.a.b, 63235u, u_input.a, var_1.a.b)), abs(vec4<u32>(17176u, 0u, 1u, u_input.e))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(global2.x), max(-2147483647i, 0i), 13840i, 1i), -(vec4<i32>(-86045i, -1i, -13228i, u_input.c.x) ^ vec4<i32>(0i, u_input.d, u_input.d, 2147483647i)))));
}

