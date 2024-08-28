struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(1u, 0u, 0u), vec3<u32>(37829u, 0u, 10298u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(1u, 48212u, 0u), vec3<u32>(109362u, 13577u, 85048u), vec3<u32>(84616u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 59623u), vec3<u32>(85293u, 4294967295u, 63663u), vec3<u32>(64038u, 26501u, 23548u), vec3<u32>(4294967295u, 4294967295u, 9373u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(23764u, 16189u, 23651u), vec3<u32>(4294967295u, 1730u, 4294967295u), vec3<u32>(8104u, 62923u, 52799u));

var<private> global2: vec3<f32> = vec3<f32>(824f, 2178f, 1135f);

var<private> global3: array<f32, 4> = array<f32, 4>(487f, 1145f, -361f, 361f);

var<private> global4: array<Struct_1, 13>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = global4[_wgslsmith_index_u32(59014u, 13u)];
    var var_1 = Struct_1(0u, 4294967295u, ~(_wgslsmith_mod_u32(var_0.a, ~var_0.a) & _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 5308u, var_0.d, 75682u), vec4<u32>(var_0.a, u_input.a, u_input.a, 20436u)), u_input.b | u_input.a)), var_0.a);
    var var_2 = u_input.d.x;
    global3 = array<f32, 4>();
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1441f))) < -169f;
    return Struct_1(firstLeadingBit(~4294967295u), u_input.a, ~(~(~0u | _wgslsmith_sub_u32(var_1.c, 64822u))), ~u_input.b);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    global0 = true;
    global0 = any(vec3<bool>(true, false, false & select(any(vec4<bool>(false, true, true, true)), true, all(vec3<bool>(false, false, true)))));
    let var_0 = 4294967295u;
    var var_1 = func_2();
    return firstTrailingBit(~arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(4294967295u, 13u)];
    var var_1 = Struct_1(var_0.c, ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a, u_input.a, var_0.c), vec4<u32>(59130u, var_0.c, var_0.a, 3079u))), u_input.a, 4294967295u);
    var var_2 = func_1(global4[_wgslsmith_index_u32(u_input.b, 13u)], vec2<u32>(1u, select(~1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(65933u, u_input.a, var_0.a, var_1.b), vec4<u32>(96167u, var_0.a, 4294967295u, 4294967295u)), ~20367u), all(vec3<bool>(false, true, true)))), global4[_wgslsmith_index_u32(~4294967295u, 13u)]);
    var var_3 = vec4<f32>(-745f, global2.x, _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-global2.x));
    global0 = u_input.c.x >= u_input.c.x;
    global3 = array<f32, 4>();
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(13457u, 4u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -369f)))))), _wgslsmith_f_op_f32(-804f - global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.c & 21u, 9225u), 4u)])));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(289f)), abs(_wgslsmith_sub_i32(u_input.c.x, _wgslsmith_div_i32(-5156i, u_input.d.x))), var_0.c, abs(-(~u_input.d.x) >> (0u % 32u)), 1i);
}

