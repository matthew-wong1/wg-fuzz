struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = max(firstTrailingBit(~vec4<u32>(59262u, 12305u, u_input.a, 4294967295u)), ~min(vec4<u32>(global0.x, 4294967295u, 0u, 4294967295u) | vec4<u32>(global0.x, global0.x, 0u, u_input.a), select(vec4<u32>(50898u, global0.x, global0.x, u_input.a), vec4<u32>(global0.x, u_input.a, 4294967295u, global0.x), false))) ^ ((vec4<u32>(15109u, reverseBits(1u), abs(u_input.a), global0.x) | ~vec4<u32>(75376u, u_input.a, u_input.a, 53670u)) ^ ~vec4<u32>(select(1u, global0.x, false), global0.x << (1u % 32u), ~global0.x, 43934u));
    let var_0 = arg_0.a;
    global0 = ~(~vec4<u32>(~global0.x, _wgslsmith_add_u32(_wgslsmith_add_u32(0u, 1u), global0.x << (global0.x % 32u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, global0.x), vec4<u32>(global0.x, 4294967295u, global0.x, 4294967295u)), 47830u));
    return ~global0.x;
}

fn func_2(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_sub_i32(-25502i, -1i);
    var var_1 = vec2<u32>(global0.x, _wgslsmith_mod_u32(~4294967295u, ~min(~u_input.a, 7302u)));
    var var_2 = ~vec2<u32>(23994u, firstTrailingBit(func_3(Struct_1(var_0)))) << (vec2<u32>(~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 939u, u_input.a, 0u), vec4<u32>(4294967295u, 31134u, 16375u, 4294967295u))), ~(u_input.a << (var_1.x % 32u))) % vec2<u32>(32u));
    var var_3 = Struct_1(max(select(_wgslsmith_sub_i32(firstLeadingBit(u_input.c), var_0), var_0, true), 33165i));
    var_3 = Struct_1(u_input.b.x);
    return ~0u;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = vec4<u32>(func_2(-720f, u_input.a), abs(1u), 1u, ~_wgslsmith_add_u32(abs(_wgslsmith_mod_u32(20459u, 24861u)), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 74832u, global0.x) << (vec3<u32>(global0.x, 4294967295u, u_input.a) % vec3<u32>(32u)), vec3<u32>(1u, global0.x, 20923u))));
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1113f + -756f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_div_f32(-1228f, _wgslsmith_f_op_f32(min(-875f, -319f)))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1239f)))), -817f));
    var var_1 = Struct_1(_wgslsmith_div_i32(u_input.c, u_input.c));
    var var_2 = vec2<bool>(false, true);
    var var_3 = ~5278u;
    return Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~33824i, _wgslsmith_mult_i32(u_input.c, -1i), var_1.a ^ -21817i, -1i), _wgslsmith_clamp_vec4_i32(~vec4<i32>(15316i, 0i, -1i, var_1.a), vec4<i32>(1i, -33840i, 36272i, var_1.a) | vec4<i32>(u_input.b.x, -28615i, -37669i, -41275i), select(vec4<i32>(var_1.a, var_1.a, 21982i, -1i), vec4<i32>(u_input.c, var_1.a, 53045i, var_1.a), true))), ~(~(-1i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    global0 = _wgslsmith_div_vec4_u32(reverseBits(~(~vec4<u32>(global0.x, global0.x, 25510u, global0.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(84567u, 1u, u_input.a, u_input.a), ~vec4<u32>(global0.x, u_input.a, 1u, 41325u)) % vec4<u32>(32u))), vec4<u32>(~1u, 19734u, u_input.a, ~min(1u, _wgslsmith_add_u32(global0.x, global0.x))));
    var var_0 = arg_0;
    let var_1 = 4294967295u;
    var var_2 = arg_1;
    var var_3 = u_input.b;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(step(-465f, -681f)), -593f)))));
    let var_1 = max(~u_input.b.x, _wgslsmith_add_i32(~0i, u_input.b.x));
    var var_2 = countOneBits(0u);
    var var_3 = true;
    let var_4 = u_input.b;
    let var_5 = vec3<i32>(func_4(Struct_1(2147483647i), func_1(59926u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(774f, 317f, 311f, var_0.x) + vec4<f32>(var_0.x, -341f, var_0.x, 540f))), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), Struct_1(0i)), _wgslsmith_mult_i32(max(var_4.x, var_1), ~firstTrailingBit(21170i)), var_4.x);
    var_2 = 1u;
    let var_6 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b.x, var_5.x, 1f);
}

