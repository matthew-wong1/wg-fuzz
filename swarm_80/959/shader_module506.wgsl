struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 15> = array<bool, 15>(false, true, true, false, true, false, false, false, false, false, false, false, false, true, false);

var<private> global2: vec4<u32> = vec4<u32>(3545u, 4294967295u, 31661u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    global1 = array<bool, 15>();
    var var_0 = !select(select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(global0.c.c.x, 15u)], true, global0.c.a), vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(global2.x, 15u)]), vec3<bool>(true, true, true), true || global1[_wgslsmith_index_u32(0u, 15u)]), select(select(vec3<bool>(false, global1[_wgslsmith_index_u32(global2.x, 15u)], true), vec3<bool>(false, true, global1[_wgslsmith_index_u32(0u, 15u)]), true), vec3<bool>(false, true, global0.c.a), !vec3<bool>(global0.c.a, global0.c.a, false)), max(global0.a.x, -2147483647i) < -global0.a.x), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), !vec3<bool>(global0.c.a, all(vec2<bool>(global0.c.a, global1[_wgslsmith_index_u32(global0.c.c.x, 15u)])), true));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1384f, global0.c.b, global0.b.x, _wgslsmith_f_op_f32(-global0.b.x)))), vec4<f32>(-336f, _wgslsmith_f_op_f32(trunc(global0.b.x)), global0.c.b, _wgslsmith_f_op_f32(-global0.c.d)), true)));
    global0 = Struct_2(~countOneBits(vec3<i32>(2147483647i ^ u_input.b.x, ~(-67713i), -28480i)), _wgslsmith_f_op_vec3_f32(-var_1.xyw), Struct_1(!global1[_wgslsmith_index_u32(~14203u, 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-348f, var_1.x)) + _wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)))), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, global2.x, global2.x), vec3<u32>(1u, global0.c.c.x, global0.c.c.x))), var_1.x, vec3<f32>(893f, _wgslsmith_div_f32(-681f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1509f))));
    var var_2 = Struct_2(-vec3<i32>(abs(countOneBits(global0.a.x)), ~0i, reverseBits(countOneBits(global0.a.x))), var_1.zwz, Struct_1(!global1[_wgslsmith_index_u32(14240u, 15u)] & any(select(vec4<bool>(global1[_wgslsmith_index_u32(global0.c.c.x, 15u)], true, false, global1[_wgslsmith_index_u32(0u, 15u)]), vec4<bool>(global0.c.a, true, global0.c.a, global1[_wgslsmith_index_u32(global0.c.c.x, 15u)]), global1[_wgslsmith_index_u32(12907u, 15u)])), _wgslsmith_f_op_f32(f32(-1f) * -572f), firstLeadingBit(vec3<u32>(23664u, _wgslsmith_mult_u32(global2.x, u_input.a.x), global2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1494f)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.c.b, 1066f, global0.b.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b.x, global0.b.x, global0.b.x), var_1.wwz, vec3<bool>(true, false, global1[_wgslsmith_index_u32(global0.c.c.x, 15u)])))), _wgslsmith_f_op_vec3_f32(global0.c.e - var_1.yyx))));
    return ~global2.yxx;
}

fn func_2() -> bool {
    var var_0 = Struct_2(countOneBits(max(_wgslsmith_add_vec3_i32(u_input.b.xyz, vec3<i32>(2147483647i, 9473i, global0.a.x)), global0.a)) >> ((select(select(global0.c.c, global0.c.c, vec3<bool>(true, true, global0.c.a)), global2.zxx, select(vec3<bool>(true, false, false), vec3<bool>(false, true, global0.c.a), true)) | func_3()) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -2341f), global0.c.d)) - _wgslsmith_f_op_vec3_f32(-global0.c.e)), global0.c);
    var var_1 = ~countOneBits(~vec4<u32>(4294967295u, 1u, global2.x, u_input.a.x)) << ((vec4<u32>(1u, _wgslsmith_add_u32(4294967295u, u_input.c), max(global2.x, ~1u), _wgslsmith_mod_u32(var_0.c.c.x, max(global2.x, 0u))) >> (abs(min(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global2.x, global2.x, 9112u), vec4<u32>(74326u, 41479u, var_0.c.c.x, u_input.c)), ~vec4<u32>(102109u, 0u, global0.c.c.x, 4294967295u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    return any(!vec3<bool>(global0.c.a, !all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global0.c.a, global0.c.a)), all(vec2<bool>(true, true))));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    global2 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.c.c.x, _wgslsmith_clamp_u32(u_input.a.x, 0u, global0.c.c.x) << (abs(4859u) % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(26748u, u_input.c, 97477u), vec3<u32>(22977u, u_input.a.x, global2.x)), _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(global0.c.c, global0.c.c))), select(vec4<u32>(global2.x, u_input.c, global0.c.c.x, 0u) >> ((vec4<u32>(60003u, global2.x, global0.c.c.x, global2.x) | vec4<u32>(30758u, u_input.a.x, 60568u, 72167u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(global2.x, 1u, 4294967295u, 48276u), firstTrailingBit(vec4<u32>(global2.x, u_input.a.x, global2.x, u_input.a.x))), func_2()), vec4<u32>(1u, ~0u, ~u_input.c, global0.c.c.x) & firstTrailingBit(vec4<u32>(0u, global2.x, global0.c.c.x, 1u) | vec4<u32>(global2.x, 17393u, 12670u, 121116u)));
    let var_0 = _wgslsmith_add_u32(global2.x, global0.c.c.x & 38068u);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = Struct_3(false, var_1);
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 900f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b.x))), var_1))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-155f, global0.c.e.x, var_2.b) + vec3<f32>(-1482f, global0.b.x, -741f))))))), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = countOneBits(~abs(vec4<u32>(4294967295u, min(global2.x, global0.c.c.x), 1u, global2.x << (global0.c.c.x % 32u))));
    global2 = vec4<u32>(0u, 1u, u_input.a.x, ~1u);
    let x = u_input.a;
    s_output = func_1(global0.b.x);
}

