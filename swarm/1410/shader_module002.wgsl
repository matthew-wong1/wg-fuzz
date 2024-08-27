struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(4294967295u, 4294967295u, 1u, 4294967295u, 126181u, 1u, 0u, 0u, 0u, 14138u, 12342u, 52638u, 25109u, 47610u, 104709u, 1u, 15086u, 27592u, 4294967295u, 4294967295u, 11232u, 23060u, 0u, 4294967295u, 10418u, 5817u, 0u);

var<private> global1: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> bool {
    global1 = _wgslsmith_f_op_vec4_f32(-arg_1.c.a);
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-global1.x), -1000f, _wgslsmith_f_op_f32(min(1205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1638f - 427f))))));
    var var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(select(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), u_input.a.x, !arg_3), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b, global0[_wgslsmith_index_u32(53207u, 27u)]), ~27608u), u_input.b, 1u), vec4<u32>(reverseBits(u_input.a.x), firstTrailingBit(~0u), global0[_wgslsmith_index_u32(~63251u, 27u)], u_input.b)), ~abs(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)]), u_input.a), vec4<u32>(1u, 30738u, u_input.b, u_input.a.x))));
    let var_2 = ~arg_0;
    let var_3 = abs(firstTrailingBit(_wgslsmith_sub_i32(reverseBits(var_2.x), 2147483647i)));
    return !(abs(countOneBits(~var_1.x)) < 4294967295u);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = vec4<bool>(!(!all(vec3<bool>(false, true, false))), !all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), false, func_3(vec3<i32>(-1i, (-1i << (0u % 32u)) << (1u % 32u), -abs(1i)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-919f, arg_0.a.x, -350f)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 337f, 1000f, 642f) + vec4<f32>(198f, global1.x, 1018f, global1.x))), Struct_1(arg_0.a)), arg_0, true));
    global1 = _wgslsmith_f_op_vec4_f32(ceil(arg_0.a));
    var var_1 = -1703f;
    var var_2 = _wgslsmith_div_f32(-1152f, 693f);
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.ywx)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.yyz, global1.yxw, var_0.x))))), arg_0, Struct_1(arg_0.a));
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1203f)), _wgslsmith_f_op_f32(global1.x - 559f), arg_0.a.x), var_3.b, var_3.b);
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_add_vec2_u32(u_input.a.yx, ~vec2<u32>(u_input.a.x, firstLeadingBit(u_input.a.x) << (~u_input.a.x % 32u)));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + 1179f))))), _wgslsmith_f_op_f32(abs(-412f)), global1.x, _wgslsmith_f_op_f32(-global1.x));
    var var_1 = true;
    var var_2 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(729f, global1.x, -1431f, global1.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2193f, -1000f, global1.x, -601f), vec4<f32>(global1.x, 1000f, -451f, global1.x), true))))))));
    var_1 = !(!all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))));
    return 58384u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 27>();
    let var_0 = ~vec2<u32>(global0[_wgslsmith_index_u32(func_1(), 27u)], max(0u << (global0[_wgslsmith_index_u32(4294967295u, 27u)] % 32u), u_input.b)) << (vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.b), 27u)], min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 9608u, 114088u), vec3<u32>(60013u, global0[_wgslsmith_index_u32(1u, 27u)], 0u)) << (1u % 32u), u_input.a.x)) % vec2<u32>(32u));
    global0 = array<u32, 27>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-105f * global1.x))))))));
    var var_2 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(2147483647i, abs(i32(-1i) * -26424i), ~min(0i, 18309i)), vec3<i32>(1i, 1i, 1i), vec3<bool>(true, true, true)), ~(firstLeadingBit(~vec3<i32>(-8827i, 1i, 77217i)) << (u_input.a.xyz % vec3<u32>(32u))));
}

