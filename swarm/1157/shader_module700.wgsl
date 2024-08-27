struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-1i, -36428i, 1i, 1i), vec4<i32>(0i, -1i, 40913i, 1i), vec4<i32>(1i, 9532i, -36988i, 66516i), vec4<i32>(1i, -1i, 1813i, 13407i), vec4<i32>(2147483647i, 2147483647i, -32325i, 39681i));

var<private> global1: array<Struct_2, 12>;

var<private> global2: vec4<f32> = vec4<f32>(1451f, 1000f, 239f, 451f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    global0 = array<vec4<i32>, 5>();
    global1 = array<Struct_2, 12>();
    var var_0 = true && all(select(vec2<bool>(true, true), vec2<bool>(u_input.e.x != u_input.e.x, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
    var_0 = abs(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 0u, 0u), u_input.c.x), u_input.c.x & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, 33640u, u_input.c.x), vec4<u32>(u_input.d, 1776u, u_input.c.x, 0u)))) <= u_input.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 802f, global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, 437f, global2.x, 1000f)))))))));
    return var_1.x;
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var var_2 = Struct_3(u_input.e.x >> (~(_wgslsmith_mult_u32(1u, var_0) ^ 0u) % 32u), Struct_1(~(var_0 & _wgslsmith_mult_u32(var_0, u_input.c.x)), vec3<u32>(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 4294967295u, min(~4294967295u, u_input.c.x)), ~1i), ~(vec2<u32>(u_input.d, 4294967295u) | abs(u_input.c << (u_input.c % vec2<u32>(32u)))), u_input.b);
    let var_3 = var_2.b;
    var var_4 = _wgslsmith_div_vec2_f32(global2.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.yy)) * global2.wy)));
    return var_2.d.x;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec2<f32>, arg_3: vec2<u32>) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_3.x, arg_3.x), 12u)];
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.e.yw, ~vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.e, global0[_wgslsmith_index_u32(u_input.d, 5u)]), ~vec4<i32>(u_input.e.x, -4532i, -38671i, var_0.a.c))));
    var var_2 = Struct_3(2147483647i, var_0.a, ~vec2<u32>(u_input.a, arg_1), vec3<u32>(u_input.b.x, 7928u, 1u));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), 1432f, -212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(964f)))))));
    let var_3 = _wgslsmith_add_i32(var_2.b.c, var_2.a);
    return false;
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = vec3<bool>(any(vec2<bool>(func_4(true, func_2(vec4<bool>(true, true, arg_0, arg_0)), vec2<f32>(1097f, -1000f), countOneBits(vec2<u32>(0u, 49101u))), false)), true, true);
    var var_1 = 25165i;
    global1 = array<Struct_2, 12>();
    let var_2 = reverseBits(~u_input.e.wz);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.x, 374f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(170f, global2.x, global2.x, -1698f) + vec4<f32>(global2.x, -2352f, -1138f, 1425f)))), !(1f != _wgslsmith_f_op_f32(abs(global2.x))))));
    return abs(var_2.x);
}

fn func_5(arg_0: i32, arg_1: u32) -> Struct_1 {
    var var_0 = vec4<bool>(!func_4(true, abs(43812u), _wgslsmith_f_op_vec2_f32(-global2.xz), vec2<u32>(~arg_1, u_input.a)), false, (true || any(vec3<bool>(true, true, true))) && false, true);
    let var_1 = ~(~arg_0 << (u_input.d % 32u));
    let var_2 = vec2<bool>(all(select(!(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), false), !(!vec4<bool>(var_0.x, false, false, var_0.x)))), true);
    var_0 = !select(select(select(vec4<bool>(true, true, true, var_0.x), select(vec4<bool>(var_0.x, var_2.x, var_2.x, var_0.x), vec4<bool>(false, var_0.x, var_2.x, var_2.x), var_0.x), !vec4<bool>(false, false, var_0.x, var_0.x)), vec4<bool>(true, select(true, true, false), false, true), select(vec4<bool>(true, true, var_2.x, var_2.x), vec4<bool>(var_2.x, false, false, var_0.x), !var_2.x)), !select(vec4<bool>(false, var_0.x, var_2.x, var_2.x), !vec4<bool>(false, true, true, var_2.x), !var_0.x), any(vec3<bool>(all(vec2<bool>(false, false)), select(var_2.x, true, var_2.x), var_2.x)));
    var var_3 = all(var_0.wz);
    return Struct_1(_wgslsmith_dot_vec3_u32(u_input.b, ~(min(u_input.b, vec3<u32>(1u, arg_1, 4294967295u)) ^ u_input.b)), ~u_input.b, _wgslsmith_sub_i32(-arg_0, ~_wgslsmith_mult_i32(2147483647i, firstTrailingBit(u_input.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_add_i32(-func_1(false), -u_input.e.x) | ~(func_1(true) & u_input.e.x), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~u_input.b.zz, ~_wgslsmith_mult_vec2_u32(u_input.c, u_input.c)), countOneBits(~(~1u))));
    var var_1 = Struct_3(0i, Struct_1(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, u_input.a, 1u, var_0.b.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.a, 102266u, u_input.a, 4294967295u))), ~u_input.b, abs(1i)), select(var_0.b.xz << (_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(1u, 39119u)), vec2<u32>(var_0.a, 4294967295u), ~vec2<u32>(1u, var_0.a)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(max(vec2<u32>(18526u, u_input.c.x), vec2<u32>(18819u, u_input.b.x)), firstTrailingBit(vec2<u32>(33367u, u_input.d)), ~max(vec2<u32>(u_input.b.x, var_0.b.x), var_0.b.zy)), vec2<bool>(func_4(any(vec4<bool>(true, false, false, true)), 0u, _wgslsmith_f_op_vec2_f32(global2.zy * global2.xz), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, u_input.d), u_input.c)), _wgslsmith_div_i32(-2147483647i, 2147483647i) >= var_0.c)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a, var_0.a, var_0.b.x), vec3<u32>(49189u, var_0.b.x, 4294967295u), var_0.b), ~reverseBits(vec3<u32>(19341u, 36155u, 52627u))));
    var var_2 = Struct_3(var_0.c, Struct_1(43562u, var_1.d, (var_0.c & -32247i) & max(firstTrailingBit(var_1.a), -1i)), u_input.c, _wgslsmith_add_vec3_u32(var_0.b, var_1.b.b));
    global1 = array<Struct_2, 12>();
    var var_3 = -206f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.xxw, global2.ywz, ~var_0.b);
}

