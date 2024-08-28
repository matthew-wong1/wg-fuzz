struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<Struct_1, 32>;

var<private> global2: u32 = 1u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.a, ~_wgslsmith_mod_u32(abs(u_input.c.x), 29836u)), 14u)];
    var var_1 = Struct_1(u_input.c.yz, any(!vec2<bool>(true, any(vec3<bool>(var_0.b, var_0.b, var_0.b)))), 0u, _wgslsmith_mod_vec2_i32(select(~vec2<i32>(var_0.d.x, u_input.d), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, var_0.d.x), var_0.d), true), vec2<i32>(-33862i, u_input.d) | vec2<i32>(u_input.d, -34343i)) ^ reverseBits(abs(vec2<i32>(-2147483647i, 2421i))));
    var var_2 = _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(min(u_input.c, u_input.c), u_input.c), ~0u, countOneBits(var_1.c), ~_wgslsmith_add_u32(6441u, 78183u)), _wgslsmith_clamp_vec4_u32(abs(min(~vec4<u32>(var_1.c, var_0.a.x, var_0.c, var_0.c), _wgslsmith_mod_vec4_u32(vec4<u32>(2075u, u_input.a, u_input.c.x, var_0.c), vec4<u32>(6724u, 87242u, u_input.a, 11890u)))), select(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, var_1.a.x, 0u, var_1.c), vec4<u32>(1u, 19035u, u_input.a, var_1.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.c, var_1.a.x, var_0.c) << (vec4<u32>(var_1.a.x, var_0.c, var_0.a.x, var_1.a.x) % vec4<u32>(32u)), ~vec4<u32>(var_1.c, var_0.a.x, 90974u, var_0.c)), vec4<bool>(var_0.b, true, var_0.b, var_0.b)), vec4<u32>(countOneBits(var_1.c), var_0.a.x, var_1.c, ~u_input.a)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-1373f)), -1654f, _wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(1758f + -749f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1725f, -235f, -2030f, -379f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2566f, 296f, 1176f, 993f))), true))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-382f, -702f, 118f, -486f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-626f, 225f, -733f, 585f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(374f, -1000f, 678f, -944f) - vec4<f32>(1056f, 1554f, 364f, -883f))))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(853f, 1823f, -950f, -702f) * vec4<f32>(-1329f, -252f, -2521f, 375f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-332f, -385f, -383f, 1444f) * vec4<f32>(146f, 1095f, -574f, 1430f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -351f), _wgslsmith_f_op_f32(462f + _wgslsmith_f_op_f32(f32(-1f) * -920f)), -704f, -327f))));
    var var_4 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, 68678u), 29847u), 32u)];
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(-var_3.x), true));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> StorageBuffer {
    global0 = array<Struct_1, 14>();
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(f32(-1f) * -1615f)) - 398f), _wgslsmith_f_op_f32(func_3()), -2558f, _wgslsmith_f_op_f32(-800f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1499f - 262f), _wgslsmith_f_op_f32(floor(1000f)))))), vec4<i32>(~reverseBits(-arg_0.x), _wgslsmith_dot_vec3_i32(-abs(arg_0.xzx), arg_0.wyz), firstTrailingBit(min(reverseBits(37705i), -2147483647i ^ arg_0.x)), 8167i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-486f - _wgslsmith_f_op_f32(-1f))), u_input.c.xz, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1402f, -1574f) + vec3<f32>(-828f, 986f, 383f)), vec3<f32>(1054f, -164f, 824f))))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: vec3<bool>) -> StorageBuffer {
    let var_0 = !arg_1;
    let var_1 = Struct_1(~u_input.c.xz, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -863f))), 1089f)) < -1000f, ~u_input.a, countOneBits((select(vec2<i32>(0i, arg_0), vec2<i32>(u_input.d, arg_0), arg_3.yx) ^ -vec2<i32>(8278i, u_input.d)) | vec2<i32>(~(-1i), arg_0)));
    let var_2 = _wgslsmith_add_vec4_u32(~abs(~(~vec4<u32>(var_1.c, 1u, 4294967295u, 29934u))), min(_wgslsmith_add_vec4_u32(~vec4<u32>(9764u, 76748u, 4294967295u, var_1.a.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, var_1.c, 1u, var_1.a.x), vec4<u32>(var_1.a.x, var_1.a.x, 4294967295u, var_1.c), vec4<u32>(var_1.c, 33371u, var_1.a.x, 22131u)) % vec4<u32>(32u)), ~countOneBits(vec4<u32>(u_input.c.x, u_input.a, 22307u, var_1.c))), vec4<u32>(_wgslsmith_sub_u32(4294967295u >> (var_1.c % 32u), 0u), ~var_1.c, ~(~101746u), ~4294967295u)));
    global0 = array<Struct_1, 14>();
    global1 = array<Struct_1, 32>();
    return func_2(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(1i, 20207i, u_input.d, 37442i)) | (vec4<i32>(0i, var_1.d.x, 28762i, -47558i) & vec4<i32>(-2147483647i, u_input.d, var_1.d.x, 1i)), countOneBits(vec4<i32>(arg_0, u_input.d, abs(var_1.d.x), var_1.d.x))), _wgslsmith_dot_vec4_u32(var_2, vec4<u32>(4294967295u, var_1.a.x, ~var_2.x, var_2.x) | ~(~vec4<u32>(var_2.x, u_input.c.x, u_input.b, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 6122i, u_input.d) << (abs(u_input.c) % vec3<u32>(32u)), -vec3<i32>(-u_input.d, ~u_input.d, u_input.d)), ~(~(~u_input.a)) < u_input.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) + _wgslsmith_f_op_f32(min(-600f, _wgslsmith_f_op_f32(f32(-1f) * -815f)))))), vec3<bool>(true, !any(vec3<bool>(false, true, true)), true));
}

