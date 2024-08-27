struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(1365f, 277f), Struct_1(-128f), Struct_1(796f), Struct_1(-458f));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<f32> {
    var var_0 = u_input.b.zw;
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-global0.a), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 + arg_2.a)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-global0.a.x))) * global0.b.a)), global0.d);
    let var_1 = _wgslsmith_f_op_f32(floor(global0.d.a));
    let var_2 = global0.c;
    let var_3 = Struct_3(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), global0.c);
    return _wgslsmith_f_op_vec2_f32(sign(global0.a));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> Struct_3 {
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a.x)) - -375f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1181f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-187f, global0.b.a))) + _wgslsmith_f_op_vec2_f32(func_3(1u, global0.d.a, Struct_1(global0.c.a), vec2<i32>(-26129i, arg_0.x) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)))))), global0.d, global0.d, Struct_1(_wgslsmith_f_op_f32(abs(-1311f))));
    var var_0 = _wgslsmith_sub_vec4_u32(firstLeadingBit(select(_wgslsmith_add_vec4_u32(min(vec4<u32>(36280u, arg_1, arg_1, 4294967295u), u_input.b), vec4<u32>(0u, 4294967295u, 104961u, arg_1)), ~(vec4<u32>(arg_1, arg_1, 9957u, 4294967295u) | u_input.b), vec4<bool>(true, true, true, true))), firstTrailingBit(select(vec4<u32>(18012u, ~484u, firstTrailingBit(arg_1), 7972u), u_input.b, all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false))))));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(605f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1401f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(1501f, 1864f), global0.a))))), Struct_1(global0.d.a), global0.d, global0.b);
    var var_1 = Struct_3(select(select(vec3<bool>(true, true, true), vec3<bool>(true, arg_1 == 57794u, all(vec3<bool>(true, false, false))), vec3<bool>(all(vec3<bool>(true, false, false)), false, any(vec4<bool>(true, false, true, false)))), vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), ~var_0.x >= ~var_0.x, true), vec3<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), true)), Struct_1(global0.b.a));
    var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(1u, var_0.x), 1u, reverseBits(u_input.b.x), ~var_0.x)), select(~vec4<u32>(arg_1, 30076u, 61349u, var_0.x), _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(33945u, u_input.b.x, u_input.b.x, arg_1) | vec4<u32>(arg_1, var_0.x, u_input.b.x, arg_1)), vec4<bool>(var_1.a.x, 4294967295u == var_0.x, true, var_1.a.x))), ~_wgslsmith_clamp_vec4_u32(max(vec4<u32>(4294967295u, var_0.x, u_input.b.x, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 83577u, var_0.x, 1400u), vec4<u32>(1u, u_input.b.x, 72575u, arg_1))), u_input.b, ~u_input.b));
    return Struct_3(select(!(!select(vec3<bool>(true, true, var_1.a.x), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(true, var_1.a.x, var_1.a.x))), var_1.a, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.a.x, var_1.a.x, true, true), true), vec4<bool>(false, var_1.a.x, var_1.a.x, true), vec4<bool>(false, false, false, var_1.a.x)))), Struct_1(-979f));
}

fn func_1() -> bool {
    let var_0 = func_2(-u_input.a, u_input.b.x);
    let var_1 = firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, 27203u) & 4294967295u, _wgslsmith_sub_u32(16959u, u_input.b.x & 48868u), ~(~0u)), u_input.b.zyz));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-625f)), _wgslsmith_f_op_f32(-var_0.b.a), -149f, _wgslsmith_f_op_f32(-global0.a.x)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.b.a, var_0.b.a, -494f, global0.a.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1893f, 477f, global0.d.a, var_0.b.a), vec4<f32>(-848f, 320f, global0.a.x, global0.d.a)))))));
    var var_3 = true;
    var_3 = !any(select(vec3<bool>(var_0.a.x && var_0.a.x, !var_0.a.x, !var_0.a.x), select(select(vec3<bool>(var_0.a.x, true, true), var_0.a, var_0.a), vec3<bool>(true, var_0.a.x, false), !vec3<bool>(var_0.a.x, var_0.a.x, false)), !var_0.a));
    return !(firstTrailingBit(_wgslsmith_div_u32(~var_1.x, _wgslsmith_mod_u32(var_1.x, var_1.x))) == ~(~var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 50696u;
    let var_1 = Struct_3(select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, func_1())), vec3<bool>(true, true, func_2(firstLeadingBit(u_input.a), ~0u).a.x), !any(vec4<bool>(false, false, true, false))), global0.b);
    let var_2 = !var_1.a.x;
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-global0.a), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-137f - -284f), _wgslsmith_f_op_f32(-var_1.b.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.c.a, 324f)) - var_1.b.a))), func_2(u_input.a, abs(~12000u)).b, Struct_1(-310f));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_1.b.a, 1000f, var_1.a.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global0.a * vec2<f32>(-1128f, var_1.b.a)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b.a, -1381f), _wgslsmith_f_op_vec2_f32(-global0.a), select(var_1.a.x, false, true)))))), Struct_1(var_1.b.a), func_2(max(min(vec2<i32>(2147483647i, -10190i) >> (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)), abs(u_input.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(-18687i, 1i), vec2<i32>(u_input.a.x, u_input.a.x) ^ vec2<i32>(32956i, u_input.a.x))), var_0).b, Struct_1(_wgslsmith_f_op_f32(ceil(global0.c.a))));
    var var_4 = _wgslsmith_mult_u32(firstTrailingBit(56546u), var_0) | 2321u;
    let var_5 = !(!select(select(select(var_1.a, var_1.a, var_1.a), vec3<bool>(true, true, true), false), select(!vec3<bool>(var_2, var_1.a.x, var_1.a.x), select(vec3<bool>(var_2, true, false), vec3<bool>(false, var_2, false), true), var_1.a), !(!var_1.a)));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-442f - 721f)))), func_2(-(~u_input.a), ~_wgslsmith_div_u32(~4294967295u, var_0)).b, Struct_1(-486f), func_2(abs(vec2<i32>(reverseBits(u_input.a.x), -u_input.a.x)), ~(~var_0 ^ ~var_0)).b);
    let x = u_input.a;
    s_output = StorageBuffer(22867u, u_input.a, u_input.b.x, -1i);
}

