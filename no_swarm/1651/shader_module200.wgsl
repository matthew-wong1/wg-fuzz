struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<Struct_3, 31>;

var<private> global1: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_add_i32(arg_1.a >> (arg_0.d.b % 32u), arg_0.d.a), arg_1.b >> ((~arg_0.d.b & (_wgslsmith_sub_u32(arg_1.b, arg_0.c) << (arg_1.b % 32u))) % 32u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c.x))), _wgslsmith_f_op_f32(-arg_0.b.c.x), _wgslsmith_div_f32(1093f, 249f)));
    global0 = array<Struct_3, 31>();
    global0 = array<Struct_3, 31>();
    global1 = var_0.b;
    var var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(arg_1.b, ~(~var_0.b))), 31u)];
    return 20823u;
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_1(68533i, select(arg_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0.c.b, ~arg_0.d.a), ~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.d.d.b, arg_0.d.a), vec2<u32>(0u, arg_0.b))), true & all(vec3<bool>(false, false, false))), _wgslsmith_f_op_vec4_f32(-arg_0.c.c));
    global0 = array<Struct_3, 31>();
    var var_1 = max(select(_wgslsmith_add_vec3_u32(select(vec3<u32>(arg_0.d.b.b, 9076u, arg_0.d.c), vec3<u32>(15940u, arg_0.a.b, arg_0.d.d.b), true), ~vec3<u32>(var_0.b, var_0.b, 31187u)) | vec3<u32>(~arg_0.c.b, 1u, ~0u), vec3<u32>(abs(53958u), arg_0.a.b, _wgslsmith_mult_u32(var_0.b & 62428u, ~var_0.b)), vec3<bool>(true, true, true)), select(~firstTrailingBit(~vec3<u32>(4294967295u, arg_0.a.b, 0u)), vec3<u32>(~var_0.b >> (91404u % 32u), var_0.b, _wgslsmith_mod_u32(~1u, 32308u | var_0.b)), true && !all(vec4<bool>(false, true, false, false))));
    var var_2 = select(-u_input.a.x & -2147483647i, arg_0.d.b.a, any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), false))) == 22671i;
    var_2 = true & any(vec4<bool>(true, true, true, true));
    return 39971u;
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = ~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(13976u, 58086u >> (1u % 32u), 0u, 0u << (0u % 32u))), ~vec4<u32>(38432u, max(13752u, 60992u), ~1u, 1u), vec4<u32>(~max(4294967295u, 1u), select(~31596u, firstLeadingBit(52850u), any(vec3<bool>(true, true, true))), ~1u & func_2(Struct_2(2279u, Struct_1(u_input.a.x, 1u, vec4<f32>(789f, 782f, arg_0.x, 474f)), 0u, Struct_1(u_input.a.x, 1u, vec4<f32>(669f, arg_0.x, arg_0.x, arg_0.x))), Struct_1(-1i, 8234u, vec4<f32>(arg_0.x, arg_0.x, 1493f, -698f))), 1u));
    let var_1 = arg_0;
    var var_2 = ~countOneBits(vec4<u32>(45692u, ~_wgslsmith_sub_u32(4294967295u, var_0.x), _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.x, var_0.x, 48891u), 17728u), 1u ^ var_0.x));
    let var_3 = true;
    let var_4 = Struct_2(~(~_wgslsmith_add_u32(func_3(global0[_wgslsmith_index_u32(var_0.x, 31u)]), ~32573u)), Struct_1(u_input.a.x, 1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1 - vec4<f32>(arg_0.x, var_1.x, 215f, arg_0.x)) + vec4<f32>(arg_0.x, -1140f, arg_0.x, var_1.x)), vec4<f32>(1315f, var_1.x, arg_0.x, _wgslsmith_f_op_f32(abs(-743f))))), 10708u, Struct_1(i32(-1i) * -19853i, func_2(Struct_2(_wgslsmith_mult_u32(1u, var_2.x), Struct_1(443i, 48798u, var_1), var_2.x, Struct_1(u_input.a.x, 42178u, vec4<f32>(229f, -1000f, -287f, -248f))), Struct_1(select(13549i, 20091i, false), max(var_0.x, 4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -673f, arg_0.x, -147f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(721f, 123f, var_1.x, 287f), _wgslsmith_f_op_vec4_f32(-arg_0)))));
    return Struct_2(var_4.c, Struct_1(1i, _wgslsmith_sub_u32(~countOneBits(var_2.x), select(~1u, ~var_4.d.b, true)), arg_0), ~func_2(Struct_2(var_0.x, Struct_1(6587i, var_2.x, vec4<f32>(-504f, var_1.x, var_4.d.c.x, var_1.x)), ~var_0.x, Struct_1(u_input.a.x, var_4.a, var_1)), var_4.d), Struct_1(var_4.d.a, _wgslsmith_mod_u32(countOneBits(var_0.x) ^ (4294967295u << (var_4.b.b % 32u)), _wgslsmith_sub_u32(4294967295u, var_4.d.b) >> (~4294967295u % 32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3299f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.x, 1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0.x)))), _wgslsmith_div_f32(1901f, _wgslsmith_f_op_f32(-var_4.d.c.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.b.a & 20393i, arg_0.d.a), countOneBits(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.zw, vec2<i32>(1i, arg_0.d.a), vec2<i32>(-27391i, arg_3)), ~u_input.a.yz))) << ((select(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(arg_0.d.b, 25356u)), vec2<u32>(86481u, arg_1)), select(vec2<u32>(arg_1, 42382u), vec2<u32>(0u, arg_0.b.b), false) | _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_1, arg_0.a)), arg_2.x) << (~vec2<u32>(~arg_1, arg_1) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_1 = func_2(Struct_2(1u, arg_0.d, _wgslsmith_sub_u32(~abs(27064u), 1u), arg_0.b), func_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(761f, arg_0.d.c.x, -428f, arg_0.b.c.x)), arg_0.d.c)))).d);
    var_1 = ~4294967295u;
    var_1 = ~1u << (arg_0.a % 32u);
    var_1 = abs(_wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(~33932u), arg_0.d.b), ~(~vec2<u32>(arg_0.c, 4294967295u))));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.ww, u_input.a.yx) ^ u_input.a.wx, abs(var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a.x, func_4(func_1(vec4<f32>(833f, 1388f, 550f, -1143f)), reverseBits(0u), vec2<bool>(true, true), 2147483647i), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1088f, 887f, -1618f, -200f))).d.a), _wgslsmith_mult_vec3_i32(u_input.a.wwy, (u_input.a.yxw | u_input.a.xwy) & -vec3<i32>(-12887i, u_input.a.x, u_input.a.x))), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-u_input.a.x, u_input.a.x), firstTrailingBit(u_input.a.x), -1i)));
    let var_1 = ~(~abs(33019u));
    let var_2 = true;
    var var_3 = vec4<i32>(reverseBits(~(firstTrailingBit(0i) ^ abs(u_input.a.x))), u_input.a.x, _wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, -1i)), abs(u_input.a.xz))), u_input.a.x, -(~_wgslsmith_sub_i32(u_input.a.x, 0i))), 2147483647i);
    global1 = ~_wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, select(var_1 ^ var_1, ~var_1, false)), func_3(global0[_wgslsmith_index_u32(1u, 31u)]));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

