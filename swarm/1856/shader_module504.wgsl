struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(true, vec2<u32>(5898u, 1u), -8964i, vec4<i32>(10348i, -1i, -28009i, -1i)), Struct_1(true, vec2<u32>(27766u, 4294967295u), -49905i, vec4<i32>(-18085i, 14887i, -26802i, i32(-2147483648))), Struct_1(false, vec2<u32>(4294967295u, 4294967295u), 1i, vec4<i32>(2147483647i, 1i, 30177i, 1i)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = all(vec3<bool>(all(select(select(vec3<bool>(arg_3.a, true, false), vec3<bool>(false, arg_1, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, arg_1), vec3<bool>(global1.a, global1.a, global1.a), global1.a), arg_1)), any(!(!vec2<bool>(true, arg_1))), true));
    return _wgslsmith_clamp_u32(arg_3.b.x, ~_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), _wgslsmith_dot_vec2_u32(global1.b, ~global1.b));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_div_u32(max(~arg_2, _wgslsmith_mod_u32(52051u, select(u_input.d.x, 1u, true))) << (~0u % 32u), global1.b.x);
    var var_1 = arg_1;
    let var_2 = global3[_wgslsmith_index_u32(~655u, 3u)];
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u) & ~u_input.c.xx, u_input.e.yx)), reverseBits(vec2<u32>(abs(arg_2) & (global1.b.x & 46232u), global1.b.x))), 3u)];
    let var_4 = Struct_1(var_2.a, _wgslsmith_div_vec2_u32(vec2<u32>(abs(var_3.b.x), countOneBits(var_2.b.x)), vec2<u32>(1u, countOneBits(25363u))) << (abs(var_3.b) % vec2<u32>(32u)), ~_wgslsmith_mod_i32(108i, _wgslsmith_dot_vec4_i32(~var_3.d, abs(var_2.d))), -global1.d);
    return vec4<u32>(_wgslsmith_mod_u32(~var_4.b.x << ((var_4.b.x >> (_wgslsmith_div_u32(var_4.b.x, var_4.b.x) % 32u)) % 32u), 0u), var_2.b.x, 7592u, ~countOneBits(241u));
}

fn func_1(arg_0: f32, arg_1: i32) -> vec3<f32> {
    global0 = abs(~(abs(func_2(global3[_wgslsmith_index_u32(33445u, 3u)], global1.a, u_input.a.yz, global2[_wgslsmith_index_u32(global1.b.x, 29u)])) ^ _wgslsmith_dot_vec4_u32(func_3(arg_1, vec2<f32>(arg_0, arg_0), 35055u), vec4<u32>(global1.b.x, 74405u, 1u, 13428u))));
    global2 = array<Struct_1, 29>();
    let var_0 = any(select(select(select(vec3<bool>(global1.a, true, global1.a), vec3<bool>(true, true, true), vec3<bool>(true, global1.a, global1.a)), select(vec3<bool>(global1.a, global1.a, false), select(vec3<bool>(global1.a, global1.a, false), vec3<bool>(global1.a, false, global1.a), true), select(vec3<bool>(global1.a, true, true), vec3<bool>(false, global1.a, true), vec3<bool>(global1.a, true, true))), false), vec3<bool>(any(vec2<bool>(false, false)), false, !(global1.a || true)), !vec3<bool>(!global1.a, global1.c != u_input.a.x, true)));
    var var_1 = !vec4<bool>(_wgslsmith_clamp_i32(-u_input.a.x, 2147483647i, countOneBits(19803i)) <= min(1i, 2147483647i), false, true, !global1.a);
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(~global1.b.x, min(global1.b.x, ~func_2(global2[_wgslsmith_index_u32(u_input.d.x, 29u)], var_1.x, vec2<i32>(u_input.a.x, arg_1), Struct_1(false, u_input.d.zy, global1.c, global1.d))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, 21912u), vec2<u32>(u_input.b, global1.b.x)), ~u_input.c.zz), u_input.e.ww), reverseBits(u_input.c.x)), _wgslsmith_div_vec4_u32(u_input.d << (~vec4<u32>(28747u, 4294967295u, global1.b.x, 65372u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~u_input.e, vec4<u32>(global1.b.x, u_input.d.x, u_input.b, global1.b.x))) << (~(~vec4<u32>(1u, u_input.d.x, u_input.e.x, u_input.b)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2449f, 492f, arg_0)) - vec3<f32>(-1664f, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1470f, arg_0, -838f) - vec3<f32>(-1632f, 386f, arg_0))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, arg_0, 1383f))))))), select(var_1.zyw, vec3<bool>(select(false && var_0, true, select(true, true, var_1.x)), var_1.x, global1.a), vec3<bool>(false, any(vec3<bool>(var_0, var_0, true)), global1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.b.x;
    var var_0 = global1.a;
    var var_1 = -6122i;
    global0 = firstTrailingBit(select(u_input.b, ~(~(4294967295u >> (u_input.c.x % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1687f, -1000f)) - _wgslsmith_f_op_f32(round(1023f))) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2189f, 1474f) + _wgslsmith_f_op_f32(-1398f - -761f))));
    let var_2 = Struct_1(false, reverseBits(u_input.e.yx), u_input.a.x, select(global1.d << (vec4<u32>(~4294967295u, ~1u, _wgslsmith_div_u32(61206u, global1.b.x), u_input.e.x) % vec4<u32>(32u)), countOneBits(vec4<i32>(u_input.a.x, u_input.a.x ^ 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, 1i), u_input.a), global1.c)), select(!(!vec4<bool>(true, global1.a, global1.a, global1.a)), !(!vec4<bool>(global1.a, global1.a, true, false)), vec4<bool>(global1.a && false, true, u_input.a.x <= -2147483647i, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(673f, _wgslsmith_mod_i32(0i, firstLeadingBit(1i))))), var_2.c);
}

