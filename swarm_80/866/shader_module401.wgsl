struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(14301i, 1i, -1i, i32(-2147483648), -11324i, 2147483647i, 38613i, -50186i, 0i, 24665i, -1i, 2147483647i, 19282i, 0i, 24741i, -14197i, -42524i, 1i);

var<private> global1: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(-14789i, -39873i, -30479i), vec3<i32>(-44631i, -44174i, -47160i), vec3<i32>(0i, 2147483647i, -14553i), vec3<i32>(0i, -13483i, 1i), vec3<i32>(i32(-2147483648), 41504i, -4089i), vec3<i32>(-60877i, 2709i, -1i), vec3<i32>(0i, 5046i, -25484i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<i32>(-11517i, 2147483647i, i32(-2147483648)), vec3<i32>(20577i, -36549i, -32031i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), 2147483647i, -34234i), vec3<i32>(i32(-2147483648), 35224i, -46985i), vec3<i32>(41900i, -59951i, 30649i), vec3<i32>(-26098i, 30491i, 1i), vec3<i32>(-1i, -30856i, -29607i), vec3<i32>(46405i, 88107i, -1108i), vec3<i32>(30132i, 2147483647i, 0i), vec3<i32>(-1i, 2922i, 25141i), vec3<i32>(11677i, -37482i, 2147483647i), vec3<i32>(0i, -16729i, -1i), vec3<i32>(41032i, 0i, 2147483647i), vec3<i32>(2147483647i, 57148i, -23051i), vec3<i32>(2147483647i, 36429i, 0i), vec3<i32>(-25874i, i32(-2147483648), 0i));

var<private> global2: vec4<bool>;

