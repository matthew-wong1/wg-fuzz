struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: i32) -> bool {
    var var_0 = ~_wgslsmith_add_u32(abs(u_input.a.x), ~(~55154u)) > u_input.a.x;
    global0 = array<Struct_2, 27>();
    let var_1 = u_input.a.wyx;
    let var_2 = global0[_wgslsmith_index_u32(var_1.x, 27u)];
    var var_3 = ~_wgslsmith_div_u32(58626u, abs(countOneBits(var_2.d.a.x)));
    return true;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~vec3<u32>(u_input.a.x, 46267u, _wgslsmith_dot_vec3_u32(arg_0.a, ~(u_input.a.yzx & u_input.a.zzx)));
    global0 = array<Struct_2, 27>();
    var var_1 = Struct_1(vec3<u32>(~77858u, 108519u, _wgslsmith_mult_u32(arg_0.a.x, ~var_0.x) & arg_0.a.x));
    var var_2 = select(select(vec3<bool>(true, true, true), vec3<bool>(func_3(-1000f, vec2<bool>(true, true), 2147483647i), all(vec3<bool>(true, true, true)), true), select(vec3<bool>(true, false, any(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), true)), vec3<bool>(true, true, !(!all(vec2<bool>(false, true)))), vec3<bool>(true, true, true));
    let var_3 = u_input.a.x;
    return arg_0;
}

fn func_1(arg_0: vec2<f32>) -> vec2<u32> {
    global0 = array<Struct_2, 27>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 2195f, 609f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(528f, -1801f, var_0.x, 1258f))))))));
    let var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 27u)];
    let var_3 = func_2(var_2.d);
    return vec2<u32>(~(~(~abs(1u))), 0u >> (~_wgslsmith_dot_vec2_u32(u_input.a.zz >> (vec2<u32>(0u, var_3.a.x) % vec2<u32>(32u)), ~var_3.a.xx) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = array<Struct_2, 27>();
    var var_1 = _wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(29649i, 38407i, 392i, -1i), vec4<i32>(abs(43437i), _wgslsmith_dot_vec2_i32(vec2<i32>(46419i, -2147483647i), vec2<i32>(-1i, 2147483647i)), ~19533i, _wgslsmith_add_i32(-1i, 16755i)))), 38717i);
    var var_2 = 5914u;
    let var_3 = vec3<i32>(2147483647i, 32912i, -45361i);
    let var_4 = ~_wgslsmith_dot_vec2_u32(~u_input.a.wy, max(u_input.a.wx, func_1(vec2<f32>(-877f, 1079f)) ^ select(vec2<u32>(0u, 25997u), vec2<u32>(u_input.a.x, 0u), vec2<bool>(true, true))));
    var_2 = ~u_input.a.x;
    var var_5 = u_input.a.wy;
    let x = u_input.a;
    s_output = StorageBuffer(-1258f, vec2<u32>(~(~var_4 & abs(1u)), reverseBits(var_5.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-130f, -1267f, 123f) * vec3<f32>(284f, 128f, 1218f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1051f, -248f, -588f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-561f, 1698f, 1000f) * vec3<f32>(-263f, 828f, -818f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-515f, -2060f, 1407f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(587f, 1795f, 726f), vec3<f32>(1944f, -1000f, 1001f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1560f, 2061f, 490f) * vec3<f32>(872f, -842f, -616f))))), _wgslsmith_add_vec4_u32(u_input.a, u_input.a));
}

