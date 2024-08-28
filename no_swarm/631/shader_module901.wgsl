struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec3<i32>(-1i, 0i, -31669i)), Struct_2(vec3<i32>(0i, 16144i, 1i)), Struct_2(vec3<i32>(-8194i, -17752i, -8353i)), Struct_2(vec3<i32>(13943i, -5085i, i32(-2147483648))), Struct_2(vec3<i32>(-86578i, -1i, -7980i)), Struct_2(vec3<i32>(14124i, -1i, i32(-2147483648))), Struct_2(vec3<i32>(33919i, -1i, -24653i)), Struct_2(vec3<i32>(-4384i, 13842i, 11357i)), Struct_2(vec3<i32>(1i, 0i, i32(-2147483648))));

var<private> global1: array<i32, 1>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> i32 {
    global0 = array<Struct_2, 9>();
    let var_0 = Struct_1(41147u, select(i32(-1i) * -_wgslsmith_clamp_i32(u_input.a, u_input.a, 12900i), ~u_input.a, true), select(1u, 26585u, !(all(vec4<bool>(true, false, false, true)) && true)));
    var var_1 = ~vec4<u32>(~(var_0.a | var_0.a) << (1u % 32u), 6470u, var_0.a, ~var_0.a);
    var var_2 = vec4<bool>(any(vec4<bool>(any(vec2<bool>(true, true)), true, true, true)), true, !any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1029f)) + _wgslsmith_f_op_f32(f32(-1f) * -1318f))) < 1911f);
    let var_3 = 43848u;
    return abs(u_input.a);
}

fn func_2(arg_0: i32, arg_1: bool) -> vec4<i32> {
    global0 = array<Struct_2, 9>();
    global1 = array<i32, 1>();
    let var_0 = select(!(!(!(!vec3<bool>(false, arg_1, false)))), vec3<bool>(~1i <= global1[_wgslsmith_index_u32(~(~4294967295u), 1u)], true, true), any(select(vec3<bool>(arg_1, true, arg_1), !select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(true, true, true), true), !(arg_1 && false))));
    global0 = array<Struct_2, 9>();
    var var_1 = Struct_2(vec3<i32>(reverseBits(2147483647i), ~(-32162i), func_3()));
    return vec4<i32>(u_input.a, 1i, -14652i, abs(2147483647i));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_sub_vec4_i32(-min(~_wgslsmith_div_vec4_i32(vec4<i32>(-6383i, u_input.a, var_0.a.x, arg_0.a.x), vec4<i32>(u_input.a, -39829i, -76177i, arg_0.a.x)), vec4<i32>(1i, ~14124i, min(2147483647i, 65436i), -14965i)), _wgslsmith_sub_vec4_i32(firstLeadingBit(-(vec4<i32>(var_0.a.x, u_input.a, u_input.a, global1[_wgslsmith_index_u32(0u, 1u)]) & vec4<i32>(0i, global1[_wgslsmith_index_u32(50988u, 1u)], -1i, 1i))), -select(~vec4<i32>(-1i, global1[_wgslsmith_index_u32(9314u, 1u)], -10536i, -22661i), func_2(0i, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)))));
    let var_2 = _wgslsmith_div_i32(global1[_wgslsmith_index_u32(1u, 1u)] ^ 5543i, arg_0.a.x);
    var var_3 = arg_0;
    let var_4 = var_3.a.x > ~select(abs(var_1.x), -361i, true);
    return global0[_wgslsmith_index_u32(1u, 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, -2092f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f)))));
    let var_1 = func_1(global0[_wgslsmith_index_u32(~(~abs(0u)), 9u)]);
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1112f, var_0.x, -164f, 1565f))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1032f), _wgslsmith_f_op_f32(max(-705f, var_0.x)), -1254f))))));
    let var_3 = vec3<i32>(func_1(func_1(func_1(Struct_2(var_1.a)))).a.x & _wgslsmith_clamp_i32(-abs(u_input.a), ~var_1.a.x & -u_input.a, ~(-28973i)), 28508i & func_1(var_1).a.x, 1i);
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-6793i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.zz, var_0.xy, var_4)))), 33878u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.wxw * var_2.zwx)))), vec4<u32>(7036u, countOneBits(firstLeadingBit(~1u)), 0u, countOneBits(firstTrailingBit(4294967295u))));
}

