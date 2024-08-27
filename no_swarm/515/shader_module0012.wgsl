struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), !any(vec3<bool>(false, false, true)), !any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), true), reverseBits(u_input.b), _wgslsmith_sub_i32(-30307i, i32(-1i) * -u_input.a) != u_input.b.x);
    var_0 = Struct_1(var_0.a, (abs(-vec3<i32>(u_input.b.x, 2194i, -2147483647i)) ^ vec3<i32>(10512i >> (1u % 32u), ~0i, i32(-1i) * -22162i)) << ((vec3<u32>(firstTrailingBit(4294967295u), abs(25319u), 1u) | ~firstLeadingBit(vec3<u32>(1u, 39238u, 95817u))) % vec3<u32>(32u)), var_0.c);
    var var_1 = ~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 4294967295u, 11890u), 0u), ~0u, ~select(4294967295u, 12509u, false), 4294967295u) ^ max(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u));
    let var_2 = Struct_1(!vec4<bool>(select(true, true, true), any(var_0.a.wx), !var_0.a.x && true, true), abs(min(var_0.b, var_0.b)), var_0.a.x);
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1931f + -1121f), _wgslsmith_f_op_f32(min(-642f, 312f))))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1140f + -863f), _wgslsmith_f_op_f32(-222f + -1317f))), 1174f), !var_2.c, var_2.c, !(!any(var_2.a.zw)));
    return vec4<bool>(var_0.c, true, any(var_2.a.zww) || !var_3.x, var_2.b.x != abs(var_0.b.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = func_3();
    var var_1 = reverseBits(_wgslsmith_mod_i32(-36913i, _wgslsmith_mod_i32(_wgslsmith_div_i32(~u_input.b.x, 0i), arg_0.b.x)));
    var_1 = abs(arg_1.x);
    var var_2 = !((select(all(vec4<bool>(true, var_0.x, var_0.x, true)), true, true) | all(select(arg_0.a.wyw, vec3<bool>(false, false, true), arg_0.a.wxx))) || arg_0.a.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1113f - 601f) * -817f), 1000f))) - _wgslsmith_f_op_f32(ceil(-1752f)));
    return Struct_1(vec4<bool>(var_0.x, (0i != _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -74130i, -72287i), vec3<i32>(-48428i, arg_0.b.x, 93835i))) | true, arg_0.a.x, any(vec2<bool>(true, arg_0.a.x))), -arg_0.b, true && all(vec2<bool>(var_0.x, true | var_0.x)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    return reverseBits(19831i);
}

fn func_1() -> f32 {
    var var_0 = Struct_1(vec4<bool>(true, false && !all(vec4<bool>(false, true, true, false)), select(false, true, any(vec3<bool>(true, true, true))), all(vec4<bool>(true, true, true, true))), _wgslsmith_add_vec3_i32(vec3<i32>(func_4(Struct_1(vec4<bool>(true, false, true, true), vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), true), false, func_2(Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(-22856i, 2147483647i, 0i), true), vec4<i32>(u_input.a, 0i, -2147483647i, 2147483647i)), func_2(Struct_1(vec4<bool>(true, false, true, true), u_input.b, false), vec4<i32>(-4822i, u_input.b.x, -43846i, 0i))), 1i, u_input.a), -(~(-u_input.b))), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))) != true);
    let var_1 = func_2(func_2(func_2(func_2(Struct_1(var_0.a, u_input.b, true), abs(vec4<i32>(-43036i, -1i, 76i, 13908i))), vec4<i32>(16827i, 6021i, _wgslsmith_mod_i32(5716i, -35788i), -var_0.b.x)), (-vec4<i32>(37571i, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(var_0.b.x, u_input.b.x, -2147483647i, -36241i)) & _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, 18721i), max(vec4<i32>(u_input.a, u_input.b.x, 1i, 1i), vec4<i32>(-36727i, 8524i, var_0.b.x, -33077i)))), select(vec4<i32>(_wgslsmith_add_i32(22655i ^ u_input.a, _wgslsmith_mult_i32(u_input.a, -12228i)), u_input.b.x, _wgslsmith_mult_i32(u_input.a << (60665u % 32u), -34519i), u_input.a), countOneBits(select(-vec4<i32>(0i, 818i, u_input.b.x, u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.x, u_input.a, 2147483647i, var_0.b.x), vec4<i32>(u_input.b.x, var_0.b.x, var_0.b.x, 2147483647i)), all(var_0.a.zwz))), !(!func_3())));
    var_0 = Struct_1(vec4<bool>(var_0.a.x, !(!var_0.c), !all(vec3<bool>(false, var_1.c, var_0.c)), var_0.c), -vec3<i32>(min(var_1.b.x, i32(-1i) * -52227i), ~(-50739i), -(~var_1.b.x)), !any(vec3<bool>(!var_1.c, var_1.a.x, true)));
    var_0 = func_2(func_2(func_2(Struct_1(!var_0.a, select(vec3<i32>(var_0.b.x, var_1.b.x, u_input.b.x), u_input.b, vec3<bool>(false, false, var_1.c)), var_1.c), select(select(vec4<i32>(13014i, -53633i, var_1.b.x, var_1.b.x), vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, -39864i), var_1.a), vec4<i32>(-1i, -1i, var_0.b.x, var_0.b.x) ^ vec4<i32>(0i, 58636i, var_1.b.x, 1i), var_1.a.x || var_0.a.x)), ~vec4<i32>(var_1.b.x, u_input.a, ~(-2147483647i), var_0.b.x)), ~(~abs(~vec4<i32>(u_input.a, var_1.b.x, 0i, 2147483647i))));
    var_0 = var_1;
    return -232f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1924f), _wgslsmith_f_op_f32(func_1()), func_3().x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1022f - -950f)), false, false, true | select(select(true, true, true), false, all(vec3<bool>(false, false, false)))), -(select(~vec3<i32>(u_input.a, -54172i, -42445i), _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(48434i, u_input.a, u_input.b.x)), false) | -_wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(u_input.a, u_input.b.x, -17259i), u_input.b)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u), -2147483647i, vec3<i32>(abs(7681i), abs(~abs(-77876i)), reverseBits(1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1518f, -347f)) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(259f + -678f), _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1484f, -781f))))));
}

