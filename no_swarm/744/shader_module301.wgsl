struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(true, false, false, false, true, false, false, false, false, false, true, false, true, false, false, true, true, false, false);

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(46029i), -1729f, Struct_1(-30715i), 2147483647i, Struct_1(-12i)), Struct_2(Struct_1(-1i), 1020f, Struct_1(8579i), i32(-2147483648), Struct_1(i32(-2147483648))), Struct_2(Struct_1(-25780i), 586f, Struct_1(0i), 0i, Struct_1(0i)), Struct_2(Struct_1(-12024i), -686f, Struct_1(-10542i), 0i, Struct_1(-1984i)), Struct_2(Struct_1(2147483647i), -112f, Struct_1(-2989i), 47137i, Struct_1(1i)), Struct_2(Struct_1(0i), -1000f, Struct_1(i32(-2147483648)), 1i, Struct_1(i32(-2147483648))), Struct_2(Struct_1(-23119i), 1000f, Struct_1(-20706i), -24257i, Struct_1(1i)), Struct_2(Struct_1(2147483647i), -1539f, Struct_1(-9285i), i32(-2147483648), Struct_1(1i)), Struct_2(Struct_1(1i), 1190f, Struct_1(-1i), 7053i, Struct_1(-33258i)), Struct_2(Struct_1(0i), 1360f, Struct_1(-17855i), 2147483647i, Struct_1(-18240i)), Struct_2(Struct_1(1149i), 240f, Struct_1(-20359i), -6501i, Struct_1(0i)), Struct_2(Struct_1(1i), -584f, Struct_1(-1i), 24990i, Struct_1(i32(-2147483648))), Struct_2(Struct_1(i32(-2147483648)), 1421f, Struct_1(i32(-2147483648)), 0i, Struct_1(0i)), Struct_2(Struct_1(1i), 819f, Struct_1(50364i), i32(-2147483648), Struct_1(i32(-2147483648))), Struct_2(Struct_1(-1i), -774f, Struct_1(-20391i), -17525i, Struct_1(1i)), Struct_2(Struct_1(-1645i), -1631f, Struct_1(0i), -32557i, Struct_1(i32(-2147483648))), Struct_2(Struct_1(1508i), -1239f, Struct_1(i32(-2147483648)), -1i, Struct_1(-1i)), Struct_2(Struct_1(-8017i), 1465f, Struct_1(-1i), 7716i, Struct_1(1i)), Struct_2(Struct_1(-92180i), 533f, Struct_1(-10386i), 0i, Struct_1(-1i)), Struct_2(Struct_1(i32(-2147483648)), -1753f, Struct_1(0i), 1i, Struct_1(-2900i)), Struct_2(Struct_1(9755i), -111f, Struct_1(-1i), -25633i, Struct_1(0i)));

var<private> global2: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> bool {
    global1 = array<Struct_2, 21>();
    global0 = array<bool, 19>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 21u)];
    let var_1 = 1u & reverseBits(~(~(~u_input.a)));
    var var_2 = min(var_1, 4813u);
    return false;
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: bool, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-1885f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-180f))) * -1302f)));
    let var_1 = Struct_1(_wgslsmith_clamp_i32(1i, -1i, -(~0i) >> (1u % 32u)));
    global2 = 1000f;
    var var_2 = u_input.a;
    var var_3 = var_1.a;
    return var_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_add_i32(reverseBits(~(i32(-1i) * -17641i)), ~(~(-23416i))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1f), -515f, _wgslsmith_f_op_f32(291f + -1300f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -982f))));
    global2 = 947f;
    var var_2 = Struct_2(func_3(~(~(~u_input.a)), select(!vec3<bool>(true, true, arg_1.x), vec3<bool>(!global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, arg_0.x), 19u)], func_2(arg_0.x, global0[_wgslsmith_index_u32(1u, 19u)], Struct_1(var_0.a))), func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 112610u), arg_0.yy), false, Struct_1(var_0.a))), any(select(vec4<bool>(arg_1.x, global0[_wgslsmith_index_u32(arg_0.x, 19u)], arg_1.x, arg_1.x), !vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 19u)], global0[_wgslsmith_index_u32(25072u, 19u)], false), any(arg_1))), u_input.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-279f))))), var_0, _wgslsmith_div_i32((_wgslsmith_clamp_i32(0i, var_0.a, -19664i) >> (~u_input.a % 32u)) | var_0.a, -4220i), Struct_1(func_3(u_input.a, select(select(vec3<bool>(true, arg_1.x, true), vec3<bool>(global0[_wgslsmith_index_u32(99012u, 19u)], true, true), vec3<bool>(false, false, true)), select(vec3<bool>(arg_1.x, false, global0[_wgslsmith_index_u32(arg_0.x, 19u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 19u)], true, true), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 19u)], true)), select(vec3<bool>(arg_1.x, global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 19u)], global0[_wgslsmith_index_u32(arg_0.x, 19u)], arg_1.x), true)), var_0.a < var_0.a, _wgslsmith_add_u32(u_input.a << (arg_0.x % 32u), arg_0.x << (0u % 32u))).a));
    var var_3 = var_2.c;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_mod_i32(_wgslsmith_sub_i32(func_1(vec4<u32>(25041u, 0u, u_input.a, 4294967295u), vec2<bool>(false, false)), -12350i), 1i) & -1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_0, 25378i), 2631f, ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(26247u, 90875u), vec2<u32>(90814u, u_input.a)), ~vec2<u32>(34701u, u_input.a)), ~max(vec2<u32>(u_input.a, 118065u), vec2<u32>(u_input.a, u_input.a))));
}

