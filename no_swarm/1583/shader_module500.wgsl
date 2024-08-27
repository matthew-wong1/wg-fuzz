struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
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

var<private> global0: array<vec2<u32>, 27>;

var<private> global1: array<vec3<i32>, 9>;

var<private> global2: u32;

var<private> global3: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec2<u32>, arg_3: f32) -> f32 {
    var var_0 = 3792i;
    var var_1 = false;
    let var_2 = select(5418u, min(_wgslsmith_sub_u32(13542u, abs(firstLeadingBit(arg_2.x))), arg_2.x | firstLeadingBit(~u_input.d.x)), arg_0.a);
    var var_3 = vec4<i32>(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_dot_vec2_i32(u_input.b.yz ^ vec2<i32>(u_input.b.x, -2147483647i), u_input.b.zz) << (~_wgslsmith_clamp_u32(72756u, var_2, arg_2.x) % 32u), select(10879i, min(u_input.b.x & u_input.a, abs(2147483647i)), true)), -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-u_input.b.xz, ~vec2<i32>(u_input.a, u_input.a)), reverseBits(reverseBits(vec2<i32>(u_input.b.x, -105814i)))), u_input.b.x, 53971i);
    var var_4 = Struct_1(!vec4<bool>(true, arg_1, any(select(vec3<bool>(false, arg_0.a, false), vec3<bool>(arg_0.a, false, arg_1), vec3<bool>(arg_0.a, true, true))), true || arg_1), var_3.x, firstLeadingBit(_wgslsmith_sub_vec3_u32(min(firstLeadingBit(vec3<u32>(0u, 1u, u_input.d.x)), firstLeadingBit(u_input.e.wzy)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, var_2), vec3<u32>(69722u, 4294967295u, 16111u)))), 1070u);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-538f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(122f, arg_3)))), -1764f));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = reverseBits(~(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x, arg_0), 9u)])) ^ u_input.b.wxy;
    let var_1 = Struct_3(Struct_1(vec4<bool>(true, ~u_input.c >= _wgslsmith_clamp_u32(51966u, arg_0, 28740u), !any(vec3<bool>(true, true, false)), true), countOneBits(-var_0.x) >> (((u_input.c | arg_0) << (u_input.d.x % 32u)) % 32u), vec3<u32>(reverseBits(u_input.c), 4294967295u, u_input.e.x), ~select(~4294967295u, u_input.c, true)));
    global0 = array<vec2<u32>, 27>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(var_1.a.a.x), var_1.a.a.x, _wgslsmith_add_vec2_u32(vec2<u32>(106384u, u_input.e.x), vec2<u32>(u_input.c, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -105f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-977f - 1171f) - 1685f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-111f * _wgslsmith_f_op_f32(-453f - 183f)), 764f)), -1565f, -369f));
    let var_3 = u_input.d.x;
    return Struct_3(var_1.a);
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = vec4<u32>(80331u, arg_1.a.c.x, arg_1.a.d, abs(((29929u & arg_1.a.c.x) | 1u) >> (1u % 32u)));
    let var_1 = arg_1.a.c.yy;
    var var_2 = -(~(-countOneBits(u_input.b)) >> (u_input.e % vec4<u32>(32u)));
    global1 = array<vec3<i32>, 9>();
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2431f)) * -1067f);
    return ~firstTrailingBit(select(~(~vec4<u32>(u_input.c, 5068u, u_input.d.x, 96637u)), ~reverseBits(u_input.e), arg_1.a.a.x));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<u32>) -> Struct_1 {
    global0 = array<vec2<u32>, 27>();
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1165f, -711f, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1869f, 1093f, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(977f + 1529f) + -1642f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-348f)))))));
    global1 = array<vec3<i32>, 9>();
    global0 = array<vec2<u32>, 27>();
    global0 = array<vec2<u32>, 27>();
    return Struct_1(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(!func_2(arg_1.x).a.a, select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), func_2(arg_0.x).a.a), !func_2(u_input.c).a.a), u_input.a, abs(vec3<u32>(~13568u, firstTrailingBit(firstTrailingBit(u_input.e.x)), _wgslsmith_div_u32(reverseBits(arg_1.x), _wgslsmith_mod_u32(1u, u_input.c)))), _wgslsmith_mod_u32(47672u, ~arg_1.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    return func_5(vec3<u32>(~(0u & arg_2.b.d), _wgslsmith_dot_vec4_u32(reverseBits(u_input.e), func_4(arg_2.a.d, func_2(20577u))), _wgslsmith_mod_u32(arg_1.a.c.x, (arg_2.b.d | u_input.e.x) | ~u_input.c)), max(firstLeadingBit(_wgslsmith_sub_vec3_u32(~arg_1.a.c, ~u_input.e.ywx)), firstTrailingBit(~arg_2.a.c)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec3<bool>) -> bool {
    global3 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(722f)), -398f))));
    var var_0 = true;
    global1 = array<vec3<i32>, 9>();
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(431f, -815f, -1171f, 264f)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -1932f)), var_1.x, 125f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-602f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-690f, -614f, _wgslsmith_div_f32(-1287f, var_1.x), 567f))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.d.x >> (4294967295u % 32u);
    global0 = array<vec2<u32>, 27>();
    let var_1 = abs(u_input.e.zwx);
    var var_2 = 2147483647i;
    let var_3 = Struct_2(Struct_1(vec4<bool>(func_6(Struct_1(vec4<bool>(false, false, false, false), u_input.a, vec3<u32>(u_input.d.x, 1u, 1u), 0u), func_1(vec3<i32>(u_input.a, u_input.b.x, u_input.b.x), Struct_2(Struct_1(vec4<bool>(false, false, false, true), 16773i, vec3<u32>(var_1.x, u_input.c, 6656u), var_1.x), Struct_1(vec4<bool>(false, true, true, false), 0i, vec3<u32>(var_1.x, var_1.x, 1u), 11986u)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), u_input.a, vec3<u32>(4294967295u, u_input.c, u_input.d.x), var_1.x), Struct_1(vec4<bool>(true, false, true, false), u_input.b.x, var_1, var_1.x))), Struct_4(false), func_1(u_input.b.wzw, Struct_2(Struct_1(vec4<bool>(false, false, false, true), u_input.b.x, vec3<u32>(u_input.e.x, var_1.x, var_1.x), 1u), Struct_1(vec4<bool>(false, true, true, true), 0i, vec3<u32>(u_input.d.x, var_1.x, 16385u), var_1.x)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), u_input.a, var_1, var_1.x), Struct_1(vec4<bool>(true, true, true, false), 1979i, vec3<u32>(18222u, 2295u, var_1.x), u_input.d.x))).a.wxz), false, !(38675u == var_1.x), true), u_input.a, ~vec3<u32>(min(1u, u_input.e.x), ~1u, ~var_1.x), (var_1.x & ~var_1.x) ^ u_input.e.x), func_1(select(vec3<i32>(u_input.b.x, u_input.b.x, u_input.a), -(~vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)), !all(vec4<bool>(true, false, true, true))), Struct_2(func_5(~vec3<u32>(4294967295u, 0u, 52153u), u_input.e.wzw), func_2(66401u).a), Struct_2(func_1(firstLeadingBit(u_input.b.zyz), Struct_2(Struct_1(vec4<bool>(false, true, false, false), u_input.a, u_input.e.zyy, u_input.c), Struct_1(vec4<bool>(true, true, false, false), u_input.b.x, vec3<u32>(var_1.x, u_input.e.x, 0u), var_1.x)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), u_input.b.x, vec3<u32>(var_1.x, var_1.x, 59056u), u_input.c), Struct_1(vec4<bool>(false, true, true, true), 1i, u_input.e.xwz, 3297u))), Struct_1(vec4<bool>(true, true, false, false), u_input.b.x, var_1, func_4(u_input.c, Struct_3(Struct_1(vec4<bool>(true, false, true, true), u_input.b.x, var_1, u_input.d.x))).x))));
    let var_4 = Struct_4(func_1((global1[_wgslsmith_index_u32(var_1.x, 9u)] << (vec3<u32>(0u, var_3.a.c.x, u_input.c) % vec3<u32>(32u))) | _wgslsmith_sub_vec3_i32(u_input.b.xwz, vec3<i32>(-1i, var_3.a.b, 2147483647i)), Struct_2(func_1(vec3<i32>(-1i, var_3.b.b, -28536i), Struct_2(Struct_1(var_3.a.a, var_3.b.b, var_1, 57900u), Struct_1(vec4<bool>(true, var_3.a.a.x, false, true), -26021i, vec3<u32>(var_3.a.c.x, var_1.x, 4294967295u), var_3.b.c.x)), var_3), var_3.a), Struct_2(func_1(global1[_wgslsmith_index_u32(24921u, 9u)], var_3, Struct_2(var_3.a, var_3.a)), var_3.b)).a.x || var_3.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_3.b.d, 43507u, u_input.e.x, var_1.x), u_input.e) >> (vec4<u32>(var_1.x, 11821u, 29527u, var_1.x) % vec4<u32>(32u)))));
}

