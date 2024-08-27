struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_3) -> bool {
    return (4294967295u | firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(50323u, arg_3.c.x, 0u), vec3<u32>(0u, 22941u, 5151u)))) > arg_3.c.x;
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = func_3(true, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -380f) + _wgslsmith_f_op_f32(ceil(arg_0.b.x))), _wgslsmith_f_op_f32(trunc(arg_0.b.x)))), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(758f + 802f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-578f - 584f)))), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(arg_0.d.a, vec4<i32>(2147483647i, arg_2.x, arg_0.d.a.x, -1i)), 0i, 1i) & arg_0.d.a, arg_0.d.a), arg_0);
    global1 = !(var_0 & (1u != _wgslsmith_dot_vec3_u32(vec3<u32>(61352u, 0u, arg_0.c.x), arg_0.c))) || (any(select(vec2<bool>(var_0, false), select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0)), !vec2<bool>(var_0, true))) | any(select(!vec3<bool>(false, false, var_0), vec3<bool>(true, true, true), vec3<bool>(true, var_0, var_0))));
    var var_1 = firstTrailingBit(_wgslsmith_mult_vec2_i32(-abs(_wgslsmith_sub_vec2_i32(arg_0.a.a.yx, vec2<i32>(arg_2.x, arg_0.d.a.x))), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.x << (76528u % 32u), i32(-1i) * -1i), firstTrailingBit(vec2<i32>(arg_2.x, -29406i)))));
    var_1 = vec2<i32>(0i, 76646i);
    var var_2 = Struct_1(select(max(_wgslsmith_mult_vec4_i32(~arg_0.d.a, arg_0.d.a), firstLeadingBit(~vec4<i32>(arg_0.a.a.x, arg_2.x, arg_2.x, arg_0.a.a.x))), vec4<i32>(reverseBits(1i), arg_0.a.a.x & (i32(-1i) * -2147483647i), arg_2.x, 32467i), !vec4<bool>(false & var_0, var_0, var_0, true)));
    return Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(var_2.a.x >> (1782u % 32u), _wgslsmith_mult_i32(0i, -27873i)), ~(var_1.x | arg_0.a.a.x), max(~10143i, _wgslsmith_mult_i32(var_2.a.x, var_2.a.x)), firstLeadingBit(i32(-1i) * -16235i)), firstTrailingBit(var_2.a)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = vec2<bool>(true, true);
    global1 = false;
    let var_1 = func_2(Struct_3(Struct_2(min(~vec3<i32>(17413i, 2147483647i, 1i), -arg_1.a.wwz)), _wgslsmith_div_vec2_f32(vec2<f32>(-487f, 959f), vec2<f32>(_wgslsmith_f_op_f32(abs(2173f)), _wgslsmith_f_op_f32(abs(1042f)))), vec3<u32>(reverseBits(arg_2), ~(u_input.a ^ arg_2), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 20923u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, arg_2, 4294967295u, 31939u), vec4<u32>(1u, arg_0, 1u, u_input.a)))), Struct_1(arg_1.a)), -564f, arg_1.a.zy);
    var var_2 = true & all(select(vec2<bool>(true, var_0.x), vec2<bool>(true, all(vec2<bool>(var_0.x, false))), vec2<bool>(true, true)));
    let var_3 = Struct_2(vec3<i32>(max(var_1.a.x, ~var_1.a.x), 0i, arg_1.a.x));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-498f)) * _wgslsmith_f_op_f32(min(-144f, -1000f)))), _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_f32(ceil(-1752f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(-583f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-197f, _wgslsmith_f_op_f32(f32(-1f) * -677f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2152f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -787f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-460f + _wgslsmith_f_op_f32(func_1(u_input.a, Struct_1(vec4<i32>(-2147483647i, 2147483647i, -45042i, -47591i)), 0u)))))));
    let var_1 = all(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    global0 = u_input.a;
    let var_2 = vec4<bool>(true, all(!select(!vec4<bool>(var_1, var_1, var_1, var_1), !vec4<bool>(var_1, var_1, var_1, false), true)), !any(vec3<bool>(false, true, true)) && func_3(any(vec2<bool>(true, var_1)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 921f, _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_div_i32(abs(0i), countOneBits(1i)), Struct_3(Struct_2(vec3<i32>(40882i, -9299i, 10188i)), vec2<f32>(var_0.x, -612f), vec3<u32>(42143u, u_input.a, 21537u), func_2(Struct_3(Struct_2(vec3<i32>(17763i, 1i, -1i)), var_0.wz, vec3<u32>(1u, 14797u, u_input.a), Struct_1(vec4<i32>(-20196i, -26908i, 0i, -4163i))), -1853f, vec2<i32>(-36629i, -2147483647i)))), u_input.a > ~7093u);
    let var_3 = select(!var_2, select(!var_2, !select(!vec4<bool>(var_2.x, true, false, true), vec4<bool>(var_2.x, var_1, false, false), select(var_2, vec4<bool>(var_2.x, var_2.x, var_2.x, true), var_1)), var_2), any(vec4<bool>(true, !var_1, true, var_1)) | var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), -1409f, _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(select(921f, var_0.x, var_3.x))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0)))) * _wgslsmith_f_op_vec4_f32(select(var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0))), select(var_3, vec4<bool>(var_1, false, false, var_2.x), var_3.x)))), var_0, _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(36424u, u_input.a), vec2<u32>(u_input.a, 29684u)), _wgslsmith_mod_u32(54606u, 1u)) << (4294967295u % 32u), _wgslsmith_mult_u32(firstLeadingBit(u_input.a), max(u_input.a, u_input.a))), firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i)) | _wgslsmith_mult_vec4_i32(abs(-vec4<i32>(-2147483647i, 1i, -64987i, -61474i)), func_2(Struct_3(Struct_2(vec3<i32>(21899i, 2147483647i, 38278i)), vec2<f32>(var_0.x, var_0.x), vec3<u32>(7833u, 126300u, 62059u), Struct_1(vec4<i32>(1i, -1i, -1i, 32689i))), -1000f, reverseBits(vec2<i32>(39440i, 56297i))).a));
}

