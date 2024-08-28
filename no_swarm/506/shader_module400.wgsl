struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<u32> = vec2<u32>(99644u, 25499u);

var<private> global2: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_2) -> f32 {
    global0 = arg_0.d;
    let var_0 = Struct_1(arg_0.c.a);
    let var_1 = var_0;
    let var_2 = -46936i;
    global0 = var_1;
    return global0.a;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_add_u32(1u, 6377u);
    let var_1 = vec4<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(23962u, var_0, arg_1), max(vec3<u32>(60930u, u_input.d.x, 18387u), vec3<u32>(1u, arg_1, u_input.d.x))), 4294967295u, ~58479u, abs(0u)) ^ (countOneBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(arg_1, 29237u, global1.x, u_input.d.x), vec4<u32>(9444u, var_0, var_0, arg_1))) ^ ~vec4<u32>(var_0, u_input.d.x, _wgslsmith_sub_u32(0u, 0u), ~u_input.a.x));
    let var_2 = arg_1;
    global0 = Struct_1(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(414f)), global2.x))));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - 1494f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + 674f) * global0.a)) * _wgslsmith_f_op_f32(f32(-1f) * -360f)), global2.x));
    return vec4<bool>(any(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, true), !(4294967295u < u_input.d.x))), arg_0, !(!any(vec2<bool>(true, true))), false | arg_0);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(!(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true))), func_3(all(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), ~_wgslsmith_dot_vec2_u32(~arg_0.yy, ~vec2<u32>(0u, 36349u)), -_wgslsmith_add_vec2_i32(u_input.c.yz, ~u_input.c.xz)), !func_3(true, global1.x, u_input.c.zy));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.a)) - global0.a), -1241f)));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, _wgslsmith_f_op_f32(871f * arg_1.a), _wgslsmith_f_op_f32(-arg_1.a))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, global2.x, _wgslsmith_f_op_f32(-global0.a))));
    let var_1 = Struct_2(global1.x, firstLeadingBit(vec3<u32>(u_input.d.x | 18942u, ~(~arg_0.x), 4294967295u << (arg_0.x % 32u))), arg_1, arg_1, vec4<u32>(3551u, max(_wgslsmith_mult_u32(global1.x, global1.x) | firstTrailingBit(4242u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global1.x), vec2<u32>(4294967295u, 25858u)), u_input.d)), arg_0.x, arg_0.x));
    global2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(3142f, -815f, global2.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global2.x, 1502f))))) + vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(2089f - global0.a))), _wgslsmith_f_op_f32(min(928f, _wgslsmith_f_op_f32(max(-901f, global0.a)))), arg_1.a))));
    return Struct_1(-1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a;
    global0 = func_2(~select(~countOneBits(vec3<u32>(u_input.d.x, u_input.d.x, global1.x)), vec3<u32>(71903u, ~global1.x, ~global1.x), true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_2(u_input.a.x, vec3<u32>(u_input.a.x, 19602u, u_input.a.x), Struct_1(global0.a), Struct_1(global0.a), vec4<u32>(global1.x, global1.x, 4294967295u, 7807u)))), global0.a)))));
    global1 = ~u_input.a;
    var var_0 = func_2(~vec3<u32>(3006u, abs(1u), ~(51784u >> (global1.x % 32u))), func_2(countOneBits(vec3<u32>(_wgslsmith_mod_u32(global1.x, 11732u), 51272u, min(22855u, global1.x))), Struct_1(_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(-global0.a))))));
    var_0 = func_2(vec3<u32>(86983u, select(_wgslsmith_sub_u32(62447u, _wgslsmith_sub_u32(0u, global1.x)), global1.x & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 343u), vec3<u32>(global1.x, u_input.d.x, 1u)), !any(vec4<bool>(false, true, false, true))), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 4294967295u, 0u) & (vec3<u32>(4294967295u, 1u, global1.x) & vec3<u32>(global1.x, 4294967295u, 6856u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, global1.x, u_input.a.x) << (vec3<u32>(u_input.a.x, 4294967295u, 24270u) % vec3<u32>(32u)), vec3<u32>(0u, u_input.a.x, u_input.d.x)))), func_2(vec3<u32>(u_input.d.x, 1u, 60959u) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a.x), vec3<u32>(global1.x, 1u, 26777u)) % vec3<u32>(32u)), func_2(~vec3<u32>(u_input.a.x, u_input.d.x, global1.x), func_2(~vec3<u32>(1u, 8156u, global1.x), func_2(vec3<u32>(0u, 12406u, global1.x), Struct_1(1747f))))));
    let var_1 = Struct_1(global0.a);
    var var_2 = u_input.d.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + 180f) - _wgslsmith_f_op_f32(-global0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(13957i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(select(-vec3<i32>(42345i, 0i, u_input.c.x), countOneBits(vec3<i32>(u_input.c.x, u_input.c.x, u_input.b)), all(vec3<bool>(true, false, false))), (u_input.c ^ u_input.c) >> (~vec3<u32>(global1.x, u_input.d.x, 0u) % vec3<u32>(32u))), i32(-1i) * -1i), vec3<i32>(-4302i, max(15349i, firstTrailingBit(_wgslsmith_div_i32(u_input.b, 1i))), u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1853f, var_1.a)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.zz - global2.zx))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -431f), _wgslsmith_f_op_f32(321f + var_1.a)))));
}

