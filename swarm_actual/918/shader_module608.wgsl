struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(4294967295u, 1u), vec2<u32>(50170u, 17904u), vec2<u32>(12940u, 4294967295u), vec2<u32>(32386u, 103749u), vec2<u32>(90636u, 1u), vec2<u32>(19146u, 4294967295u), vec2<u32>(12368u, 16717u), vec2<u32>(4294967295u, 72488u), vec2<u32>(5970u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(34415u, 1u), vec2<u32>(0u, 16428u), vec2<u32>(24789u, 1u), vec2<u32>(30316u, 9569u), vec2<u32>(1u, 1u), vec2<u32>(92103u, 61202u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global0 = array<vec2<u32>, 17>();
    var var_0 = -23780i ^ arg_1.a.x;
    var_0 = ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, firstTrailingBit(arg_0.b)), _wgslsmith_clamp_i32(0i, arg_0.a.x, ~(~u_input.a.x)), arg_1.a.x);
    let var_1 = select(81422u, 1u, false);
    let var_2 = ~_wgslsmith_sub_vec3_u32(~min(vec3<u32>(38625u, 10906u, var_1) << (vec3<u32>(31695u, var_1, 52119u) % vec3<u32>(32u)), ~vec3<u32>(109121u, var_1, var_1)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u) >> (~vec3<u32>(var_1, var_1, 0u) % vec3<u32>(32u)), ~(~vec3<u32>(4294967295u, var_1, 25314u))));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    let var_0 = Struct_1(vec4<i32>(select(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.a.x, 9792i), u_input.b.yy), -arg_2.a.xz), firstLeadingBit(arg_1.a.x), func_3(Struct_1(vec4<i32>(-45854i, -11630i, 2147483647i, arg_0.a.x), -1i), Struct_1(vec4<i32>(-2147483647i, u_input.b.x, 16185i, -2147483647i), arg_2.b))), 64530i, ~arg_1.a.x, _wgslsmith_dot_vec4_i32(u_input.a, arg_2.a)), u_input.b.x);
    let var_1 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(select(arg_1.a.zz, vec2<i32>(1i, -1i), false), arg_1.a.wy) & 1147i, arg_1.a.x ^ (i32(-1i) * -26213i)), i32(-1i) * -1i, -firstTrailingBit(-34798i));
    return 0u;
}

fn func_1() -> Struct_1 {
    let var_0 = abs(global0[_wgslsmith_index_u32(31306u, 17u)] >> (~(~global0[_wgslsmith_index_u32(~33640u, 17u)]) % vec2<u32>(32u)));
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    let var_1 = _wgslsmith_add_u32(4294967295u, select(abs(829u), ~func_2(Struct_1(vec4<i32>(29110i, -2147483647i, u_input.a.x, u_input.b.x), u_input.a.x), Struct_1(u_input.b, u_input.a.x), Struct_1(u_input.a, u_input.b.x)), any(vec3<bool>(true, true, true))) & ~_wgslsmith_add_u32(19169u, min(25946u, var_0.x)));
    return Struct_1(~abs(vec4<i32>(62073i, u_input.b.x, u_input.a.x, u_input.a.x | -45249i)), -(~(firstLeadingBit(u_input.a.x) >> (firstTrailingBit(var_0.x) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(864f, 1045f), _wgslsmith_f_op_f32(floor(-1211f)), -2817f)) - vec3<f32>(586f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(723f * -252f))), 210f)));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(60122u, 0u, 1u, 31569u), vec4<u32>(43575u, 7679u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 34224u, 4294967295u))), vec4<u32>(29522u, 4294967295u, 20937u, 26721u)), _wgslsmith_add_u32(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, 0u), 0u), select(reverseBits(658u), ~abs(8857u), true)), ~_wgslsmith_mod_u32(min(1u, ~4294967295u), ~abs(5819u)), countOneBits(27840u));
    global0 = array<vec2<u32>, 17>();
    var var_2 = func_1();
    var_2 = Struct_1(-vec4<i32>(~_wgslsmith_sub_i32(1296i, 1i), _wgslsmith_clamp_i32(-u_input.b.x, _wgslsmith_sub_i32(var_2.b, 0i), ~u_input.a.x), -2147483647i & _wgslsmith_clamp_i32(7168i, var_2.a.x, 3735i), reverseBits(1i)), 1i);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)), var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-591f, -869f)), 280f, true)), 655f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-517f, var_0.x, var_0.x, -3035f), vec4<f32>(var_0.x, 286f, var_0.x, -1513f))))));
    var var_4 = _wgslsmith_add_i32(-min(countOneBits(6973i) << (_wgslsmith_add_u32(var_1.x, var_1.x) % 32u), abs(-1i) | max(u_input.b.x, -1i)), -2147483647i);
    var_4 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(46686i, _wgslsmith_mult_vec3_i32(vec3<i32>(func_1().b, var_2.a.x, _wgslsmith_clamp_i32(1i >> (var_1.x % 32u), i32(-1i) * -53704i, firstLeadingBit(u_input.a.x))), u_input.a.zwz), firstLeadingBit(vec4<u32>(4294967295u, abs(0u), ~(var_1.x | var_1.x), 1u)));
}

