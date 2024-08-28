struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
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

var<private> global0: array<vec2<bool>, 15>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global2: array<i32, 12> = array<i32, 12>(i32(-2147483648), 60309i, -59044i, 1i, 0i, -1i, 2147483647i, -38168i, -8970i, i32(-2147483648), 0i, 0i);

var<private> global3: array<u32, 7>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-279f, 280f, -1826f, -530f), vec4<f32>(-1000f, -831f, 823f, 277f), global1.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(533f, -1751f, -1118f, 1147f))))))));
    global3 = array<u32, 7>();
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 432f, -320f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 258f, -1541f) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, -1467f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1745f, -456f, 2182f, var_0.x) - vec4<f32>(240f, 687f, var_0.x, -1016f)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.xww), var_0.zwz, select(global1.zwy, global1.wxw, global1.x))))) + var_0.www);
    var var_2 = Struct_1(-351f, _wgslsmith_f_op_vec2_f32(-var_1.yz), false, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(496f, -280f)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_1)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-230f, 876f, -549f))) * vec3<f32>(-1027f, _wgslsmith_f_op_f32(-arg_2.a.a), _wgslsmith_f_op_f32(max(arg_2.b.d.x, arg_3.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()))), vec3<f32>(-322f, 487f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(965f + _wgslsmith_f_op_f32(f32(-1f) * -687f)))));
    var var_1 = global1.wxw;
    let var_2 = arg_3;
    global2 = array<i32, 12>();
    var var_3 = ~(_wgslsmith_dot_vec2_i32(~(vec2<i32>(20165i, arg_1.x) >> (vec2<u32>(arg_0.x, global3[_wgslsmith_index_u32(u_input.a.x, 7u)]) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(34865u, 12u)], 2147483647i), -vec2<i32>(arg_1.x, 0i), -arg_1)) >> (0u % 32u));
    return Struct_1(arg_2.a.a, arg_3.d, arg_3.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec3_f32(func_3()).zz, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.d.x, arg_3.a) * vec2<f32>(arg_2.b.a, 1110f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b.b)), _wgslsmith_f_op_vec2_f32(-var_2.d)), select(!(!var_1.yy), !global0[_wgslsmith_index_u32(~u_input.a.x, 15u)], select(!var_1.yy, !global1.ww, true)))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = min(vec4<u32>(u_input.a.x, ~_wgslsmith_mod_u32(1u, u_input.a.x), 1u, 4294967295u), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(_wgslsmith_clamp_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 7u)], 7u)], 32707u, ~15519u), 4294967295u, ~1u, _wgslsmith_div_u32(u_input.b, reverseBits(4294967295u)))));
    global0 = array<vec2<bool>, 15>();
    var var_1 = arg_0;
    let var_2 = arg_0.a.d.x;
    global2 = array<i32, 12>();
    return Struct_1(_wgslsmith_div_f32(var_2, -621f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b.d - arg_0.a.b)), false | arg_0.b.c, arg_0.a.d);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, -765f, arg_0.d.x) * vec3<f32>(arg_0.a, arg_0.a, -1217f)) + vec3<f32>(arg_0.a, arg_0.a, arg_0.d.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-788f, arg_0.d.x, arg_0.d.x)), vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.d.x))))))));
    var var_1 = all(select(!vec2<bool>(func_2(u_input.a.xzw, arg_2, Struct_2(Struct_1(var_0.x, arg_0.b, true, vec2<f32>(var_0.x, arg_0.b.x)), Struct_1(-636f, var_0.yx, false, arg_0.b)), arg_0).c, true), global1.xy, true));
    var var_2 = arg_0;
    return 12753u;
}

