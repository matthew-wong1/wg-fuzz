struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
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

var<private> global0: vec4<u32> = vec4<u32>(1u, 98445u, 0u, 0u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec2<f32>) -> vec3<i32> {
    let var_0 = ~37073u;
    let var_1 = -3325f;
    global0 = ~vec4<u32>(46306u, ~select(~12310u, var_0, false), global0.x, global0.x);
    let var_2 = Struct_3(~_wgslsmith_mod_u32(~(~var_0), var_0));
    global0 = ~vec4<u32>(1u, global0.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_2.a, 0u, 0u)), vec3<u32>(u_input.a, 0u, var_2.a)), ~1u) << (~vec4<u32>(_wgslsmith_mod_u32(var_0, 25695u) >> ((var_0 | global0.x) % 32u), countOneBits(var_0), _wgslsmith_sub_u32(46614u, ~var_2.a), (u_input.a << (3480u % 32u)) ^ ~1u) % vec4<u32>(32u));
    return firstTrailingBit(~vec3<i32>(u_input.c, -6296i, 23341i) | _wgslsmith_mult_vec3_i32(-(vec3<i32>(u_input.c, 19050i, -2147483647i) << (global0.www % vec3<u32>(32u))), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, 49861i)))));
}

fn func_2() -> u32 {
    global0 = ~vec4<u32>(1u, ~1u, _wgslsmith_mult_u32(32131u, ~global0.x) ^ (global0.x >> (21721u % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 24702u), vec4<u32>(1u, global0.x, u_input.a, global0.x)), ~vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 1u, global0.x), vec4<u32>(13042u, 0u, u_input.a, global0.x), vec4<u32>(1u, 0u, 4184u, 4294967295u)))));
    global0 = abs(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(91588u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(global0.x, u_input.a, 109704u, global0.x), min(vec4<u32>(63063u, 4294967295u, 17171u, global0.x), vec4<u32>(u_input.a, 46442u, 4294967295u, u_input.a))) >> (vec4<u32>(0u, 90973u, ~4294967295u, 81920u) % vec4<u32>(32u))));
    var var_0 = u_input.b;
    global0 = firstTrailingBit(select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, ~u_input.a, u_input.a, u_input.a), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(11893u, 1u, global0.x, u_input.a), vec4<u32>(global0.x, 0u, u_input.a, 1u)), ~94364u, 1u, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, u_input.a, global0.x, u_input.a), select(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, global0.x, u_input.a, 1u), vec4<bool>(true, false, true, true))) & (~vec4<u32>(u_input.a, 35107u, 26543u, global0.x) >> (vec4<u32>(u_input.a, 0u, 1u, 4294967295u) % vec4<u32>(32u))), true));
    var_0 = u_input.b;
    return _wgslsmith_sub_u32(global0.x, 1u);
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> vec2<f32> {
    let var_0 = select(vec4<bool>(!(27361u < u_input.a), false, true, false), !select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), any(vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, select(u_input.c != 18908i, !any(vec4<bool>(false, true, false, true)), false && any(vec3<bool>(false, false, true))), false));
    let var_1 = false;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(global0.x, 1u, global0.x, ~global0.x);
    var var_0 = vec2<f32>(1814f, 2284f);
    let var_1 = min(-select(select(abs(vec3<i32>(-62277i, 0i, u_input.c)), -vec3<i32>(56099i, u_input.c, u_input.c), all(vec3<bool>(false, false, true))), func_1(vec2<f32>(var_0.x, var_0.x)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), false))), -vec3<i32>(select(u_input.b, min(-1i, 0i), u_input.a == u_input.a), -1i, u_input.b));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(750f, -1114f, var_0.x))))));
    var var_3 = Struct_4(1171f, vec2<f32>(519f, -2571f), (vec3<u32>(5947u, 1u, u_input.a) << (_wgslsmith_mult_vec3_u32(abs(vec3<u32>(global0.x, global0.x, 0u)), vec3<u32>(u_input.a, global0.x, 0u)) % vec3<u32>(32u))) >> (vec3<u32>(firstTrailingBit(~4294967295u), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, global0.x, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 26076u, 36230u) % vec4<u32>(32u)), vec4<u32>(4294967295u, global0.x, u_input.a, 4294967295u) | vec4<u32>(1u, u_input.a, global0.x, 65787u))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(23101u, firstLeadingBit(min(1u, u_input.a))), abs(u_input.a), ~1u), vec2<u32>((func_2() & ~u_input.a) | 79180u, ~1u));
    var_0 = var_2.yy;
    var_0 = _wgslsmith_f_op_vec2_f32(min(var_2.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(-195f, vec2<f32>(-1557f, 1033f), vec3<u32>(1u, 44646u, u_input.a), global0.xxy, vec2<u32>(4294967295u, global0.x)), var_1.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.x, var_3.a) * var_2.xx)) - _wgslsmith_f_op_vec2_f32(-var_2.xz)))));
    let var_4 = reverseBits(~(_wgslsmith_add_vec3_i32(-var_1, vec3<i32>(0i, var_1.x, u_input.c)) << (var_3.d % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1528f - var_2.x))));
}

