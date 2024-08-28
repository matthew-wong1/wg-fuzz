struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32, arg_3: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2, arg_2, 1000f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-210f, 873f, arg_2)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1351f, -1016f, arg_2)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1436f, arg_2, -628f))))))));
    global0 = array<Struct_1, 12>();
    var var_1 = -(~arg_1.zy);
    global0 = array<Struct_1, 12>();
    var var_2 = reverseBits(abs(34702i >> (_wgslsmith_add_u32(~arg_0.b, ~arg_3) % 32u)));
    return all(select(!(!(!vec4<bool>(true, arg_0.a, arg_0.a, false))), select(vec4<bool>(true, any(vec3<bool>(true, true, arg_0.a)), true || arg_0.a, arg_0.a), !select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true), vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(true, true, true, true)), false), all(select(!vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), arg_0.a))));
}

fn func_2() -> Struct_1 {
    let var_0 = all(!vec3<bool>(all(vec2<bool>(true, true)) | true, false, !func_3(global0[_wgslsmith_index_u32(8612u, 12u)], vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -44485i), -263f, 4294967295u)));
    let var_1 = Struct_1(true, ~countOneBits(_wgslsmith_mod_u32(4294967295u, 61581u)) | select(firstLeadingBit(18972u), _wgslsmith_mult_u32(1u, 1u), var_0));
    var var_2 = -((1i << (_wgslsmith_mult_u32(var_1.b, _wgslsmith_div_u32(var_1.b, var_1.b)) % 32u)) ^ u_input.a.x);
    var var_3 = var_1;
    var_3 = global0[_wgslsmith_index_u32(~var_3.b, 12u)];
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~(~var_3.b)), _wgslsmith_mult_u32(0u, ~((var_1.b | var_3.b) ^ countOneBits(4294967295u)))), 12u)];
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(false || arg_1.a, ~1u);
    global0 = array<Struct_1, 12>();
    let var_1 = func_2();
    let var_2 = func_2();
    global0 = array<Struct_1, 12>();
    return Struct_1(u_input.a.x == (~(-u_input.a.x) << ((~arg_1.b | reverseBits(var_2.b)) % 32u)), abs(~(~1u)) & _wgslsmith_mult_u32(var_2.b, var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    let var_0 = func_1(abs(33178i) <= u_input.a.x, Struct_1(!(abs(u_input.a.x) <= _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), 22722u));
    global0 = array<Struct_1, 12>();
    let var_1 = var_0;
    var var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0.b, var_1.b), ~var_1.b, ~var_0.b), var_1.b, max(var_0.b, reverseBits(1u)), 45489u), ~(vec4<u32>(var_0.b, 52395u, var_0.b, var_0.b) << (_wgslsmith_div_vec4_u32(vec4<u32>(1u, 24917u, var_0.b, 45243u), vec4<u32>(4294967295u, var_1.b, var_0.b, 50463u)) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_1.b, var_0.b, 1u, 1u)) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(9556u, 1u, var_0.b, 107548u), vec4<u32>(var_1.b, 0u, 1u, var_0.b), vec4<u32>(var_1.b, var_0.b, var_0.b, var_1.b)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4888u, _wgslsmith_clamp_u32(35427u, var_0.b, 4294967295u), ~var_0.b, 1u), ~vec4<u32>(40241u, 18305u, 4294967295u, var_0.b))), vec4<u32>(~(~firstTrailingBit(0u)), ~(~1u), reverseBits(~_wgslsmith_sub_u32(1u, var_0.b)), ~(~_wgslsmith_mult_u32(var_1.b, var_1.b))));
    var var_3 = reverseBits(select(_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a.x, 18317i, u_input.a.x) & ~vec3<i32>(u_input.a.x, u_input.a.x, -15302i), select(_wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.a.x, -51431i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, -1i, u_input.a.x) ^ vec3<i32>(u_input.a.x, u_input.a.x, -1i), select(vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(false, var_1.a, var_1.a), var_1.a))), firstTrailingBit(select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 1i, 19077i), vec3<i32>(u_input.a.x, -10473i, 2147483647i)), -vec3<i32>(382i, 1i, 0i), vec3<bool>(false, false, true))), var_0.a));
    let var_4 = var_2.zw;
    var var_5 = 1275f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1778f, _wgslsmith_f_op_f32(round(1000f))), vec2<i32>(0i, u_input.a.x), countOneBits(0i), firstLeadingBit(min(vec4<i32>(1i, -2147483647i | var_3.x, u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, var_3.x), vec3<i32>(u_input.a.x, u_input.a.x, 376i))), vec4<i32>(var_3.x, var_3.x, _wgslsmith_add_i32(u_input.a.x, 19691i), u_input.a.x & -1i))), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(10873u, 15576u) ^ var_2.xy, _wgslsmith_clamp_vec2_u32(var_2.xy, vec2<u32>(var_1.b, var_4.x), vec2<u32>(var_0.b, 60455u))), ~(~var_0.b)), var_0.b));
}

