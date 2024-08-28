struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(1997f, 581f, 822f, 421f, -471f, 1146f, -189f, -1849f, 683f, -2083f, -1503f, 690f, -1210f, 598f, -260f, 1000f, -1809f, -362f, -319f, -603f, 219f, 605f, 280f);

var<private> global1: array<i32, 1> = array<i32, 1>(i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    global0 = array<f32, 23>();
    return select(!(!vec3<bool>(true, any(vec3<bool>(true, arg_1, arg_1)), false & arg_0.x)), !vec3<bool>(true, true, arg_1), true);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = !(!vec4<bool>(false, false, true, all(vec3<bool>(true, false, false)) | true));
    var var_1 = Struct_1(~arg_2.b, select(vec3<u32>(arg_0 | _wgslsmith_mult_u32(4294967295u, arg_1.d), 33131u, reverseBits(~29155u)), vec3<u32>(_wgslsmith_mod_u32(arg_3.a.x, 1u), ~arg_2.b.x, firstLeadingBit(u_input.b.x)) ^ _wgslsmith_mult_vec3_u32(u_input.b.zxx, ~arg_3.b), select(!select(var_0.wwx, var_0.yww, vec3<bool>(false, var_0.x, var_0.x)), select(func_3(vec3<bool>(var_0.x, true, false), var_0.x, arg_2, global0[_wgslsmith_index_u32(arg_1.a.x, 23u)]), !vec3<bool>(false, var_0.x, true), true), all(vec2<bool>(var_0.x, var_0.x)))), -(-2147483647i ^ select(1398i, -arg_1.c, true)), ~_wgslsmith_sub_u32(arg_1.d, _wgslsmith_div_u32(78753u, ~87829u)));
    return _wgslsmith_sub_u32(_wgslsmith_sub_u32(22096u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_1.d, 0u, 1u), u_input.b) & arg_0)), u_input.b.x);
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = ~(~vec4<u32>(47475u, firstTrailingBit(0u) >> (_wgslsmith_sub_u32(arg_0.d, arg_0.d) % 32u), _wgslsmith_div_u32(arg_0.d, arg_0.a.x) >> (_wgslsmith_dot_vec2_u32(u_input.b.xw, vec2<u32>(4294967295u, u_input.b.x)) % 32u), arg_0.b.x));
    var_0 = reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(3522u, ~u_input.b.x, ~func_2(81435u, Struct_1(var_0.xxy, var_0.xzy, 0i, var_0.x), arg_0, arg_0), u_input.b.x), _wgslsmith_mod_vec4_u32(u_input.b, abs(u_input.b)), _wgslsmith_sub_vec4_u32(u_input.b, u_input.b)));
    let var_1 = !select(false, false, all(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))));
    let var_2 = arg_0;
    var var_3 = Struct_1(~(~(vec3<u32>(10060u, u_input.b.x, arg_0.a.x) ^ countOneBits(var_2.b))), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~(vec3<u32>(4294967295u, 0u, 0u) | var_0.zwx), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(69159u, 20149u, u_input.b.x), var_0.zzy, vec3<u32>(var_2.d, var_0.x, var_2.a.x))), vec3<u32>(0u, ~min(64957u, 52619u), ~_wgslsmith_mod_u32(var_0.x, 7289u))), _wgslsmith_dot_vec2_i32(~u_input.a, max((vec2<i32>(arg_0.c, -22436i) >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))) >> (var_0.xw % vec2<u32>(32u)), -(vec2<i32>(1i, u_input.a.x) << (vec2<u32>(var_0.x, var_2.d) % vec2<u32>(32u))))), 1u);
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.b.zyz, func_1(Struct_1(vec3<u32>(min(4294967295u, u_input.b.x), u_input.b.x >> (0u % 32u), 4294967295u), vec3<u32>(u_input.b.x, 10080u, 42671u), global1[_wgslsmith_index_u32(u_input.b.x, 1u)], ~8453u)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 0u), 1u)], 84409u);
    var var_1 = var_0;
    let var_2 = var_0;
    global0 = array<f32, 23>();
    let var_3 = firstLeadingBit(vec4<i32>(firstTrailingBit(-(var_0.c | -18211i)), global1[_wgslsmith_index_u32(90956u, 1u)], ~1i, firstLeadingBit(28033i)));
    var_1 = var_2;
    var var_4 = Struct_1(vec3<u32>(~(~var_0.d), 0u, ~var_0.b.x), ~(~((var_2.a & u_input.b.zyw) >> (~vec3<u32>(3794u, var_2.a.x, var_2.b.x) % vec3<u32>(32u)))), 0i, _wgslsmith_add_u32(~u_input.b.x, ~0u));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_2.b.x, 23u)], global0[_wgslsmith_index_u32(25387u, 23u)]))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-945f + _wgslsmith_f_op_f32(min(1033f, global0[_wgslsmith_index_u32(38404u, 23u)])))))));
    var var_6 = countOneBits(vec4<u32>(~(~(var_4.a.x & u_input.b.x)), var_4.d, u_input.b.x, 104437u));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(~(i32(-1i) * -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 19948i), vec2<i32>(var_0.c, var_2.c)), -u_input.a.x, 68787i), vec4<i32>(1i, var_4.c, reverseBits(~(-2147483647i)), ~(~global1[_wgslsmith_index_u32(4294967295u, 1u)])), vec4<bool>(true, true, true, false)), ~(~_wgslsmith_mod_u32(21656u, 4309u & var_0.b.x)));
}

