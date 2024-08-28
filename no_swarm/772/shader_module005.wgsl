struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    var_0 = Struct_1(arg_3.a, vec3<u32>(min(~reverseBits(4294967295u), _wgslsmith_dot_vec3_u32(arg_3.b, arg_3.b)), ~(21554u << (~arg_0.x % 32u)), ~var_0.b.x), all(!vec4<bool>(all(vec4<bool>(arg_3.c, var_0.c, arg_3.c, var_0.c)), false, false, true || var_0.c)));
    var_0 = Struct_1(561f, ~arg_3.b, var_0.c);
    let var_1 = !(!vec4<bool>(!(!var_0.c), (u_input.a.x ^ arg_2.x) > arg_2.x, _wgslsmith_mod_u32(arg_0.x, arg_0.x) >= 1u, false));
    return arg_3;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<f32>) -> f32 {
    let var_0 = arg_0;
    let var_1 = 1u;
    let var_2 = arg_2.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - arg_2.x);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(func_2(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(37378u, arg_1.b.x), arg_1.b.zz), ~arg_1.b.xz), -u_input.a.x, u_input.a.yy & -vec2<i32>(u_input.a.x, u_input.a.x), arg_1), vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(~(-39289i), u_input.a.x), 12209i, 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(160f, 1241f, arg_0))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_0, arg_1.a) * vec3<f32>(534f, arg_0, 328f)))))), reverseBits(vec3<u32>(~(~arg_1.b.x), _wgslsmith_dot_vec3_u32(~arg_1.b, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, arg_1.b.x), vec3<u32>(28053u, 23993u, 47967u))), ~1u)), (arg_1.c && !arg_1.c) || any(!(!vec2<bool>(arg_1.c, arg_1.c))));
    var var_1 = _wgslsmith_mod_vec4_i32(firstTrailingBit(u_input.a), u_input.a);
    var var_2 = -select(vec3<i32>(-u_input.a.x, _wgslsmith_mult_i32(reverseBits(2147483647i), _wgslsmith_mod_i32(var_1.x, var_1.x)), var_1.x ^ 1i), max(~vec3<i32>(32077i, var_1.x, 64303i), -(u_input.a.xxw >> (vec3<u32>(59112u, var_0.b.x, 0u) % vec3<u32>(32u)))), !(!select(vec3<bool>(false, var_0.c, arg_1.c), vec3<bool>(false, false, false), arg_1.c)));
    var var_3 = -_wgslsmith_add_i32(reverseBits(-var_1.x), var_1.x) <= _wgslsmith_div_i32(-(~u_input.a.x << ((arg_1.b.x >> (4294967295u % 32u)) % 32u)), ~(~(-var_2.x)));
    var_1 = -u_input.a;
    return 4294967295u & _wgslsmith_sub_u32(select(11963u, _wgslsmith_dot_vec2_u32(arg_1.b.xy, var_0.b.xx), !arg_1.c && all(vec2<bool>(true, arg_1.c))), ~var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(func_1(-1077f, Struct_1(543f, vec3<u32>(28884u, 27783u, 4356u), false)), ~80775u), 0u & reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(105302u, 14310u, 0u, 1u), vec4<u32>(13031u, 4294967295u, 4294967295u, 0u))), firstTrailingBit(36252u) >> (37330u % 32u), 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(func_1(-782f, Struct_1(801f, vec3<u32>(73622u, 10119u, 0u), false)), ~5092u, _wgslsmith_dot_vec2_u32(vec2<u32>(2872u, 1u), vec2<u32>(0u, 4294967295u)), 1u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), firstTrailingBit(countOneBits(vec4<u32>(1u, 1u, 1u, 1u)))), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), firstLeadingBit(select(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(vec4<u32>(22218u, 884u, 19383u, 10388u)), vec4<bool>(true, true, true, true)))));
    var var_1 = func_2(min(var_0.zx, vec2<u32>(func_2(vec2<u32>(var_0.x, 132944u) ^ vec2<u32>(15486u, var_0.x), u_input.a.x, vec2<i32>(u_input.a.x, 30256i), Struct_1(-893f, vec3<u32>(9194u, var_0.x, 23692u), true)).b.x, var_0.x)), u_input.a.x, vec2<i32>(0i ^ _wgslsmith_div_i32(1i, ~u_input.a.x), u_input.a.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(489f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(301f)), -1276f)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(min(vec3<u32>(4294967295u, var_0.x, var_0.x), vec3<u32>(25019u, var_0.x, 76962u)), ~vec3<u32>(var_0.x, 4349u, var_0.x)), var_0.zwy), select(true, false, !all(vec3<bool>(false, false, false)))));
    let var_2 = func_2(var_0.zy, abs(2823i), u_input.a.yy, Struct_1(var_1.a, select(reverseBits(firstLeadingBit(var_0.yxw)), vec3<u32>(37134u >> (1u % 32u), ~var_0.x, 4294967295u), false), !var_1.c));
    var var_3 = var_2.b.x;
    var_0 = ~select(~(~(~vec4<u32>(var_0.x, 61622u, var_1.b.x, var_0.x))), vec4<u32>(~1u, var_2.b.x, 0u, 47710u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, var_0.x, var_1.b.x), ~vec4<u32>(var_2.b.x, 48152u, 0u, var_0.x)) % vec4<u32>(32u)), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(var_1.c, true, var_1.c, var_1.c), vec4<bool>(true, var_2.c, true, false)), select(vec4<bool>(var_2.c, true, var_2.c, var_2.c), vec4<bool>(true, var_1.c, var_1.c, var_2.c), vec4<bool>(var_2.c, var_2.c, var_2.c, false)), select(vec4<bool>(false, var_2.c, true, true), vec4<bool>(var_2.c, var_2.c, var_2.c, var_1.c), vec4<bool>(var_2.c, true, var_2.c, true))));
    var_1 = var_2;
    let var_4 = vec2<u32>(firstLeadingBit(~abs(var_0.x)), var_0.x);
    let var_5 = -u_input.a.wwx;
    let x = u_input.a;
    s_output = StorageBuffer(32071u, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.a, 473f), _wgslsmith_f_op_f32(-var_1.a))), var_2.a, -1539f);
}

