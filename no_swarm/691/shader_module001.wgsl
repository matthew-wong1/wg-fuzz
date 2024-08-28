struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4>;

var<private> global1: array<i32, 7>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    var var_0 = ~(~(~vec2<u32>(u_input.a, arg_0)));
    let var_1 = true;
    global1 = array<i32, 7>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-613f * _wgslsmith_f_op_f32(arg_1 - 168f)))) + arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))))), -1063f, _wgslsmith_div_f32(765f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-146f * arg_1)))));
    global1 = array<i32, 7>();
    return !vec4<bool>(arg_2.b.x, u_input.b != u_input.b, (u_input.a <= 37749u) & ((var_2.x <= -562f) & true), true);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(max(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, u_input.a)), ~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(1u & u_input.a, ~u_input.a)), abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 27973u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), firstTrailingBit(vec2<u32>(u_input.a, 4294967295u)))), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(7045u, 4294967295u), reverseBits(vec2<u32>(0u, u_input.a))), vec2<u32>(1u, 1u))), vec4<bool>(false, true, true, true));
    return var_0.b;
}

fn func_1(arg_0: vec4<f32>) -> vec4<bool> {
    let var_0 = Struct_1(vec2<u32>(u_input.a, u_input.a), vec4<bool>(true, true, false, !all(func_2(26736u, arg_0.x, Struct_1(vec2<u32>(u_input.a, u_input.a), vec4<bool>(false, false, true, false)), true))));
    global0 = array<vec4<f32>, 4>();
    global0 = array<vec4<f32>, 4>();
    let var_1 = var_0.b.zz;
    var var_2 = u_input.b;
    return !select(func_3(), var_0.b, vec4<bool>(min(global1[_wgslsmith_index_u32(28035u, 7u)], u_input.b) != max(u_input.b, 12738i), var_1.x, false, var_0.b.x && var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_u32(select(_wgslsmith_div_u32(min(u_input.a, u_input.a), u_input.a), 21027u, any(vec3<bool>(true, true, true))), u_input.a);
    var_0 = countOneBits(u_input.a << (4294967295u % 32u));
    let var_1 = _wgslsmith_mod_i32(max(1i, ~reverseBits(_wgslsmith_clamp_i32(0i, global1[_wgslsmith_index_u32(u_input.a, 7u)], u_input.b))), u_input.b);
    var var_2 = abs(~(~min(0u, 43200u)));
    var var_3 = var_1 & -1i;
    var var_4 = select(!(!func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -2094f, -254f, -743f) - vec4<f32>(256f, -531f, 388f, 477f)))), !vec4<bool>(true, true, all(func_1(global0[_wgslsmith_index_u32(4294967295u, 4u)]).yww), func_3().x), global1[_wgslsmith_index_u32(~u_input.a, 7u)] >= global1[_wgslsmith_index_u32(select(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.a, 66311u)) & ~u_input.a, all(vec3<bool>(true, true, true))), 7u)]);
    var var_5 = Struct_1(vec2<u32>(u_input.a, u_input.a), func_2(reverseBits(1u), 2612f, Struct_1(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(49753u, u_input.a)), !(!vec4<bool>(false, var_4.x, var_4.x, var_4.x))), true));
    global0 = array<vec4<f32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_1, global1[_wgslsmith_index_u32(~(6177u | var_5.a.x), 7u)]) >> ((~var_5.a >> (firstLeadingBit(firstTrailingBit(vec2<u32>(8766u, 1u))) % vec2<u32>(32u))) % vec2<u32>(32u)), select(countOneBits(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(17759i, global1[_wgslsmith_index_u32(u_input.a, 7u)], 11691i), vec3<i32>(1i, -1i, var_1)))), _wgslsmith_div_vec3_i32(-vec3<i32>(-1i, -38299i, 2147483647i) ^ vec3<i32>(u_input.b, var_1, global1[_wgslsmith_index_u32(4294967295u, 7u)]), abs(~vec3<i32>(-38040i, -1i, u_input.b))), var_5.b.zyy));
}

