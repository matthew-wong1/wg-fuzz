struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(35746u, 0u), vec2<u32>(26891u, 1u), vec2<u32>(70167u, 1u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    var var_0 = 4322u;
    global0 = array<vec2<f32>, 27>();
    var var_1 = Struct_1(1u, _wgslsmith_f_op_f32(max(-266f, _wgslsmith_f_op_f32(-arg_0.x))), global1.c);
    var_0 = ~63122u;
    global2 = array<vec2<u32>, 3>();
    return u_input.b.x;
}

fn func_2() -> u32 {
    global0 = array<vec2<f32>, 27>();
    global2 = array<vec2<u32>, 3>();
    global0 = array<vec2<f32>, 27>();
    global2 = array<vec2<u32>, 3>();
    global1 = Struct_1(~1u, _wgslsmith_f_op_f32(-global1.b), global1.c);
    return ~u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 27>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -435f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.b, -504f, true)) + _wgslsmith_f_op_f32(-global1.b))), 1000f));
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.x, 922f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global1.b, global1.b)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.b, -329f, 1000f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2551f, var_0.x, global1.b))) * vec3<f32>(global1.b, _wgslsmith_f_op_f32(-var_0.x), -354f)))));
    var var_1 = _wgslsmith_sub_vec3_i32(u_input.c.zwy, firstLeadingBit(u_input.c.wyx)) << (vec3<u32>(0u, global1.a, u_input.d) % vec3<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(36161u, u_input.a, u_input.d, u_input.b.x), vec4<u32>(0u, global1.a, 25813u, 4294967295u), vec4<bool>(true, global1.c, global1.c, true)), abs(vec4<u32>(26320u, 19648u, u_input.b.x, 1u))), ~select(vec4<u32>(u_input.d, 1u, global1.a, 5427u), vec4<u32>(u_input.a, 16292u, 9623u, u_input.a), vec4<bool>(global1.c, global1.c, false, true))), vec4<u32>(_wgslsmith_mult_u32(26087u, _wgslsmith_add_u32(u_input.a, 912u)), 37173u, global1.a, countOneBits(~0u))), -596f, global1.c);
    global0 = array<vec2<f32>, 27>();
    var var_3 = _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(~var_2.a ^ 43042u, func_1(vec4<f32>(210f, -639f, global1.b, 119f)), _wgslsmith_div_u32(59406u & global1.a, _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(var_2.a, 3u)], vec2<u32>(30002u, 690u))))), vec3<u32>(countOneBits(_wgslsmith_sub_u32(global1.a, global1.a)), u_input.b.x, func_2()) | max(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 11487u, global1.a), vec3<u32>(4294967295u, 41407u, 53917u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(5827u, 4294967295u, var_2.a), vec3<u32>(global1.a, u_input.a, global1.a)), vec3<u32>(26991u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 42988u))));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~((~35194u ^ func_1(vec4<f32>(global1.b, 578f, 557f, -1000f))) & ~1u), 3u)], 420f);
}