var<private> global3: array<f32, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = arg_1;
    let var_1 = ~_wgslsmith_sub_u32(~0u, ~(~35504u) & firstTrailingBit(~10327u));
    var var_2 = countOneBits(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(~var_0.a.x, global0[_wgslsmith_index_u32(~1u, 18u)], _wgslsmith_dot_vec3_i32(var_0.a.zxw, vec3<i32>(-17745i, -2147483647i, arg_1.a.x)), -2147483647i)), ~((var_0.a | vec4<i32>(1i, 41168i, 17217i, -2147483647i)) & vec4<i32>(var_0.a.x, 0i, global0[_wgslsmith_index_u32(0u, 18u)], 29512i)), var_0.a));
    let var_3 = Struct_3(all(global2.wyy), 16587i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(776f, global3[_wgslsmith_index_u32(3126u, 14u)], 1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(29511u, 14u)], -851f, global3[_wgslsmith_index_u32(0u, 14u)]) + vec3<f32>(global3[_wgslsmith_index_u32(u_input.e.x, 14u)], 353f, global3[_wgslsmith_index_u32(0u, 14u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.c, 14u)], global3[_wgslsmith_index_u32(38722u, 14u)], global3[_wgslsmith_index_u32(arg_0, 14u)]))))) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1379f * -1291f), _wgslsmith_f_op_f32(268f - -1051f))), _wgslsmith_f_op_f32(sign(-1376f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -432f)))));
    global3 = array<f32, 14>();
    return -(vec4<i32>(_wgslsmith_mod_i32(~var_0.a.x, -19757i), abs(-16573i), -10145i, -_wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(-1i, arg_1.a.x, 1i, 1i))) | -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 35615i, var_2.x, global0[_wgslsmith_index_u32(u_input.c, 18u)]), arg_1.a), 0i, -45722i, ~(-2147483647i)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_3.x);
    let var_1 = _wgslsmith_f_op_f32(round(-1000f));
    let var_2 = vec2<i32>(arg_0.x | firstLeadingBit(5661i), 2147483647i);
    var var_3 = Struct_2(Struct_1(-arg_0), Struct_1(func_3(u_input.e.x, Struct_1(select(vec4<i32>(-40264i, 2147483647i, 0i, u_input.d), vec4<i32>(-41178i, global0[_wgslsmith_index_u32(u_input.b.x, 18u)], -1i, 61085i), true)))), arg_0, 57310u >> (1u % 32u));
    global3 = array<f32, 14>();
    return _wgslsmith_mult_i32(i32(-1i) * -reverseBits(-1i), 28799i);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: bool) -> bool {
    var var_0 = Struct_2(Struct_1(-(~(vec4<i32>(arg_2.b, -32557i, 0i, -36309i) | vec4<i32>(1i, 1i, -12915i, global0[_wgslsmith_index_u32(16126u, 18u)])))), Struct_1(~vec4<i32>(func_2(vec4<i32>(global0[_wgslsmith_index_u32(3902u, 18u)], arg_2.b, 36864i, arg_2.b), vec2<bool>(true, false), vec4<bool>(false, arg_3, arg_2.a, false), vec3<f32>(arg_2.c.x, arg_2.c.x, 1222f)), arg_1.x, arg_2.b ^ global0[_wgslsmith_index_u32(u_input.e.x, 18u)], arg_0.b)), vec4<i32>(-(~1i), _wgslsmith_div_i32(abs(arg_1.x), _wgslsmith_sub_i32(func_3(1u, Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(5987u, 18u)], u_input.d, arg_1.x, -2147483647i))).x, 1i)), reverseBits(1i), _wgslsmith_mod_i32(-(~global0[_wgslsmith_index_u32(u_input.e.x, 18u)]), arg_0.b)), 1u);
    global1 = array<vec3<i32>, 25>();
    global3 = array<f32, 14>();
    global0 = array<i32, 18>();
    global2 = vec4<bool>(all(vec2<bool>(false, !(arg_0.c.x != arg_0.c.x))), arg_3, !arg_0.a, global2.x);
    return !(!select(!(arg_2.c.x != global3[_wgslsmith_index_u32(1u, 14u)]), !global2.x, any(select(vec2<bool>(arg_3, global2.x), vec2<bool>(true, false), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.wyy;
    global1 = array<vec3<i32>, 25>();
    let var_1 = u_input.e.x;
    global2 = vec4<bool>(!((!global2.x & any(vec3<bool>(global2.x, global2.x, global2.x))) && all(select(vec4<bool>(global2.x, true, true, true), vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(global2.x, true, false, global2.x)))), true, !global2.x, all(vec4<bool>(!func_1(Struct_3(false, 36361i, vec3<f32>(global3[_wgslsmith_index_u32(var_1, 14u)], global3[_wgslsmith_index_u32(var_1, 14u)], 642f)), vec3<i32>(global0[_wgslsmith_index_u32(0u, 18u)], 4045i, u_input.d), Struct_3(false, 29573i, vec3<f32>(274f, -1751f, 373f)), true), true, _wgslsmith_add_i32(u_input.a, u_input.a) > -u_input.d, (global2.x != true) & select(global2.x, global2.x, false))));
    var var_2 = -766f;
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1035f))))));
    global2 = vec4<bool>(var_1 <= ~15801u, false, true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -692f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.x, 14u)]), global2.x)), global3[_wgslsmith_index_u32(var_1, 14u)])) <= 1f);
    var_2 = -148f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(415f, global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(var_1, 14u)], 1008f) + vec4<f32>(-1000f, global3[_wgslsmith_index_u32(42956u, 14u)], global3[_wgslsmith_index_u32(var_1, 14u)], 309f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, global3[_wgslsmith_index_u32(14704u, 14u)], global3[_wgslsmith_index_u32(u_input.b.x, 14u)], global3[_wgslsmith_index_u32(var_1, 14u)]))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3[_wgslsmith_index_u32(var_0.x, 14u)], global3[_wgslsmith_index_u32(var_1, 14u)], global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(var_0.x, 14u)])))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(59971u, 14u)], global3[_wgslsmith_index_u32(var_0.x, 14u)], -1412f, global3[_wgslsmith_index_u32(16827u, 14u)]) + vec4<f32>(global3[_wgslsmith_index_u32(18169u, 14u)], global3[_wgslsmith_index_u32(1u, 14u)], -542f, -461f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(972f, 1000f, -1000f, 518f), vec4<f32>(-3640f, global3[_wgslsmith_index_u32(var_0.x, 14u)], -834f, global3[_wgslsmith_index_u32(75859u, 14u)])))))), ~(-1i));
}

