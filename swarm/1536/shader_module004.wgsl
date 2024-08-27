struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29>;

var<private> global1: f32 = 371f;

var<private> global2: Struct_3 = Struct_3(vec2<u32>(4294967295u, 85538u), vec3<u32>(20231u, 16196u, 67990u));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(~max(~countOneBits(vec2<u32>(0u, 39785u)), min(firstLeadingBit(vec2<u32>(global2.a.x, 4294967295u)), vec2<u32>(2720u, 1u))), vec3<u32>(_wgslsmith_mult_u32((global2.a.x ^ global2.b.x) ^ u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, global2.a.x, global2.a.x), vec4<u32>(global2.b.x, global2.a.x, global2.a.x, 0u))), global2.b.x, 1u));
    var_0 = Struct_3(global2.b.zx, vec3<u32>(37677u, ~(~var_0.a.x), _wgslsmith_clamp_u32(~var_0.b.x, u_input.c.x, ~16264u)));
    var var_1 = reverseBits(vec4<u32>(32139u, ~var_0.a.x, var_0.b.x, firstTrailingBit(4294967295u))) ^ vec4<u32>(var_0.b.x >> (~var_0.a.x % 32u), 107709u, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.a.x, 1u) | reverseBits(var_0.b.xx), countOneBits(~vec2<u32>(41587u, 1u))), ~var_0.b.x);
    let var_2 = Struct_1(!(!all(select(vec4<bool>(false, true, false, true), global0[_wgslsmith_index_u32(var_1.x, 29u)], true))));
    var_0 = Struct_3(vec2<u32>(4294967295u, ~select(1722u, 56262u, false & var_2.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(~(~global2.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, 4294967295u, 32458u), var_0.b), _wgslsmith_add_u32(global2.b.x, var_1.x)), ~global2.b));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(418f)) - _wgslsmith_f_op_f32(604f - 274f)), -484f)))));
}

fn func_2() -> i32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    var var_0 = -_wgslsmith_sub_i32(~(-(~23696i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(0i, -4011i), vec2<i32>(u_input.a, u_input.a))));
    var var_1 = (any(vec3<bool>(true, false, false)) || true) && false;
    let var_2 = ~_wgslsmith_dot_vec3_u32(u_input.c, ~(~global2.b));
    var var_3 = vec4<u32>(select(~0u, ~u_input.d.x & (min(4294967295u, 1u) << (reverseBits(var_2) % 32u)), select(all(!global0[_wgslsmith_index_u32(37226u, 29u)]), any(vec2<bool>(false, false)) && select(false, false, true), !(u_input.a == u_input.a))), u_input.c.x, var_2, ~4294967295u);
    return _wgslsmith_sub_i32(_wgslsmith_mult_i32(countOneBits(~(u_input.a ^ u_input.a)), 79067i), _wgslsmith_div_i32(abs(0i), _wgslsmith_mod_i32(_wgslsmith_div_i32(-41023i, -1910i), u_input.a)) << (1u % 32u));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: u32, arg_3: vec3<f32>) -> f32 {
    let var_0 = select(min(func_2(), -min(1i, 2147483647i)), 1i, false);
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_3.x, -1644f))) - _wgslsmith_f_op_vec2_f32(arg_3.zy * arg_3.xx)), _wgslsmith_f_op_vec2_f32(-arg_3.xx))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.x))), arg_3.x))), 4294967295u, ~global2.a.x);
    let var_2 = Struct_2(select(select(select(!arg_0.yx, select(vec2<bool>(arg_0.x, true), vec2<bool>(true, arg_1.x), arg_0.zw), arg_1), select(arg_0.zx, vec2<bool>(arg_1.x, false), select(vec2<bool>(arg_0.x, arg_0.x), arg_0.xw, arg_0.yy)), false), !vec2<bool>(any(global0[_wgslsmith_index_u32(arg_2, 29u)]), true), arg_1.x != false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))) + 452f), 36380u, max(0i, _wgslsmith_clamp_i32(u_input.a, 2147483647i, ~u_input.a)) | _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a, var_0, var_0 ^ u_input.a), vec3<i32>(-var_0, u_input.a, u_input.a & var_0)));
    global0 = array<vec4<bool>, 29>();
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-494f - 1288f))))));
    return _wgslsmith_f_op_f32(-1050f * _wgslsmith_f_op_f32(-arg_3.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool) -> StorageBuffer {
    global1 = arg_0.x;
    global0 = array<vec4<bool>, 29>();
    global1 = 2431f;
    let var_0 = Struct_2(select(select(vec2<bool>(true, true), vec2<bool>(any(global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), select(false, arg_1, arg_1)), arg_0.x != _wgslsmith_f_op_f32(step(362f, 702f))), !(!(!vec2<bool>(arg_1, false))), vec2<bool>(any(vec4<bool>(true, false, arg_1, true)), !any(global0[_wgslsmith_index_u32(global2.b.x, 29u)]))), _wgslsmith_f_op_f32(ceil(arg_0.x)), 29971u, -49176i);
    var var_1 = Struct_3(global2.a, select(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.c, 1u, u_input.b.x), vec3<u32>(0u, 1u, u_input.c.x), global2.b)), vec3<u32>(countOneBits(63225u), 1u | var_0.c, ~18342u), false) >> (vec3<u32>(firstTrailingBit(var_0.c), select(u_input.c.x, 1u, false) | 0u, select(181276u, ~global2.a.x, true)) % vec3<u32>(32u)));
    return StorageBuffer(vec3<i32>(-22729i ^ (reverseBits(u_input.a) ^ -2147483647i), ~(~(-2147483647i)), reverseBits(var_0.d)), vec2<u32>(61719u, 41728u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 29>();
    let x = u_input.a;
    s_output = func_4(vec4<f32>(-1607f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -1028f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -928f) + _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(global2.b.x, 29u)], vec2<bool>(false, false), 4294967295u, vec3<f32>(942f, -1027f, -536f)))) - _wgslsmith_f_op_f32(ceil(-1000f)))), all(select(vec3<bool>(true, any(vec2<bool>(false, false)), false), vec3<bool>(select(false, false, true), any(vec2<bool>(false, true)), true), all(global0[_wgslsmith_index_u32(u_input.b.x, 29u)]))));
}

