struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(0i, 21585i, i32(-2147483648), -2909i, 2147483647i, 1i, i32(-2147483648), i32(-2147483648), 40426i, 13732i);

var<private> global1: vec4<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_sub_i32(-11084i ^ ~(66679i & global0[_wgslsmith_index_u32(global1.x, 10u)]), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(-17550i, -12666i, -2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(27046u, 10u)], u_input.c.x, -2147483647i), arg_0.a.c)), u_input.c)) ^ _wgslsmith_dot_vec3_i32(u_input.c, ~(-vec3<i32>(u_input.c.x, 23909i, -1i) << (vec3<u32>(u_input.a.x, 0u, u_input.b) % vec3<u32>(32u))));
    let var_1 = arg_1.x;
    global1 = vec4<u32>(1707u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global1.xx, vec2<u32>(130317u, u_input.a.x)), ~u_input.b) | max(global1.x, 4294967295u), ~(4294967295u << (u_input.b % 32u)), ~6443u);
    global1 = ~vec4<u32>(select(~global1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), abs(vec2<u32>(u_input.b, global1.x))), reverseBits(76687u) >= _wgslsmith_add_u32(global1.x, u_input.b)), global1.x, max(min(select(19659u, u_input.b, arg_0.a.d.x), ~0u), _wgslsmith_dot_vec3_u32(~global1.wwx, vec3<u32>(global1.x, global1.x, u_input.a.x))), ~(~(~u_input.b)));
    var var_2 = max(arg_0.a.c.x, -58169i);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-503f, 639f)), -1000f, _wgslsmith_f_op_f32(-324f - -1290f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1168f, -116f) * vec3<f32>(559f, 1673f, 1786f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(759f, -2131f, 1969f))) * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1128f + 771f), -556f, arg_1.x)), -638f, _wgslsmith_div_f32(641f, _wgslsmith_f_op_f32(ceil(-1460f))))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: bool) -> i32 {
    global0 = array<i32, 10>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_1(-54375i, vec2<i32>(43706i, u_input.c.x), vec3<i32>(global0[_wgslsmith_index_u32(11081u, 10u)], u_input.c.x, global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec3<bool>(arg_2, false, arg_2))), vec4<bool>(arg_2, arg_2, false, arg_2))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -2162f, arg_0))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(876f, arg_0, arg_0) * vec3<f32>(arg_0, 974f, 333f)), vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0)), arg_0, _wgslsmith_f_op_f32(-arg_0)))));
    let var_1 = _wgslsmith_f_op_f32(-1000f * arg_0);
    var var_2 = 5744u;
    var var_3 = Struct_2(vec2<bool>(!(!arg_2) & true, any(select(!vec3<bool>(false, arg_2, true), vec3<bool>(true, true, arg_2), arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - var_1) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1024f))), Struct_1(u_input.c.x, vec2<i32>(17510i, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], -20067i, 2147483647i)) | _wgslsmith_clamp_vec2_i32(u_input.c.zy ^ u_input.c.yx, u_input.c.zx ^ vec2<i32>(-1i, u_input.c.x), ~vec2<i32>(17528i, 2147483647i)), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 0u), 10u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, 1i, global0[_wgslsmith_index_u32(21555u, 10u)]) ^ vec4<i32>(-2147483647i, -1i, 0i, u_input.c.x), vec4<i32>(12376i, u_input.c.x, -4483i, -43674i)), countOneBits(_wgslsmith_mult_i32(u_input.c.x, global0[_wgslsmith_index_u32(30425u, 10u)]))), select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, arg_2, true), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, arg_2, false)), var_1 == var_1), select(select(vec3<bool>(false, false, false), vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, false, arg_2)), vec3<bool>(true, true, arg_2), select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(false, false, arg_2), false)), select(!vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, arg_2, arg_2), select(vec3<bool>(false, false, true), vec3<bool>(true, arg_2, arg_2), vec3<bool>(true, arg_2, arg_2))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 1210f) * _wgslsmith_f_op_f32(floor(var_1))), _wgslsmith_f_op_f32(-1f))));
    return reverseBits(u_input.c.x);
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_3(Struct_1(-16727i, vec2<i32>(-global0[_wgslsmith_index_u32(u_input.b, 10u)] | func_2(1194f, 0u, false), -26313i >> (u_input.b % 32u)), -min(-vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x), -u_input.c), !select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, false))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1302f, _wgslsmith_f_op_f32(f32(-1f) * -297f)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(var_0, select(vec4<bool>(true, var_0.a.d.x, var_0.a.d.x, true), vec4<bool>(var_0.a.d.x, false, false, true), vec4<bool>(var_0.a.d.x, false, true, false)))).x, _wgslsmith_f_op_f32(f32(-1f) * -740f), _wgslsmith_f_op_f32(step(-329f, -618f))) + vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(var_0.a), !vec4<bool>(true, false, true, var_0.a.d.x))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), -967f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_3(var_0.a), select(!vec4<bool>(true, false, var_0.a.d.x, true), select(vec4<bool>(var_0.a.d.x, true, var_0.a.d.x, false), vec4<bool>(var_0.a.d.x, false, true, var_0.a.d.x), var_0.a.d.x), true && var_0.a.d.x)))));
    let var_3 = var_2.x;
    var var_4 = ~18084u;
    return Struct_4(countOneBits(~(-25859i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_2) -> StorageBuffer {
    let var_0 = arg_2;
    var var_1 = func_1();
    var var_2 = vec3<u32>(23578u, ~15781u << ((_wgslsmith_mult_u32(~1u, u_input.b | 4294967295u) << (_wgslsmith_add_u32(23776u, u_input.b & global1.x) % 32u)) % 32u), u_input.b);
    var_1 = Struct_4(~min(8775i ^ (arg_0.x & var_0.c.c.x), arg_1.a));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-966f + _wgslsmith_f_op_f32(sign(var_0.d))), _wgslsmith_f_op_f32(f32(-1f) * -608f), -906f);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_3.x, 573f)), _wgslsmith_f_op_f32(floor(arg_2.d))), -1997f, 1083f))), global1.x & u_input.a.x, ~(~vec3<i32>(-15270i, 1i, -25309i)), var_0.c.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-769f, 174f, -1362f, -471f) + vec4<f32>(1000f, 153f, -435f, -783f)))))))));
    let x = u_input.a;
    s_output = func_4(vec2<i32>(-_wgslsmith_mult_i32(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(36298u, 10u)], -1802i), ~0i), -(i32(-1i) * -2147483647i)), func_1(), Struct_2(select(vec2<bool>(all(vec3<bool>(true, true, true)), true), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(ceil(-953f)), Struct_1(-2147483647i, vec2<i32>(-45757i, i32(-1i) * -9223i), select(u_input.c, vec3<i32>(-1i, global0[_wgslsmith_index_u32(global1.x, 10u)], 33974i) << (vec3<u32>(global1.x, 61712u, 1u) % vec3<u32>(32u)), all(vec4<bool>(true, true, true, false))), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -214f))))));
}

