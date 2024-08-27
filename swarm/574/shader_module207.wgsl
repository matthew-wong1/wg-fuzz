struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec2<bool>, 20>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: bool) -> Struct_1 {
    global0 = _wgslsmith_sub_vec2_u32(min(abs(abs(firstLeadingBit(vec2<u32>(1u, 18477u)))), firstLeadingBit(vec2<u32>(_wgslsmith_div_u32(arg_0, u_input.b), 1u << (global0.x % 32u)))), abs(~(vec2<u32>(global0.x, u_input.e) << (~vec2<u32>(global0.x, 316u) % vec2<u32>(32u)))));
    var var_0 = arg_1;
    var var_1 = Struct_2(Struct_1(arg_2), var_0.a.zy);
    var_1 = var_0.b;
    let var_2 = ~0i;
    return Struct_1(var_1.a.a);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = ~_wgslsmith_mod_u32(global0.x, u_input.e | ~(~4294967295u));
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(step(arg_0.x, -1502f)))), _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2529f))), 1000f), Struct_2(func_2(global0.x ^ ~var_0, Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 1307f, -913f) - vec4<f32>(-763f, arg_0.x, arg_0.x, 1633f)), Struct_2(arg_1, arg_0), arg_1, _wgslsmith_f_op_vec2_f32(select(arg_0, vec2<f32>(379f, 2336f), false))), true), _wgslsmith_f_op_vec2_f32(trunc(arg_0))), arg_1, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(arg_0, _wgslsmith_div_vec2_f32(arg_0, vec2<f32>(1877f, -108f))))), arg_0));
    global0 = ~(~_wgslsmith_sub_vec2_u32(~(vec2<u32>(var_0, 99735u) | vec2<u32>(u_input.b, 2262u)), min(~vec2<u32>(var_0, var_0), vec2<u32>(u_input.e, global0.x))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(767f + arg_0.x)) + arg_0.x));
    var_2 = _wgslsmith_f_op_f32(377f - var_1.a.x);
    return _wgslsmith_div_vec2_f32(var_1.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_1.a.zx)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.x, arg_0.x))) - _wgslsmith_f_op_vec2_f32(arg_0 - arg_0)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.x, -714f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(123f, _wgslsmith_div_f32(-550f, arg_2.x)), func_2(~global0.x, Struct_3(vec4<f32>(arg_0.b.x, arg_3.b.x, arg_1.x, arg_3.b.x), arg_0, Struct_1(true), arg_0.b), !arg_0.a.a))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-299f - arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(abs(arg_0.b.x))))), select(vec2<bool>(all(select(global1[_wgslsmith_index_u32(global0.x, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], vec2<bool>(arg_3.a.a, false))), arg_0.a.a), !global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(1u, 54672u)), 20u)], true)));
    var var_1 = -_wgslsmith_sub_i32(u_input.d.x, ~u_input.c.x);
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1195f, 1004f));
    let var_2 = _wgslsmith_f_op_vec3_f32(-arg_1.xzz);
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-844f * -1000f), arg_2.x, arg_0.b.x, _wgslsmith_f_op_f32(select(-1670f, 352f, false))), arg_1)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(1660f - arg_2.x), _wgslsmith_f_op_f32(min(arg_1.x, arg_0.b.x)), _wgslsmith_f_op_f32(arg_1.x * -1993f), 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_1, arg_1)) + arg_1)))), arg_3, func_2(~global0.x, Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_1 - vec4<f32>(var_0.x, arg_2.x, arg_2.x, arg_0.b.x)))), Struct_2(Struct_1(arg_0.a.a), vec2<f32>(1366f, 1104f)), func_2(u_input.e, Struct_3(arg_1, Struct_2(Struct_1(arg_0.a.a), vec2<f32>(arg_1.x, -1120f)), Struct_1(arg_3.a.a), arg_3.b), func_2(0u, Struct_3(arg_1, Struct_2(Struct_1(true), arg_2), Struct_1(false), arg_2), arg_0.a.a).a), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -720f), arg_2.x)), false), arg_2);
    return arg_3;
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(~u_input.b, _wgslsmith_clamp_u32(4294967295u, 5977u, 0u))), firstTrailingBit(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(0u, 169u)), vec2<u32>(3511u, global0.x), ~vec2<u32>(global0.x, 5745u)))), min(_wgslsmith_mod_vec2_u32(~vec2<u32>(35061u, global0.x), _wgslsmith_sub_vec2_u32(~vec2<u32>(global0.x, 4294967295u), ~vec2<u32>(59313u, 4294967295u))), select(~_wgslsmith_add_vec2_u32(vec2<u32>(43684u, u_input.e), vec2<u32>(35108u, 30748u)), vec2<u32>(64999u, ~1u), vec2<bool>(true, false))));
    let var_1 = ~select(vec4<u32>(countOneBits(81124u), ~7365u, global0.x, u_input.b), abs(~vec4<u32>(4294967295u, 0u, var_0.x, var_0.x)), true) << (abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(13453u, global0.x, u_input.b, u_input.e), select(vec4<u32>(global0.x, var_0.x, 0u, 0u) & vec4<u32>(global0.x, u_input.e, 4294967295u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 40772u, u_input.e, 25678u), vec4<u32>(1u, var_0.x, 4294967295u, 1u)), all(vec4<bool>(true, false, arg_0, false))))) % vec4<u32>(32u));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.b.x, -1000f, arg_2.b.x, 1000f), vec4<f32>(arg_2.b.x, arg_2.b.x, -352f, 134f))))))), func_1(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1370f, 1141f, arg_2.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1168f, arg_2.b.x, 948f, arg_2.b.x) - vec4<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, 473f)), select(vec4<bool>(false, true, true, arg_1.x), vec4<bool>(arg_0, false, false, true), true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.b + vec2<f32>(1000f, arg_2.b.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, 1179f)))), Struct_2(Struct_1(true), vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(169f - arg_2.b.x)))), Struct_1(select(arg_1.x, !arg_1.x && arg_1.x, true)), arg_2.b);
    var var_3 = ~(~abs(u_input.b));
    var_3 = 4294967295u;
    return _wgslsmith_f_op_f32(f32(-1f) * -754f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-693f + _wgslsmith_f_op_f32(2019f + 796f))), 383f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(true, vec3<bool>(true, true, true), func_1(Struct_2(Struct_1(false), vec2<f32>(-1187f, -859f)), vec4<f32>(907f, 1321f, 487f, 291f), vec2<f32>(753f, 1000f), Struct_2(Struct_1(true), vec2<f32>(-1501f, 1924f)))))))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(248f, 948f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -211f)))))));
    var var_1 = !select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true && (739f < var_0.x), abs(2147483647i) < u_input.c.x), false);
    global0 = firstTrailingBit(reverseBits(vec2<u32>(~_wgslsmith_div_u32(global0.x, global0.x), ~0u)));
    var var_2 = Struct_1(!(!var_1.x));
    var_1 = vec4<bool>(true, var_2.a, var_2.a, true);
    let var_3 = reverseBits(u_input.d);
    global1 = array<vec2<bool>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, _wgslsmith_clamp_u32(global0.x, 33936u, max(29203u, _wgslsmith_div_u32(u_input.b, global0.x))), firstTrailingBit(4294967295u) ^ 38178u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(1202u, 4294967295u, u_input.b), 4294967295u, 66303u, _wgslsmith_add_u32(global0.x, u_input.b)), vec4<u32>(~global0.x, 39761u, abs(_wgslsmith_add_u32(global0.x, 76823u)), 0u), max(reverseBits(vec4<u32>(56277u, 1u, global0.x, global0.x)), ~(~vec4<u32>(global0.x, 18493u, 14430u, 4294967295u)))), 1i, global0.x);
}

