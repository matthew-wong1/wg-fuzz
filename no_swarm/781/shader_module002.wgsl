struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(315f, 4294967295u, 1i, 25829u, -1618f), 7823i, Struct_1(551f, 74895u, -14948i, 0u, 194f)), -1i, Struct_1(-246f, 108446u, -11138i, 20325u, 533f), 0i);

var<private> global2: Struct_3;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_3) -> u32 {
    var var_0 = 52794u;
    let var_1 = arg_1.a.a;
    var var_2 = 42497u;
    global1 = global0[_wgslsmith_index_u32(0u, 27u)];
    let var_3 = !(!vec4<bool>(true, false, select(true, true, any(vec2<bool>(true, false))), any(vec2<bool>(true, true))));
    return global1.c.d;
}

fn func_2() -> Struct_2 {
    global2 = global0[_wgslsmith_index_u32(func_3(vec3<i32>(global2.a.c.c, -min(16576i, -2147483647i), 38641i), Struct_4(Struct_3(Struct_2(Struct_1(183f, global1.c.d, global1.b, 59658u, global1.c.e), u_input.b, Struct_1(561f, 52950u, -11863i, global1.a.c.b, global1.a.c.e)), 1i, Struct_1(-2131f, 74730u, global2.a.c.c, global2.a.c.d, 1194f), global1.c.c)), Struct_3(Struct_2(global1.a.a, _wgslsmith_mod_i32(global1.d, -7100i), Struct_1(382f, 32328u, global1.c.c, global2.c.b, global1.a.c.e)), -(i32(-1i) * -7011i), global2.a.c, 0i)) | (57731u | ~(~global1.a.c.b)), 27u)];
    global1 = Struct_3(global2.a, 71510i, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1060f, 145f, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global1.c.e)), 231f))), _wgslsmith_add_u32(24394u, ~_wgslsmith_sub_u32(1u, global2.c.d)), _wgslsmith_mult_i32(-19704i, 1i), global1.a.c.b & _wgslsmith_dot_vec2_u32(vec2<u32>(13300u, 52436u), _wgslsmith_clamp_vec2_u32(vec2<u32>(115532u, 14210u), vec2<u32>(global2.c.b, 39746u), vec2<u32>(4294967295u, global2.c.d))), 1f), global1.b);
    let var_0 = ~((2295i | (global1.c.c ^ -2147483647i)) & -30026i) & global2.d;
    let var_1 = max(35682u, 40196u);
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(global1.a.a.c, -22601i), -max(-global1.c.c, global2.a.a.c)), -firstTrailingBit(min(vec2<i32>(var_0, -2147483647i), vec2<i32>(50471i, global2.b))) << (select(_wgslsmith_div_vec2_u32(~vec2<u32>(global1.a.c.d, var_1), _wgslsmith_sub_vec2_u32(vec2<u32>(1182u, 0u), vec2<u32>(global1.a.a.d, 77674u))), ~abs(vec2<u32>(var_1, 41113u)), true) % vec2<u32>(32u)));
    return global1.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = ~(~max(~(~65761u), ~(14033u >> (global1.a.a.b % 32u))));
    var var_2 = func_2();
    let var_3 = Struct_4(global0[_wgslsmith_index_u32(global2.a.a.b, 27u)]);
    let var_4 = arg_2;
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(countOneBits(-firstTrailingBit(max(vec2<i32>(31248i, -76659i), vec2<i32>(global1.c.c, global2.c.c)))), !any(vec2<bool>(true, true)) & false, select(vec3<u32>(global2.c.d, 68804u, 1u), vec3<u32>(global2.a.c.b, global1.c.b, reverseBits(37241u)), vec3<bool>(true, true | (-2009f <= global2.c.e), true)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-global1.a.a.a), -1013f, global2.a.a.a, global2.a.c.a), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-255f, global2.c.e, 1035f, global2.c.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.c.a, global2.c.a, global1.a.a.e, -578f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-876f, global2.a.a.a, global2.a.c.e, global1.c.a))))))));
    var var_1 = vec3<i32>((_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, 2147483647i, global2.b), vec4<i32>(global1.c.c, 1i, 34881i, global1.c.c) | vec4<i32>(26372i, global1.c.c, -74587i, 0i)) << (abs(global1.a.a.b) % 32u)) >> (global2.c.d % 32u), ~(~abs(firstLeadingBit(-2147483647i))), var_0.a.c);
    global2 = Struct_3(func_2(), -12379i, func_1(vec2<i32>(~(-1i), 22336i), !all(vec4<bool>(false, false, false, true)) | true, select(vec3<u32>(abs(var_0.c.d), 1u, ~var_0.c.d), select(_wgslsmith_mod_vec3_u32(vec3<u32>(151397u, 4294967295u, var_0.c.b), vec3<u32>(global1.a.a.d, global2.a.c.d, global2.c.d)), _wgslsmith_div_vec3_u32(vec3<u32>(global1.c.d, global2.c.d, global1.c.d), vec3<u32>(42148u, global2.c.b, var_0.a.b)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1009f, -342f, var_0.c.e), vec4<f32>(var_0.c.a, 415f, 661f, 569f), vec4<bool>(true, true, false, true)))))))).a, var_0.c.c);
    let var_2 = global0[_wgslsmith_index_u32(var_0.a.d, 27u)];
    var var_3 = Struct_3(var_2.a, _wgslsmith_sub_i32(~41085i, func_1(select(vec2<i32>(-6091i, 70241i), vec2<i32>(0i, 5168i), true), true, ~vec3<u32>(0u, 28222u, var_2.c.d), vec4<f32>(-1065f, global1.c.e, -1244f, global2.a.a.a)).b >> (1u % 32u)), var_0.c, global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(445f, var_3.c.a)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.a.a.a, global1.c.a), vec2<f32>(var_0.c.e, var_2.c.e)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1460f, var_2.a.c.e)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(287f, var_0.c.e)), all(vec3<bool>(true, true, true)))));
}

