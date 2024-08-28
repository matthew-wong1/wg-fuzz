struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<bool>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(-1122f, -238f, -987f, -497f, -1234f, 1000f, 692f, -781f, -367f, -1000f, -1142f, 192f, 1000f, -473f, -415f, 1119f);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> u32 {
    var var_0 = 4294967295u;
    let var_1 = reverseBits(-u_input.a ^ (u_input.b >> (~(~u_input.c.x) % 32u)));
    global0 = array<f32, 16>();
    var_0 = ~(~(~(~_wgslsmith_sub_u32(16036u, 1u))));
    let var_2 = vec4<bool>(false, any(!select(arg_1.a.e, vec4<bool>(false, false, false, false), false)) != any(!(!arg_1.a.e)), arg_1.a.e.x, all(arg_1.a.e.xyz));
    return ~_wgslsmith_dot_vec3_u32(~firstLeadingBit(select(vec3<u32>(u_input.c.x, u_input.c.x, 13716u), arg_1.a.a, arg_1.a.c.x)), abs(arg_1.a.a));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(~vec3<u32>(65271u, firstLeadingBit(arg_1.x), func_3(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], Struct_3(Struct_1(vec3<u32>(arg_0.a.x, 8627u, arg_1.x), true, arg_2.c, arg_2.e.x, vec4<bool>(true, false, arg_0.b, false)), vec4<f32>(1323f, global0[_wgslsmith_index_u32(0u, 16u)], 730f, 425f)))), select(arg_2.d, true, -627f < global0[_wgslsmith_index_u32(firstLeadingBit(arg_2.a.x), 16u)]), vec2<bool>(!arg_2.e.x || arg_2.e.x, arg_0.e.x), true, vec4<bool>(!all(vec4<bool>(false, false, arg_0.b, arg_0.b)), arg_2.c.x, all(arg_2.e.xyx), ~u_input.c.x >= min(20752u, 39302u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(arg_0.a.x, 16u)], global0[_wgslsmith_index_u32(6083u, 16u)], global0[_wgslsmith_index_u32(arg_2.a.x, 16u)]) * vec4<f32>(548f, -274f, 272f, -1098f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1884f, global0[_wgslsmith_index_u32(1u, 16u)], 1246f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(738f, global0[_wgslsmith_index_u32(arg_1.x, 16u)], 3289f, -100f) + vec4<f32>(-1289f, 479f, 723f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)]))))));
    let var_1 = arg_0.a.x;
    var_0 = Struct_3(arg_0, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.b), vec4<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(arg_2.a.x, 16u)], _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(var_1, 16u)], -1583f)))), _wgslsmith_f_op_f32(floor(-1000f)), var_0.b.x, global0[_wgslsmith_index_u32(~1u, 16u)]), true)));
    let var_2 = -6952i;
    let var_3 = Struct_2(-u_input.b, _wgslsmith_clamp_u32(4294967295u, firstTrailingBit(1u) ^ 16625u, arg_2.a.x) & ~1u, ~(_wgslsmith_sub_i32(var_2, -1i) | -1i) & _wgslsmith_mult_i32(8913i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(1i, -27379i)), vec2<i32>(var_2, var_2) << (vec2<u32>(95421u, u_input.c.x) % vec2<u32>(32u)))), arg_0);
    return Struct_1(vec3<u32>(~(~27702u), _wgslsmith_mod_u32(21018u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 22833u, var_1, 115591u), max(vec4<u32>(55136u, var_0.a.a.x, arg_2.a.x, 0u), vec4<u32>(4294967295u, 11865u, 24939u, 20222u)))), 1u), false, arg_0.e.zx, arg_2.b, vec4<bool>(all(!vec2<bool>(true, arg_0.e.x)) == true, !(~arg_0.a.x != var_1), false, false));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1.a.xx;
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    let var_1 = Struct_2(~u_input.b, 84887u, -13419i, func_2(Struct_1(firstTrailingBit(vec3<u32>(arg_0.x, var_0.x, 104403u)), !arg_1.e.x, arg_1.e.xw, all(vec2<bool>(true, true)), arg_1.e), _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.c.x, 21830u), arg_1.a.xx), arg_1));
    let var_2 = select(arg_1.e.zyz, arg_1.e.wxw, !arg_1.e.xzw);
    return global0[_wgslsmith_index_u32(0u, 16u)];
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> vec2<bool> {
    global0 = array<f32, 16>();
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.x, -190f, 343f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(firstTrailingBit(vec3<u32>(0u, 4294967295u, 27963u)), func_2(Struct_1(vec3<u32>(81732u, u_input.c.x, u_input.c.x), true, vec2<bool>(true, true), false, vec4<bool>(false, true, arg_0, true)), u_input.c, Struct_1(vec3<u32>(u_input.c.x, 58507u, 58352u), arg_0, vec2<bool>(true, arg_0), false, vec4<bool>(false, arg_0, true, arg_0)))))))));
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    var var_1 = vec2<u32>(func_2(func_2(func_2(func_2(Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, 50944u), arg_0, vec2<bool>(false, arg_0), true, vec4<bool>(true, arg_0, arg_0, true)), vec2<u32>(u_input.c.x, 1u), Struct_1(vec3<u32>(u_input.c.x, 1u, u_input.c.x), arg_0, vec2<bool>(arg_0, false), true, vec4<bool>(arg_0, arg_0, arg_0, arg_0))), func_2(Struct_1(vec3<u32>(u_input.c.x, 1u, 1u), false, vec2<bool>(true, arg_0), true, vec4<bool>(arg_0, false, arg_0, false)), vec2<u32>(u_input.c.x, 25548u), Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, 1u), true, vec2<bool>(true, true), false, vec4<bool>(arg_0, true, arg_0, arg_0))).a.zy, func_2(Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), arg_0, vec2<bool>(arg_0, arg_0), false, vec4<bool>(false, true, arg_0, arg_0)), u_input.c, Struct_1(vec3<u32>(20560u, 0u, 1u), true, vec2<bool>(arg_0, arg_0), true, vec4<bool>(arg_0, true, arg_0, arg_0)))), ~(~u_input.c), func_2(func_2(Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), arg_0, vec2<bool>(false, false), arg_0, vec4<bool>(true, arg_0, true, true)), u_input.c, Struct_1(vec3<u32>(1u, u_input.c.x, u_input.c.x), arg_0, vec2<bool>(false, false), false, vec4<bool>(arg_0, arg_0, false, arg_0))), firstTrailingBit(u_input.c), Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, 22679u), true, vec2<bool>(arg_0, arg_0), false, vec4<bool>(arg_0, arg_0, false, true)))), _wgslsmith_add_vec2_u32(select(~vec2<u32>(u_input.c.x, 302u), _wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, vec2<u32>(u_input.c.x, u_input.c.x)), vec2<bool>(arg_0, arg_0)), vec2<u32>(firstLeadingBit(u_input.c.x), u_input.c.x)), Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 0u, u_input.c.x)) & ~vec3<u32>(0u, u_input.c.x, 40877u), !(!arg_0), vec2<bool>(true, arg_0), true, !select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_0, arg_0, false, arg_0)))).a.x, (u_input.c.x | 1u) | 72720u);
    return select(!select(func_2(func_2(Struct_1(vec3<u32>(var_1.x, u_input.c.x, 4449u), arg_0, vec2<bool>(false, false), arg_0, vec4<bool>(false, false, arg_0, false)), vec2<u32>(var_1.x, var_1.x), Struct_1(vec3<u32>(var_1.x, 60982u, u_input.c.x), arg_0, vec2<bool>(true, arg_0), arg_0, vec4<bool>(false, arg_0, false, arg_0))), u_input.c, func_2(Struct_1(vec3<u32>(17349u, 68015u, 1u), true, vec2<bool>(false, false), arg_0, vec4<bool>(true, false, arg_0, arg_0)), u_input.c, Struct_1(vec3<u32>(u_input.c.x, 0u, 0u), arg_0, vec2<bool>(true, arg_0), arg_0, vec4<bool>(arg_0, true, arg_0, arg_0)))).c, !(!vec2<bool>(arg_0, arg_0)), true), select(vec2<bool>(true, true), vec2<bool>(true, !arg_0), arg_0), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), func_1(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(824f, 2428f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)]) + vec3<f32>(265f, 944f, 1312f))), select(func_1(false, vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], 717f, -2597f)), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true), vec2<bool>(any(func_2(Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, 0u), false, vec2<bool>(false, true), false, vec4<bool>(true, true, true, false)), u_input.c, Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), false, vec2<bool>(true, true), false, vec4<bool>(true, true, false, false))).e), true)), func_1(true, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(15303u, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)]) - vec3<f32>(2152f, -351f, -1116f)))))), !(u_input.b > u_input.a));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_2(func_2(func_2(Struct_1(vec3<u32>(u_input.c.x, 1u, 5172u), var_0.x, vec2<bool>(var_0.x, var_0.x), var_0.x, vec4<bool>(var_0.x, true, var_0.x, var_0.x)), u_input.c, Struct_1(vec3<u32>(4294967295u, u_input.c.x, 26631u), var_0.x, vec2<bool>(true, var_0.x), false, vec4<bool>(false, true, true, false))), u_input.c, func_2(func_2(Struct_1(vec3<u32>(4294967295u, u_input.c.x, 0u), false, vec2<bool>(var_0.x, false), false, vec4<bool>(var_0.x, var_0.x, var_0.x, false)), u_input.c, Struct_1(vec3<u32>(u_input.c.x, 0u, u_input.c.x), false, vec2<bool>(true, false), true, vec4<bool>(var_0.x, true, var_0.x, var_0.x))), _wgslsmith_div_vec2_u32(u_input.c, u_input.c), Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, 31548u), var_0.x, vec2<bool>(var_0.x, var_0.x), var_0.x, vec4<bool>(var_0.x, var_0.x, true, true)))), ~u_input.c, func_2(Struct_1(reverseBits(vec3<u32>(36183u, 27292u, u_input.c.x)), any(vec4<bool>(var_0.x, true, false, true)), vec2<bool>(var_0.x, true), var_0.x, select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), true)), ~(vec2<u32>(4621u, u_input.c.x) | vec2<u32>(4294967295u, 1u)), func_2(Struct_1(vec3<u32>(u_input.c.x, 14932u, 0u), var_0.x, vec2<bool>(true, var_0.x), var_0.x, vec4<bool>(false, false, var_0.x, true)), vec2<u32>(u_input.c.x, 124430u), func_2(Struct_1(vec3<u32>(1u, u_input.c.x, 1u), var_0.x, vec2<bool>(false, var_0.x), true, vec4<bool>(false, var_0.x, var_0.x, false)), u_input.c, Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), false, vec2<bool>(true, false), var_0.x, vec4<bool>(false, true, var_0.x, true)))))).a, ~vec3<u32>(abs(u_input.c.x), min(u_input.c.x, 1u), 4294967295u)), 16u)];
    let var_2 = vec3<i32>(45026i, -u_input.a, 2147483647i);
    let var_3 = ~vec4<u32>(_wgslsmith_clamp_u32(59187u, ~(~u_input.c.x), ~(~1u)), 37209u, 1u, ~_wgslsmith_div_u32(~64770u, _wgslsmith_mod_u32(u_input.c.x, 0u)));
    var var_4 = all(vec4<bool>(true, true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_clamp_u32(var_3.x, u_input.c.x, u_input.c.x), 10253u, ~4294967295u, u_input.c.x));
}

