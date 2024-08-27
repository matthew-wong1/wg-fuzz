struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.c.x - 445f), _wgslsmith_div_f32(252f, arg_2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.x - 2162f))))));
    let var_1 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(17646u, (4294967295u | arg_1.x) & 4294967295u, _wgslsmith_mod_u32(26146u, arg_2.b)), vec3<u32>(arg_2.b, firstLeadingBit(~759u), ~arg_3.b >> (~arg_3.b % 32u)));
    let var_2 = false;
    global2 = arg_3.d.wwz;
    var var_3 = true;
    return arg_3.c.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec2<i32>) -> vec3<bool> {
    return global1.xyz;
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_1, 18>();
    var var_0 = !vec3<bool>(global2.x, false, true);
    let var_1 = select(firstTrailingBit(vec3<i32>(~u_input.b << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 21143u, 34274u, 26742u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 29242u)) % 32u), -24615i, 19216i)), vec3<i32>(1i, u_input.b << (~_wgslsmith_dot_vec4_u32(vec4<u32>(36375u, 11137u, 1u, 23309u), vec4<u32>(4294967295u, 7184u, 62391u, 4294967295u)) % 32u), 0i), func_4(_wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, 2663u, 120823u, 0u)), ~vec4<u32>(4294967295u, 13055u, 4294967295u, 11280u)), _wgslsmith_f_op_f32(func_3(true, _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 27500u), vec2<u32>(12191u, 1u)), countOneBits(vec2<u32>(40742u, 4294967295u))), Struct_1(vec4<i32>(59310i, -2147483647i, 1i, 0i), _wgslsmith_mult_u32(1u, 4161u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1047f, 1365f)), !vec4<bool>(true, global2.x, global2.x, global1.x)), global0[_wgslsmith_index_u32(abs(~38905u), 18u)])), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1236f, 888f, -2173f, 2133f))))), abs(-u_input.a.zz << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -478f), -224f, _wgslsmith_div_f32(1000f, -410f), -1000f))));
    var_0 = global1.yzy;
    return Struct_2(Struct_1(-reverseBits(~vec4<i32>(u_input.b, -2147483647i, u_input.a.x, -22196i)), 1u, vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x), select(select(select(vec4<bool>(var_0.x, true, false, global1.x), vec4<bool>(false, global1.x, false, var_0.x), vec4<bool>(true, global2.x, var_0.x, true)), !vec4<bool>(var_0.x, global1.x, true, false), !vec4<bool>(true, false, global1.x, false)), !select(vec4<bool>(false, false, true, global2.x), vec4<bool>(global2.x, false, false, false), global1.x), any(select(vec4<bool>(false, false, true, true), vec4<bool>(global1.x, false, global2.x, global1.x), vec4<bool>(false, var_0.x, false, true))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1121f)))), var_2.x)));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> u32 {
    let var_0 = 101150u;
    let var_1 = -8321i;
    let var_2 = arg_2.a.a.yww;
    let var_3 = func_2().a;
    let var_4 = _wgslsmith_f_op_f32(1975f * var_3.c.x);
    return ~(~_wgslsmith_mod_u32(22750u, _wgslsmith_add_u32(0u, 4294967295u) << (abs(var_3.b) % 32u)));
}

fn func_1() -> vec2<f32> {
    var var_0 = global0[_wgslsmith_index_u32(~1u, 18u)];
    var var_1 = _wgslsmith_div_u32(max(func_5(Struct_2(Struct_1(vec4<i32>(u_input.b, -29427i, var_0.a.x, var_0.a.x), var_0.b, vec2<f32>(-955f, var_0.c.x), var_0.d), _wgslsmith_f_op_f32(f32(-1f) * -1150f)), var_0.b, func_2()), _wgslsmith_mod_u32(var_0.b, _wgslsmith_div_u32(0u, ~var_0.b))), var_0.b);
    let var_2 = !(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(0u, 14450u, 18871u), _wgslsmith_sub_vec3_u32(vec3<u32>(33101u, var_0.b, 1u), vec3<u32>(20274u, 39870u, var_0.b)), func_4(vec4<u32>(46139u, 34563u, var_0.b, var_0.b), -542f, vec4<f32>(1679f, var_0.c.x, var_0.c.x, var_0.c.x), vec2<i32>(var_0.a.x, -14107i)).x), abs(vec3<u32>(1u, 1u, 1u))) >= var_0.b);
    global0 = array<Struct_1, 18>();
    var var_3 = -16300i;
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, var_0.c.x), vec2<f32>(-381f, var_0.c.x))), vec2<f32>(682f, var_0.c.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(1527f, var_0.c.x) * var_0.c), !var_2)))), var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_1());
    var var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(72071u, var_1.a.c, vec3<u32>(firstTrailingBit(var_1.a.b), var_1.a.b, _wgslsmith_sub_u32(var_1.a.b, _wgslsmith_div_u32(104190u, ~1u))), 1i, vec4<u32>(~(~var_1.a.b) >> ((var_1.a.b ^ countOneBits(119613u)) % 32u), 1u, 11793u, ~var_1.a.b));
}

