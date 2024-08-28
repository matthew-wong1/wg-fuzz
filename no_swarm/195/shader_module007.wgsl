struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 20859u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-467f, -546f)), vec2<f32>(1000f, 713f))), vec2<f32>(-2826f, -1193f), true))), vec2<f32>(_wgslsmith_f_op_f32(round(231f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1214f)))), -745f))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -320f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1494f, -883f) + vec2<f32>(var_0.x, var_0.x)), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(392f, -1154f), vec2<f32>(var_0.x, var_0.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1631f, var_0.x) - vec2<f32>(-363f, 655f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.x, 440f, false)), -236f) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-383f, var_0.x), vec2<f32>(1187f, var_0.x), vec2<bool>(true, false)))))) + vec2<f32>(-850f, var_0.x)));
    var var_1 = Struct_1(vec2<i32>(arg_0, arg_1), ~(~_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(72023u, 4294967295u)), ~vec2<u32>(28704u, 1u))));
    var var_2 = abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.x, ~43430u, max(59070u, var_1.b.x), firstLeadingBit(8542u)), max(vec4<u32>(0u, var_1.b.x, 59490u, var_1.b.x) | vec4<u32>(var_1.b.x, 0u, 0u, 0u), ~vec4<u32>(29226u, var_1.b.x, var_1.b.x, var_1.b.x)))) >> (~(~((vec4<u32>(152582u, 29675u, 98773u, var_1.b.x) ^ vec4<u32>(var_1.b.x, 17165u, var_1.b.x, var_1.b.x)) & vec4<u32>(1u, 8810u, var_1.b.x, var_1.b.x))) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-857f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = true;
    var var_1 = Struct_1(-_wgslsmith_mod_vec2_i32(-(~arg_1.a), u_input.c.xx >> (vec2<u32>(31820u, 1u) % vec2<u32>(32u))), arg_1.b);
    global0 = ~_wgslsmith_sub_u32(~arg_1.b.x, abs(_wgslsmith_div_u32(43875u, 13080u)));
    return vec2<bool>(_wgslsmith_mult_u32(max(20555u, _wgslsmith_clamp_u32(arg_1.b.x, 20296u, arg_1.b.x)), 13219u) == _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(select(0u, var_1.b.x, false), abs(60909u), firstTrailingBit(0u)), var_1.b.x, var_1.b.x), any(vec3<bool>(true, var_0, arg_1.a.x > -2147483647i)) != (_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(trunc(-202f))) < arg_2.x));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>) -> i32 {
    var var_0 = select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(-1i, u_input.b.x)) <= (u_input.c.x >> (arg_1.x % 32u)), !all(vec4<bool>(false, true, true, true)))), vec2<bool>(any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), false), vec2<bool>(false, all(vec3<bool>(true, 4294967295u >= arg_1.x, true))));
    let var_1 = vec2<bool>(all(!vec3<bool>(true, var_0.x, false)), true);
    var var_2 = arg_0.x;
    var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(472f + -1000f), _wgslsmith_f_op_f32(func_3(arg_0.x, 2147483647i)), _wgslsmith_f_op_f32(func_3(arg_0.x, 18467i)), _wgslsmith_div_f32(-1949f, -713f)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -499f), _wgslsmith_f_op_f32(758f * -126f), _wgslsmith_div_f32(714f, 1346f), _wgslsmith_f_op_f32(f32(-1f) * -203f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(max(2677f, -854f)), 700f, _wgslsmith_f_op_f32(floor(330f)), _wgslsmith_f_op_f32(step(1138f, 649f)))))), Struct_1(vec2<i32>(_wgslsmith_add_i32(-arg_0.x, arg_0.x >> (1u % 32u)), arg_0.x), vec2<u32>(~73063u, arg_1.x) >> (~min(arg_1, vec2<u32>(24375u, arg_1.x)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1927f, 1518f, -452f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(781f, 1330f, -1555f))))));
    var var_3 = _wgslsmith_add_i32(_wgslsmith_div_i32(1i, ~countOneBits(arg_0.x)) | 2147483647i, _wgslsmith_add_i32(arg_0.x, u_input.a));
    return 1i;
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> u32 {
    global0 = ~arg_1.b.x;
    var var_0 = ~arg_1.a.x;
    var var_1 = ~(-countOneBits(vec4<i32>(_wgslsmith_mult_i32(24259i, 3815i), -1i, u_input.c.x >> (arg_1.b.x % 32u), -u_input.c.x)));
    var var_2 = ~arg_1.b;
    var_1 = firstTrailingBit(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, arg_1.a.x, u_input.d.x, -2147483647i)) | _wgslsmith_mod_vec4_i32(vec4<i32>(-13171i, 2147483647i, -2147483647i, -1i), vec4<i32>(2147483647i, arg_0, 2147483647i, -1i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(arg_1.a.x, arg_1.a.x, arg_0, -2147483647i), abs(vec4<i32>(-1i, u_input.c.x, arg_0, 0i)))) ^ _wgslsmith_mod_vec4_i32(reverseBits(firstLeadingBit(vec4<i32>(-1i, arg_0, var_1.x, var_1.x))), _wgslsmith_mod_vec4_i32(-vec4<i32>(-27846i, u_input.a, -28128i, var_1.x), vec4<i32>(var_1.x, 0i, 19714i, u_input.c.x))));
    return 45806u;
}

