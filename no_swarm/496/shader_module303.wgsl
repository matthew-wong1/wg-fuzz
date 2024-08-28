struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

var<private> global1: array<i32, 13>;

var<private> global2: f32 = -345f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> vec4<i32> {
    global1 = array<i32, 13>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1534f, arg_0))))));
    global1 = array<i32, 13>();
    global0 = array<Struct_2, 32>();
    let var_0 = true;
    return arg_1.c.e;
}

fn func_4(arg_0: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-102f * 125f), _wgslsmith_f_op_f32(select(1416f, -269f, false)), _wgslsmith_f_op_f32(round(-287f)), _wgslsmith_f_op_f32(f32(-1f) * -1819f)), vec4<f32>(1424f, 1668f, _wgslsmith_f_op_f32(f32(-1f) * -1733f), _wgslsmith_f_op_f32(trunc(-459f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, -529f, var_0.x), vec4<f32>(var_0.x, 297f, 241f, var_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1400f, var_0.x, -1197f) * vec4<f32>(-433f, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1333f, var_0.x, var_0.x)))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-964f)), _wgslsmith_f_op_f32(-264f * 559f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -989f)), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * _wgslsmith_f_op_f32(floor(-232f))), -218f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))))));
    var var_1 = select(select(vec2<bool>(all(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, true))), vec2<bool>(!all(vec4<bool>(false, true, false, false)), true), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), true), vec2<bool>(true, true), vec2<bool>(true, true))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(vec2<bool>(!all(vec3<bool>(false, true, false)), ~u_input.b <= (4294967295u ^ u_input.a.x)), vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), true | all(vec4<bool>(false, false, false, false))), vec2<bool>(false, any(vec2<bool>(true, false)))));
    let var_2 = ~((~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 31519u), u_input.a) & firstTrailingBit(firstTrailingBit(vec2<u32>(4294967295u, 18119u)))) << (reverseBits(vec2<u32>(~82789u, 65250u >> (u_input.a.x % 32u))) % vec2<u32>(32u)));
    var var_3 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~abs(vec3<u32>(var_2.x, 1u, var_2.x)), vec3<u32>(1u, 30818u, var_2.x)), abs(vec3<u32>(var_2.x, u_input.a.x, 1u)));
    return vec3<bool>(var_1.x, var_1.x, true);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = arg_1.e.xzz;
    let var_1 = func_4(~select(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(arg_2, 13u)] ^ var_0.x, 1i), _wgslsmith_dot_vec4_i32(arg_1.e, func_3(-608f, Struct_3(global0[_wgslsmith_index_u32(arg_2, 32u)], arg_0.b, arg_0.c, arg_0.d), Struct_2(-43921i))), true));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(553f, 483f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-747f, arg_0.c.c))))), vec2<f32>(-989f, _wgslsmith_f_op_f32(-arg_1.c)), any(vec4<bool>(any(vec4<bool>(false, arg_0.b, true, false)), !var_1.x, true, false)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, 780f)), vec2<f32>(-392f, -614f), var_1.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(234f)), _wgslsmith_f_op_f32(-arg_1.c)))));
    var var_3 = ~vec4<i32>(var_0.x, reverseBits(0i), func_3(-840f, arg_0, global0[_wgslsmith_index_u32(arg_0.c.a.x, 32u)]).x, firstLeadingBit(firstLeadingBit(var_0.x)) & arg_1.d);
    let var_4 = vec3<bool>(true, true, arg_0.b);
    return func_4(func_3(_wgslsmith_f_op_f32(-var_2.x), arg_0, Struct_2(var_3.x)).x ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 2147483647i, 1i, var_3.x), arg_1.e), arg_0.c.e)).x & select(false, any(!(!var_1.xy)), all(!vec3<bool>(arg_0.b, false, arg_0.b)));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_u32(select(select(~vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u), vec4<u32>(u_input.b, u_input.b, 0u, 0u), true), ~vec4<u32>(1u, u_input.a.x, 50845u, u_input.a.x), vec4<bool>(true, 0i < global1[_wgslsmith_index_u32(10736u, 13u)], false, true)), vec4<u32>(1u, ~max(u_input.b, u_input.a.x), min(u_input.a.x, abs(u_input.b)), select(u_input.b, u_input.a.x, false) & 85859u)), select(vec3<i32>(~(-2257i), global1[_wgslsmith_index_u32(~(~u_input.b), 13u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, min(u_input.b, 48598u)), 13u)]), -(~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 0i, global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], 0i, global1[_wgslsmith_index_u32(u_input.b, 13u)]))), select(vec3<bool>(false, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, false)), !func_2(Struct_3(Struct_2(2147483647i), true, Struct_1(vec4<u32>(18066u, u_input.b, 49039u, 1u), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global1[_wgslsmith_index_u32(6337u, 13u)], 0i), -648f, -1i, vec4<i32>(global1[_wgslsmith_index_u32(42474u, 13u)], global1[_wgslsmith_index_u32(u_input.b, 13u)], -2147483647i, global1[_wgslsmith_index_u32(24022u, 13u)])), 153f), Struct_1(vec4<u32>(u_input.b, 1u, 0u, u_input.b), vec3<i32>(0i, 30058i, 2147483647i), -141f, -2147483647i, vec4<i32>(0i, 1i, global1[_wgslsmith_index_u32(26958u, 13u)], global1[_wgslsmith_index_u32(15650u, 13u)])), u_input.b))), _wgslsmith_f_op_f32(step(2177f, _wgslsmith_f_op_f32(max(1359f, _wgslsmith_f_op_f32(select(507f, 1f, true)))))), global1[_wgslsmith_index_u32(u_input.a.x, 13u)] >> (~(~3742u) % 32u), ~abs(~(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global1[_wgslsmith_index_u32(u_input.b, 13u)], 7570i, -16010i) | vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(u_input.b, 13u)], global1[_wgslsmith_index_u32(u_input.b, 13u)], global1[_wgslsmith_index_u32(u_input.a.x, 13u)]))));
    return Struct_3(Struct_2(countOneBits(-24951i)), false, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + var_0.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))) - -415f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_1().c;
    var var_2 = Struct_4(Struct_3(var_0.a, var_0.b, func_1().c, var_0.c.c), ~var_1.a);
    let var_3 = vec2<i32>(var_0.c.b.x, -7825i);
    global2 = -2281f;
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.d, var_0.d))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.c.c, var_1.c)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.c.c, var_2.a.d))))))));
    let var_5 = countOneBits(var_1.e) >> ((var_2.a.c.a >> (vec4<u32>(~(~var_0.c.a.x), var_1.a.x, var_0.c.a.x, var_2.b.x) % vec4<u32>(32u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), var_2.a.d, 1000f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-382f, -2277f, -317f))))))), _wgslsmith_div_u32(_wgslsmith_add_u32(abs(35587u), _wgslsmith_mult_u32(var_2.a.c.a.x, 7922u) ^ var_2.b.x), u_input.a.x));
}

