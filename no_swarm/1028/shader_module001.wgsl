struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(1408f, 364f, 756f, 287f));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: f32) -> bool {
    var var_0 = Struct_2(2147483647i, vec4<u32>(0u, u_input.a.x, _wgslsmith_dot_vec2_u32(~u_input.a.xy, select(u_input.a.yz, ~u_input.a.yz, !vec2<bool>(arg_1.x, arg_1.x))), abs(u_input.a.x)), u_input.c, u_input.c.zy, -(vec3<i32>(-1i) * -(vec3<i32>(-14290i, 0i, -18231i) ^ u_input.c)));
    global0 = firstLeadingBit(~(~(~37857u) << ((firstTrailingBit(40682u) | u_input.a.x) % 32u)));
    let var_1 = Struct_1(global1.a);
    var var_2 = _wgslsmith_f_op_f32(-arg_0);
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(var_1.a))));
    return false;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>) -> i32 {
    global0 = u_input.a.x;
    var var_0 = _wgslsmith_f_op_f32(max(global1.a.x, global1.a.x));
    var var_1 = max(~(~(~(~vec2<u32>(15436u, 1u)))), arg_0);
    var var_2 = 252f;
    var var_3 = Struct_2(u_input.b, vec4<u32>(min(~(~arg_0.x), _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1.x, var_1.x), u_input.d)), _wgslsmith_mult_u32(0u, var_1.x), ~4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(59792u, u_input.a.x, 14551u), vec3<u32>(var_1.x, 9862u, 1u))), vec3<i32>(u_input.b, u_input.b, -u_input.c.x | ~28767i) | -_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c, u_input.c), vec3<i32>(-67500i, -51477i, 0i)), ~(~(-(~vec2<i32>(1i, 0i)))), vec3<i32>(u_input.c.x, -u_input.e, reverseBits(-2147483647i)));
    return _wgslsmith_div_i32(_wgslsmith_sub_i32(max(~(-47673i), _wgslsmith_add_i32(var_3.d.x, u_input.b)) | ~min(var_3.d.x, 0i), -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_3.a, -1i, u_input.e), -19826i)), var_3.a);
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    global0 = _wgslsmith_dot_vec2_u32(~(~u_input.a.yx), u_input.a.xz & ~_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, u_input.a.x), u_input.a.xy), vec2<u32>(u_input.a.x, 0u)));
    var var_0 = Struct_2(-1i, _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(u_input.a.x, 1u)), ~1u, u_input.a.x | 4294967295u, ~0u), countOneBits(~(~vec4<u32>(u_input.a.x, 85658u, u_input.d, u_input.d)))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(1i, 29065i, u_input.b), -vec3<i32>(-33639i, arg_0.c, arg_0.c)), _wgslsmith_add_vec2_i32(-u_input.c.yx, -vec2<i32>(29123i, arg_0.c)), vec3<i32>(u_input.c.x, -u_input.e, -1i) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x << (1u % 32u), u_input.d, u_input.a.x), countOneBits(vec3<u32>(u_input.d, 48707u, u_input.d))) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(ceil(1f));
    var_0 = Struct_2(-1i, var_0.b, var_0.c, _wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(-5325i), arg_0.c), -vec2<i32>(u_input.b, -10319i), vec2<i32>(reverseBits(-66202i), _wgslsmith_mult_i32(u_input.b, -2147483647i))) ^ vec2<i32>(func_3(_wgslsmith_mult_vec2_u32(u_input.a.yx, u_input.a.yz), arg_0.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 25990i, -2147483647i, arg_0.c) ^ vec4<i32>(arg_0.c, arg_0.c, 5138i, arg_0.c), vec4<i32>(arg_0.c, arg_0.c, var_0.a, 1i) | vec4<i32>(arg_0.c, arg_0.c, arg_0.c, var_0.e.x))), _wgslsmith_sub_vec3_i32(var_0.e, vec3<i32>(-1i, ~u_input.e, firstTrailingBit(1i))) & -_wgslsmith_clamp_vec3_i32(var_0.e ^ vec3<i32>(1i, u_input.c.x, -26298i), -vec3<i32>(-4868i, -34577i, 2147483647i), -u_input.c));
    var var_2 = Struct_2(-(~max(var_0.c.x, var_0.d.x) ^ _wgslsmith_dot_vec3_i32(-u_input.c, u_input.c)), countOneBits(select(~var_0.b, _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b.x, 0u, u_input.d, 2811u), vec4<u32>(1u, var_0.b.x, u_input.d, var_0.b.x)), true) >> (min(~var_0.b, min(vec4<u32>(1u, var_0.b.x, var_0.b.x, u_input.d), var_0.b)) % vec4<u32>(32u))), var_0.c, -firstTrailingBit(~(vec2<i32>(15560i, 12484i) & u_input.c.zz)), var_0.c);
    return Struct_3(var_2.c.x <= ~(2147483647i << (var_0.b.x % 32u)), arg_0.b, abs(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_clamp_i32(-2147483647i, u_input.b, 1i), vec4<u32>(~1u, u_input.a.x, reverseBits(_wgslsmith_mod_u32(4294967295u, u_input.a.x >> (u_input.d % 32u))), u_input.d), u_input.c, firstTrailingBit(_wgslsmith_add_vec2_i32(u_input.c.yz, ~u_input.c.yz) >> (vec2<u32>(0u, min(u_input.a.x, u_input.d)) % vec2<u32>(32u))), firstTrailingBit(abs(~countOneBits(u_input.c))));
    let var_1 = _wgslsmith_f_op_f32(-699f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), -333f, false)) - 1000f));
    var var_2 = func_2(Struct_3(func_1(global1.a.x, select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true), -589f), !vec4<bool>(true, select(true, true, false), true, 742f != global1.a.x), _wgslsmith_mod_i32(min(firstTrailingBit(var_0.e.x), u_input.c.x ^ var_0.c.x), -u_input.c.x >> (var_0.b.x % 32u)), -2381f));
    let var_3 = vec3<u32>(var_0.b.x, u_input.a.x, countOneBits(~_wgslsmith_clamp_u32(countOneBits(0u), 0u, max(u_input.a.x, 0u))));
    var_2 = func_2(Struct_3(var_2.b.x & (var_2.c != var_0.a), select(vec4<bool>(!var_2.a, !var_2.a, true, var_2.b.x), var_2.b, (var_3.x == 4294967295u) && true), select(var_0.d.x, -max(var_2.c, u_input.e), false), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))))));
    let var_4 = Struct_1(global1.a);
    let var_5 = abs(abs(_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.b.x, var_3.x, 10328u, 58366u), ~var_0.b)));
    global0 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(14129u, _wgslsmith_div_u32(14040u, var_5.x), select(var_5.x, var_0.b.x, !var_2.b.x)) << (_wgslsmith_dot_vec4_u32(~var_5, var_0.b) % 32u), firstLeadingBit(var_5.x));
    let x = u_input.a;
    s_output = StorageBuffer(1u, select(min(vec4<u32>(1u, u_input.d, var_5.x, 53578u), vec4<u32>(4294967295u, var_3.x, var_5.x, var_0.b.x)) ^ vec4<u32>(48093u, var_5.x, 37023u, var_5.x), vec4<u32>(var_5.x | var_3.x, 1u, 1u, u_input.d), true) & ~firstTrailingBit(vec4<u32>(61651u, var_3.x, var_5.x, 0u)));
}

