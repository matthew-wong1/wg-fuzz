struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 39303u), vec2<u32>(72568u, 90920u), vec2<u32>(83024u, 39435u), vec2<u32>(0u, 0u), vec2<u32>(0u, 113358u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u));

var<private> global1: u32 = 57799u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec4<u32> {
    let var_0 = 1f;
    return vec4<u32>(reverseBits(~(~arg_1 << (_wgslsmith_clamp_u32(arg_1, 39693u, u_input.a.x) % 32u))), u_input.a.x, ~74581u, select(countOneBits(abs(arg_1)), u_input.c, !(!select(arg_0, arg_0, arg_0))));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> i32 {
    let var_0 = ~u_input.a.x << (1u % 32u);
    global0 = array<vec2<u32>, 10>();
    let var_1 = ~_wgslsmith_sub_vec4_u32(func_3(arg_0.x, ~var_0), min(firstLeadingBit(min(vec4<u32>(var_0, var_0, 17892u, 7984u), vec4<u32>(u_input.a.x, 1u, var_0, var_0))), firstTrailingBit(vec4<u32>(var_0, u_input.c, u_input.a.x, 1u) & vec4<u32>(8349u, u_input.a.x, u_input.c, var_0))));
    global0 = array<vec2<u32>, 10>();
    var var_2 = vec2<u32>(0u, _wgslsmith_mult_u32(var_0, var_0));
    return -5179i;
}

fn func_1(arg_0: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_mod_i32(select(_wgslsmith_mult_i32(arg_0, u_input.b.x), i32(-1i) * -(~(-1i)), select(any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false)), -20022i < min(u_input.b.x, 2147483647i), _wgslsmith_f_op_f32(-794f + -169f) >= _wgslsmith_f_op_f32(trunc(-208f)))), u_input.b.x);
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-35717i, func_2(vec2<bool>(false, true), arg_0), countOneBits(arg_0), _wgslsmith_mod_i32(61162i, _wgslsmith_sub_i32(arg_0, var_0))), u_input.b >> (vec4<u32>(0u, ~u_input.c, 4294967295u, 50849u) % vec4<u32>(32u))) >> (u_input.c % 32u);
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, _wgslsmith_mod_u32(u_input.c, 0u)), ~vec2<u32>(u_input.a.x, u_input.a.x)) >= firstTrailingBit(~(~firstTrailingBit(14476u)));
    global0 = array<vec2<u32>, 10>();
    global0 = array<vec2<u32>, 10>();
    return vec2<bool>(func_2(!(!vec2<bool>(false, var_2)), -(i32(-1i) * -2147483647i)) < 86038i, any(vec3<bool>(var_2, var_2, !(var_2 && var_2))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: vec4<i32>) -> StorageBuffer {
    var var_0 = arg_1;
    let var_1 = u_input.b.yzx;
    return StorageBuffer(arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 10>();
    let x = u_input.a;
    s_output = func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, ~(~(-1i)), abs(u_input.b.x)), _wgslsmith_mult_vec3_i32(u_input.b.zwz, u_input.b.zwx)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -487f))) - 1000f), u_input.b.x, !func_1(1i), vec3<i32>(u_input.b.x, 0i, u_input.b.x), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 0i, 9755i, -10556i), -u_input.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1760f))), _wgslsmith_sub_vec4_i32(-(vec4<i32>(43329i, -2147483647i, u_input.b.x, u_input.b.x) << (vec4<u32>(1u, 0u, u_input.c, 0u) % vec4<u32>(32u))), u_input.b) << (abs(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(33590u, 4294967295u, u_input.c, u_input.a.x), vec4<u32>(0u, 24580u, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.c, 16095u, u_input.a.x, 4294967295u))) % vec4<u32>(32u)));
}

