struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: i32) -> i32 {
    global0 = array<vec4<bool>, 27>();
    let var_0 = Struct_1(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1330f))), arg_2);
    var var_1 = Struct_5(u_input.c.wy << (u_input.b.xx % vec2<u32>(32u)), arg_1.x);
    global0 = array<vec4<bool>, 27>();
    var var_2 = -_wgslsmith_mult_i32(~_wgslsmith_mod_i32(2147483647i, _wgslsmith_clamp_i32(1i, u_input.c.x, u_input.d.x)), 1i);
    return var_0.c;
}

fn func_3() -> bool {
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    let var_0 = Struct_2(!vec2<bool>(!any(global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), !all(vec3<bool>(false, false, true))), Struct_1(u_input.c.x >> (1u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -302f)))), _wgslsmith_div_i32(u_input.c.x, ~u_input.c.x >> (77168u % 32u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b));
    global0 = array<vec4<bool>, 27>();
    return any(!(!vec3<bool>(var_0.a.x != true, true, select(var_0.a.x, var_0.a.x, false))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> bool {
    global0 = array<vec4<bool>, 27>();
    let var_0 = any(arg_1.b.wx);
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    return false;
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_3 {
    let var_0 = 998f;
    var var_1 = func_4(Struct_1(12558i, 507f, ~_wgslsmith_clamp_i32(u_input.d.x, u_input.e, func_2(u_input.e, vec4<bool>(arg_0, arg_0, true, arg_0), -55177i))), Struct_4(~u_input.b, !vec4<bool>(false, arg_0, arg_0, func_3()), arg_1 >> (min(u_input.a, 1u) % 32u), Struct_2(select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0)), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0)), !vec2<bool>(arg_0, arg_0)), Struct_1(_wgslsmith_clamp_i32(-2147483647i, u_input.c.x, arg_1), _wgslsmith_f_op_f32(472f * 131f), select(2147483647i, arg_1, true)))));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -126f) - -1322f)))));
    var var_3 = firstLeadingBit(countOneBits(_wgslsmith_sub_vec3_i32(u_input.c.zyx, (u_input.c.wyw & vec3<i32>(0i, -2147483647i, arg_1)) & -u_input.c.xww)));
    let var_4 = Struct_1(-(~1i), var_0, -abs(u_input.d.x));
    return Struct_3(select(reverseBits(vec4<u32>(~u_input.b.x, ~u_input.b.x, reverseBits(1u), _wgslsmith_dot_vec3_u32(u_input.b.zww, u_input.b.xyx))), vec4<u32>(reverseBits(_wgslsmith_div_u32(4294967295u, u_input.a)), select(~4294967295u, u_input.a, arg_0), 6315u, u_input.b.x), max(127985u | u_input.a, 1u) > ~u_input.b.x), vec4<i32>(reverseBits(2147483647i), -1i, -arg_1, var_4.c), _wgslsmith_add_i32(-38310i, u_input.e & 53861i), var_4);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(reverseBits(~(~vec4<u32>(4294967295u, 1u, 16382u, u_input.a))) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 33003u) ^ vec4<u32>(50388u, u_input.b.x, u_input.a, u_input.b.x), u_input.b) % vec4<u32>(32u)), vec4<u32>(4294967295u, 0u, ~35086u, u_input.a));
    var var_1 = func_1(true, -1i);
    let var_2 = any(vec2<bool>(true, true));
    var_1 = Struct_3(~_wgslsmith_mod_vec4_u32(~vec4<u32>(65514u, var_1.a.x, 1u, var_0.x), ~(~vec4<u32>(var_1.a.x, 0u, 1u, 95142u))), _wgslsmith_add_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_1.d.c), var_1.b.ww), countOneBits(~(-60373i)), reverseBits(_wgslsmith_clamp_i32(1i, var_1.b.x, var_1.d.a)), -2147483647i), firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(u_input.d.x, var_1.c), u_input.d.x, 4746i, 2147483647i))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(~var_1.c, 19160i) >> (var_1.a.x % 32u), countOneBits(0i)), var_1.d);
    let var_3 = Struct_5(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.c ^ vec4<i32>(0i, u_input.c.x, var_1.c, var_1.b.x), _wgslsmith_mult_vec4_i32(u_input.c, u_input.c)), vec4<i32>(var_1.c | 2147483647i, u_input.d.x | var_1.b.x, var_1.b.x | 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(4676i, -2147483647i, -2147483647i, u_input.e), var_1.b))), -2713i), var_2);
    global0 = array<vec4<bool>, 27>();
    var var_4 = true;
    let var_5 = -35921i;
    var var_6 = select(select(~((vec2<u32>(var_0.x, var_1.a.x) | var_1.a.yy) >> (u_input.b.xy % vec2<u32>(32u))), ~var_0.wx, vec2<bool>(var_3.b, !any(vec2<bool>(false, true)))), vec2<u32>(firstLeadingBit(0u), abs(~var_0.x)) << (func_1(true, var_1.b.x & var_5).a.yw % vec2<u32>(32u)), !select(vec2<bool>(all(vec2<bool>(true, var_3.b)), true), vec2<bool>(var_1.d.b != var_1.d.b, true), vec2<bool>(all(vec3<bool>(var_2, var_2, var_2)), select(true, var_3.b, false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.b, ~(-56629i));
}

