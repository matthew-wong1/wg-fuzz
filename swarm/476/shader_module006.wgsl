struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_1 = Struct_1(-1652f, vec4<bool>(true, true, false, true));

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-644f, vec4<bool>(false, true, false, true)), Struct_1(-1779f, vec4<bool>(true, true, true, true)), Struct_1(670f, vec4<bool>(true, true, true, false)), Struct_1(1999f, vec4<bool>(true, true, false, true)), Struct_1(-597f, vec4<bool>(true, true, false, true)), Struct_1(1674f, vec4<bool>(true, false, true, true)), Struct_1(191f, vec4<bool>(true, true, false, false)), Struct_1(-563f, vec4<bool>(false, true, true, false)), Struct_1(-1000f, vec4<bool>(false, false, true, true)), Struct_1(728f, vec4<bool>(true, true, false, true)), Struct_1(-2010f, vec4<bool>(true, true, true, true)), Struct_1(-277f, vec4<bool>(true, false, true, false)), Struct_1(682f, vec4<bool>(false, true, true, false)), Struct_1(1491f, vec4<bool>(false, false, false, false)), Struct_1(943f, vec4<bool>(false, false, false, true)), Struct_1(645f, vec4<bool>(true, true, false, false)), Struct_1(220f, vec4<bool>(false, true, true, true)), Struct_1(621f, vec4<bool>(true, false, false, false)), Struct_1(576f, vec4<bool>(false, true, false, false)), Struct_1(466f, vec4<bool>(true, false, false, false)), Struct_1(-945f, vec4<bool>(true, true, false, false)), Struct_1(1119f, vec4<bool>(false, true, false, false)), Struct_1(-876f, vec4<bool>(false, false, false, false)), Struct_1(-1031f, vec4<bool>(false, true, true, true)), Struct_1(178f, vec4<bool>(true, false, true, false)), Struct_1(332f, vec4<bool>(false, true, true, false)), Struct_1(-1280f, vec4<bool>(true, false, false, true)), Struct_1(312f, vec4<bool>(false, false, true, false)), Struct_1(-1000f, vec4<bool>(false, false, false, true)));

var<private> global2: array<vec3<bool>, 15>;

