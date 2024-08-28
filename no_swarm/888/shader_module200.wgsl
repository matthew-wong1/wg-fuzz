struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_1, 14>;

var<private> global3: array<bool, 27> = array<bool, 27>(false, true, false, true, true, true, true, false, false, false, false, true, false, false, false, false, true, true, true, false, false, true, false, false, false, false, true);

var<private> global4: bool = false;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32, arg_3: vec4<i32>) -> bool {
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    var var_0 = ~vec3<u32>(1u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.a.x, 1u), firstLeadingBit(vec3<u32>(1u, global0[_wgslsmith_index_u32(11801u, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)]))) ^ u_input.a);
    global2 = array<Struct_1, 14>();
    let var_1 = Struct_1(vec2<u32>(~(~0u), abs(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71479u, 14u)], 14u)])), arg_0.b, _wgslsmith_f_op_vec4_f32(-arg_0.c), global3[_wgslsmith_index_u32(23649u, 27u)]);
    return var_1.d;
}

fn func_2() -> f32 {
    global2 = array<Struct_1, 14>();
    let var_0 = !(!global1.x || (false && func_3(global2[_wgslsmith_index_u32(~0u, 14u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(687f, -750f, 1095f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -984f), -vec4<i32>(0i, -1i, 27430i, -2147483647i))));
    global1 = vec3<bool>(false, !global1.x, global1.x);
    global2 = array<Struct_1, 14>();
    global1 = !select(select(vec3<bool>(!var_0, false, true && global1.x), !select(vec3<bool>(global3[_wgslsmith_index_u32(59232u, 27u)], false, false), vec3<bool>(true, true, true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 27u)], global1.x, var_0)), select(select(vec3<bool>(var_0, global3[_wgslsmith_index_u32(u_input.a, 27u)], true), vec3<bool>(global3[_wgslsmith_index_u32(0u, 27u)], true, var_0), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 27u)], true, global1.x)), select(vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(1u, 27u)]), vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35540u, 14u)], 14u)], 27u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 27u)], false), false), select(vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, var_0, false), var_0))), !vec3<bool>(var_0, true, all(vec4<bool>(true, false, true, true))), true);
    return -2420f;
}

fn func_1() -> i32 {
    global2 = array<Struct_1, 14>();
    global0 = array<u32, 14>();
    var var_0 = 0u;
    var var_1 = vec4<bool>(true, true, true, true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(723f, 633f, -1000f) + vec3<f32>(-868f, 2184f, 418f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2()), 1000f, 2969f))));
    return 1i | ~_wgslsmith_sub_i32(firstLeadingBit(~1i), _wgslsmith_clamp_i32(-12376i, 0i, -15159i) | _wgslsmith_mod_i32(-35414i, 51762i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_i32(~select(~(-vec4<i32>(57333i, 23583i, -2694i, 1i)), ~abs(vec4<i32>(0i, -8060i, 1i, -1i)), vec4<bool>(global1.x, true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~4294967295u, 14u)], 27u)], all(vec4<bool>(global1.x, true, global1.x, global1.x)))), ~vec4<i32>(-func_1(), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(14085i, -76945i, -6471i), 1i), -select(-12237i, 0i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 14u)], 27u)]), min(-2147483647i, ~1i)));
    let var_1 = 188f;
    var var_2 = _wgslsmith_add_vec4_i32(firstTrailingBit(var_0), -var_0);
    var var_3 = ~countOneBits(_wgslsmith_mult_vec3_u32(abs(~vec3<u32>(11977u, 4294967295u, 0u)), firstLeadingBit(firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20240u, 14u)], 14u)], 58908u)))));
    global3 = array<bool, 27>();
    var_2 = vec4<i32>(var_2.x, ~max(~var_0.x, -11642i) & var_2.x, var_2.x, -16097i);
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(min(~0u, var_3.x), ~(~u_input.a), var_1, ~firstTrailingBit(_wgslsmith_dot_vec2_u32(select(vec2<u32>(8001u, 11667u), vec2<u32>(71776u, 60166u), vec2<bool>(false, true)), var_3.xy)), -abs(countOneBits(func_1())));
}

