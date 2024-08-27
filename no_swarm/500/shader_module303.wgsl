struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(828f, 884f, 610f), vec3<f32>(-501f, 697f, 1387f), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1305f, -365f, -112f) - vec3<f32>(-646f, 1846f, 1424f))), vec3<f32>(1f, 1f, 1f))), false, abs(19758u), max(~(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x) >> (vec4<u32>(0u, u_input.e.x, 4294967295u, u_input.e.x) % vec4<u32>(32u))), ~(vec4<u32>(u_input.e.x, 79192u, 14587u, u_input.e.x) >> (vec4<u32>(30709u, 0u, 44846u, 1u) % vec4<u32>(32u)))), vec4<bool>(true, true, true, true)));
    var var_1 = 23587i;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((_wgslsmith_mult_vec3_u32(~vec3<u32>(89022u, 0u, 21356u), vec3<u32>(1u, 4294967295u, var_0.a.d.x) ^ vec3<u32>(var_0.a.c, 26975u, 1u)) ^ _wgslsmith_mod_vec3_u32(select(vec3<u32>(86083u, 20908u, var_0.a.c), var_0.a.d.wyz, vec3<bool>(var_0.a.e.x, var_0.a.e.x, true)), _wgslsmith_mult_vec3_u32(var_0.a.d.yzw, var_0.a.d.ywy))) << (var_0.a.d.xxx % vec3<u32>(32u)), select((~vec3<u32>(u_input.e.x, u_input.e.x, 27126u) << (~var_0.a.d.zwy % vec3<u32>(32u))) >> (~vec3<u32>(0u, u_input.e.x, var_0.a.d.x) % vec3<u32>(32u)), var_0.a.d.wxy, var_0.a.e.wyz)), 25u)];
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2.a.x)), _wgslsmith_f_op_f32(floor(1957f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(374f)))), var_0.a.b)))), _wgslsmith_f_op_f32(-var_0.a.a.x)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> vec3<i32> {
    global0 = array<Struct_1, 25>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1537f) + _wgslsmith_f_op_f32(arg_0.x * 760f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1326f)), -325f)) + _wgslsmith_div_f32(1416f, _wgslsmith_f_op_f32(-386f - arg_1.a.a.x))))), arg_0.x, -768f);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a.a.x, arg_0.x, -1000f, arg_1.a.a.x))) * vec4<f32>(var_0.x, -463f, arg_1.a.a.x, arg_1.a.a.x)) - vec4<f32>(-912f, _wgslsmith_f_op_f32(-arg_1.a.a.x), -551f, _wgslsmith_f_op_f32(func_3()))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.a.x, var_0.x, _wgslsmith_f_op_f32(arg_1.a.a.x * arg_1.a.a.x), -1301f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1513f, var_0.x, var_0.x) + vec4<f32>(1680f, -1091f, -1446f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2283f, arg_1.a.a.x, 1000f, var_0.x))))));
    var var_1 = ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, ~u_input.e.x), ~abs(vec2<u32>(81055u, u_input.e.x))));
    var var_2 = !arg_1.a.e.x;
    return vec3<i32>(-max(0i, u_input.c), 2147483647i & u_input.d, -countOneBits(u_input.a));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>) -> vec4<u32> {
    let var_0 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(arg_0.c, arg_0.c, arg_0.c), abs(func_2(_wgslsmith_f_op_vec2_f32(-arg_0.a.a.xy), Struct_2(Struct_1(vec3<f32>(233f, arg_0.a.a.x, arg_0.a.a.x), false, u_input.e.x, vec4<u32>(u_input.e.x, u_input.e.x, 32284u, 0u), vec4<bool>(arg_1.x, arg_1.x, true, true))))));
    var var_1 = var_0.x;
    var_1 = arg_0.c;
    var_1 = reverseBits(_wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.x, -870i), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a & u_input.a, 2147483647i), _wgslsmith_div_i32(~u_input.c, reverseBits(var_0.x)))));
    var_1 = _wgslsmith_clamp_i32(-(_wgslsmith_dot_vec3_i32(~u_input.b, ~var_0) & ~(-72492i)), -1i, arg_0.c);
    return ~arg_0.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(~(~select(1u, ~4294967295u, true)), max(~firstTrailingBit(func_1(Struct_3(Struct_1(vec3<f32>(105f, 414f, -2421f), true, 30104u, vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<bool>(true, true, false, true)), u_input.e.x, u_input.d), vec3<bool>(false, true, false))), vec4<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.e.x, u_input.e.x), vec2<u32>(u_input.e.x, 1u)), ~vec2<u32>(19354u, u_input.e.x)), u_input.e.x, ~(~1u), countOneBits(u_input.e.x))), Struct_3(global0[_wgslsmith_index_u32(u_input.e.x | ~_wgslsmith_sub_u32(u_input.e.x, 25063u), 25u)], 48113u, u_input.a), true);
    global0 = array<Struct_1, 25>();
    var var_1 = Struct_1(var_0.c.a.a, true, max(~0u, ~u_input.e.x), ~(~reverseBits(var_0.c.a.d)), select(var_0.c.a.e, var_0.c.a.e, !var_0.d));
    var var_2 = global0[_wgslsmith_index_u32(reverseBits(func_1(var_0.c, vec3<bool>(var_1.e.x | var_0.d, true, true)).x), 25u)];
    var_1 = Struct_1(vec3<f32>(942f, 523f, 977f), true, min(var_2.d.x, firstLeadingBit(var_0.c.a.c)) | 4294967295u, ~vec4<u32>(var_1.d.x, ~81949u, 57865u, abs(u_input.e.x << (u_input.e.x % 32u))), select(!(!var_2.e), var_1.e, !(!(!var_0.c.a.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~30793i);
}

