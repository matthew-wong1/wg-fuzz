struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-1i, -1i, vec3<u32>(0u, 53583u, 1u));

var<private> global1: i32 = 0i;

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: bool) -> i32 {
    global1 = _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -27693i, ~(~u_input.a.x)) ^ u_input.a.x);
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(952f, -1586f, 109f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-223f, 1212f, -326f), vec3<f32>(1070f, 719f, -884f))), select(vec3<bool>(arg_0, arg_0, global2.x), vec3<bool>(arg_0, false, arg_0), vec3<bool>(global2.x, false, global2.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-430f, -115f, -1536f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(563f, 1195f, -404f) * vec3<f32>(1365f, -937f, 339f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1227f, -569f, -1194f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1216f, 1820f, -2836f) + vec3<f32>(-1299f, 1684f, -796f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1651f, 807f, 179f)))))), arg_0);
    var var_1 = var_0;
    global0 = Struct_4(_wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.wz), 0i, global0.c);
    var var_2 = u_input.b.x;
    return max(-69665i, firstTrailingBit(u_input.a.x));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> vec3<bool> {
    var var_0 = Struct_5(Struct_4(min(abs(34778i) | _wgslsmith_mult_i32(arg_0.x, global0.a), u_input.a.x), _wgslsmith_mod_i32(arg_0.x, _wgslsmith_mult_i32(global0.b, 7140i)) | (30972i | func_3(true)), firstTrailingBit(max(global0.c, vec3<u32>(1u, u_input.b.x, u_input.b.x))) | _wgslsmith_div_vec3_u32(global0.c, ~vec3<u32>(global0.c.x, u_input.b.x, global0.c.x))), _wgslsmith_f_op_f32(abs(496f)), select(select(vec4<bool>(select(true, global2.x, global2.x), !global2.x, global2.x, !global2.x), select(!vec4<bool>(global2.x, global2.x, false, true), !vec4<bool>(true, global2.x, true, true), all(vec4<bool>(global2.x, false, true, global2.x))), any(vec4<bool>(false, global2.x, global2.x, false))), !select(!vec4<bool>(false, false, global2.x, global2.x), select(vec4<bool>(true, true, true, global2.x), vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(true, true, global2.x, global2.x)), global2.x), !vec4<bool>(true, global2.x, -1649f < arg_1, all(vec4<bool>(global2.x, global2.x, global2.x, global2.x)))));
    global0 = var_0.a;
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1123f, 463f, arg_1) + vec3<f32>(163f, var_0.b, -367f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-529f, 1000f, arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-413f, 506f, var_0.b))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b, -1172f, var_0.b)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(-181f * -466f))), vec3<f32>(arg_1, _wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(538f, -1697f)))))), !(!var_0.c.x));
    var var_2 = Struct_5(var_0.a, -169f, select(!select(!vec4<bool>(var_0.c.x, var_0.c.x, var_1.c, false), var_0.c, vec4<bool>(false, true, true, true)), vec4<bool>((var_0.a.a <= u_input.a.x) || select(false, true, false), false, true, false), !(!select(var_0.c, vec4<bool>(var_0.c.x, false, global2.x, false), var_0.c))));
    return vec3<bool>(false, var_2.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, -237f) - _wgslsmith_f_op_f32(round(var_0.b))), var_1.a.x)) < 1544f);
}

fn func_1(arg_0: vec2<bool>) -> vec2<u32> {
    let var_0 = any(!func_2(~_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(-49608i, -1i, 0i, 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f))));
    global2 = !vec3<bool>(!all(vec4<bool>(arg_0.x, var_0, var_0, true)), false, !(u_input.b.x > u_input.b.x) & true);
    let var_1 = u_input.a;
    global2 = vec3<bool>(any(vec3<bool>(any(func_2(var_1, -154f)), false, false)), arg_0.x, true);
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~countOneBits(max(vec2<u32>(1u, u_input.b.x), vec2<u32>(42477u, 4294967295u))), ~u_input.b ^ global0.c.yy), ~1u);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(sign(850f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1159f, -971f, -1000f), vec3<f32>(2298f, 1000f, 602f), true)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1536f, 1994f, 237f))))));
    global2 = !vec3<bool>(var_0.x >= _wgslsmith_f_op_f32(-734f + -676f), (all(vec3<bool>(global2.x, global2.x, true)) && true) && !any(vec3<bool>(false, global2.x, false)), global2.x);
    global2 = vec3<bool>(select(global2.x, false, true) || !(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, global0.b), u_input.a.xyy) != (i32(-1i) * -1i)), true, false);
    var var_1 = vec2<i32>(-_wgslsmith_clamp_i32(max(40488i, u_input.a.x ^ u_input.a.x), ~u_input.a.x, ~1i), reverseBits(~global0.b));
    let var_2 = 1358f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.a.wzy) >> (~(~global0.c) % vec3<u32>(32u))), max(global0.c.zx, _wgslsmith_mult_vec2_u32(vec2<u32>(36544u, 1u), func_1(vec2<bool>(global2.x, global2.x))) >> (_wgslsmith_mult_vec2_u32(max(global0.c.zz, u_input.b), firstLeadingBit(global0.c.xz)) % vec2<u32>(32u))), 37935u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(268f + -578f))))));
}

