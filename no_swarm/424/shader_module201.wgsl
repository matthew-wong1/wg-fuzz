struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(false, vec4<i32>(37163i, -18183i, 16263i, -19820i), vec2<f32>(-475f, -1996f), vec2<f32>(-858f, -450f)), Struct_1(true, vec4<i32>(0i, -59506i, 72739i, 0i), vec2<f32>(-398f, 254f), vec2<f32>(1417f, 1063f)), Struct_1(true, vec4<i32>(37400i, -9627i, i32(-2147483648), 1i), vec2<f32>(153f, -265f), vec2<f32>(-2018f, -689f)), Struct_1(false, vec4<i32>(-22820i, 2147483647i, -1i, 0i), vec2<f32>(-694f, 625f), vec2<f32>(1000f, 1060f)), Struct_1(false, vec4<i32>(10632i, -1i, 18726i, 2147483647i), vec2<f32>(-424f, -1488f), vec2<f32>(449f, 1427f)), Struct_1(false, vec4<i32>(-7210i, -6278i, 2147483647i, -55759i), vec2<f32>(806f, -805f), vec2<f32>(1000f, -289f)), Struct_1(true, vec4<i32>(-13870i, 15830i, 12032i, i32(-2147483648)), vec2<f32>(-228f, -326f), vec2<f32>(1000f, -3542f)), Struct_1(true, vec4<i32>(2147483647i, 6358i, i32(-2147483648), 46725i), vec2<f32>(1216f, 890f), vec2<f32>(718f, 458f)), Struct_1(false, vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 11271i), vec2<f32>(-1073f, 1000f), vec2<f32>(320f, 1713f)), Struct_1(false, vec4<i32>(2147483647i, -51952i, 8722i, -1i), vec2<f32>(719f, 216f), vec2<f32>(499f, 195f)), Struct_1(false, vec4<i32>(0i, -25074i, 2147483647i, 1i), vec2<f32>(-938f, 899f), vec2<f32>(-1776f, -250f)), Struct_1(false, vec4<i32>(9369i, 2147483647i, 521i, -12961i), vec2<f32>(-216f, 674f), vec2<f32>(1608f, -108f)), Struct_1(false, vec4<i32>(-1i, i32(-2147483648), 46565i, 17324i), vec2<f32>(-3288f, 336f), vec2<f32>(-1000f, -448f)), Struct_1(false, vec4<i32>(-9330i, 0i, -20389i, 9679i), vec2<f32>(-1000f, -277f), vec2<f32>(261f, -395f)), Struct_1(true, vec4<i32>(12389i, 24104i, -21749i, 41444i), vec2<f32>(162f, 3199f), vec2<f32>(860f, 1130f)), Struct_1(true, vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -1i), vec2<f32>(107f, -706f), vec2<f32>(-247f, -1000f)), Struct_1(true, vec4<i32>(-14047i, -23157i, -34188i, -36291i), vec2<f32>(1428f, 223f), vec2<f32>(645f, -1091f)), Struct_1(true, vec4<i32>(-18990i, 1i, 1i, -8066i), vec2<f32>(-2411f, -245f), vec2<f32>(1473f, -745f)), Struct_1(true, vec4<i32>(1i, 1i, 2147483647i, i32(-2147483648)), vec2<f32>(-1433f, -857f), vec2<f32>(-692f, 1290f)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = max(reverseBits(u_input.b.x >> (u_input.a.x % 32u)), max(~4294967295u, u_input.a.x));
    var var_1 = _wgslsmith_mod_u32(1u, var_0);
    global1 = array<Struct_1, 19>();
    var_1 = max(var_0, firstLeadingBit(select(~40910u, ~u_input.a.x, true)));
    let var_2 = _wgslsmith_mod_i32(u_input.c, reverseBits(12308i));
    return select(select(vec3<bool>(all(global0[_wgslsmith_index_u32(~0u, 21u)]), false, true), select(vec3<bool>(arg_1.x, all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), u_input.b.x <= 1u), vec3<bool>(true, all(global0[_wgslsmith_index_u32(4294967295u, 21u)]), all(arg_1)), !select(vec3<bool>(true, arg_1.x, false), vec3<bool>(true, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true))), select(select(vec3<bool>(true, arg_1.x, false), select(vec3<bool>(true, false, false), vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(true, arg_1.x, arg_1.x)), !arg_1.x), select(!vec3<bool>(arg_1.x, arg_1.x, true), !vec3<bool>(arg_1.x, true, arg_1.x), any(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x))), any(select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, false, arg_1.x))))), !select(select(vec3<bool>(false, true, arg_1.x), select(vec3<bool>(true, arg_1.x, true), vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(true, true, arg_1.x)), !arg_1.x), vec3<bool>(true, true, true), !(!vec3<bool>(false, arg_1.x, arg_1.x))), all(!(!select(arg_1, vec2<bool>(true, arg_1.x), arg_1.x))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_2.a, arg_2.b, vec2<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(-1787f, arg_0.x, false))), 491f), arg_1.yy);
    var var_1 = 1i;
    let var_2 = Struct_1(all(select(vec3<bool>(true, true, true), vec3<bool>(var_0.a, true, var_0.a), select(func_3(arg_0.x, vec2<bool>(true, var_0.a)), !vec3<bool>(false, var_0.a, true), func_3(580f, vec2<bool>(true, arg_2.a))))), -arg_2.b, arg_2.d, arg_0.yy);
    var var_3 = Struct_1(true, arg_2.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d * vec2<f32>(-438f, -483f)) + _wgslsmith_f_op_vec2_f32(-arg_0.zz)) * vec2<f32>(726f, -853f))), arg_2.c);
    var var_4 = 786f;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(select(~min(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(5551u, 1u, u_input.b.x)), vec3<u32>(~4294967295u, ~14743u, 1u), !(arg_2.c.x <= var_3.c.x)), (vec3<u32>(u_input.b.x, 16072u, u_input.a.x) >> ((vec3<u32>(0u, 43859u, 18201u) >> (vec3<u32>(11807u, 44687u, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u) << (vec3<u32>(31095u, 0u, u_input.a.x) % vec3<u32>(32u)), min(vec3<u32>(4294967295u, 0u, 20840u), vec3<u32>(1u, 0u, u_input.a.x)))), ~abs(vec3<u32>(_wgslsmith_div_u32(1u, 1u), 1u, ~u_input.b.x)));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    var var_0 = _wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(25874u, (40847u ^ ~u_input.a.x) ^ 16842u));
    global0 = array<vec4<bool>, 21>();
    global0 = array<vec4<bool>, 21>();
    var var_1 = vec2<bool>(_wgslsmith_sub_u32(max(func_2(vec3<f32>(281f, 1325f, -1686f), vec3<f32>(243f, -210f, 904f), global1[_wgslsmith_index_u32(2513u, 19u)]), _wgslsmith_mod_u32(u_input.a.x, var_0.x)), u_input.b.x) <= max(~var_0.x | _wgslsmith_mult_u32(var_0.x, 4294967295u), var_0.x), false);
    var_0 = countOneBits(~select(u_input.b, vec2<u32>(1u, ~u_input.b.x), select(vec2<bool>(true, false), select(vec2<bool>(var_1.x, false), vec2<bool>(false, var_1.x), vec2<bool>(arg_0, true)), vec2<bool>(var_1.x, var_1.x))));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1124f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(488f)) * _wgslsmith_f_op_f32(-2972f * -320f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-557f, -225f), vec2<f32>(-771f, 1000f), true)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1365f, 1147f))))), vec2<bool>(true, _wgslsmith_sub_u32(6336u, u_input.a.x) >= _wgslsmith_mod_u32(var_0.x, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 21>();
    let var_0 = firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(90834u, 15369u, ~u_input.b.x, ~30433u)), 89886u ^ u_input.a.x, 60712u, ~_wgslsmith_div_u32(~u_input.b.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x))));
    let x = u_input.a;
    s_output = func_1(true);
}

