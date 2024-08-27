struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(2147483647i, 2147483647i, 2147483647i, 46244i, -50498i, -55384i);

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> u32 {
    global1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -170f)))))), _wgslsmith_f_op_f32(-2251f - _wgslsmith_f_op_f32(min(744f, _wgslsmith_f_op_f32(trunc(-577f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, 530f, -221f, global1.c.x)) - global1.c)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global1.c.x, global1.c.x, arg_0) * vec4<f32>(global1.b, 599f, global1.c.x, global1.b))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-774f, global1.c.x, -916f, 147f))))));
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(4294967295u, u_input.b.x), countOneBits(4294967295u), u_input.a.x, ~u_input.b.x), select(vec4<u32>(u_input.a.x, 13968u, 1u, 1u) ^ u_input.b, ~vec4<u32>(29364u, 1u, u_input.c.x, 25141u), vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(~1u, u_input.b.x << (u_input.b.x % 32u)))), 6u)] > 19413i;
    let var_1 = ~1u;
    return 55830u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>) -> bool {
    var var_0 = reverseBits(_wgslsmith_div_u32(4294967295u, ~func_3(_wgslsmith_f_op_f32(-arg_0.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_0.x), 848f, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1791f, arg_0.x, true))))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, arg_0.x, true)) + _wgslsmith_f_op_f32(sign(-1977f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(540f)), _wgslsmith_f_op_f32(-global1.c.x), true)))));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(762f + _wgslsmith_f_op_f32(trunc(-355f))), -289f), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1635f) * 1365f) - -1364f));
    let var_3 = u_input.b.zy;
    let var_4 = _wgslsmith_f_op_vec3_f32(max(arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1925f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-534f + -722f) + _wgslsmith_f_op_f32(f32(-1f) * -807f)), _wgslsmith_f_op_f32(f32(-1f) * -220f)))));
    return false;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>) -> Struct_1 {
    global0 = array<i32, 6>();
    let var_0 = firstTrailingBit(_wgslsmith_mult_vec3_u32(min(~firstTrailingBit(u_input.c), vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), firstTrailingBit(9351u), u_input.b.x)), select(u_input.a.wxz, vec3<u32>(max(u_input.b.x, u_input.b.x), ~0u, min(u_input.c.x, u_input.a.x)), false)));
    return Struct_1(_wgslsmith_f_op_f32(arg_1.x * global1.a), -1497f, vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1041f, _wgslsmith_f_op_f32(-global1.c.x))) * -934f), _wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1569f) * _wgslsmith_f_op_f32(arg_1.x + arg_1.x)))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -202f), -1278f, global1.b))));
    global1 = func_4(!(true & func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(291f, 1265f, var_0.x) - vec3<f32>(-787f, 592f, var_0.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 64710u, 35249u), u_input.b.xww, vec3<u32>(u_input.c.x, 5558u, 4294967295u)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_f32(1333f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.c.x)))), var_0.x));
    var var_1 = abs(~(~(~(4294967295u >> (u_input.c.x % 32u)))));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -30331i), countOneBits(~abs(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], u_input.d) >> (vec2<u32>(u_input.c.x, 3354u) % vec2<u32>(32u)))));
    var var_3 = max(abs(_wgslsmith_div_vec3_i32(-vec3<i32>(0i, 1i, u_input.d), ~vec3<i32>(u_input.d, global0[_wgslsmith_index_u32(41402u, 6u)], 1i)) ^ vec3<i32>(u_input.d, ~9945i, ~u_input.d)), ~abs(-max(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(u_input.b.x, 6u)], global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), vec3<i32>(u_input.d, 1i, global0[_wgslsmith_index_u32(62627u, 6u)]))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.c.x))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<f32>) -> Struct_1 {
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    return Struct_1(arg_3.x, -342f, global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(all(vec4<bool>(true, true, false, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x) <= _wgslsmith_add_u32(u_input.a.x, 1u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-665f, -498f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, 760f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global1.c.x, global1.c.x)))), _wgslsmith_f_op_vec4_f32(global1.c * vec4<f32>(_wgslsmith_f_op_f32(func_1()), global1.a, -186f, _wgslsmith_f_op_f32(-global1.b)))), vec3<u32>(0u << (firstLeadingBit(43001u) % 32u), 1u, _wgslsmith_clamp_u32(~u_input.b.x, max(u_input.a.x, u_input.b.x), u_input.c.x)) & ~(vec3<u32>(9237u, u_input.b.x, 71367u) ^ vec3<u32>(u_input.c.x, u_input.c.x, 69200u)), global1.c);
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, 796f, global1.a, global1.c.x) * global1.c)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(global1.c)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    var var_1 = 1000f;
    let var_2 = var_0.x;
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(4294967295u), firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(1u, 6u)], 0i)), u_input.b.x);
}