fn func_1() -> Struct_1 {
    var var_0 = 51745u;
    var_0 = ~4294967295u;
    let var_1 = global1.wxz;
    var_0 = ~func_5(func_4(Struct_2(Struct_1(-1000f, vec2<f32>(-521f, -413f), var_1.x, vec2<f32>(-894f, -1000f)), func_2(vec3<u32>(26330u, 0u, 0u), vec2<i32>(global2[_wgslsmith_index_u32(0u, 12u)], -44416i), Struct_2(Struct_1(669f, vec2<f32>(-1062f, -415f), true, vec2<f32>(-424f, 1103f)), Struct_1(1447f, vec2<f32>(-944f, -809f), true, vec2<f32>(-698f, -1000f))), Struct_1(969f, vec2<f32>(957f, -1069f), global1.x, vec2<f32>(791f, 991f))))), global1.x, ~vec2<i32>(global2[_wgslsmith_index_u32(u_input.c | 0u, 12u)], -771i));
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a.wzy, ~u_input.a.yxy)), 12u)], 1i, max(-21832i, -(~(-2885i))), _wgslsmith_add_i32(_wgslsmith_add_i32(select(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 12u)], global2[_wgslsmith_index_u32(18152u, 12u)], global1.x), firstLeadingBit(-9302i)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 4294967295u), u_input.a.wx), 12u)])), vec4<i32>(max(-79315i >> (select(23312u, u_input.a.x, global1.x) % 32u), 2147483647i << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 7u)] << (global3[_wgslsmith_index_u32(0u, 7u)] % 32u), 7u)] % 32u)), firstLeadingBit(1i), ~(-(global2[_wgslsmith_index_u32(4294967295u, 12u)] ^ global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 7u)], 12u)])), global2[_wgslsmith_index_u32(20927u, 12u)]));
    return func_4(Struct_2(func_4(Struct_2(func_4(Struct_2(Struct_1(-1000f, vec2<f32>(556f, 964f), global1.x, vec2<f32>(2037f, -144f)), Struct_1(553f, vec2<f32>(-904f, -1324f), var_1.x, vec2<f32>(756f, -1000f)))), func_2(vec3<u32>(1u, u_input.b, 4294967295u), var_2.yx, Struct_2(Struct_1(-1449f, vec2<f32>(-801f, -500f), true, vec2<f32>(-2530f, -1293f)), Struct_1(-264f, vec2<f32>(-222f, -2265f), var_1.x, vec2<f32>(878f, 1073f))), Struct_1(-362f, vec2<f32>(181f, -705f), true, vec2<f32>(124f, -1175f))))), func_2(max(vec3<u32>(9371u, 531u, u_input.b), vec3<u32>(49473u, u_input.b, 1u)), -var_2.wy, Struct_2(func_2(vec3<u32>(29619u, u_input.c, u_input.a.x), vec2<i32>(74942i, 1i), Struct_2(Struct_1(580f, vec2<f32>(1351f, -892f), true, vec2<f32>(-1000f, 122f)), Struct_1(1215f, vec2<f32>(-1305f, -313f), global1.x, vec2<f32>(-537f, -450f))), Struct_1(620f, vec2<f32>(-122f, -1446f), false, vec2<f32>(-1000f, -1000f))), func_4(Struct_2(Struct_1(1155f, vec2<f32>(1215f, -255f), global1.x, vec2<f32>(-1229f, -1000f)), Struct_1(1062f, vec2<f32>(-992f, -100f), true, vec2<f32>(-1098f, 1286f))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -669f), _wgslsmith_f_op_vec3_f32(func_3()).xz, func_2(u_input.a.xzw, var_2.yz, Struct_2(Struct_1(-315f, vec2<f32>(503f, -1105f), var_1.x, vec2<f32>(-619f, 138f)), Struct_1(327f, vec2<f32>(-789f, 265f), var_1.x, vec2<f32>(-541f, 377f))), Struct_1(-953f, vec2<f32>(2038f, 1953f), false, vec2<f32>(2450f, 208f))).c, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(378f, -110f), vec2<f32>(-241f, 738f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = u_input.a ^ ~(~(~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36953u, 7u)], 7u)], global3[_wgslsmith_index_u32(u_input.c, 7u)], global3[_wgslsmith_index_u32(66u, 7u)], global3[_wgslsmith_index_u32(54313u, 7u)])));
    var var_2 = Struct_2(func_1(), func_2(vec3<u32>(~var_1.x, ~global3[_wgslsmith_index_u32(var_1.x, 7u)] >> (~72785u % 32u), ~var_1.x), vec2<i32>(-1i, reverseBits(global2[_wgslsmith_index_u32(var_1.x, 12u)])), Struct_2(func_4(Struct_2(Struct_1(var_0.b.x, var_0.b, true, var_0.b), Struct_1(-867f, var_0.b, var_0.c, var_0.b))), Struct_1(-340f, _wgslsmith_f_op_vec2_f32(var_0.b * var_0.b), 2147483647i >= global2[_wgslsmith_index_u32(14324u, 12u)], _wgslsmith_f_op_vec2_f32(-var_0.b))), Struct_1(_wgslsmith_f_op_f32(max(-935f, _wgslsmith_f_op_f32(abs(1402f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a, -1159f))) + var_0.d), _wgslsmith_f_op_f32(var_0.d.x - var_0.d.x) > _wgslsmith_f_op_f32(-1373f - 1257f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, var_0.d.x))), var_0.b)))));
    var var_3 = Struct_2(func_2(abs(select(vec3<u32>(0u, global3[_wgslsmith_index_u32(0u, 7u)], 4294967295u), vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 7u)], 7u)]), global1.yyy)) >> (vec3<u32>(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(4294967295u, 7u)], var_1.x), _wgslsmith_mod_u32(10322u, 17358u), 1u) % vec3<u32>(32u)), reverseBits(~vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(0u, 12u)]) | vec2<i32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 12u)], global2[_wgslsmith_index_u32(u_input.c, 12u)])), Struct_2(func_1(), var_2.a), func_1()), func_4(Struct_2(func_1(), func_2(reverseBits(u_input.a.yxw), vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)]) >> (vec2<u32>(60049u, 0u) % vec2<u32>(32u)), Struct_2(Struct_1(-267f, vec2<f32>(420f, -1424f), true, var_2.b.d), var_2.b), var_2.a))));
    global0 = array<vec2<bool>, 15>();
    var var_4 = Struct_2(func_2(var_1.ywz, _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(30801u, 12u)], 1i, global2[_wgslsmith_index_u32(37438u, 12u)]), vec3<i32>(global2[_wgslsmith_index_u32(var_1.x, 12u)], -1i, -25888i)), ~global2[_wgslsmith_index_u32(u_input.a.x, 12u)]), select(vec2<i32>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)]), _wgslsmith_mod_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(12873u, 12u)], -34396i), vec2<i32>(218i, 20439i)), var_2.b.c)), Struct_2(var_3.a, var_2.a), func_2(countOneBits(vec3<u32>(9406u, var_1.x, 1u)) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 51490u, 29489u), vec3<u32>(global3[_wgslsmith_index_u32(var_1.x, 7u)], 4294967295u, u_input.c)) % vec3<u32>(32u)), vec2<i32>(global2[_wgslsmith_index_u32(11872u, 12u)], global2[_wgslsmith_index_u32(43351u, 12u)]) | countOneBits(vec2<i32>(2147483647i, -1i)), Struct_2(Struct_1(var_0.b.x, vec2<f32>(var_2.b.d.x, 1127f), true, var_0.d), func_1()), func_2(select(vec3<u32>(global3[_wgslsmith_index_u32(17109u, 7u)], 4294967295u, u_input.a.x), u_input.a.xwy, global1.www), -vec2<i32>(global2[_wgslsmith_index_u32(var_1.x, 12u)], 2147483647i), Struct_2(var_2.b, Struct_1(var_2.b.d.x, var_0.b, false, var_2.a.b)), var_3.b))), var_2.a);
    var_2 = Struct_2(Struct_1(var_4.b.d.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b.b - vec2<f32>(var_3.a.b.x, var_2.a.b.x))) - _wgslsmith_f_op_vec2_f32(var_0.b - vec2<f32>(879f, 1743f))), global2[_wgslsmith_index_u32(countOneBits(u_input.c), 12u)] == -global2[_wgslsmith_index_u32(abs(74023u), 12u)], var_3.a.b), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1459f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.d.x) - _wgslsmith_f_op_f32(round(1463f))), -1541f), true, var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.a.b.x));
}

