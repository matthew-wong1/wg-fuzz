struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3>;

var<private> global1: array<Struct_1, 3>;

var<private> global2: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(0i, 2147483647i), vec2<i32>(16518i, -38771i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-34765i, 0i), vec2<i32>(-15956i, 2147483647i), vec2<i32>(-1i, 14410i), vec2<i32>(2147483647i, -51672i), vec2<i32>(20329i, -31338i), vec2<i32>(1i, -14326i), vec2<i32>(-8128i, 1i), vec2<i32>(5228i, i32(-2147483648)), vec2<i32>(-1i, 52629i), vec2<i32>(0i, 7702i), vec2<i32>(19529i, 6756i), vec2<i32>(0i, 28950i), vec2<i32>(17213i, i32(-2147483648)), vec2<i32>(-11460i, 40i), vec2<i32>(2147483647i, -30723i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, -19176i), vec2<i32>(i32(-2147483648), 1422i), vec2<i32>(20100i, -1i), vec2<i32>(-1i, 35341i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-19021i, -1i), vec2<i32>(-1i, -35068i), vec2<i32>(0i, 1i), vec2<i32>(1i, 0i));

var<private> global3: Struct_1 = Struct_1(4294967295u, 680f);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global0 = array<vec2<i32>, 3>();
    global2 = array<vec2<i32>, 28>();
    var var_0 = arg_1;
    let var_1 = true;
    var var_2 = 69888u;
    return arg_1;
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    var var_1 = vec3<i32>(u_input.d.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.d.x, _wgslsmith_clamp_i32(u_input.d.x, 0i, u_input.b.x)) >> (0u % 32u), u_input.b.x, u_input.e), u_input.b.x | ~_wgslsmith_clamp_i32(u_input.d.x, 1645i, u_input.b.x));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(405f, -1036f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -115f) + -446f) + 883f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b)) + _wgslsmith_f_op_f32(arg_0.b * var_0.b)), -1857f)));
    let var_4 = var_0;
    return global3.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = u_input.c.yz;
    global2 = array<vec2<i32>, 28>();
    let var_1 = global2[_wgslsmith_index_u32(0u, 28u)];
    let var_2 = global2[_wgslsmith_index_u32(1u, 28u)];
    global1 = array<Struct_1, 3>();
    return arg_0.b;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_4(Struct_1(reverseBits(reverseBits(1u)), _wgslsmith_f_op_f32(func_3(func_2(_wgslsmith_f_op_f32(-913f - arg_0), Struct_1(6986u, 1386f), countOneBits(14895u))))), Struct_1(u_input.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1481f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0, global3.b)), 1325f)))));
    let var_1 = arg_0;
    global2 = array<vec2<i32>, 28>();
    let var_2 = ~min(~u_input.c, vec3<u32>(~global3.a, firstTrailingBit(1u), abs(24892u)));
    global3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 102f)) * var_1)), global1[_wgslsmith_index_u32(max(var_2.x, global3.a >> ((abs(36216u) >> (firstTrailingBit(4294967295u) % 32u)) % 32u)), 3u)], 36941u);
    return global1[_wgslsmith_index_u32(var_2.x, 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global3.b);
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, _wgslsmith_div_u32(24550u, 1u), ~26466u) ^ ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_0.a, global3.a), u_input.c), select(~vec3<u32>(global3.a, global3.a, 4294967295u), _wgslsmith_add_vec3_u32(abs(u_input.c), ~u_input.c), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(false, false, true))))), 3u)];
    var var_1 = global1[_wgslsmith_index_u32(68816u & _wgslsmith_mod_u32(1u, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.b)))).a), 3u)];
    let var_2 = 40615u;
    var var_3 = vec2<i32>(max(~1i, -35423i >> (~var_0.a % 32u)), abs(abs(countOneBits(u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~((select(vec4<u32>(42175u, var_1.a, var_1.a, var_0.a), vec4<u32>(var_1.a, var_0.a, var_2, u_input.c.x), vec4<bool>(false, false, true, true)) >> (~vec4<u32>(33826u, 17264u, 0u, 0u) % vec4<u32>(32u))) & _wgslsmith_sub_vec4_u32(vec4<u32>(2960u, u_input.c.x, var_2, var_1.a) << (vec4<u32>(32674u, var_0.a, var_2, 0u) % vec4<u32>(32u)), vec4<u32>(1u, 70614u, 17843u, global3.a))), vec3<i32>(min(i32(-1i) * -2147483647i, -_wgslsmith_mod_i32(var_3.x, var_3.x)), u_input.e, -24362i), min(countOneBits(select(18873u, u_input.c.x, true)), 0u) >> (_wgslsmith_mod_u32(~1u, 1u) % 32u));
}

