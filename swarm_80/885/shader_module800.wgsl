struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> u32 {
    global0 = array<vec2<i32>, 9>();
    global0 = array<vec2<i32>, 9>();
    var var_0 = u_input.a;
    let var_1 = 3770u;
    var var_2 = Struct_1(abs(vec3<i32>(~(-9624i), _wgslsmith_add_i32(-2147483647i, arg_3.a), -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.a.x, arg_1.b.a.x), arg_1.b.a.zx))), arg_2, arg_1.b.c, vec4<f32>(-631f, arg_1.b.c, _wgslsmith_f_op_f32(f32(-1f) * -939f), _wgslsmith_f_op_f32(-673f * arg_1.b.c)), _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(~var_1, 1u, var_1), ~1u, reverseBits(var_1)));
    return 1u;
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: f32) -> vec4<f32> {
    var var_0 = Struct_1(-_wgslsmith_sub_vec3_i32(firstLeadingBit(-vec3<i32>(arg_2, arg_2, -16569i)), select(vec3<i32>(0i, arg_2, arg_2), firstLeadingBit(vec3<i32>(arg_2, arg_2, arg_2)), !vec3<bool>(false, true, arg_1))), arg_1, _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(arg_3, -921f), _wgslsmith_f_op_f32(-arg_3), 340f, _wgslsmith_f_op_f32(-arg_3)), vec4<f32>(1984f, 1f, arg_3, _wgslsmith_div_f32(1309f, arg_3)))))), 9350u);
    var var_1 = abs(var_0.a.x >> (0u % 32u));
    let var_2 = vec3<bool>(arg_1, false, true);
    let var_3 = var_2;
    let var_4 = select(4294967295u, _wgslsmith_div_u32(68157u, var_0.e), arg_1);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1285f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), true))), -593f, 696f, _wgslsmith_f_op_f32(round(1572f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> vec4<f32> {
    let var_0 = u_input.a;
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(~0i, ~0i, -17839i), ~vec3<i32>(51506i, 37779i, 19062i) >> ((vec3<u32>(77944u, 1u, 10561u) >> ((vec3<u32>(44454u, u_input.a, arg_1) >> (vec3<u32>(4294967295u, 56457u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(57027i, -37256i, -35330i), vec3<i32>(-64686i, 1i, 2147483647i))))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_vec4_f32(func_3(~min(~16798u, 0u), true, -1i, -104f)), firstLeadingBit(abs(4294967295u)));
    global0 = array<vec2<i32>, 9>();
    var_1 = Struct_1(var_1.a, all(!select(vec3<bool>(var_1.b, var_1.b, var_1.b), select(vec3<bool>(var_1.b, true, true), vec3<bool>(false, var_1.b, var_1.b), var_1.b), var_1.b)), _wgslsmith_f_op_f32(-385f + 281f), vec4<f32>(560f, var_1.c, _wgslsmith_div_f32(1614f, _wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_div_f32(-590f, arg_0.x))), var_1.d.x), _wgslsmith_div_u32(12670u, abs(countOneBits(~arg_1))));
    var_1 = Struct_1(vec3<i32>(min(var_1.a.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-24814i, -25345i, -24632i, var_1.a.x)), -vec4<i32>(-508i, -23618i, var_1.a.x, var_1.a.x))), var_1.a.x, 2147483647i), false, _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(ceil(var_1.c)), true)), vec4<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1547f - 183f))), _wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(floor(-936f)), _wgslsmith_f_op_f32(select(1043f, _wgslsmith_f_op_f32(-385f - 433f), var_1.b))), firstTrailingBit((_wgslsmith_clamp_u32(var_1.e, arg_1, 94u) << (79331u % 32u)) << ((_wgslsmith_div_u32(u_input.a, 0u) ^ var_1.e) % 32u)));
    return vec4<f32>(var_1.c, arg_0.x, _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.c - 849f))))), 717f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-805f, -1125f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-370f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -249f)), _wgslsmith_f_op_f32(1876f * 727f))), _wgslsmith_div_u32(~_wgslsmith_sub_u32(func_1(u_input.a, Struct_2(25592i, Struct_1(vec3<i32>(-1i, 1i, -2147483647i), false, 912f, vec4<f32>(980f, -378f, 586f, 475f), u_input.a), vec3<f32>(1378f, -1259f, 631f)), false, Struct_2(-1i, Struct_1(vec3<i32>(2147483647i, 0i, 35381i), true, -299f, vec4<f32>(-1188f, 663f, 109f, -611f), u_input.a), vec3<f32>(-3031f, 121f, -1487f))), ~24825u), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 76272u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), 3196u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, 1u) >> (u_input.a % 32u), 9u)], global0[_wgslsmith_index_u32(u_input.a, 9u)]) | _wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 8686u), max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 0u))), 9u)], abs(vec2<i32>(-34383i, 81324i))), ~select(u_input.a, countOneBits(~31863u), any(vec2<bool>(false, false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.wy - _wgslsmith_f_op_vec2_f32(-var_0.yx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-1124f, 818f, -1013f, 130f), vec4<f32>(var_0.x, -912f, -316f, var_0.x)), _wgslsmith_sub_u32(85342u, 45187u))).xz)), 5723i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))));
}

