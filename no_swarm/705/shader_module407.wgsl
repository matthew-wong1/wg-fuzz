struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-1088f, -1463f, -712f), 1u, vec2<f32>(453f, -479f));

var<private> global1: Struct_1;

var<private> global2: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(9618u, 68464u, 1u, 888u), vec4<u32>(49375u, 4294967295u, 1u, 0u), vec4<u32>(29231u, 26220u, 50139u, 4294967295u), vec4<u32>(1u, 93904u, 659u, 4294967295u), vec4<u32>(4085u, 0u, 51083u, 61864u), vec4<u32>(72888u, 1u, 1u, 13008u), vec4<u32>(1u, 11317u, 5283u, 0u), vec4<u32>(4294967295u, 6724u, 49644u, 0u), vec4<u32>(11273u, 0u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 15277u, 792u), vec4<u32>(43985u, 92428u, 47337u, 4294967295u), vec4<u32>(1079u, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, 68166u, 1u, 4294967295u), vec4<u32>(61215u, 4294967295u, 0u, 26434u), vec4<u32>(111864u, 1u, 7899u, 0u), vec4<u32>(12514u, 46255u, 1u, 1u), vec4<u32>(12709u, 1u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(2022u, 4294967295u, 1u, 6491u), vec4<u32>(38287u, 1743u, 27447u, 146136u), vec4<u32>(20059u, 10220u, 20042u, 15096u), vec4<u32>(0u, 4294967295u, 7917u, 47158u), vec4<u32>(1u, 1u, 91010u, 80381u), vec4<u32>(5787u, 0u, 47116u, 0u), vec4<u32>(3954u, 0u, 60042u, 43797u), vec4<u32>(23585u, 19649u, 4294967295u, 5756u), vec4<u32>(1u, 9206u, 24293u, 56115u), vec4<u32>(4294967295u, 0u, 31873u, 104033u), vec4<u32>(4294967295u, 1u, 0u, 0u), vec4<u32>(20936u, 1u, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 53758u, 23854u));

var<private> global3: u32 = 4294967295u;

var<private> global4: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.a + global4.a)))), 40214u, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c)), vec2<f32>(_wgslsmith_f_op_f32(step(global4.a.x, global4.c.x)), _wgslsmith_f_op_f32(global1.a.x - global1.a.x))))));
    var var_1 = var_0;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(811f, -348f, global1.a.x))), _wgslsmith_div_vec3_f32(vec3<f32>(global1.c.x, 1303f, global4.a.x), vec3<f32>(global4.a.x, 165f, global0.a.x)))))), ~(global0.b << ((firstTrailingBit(8534u) >> (firstLeadingBit(4294967295u) % 32u)) % 32u)), vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))))));
    let var_3 = min(countOneBits(countOneBits(_wgslsmith_add_vec4_u32(~global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(firstTrailingBit(global4.b), 31u)]))), global2[_wgslsmith_index_u32(~min(global1.b, var_2.b), 31u)]);
    var var_4 = all(select(vec4<bool>(all(vec3<bool>(false, false, false)) | true, var_1.c.x < global0.a.x, global0.c.x <= _wgslsmith_f_op_f32(trunc(var_1.c.x)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, select(false, true, true), true), all(vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a.x))) != _wgslsmith_f_op_f32(-global0.c.x)));
    return -29654i;
}

