struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

var<private> global1: Struct_2 = Struct_2(457f, 4294967295u, 1i, vec3<f32>(-896f, -109f, -863f), Struct_1(true));

var<private> global2: array<bool, 15>;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false));

var<private> global4: vec3<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    let var_0 = global4.zy;
    var var_1 = countOneBits(select(vec4<u32>(min(global1.b ^ 4294967295u, _wgslsmith_div_u32(u_input.d, u_input.c)), 1u, global1.b, 68842u), ~vec4<u32>(firstLeadingBit(u_input.d), ~global1.b, u_input.d, ~u_input.c), !(-20132i <= u_input.e.x)));
    global1 = Struct_2(global1.a, ~firstTrailingBit(var_1.x & var_1.x), 0i, global1.d, Struct_1(global4.x));
    let var_2 = global3[_wgslsmith_index_u32(~min(var_1.x, _wgslsmith_add_u32(_wgslsmith_div_u32(0u, 10854u), u_input.d & global1.b)) | _wgslsmith_dot_vec2_u32(min(var_1.zw, ~(~vec2<u32>(u_input.c, var_1.x))), vec2<u32>(~_wgslsmith_mult_u32(u_input.d, 2444u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(55884u, var_1.x), ~50142u))), 5u)];
    var var_3 = var_2.a;
    return 1u;
}

fn func_2(arg_0: Struct_2) -> i32 {
    let var_0 = vec3<u32>(func_3(), firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(14428u, 0u, 4294967295u), vec3<u32>(u_input.c, 13909u, arg_0.b)) ^ ~42530u, ~countOneBits(global1.b))), ~u_input.c);
    global0 = array<vec2<i32>, 9>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-global1.a), 66584u, 0i, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.d.x))), global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1130f))))), global1.e);
    var var_2 = -(~(-(~_wgslsmith_mult_i32(arg_0.c, -2147483647i))));
    let var_3 = _wgslsmith_add_vec4_u32(~(~(vec4<u32>(global1.b, u_input.d, var_1.b, 1u) & vec4<u32>(44375u, 22049u, 4294967295u, 0u))) | vec4<u32>(arg_0.b, u_input.d, 0u, arg_0.b), vec4<u32>(_wgslsmith_mult_u32(~(~44783u), max(~83204u, var_0.x & u_input.a)), global1.b, func_3(), _wgslsmith_dot_vec4_u32(firstTrailingBit(max(vec4<u32>(77092u, global1.b, 28528u, var_1.b), vec4<u32>(global1.b, 0u, 48355u, var_0.x))), firstLeadingBit(abs(vec4<u32>(121981u, global1.b, var_1.b, global1.b))))));
    return ~_wgslsmith_dot_vec2_i32(-abs(~vec2<i32>(0i, 37243i)), ~(~(~vec2<i32>(arg_0.c, u_input.b.x))));
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_2(global1.a, abs(countOneBits(12294u)), func_2(Struct_2(277f, ~abs(global1.b), 1i, global1.d, global1.e)), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), 234f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.d.x * 811f), _wgslsmith_f_op_f32(267f * _wgslsmith_f_op_f32(f32(-1f) * -605f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a, global1.d.x)) + global1.a)), Struct_1(true));
    global0 = array<vec2<i32>, 9>();
    let var_1 = Struct_1(!all(global4.xx));
    var var_2 = var_0.e;
    global3 = array<Struct_1, 5>();
    return StorageBuffer(_wgslsmith_clamp_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(42773i, -29863i, -13906i) << (vec3<u32>(global1.b, 0u, var_0.b) % vec3<u32>(32u)), vec3<i32>(-2749i, -1i, -1i), vec3<i32>(global1.c, global1.c, 6207i) ^ u_input.b.yyz)), u_input.b.zyx >> (~countOneBits(vec3<u32>(global1.b, u_input.d, u_input.c)) % vec3<u32>(32u)), abs(vec3<i32>(var_0.c, u_input.e.x << (global1.b % 32u), 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 9>();
    global3 = array<Struct_1, 5>();
    global2 = array<bool, 15>();
    let x = u_input.a;
    s_output = func_1();
}

