struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> i32 {
    var var_0 = !(!(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, false, true), vec3<bool>(true, true, false))));
    let var_1 = arg_1.x;
    var_0 = vec3<bool>(true, !any(vec3<bool>(var_0.x, true, var_0.x)), var_0.x);
    var_0 = !(!(!(!vec3<bool>(false, true, var_0.x))));
    let var_2 = u_input.a.x;
    return ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i >> (max(0u, var_1) % 32u), reverseBits(-32012i), _wgslsmith_sub_i32(abs(var_2), 31358i >> (arg_1.x % 32u))), u_input.b);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>) -> i32 {
    var var_0 = Struct_3(u_input.b, Struct_1(arg_1.x));
    var var_1 = ~arg_1;
    var_0 = Struct_3(abs(u_input.b), Struct_1(~var_1.x));
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(517u, arg_1.x, var_1.x), _wgslsmith_add_vec3_u32(~vec3<u32>(var_0.b.a, var_0.b.a, arg_1.x), vec3<u32>(61475u, var_1.x, arg_1.x))), max(_wgslsmith_mod_u32(var_0.b.a, ~var_0.b.a), 1u), ~_wgslsmith_mult_u32(var_1.x, countOneBits(12943u))), (abs(reverseBits(vec4<u32>(0u, arg_1.x, 4294967295u, arg_1.x))) ^ reverseBits(~vec4<u32>(arg_1.x, var_0.b.a, var_0.b.a, 1u))) & ~vec4<u32>(var_1.x, var_0.b.a, var_1.x >> (7073u % 32u), firstTrailingBit(1u)));
    var var_3 = ~34373u;
    return -48882i | var_0.a;
}

fn func_4(arg_0: i32, arg_1: bool) -> u32 {
    let var_0 = select(select(!select(!vec3<bool>(true, arg_1, arg_1), !vec3<bool>(false, arg_1, arg_1), select(vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, false, false))), select(!vec3<bool>(arg_1, false, false), vec3<bool>(false, true, arg_1), !vec3<bool>(arg_1, false, arg_1)), !vec3<bool>(!arg_1, true, !arg_1)), select(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, arg_1, false), arg_1)), select(!(!vec3<bool>(false, arg_1, arg_1)), !(!vec3<bool>(false, false, arg_1)), vec3<bool>(arg_1, false, true)), vec3<bool>(all(vec3<bool>(arg_1, true, true)), true, !(!arg_1))), true);
    let var_1 = Struct_2(true, -182f);
    var var_2 = Struct_3(select(~(countOneBits(arg_0) << (_wgslsmith_div_u32(4294967295u, 36564u) % 32u)), 1i, var_0.x), Struct_1(25921u));
    let var_3 = arg_1;
    var_2 = Struct_3(~_wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, arg_0, -22777i)), vec3<i32>(var_2.a, var_2.a, 0i))), var_2.b);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~_wgslsmith_mult_u32(var_2.b.a, 6466u), countOneBits(~15496u), ~var_2.b.a & _wgslsmith_div_u32(var_2.b.a, var_2.b.a)), _wgslsmith_add_vec4_u32(~vec4<u32>(var_2.b.a, 0u, 0u, var_2.b.a), max(vec4<u32>(var_2.b.a, var_2.b.a, var_2.b.a, 41602u), vec4<u32>(var_2.b.a, 121841u, 4294967295u, 25639u) << (vec4<u32>(var_2.b.a, var_2.b.a, 1u, var_2.b.a) % vec4<u32>(32u))))) >> (var_2.b.a % 32u);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-896f - _wgslsmith_f_op_f32(min(-242f, 2072f))) - 737f)), _wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)));
    var var_1 = ~(_wgslsmith_mult_vec2_i32(arg_0.wy, vec2<i32>(arg_0.x, arg_0.x) ^ u_input.a) | firstTrailingBit(u_input.a)) >> ((vec2<u32>(max(~621u, ~20238u), ~(arg_3 | arg_3)) & ~select(vec2<u32>(65394u, 42293u), vec2<u32>(arg_3, arg_3) | vec2<u32>(arg_3, 4294967295u), true)) % vec2<u32>(32u));
    var var_2 = ~func_4(countOneBits(~func_3(var_0.zz, vec2<u32>(arg_3, 120481u))), arg_2);
    var_1 = arg_0.yx;
    let var_3 = Struct_2(all(!(!select(vec4<bool>(true, arg_2, arg_2, arg_1.a), vec4<bool>(true, true, arg_2, arg_2), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -264f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))) - var_0.x));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_add_u32(6396u, _wgslsmith_div_u32(1u, 1u)), _wgslsmith_sub_u32(~27639u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), max(vec2<u32>(32906u, 0u), vec2<u32>(4294967295u, 25213u))))));
    var var_1 = ~vec4<i32>(u_input.a.x, u_input.a.x, -1i, -7177i);
    var var_2 = func_2(vec4<i32>(2147483647i, 7956i & u_input.b, _wgslsmith_mod_i32(func_1(_wgslsmith_f_op_f32(sign(-737f)), vec4<u32>(2038u, var_0.a, var_0.a, 86742u) << (vec4<u32>(45944u, 45353u, var_0.a, 56994u) % vec4<u32>(32u))), var_1.x), u_input.b), Struct_2(true, 1294f), any(vec2<bool>(true, abs(var_1.x) <= u_input.a.x)), var_0.a);
    var var_3 = Struct_2(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-358f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(573f)))))));
    var var_4 = var_3.a;
    var var_5 = var_3.b;
    var var_6 = max(vec2<u32>(var_0.a, ~var_0.a), vec2<u32>(var_0.a, ~_wgslsmith_sub_u32(7840u, 1u)));
    var var_7 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~select(min(_wgslsmith_add_u32(var_0.a, 8290u), ~1u), _wgslsmith_sub_u32(var_7.a, 2766u), true), countOneBits(var_0.a), -11798i, select(vec4<i32>(-1i) * -(vec4<i32>(var_1.x, 1i, 2147483647i, u_input.b) << (vec4<u32>(var_6.x, var_6.x, 20883u, var_0.a) % vec4<u32>(32u))), vec4<i32>(u_input.a.x, abs(var_1.x) | _wgslsmith_mult_i32(-2147483647i, u_input.a.x), 35938i, ~u_input.a.x & -2147483647i), !(!vec4<bool>(true, var_3.a, var_3.a, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b, -1192f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.b))), _wgslsmith_f_op_f32(-1f))));
}