var<private> global3: vec4<f32> = vec4<f32>(-1488f, 520f, -688f, 232f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(182f + -848f), -1262f, global3.x, 1f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, _wgslsmith_f_op_f32(min(global3.x, -476f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), 1000f)));
    global2 = array<vec3<bool>, 15>();
    global2 = array<vec3<bool>, 15>();
    let var_0 = true;
    let var_1 = Struct_2(global1[_wgslsmith_index_u32((abs(20621u) ^ u_input.a) & u_input.a, 29u)], vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a)), countOneBits(vec3<u32>(u_input.a, u_input.a, 39928u)) | abs(vec3<u32>(u_input.a, 62540u, u_input.a))), ~20681u, u_input.a, max(u_input.a, max(1u, ~u_input.a))), 642u, _wgslsmith_sub_vec2_u32(~reverseBits(vec2<u32>(57942u, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), ~(~(~vec2<u32>(4294967295u, 35731u)))));
    return !(!select(vec2<bool>(true, false), vec2<bool>(global0.b.x != true, global0.b.x), any(vec4<bool>(global0.b.x, true, global0.b.x, var_0))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global1 = array<Struct_1, 29>();
    var var_0 = func_3();
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a, _wgslsmith_f_op_f32(max(-1070f, _wgslsmith_f_op_f32(f32(-1f) * -918f))), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(990f * global0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 1235f, arg_0.x, global0.a), vec4<f32>(776f, -870f, global0.a, 1027f)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a, global3.x, -284f, global0.a))))), select(global0.b, select(global0.b, select(global0.b, vec4<bool>(var_0.x, false, true, true), false), true | var_0.x), true))));
    var var_1 = !vec4<bool>(global3.x >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), -1714f)), select(var_0.x, all(func_3()), true), false, !(!(!global0.b.x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_div_f32(-388f, arg_0.x))))) - -1446f);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-1888f * var_2))), select(global0.b, global0.b, true)), (firstLeadingBit(vec4<u32>(1u, 4294967295u, u_input.a, 2929u) ^ vec4<u32>(u_input.a, 4294967295u, 2440u, 1u)) >> (~(~vec4<u32>(0u, 59533u, u_input.a, u_input.a)) % vec4<u32>(32u))) | vec4<u32>(1u, u_input.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(4294967295u, u_input.a)) % 32u), 1u, ~14495u), u_input.a, _wgslsmith_div_vec2_u32(vec2<u32>(734u, u_input.a), vec2<u32>(firstLeadingBit(u_input.a ^ u_input.a), reverseBits(0u))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    var var_0 = func_2(global3.zyw);
    return Struct_2(Struct_1(-191f, vec4<bool>(any(!var_0.a.b), true, false, !arg_1.b.x)), ~var_0.b, arg_0.d.x, ~arg_0.b.xz << (countOneBits(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(var_0.b.wy, var_0.d), ~vec2<u32>(arg_0.b.x, 0u))) % vec2<u32>(32u)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global3.zw)));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) + _wgslsmith_f_op_f32(-369f + global0.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-322f)) + -258f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1025f, -198f) - global0.a))), arg_1.a.b);
    global3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-963f, -522f, 810f, -1781f)) * vec4<f32>(var_0.x, -1234f, -2392f, global0.a))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(trunc(-1433f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-223f, -642f)))), _wgslsmith_f_op_f32(-func_2(global3.yxw).a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(399f + -287f)))));
    let var_1 = -1572f;
    let var_2 = arg_1.a;
    return select(arg_1.a.b, vec4<bool>(all(global0.b), any(arg_2), true, false), func_4(Struct_2(var_2, min(select(vec4<u32>(arg_1.d.x, u_input.a, arg_0.x, u_input.a), arg_1.b, vec4<bool>(arg_1.a.b.x, true, arg_3, false)), vec4<u32>(arg_0.x, arg_1.c, 1u, 4294967295u)), select(max(u_input.a, u_input.a), 18126u, true), arg_1.b.yw), func_4(Struct_2(func_4(arg_1, arg_1.a, Struct_1(global0.a, arg_1.a.b), 0i).a, arg_1.b, ~51035u, arg_1.d), global1[_wgslsmith_index_u32(~101770u << (arg_0.x % 32u), 29u)], func_4(func_2(global3.wxy), func_2(vec3<f32>(var_2.a, -495f, var_2.a)).a, func_2(global3.zwy).a, -41862i).a, ~(-2147483647i)).a, func_2(global3.yzw).a, select(firstTrailingBit(abs(53040i)), ~countOneBits(-2147483647i), true)).a.b);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a * 268f), global0.a));
    global0 = Struct_1(1031f, select(select(global0.b, select(!global0.b, !global0.b, true), global0.b), func_5(reverseBits(max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, 0u))), func_4(func_2(vec3<f32>(var_0, global3.x, -1189f)), global1[_wgslsmith_index_u32(~8184u, 29u)], Struct_1(-1406f, global0.b), 0i), vec3<bool>(!arg_0, any(vec3<bool>(global0.b.x, true, global0.b.x)), all(vec4<bool>(arg_0, false, true, global0.b.x))), u_input.a < 0u), false));
    global1 = array<Struct_1, 29>();
    let var_1 = ~(vec3<i32>(-2147483647i, 0i, -(~(-2147483647i))) & vec3<i32>(_wgslsmith_add_i32(1i, firstLeadingBit(-1i)), -32632i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(-2147483647i, -1446i)), firstLeadingBit(45433i))));
    global2 = array<vec3<bool>, 15>();
    return global1[_wgslsmith_index_u32(u_input.a, 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 15>();
    global0 = global1[_wgslsmith_index_u32(u_input.a, 29u)];
    var var_0 = Struct_1(global3.x, global0.b);
    let var_1 = func_1(!all(vec3<bool>(!var_0.b.x, global0.b.x, true)));
    let var_2 = ~(~(-vec2<i32>(1i, 1i)));
    var var_3 = !(!(!vec2<bool>(true, !global0.b.x)));
    var_0 = func_1(true);
    let var_4 = Struct_2(var_1, func_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.a + var_0.a), -1006f, 1013f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-114f, global0.a, 181f))) * global3.xwx))).b, u_input.a, ~(~(vec2<u32>(1u, u_input.a) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)))) << (~(~_wgslsmith_mod_vec2_u32(vec2<u32>(9367u, 4294967295u), vec2<u32>(u_input.a, 0u))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c);
}

