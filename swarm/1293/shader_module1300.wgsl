struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-498f, 322f), vec2<f32>(-2168f, 573f), vec2<f32>(1408f, 1693f), vec2<f32>(344f, -901f), vec2<f32>(1224f, -487f), vec2<f32>(427f, -1000f), vec2<f32>(102f, 707f), vec2<f32>(1981f, -274f), vec2<f32>(187f, 214f), vec2<f32>(156f, -1042f), vec2<f32>(2359f, 1387f), vec2<f32>(458f, -343f), vec2<f32>(-1649f, 266f), vec2<f32>(-1575f, 1259f), vec2<f32>(-351f, 1478f), vec2<f32>(-583f, -321f), vec2<f32>(-1000f, 1182f), vec2<f32>(-294f, 2682f), vec2<f32>(-364f, -115f), vec2<f32>(377f, 303f), vec2<f32>(802f, -1000f), vec2<f32>(1609f, 1508f), vec2<f32>(874f, -410f), vec2<f32>(-1415f, 794f), vec2<f32>(972f, 332f), vec2<f32>(-798f, -1309f), vec2<f32>(-853f, 1000f), vec2<f32>(147f, -2263f));

var<private> global1: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(6763i, 28260i, -2321i), vec3<i32>(-6192i, 2147483647i, -37150i), vec3<i32>(75693i, -24144i, 0i), vec3<i32>(-204i, 2147483647i, 92503i), vec3<i32>(1i, -22730i, 0i), vec3<i32>(i32(-2147483648), -4240i, 2147483647i));

var<private> global2: f32;

var<private> global3: vec4<i32> = vec4<i32>(-4064i, 41249i, -1i, 13246i);

var<private> global4: Struct_2 = Struct_2(vec3<i32>(0i, -1i, 0i), vec4<bool>(false, true, true, true));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> i32 {
    global4 = Struct_2(countOneBits(_wgslsmith_mult_vec3_i32(-global4.a, -reverseBits(arg_0))), select(!(!vec4<bool>(arg_1, global4.b.x, global4.b.x, false)), select(select(select(vec4<bool>(arg_1, false, arg_1, global4.b.x), vec4<bool>(arg_1, true, global4.b.x, false), global4.b), select(global4.b, global4.b, true), any(vec3<bool>(true, global4.b.x, false))), !vec4<bool>(arg_1, global4.b.x, true, false), global4.b.x), arg_1));
    let var_0 = true;
    let var_1 = global4.b.zw;
    var var_2 = !select(!vec4<bool>(!arg_1, false && var_1.x, !var_0, any(global4.b)), vec4<bool>(any(select(global4.b.wyx, global4.b.ywx, var_1.x)), true, false, !(4294967295u == u_input.a)), select(!any(global4.b.zww), global4.b.x, var_0));
    var var_3 = ~(-arg_0.x);
    return u_input.b.x;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = any(global4.b.ww);
    let var_1 = ~(-_wgslsmith_div_i32(max(-u_input.b.x, _wgslsmith_div_i32(u_input.b.x, global4.a.x)), u_input.b.x));
    global2 = _wgslsmith_f_op_f32(trunc(563f));
    var var_2 = global4.b.x;
    var var_3 = countOneBits(~firstLeadingBit(-u_input.b.x) ^ _wgslsmith_add_i32(func_3(vec3<i32>(54644i, var_1, -23990i), global4.b.x), ~25004i));
    return select(vec4<bool>(false, any(!select(vec2<bool>(global4.b.x, global4.b.x), vec2<bool>(false, false), global4.b.wz)), !var_0, true), select(!vec4<bool>(var_0, !var_0, true, var_0 || global4.b.x), !select(!global4.b, global4.b, !vec4<bool>(global4.b.x, global4.b.x, false, false)), global4.b.x), !vec4<bool>(true, any(!vec3<bool>(global4.b.x, global4.b.x, false)), global4.b.x, !var_0));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> vec3<f32> {
    global1 = array<vec3<i32>, 6>();
    global4 = Struct_2(vec3<i32>(-50648i, _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(49880i, -4312i, global3.x, 28110i), vec4<i32>(arg_0.a.x, 0i, -15442i, global4.a.x)), (vec4<i32>(-24119i, arg_0.a.x, -2147483647i, 0i) << (vec4<u32>(1u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) >> (~vec4<u32>(4294967295u, u_input.a, 49035u, u_input.a) % vec4<u32>(32u))), global3.x & -select(u_input.b.x, global4.a.x, global4.b.x)), select(!(!vec4<bool>(global4.b.x, false, true, arg_0.b.x)), func_2(_wgslsmith_sub_u32(u_input.a, ~0u)), arg_0.b.x));
    global3 = countOneBits(select(-select(-vec4<i32>(40689i, global3.x, -1i, global3.x), ~vec4<i32>(arg_1.x, 13720i, -1i, -40217i), !vec4<bool>(false, true, false, arg_0.b.x)), _wgslsmith_mod_vec4_i32(-vec4<i32>(global4.a.x, 0i, 1i, arg_1.x), -(vec4<i32>(0i, -38453i, arg_0.a.x, global3.x) >> (vec4<u32>(59617u, 27140u, u_input.a, 1u) % vec4<u32>(32u)))), select(arg_0.b.x, true, global4.b.x)));
    global4 = arg_0;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(501f * _wgslsmith_f_op_f32(step(1786f, 773f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1616f) - 1f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1315f + -463f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -851f) + _wgslsmith_f_op_f32(1656f * -176f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1029f)), _wgslsmith_f_op_f32(f32(-1f) * -617f))), select(true, global4.b.x, global4.b.x) | !global4.b.x)))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -443f), _wgslsmith_f_op_f32(sign(-943f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -101f), _wgslsmith_div_f32(298f, 749f))))) * _wgslsmith_div_vec3_f32(vec3<f32>(-393f, _wgslsmith_f_op_f32(f32(-1f) * -1725f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * -127f), _wgslsmith_f_op_f32(sign(-2322f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(279f, -481f), -324f, _wgslsmith_f_op_f32(select(-1479f, 550f, global4.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -3262i;
    var var_1 = _wgslsmith_f_op_vec3_f32(func_1(Struct_2(global4.a, vec4<bool>(global4.b.x, true, true, true)), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0, -2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(global3.x, -73707i), vec2<i32>(0i, u_input.b.x)))) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))));
    var var_2 = Struct_1(_wgslsmith_div_f32(var_1.x, -2324f), func_2(20958u).zyx);
    global4 = Struct_2(global3.yzw, global4.b);
    let var_3 = _wgslsmith_sub_u32(1u, u_input.a) & ~23803u;
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1317f * var_1.x))), -1000f)));
}

