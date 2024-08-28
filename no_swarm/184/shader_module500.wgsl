struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: vec3<i32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
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

var<private> global0: array<bool, 15> = array<bool, 15>(false, true, true, true, false, false, false, true, true, false, true, false, false, false, false);

var<private> global1: Struct_5 = Struct_5(vec3<u32>(4294967295u, 17254u, 24712u), Struct_4(40760u, 24971i, vec3<i32>(-14648i, -1i, -1i)), vec3<i32>(-35516i, -44105i, 325i), Struct_2(vec4<f32>(-534f, 918f, -1000f, 136f)), false);

var<private> global2: array<Struct_2, 5>;

var<private> global3: vec2<u32> = vec2<u32>(0u, 0u);

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = -global1.c;
    var var_1 = Struct_2(global1.d.a);
    return i32(-1i) * -3999i;
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    global4 = Struct_1(_wgslsmith_f_op_vec3_f32(global1.d.a.zwy + _wgslsmith_f_op_vec3_f32(round(arg_0.yxw))), ~22066u, global0[_wgslsmith_index_u32(1u, 15u)], any(vec4<bool>(global1.e, global0[_wgslsmith_index_u32(1u, 15u)], false, !(!global1.e))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1311f)))));
    global1 = Struct_5(vec3<u32>(_wgslsmith_add_u32(~u_input.a, ~(~u_input.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(~global4.b, _wgslsmith_add_u32(39230u, global4.b), ~global3.x), abs(~global1.a)), u_input.e), Struct_4(global1.a.x, u_input.d ^ global1.c.x, abs(vec3<i32>(i32(-1i) * -48019i, ~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -3978i, global1.c.x, u_input.d), vec4<i32>(u_input.d, u_input.d, global1.b.c.x, global1.b.c.x))))), vec3<i32>(-func_1(true), _wgslsmith_sub_i32(34520i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.d, global1.b.b, 1i), global1.b.c, true), vec3<i32>(42389i, -10832i, u_input.d))), ~2846i), global2[_wgslsmith_index_u32(abs(max(0u, 1u)), 5u)], false);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-583f)), _wgslsmith_div_f32(-325f, global1.d.a.x))), global4.a.x, _wgslsmith_f_op_f32(f32(-1f) * -482f)))), global1.b.a, true, true);
    return _wgslsmith_f_op_f32(-arg_0.x);
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: f32, arg_3: u32) -> Struct_1 {
    global0 = array<bool, 15>();
    let var_0 = 22163u;
    var var_1 = vec4<f32>(global4.a.x, _wgslsmith_f_op_f32(-arg_2), global1.d.a.x, _wgslsmith_f_op_f32(global1.d.a.x * _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(global1.d.a + vec4<f32>(462f, 1880f, 190f, -627f))))));
    global1 = Struct_5(vec3<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(u_input.c, 4294967295u)) | ~(u_input.b.x ^ u_input.e), (global1.b.a & 0u) | abs(_wgslsmith_dot_vec2_u32(vec2<u32>(87969u, 0u), u_input.b.yz)), _wgslsmith_sub_u32(global1.b.a, _wgslsmith_mod_u32(6188u & arg_3, global1.a.x))), Struct_4(var_0, -countOneBits(u_input.d), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(39721i, 2147483647i, 0i) >> (global1.a % vec3<u32>(32u))), global1.c)), -vec3<i32>(firstTrailingBit(2147483647i), -27700i, max(arg_1.x, global1.c.x)) >> (~_wgslsmith_div_vec3_u32(min(u_input.b, vec3<u32>(1u, 4294967295u, 4294967295u)), vec3<u32>(0u, global1.b.a, arg_3)) % vec3<u32>(32u)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.x * 527f) - 299f), _wgslsmith_f_op_f32(-global4.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2)) - global4.a.x), global1.d.a.x)), all(vec4<bool>(~global1.a.x != var_0, select(!global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global1.e, false), false, global1.e)));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 897u), 5u)];
    return Struct_1(var_1.zxz, ~var_0, select(false, global4.c, _wgslsmith_sub_u32(var_0, global3.x) <= countOneBits(_wgslsmith_div_u32(arg_3, global4.b))), !(0u >= _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_0, global4.b, global1.a.x), vec4<u32>(45320u, var_0, arg_0, 90442u)), ~vec4<u32>(4294967295u, 0u, 23171u, 45373u))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-1747f - _wgslsmith_f_op_f32(-1031f * global1.d.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global1.d.a.x, global4.a.x)), _wgslsmith_f_op_f32(max(global1.d.a.x, global4.a.x)))), global4.a.x))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a << (global1.b.a % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, global4.b, global3.x, 0u), vec4<u32>(0u, global1.a.x, u_input.e, global4.b))) & global1.b.a, 19714u ^ _wgslsmith_mod_u32(40717u, ~global4.b)), true, global1.e);
    let var_0 = func_2(abs(4294967295u), vec2<i32>(global1.b.c.x, func_1(!all(vec4<bool>(global4.d, global1.e, global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(24426u, 15u)])))), global4.a.x, u_input.e);
    var var_1 = Struct_5(~vec3<u32>(_wgslsmith_div_u32(35194u, global1.b.a), ~global4.b, _wgslsmith_sub_u32(1u, global1.b.a)) | global1.a, global1.b, global1.c, Struct_2(_wgslsmith_f_op_vec4_f32(-global1.d.a)), _wgslsmith_f_op_f32(ceil(1446f)) < var_0.a.x);
    var_1 = Struct_5(vec3<u32>(~(global1.b.a << (var_1.b.a % 32u)), 48834u, ~1u), global1.b, vec3<i32>(_wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 19587i), vec2<i32>(33854i, var_1.c.x)), -global1.c.x), 1i, -u_input.d), var_1.d, var_0.c);
    global3 = ~_wgslsmith_mod_vec2_u32(global1.a.zx, ~(~firstLeadingBit(u_input.b.yz)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.a);
}

