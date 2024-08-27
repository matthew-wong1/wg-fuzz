struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3;

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 3>;

var<private> global4: array<u32, 24>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    var var_0 = true;
    var var_1 = 1143f;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.c.x, 577f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c.a)))) - 399f)));
}

fn func_3(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = firstLeadingBit(~u_input.d >> (~_wgslsmith_div_vec4_u32(u_input.d, ~vec4<u32>(1u, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.a, 24u)], 24u)], 27021u)) % vec4<u32>(32u)));
    let var_1 = global1.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(round(global0.c.yy));
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~arg_0.yx, abs(reverseBits(select(~vec2<u32>(22999u, global1.a), u_input.d.yy << (arg_0.yx % vec2<u32>(32u)), select(vec2<bool>(true, true), vec2<bool>(false, false), true))))), 3u)];
    global0 = global3[_wgslsmith_index_u32(abs((var_0.x >> (0u % 32u)) | firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d.zxw, u_input.d.yxz), ~vec3<u32>(1u, 0u, global4[_wgslsmith_index_u32(u_input.a, 24u)])))), 3u)];
    return select(vec2<bool>(true, true), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(false, false, true, false)), true), any(vec4<bool>(false, false, true, false))), (i32(-1i) * -(-2147483647i << (0u % 32u))) < firstTrailingBit(firstTrailingBit(-1i)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = global0.a < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * global0.c.x)) * global1.b.c.x) + _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(611f, -844f, 240f) * global1.c.c))));
    var var_1 = _wgslsmith_add_vec2_i32(~(~reverseBits(-global0.b.zw)), global1.c.b.ww);
    var var_2 = vec2<bool>(var_0, any(!func_3(vec3<u32>(global4[_wgslsmith_index_u32(u_input.a, 24u)], u_input.d.x, global4[_wgslsmith_index_u32(36101u, 24u)]))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global1.b.c.x, 542f)), -654f)), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(var_1.x, 1i, 1i, u_input.c.x), vec4<i32>(0i, -8847i, var_1.x, global1.b.d)), vec4<i32>(-10060i, 0i, 0i, 19910i), vec4<i32>(u_input.c.x, -26519i, var_1.x, u_input.b)) & firstTrailingBit(vec4<i32>(-6282i, 2147483647i, var_1.x, 0i) >> (u_input.d % vec4<u32>(32u))), global0.c, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(global0.d, 235i, -12689i), vec3<i32>(global0.e, 1i, var_1.x), vec3<bool>(var_2.x, true, var_2.x)), global1.c.b.yyx), vec3<i32>(~(-46576i), firstTrailingBit(-6210i), global1.b.d)), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(var_1.x, -3558i, global1.b.e)), -global1.c.b.ywy)), vec4<bool>(var_0, true, any(vec4<bool>(!var_2.x, any(vec3<bool>(arg_0, false, false)), false, any(vec2<bool>(true, var_0)))), all(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1031f * global1.c.a)), global1.c.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global0.a, -703f), -915f, _wgslsmith_f_op_f32(f32(-1f) * -1479f))), -2147483647i, firstLeadingBit((var_1.x << (u_input.e % 32u)) << ((u_input.a ^ global4[_wgslsmith_index_u32(u_input.e, 24u)]) % 32u))));
    var var_4 = global1.c;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(915f + _wgslsmith_f_op_f32(max(var_3.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -139f)))) * -1601f), ~global0.b, _wgslsmith_f_op_vec3_f32(-global0.c), 0i, -2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> vec3<f32> {
    var var_0 = -(-1i << (0u % 32u));
    let var_1 = ~(~vec3<u32>(countOneBits(global1.a), ~global4[_wgslsmith_index_u32(global1.a, 24u)], ~1u));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-141f * _wgslsmith_f_op_f32(global0.a - 381f))));
    let var_3 = select(vec3<bool>(all(!vec3<bool>(true, arg_3, true)), all(!vec4<bool>(arg_1, arg_3, arg_3, arg_1)), select(true, !arg_3 | true, true)), select(select(!(!vec3<bool>(arg_1, false, arg_1)), select(vec3<bool>(arg_3, true, true), !vec3<bool>(true, arg_3, false), true), true != (arg_3 && true)), select(select(vec3<bool>(false, arg_3, false), vec3<bool>(true, arg_3, arg_3), arg_1), select(!vec3<bool>(false, arg_1, arg_1), !vec3<bool>(false, true, arg_1), vec3<bool>(arg_1, arg_1, arg_3)), arg_3), !(!vec3<bool>(arg_3, true, true))), vec3<bool>(any(vec4<bool>(arg_1 | arg_1, func_3(vec3<u32>(26017u, 4294967295u, 1u)).x, -19891i == u_input.c.x, false)), true, arg_3));
    var var_4 = select(!vec4<bool>(any(vec4<bool>(true, true, true, true)), all(!vec3<bool>(arg_3, true, true)), true == func_3(vec3<u32>(global4[_wgslsmith_index_u32(var_1.x, 24u)], global4[_wgslsmith_index_u32(4294967295u, 24u)], 0u)).x, true), vec4<bool>(var_3.x, !arg_3, true, _wgslsmith_f_op_f32(-global1.c.c.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.c.x, 1507f)) * -2089f)), !(!(!select(vec4<bool>(true, true, arg_1, true), vec4<bool>(arg_1, arg_1, arg_3, arg_1), true))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.a)) + _wgslsmith_f_op_f32(exp2(arg_0.a))))), _wgslsmith_f_op_f32(ceil(266f)), 1272f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(986f, max(min(global0.b, reverseBits(vec4<i32>(2147483647i, 2147483647i, global1.c.b.x, -1i))), ~vec4<i32>(~global0.e, _wgslsmith_mult_i32(global0.d, 3449i), 2147483647i, _wgslsmith_clamp_i32(global1.b.d, global0.e, global0.e))), _wgslsmith_f_op_vec3_f32(func_4(func_1(true), (global0.a < _wgslsmith_f_op_f32(f32(-1f) * -1981f)) & any(vec2<bool>(true, true)), Struct_1(-336f, vec4<i32>(min(u_input.b, global1.c.b.x), -2147483647i, ~global0.d, _wgslsmith_mod_i32(2213i, -4185i)), func_1(true).c, 1i, _wgslsmith_sub_i32(abs(u_input.c.x), ~global1.c.b.x)), true | all(vec4<bool>(true, true, true, true)))), (-_wgslsmith_dot_vec3_i32(global1.b.b.zyz, vec3<i32>(-1i, -29179i, global1.c.b.x)) | 9903i) >> (u_input.e % 32u), global0.d & ~max(~2147483647i, _wgslsmith_div_i32(u_input.c.x, u_input.c.x)));
    var var_0 = select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), 89436u <= global1.a), true), select(vec2<bool>(_wgslsmith_mod_u32(0u, global4[_wgslsmith_index_u32(u_input.a, 24u)]) == abs(global1.a), func_1(true).e <= _wgslsmith_sub_i32(global1.b.b.x, -1i)), select(vec2<bool>(global1.a < u_input.e, func_3(u_input.d.xzy).x), vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(true, any(vec2<bool>(true, false)))), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), false);
    let var_1 = !vec2<bool>(!(!(!var_0.x)), var_0.x);
    var var_2 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(-global0.b.yzx, global1.b.b.x, global0.e, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(702f))) + _wgslsmith_f_op_f32(func_1(var_0.x).c.x - _wgslsmith_f_op_f32(floor(global1.c.a)))), global1.b.c.x));
}

