struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(2233f, 1120f, 1000f, -2169f), vec4<f32>(400f, 1489f, -168f, 1039f), vec4<f32>(862f, 630f, -1175f, -3102f), vec4<f32>(955f, 1690f, -649f, -1500f), vec4<f32>(-1365f, 816f, 386f, 1000f), vec4<f32>(364f, 350f, 193f, 647f), vec4<f32>(-663f, 1000f, 1256f, -291f), vec4<f32>(233f, 1514f, -639f, 210f), vec4<f32>(-991f, 736f, -1273f, 457f), vec4<f32>(404f, -2435f, 655f, 1470f), vec4<f32>(1000f, -2260f, -841f, 1976f), vec4<f32>(-1000f, -211f, 588f, 359f), vec4<f32>(-1248f, -154f, 452f, -1639f), vec4<f32>(-2199f, -2123f, -2693f, 1068f), vec4<f32>(335f, -1208f, 372f, -361f), vec4<f32>(-537f, 650f, -635f, 113f), vec4<f32>(-607f, -639f, -114f, -1432f));

var<private> global1: vec4<i32>;

var<private> global2: u32 = 4294967295u;

var<private> global3: Struct_1;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_add_i32(~(~(-7822i)), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, 0i, u_input.a.x)), global1.wxy | vec3<i32>(-2147483647i, -2147483647i, -10851i)) << (u_input.b.x % 32u)) ^ max(global1.x, u_input.a.x);
    var var_1 = _wgslsmith_clamp_vec2_u32(select(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b, !vec2<bool>(true, !global3.a.x)), u_input.b, ~vec2<u32>(max(9577u, reverseBits(u_input.c.x)), ~abs(u_input.c.x)));
    var var_2 = Struct_1(global3.a);
    var_1 = _wgslsmith_sub_vec2_u32(abs((vec2<u32>(38305u, 1375u) >> (~u_input.c.zz % vec2<u32>(32u))) >> (u_input.c.xz % vec2<u32>(32u))), vec2<u32>(~u_input.c.x, u_input.c.x));
    var var_3 = Struct_1(select(!vec2<bool>(global3.a.x | var_2.a.x, true), !(!(!vec2<bool>(true, global3.a.x))), !global3.a.x));
    return abs(_wgslsmith_add_u32(u_input.c.x, max(u_input.b.x, u_input.c.x)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> i32 {
    global3 = Struct_1(select(vec2<bool>(true, ~u_input.b.x != ~u_input.b.x), vec2<bool>(select(false, any(vec2<bool>(arg_0.a.x, false)), global3.a.x), false), arg_0.a.x));
    global3 = arg_0;
    global0 = array<vec4<f32>, 17>();
    var var_0 = select(~vec4<u32>(min(u_input.c.x, 93993u), u_input.c.x, 3283u, ~func_3()), _wgslsmith_mult_vec4_u32(select(abs(firstLeadingBit(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, u_input.c.x))), ~vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 4074u), !select(vec4<bool>(global3.a.x, arg_2.a.x, arg_2.a.x, true), vec4<bool>(false, arg_2.a.x, global3.a.x, true), vec4<bool>(true, arg_2.a.x, arg_0.a.x, arg_0.a.x))), vec4<u32>(countOneBits(5141u), 1u, ~u_input.b.x, u_input.c.x)), !select(!select(vec4<bool>(false, arg_2.a.x, false, global3.a.x), vec4<bool>(false, arg_2.a.x, true, false), vec4<bool>(false, true, false, arg_2.a.x)), !select(vec4<bool>(global3.a.x, global3.a.x, global3.a.x, false), vec4<bool>(false, global3.a.x, global3.a.x, global3.a.x), global3.a.x), false));
    let var_1 = arg_2;
    return ~(0i);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>) -> Struct_1 {
    global0 = array<vec4<f32>, 17>();
    global1 = abs(reverseBits(vec4<i32>(_wgslsmith_clamp_i32(2147483647i, u_input.d, -29958i), -u_input.a.x, global1.x, func_2(Struct_1(vec2<bool>(arg_1.x, false)), u_input.d, Struct_1(global3.a))))) | (~(~vec4<i32>(-2147483647i, global1.x, global1.x, -1i)) >> (_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.b.x, 1u, 4294967295u, u_input.b.x)), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(40551u, 4294967295u, u_input.c.x, u_input.b.x)), vec4<u32>(u_input.b.x, 66195u, u_input.c.x, 4294967295u))) % vec4<u32>(32u)));
    var var_0 = Struct_1(select(arg_0, !select(arg_0, arg_1.zz, vec2<bool>(global3.a.x, true)), true));
    var_0 = Struct_1(vec2<bool>(arg_1.x, (arg_0.x & true) || !all(vec3<bool>(arg_0.x, var_0.a.x, global3.a.x))));
    var var_1 = Struct_1(!select(select(!vec2<bool>(true, arg_0.x), vec2<bool>(false, arg_1.x), vec2<bool>(arg_0.x, true)), select(arg_1.xz, select(var_0.a, arg_1.zy, vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(arg_1.x, true), arg_0)), !(!var_0.a)));
    return Struct_1(vec2<bool>(arg_0.x, false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global3 = arg_0;
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(897f, -643f), _wgslsmith_f_op_f32(step(-732f, -1429f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1531f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-236f, 103f)))))))));
    global0 = array<vec4<f32>, 17>();
    var var_1 = Struct_1(!select(arg_0.a, vec2<bool>(false, !arg_0.a.x), select(arg_1.a, vec2<bool>(arg_3, true), arg_0.a.x)));
    let var_2 = select(false, arg_3, var_1.a.x);
    return Struct_1(!select(!var_1.a, select(!vec2<bool>(arg_0.a.x, var_2), vec2<bool>(false, arg_3), false), arg_0.a));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1552f, _wgslsmith_f_op_f32(-938f - -934f), _wgslsmith_f_op_f32(trunc(327f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-524f, -254f, -1000f))), !(!vec3<bool>(global3.a.x, arg_1.a.x, true))))), vec3<f32>(1f, 1f, 1f));
    var var_1 = !vec4<bool>(true, arg_1.a.x, ((5947i ^ u_input.d) ^ (-2005i ^ u_input.d)) == global1.x, !(!all(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, global3.a.x))));
    global3 = Struct_1(select(func_4(Struct_1(func_1(arg_1.a, vec3<bool>(false, global3.a.x, arg_1.a.x)).a), func_1(vec2<bool>(var_1.x, var_1.x), vec3<bool>(arg_1.a.x, var_1.x, var_1.x)), Struct_1(var_1.zx), arg_1.a.x).a, global3.a, !func_1(select(arg_1.a, arg_1.a, arg_1.a), var_1.xxx).a.x));
    var_1 = !(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, var_1.x), vec4<bool>(global3.a.x, arg_1.a.x, false, global3.a.x), vec4<bool>(false, true, var_1.x, true)), true)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1485f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 271f) - -337f) - -226f) + 323f));
    var var_1 = Struct_1(!global3.a);
    var var_2 = func_5(4294967295u, func_4(func_1(!vec2<bool>(true, var_1.a.x), !(!vec3<bool>(global3.a.x, global3.a.x, var_1.a.x))), Struct_1(!global3.a), func_1(vec2<bool>(all(vec2<bool>(global3.a.x, global3.a.x)), global3.a.x), select(select(vec3<bool>(global3.a.x, global3.a.x, global3.a.x), vec3<bool>(global3.a.x, var_1.a.x, var_1.a.x), true), !vec3<bool>(true, global3.a.x, true), !vec3<bool>(false, var_1.a.x, true))), var_1.a.x));
    let var_3 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.a.x, 0i, u_input.a.x, 1i) << (vec4<u32>(4294967295u, 51049u, 0u, u_input.b.x) % vec4<u32>(32u))), -(vec4<i32>(-2147483647i, 7977i, global1.x, global1.x) ^ vec4<i32>(u_input.d, 34258i, u_input.d, 16738i))), select(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.a.x, 9963i, u_input.d), ~(vec4<i32>(-53730i, global1.x, 9787i, u_input.d) | vec4<i32>(u_input.a.x, global1.x, 0i, global1.x)), !(!vec4<bool>(false, var_2.a.x, true, var_2.a.x)))) & (abs(~_wgslsmith_add_vec4_i32(vec4<i32>(-29510i, global1.x, global1.x, global1.x), vec4<i32>(1i, 5554i, u_input.d, 0i))) >> (abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(14167u, u_input.c.x, u_input.b.x, 1u), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, 4294967295u))) % vec4<u32>(32u)));
    let var_4 = _wgslsmith_mod_u32(u_input.c.x >> (~(countOneBits(u_input.b.x) & u_input.b.x) % 32u), u_input.b.x);
    global3 = func_1(!global3.a, !select(select(select(vec3<bool>(var_2.a.x, true, false), vec3<bool>(var_1.a.x, true, var_2.a.x), vec3<bool>(true, true, var_1.a.x)), vec3<bool>(global3.a.x, global3.a.x, global3.a.x), !vec3<bool>(var_2.a.x, var_1.a.x, false)), vec3<bool>(!var_2.a.x, !var_2.a.x, func_5(28620u, Struct_1(var_1.a)).a.x), select(vec3<bool>(true, var_1.a.x, var_2.a.x), select(vec3<bool>(var_1.a.x, global3.a.x, false), vec3<bool>(global3.a.x, true, true), global3.a.x), var_2.a.x)));
    let var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-174f, -1000f) * 893f) * _wgslsmith_div_f32(var_0, var_0)), _wgslsmith_f_op_f32(exp2(var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-912f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(var_0, -1422f), var_2.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-1210f * var_0))))));
    var var_6 = ~(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, u_input.a.x) >> (u_input.c.zz % vec2<u32>(32u)), var_3.xy ^ vec2<i32>(-38521i, u_input.a.x)) >> (min(var_4, var_4) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(u_input.a.x, -(1i | var_3.x)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(987f * _wgslsmith_f_op_f32(round(var_5))))), 1455f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1384f))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(466f + 912f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_5 - var_0)))), var_5, 1165f, 1f), vec3<i32>(firstTrailingBit(global1.x), _wgslsmith_add_i32(u_input.d, ~u_input.d), var_3.x) & -countOneBits(~global1.yyy));
}

