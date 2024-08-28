struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(20557u, 38486u), vec2<u32>(41589u, 46942u), vec2<u32>(1u, 72172u), vec2<u32>(46053u, 18067u), vec2<u32>(61874u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(4120u, 1u), vec2<u32>(1u, 39434u), vec2<u32>(39396u, 0u), vec2<u32>(32551u, 4294967295u), vec2<u32>(4627u, 34898u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(41778u, 1u), vec2<u32>(1u, 35350u), vec2<u32>(4294967295u, 0u), vec2<u32>(52111u, 37436u), vec2<u32>(27630u, 10260u), vec2<u32>(53789u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 25359u), vec2<u32>(1696u, 0u), vec2<u32>(2104u, 4294967295u), vec2<u32>(63469u, 0u), vec2<u32>(4294967295u, 6556u), vec2<u32>(58606u, 1u), vec2<u32>(8854u, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> f32 {
    var var_0 = max(~(~0u), select(~(~(~arg_2)), 1u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(709f + 1072f), arg_3.a)) != -156f));
    global0 = array<vec2<u32>, 27>();
    global0 = array<vec2<u32>, 27>();
    var var_1 = arg_1;
    let var_2 = _wgslsmith_add_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2, 4294967295u, _wgslsmith_add_u32(5252u, var_1.e)), ~vec3<u32>(1u, 23077u, var_1.b))), max(vec3<u32>(~4294967295u, ~u_input.a, ~(~arg_2)), vec3<u32>(firstTrailingBit(arg_2), arg_1.e, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_1.d), vec2<u32>(42280u, var_1.e))) & ~vec3<u32>(arg_1.d, 42711u, 8503u)));
    return _wgslsmith_f_op_f32(floor(arg_3.a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.a, 2831f, 1048f, arg_0.e.a)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-867f, -1253f, arg_0.d.a, arg_0.d.a))), !arg_2.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.d.a, arg_1.c, arg_1.a, arg_0.d.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.a, 1635f, arg_1.c, 177f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-844f, -759f, arg_1.a, -2235f), vec4<f32>(-726f, arg_1.c, arg_1.a, 1000f)))), vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -909f), _wgslsmith_f_op_f32(select(arg_1.a, 1266f, true)), -1000f), vec4<bool>(any(vec2<bool>(false, false)), select(true, true, true), arg_0.a.x, true)))));
    let var_1 = 2147483647i;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1679f) * -167f), -1343f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(f32(-1f) * -318f)), var_0.x);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.c, arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.e.a, 247f) - 345f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-698f * var_0.x)) <= -204f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(249f, _wgslsmith_f_op_f32(-arg_0.e.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))) + 1688f), !(u_input.a > u_input.a) || arg_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.e.a)), _wgslsmith_f_op_f32(-arg_0.d.a)) * _wgslsmith_f_op_f32(-var_0.x)) + var_0.x));
    let var_4 = abs(u_input.a);
    return vec4<i32>(_wgslsmith_clamp_i32(1i, ~(~var_1), select(_wgslsmith_mod_i32(var_1, 0i), max(arg_0.d.b.x, arg_0.d.b.x), arg_2.x)) >> (~arg_1.b % 32u), var_1, var_1, ~select(var_1, _wgslsmith_dot_vec3_i32(-arg_0.e.b.wxz, arg_0.d.b.wzy), arg_2.x));
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    global0 = array<vec2<u32>, 27>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<f32>(-726f, 799f), Struct_1(-1340f, 0u, 106f, 15085u, 1u), 8196u, Struct_2(134f, vec4<i32>(18841i, 2898i, -57368i, 127068i))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(497f - 560f), _wgslsmith_f_op_f32(sign(-937f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1094f)), abs(min(reverseBits(vec4<i32>(-2147483647i, -1i, 1i, -2147483647i)) >> (~vec4<u32>(u_input.a, 0u, 24158u, u_input.a) % vec4<u32>(32u)), func_3(Struct_3(vec4<bool>(arg_0.x, arg_0.x, false, false), vec2<i32>(-320i, -2147483647i), vec3<bool>(true, arg_0.x, arg_0.x), Struct_2(917f, vec4<i32>(2147483647i, 2147483647i, 0i, 54768i)), Struct_2(-1360f, vec4<i32>(0i, -39758i, 1i, 1i))), Struct_1(1485f, 4294967295u, -839f, 4294967295u, 33450u), vec3<bool>(arg_0.x, true, true), min(1u, 66803u)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, _wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(-539f * -1000f), -402f))));
    let var_2 = 0u;
    let var_3 = ~(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.b, vec4<i32>(1i, -17735i, -11863i, var_0.b.x)), vec4<i32>(-2147483647i, 15424i, 1i, var_0.b.x)));
    return Struct_3(!vec4<bool>(true, arg_0.x, true, all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), var_3.wz, select(select(select(vec3<bool>(false, arg_0.x, false), !vec3<bool>(true, arg_0.x, false), true), select(!vec3<bool>(false, arg_0.x, true), !vec3<bool>(arg_0.x, false, arg_0.x), select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), arg_0.x)), select(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, arg_0.x, false), arg_0.x), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x), false)), !(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), false), Struct_2(_wgslsmith_div_f32(var_0.a, 1676f), max(vec4<i32>(-1i) * -vec4<i32>(var_0.b.x, 1i, -30213i, -2147483647i), vec4<i32>(var_3.x, var_3.x, var_3.x, ~1i))), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(var_1.zz, Struct_1(var_0.a, var_2, -1627f, var_2, 395u), ~90015u, var_0)))), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -20659i, var_3.x, -3403i), var_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<bool>(true, true));
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(2486u, ~reverseBits(4294967295u)), global0[_wgslsmith_index_u32(u_input.a, 27u)] ^ ~vec2<u32>(45532u, u_input.a)) | (u_input.a >> ((~(9782u | u_input.a) & ~reverseBits(0u)) % 32u));
    var var_2 = 33972u ^ _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.a) ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 6987u), vec3<u32>(var_1, var_1, 78884u)), abs(~vec3<u32>(var_1, 16264u, 0u))), u_input.a);
    let var_3 = -var_0.b.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(880f, _wgslsmith_f_op_f32(step(-241f, -637f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.e.a)) + _wgslsmith_div_f32(var_0.d.a, var_0.d.a)), 934f), vec4<f32>(var_0.e.a, _wgslsmith_f_op_f32(1022f - var_0.e.a), _wgslsmith_f_op_f32(-1204f + _wgslsmith_f_op_f32(trunc(var_0.e.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(764f))))), var_0.a))));
    var_0 = Struct_3(!var_0.a, vec2<i32>(abs(firstLeadingBit(-70938i)), var_3), !vec3<bool>(var_0.a.x | true, any(vec3<bool>(true, true, true)), var_0.c.x), var_0.d, var_0.e);
    var var_5 = var_0.d.b.yy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.d.a - var_4.x))), abs(var_3), vec4<u32>(~8051u, ~u_input.a, 4294967295u, var_1));
}

