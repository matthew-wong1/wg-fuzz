struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<i32, 11>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    global0 = -1i;
    global0 = ~63308i;
    var var_0 = arg_0;
    return !vec4<bool>(true, select((u_input.e ^ 0i) >= min(0i, 1i), true, true), ~u_input.c != firstLeadingBit(1u), true);
}

fn func_2() -> i32 {
    global1 = array<i32, 11>();
    return u_input.e | abs(0i);
}

fn func_3() -> bool {
    global0 = 2147483647i | -u_input.e;
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(982f - 574f) - _wgslsmith_f_op_f32(f32(-1f) * -518f)))))) <= -1291f;
    let var_1 = func_1(_wgslsmith_sub_i32(~(~(-2147483647i) & _wgslsmith_sub_i32(-7150i, u_input.e)), ~5128i)).xy;
    global1 = array<i32, 11>();
    var var_2 = Struct_1(vec3<i32>(abs(7204i) & -_wgslsmith_add_i32(u_input.a, 1i), func_2(), u_input.a), ~max(select(~vec4<u32>(u_input.d.x, u_input.c, u_input.d.x, 4294967295u), vec4<u32>(0u, u_input.d.x, 0u, u_input.c) >> (vec4<u32>(u_input.b.x, 3870u, u_input.d.x, u_input.b.x) % vec4<u32>(32u)), !var_1.x), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(0u, u_input.c)), 984u, ~u_input.c, u_input.b.x | 4294967295u)));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1376f, 153f, -447f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1009f, -263f, 146f) - _wgslsmith_div_vec3_f32(vec3<f32>(-559f, 184f, -430f), vec3<f32>(-609f, -330f, 1289f))))))));
    let var_1 = global1[_wgslsmith_index_u32(reverseBits(~_wgslsmith_sub_u32(select(54994u, 3639u, all(vec3<bool>(true, false, true))), u_input.b.x)), 11u)];
    var var_2 = !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), false), any(vec4<bool>(false, false, false, false))), true), vec4<bool>(!any(vec3<bool>(false, true, true)), all(vec4<bool>(false, true, false, true)), true, true), func_1(_wgslsmith_add_i32(i32(-1i) * -1i, -2147483647i)));
    global1 = array<i32, 11>();
    var var_3 = ~4294967295u;
    let var_4 = Struct_1(~vec3<i32>(func_2(), 2147483647i, global1[_wgslsmith_index_u32(24653u, 11u)] & -u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(46620u, 44233u, _wgslsmith_add_u32(0u >> (u_input.c % 32u), ~55245u), min(77150u << (u_input.d.x % 32u), u_input.c)), firstLeadingBit(select(vec4<u32>(0u, u_input.b.x, 4294967295u, u_input.c), vec4<u32>(u_input.c, 43284u, 25745u, u_input.b.x), false))));
    var_0 = vec3<f32>(-1000f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1128f, var_0.x)))) * _wgslsmith_f_op_f32(var_0.x - var_0.x)));
    var var_5 = false;
    var var_6 = vec3<bool>(true, var_2.x, func_3());
    let x = u_input.a;
    s_output = StorageBuffer(647f, abs(firstTrailingBit(abs(var_4.a.xy))) ^ var_4.a.xy, var_4.a.x << (u_input.b.x % 32u), _wgslsmith_mult_i32(78756i << (abs(var_4.b.x) % 32u), ~(var_4.a.x ^ (i32(-1i) * -16618i))));
}

