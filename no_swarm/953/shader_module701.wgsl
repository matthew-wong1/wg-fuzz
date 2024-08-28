struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 26>;

var<private> global3: array<f32, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = ~max(_wgslsmith_mult_u32(~u_input.d.x, global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 70088u, global0.x), ~vec3<u32>(2840u, u_input.d.x, 1u)) | global0.x);
    var var_1 = 1u;
    let var_2 = abs(vec2<i32>(0i, abs(~37240i)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1859f)), 1651f)));
    var var_3 = abs(0u);
    return -11307i;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(-37902i, arg_2.x);
    var var_1 = Struct_1(vec3<i32>(0i, u_input.a.x | ~12613i, max(-1i, -25166i)) >> (vec3<u32>(~14242u, _wgslsmith_div_u32(global0.x, ~global0.x), u_input.d.x) % vec3<u32>(32u)));
    let var_2 = countOneBits(~_wgslsmith_clamp_vec3_u32(min(~vec3<u32>(u_input.c.x, 4294967295u, 4294967295u), vec3<u32>(global0.x, 1u, u_input.d.x)), vec3<u32>(u_input.c.x, 16954u, ~global0.x), ~vec3<u32>(4294967295u, 48340u, 4294967295u) >> (vec3<u32>(4294967295u, 0u, global0.x) % vec3<u32>(32u))));
    var var_3 = 20668u;
    var_1 = arg_1;
    return Struct_1(vec3<i32>(u_input.a.x, func_2(arg_1), _wgslsmith_mult_i32(-(~30518i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, -38827i, arg_0.a.x), select(vec4<i32>(var_0, -18442i, arg_0.a.x, -5616i), vec4<i32>(var_1.a.x, arg_0.a.x, u_input.a.x, -2147483647i), vec4<bool>(true, false, false, true))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    var var_0 = arg_0;
    var var_1 = -1000f;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1218f))));
    let var_2 = -897f;
    let var_3 = func_3(global2[_wgslsmith_index_u32(global0.x, 26u)], arg_0, vec2<i32>(func_2(global2[_wgslsmith_index_u32(u_input.d.x, 26u)]), arg_0.a.x));
    return 61294u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~(u_input.c.x | u_input.c.x)) | func_1(Struct_1(select(vec3<i32>(0i, 2762i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(true, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true)));
    var var_1 = func_3(Struct_1(reverseBits(abs(vec3<i32>(u_input.a.x, u_input.a.x, -1i)))), global2[_wgslsmith_index_u32(var_0, 26u)], _wgslsmith_add_vec2_i32(vec2<i32>(~firstLeadingBit(u_input.a.x), u_input.a.x), -_wgslsmith_clamp_vec2_i32(firstTrailingBit(u_input.a), u_input.a, func_3(Struct_1(vec3<i32>(-8898i, u_input.a.x, u_input.b)), Struct_1(vec3<i32>(15537i, u_input.b, u_input.b)), vec2<i32>(u_input.a.x, u_input.a.x)).a.zz)));
    var_1 = Struct_1((~(~vec3<i32>(var_1.a.x, var_1.a.x, -4979i)) ^ var_1.a) & vec3<i32>(-2147483647i, u_input.a.x, _wgslsmith_sub_i32(var_1.a.x, firstLeadingBit(-2147483647i))));
    global3 = array<f32, 16>();
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.c, firstTrailingBit(vec2<u32>(global0.x, global0.x))), 16u)];
    let var_3 = 4294967295u;
    let var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3[_wgslsmith_index_u32(global0.x, 16u)], global3[_wgslsmith_index_u32(18725u, 16u)], global3[_wgslsmith_index_u32(0u, 16u)], -413f)))))))));
    var var_5 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2147483647i, ~(~var_5.x), -_wgslsmith_mult_i32(2147483647i | var_5.x, min(2147483647i, -9129i)), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(var_0, 16u)], global3[_wgslsmith_index_u32(65338u, 16u)])), _wgslsmith_f_op_f32(-var_4.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(409f))))), ~(abs(var_1.a.x) >> (reverseBits(20972u) % 32u)));
}

