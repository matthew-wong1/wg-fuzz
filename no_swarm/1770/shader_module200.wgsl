struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -628f), 120f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-575f))))))));
    var var_1 = (~arg_0 >> (116667u % 32u)) & 47667i;
    var_1 = -1i;
    var_1 = arg_0 & 1i;
    let var_2 = Struct_1((vec4<i32>(arg_0, -arg_0, ~(-2147483647i), abs(u_input.c.x)) | firstLeadingBit(~vec4<i32>(0i, arg_0, arg_0, u_input.c.x))) & ~(firstLeadingBit(vec4<i32>(1i, 2147483647i, arg_0, 15012i)) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 39237u) % vec4<u32>(32u))), !vec3<bool>(all(vec4<bool>(true, true, true, true)), !(var_0.x >= -721f), any(vec3<bool>(false, true, false))), ~u_input.b, any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), true), false)));
    return vec2<bool>(all(select(select(vec2<bool>(true, true), var_2.b.yz, select(var_2.b.yx, var_2.b.xx, true)), var_2.b.yz, !(var_2.c.x == 4294967295u))), select((firstTrailingBit(1i) << (~37575u % 32u)) < ~1i, !any(var_2.b.yy), !((var_2.c.x | var_2.c.x) > var_2.c.x)));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = !func_3(-(_wgslsmith_add_i32(u_input.c.x, 24i) >> (~u_input.a % 32u)));
    let var_1 = arg_0;
    var_0 = vec2<bool>(true, true);
    var var_2 = Struct_1(~reverseBits(~vec4<i32>(-38558i, u_input.c.x, -5767i, 34796i)), select(!select(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, true)), !vec3<bool>(var_0.x, false, true), var_1 != 943f), vec3<bool>(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), true, !(!var_0.x)), -707f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(717f)) * _wgslsmith_f_op_f32(-var_1))), firstLeadingBit(_wgslsmith_add_vec2_u32(min(u_input.b, vec2<u32>(165044u, 4294967295u)), _wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, vec2<u32>(u_input.b.x, 29102u)))) ^ _wgslsmith_sub_vec2_u32(u_input.b, ~(vec2<u32>(u_input.a, 0u) << (u_input.b % vec2<u32>(32u)))), true);
    var_0 = select(!(!var_2.b.yz), var_2.b.yz, countOneBits(~min(0u, u_input.a)) > var_2.c.x);
    return var_1;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(817f + _wgslsmith_f_op_f32(f32(-1f) * -1584f)))));
    let var_2 = !((var_1 >= _wgslsmith_f_op_f32(func_2(var_1))) == !arg_1.d) || true;
    var_0 = true;
    let var_3 = arg_1.a.zzz;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(1000f));
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(func_1(-1i, Struct_1(vec4<i32>(4304i, u_input.c.x, 0i, 1i), vec3<bool>(true, false, true), u_input.b, true)), func_1(u_input.c.x, Struct_1(vec4<i32>(u_input.c.x, -34379i, u_input.c.x, 2147483647i), vec3<bool>(true, true, false), u_input.b, false)), ~u_input.c.x, countOneBits(45686i)), vec4<i32>(u_input.c.x, 1i ^ u_input.c.x, u_input.c.x | u_input.c.x, ~17702i)), vec4<i32>(u_input.c.x, u_input.c.x, -1i, u_input.c.x)), select(vec3<bool>(true, true, true), !vec3<bool>(any(vec4<bool>(false, false, true, false)), false, true), select(true, true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))))), u_input.b << ((firstLeadingBit(u_input.b) & countOneBits(~u_input.b)) % vec2<u32>(32u)), all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), any(vec3<bool>(false, false, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_2 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-868f - 189f) + 525f) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * -714f))), false, select(var_1.b.x, select(var_1.d, !all(vec4<bool>(var_1.b.x, false, var_1.d, true)), all(func_3(0i))), !any(select(var_1.b.zy, var_1.b.zy, false))), var_1.d);
    var_1 = Struct_1(vec4<i32>(var_1.a.x, 2147483647i, -7032i, -43548i), !(!var_1.b), ~countOneBits(~u_input.b), 4294967295u == ~u_input.a);
    let var_3 = Struct_1(vec4<i32>(~select(var_1.a.x >> (u_input.b.x % 32u), var_1.a.x, !var_2.x), max(~var_1.a.x, ~(var_1.a.x | u_input.c.x)), var_1.a.x, _wgslsmith_add_i32(~_wgslsmith_mult_i32(10391i, u_input.c.x), reverseBits(var_1.a.x ^ -2147483647i))), !select(vec3<bool>(-2147483647i >= u_input.c.x, var_2.x && var_2.x, true), vec3<bool>(var_1.a.x <= u_input.c.x, false, true), !var_1.b), vec2<u32>(~((var_1.c.x >> (20682u % 32u)) | _wgslsmith_mult_u32(57743u, 6453u)), abs(select(~var_1.c.x, 1u, var_1.d | true))), !(!(!any(vec2<bool>(var_1.d, false)))));
    var_0 = -1241f;
    let var_4 = _wgslsmith_f_op_f32(-1f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1045f, _wgslsmith_f_op_f32(select(var_4, var_4, var_2.x))))), var_3.a.zwx, countOneBits(1565i));
}

