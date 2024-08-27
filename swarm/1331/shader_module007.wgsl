struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: Struct_1 = Struct_1(1004f, vec4<bool>(false, true, true, false));

var<private> global2: Struct_4 = Struct_4(1i, Struct_3(760f, Struct_1(-978f, vec4<bool>(false, true, false, true))), Struct_1(-1074f, vec4<bool>(true, true, true, false)), Struct_2(76571u, vec4<bool>(false, true, false, true), vec2<i32>(1i, 0i)));

var<private> global3: Struct_4 = Struct_4(-34968i, Struct_3(1651f, Struct_1(116f, vec4<bool>(false, true, false, true))), Struct_1(-284f, vec4<bool>(false, false, false, true)), Struct_2(4294967295u, vec4<bool>(false, false, false, false), vec2<i32>(1i, -2558i)));

var<private> global4: vec3<u32> = vec3<u32>(4294967295u, 1u, 4294967295u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> Struct_4 {
    let var_0 = countOneBits(global2.d.a);
    var var_1 = 1f;
    let var_2 = _wgslsmith_dot_vec3_i32(~u_input.b.xyw, vec3<i32>(abs(_wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, 9994i), ~global2.d.c.x)), -1i, 1i));
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    return Struct_4(2147483647i, global2.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), vec4<bool>(true, all(vec4<bool>(global2.d.b.x, true, false, false)), all(global2.d.b.xy), global3.b.b.b.x)), Struct_2(firstTrailingBit(~4294967295u), select(select(global2.c.b, select(vec4<bool>(global3.c.b.x, global3.d.b.x, global1.b.x, global1.b.x), global3.c.b, true), global1.b.x), vec4<bool>(!global2.b.b.b.x, false, global1.b.x, true), vec4<bool>(true, false, true, global2.b.b.b.x)), ~(~min(vec2<i32>(u_input.c.x, global0[_wgslsmith_index_u32(global3.d.a, 29u)]), vec2<i32>(-19197i, global3.a)))));
}

fn func_1() -> u32 {
    var var_0 = global1.b.x;
    let var_1 = func_2();
    global1 = var_1.b.b;
    let var_2 = global2.c.a;
    global2 = func_2();
    return global4.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.d;
    global4 = vec3<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(631u, 4294967295u, global2.d.a, global2.d.a), ~vec4<u32>(u_input.d, global2.d.a, 0u, var_0.a), any(var_0.b.yw)) << (~(~vec4<u32>(var_0.a, global3.d.a, global4.x, var_0.a)) % vec4<u32>(32u)), vec4<u32>(66712u, 0u, var_0.a, ~u_input.d) & ~vec4<u32>(global4.x, global4.x, 1u, 10110u)), ~_wgslsmith_mult_u32(global2.d.a, var_0.a & u_input.d) ^ ~(~_wgslsmith_sub_u32(global3.d.a, 1u)), ~func_1());
    let var_1 = global3.b;
    global1 = func_2().c;
    let var_2 = func_2().c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, ~_wgslsmith_add_vec4_u32(firstLeadingBit(countOneBits(vec4<u32>(var_0.a, 49435u, global2.d.a, 1u))), ~vec4<u32>(global2.d.a, 0u, u_input.d, var_0.a)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(firstLeadingBit(vec4<u32>(global3.d.a, 4294967295u, 0u, 4294967295u))), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d, var_0.a, global3.d.a, u_input.d), vec4<u32>(global2.d.a, 1u, var_0.a, var_0.a)), vec4<u32>(38336u, var_0.a, ~9110u, 1u)), countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(34776u, 41595u, 4294967295u, var_0.a), vec4<u32>(global3.d.a, var_0.a, 1u, u_input.d)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.a, var_2.a, 205f, _wgslsmith_f_op_f32(-var_2.a))));
}

