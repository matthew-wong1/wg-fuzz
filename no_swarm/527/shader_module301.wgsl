struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, -48974i, 5130i, -5400i);

var<private> global1: vec3<i32> = vec3<i32>(-16941i, -17339i, 20983i);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>) -> u32 {
    var var_0 = firstLeadingBit(vec2<u32>(~firstTrailingBit(select(u_input.a.x, u_input.a.x, true)), min(77871u, countOneBits(0u))));
    let var_1 = arg_1.a.x;
    global0 = -(vec4<i32>(-1i) * -(countOneBits(vec4<i32>(9573i, 1i, 2147483647i, arg_2.x)) ^ max(vec4<i32>(u_input.c.x, -1i, global1.x, u_input.c.x), vec4<i32>(global1.x, global0.x, 2267i, global1.x))));
    var var_2 = arg_1;
    var_0 = u_input.a.wz;
    return max(1u, var_0.x);
}

fn func_2(arg_0: u32, arg_1: i32) -> vec3<u32> {
    var var_0 = !(~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, 46279i, arg_1), vec3<i32>(arg_1, -17874i, 1i)), min(global0.x, 2147483647i)) != _wgslsmith_clamp_i32(abs(~u_input.c.x), 47433i, -global1.x >> ((arg_0 ^ u_input.a.x) % 32u)));
    let var_1 = _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(abs(~(-1i)), ~16168i)), -u_input.c.xz);
    var var_2 = 23415u;
    let var_3 = -421f;
    var_0 = all(vec2<bool>(false, false));
    return abs(vec3<u32>(arg_0, func_3(-1i, Struct_2(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), vec3<i32>(-405i, var_1.x, -794i)), 47040u));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> bool {
    var var_0 = !select(vec3<bool>(true, true, true), !vec3<bool>(false, any(vec3<bool>(true, true, true)), false), vec3<bool>(false, ~u_input.b.x > u_input.a.x, false));
    var var_1 = all(!vec3<bool>(false, _wgslsmith_div_u32(u_input.a.x, u_input.a.x) < ~u_input.a.x, true));
    var var_2 = !var_0.x;
    let var_3 = max(u_input.a.x, abs(_wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) ^ vec3<u32>(60107u, u_input.b.x, 1u)), min(u_input.a.xwz, func_2(4294967295u, 1i)))));
    let var_4 = ~global1.xz ^ (~(~(global0.xw >> (u_input.b % vec2<u32>(32u)))) & -u_input.c.xz);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-144f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -318f))) + 979f));
    global1 = select(-abs(_wgslsmith_clamp_vec3_i32(-global0.xyy, u_input.c << (u_input.a.yyz % vec3<u32>(32u)), -vec3<i32>(-1i, global1.x, global0.x))), global0.zxy, any(!vec4<bool>(true, func_1(vec4<i32>(1i, 0i, u_input.c.x, global1.x), 2665f), true, any(vec2<bool>(true, false)))));
    var var_1 = any(vec3<bool>(true, all(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), true)), select(true, true, any(vec3<bool>(false, false, false)))));
    let var_2 = Struct_3(max(2815i, global1.x), Struct_1(_wgslsmith_clamp_i32(1i, ~(-1i), reverseBits(global1.x)), 12008u, 1u, !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1000f, -107f, 2147483647i != u_input.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1260f - -650f), _wgslsmith_f_op_f32(sign(-700f))))))), vec2<f32>(975f, _wgslsmith_f_op_f32(floor(1194f))), ~firstLeadingBit(vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x)) ^ u_input.a.zzz);
    global0 = select(_wgslsmith_mult_vec4_i32(select(-vec4<i32>(global1.x, u_input.c.x, 1i, -1i), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, global1.x, 1i, var_2.a), vec4<i32>(11532i, global0.x, var_2.b.a, global0.x)), vec4<i32>(1382i, u_input.c.x, -1i, global0.x), vec4<i32>(global1.x, 0i, 74663i, var_2.a)), select(vec4<bool>(var_2.b.d.x, var_2.b.d.x, var_2.b.d.x, var_2.b.d.x), var_2.b.d, any(vec3<bool>(var_2.b.d.x, var_2.b.d.x, var_2.b.d.x)))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, ~u_input.c.x, global1.x, global1.x), select(~vec4<i32>(28751i, u_input.c.x, -1628i, -19125i), -vec4<i32>(u_input.c.x, global0.x, global0.x, global0.x), var_2.b.b < u_input.b.x))), -(~select(_wgslsmith_sub_vec4_i32(vec4<i32>(-13158i, u_input.c.x, global1.x, 0i), vec4<i32>(var_2.b.a, global0.x, u_input.c.x, 0i)), -vec4<i32>(2147483647i, 11950i, 2147483647i, u_input.c.x), var_2.b.d.x)), !vec4<bool>(any(!vec3<bool>(var_2.b.d.x, var_2.b.d.x, false)), var_2.b.d.x, false, any(vec4<bool>(true, var_2.b.d.x, true, true))));
    global0 = vec4<i32>(~select(-1i, -(global1.x & 27509i), true), -2147483647i, ~0i, i32(-1i) * -5733i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(24176u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 26173u), vec3<u32>(var_2.e.x, u_input.a.x, u_input.a.x)), ~u_input.b.x, var_2.e.x), vec4<u32>(var_2.e.x, var_2.e.x, u_input.a.x, 37150u) ^ u_input.a), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 52813u, var_2.e.x, u_input.a.x), ~vec4<u32>(5996u, 4294967295u, 36665u, var_2.e.x), u_input.a), vec4<u32>(4294967295u, var_2.b.b, u_input.a.x, 1u))));
}

