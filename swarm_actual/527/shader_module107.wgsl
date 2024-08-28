struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-2788f);

var<private> global1: array<Struct_1, 14>;

var<private> global2: u32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> u32 {
    global2 = countOneBits(51981u);
    global1 = array<Struct_1, 14>();
    global0 = global1[_wgslsmith_index_u32(~countOneBits(~(22545u << (u_input.b % 32u)) << (select(u_input.b, abs(88657u), all(vec2<bool>(true, false))) % 32u)), 14u)];
    var var_0 = min(~_wgslsmith_add_vec3_u32(max(~vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b) >> (vec3<u32>(45103u, 1u, u_input.b) % vec3<u32>(32u))), select(vec3<u32>(u_input.b, 15643u, u_input.b), ~vec3<u32>(23530u, u_input.b, 39973u), false)), ~min(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 0u, 16741u), vec3<u32>(u_input.b, 61298u, u_input.b)), vec3<u32>(1u, u_input.b, u_input.b), false), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 1u, 21556u), ~vec3<u32>(u_input.b, 50483u, 96900u))));
    let var_1 = vec2<bool>(true, any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false)) || all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)));
    return 33935u;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = Struct_1(global0.a);
    let var_1 = ~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(36893u, 0u), vec2<bool>(false, true)), vec2<u32>(0u, 19059u)), (u_input.b & 95114u) >> (max(u_input.b, 58711u) % 32u), 4294967295u, reverseBits(u_input.b)), vec4<u32>(select(~2767u, _wgslsmith_mod_u32(21608u, u_input.b), true), _wgslsmith_sub_u32(~u_input.b, u_input.b), func_3(arg_0), reverseBits(0u)));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(440f)) - _wgslsmith_f_op_f32(arg_0 * -141f)), _wgslsmith_f_op_f32(ceil(var_0.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -507f))));
    var var_2 = vec3<bool>(true, (_wgslsmith_f_op_f32(arg_0 * global0.a) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2081f, -325f, true)) * _wgslsmith_f_op_f32(abs(var_0.a)))) & true, true && ((_wgslsmith_sub_u32(var_1.x, var_1.x) < _wgslsmith_add_u32(23910u, 24297u)) & false));
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a + var_0.a))), _wgslsmith_f_op_f32(-var_0.a)))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -663f), var_0.a, var_2.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a + -465f))) + -769f));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(701f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, -861f, -598f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-780f, global0.a, global0.a), vec3<f32>(1116f, -1800f, 783f)))))) * vec3<f32>(global0.a, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(round(-606f)))), var_0.a)) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a, 945f, false))), 2666f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(351f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1186f) - _wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.a, global0.a))))));
    global1 = array<Struct_1, 14>();
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-400f)) + _wgslsmith_f_op_f32(f32(-1f) * -186f)))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * 1000f), -135f);
    return global1[_wgslsmith_index_u32(1u, 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.a.x, ~u_input.a.x);
    let var_1 = func_1();
    let var_2 = Struct_1(724f);
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(253f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1.a)))))), _wgslsmith_f_op_f32(-var_1.a)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.a, 1084f))), _wgslsmith_f_op_f32(max(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))))));
    global0 = func_1();
    var_0 = ~(~countOneBits(vec2<i32>(var_0.x, u_input.a.x) | firstLeadingBit(vec2<i32>(-8859i, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_i32(-13355i, u_input.c.x), _wgslsmith_f_op_f32(func_2(-368f)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(1i, ~u_input.c.x), -37147i, -2147483647i, u_input.c.x), firstLeadingBit(-vec4<i32>(10325i, var_0.x, var_0.x, u_input.a.x) >> ((vec4<u32>(u_input.b, u_input.b, 117776u, u_input.b) >> (vec4<u32>(1u, u_input.b, 27455u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))), max(vec4<i32>(u_input.a.x << (4294967295u % 32u), u_input.a.x, var_0.x, -2147483647i), firstLeadingBit(vec4<i32>(u_input.c.x, -1i, u_input.a.x, 1i)) >> (~vec4<u32>(25688u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))), -27978i);
}

