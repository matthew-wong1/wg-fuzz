struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 15> = array<i32, 15>(-10618i, 0i, -3261i, 18783i, 29778i, -1405i, i32(-2147483648), 0i, 56747i, 35225i, -10902i, i32(-2147483648), -1549i, -77474i, 14169i);

var<private> global2: array<f32, 17>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec3<f32> {
    global1 = array<i32, 15>();
    let var_0 = (~vec3<u32>(1124u, u_input.c, u_input.c | 3519u) & select(countOneBits(countOneBits(vec3<u32>(u_input.c, u_input.c, u_input.c))), vec3<u32>(1u, ~u_input.c, u_input.c ^ u_input.c), vec3<bool>(176f < global2[_wgslsmith_index_u32(31364u, 17u)], true, u_input.d.x == u_input.b))) >> (~vec3<u32>(33965u, _wgslsmith_mult_u32(min(39219u, 4294967295u), u_input.c), 56734u) % vec3<u32>(32u));
    var var_1 = Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(false, true, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    var var_2 = -28735i;
    global1 = array<i32, 15>();
    return vec3<f32>(-1335f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))), arg_1.a.x);
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(u_input.b, Struct_2(vec3<f32>(505f, -1146f, 526f))))))));
    var var_1 = Struct_1(!(!vec3<bool>(true, any(vec2<bool>(false, false)), true)));
    global1 = array<i32, 15>();
    let var_2 = 19660i;
    global0 = 61928u;
    return Struct_1(!select(var_1.a, vec3<bool>(!var_1.a.x, all(var_1.a.yx), u_input.c > 13477u), ~u_input.c <= (u_input.c ^ u_input.c)));
}

fn func_1() -> u32 {
    var var_0 = func_2(573f);
    var var_1 = u_input.c;
    var var_2 = ~(~(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 6868u), vec2<u32>(u_input.c, 4294967295u)), 0u, u_input.c)));
    var var_3 = _wgslsmith_div_f32(-334f, global2[_wgslsmith_index_u32(27312u, 17u)]);
    var_0 = func_2(global2[_wgslsmith_index_u32(firstLeadingBit(var_2.x), 17u)]);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(func_1(), ~u_input.c, 0u << (~firstLeadingBit(~u_input.c) % 32u));
    global1 = array<i32, 15>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 1u), ~vec3<u32>(u_input.c, u_input.c, 44066u)) | 45246u, 17u)], global2[_wgslsmith_index_u32(19902u, 17u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(26299u | var_0.x, 17u)]), -2439f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1043f, global2[_wgslsmith_index_u32(u_input.c, 17u)], -971f, 291f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1312u, 17u)], global2[_wgslsmith_index_u32(u_input.c, 17u)], global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(75736u, 17u)]) - vec4<f32>(-944f, global2[_wgslsmith_index_u32(10342u, 17u)], -1000f, global2[_wgslsmith_index_u32(4294967295u, 17u)])), u_input.c <= 58729u))))));
    global2 = array<f32, 17>();
    global0 = firstLeadingBit(func_1());
    var var_2 = -vec2<i32>(45499i, _wgslsmith_mult_i32(firstTrailingBit(~(-25672i)), u_input.a.x << ((1u & u_input.c) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~global1[_wgslsmith_index_u32(~firstLeadingBit(0u), 15u)], 62668u, 4294967295u, 1i);
}

