struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, 666f);

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(4294967295u, -1723f)), Struct_2(Struct_1(4294967295u, -1017f)), Struct_2(Struct_1(20978u, 2112f)));

var<private> global3: f32;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global1 = _wgslsmith_sub_vec3_i32(u_input.e, _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(584i, global1.x, u_input.b.x), u_input.e), vec3<i32>(global1.x, -15867i, 1i), true), firstLeadingBit(vec3<i32>(2147483647i, u_input.b.x, 26110i))), reverseBits(abs(vec3<i32>(2147483647i, -2147483647i, u_input.b.x)))));
    let var_0 = min(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.e, -vec3<i32>(8849i, u_input.b.x, -30083i)), u_input.e), firstTrailingBit(u_input.e));
    let var_1 = vec3<bool>(~_wgslsmith_clamp_i32(1i, var_0.x, ~u_input.e.x) > -global1.x, any(vec2<bool>(true, true)) != !(!(u_input.a.x != 25029u)), false);
    let var_2 = ~select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, global1.x, -45618i, u_input.b.x), ~vec4<i32>(var_0.x, 299i, 31975i, var_0.x)), vec4<i32>(1i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(13009i, -15021i, global1.x), vec3<i32>(-15903i, global1.x, -1i)), 2147483647i), !select(false, true, var_1.x)) & vec4<i32>(u_input.e.x, _wgslsmith_clamp_i32(~(~global1.x), global1.x & global1.x, _wgslsmith_dot_vec3_i32(var_0 | vec3<i32>(u_input.b.x, 7941i, var_0.x), -u_input.e)), _wgslsmith_mult_i32(var_0.x, ~_wgslsmith_add_i32(0i, global1.x)), firstTrailingBit(u_input.e.x & u_input.b.x));
    var var_3 = ~abs(u_input.c.xz);
    return global0.b;
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(-global0.b))), global0.b, min(_wgslsmith_mult_u32(7226u, global0.a), select(39022u, 76803u, false)) <= max(u_input.a.x, global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-global0.b))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_2(arg_1);
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(818f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1569f) - _wgslsmith_f_op_f32(f32(-1f) * -1182f))) + arg_0.x));
    let var_2 = Struct_2(Struct_1(u_input.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + 504f) - arg_0.x), 618f))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(998f, 568f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + -1000f))), _wgslsmith_f_op_f32(trunc(1160f)), 1f, arg_1.b);
    let var_4 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~(~vec2<i32>(global1.x, -2147483647i)), select(vec2<i32>(u_input.b.x, ~u_input.b.x), ~u_input.b, select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), u_input.e.xx);
    return Struct_2(Struct_1(0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_f_op_f32(f32(-1f) * -606f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(808f, global0.b))))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = reverseBits(firstTrailingBit(vec2<u32>(_wgslsmith_sub_u32(9203u, _wgslsmith_clamp_u32(4294967295u, arg_1.a.a, 17180u)), max(1u, 1u))));
    return Struct_2(Struct_1(select(_wgslsmith_add_u32(global0.a, var_0.x >> (4958u % 32u)), 24649u, true), global0.b));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> i32 {
    global0 = arg_0.a;
    global0 = Struct_1(4294967295u << (_wgslsmith_dot_vec2_u32(~(~vec2<u32>(global0.a, 1u)), firstLeadingBit(u_input.a.zz)) % 32u), _wgslsmith_f_op_f32(1373f * _wgslsmith_f_op_f32(func_3())));
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.a.b, -1125f, arg_0.a.b))))))), arg_0.a, vec3<f32>(1371f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -696f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a.b)))))).a;
    global1 = vec3<i32>(-(~5395i), reverseBits(2147483647i), min(11814i, reverseBits(_wgslsmith_div_i32(-9008i, 12125i))));
    var_0 = func_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, 194f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b) + -1021f), _wgslsmith_f_op_f32(ceil(-1758f))))), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b, 230f, 609f))))), func_4(global1.x, global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(4294967295u, arg_0.a.a)), 3u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, arg_0.a.b, var_0.b, global0.b) + vec4<f32>(652f, -577f, -617f, -533f)), vec4<f32>(var_0.b, arg_0.a.b, 1787f, arg_0.a.b), all(vec4<bool>(arg_1, arg_1, arg_1, arg_1))))).a, vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.b), global0.b, global0.b)).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-158f, 1000f, 1570f) + vec3<f32>(global0.b, -597f, 1003f))))))).a;
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec3_i32(u_input.e, -_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(global1.x, 1i), -22984i, 1i), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, global1.x, 2147483647i), vec3<i32>(-2147483647i, -16240i, -1i)))), u_input.e);
    global1 = max(vec3<i32>(func_5(func_4(15262i, func_1(vec3<f32>(global0.b, 912f, global0.b), Struct_1(u_input.a.x, global0.b), vec3<f32>(global0.b, -1753f, -2041f)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.b, global0.b, -1000f, global0.b), vec4<f32>(1406f, global0.b, 726f, -1001f))), false), abs(firstTrailingBit(abs(global1.x))), 1i | _wgslsmith_dot_vec3_i32(u_input.e, -u_input.e)), ~vec3<i32>(-2147483647i, 1i, var_0.x));
    let var_1 = countOneBits(-1i & _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, 0i), var_0.zy), _wgslsmith_div_i32(~(-1i), 1089i), ~abs(-1i)));
    global1 = _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(reverseBits(-global1.x), 1i, _wgslsmith_add_i32(var_0.x, global1.x) & select(var_1, 0i, false)), firstTrailingBit(~(~vec3<i32>(var_0.x, 2147483647i, 2147483647i))), ~_wgslsmith_sub_vec3_i32(u_input.e, -vec3<i32>(-12540i, global1.x, 0i))), firstLeadingBit(vec3<i32>(~(-var_0.x), i32(-1i) * -var_1, u_input.b.x)));
    let var_2 = ~(~(~(~u_input.a | u_input.d)));
    var_0 = vec3<i32>(firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_1, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, global1.x, -1i), u_input.e)) << (_wgslsmith_add_u32(~global0.a, ~4294967295u) % 32u)), func_5(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_2.x, ~19736u), 3u)], min(global1.x ^ -2511i, global1.x) > u_input.e.x), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, 1i, 4294967295u);
}

