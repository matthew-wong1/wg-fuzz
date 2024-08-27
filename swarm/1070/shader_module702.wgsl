struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(i32(-2147483648), -1i, 0i, 2147483647i, 23751i, 63433i, -7834i, 2572i, 0i, 1i, 0i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1812f)) - _wgslsmith_f_op_f32(round(-511f))), -957f)), _wgslsmith_f_op_f32(-326f - _wgslsmith_f_op_f32(abs(327f)))))));
    global0 = array<i32, 11>();
    let var_1 = select(!vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), true), vec2<bool>(!(all(vec3<bool>(true, true, true)) && true), false), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), !any(vec4<bool>(true, false, false, false))), vec2<bool>(all(vec3<bool>(true, true, true)), true), !vec2<bool>(true, all(vec4<bool>(true, false, false, false)))));
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(~u_input.c.x, -1i), ~vec2<i32>(u_input.d.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(47417u, 11u)], -33901i, global0[_wgslsmith_index_u32(u_input.a, 11u)]), u_input.d)));
    return _wgslsmith_f_op_f32(abs(-949f));
}

fn func_2() -> Struct_2 {
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    let var_0 = select(select(vec3<bool>(false, -179f > _wgslsmith_f_op_f32(func_3(u_input.e, vec4<i32>(-43565i, 21293i, u_input.d.x, global0[_wgslsmith_index_u32(u_input.a, 11u)]))), false), select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, true, false)), false, true), _wgslsmith_mod_u32(u_input.e, 49330u) >= 18298u), any(vec3<bool>(all(vec2<bool>(false, true)), true, true))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), all(vec3<bool>(false, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), vec3<bool>(firstTrailingBit(u_input.a) > ~60510u, select(true, all(vec4<bool>(false, true, false, true)), true), min(2147483647i, -9358i) > _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.e, 11u)], -18731i, u_input.c.x)), false), (_wgslsmith_sub_i32(-u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 11u)], u_input.b.x), vec2<i32>(2147483647i, -2147483647i))) >= ~(u_input.d.x << (4294967295u % 32u))) != true);
    let var_1 = abs(-((min(vec4<i32>(global0[_wgslsmith_index_u32(1u, 11u)], u_input.d.x, u_input.c.x, 24219i), vec4<i32>(u_input.c.x, 1i, -2147483647i, u_input.b.x)) ^ -vec4<i32>(global0[_wgslsmith_index_u32(u_input.e, 11u)], 0i, global0[_wgslsmith_index_u32(0u, 11u)], -2147483647i)) | select(_wgslsmith_add_vec4_i32(vec4<i32>(10978i, 10344i, u_input.c.x, 2147483647i), vec4<i32>(1i, u_input.d.x, u_input.c.x, -2147483647i)), vec4<i32>(-1i, 2147483647i, 1i, global0[_wgslsmith_index_u32(u_input.a, 11u)]), !vec4<bool>(var_0.x, var_0.x, false, false))));
    let var_2 = ~min(select(vec2<u32>(~60489u, _wgslsmith_clamp_u32(u_input.e, 4294967295u, 62992u)), vec2<u32>(u_input.a, 4294967295u) | vec2<u32>(u_input.e, u_input.e), var_0.x & var_0.x), vec2<u32>(reverseBits(firstTrailingBit(4294967295u)), 1u & (u_input.a ^ u_input.e)));
    return Struct_2(max(vec2<i32>(max(-1i, -2147483647i), -u_input.c.x), vec2<i32>(var_1.x, _wgslsmith_dot_vec3_i32(~var_1.wxw, firstTrailingBit(vec3<i32>(-2147483647i, -54511i, 0i))))), vec2<bool>(true, true), Struct_1(vec3<bool>(true, false, var_0.x)), _wgslsmith_f_op_f32(round(168f)), _wgslsmith_add_u32(abs(var_2.x), ~(~_wgslsmith_dot_vec2_u32(var_2, vec2<u32>(var_2.x, 50160u)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: f32) -> vec2<u32> {
    var var_0 = ~38915u;
    let var_1 = Struct_3(func_2(), arg_1.b.b);
    let var_2 = vec2<bool>(true, all(vec4<bool>(false, any(arg_0), func_2().c.a.x, select(all(arg_1.b.c.a.yx), false == arg_1.b.b.x, all(vec3<bool>(false, arg_0.x, false))))));
    let var_3 = vec4<i32>(countOneBits(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, arg_1.a, global0[_wgslsmith_index_u32(u_input.a, 11u)]), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(0u, 11u)], -2147483647i, var_1.a.a.x), vec4<i32>(u_input.d.x, global0[_wgslsmith_index_u32(95644u, 11u)], var_1.a.a.x, -2147483647i))), arg_1.a)), countOneBits(~(~arg_1.b.a.x)), u_input.c.x, ~arg_1.a);
    var var_4 = Struct_3(var_1.a, vec2<bool>(false, func_2().b.x));
    return vec2<u32>((~38948u ^ (74682u ^ arg_1.b.e)) << (~30990u % 32u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.e, 19263u), vec2<u32>(var_4.a.e, 0u)))) ^ select(~reverseBits(~vec2<u32>(0u, 0u)), vec2<u32>(var_1.a.e & 5799u, 66078u), arg_1.b.c.a.zx);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec4<bool>) -> vec2<f32> {
    var var_0 = abs(min(vec4<i32>(1i ^ (5858i | global0[_wgslsmith_index_u32(arg_0.x, 11u)]), -arg_1.x, select(-global0[_wgslsmith_index_u32(24828u, 11u)], 39473i, !arg_2.x), -firstLeadingBit(global0[_wgslsmith_index_u32(arg_0.x, 11u)])), (_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, arg_1.x, 0i, global0[_wgslsmith_index_u32(u_input.a, 11u)]), vec4<i32>(-22540i, 0i, -31739i, -25233i), vec4<i32>(-3662i, 5028i, 40586i, 0i)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, arg_0.x, 66699u, u_input.a), vec4<u32>(arg_0.x, 38648u, 0u, arg_0.x)) % vec4<u32>(32u))) | -vec4<i32>(u_input.d.x, u_input.c.x, 0i, global0[_wgslsmith_index_u32(0u, 11u)])));
    var_0 = max(vec4<i32>(59793i | u_input.d.x, _wgslsmith_clamp_i32(-_wgslsmith_add_i32(arg_1.x, -1437i), _wgslsmith_mult_i32(_wgslsmith_add_i32(47129i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(arg_0.x, 11u)], 8331i, 0i, 56092i), vec4<i32>(-3940i, u_input.c.x, u_input.d.x, var_0.x))), ~_wgslsmith_add_i32(-44794i, 0i)), 30974i, _wgslsmith_clamp_i32(-1i, -_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.b.x, 2147483647i, global0[_wgslsmith_index_u32(arg_0.x, 11u)])), -11154i)), firstLeadingBit(vec4<i32>(~10760i, -2147483647i ^ global0[_wgslsmith_index_u32(4294967295u, 11u)], -7347i, max(var_0.x, -23034i))) << (_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.x, u_input.a, u_input.e, 125168u), ~vec4<u32>(1u, u_input.e, 1u, arg_0.x)), ~countOneBits(vec4<u32>(arg_0.x, arg_0.x, 19142u, u_input.e))) % vec4<u32>(32u)));
    let var_1 = vec2<bool>(any(vec2<bool>(arg_2.x, true)), arg_2.x);
    var var_2 = -6349i;
    let var_3 = -max(~(~(-1i << (u_input.a % 32u))), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.a, 11u)] | arg_1.x, var_0.x) >> (~59504u % 32u));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1065f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-638f, -1554f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 235f;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_mod_vec2_u32(max(_wgslsmith_mult_vec2_u32(func_1(vec4<bool>(false, false, true, true), Struct_5(-2147483647i, Struct_2(vec2<i32>(-1i, 0i), vec2<bool>(true, false), Struct_1(vec3<bool>(true, true, true)), 1009f, 4294967295u)), -505f), ~vec2<u32>(35163u, 9027u)), ~vec2<u32>(u_input.e, u_input.e)), vec2<u32>(u_input.e, ~(~u_input.a))), ~(~(u_input.b << ((vec2<u32>(0u, u_input.e) & vec2<u32>(u_input.e, u_input.e)) % vec2<u32>(32u)))), !(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(floor(var_1.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) - _wgslsmith_f_op_f32(round(-801f))))), 449f);
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_1.x, 571f)))), _wgslsmith_div_f32(var_1.x, var_1.x), -504f, -950f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, var_1.x, var_1.x, var_1.x)))))), vec4<f32>(-2315f, -1067f, _wgslsmith_f_op_f32(-func_2().d), _wgslsmith_f_op_vec2_f32(func_4(~(vec2<u32>(1u, 81880u) ^ vec2<u32>(u_input.a, 4294967295u)), -_wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(global0[_wgslsmith_index_u32(u_input.e, 11u)], u_input.c.x)), vec4<bool>(true, false, any(vec3<bool>(true, true, true)), func_2().b.x))).x)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), 927f)))) + -1088f);
    global0 = array<i32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(func_2().e, 467i, countOneBits(func_2().a.x), countOneBits(-firstLeadingBit(49742i)));
}

