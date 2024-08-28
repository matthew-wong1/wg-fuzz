struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec4<i32>(-1i, 2147483647i, 2147483647i, 31741i), true, -129f, false);

var<private> global1: array<vec2<u32>, 15>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2698f * global0.d)))));
    var var_1 = vec2<bool>(!(!any(select(vec2<bool>(true, global0.c), vec2<bool>(global0.c, global0.c), vec2<bool>(global0.e, true)))), all(vec3<bool>(any(vec3<bool>(true, false, false)), all(vec3<bool>(global0.c, false, false)) && true, true)));
    let var_2 = select(vec3<bool>(all(vec2<bool>(true, true)), var_1.x, var_1.x | var_1.x), !select(select(vec3<bool>(var_1.x, var_1.x, true), !vec3<bool>(global0.a, global0.a, var_1.x), var_1.x), !select(vec3<bool>(global0.a, var_1.x, var_1.x), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(false, true, global0.c)), all(vec3<bool>(true, false, var_1.x))), true);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-var_0) != -257f, -vec4<i32>(~(-1i), firstLeadingBit(global0.b.x), -_wgslsmith_sub_i32(global0.b.x, 1i), _wgslsmith_mult_i32(firstLeadingBit(global0.b.x), global0.b.x)), true, -328f, false);
    let var_4 = Struct_1(var_1.x, firstTrailingBit(reverseBits(vec4<i32>(var_3.b.x, -2147483647i, global0.b.x, global0.b.x))) | vec4<i32>(-firstLeadingBit(global0.b.x), _wgslsmith_mult_i32(-global0.b.x, ~var_3.b.x), -1i, 1i), !(_wgslsmith_sub_i32(global0.b.x, 1395i) != _wgslsmith_div_i32(3127i, var_3.b.x)) && true, _wgslsmith_f_op_f32(var_0 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, global0.d) * _wgslsmith_f_op_f32(max(-2226f, var_3.d))), -1431f)), !var_1.x);
    return vec4<bool>(false, false, false, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1720f) - _wgslsmith_f_op_f32(-var_3.d)) < var_4.d) | select(global0.c, true, var_3.a));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = !(!select(select(vec4<bool>(global0.c, false, global0.c, false), select(vec4<bool>(true, global0.a, false, global0.e), vec4<bool>(false, global0.c, false, global0.a), vec4<bool>(false, global0.e, global0.c, true)), !vec4<bool>(false, false, global0.e, global0.e)), select(vec4<bool>(global0.c, global0.e, global0.e, false), vec4<bool>(true, global0.c, true, global0.c), func_3(vec4<u32>(u_input.b, 0u, 4294967295u, u_input.a))), _wgslsmith_f_op_f32(1000f - global0.d) <= _wgslsmith_f_op_f32(global0.d * global0.d)));
    global1 = array<vec2<u32>, 15>();
    var var_1 = Struct_1(true, vec4<i32>(-71444i, 0i, max(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-10462i, global0.b.x), arg_0.xz)), ~(-79228i)), -2147483647i), true, 1864f, true);
    global0 = Struct_1(true, var_1.b, false, var_1.d, false);
    global0 = Struct_1(~min(_wgslsmith_clamp_u32(0u, u_input.a, u_input.a), firstTrailingBit(u_input.a)) >= u_input.b, var_1.b, true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.d + 1785f), var_1.d, var_1.e)), select(var_0.x, true, false && var_0.x));
    return Struct_2(!var_0, true, _wgslsmith_sub_i32(~(-min(2147483647i, var_1.b.x)), _wgslsmith_add_i32(0i, min(~arg_0.x, select(-2147483647i, arg_0.x, false)))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = vec3<bool>(!(!global0.c) | any(vec2<bool>(true, true)), global0.e, select(any(!vec3<bool>(global0.c, global0.e, global0.c)), (u_input.b <= u_input.b) && (u_input.b < u_input.b), true | (global0.c || global0.e)) & true);
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d - -1081f)) != _wgslsmith_f_op_f32(-358f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), 301f)), vec4<i32>(_wgslsmith_dot_vec2_i32(max(firstTrailingBit(vec2<i32>(global0.b.x, -632i)), global0.b.wy), vec2<i32>(1i, 1i)), ~global0.b.x & global0.b.x, global0.b.x, -1i), global0.d > global0.d, global0.d, (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(53745u, 0u, u_input.a), vec3<u32>(u_input.b, u_input.a, u_input.a)), select(u_input.a, u_input.b, global0.e)) | ~u_input.a) < ~(~(~u_input.b)));
    var var_1 = func_2(_wgslsmith_mult_vec3_i32(~max(vec3<i32>(-2147483647i, global0.b.x, 1i), global0.b.yxy) | _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-1i, -19479i, 1i)), global0.b.xzx), select(~global0.b.zyw >> (firstTrailingBit(vec3<u32>(u_input.b, u_input.b, 11248u)) % vec3<u32>(32u)), abs(abs(global0.b.xxz)), any(var_0.yy))));
    let var_2 = vec4<i32>(_wgslsmith_div_i32(arg_0, i32(-1i) * -(1i >> (u_input.a % 32u))), -54390i, 21210i, i32(-1i) * -global0.b.x);
    let var_3 = true;
    return Struct_1(all(!(!(!vec4<bool>(false, var_0.x, var_3, var_0.x)))), global0.b, true, 411f, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(!global0.c, firstLeadingBit((vec4<i32>(1i, global0.b.x, global0.b.x, global0.b.x) | global0.b) << (vec4<u32>(u_input.a, u_input.a, ~23529u, countOneBits(21514u)) % vec4<u32>(32u))), true, 1183f, true);
    global0 = func_1(~_wgslsmith_mod_i32(global0.b.x, -1i));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(884f, global0.d)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(107f, 1653f) - vec2<f32>(-2414f, global0.d))))));
    let var_1 = abs(~(-42969i));
    global1 = array<vec2<u32>, 15>();
    var var_2 = all(!(!(!vec2<bool>(false, global0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, max(vec2<u32>(10470u, u_input.a), ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(92989u, 1u, u_input.b, u_input.a), vec4<u32>(u_input.a, 1u, 78521u, 66006u)), 15u)] >> (select(vec2<u32>(u_input.b, u_input.a), vec2<u32>(u_input.b, u_input.a), !vec2<bool>(global0.c, global0.c)) % vec2<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b, 70231u, ~u_input.b), abs(max(reverseBits(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a)), vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u)))), -1000f);
}

