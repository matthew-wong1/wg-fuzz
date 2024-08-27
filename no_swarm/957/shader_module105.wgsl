struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), -u_input.a.x >= 57666i), select(vec3<bool>(true, any(vec3<bool>(false, false, true)), all(vec2<bool>(false, true))), vec3<bool>(true, any(vec4<bool>(false, false, false, false)), all(vec2<bool>(false, true))), true)), select(!(_wgslsmith_f_op_f32(ceil(1273f)) < -963f), true, true), Struct_1(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, select(false, false, false), arg_1.x < -5816i), vec3<bool>(any(vec3<bool>(true, true, true)), true, true)), !vec3<bool>(true, any(vec3<bool>(false, true, true)), any(vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 734f)) + _wgslsmith_div_f32(-1051f, 1750f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -560f))))), Struct_1(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(firstTrailingBit(37756u) < firstLeadingBit(4294967295u), true, _wgslsmith_clamp_i32(u_input.b, u_input.a.x, -5396i) <= arg_1.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.d))))) + var_0.d);
    var var_2 = false;
    let var_3 = false;
    var_1 = _wgslsmith_f_op_f32(step(var_0.d, _wgslsmith_f_op_f32(select(var_0.d, var_0.d, !var_3))));
    return var_0.e.b;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(Struct_1(!func_3(~u_input.a, -vec4<i32>(8284i, u_input.a.x, u_input.a.x, -6414i)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), true)), true, Struct_1(!func_3(_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(u_input.b, -2147483647i)), firstTrailingBit(vec4<i32>(-1i, 5922i, u_input.b, u_input.b))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(select(1f, 1768f, true)), Struct_1(select(func_3(countOneBits(u_input.a), vec4<i32>(u_input.a.x, -12851i, 5387i, -1i) & vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, u_input.b)), vec3<bool>(true, true, true), select(func_3(vec2<i32>(-19751i, 51766i), vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), true)), vec3<bool>(true, true, select(true, all(vec4<bool>(true, true, false, false)), true))));
    global0 = array<vec2<f32>, 13>();
    global0 = array<vec2<f32>, 13>();
    var var_1 = Struct_3(vec4<u32>(_wgslsmith_add_u32(1u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(78956u, 0u, 4294967295u, 4063u), vec4<u32>(37828u, 0u, 139746u, 0u)))), 54146u, min(~0u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(24026u, 0u, 177797u), vec3<u32>(69244u, 4294967295u, 0u)), ~0u)), ~0u), _wgslsmith_f_op_f32(-var_0.d), vec4<i32>(u_input.a.x, countOneBits(countOneBits(u_input.b)) ^ 2147483647i, 0i, _wgslsmith_add_i32(~(-33874i), i32(-1i) * -1i)));
    var_1 = Struct_3(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(abs(3327u), _wgslsmith_clamp_u32(var_1.a.x, 0u, 1u), 70677u, 1u)), min(max(vec4<u32>(765u, var_1.a.x, 4294967295u, 30147u) | var_1.a, var_1.a & vec4<u32>(var_1.a.x, 1u, 69101u, 0u)), abs(~var_1.a)), select(vec4<u32>(14641u, 4294967295u, var_1.a.x >> (4294967295u % 32u), ~var_1.a.x), max(vec4<u32>(0u, var_1.a.x, var_1.a.x, var_1.a.x), var_1.a), !(!vec4<bool>(true, false, var_0.c.b.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-779f - var_1.b) * var_1.b), ~(-abs(var_1.c) & -_wgslsmith_clamp_vec4_i32(var_1.c, var_1.c, var_1.c)));
    return Struct_3(vec4<u32>(43810u, 1u, var_1.a.x, 0u), var_0.d, var_1.c);
}

fn func_1() -> f32 {
    var var_0 = func_2();
    let var_1 = u_input.b;
    global0 = array<vec2<f32>, 13>();
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(-var_0.b)))))), -(~vec4<i32>(_wgslsmith_sub_i32(var_1, -1i), -1i, var_0.c.x, ~0i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_f32(func_1()), vec4<i32>(1i, u_input.b, u_input.a.x, 1i));
    let var_1 = Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, var_0.c.x), vec2<i32>(6192i, 0i)), vec4<i32>(28657i, 27195i, var_0.c.x, -19642i) << (vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, 33057u) % vec4<u32>(32u))).x, func_3(u_input.a, vec4<i32>(1i, u_input.a.x, var_0.c.x, -16895i)).x), false), vec3<bool>(true, !(_wgslsmith_f_op_f32(-var_0.b) == var_0.b), true));
    let var_2 = ~var_0.a.x;
    global0 = array<vec2<f32>, 13>();
    var var_3 = ~(~(~vec3<u32>(55456u, _wgslsmith_mod_u32(0u, var_0.a.x), ~50912u)));
    let var_4 = vec2<u32>(countOneBits(select(1u, ~1u, u_input.b > -25730i)), var_3.x) & (vec2<u32>(_wgslsmith_mult_u32(4294967295u, var_3.x), _wgslsmith_div_u32(~var_2, ~4294967295u)) | _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.x, 4294967295u) >> (var_0.a.yw % vec2<u32>(32u)), reverseBits(var_3.yx)), ~(vec2<u32>(1u, var_3.x) | var_3.xy)));
    global0 = array<vec2<f32>, 13>();
    let var_5 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-944f - _wgslsmith_f_op_f32(-var_0.b)), 342f, var_0.b)), 257f, _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(abs(var_2), 13u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(~var_4.x, ~30535u, ~var_0.a.x, var_2), select(select(vec4<u32>(4294967295u, var_4.x, var_3.x, var_0.a.x) & vec4<u32>(var_3.x, var_4.x, var_4.x, var_3.x), select(vec4<u32>(15258u, var_3.x, var_3.x, 1u), vec4<u32>(1u, var_4.x, var_3.x, 1u), true), !vec4<bool>(false, true, var_1.b.x, var_1.b.x)), max(~vec4<u32>(4294967295u, 21630u, var_3.x, var_0.a.x), ~vec4<u32>(4294967295u, var_2, 1u, 5078u)), !(!vec4<bool>(true, var_1.b.x, true, var_1.b.x)))));
}