fn func_2() -> vec3<u32> {
    global4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-338f, -893f, global0.a.x)) + _wgslsmith_f_op_vec3_f32(abs(global1.a)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(global1.a))))), _wgslsmith_sub_u32(79545u, 23078u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-195f, global4.a.x))), _wgslsmith_f_op_vec2_f32(round(global1.c))))) * vec2<f32>(global4.c.x, _wgslsmith_div_f32(global4.c.x, 400f))));
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(firstLeadingBit(-2147483647i) >> ((global1.b ^ u_input.a) % 32u), _wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, 80520i), 35321i)), ~(-2147483647i), ~(-7024i), (func_3() & -2147483647i) << (global4.b % 32u)), vec4<i32>(1i, 1i, 1i, 1i) ^ (vec4<i32>(i32(-1i) * -2147483647i, -1i, 1i, 2147483647i) | _wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, -4137i, 1i, -1i), select(vec4<i32>(-2147483647i, -6050i, -28340i, 43770i), vec4<i32>(-1i, -23705i, 15846i, -39546i), false), vec4<i32>(-1i, 2147483647i, 1i, -19559i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global1.a.xx))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 597f))))) * global0.a.xx);
    global2 = array<vec4<u32>, 31>();
    global1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1141f, global4.a.x, 919f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, global4.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.a.x, 509f, -1000f))))), _wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(global0.b, 0u)), min(vec2<u32>(global0.b, global0.b), vec2<u32>(global1.b, reverseBits(global4.b)))), vec2<f32>(_wgslsmith_f_op_f32(-1725f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(exp2(global0.c.x)))), global4.c.x));
    return ~min(abs(~vec3<u32>(global0.b, 4294967295u, 59444u)) >> (vec3<u32>(u_input.a << (global1.b % 32u), 0u, 13705u >> (global1.b % 32u)) % vec3<u32>(32u)), ~(_wgslsmith_mult_vec3_u32(vec3<u32>(26211u, global4.b, u_input.a), vec3<u32>(global0.b, 35913u, global0.b)) & ~vec3<u32>(16894u, global4.b, global4.b)));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> u32 {
    var var_0 = 1i;
    var var_1 = _wgslsmith_div_vec3_u32(abs(func_2()), vec3<u32>(0u, 4294967295u, reverseBits(_wgslsmith_mod_u32(48900u, 4294967295u) | _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 1058u, global4.b), arg_1.wyz))));
    var var_2 = true;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(398f - global0.c.x), 350f, 247f) - vec3<f32>(_wgslsmith_f_op_f32(max(209f, 173f)), -397f, _wgslsmith_f_op_f32(-global4.a.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.a, _wgslsmith_f_op_vec3_f32(step(global1.a, global1.a)), true)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1459f, global1.c.x, 744f))))), ~arg_1.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1040f, global1.c.x)))), -602f));
    global4 = Struct_1(global4.a, var_1.x, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.c.x, global4.a.x), 1617f), global4.a.yy));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 31>();
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-global4.a), 4294967295u, global0.c);
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -879f);
    global2 = array<vec4<u32>, 31>();
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.x, _wgslsmith_f_op_f32(-global4.a.x), 2091f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(1616f, var_0, var_0)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(499f, global4.a.x, 508f) - vec3<f32>(var_0, var_0, var_0))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-900f, global1.a.x, global4.a.x)) + global1.a))), func_1(~4294967295u, firstTrailingBit(~(global2[_wgslsmith_index_u32(global0.b, 31u)] & global2[_wgslsmith_index_u32(global0.b, 31u)]))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1378f, global4.c.x) + vec2<f32>(198f, global4.a.x)), vec2<f32>(global4.c.x, global4.a.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(474f, 662f) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global1.c + vec2<f32>(1260f, 725f)))))));
    global3 = _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_mult_u32(~global4.b, 71165u), ~77977u ^ _wgslsmith_div_u32(global4.b, global4.b)), _wgslsmith_add_vec2_u32(max(vec2<u32>(31797u, ~10307u), reverseBits(vec2<u32>(global4.b, 84416u))), ~vec2<u32>(~0u, 25531u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x - 1605f) + -1376f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + 195f)))), u_input.a, _wgslsmith_f_op_vec2_f32(global1.a.xz + _wgslsmith_f_op_vec2_f32(-global0.a.xz)));
    global1 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(func_1(global1.b, abs(global2[_wgslsmith_index_u32(global4.b, 31u)])), min(u_input.a, _wgslsmith_div_u32(0u, global1.b)) ^ 11432u), var_0);
}

