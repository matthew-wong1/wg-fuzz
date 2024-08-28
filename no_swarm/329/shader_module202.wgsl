struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_3,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(0u, 13648u, 0u, 43892u, 1u, 113252u, 5825u, 44235u, 67917u, 29377u, 4294967295u, 0u, 1u, 6496u, 93608u, 4294967295u, 12577u, 47376u, 21454u, 4294967295u, 4294967295u);

var<private> global1: vec3<bool>;

var<private> global2: i32;

var<private> global3: Struct_5 = Struct_5(vec4<i32>(-1i, 12148i, 1i, 0i), Struct_1(-617f, false), Struct_3(-712f, -1204f), vec2<f32>(-1094f, 117f), vec3<f32>(-991f, -205f, 456f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<u32>) -> vec4<i32> {
    global2 = ~u_input.d.x;
    var var_0 = Struct_3(_wgslsmith_f_op_f32(711f - _wgslsmith_f_op_f32(step(global3.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2278f * global3.c.b))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-564f)), -1418f));
    global1 = select(select(vec3<bool>(global3.b.b, any(global1.yz) && false, true), select(vec3<bool>(global1.x != true, true, global1.x && true), select(vec3<bool>(false, true, global1.x), select(vec3<bool>(false, true, true), vec3<bool>(global3.b.b, true, true), vec3<bool>(false, global1.x, true)), select(vec3<bool>(true, global1.x, false), vec3<bool>(global3.b.b, global3.b.b, global3.b.b), vec3<bool>(true, false, true))), select(vec3<bool>(false, false, false), vec3<bool>(false, true, global1.x), vec3<bool>(global3.b.b, true, true))), false), !(!vec3<bool>(true, global3.b.b, global1.x | true)), !(!vec3<bool>(true, !global1.x, all(vec3<bool>(true, global1.x, false)))));
    global3 = Struct_5(global3.a, Struct_1(var_0.b, global3.b.b), global3.c, vec2<f32>(global3.b.a, _wgslsmith_div_f32(-2419f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + global3.e.x) - _wgslsmith_f_op_f32(-global3.b.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1235f, var_0.a, 785f)) * vec3<f32>(228f, -186f, var_0.b))))));
    let var_1 = Struct_5(global3.a, global3.b, global3.c, vec2<f32>(1835f, global3.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.e + global3.e), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a, global3.c.b, var_0.a)))), _wgslsmith_f_op_vec3_f32(select(global3.e, vec3<f32>(268f, var_0.b, var_0.a), !vec3<bool>(global1.x, global1.x, true))))));
    return -var_1.a;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: u32) -> i32 {
    let var_0 = !arg_0.e;
    let var_1 = !select(global1.xx, select(global1.xy, select(arg_0.e.zz, !var_0.yy, vec2<bool>(true, true)), var_0.zz), any(var_0.xy));
    let var_2 = vec4<i32>(firstLeadingBit(global3.a.x), i32(-1i) * -1i, -25824i, -17338i);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(-arg_1.d.x))));
    let var_4 = var_2.zzy;
    return -(~((i32(-1i) * -82591i) | ~_wgslsmith_dot_vec3_i32(var_4, vec3<i32>(-16218i, arg_1.a.x, -2147483647i))));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_4) -> bool {
    var var_0 = global3.c;
    var var_1 = func_4(arg_2, Struct_5(func_3(arg_2.c, abs(vec3<u32>(u_input.c, u_input.c, 1u)), ~vec3<u32>(32390u, u_input.a, u_input.c)) | global3.a, Struct_1(arg_2.b, arg_2.c > (0i >> (global0[_wgslsmith_index_u32(u_input.a, 21u)] % 32u))), Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-662f, global3.d.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global3.b.a)), _wgslsmith_f_op_f32(ceil(339f))))), arg_2.a.yy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.b, -689f, arg_0))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_2.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.a, 1306f, -1056f) + vec3<f32>(-668f, arg_2.a.x, global3.c.b)))))), u_input.b.x);
    var var_2 = select(vec3<bool>(!(global3.a.x > -2147483647i), all(select(vec4<bool>(true, arg_1.x, false, true), select(vec4<bool>(true, false, true, global1.x), vec4<bool>(arg_1.x, global3.b.b, arg_2.e.x, true), arg_1.x), !arg_2.e.x)), arg_1.x), vec3<bool>(false, !any(vec4<bool>(false, global3.b.b, global3.b.b, global1.x)), global1.x), vec3<bool>(global1.x, false, arg_1.x && true));
    var_2 = arg_2.e;
    let var_3 = global3.b;
    return false & any(arg_2.e);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: vec4<i32>) -> Struct_1 {
    global0 = array<u32, 21>();
    let var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 * -2330f), -229f)), _wgslsmith_f_op_f32(trunc(global3.c.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(215f - _wgslsmith_f_op_f32(select(-1212f, global3.d.x, global3.b.b)))))), _wgslsmith_f_op_f32(step(-1510f, _wgslsmith_f_op_f32(arg_0 * global3.d.x))), -1i | reverseBits(arg_3.x), arg_0, !(!vec3<bool>(true, global1.x, 1i < global3.a.x)));
    global1 = vec3<bool>(func_2(-1851f, var_0.e.xy, Struct_4(_wgslsmith_f_op_vec3_f32(-var_0.a), arg_1, arg_3.x, -1342f, !vec3<bool>(false, var_0.e.x, false))), ~u_input.c > ~4294967295u, any(var_0.e));
    global1 = var_0.e;
    global3 = Struct_5(firstTrailingBit(reverseBits(arg_3 << ((vec4<u32>(0u, u_input.c, arg_2, arg_2) << (vec4<u32>(24020u, 15764u, 4294967295u, 12280u) % vec4<u32>(32u))) % vec4<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(144f, 1f))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, arg_2, 999u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], arg_2, 0u, 13610u)) != 0u), global3.c, _wgslsmith_f_op_vec2_f32(-var_0.a.zx), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1000f, var_0.b)))));
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    global1 = !vec3<bool>(false, any(vec3<bool>(global3.b.b & false, true, global3.b.b && global1.x)), true);
    var var_1 = global3.a.zxz;
    let var_2 = 41567i;
    var var_3 = 25821u;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1271f * global3.b.a)))), true);
    let var_5 = func_1(global3.c.a, _wgslsmith_f_op_f32(round(var_4.a)), 1u, abs(~(-_wgslsmith_sub_vec4_i32(global3.a, vec4<i32>(-2147483647i, -2147483647i, 1i, -17949i)))));
    var_4 = var_5;
    let var_6 = vec2<bool>(false, true & any(vec3<bool>(var_4.b, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~abs(countOneBits(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(5797u, 21u)], 44159u))), 21u)], abs(firstLeadingBit(vec3<u32>(u_input.a, u_input.b.x, 1548u)) >> ((vec3<u32>(global0[_wgslsmith_index_u32(75532u, 21u)], 25451u, u_input.b.x) | vec3<u32>(0u, u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)])) % vec3<u32>(32u))) >> (~(~(~vec3<u32>(12764u, u_input.c, 4294967295u))) % vec3<u32>(32u)));
}

