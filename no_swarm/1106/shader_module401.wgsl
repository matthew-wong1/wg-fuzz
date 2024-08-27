struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: Struct_3 = Struct_3(7093u, Struct_1(true, vec4<u32>(55678u, 1u, 1u, 4294967295u), 221i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_3) -> Struct_1 {
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    let var_0 = Struct_1(true, ~global1.b.b, 0i);
    global1 = Struct_3(var_0.b.x, Struct_1(global1.b.a, min(vec4<u32>(u_input.c, var_0.b.x, 38597u, u_input.c), vec4<u32>(arg_0, 1u, arg_1, 35479u) | vec4<u32>(global1.a, 0u, var_0.b.x, arg_0)) ^ vec4<u32>(global1.b.b.x, ~70379u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 38973u), vec2<u32>(u_input.c, arg_1)), arg_0), -2147483647i));
    var var_1 = ~(~arg_2.a);
    return Struct_1(var_0.a, var_0.b, -14143i);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_3 {
    let var_0 = -arg_0.a.c == global1.b.c;
    let var_1 = global1.a;
    var var_2 = func_2(~(~(~(u_input.c >> (8153u % 32u)))), abs(1u), Struct_3(0u, global1.b));
    let var_3 = arg_0.a;
    global0 = array<Struct_2, 24>();
    return Struct_3(arg_1.x, global1.b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec3<bool>) -> bool {
    global0 = array<Struct_2, 24>();
    let var_0 = -1510f;
    global0 = array<Struct_2, 24>();
    let var_1 = func_1(global0[_wgslsmith_index_u32(abs(~4294967295u), 24u)], countOneBits(~firstLeadingBit(vec4<u32>(u_input.c, arg_0.b, arg_1.b.b.x, 1u) >> (vec4<u32>(0u, arg_2.x, u_input.c, u_input.c) % vec4<u32>(32u))))).b.a;
    let var_2 = arg_1.b;
    return !(!arg_0.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(~abs(~4294967295u), global1.b);
    global1 = Struct_3(~global1.a, global1.b);
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    global1 = func_1(global0[_wgslsmith_index_u32(global1.a, 24u)], abs(select(global1.b.b, global1.b.b, !(!global1.b.a))));
    let var_0 = func_1(Struct_2(global1.b, 21521u, global1.b, !vec4<bool>(global1.b.a, !global1.b.a, true, any(vec3<bool>(global1.b.a, false, global1.b.a))), vec3<bool>(func_3(global0[_wgslsmith_index_u32(~u_input.c, 24u)], func_1(Struct_2(global1.b, 0u, global1.b, vec4<bool>(global1.b.a, global1.b.a, global1.b.a, global1.b.a), vec3<bool>(false, false, global1.b.a)), global1.b.b), global1.b.b.zx, vec3<bool>(global1.b.a, global1.b.a, global1.b.a)), false, all(vec4<bool>(true, global1.b.a, global1.b.a, global1.b.a)))), vec4<u32>(~12213u, 63074u, 26415u, 4294967295u));
    let var_1 = 1134f;
    var var_2 = var_1;
    let var_3 = func_1(global0[_wgslsmith_index_u32(reverseBits(~(~u_input.c)), 24u)], vec4<u32>(var_0.a, _wgslsmith_div_u32(~abs(global1.b.b.x), firstTrailingBit(108160u)), 0u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(3869u, 4294967295u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1299f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 780f) - vec2<f32>(111f, var_1)))), vec2<f32>(_wgslsmith_div_f32(431f, var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(334f - 1723f)))), vec4<i32>(var_0.b.c, ~_wgslsmith_sub_i32(~(-2147483647i), ~global1.b.c), _wgslsmith_add_i32(i32(-1i) * -1i, 1i), var_3.b.c), _wgslsmith_dot_vec3_u32(~firstLeadingBit(global1.b.b.wxz), min(firstLeadingBit(func_2(50751u, global1.a, var_0).b.zyw), (var_3.b.b.wyx << (vec3<u32>(var_3.b.b.x, var_0.a, 0u) % vec3<u32>(32u))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.c, 72330u), var_3.b.b.wzy, vec3<u32>(0u, 96130u, 89277u)) % vec3<u32>(32u)))));
}