fn func_1(arg_0: vec2<i32>) -> vec2<u32> {
    global0 = countOneBits(4294967295u);
    global0 = abs(1u);
    global0 = ~_wgslsmith_add_u32(func_5(func_2(firstLeadingBit(vec4<i32>(arg_0.x, u_input.b.x, 0i, -34474i)), ~vec2<u32>(22437u, 6465u)), Struct_1(u_input.c.zx, vec2<u32>(0u, 4294967295u))), ~_wgslsmith_add_u32(firstLeadingBit(82119u), 1u));
    let var_0 = ~(~(~(~1u))) > min(72218u, select(4294967295u, ~firstTrailingBit(0u), !any(vec2<bool>(true, false))));
    let var_1 = countOneBits((_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(0i, arg_0.x, u_input.a, arg_0.x)), vec4<i32>(1i, 63597i, arg_0.x, -1i) >> (vec4<u32>(4294967295u, 4294967295u, 0u, 37015u) % vec4<u32>(32u))) | ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, arg_0.x, -304i, -62149i), vec4<i32>(arg_0.x, u_input.c.x, 1i, 0i))) | _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 1i, i32(-1i) * -1i, ~u_input.a), -(~vec4<i32>(u_input.c.x, -53184i, 2147483647i, u_input.b.x))));
    return ~(~select(firstTrailingBit(~vec2<u32>(10559u, 96421u)), abs(abs(vec2<u32>(1u, 0u))), select(vec2<bool>(true, true), vec2<bool>(false, var_0), true)));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_div_i32(-2147483647i, arg_3.a.x));
    global0 = ~arg_0.b.x;
    var_0 = countOneBits(~(-53407i));
    var var_1 = arg_3.b.x;
    let var_2 = Struct_1(~vec2<i32>(~arg_0.a.x, (-7932i & u_input.c.x) ^ 0i), ~firstTrailingBit(vec2<u32>(_wgslsmith_clamp_u32(5054u, arg_3.b.x, 1u), arg_3.b.x & arg_0.b.x)));
    return Struct_1(abs(-vec2<i32>(abs(14636i), arg_3.a.x)), ~select(arg_0.b, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.b.x, 0u, 26013u), vec3<u32>(7897u, arg_0.b.x, arg_3.b.x)), var_2.b.x), arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.b.xy, vec2<u32>(1u, 1u));
    let var_1 = var_0;
    var var_2 = vec3<bool>(true, true, true);
    global0 = var_1.b.x;
    var var_3 = func_6(Struct_1(vec2<i32>(-reverseBits(64602i), countOneBits(~(-1i))), firstLeadingBit(func_1(vec2<i32>(52009i, -1i))) ^ ~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.x, 14315u), var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -210f)) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1121f + -1086f)))), ((firstTrailingBit(var_0.b.x) > 4294967295u) | true) != true, var_0);
    var var_4 = _wgslsmith_f_op_f32(abs(1632f));
    var var_5 = var_3.a.x;
    var var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-215f);
}

