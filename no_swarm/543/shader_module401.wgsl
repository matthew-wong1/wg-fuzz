struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_1, 32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: u32) -> vec2<u32> {
    return ~(~(~(~_wgslsmith_add_vec2_u32(global2.zx, vec2<u32>(arg_1.a.x, arg_3)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = Struct_3(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-394f)) + 525f)), Struct_3(abs(select(vec2<u32>(88686u, global2.x), global1.a, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1437f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1112f, -892f)))))), global2.x));
    let var_1 = 51730u;
    var var_2 = !vec4<bool>(!(arg_0.x && true) == ((u_input.a | 0i) <= -arg_1.x), var_0.a.x >= ~0u, false | arg_0.x, arg_0.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(556f))), _wgslsmith_f_op_f32(906f * _wgslsmith_f_op_f32(ceil(2249f)))) + vec2<f32>(362f, _wgslsmith_f_op_f32(select(1f, 454f, var_2.x))))));
    global2 = select(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.a.x, global2.x, var_0.a.x), vec3<u32>(global1.a.x, var_1, 0u)), max(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 46463u, 4294967295u), vec3<u32>(44044u, 48815u, 17347u)), vec3<u32>(global2.x, 4294967295u, 1u) << (vec3<u32>(var_1, 1892u, 0u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4541u, global2.x, var_1), vec3<u32>(1u, 0u, 1u)), ~vec3<u32>(4294967295u, global2.x, 4294967295u))), countOneBits(vec3<u32>(4294967295u, var_0.a.x, ~global1.a.x)), arg_0.x);
    return vec2<bool>(any(select(vec3<bool>(any(vec3<bool>(var_2.x, true, var_2.x)), true, true), !arg_0, !select(false, arg_0.x, arg_0.x))), true);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> vec3<i32> {
    global0 = _wgslsmith_div_u32(select(global2.x, ~global1.a.x, any(select(func_2(vec3<bool>(false, false, true), vec4<i32>(50790i, u_input.b.x, u_input.b.x, u_input.b.x)), vec2<bool>(false, false), all(vec4<bool>(true, false, false, false))))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~arg_2.a, ~global2.yx), ~2668u));
    global1 = Struct_3(firstLeadingBit(vec2<u32>(172392u, global2.x)));
    global1 = arg_2;
    var var_0 = arg_1;
    var var_1 = Struct_3(arg_0.a << (~(select(global1.a, vec2<u32>(arg_2.a.x, global2.x), true) & _wgslsmith_div_vec2_u32(arg_0.a, global1.a)) % vec2<u32>(32u)));
    return vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, (-1i ^ u_input.b.x) ^ (0i >> (var_1.a.x % 32u))), firstTrailingBit(-3358i)), u_input.a, -u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(abs(func_1(Struct_3(vec2<u32>(1u, global2.x)), Struct_2(vec4<f32>(-1478f, 1016f, 1119f, -925f), -1674f), Struct_3(vec2<u32>(0u, 0u)), Struct_1(514f))) & -_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.a, 16079i), vec3<i32>(u_input.a, u_input.b.x, -2147483647i))) & vec3<i32>(~countOneBits(_wgslsmith_sub_i32(u_input.b.x, u_input.a)), u_input.b.x, ~(1253i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(20070u, global1.a.x), vec2<u32>(global2.x, 1u)) % 32u)));
    var var_1 = Struct_2(vec4<f32>(-599f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-802f + 708f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -303f) - _wgslsmith_f_op_f32(-1115f * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1125f, 800f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-110f - 897f)))), -2358f);
    let var_2 = max(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(global1.a.x, 49299u) & global1.a, global2.xz), _wgslsmith_sub_vec2_u32(~min(global1.a, global2.yy), global1.a)), global1.a.x);
    var var_3 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.a, _wgslsmith_div_i32(2147483647i, var_0.x)) << (_wgslsmith_mod_vec2_u32(global1.a, global1.a) % vec2<u32>(32u)), countOneBits(var_0.xx)), -2147483647i, countOneBits(firstLeadingBit(~u_input.b.x)), _wgslsmith_dot_vec2_i32(u_input.b, var_0.xx << (_wgslsmith_div_vec2_u32(~global1.a, ~global2.yz) % vec2<u32>(32u))));
    let var_4 = true;
    let var_5 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -925f));
    var var_6 = firstLeadingBit(~global2.xy);
    let var_7 = Struct_3(vec2<u32>(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(10246u, var_6.x, 46019u), vec3<u32>(global1.a.x, global1.a.x, global2.x))), ~_wgslsmith_div_u32(37047u, global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_7.a.x << (0u % 32u), _wgslsmith_mult_u32(var_7.a.x, global1.a.x), _wgslsmith_div_u32(global2.x, 686u)), firstLeadingBit(vec3<u32>(35084u, ~22343u, 1u))));
}

