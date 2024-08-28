struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(-380f, 1431f, 111f, 1402f, 525f, -115f, -1563f, -903f, 1513f, 1746f);

var<private> global1: array<Struct_1, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32) -> i32 {
    global0 = array<f32, 10>();
    global1 = array<Struct_1, 22>();
    let var_0 = Struct_1(vec3<i32>(-2147483647i, select(1i, 1565i, any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)))), 0i), !(!vec3<bool>(true, any(vec2<bool>(true, true)), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(11354u, 10u)], 218f))))));
    let var_1 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(max(firstTrailingBit(arg_0), var_0.a.x), -_wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(var_0.a.x, 0i, -2147483647i))), min(26508i, arg_0), _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(-12077i, var_0.a.x, arg_0, var_0.a.x), vec4<i32>(arg_0, 5346i, var_0.a.x, 1i)), vec4<i32>(2147483647i, -16249i, -30144i, arg_0) << (vec4<u32>(4294967295u, 7306u, u_input.a, u_input.a) % vec4<u32>(32u)))), vec3<bool>(var_0.b.x, true, !var_0.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1378f)) - _wgslsmith_f_op_f32(min(670f, -436f))))))));
    let var_2 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.x, -arg_0, arg_0), firstTrailingBit(~var_1.a), -vec3<i32>(i32(-1i) * -1i, firstLeadingBit(-1i), firstTrailingBit(10829i))), vec3<bool>(true, any(!vec2<bool>(var_1.b.x, false)), false), var_0.c);
    return -countOneBits(1i);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_i32(-select(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-16576i, 3858i, 2147483647i, -4543i), vec4<i32>(-21174i, -15727i, 1484i, -3602i), vec4<i32>(-23957i, -1i, 2147483647i, 2147483647i)), abs(vec4<i32>(0i, -2147483647i, 2147483647i, 1i)), false), ~(~vec4<i32>(1i, 1i, 1i, 1i)), select(vec4<i32>(~func_3(-1i), 1i, -reverseBits(-2147483647i), 2147483647i), -(~countOneBits(vec4<i32>(6635i, 1i, 1i, 1i))), true));
    global1 = array<Struct_1, 22>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.x, 10u)] - -1564f))))), 1107f);
    global1 = array<Struct_1, 22>();
    let var_2 = global1[_wgslsmith_index_u32(0u, 22u)];
    return Struct_1(var_0.xzw, select(vec3<bool>(var_2.b.x | var_2.b.x, true, false), var_2.b, _wgslsmith_f_op_f32(min(-1040f, -1418f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 655f))), var_2.c);
}

fn func_1() -> vec2<i32> {
    let var_0 = ~4294967295u;
    let var_1 = func_2(~firstLeadingBit(vec3<u32>(var_0, select(0u, 53957u, false), ~var_0)));
    global0 = array<f32, 10>();
    global1 = array<Struct_1, 22>();
    return vec2<i32>(~var_1.a.x, -(~_wgslsmith_sub_i32(~var_1.a.x, var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, true, true, false);
    let var_1 = ~func_1();
    let var_2 = global1[_wgslsmith_index_u32(~u_input.a, 22u)];
    let var_3 = vec2<f32>(586f, 1000f);
    let var_4 = func_2(~(vec3<u32>(~1u, _wgslsmith_div_u32(u_input.a, 1u), u_input.a) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 4294967295u)), ~1u, u_input.a) % vec3<u32>(32u)))).c;
    global0 = array<f32, 10>();
    global1 = array<Struct_1, 22>();
    global1 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~vec4<u32>(55898u, 1u, 18717u, 0u)))), vec2<u32>(5815u, u_input.a) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u) >> (reverseBits(vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, u_input.a)))) % vec2<u32>(32u)));
}

