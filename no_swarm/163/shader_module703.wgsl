struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<i32>,
    d: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: Struct_3,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: i32 = -2853i;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = u_input.c.zxy;
    let var_1 = 1u;
    let var_2 = -163f;
    global1 = i32(-1i) * -arg_0.e.c.x;
    var var_3 = true;
    return -11746i << (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~arg_0.a.xxz, ~arg_0.a.wyw), _wgslsmith_mod_u32(var_1 << (arg_0.e.a.x % 32u), ~0u)), ~4294967295u, ~(~6659u & var_0.x)) % 32u);
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(u_input.a, vec2<bool>(global0[_wgslsmith_index_u32(38818u, 4u)], true && select(u_input.d.x <= -45819i, true, any(vec2<bool>(global0[_wgslsmith_index_u32(11635u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)])))), u_input.d.zz);
    let var_1 = _wgslsmith_div_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, func_3(Struct_2(vec4<u32>(u_input.a.x, 100642u, 4294967295u, u_input.a.x), 899f, vec3<i32>(u_input.d.x, var_0.c.x, var_0.c.x), vec3<bool>(false, false, true), Struct_1(u_input.c.xz, vec2<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 4u)], var_0.b.x), vec2<i32>(u_input.d.x, 24447i)))), _wgslsmith_mod_i32(var_0.c.x, 2147483647i), var_0.c.x), min(vec4<i32>(u_input.d.x, -2147483647i, var_0.c.x, var_0.c.x), -vec4<i32>(-11025i, 2147483647i, var_0.c.x, -2147483647i)))), u_input.d.x);
    var_0 = Struct_1(~vec2<u32>(4294967295u, 56221u), !vec2<bool>(all(select(vec3<bool>(var_0.b.x, global0[_wgslsmith_index_u32(var_0.a.x, 4u)], var_0.b.x), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], true, global0[_wgslsmith_index_u32(4294967295u, 4u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], false, true))), false), _wgslsmith_add_vec2_i32(-(~vec2<i32>(var_1, var_0.c.x) >> (_wgslsmith_div_vec2_u32(var_0.a, vec2<u32>(14742u, 4294967295u)) % vec2<u32>(32u))), ~u_input.d.yy));
    var var_2 = _wgslsmith_mod_i32(var_1, 12392i);
    let var_3 = ~(var_0.a.x ^ ~abs(u_input.a.x));
    return _wgslsmith_sub_vec3_i32(firstLeadingBit(~(~vec3<i32>(var_0.c.x, u_input.d.x, var_0.c.x))) << ((~u_input.c.xyz ^ vec3<u32>(47391u, max(u_input.b.x, 39560u), var_3 << (4294967295u % 32u))) % vec3<u32>(32u)), u_input.d);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: Struct_3) -> f32 {
    let var_0 = arg_2.b.b;
    let var_1 = Struct_1(_wgslsmith_sub_vec2_u32(countOneBits(~u_input.b), select(_wgslsmith_div_vec2_u32(~u_input.a, u_input.a), ~(~u_input.a), !select(arg_2.b.d.xx, vec2<bool>(true, arg_0.x), vec2<bool>(false, arg_0.x)))), !arg_2.b.e.b, firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(select(arg_1.x, 0i, arg_0.x), _wgslsmith_mult_i32(arg_1.x, u_input.d.x)), -vec2<i32>(arg_2.c.x, arg_2.c.x))));
    global1 = 1i;
    global0 = array<bool, 4>();
    var var_2 = Struct_2(u_input.c, arg_2.b.b, func_2(), select(!arg_2.b.d, vec3<bool>(false, !(!arg_2.b.e.b.x), !any(vec3<bool>(global0[_wgslsmith_index_u32(58934u, 4u)], var_1.b.x, true))), true), Struct_1(var_1.a, arg_2.b.e.b, ~vec2<i32>(~2147483647i, var_1.c.x | -43639i)));
    return 2343f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 73090i;
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(819f, -171f)) * -1112f), _wgslsmith_f_op_f32(-1290f - _wgslsmith_f_op_f32(trunc(-895f))))), _wgslsmith_f_op_f32(944f + -805f), _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(520f)), _wgslsmith_f_op_f32(func_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], false, global0[_wgslsmith_index_u32(0u, 4u)]), vec4<i32>(-80700i, -2147483647i, u_input.d.x, 15547i), Struct_3(u_input.b.x, Struct_2(u_input.c, -107f, u_input.d, vec3<bool>(false, true, global0[_wgslsmith_index_u32(20659u, 4u)]), Struct_1(u_input.c.ww, vec2<bool>(global0[_wgslsmith_index_u32(20478u, 4u)], true), u_input.d.xy)), vec3<i32>(2147483647i, 1i, 1i), u_input.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-565f - -1242f))));
    var var_1 = ~min(4441i, u_input.d.x);
    var var_2 = Struct_1(_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(1u, 81395u)), firstLeadingBit(vec2<u32>(~u_input.a.x, min(4294967295u, u_input.a.x)))), !vec2<bool>(!all(vec2<bool>(global0[_wgslsmith_index_u32(38830u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)])), all(select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(65281u, 4u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], true, false), vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 4u)])))), select(_wgslsmith_add_vec2_i32(~u_input.d.xz, vec2<i32>(-1i) * -vec2<i32>(77247i, u_input.d.x)), u_input.d.yy & max(vec2<i32>(u_input.d.x, -21128i), abs(u_input.d.zz)), false));
    var var_3 = Struct_2(abs(max(u_input.c, u_input.c)), 290f, vec3<i32>(-(0i ^ ~u_input.d.x), var_2.c.x, 2147483647i), vec3<bool>(true, false, all(select(!vec3<bool>(true, var_2.b.x, false), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], var_2.b.x), global0[_wgslsmith_index_u32(u_input.b.x ^ 69454u, 4u)]))), Struct_1(select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.a.x, 0u), var_2.a), ~vec2<u32>(1u, 2904u), select(var_2.b, vec2<bool>(true, true), vec2<bool>(true, false))) ^ countOneBits(var_2.a), select(select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(var_2.a.x, 4u)]), var_2.b, var_2.b), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], var_2.b.x), var_2.b), var_2.b, all(vec4<bool>(global0[_wgslsmith_index_u32(49379u, 4u)], true, var_2.b.x, true))), ~vec2<i32>(var_2.c.x, 1i)));
    let var_4 = Struct_3(90682u, Struct_2(_wgslsmith_clamp_vec4_u32(min(u_input.c, ~vec4<u32>(4294967295u, var_3.e.a.x, 1u, var_3.e.a.x)), ~(vec4<u32>(u_input.c.x, u_input.c.x, 1u, var_3.e.a.x) & vec4<u32>(u_input.c.x, var_2.a.x, 0u, 19686u)), ~var_3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2378f + _wgslsmith_div_f32(-750f, var_3.b)) + var_3.b), vec3<i32>(max(var_3.e.c.x & u_input.d.x, var_3.c.x >> (var_3.a.x % 32u)), reverseBits(abs(var_2.c.x)), -37554i), select(!(!vec3<bool>(var_2.b.x, var_3.e.b.x, global0[_wgslsmith_index_u32(1u, 4u)])), vec3<bool>(!var_3.d.x, true, true), !vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x)), Struct_1(var_2.a, vec2<bool>(var_3.e.c.x > var_3.c.x, false & var_3.e.b.x), vec2<i32>(u_input.d.x, 2147483647i))), abs(u_input.d << (~(~vec3<u32>(var_2.a.x, u_input.c.x, var_2.a.x)) % vec3<u32>(32u))), 2147483647i);
    global0 = array<bool, 4>();
    var var_5 = var_4.b.e;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.e.a, 2000f);
}

