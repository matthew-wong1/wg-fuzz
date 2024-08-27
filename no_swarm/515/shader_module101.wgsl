struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> u32 {
    global0 = arg_1.b;
    global0 = Struct_3(true, 51420u, global0.c, Struct_1(_wgslsmith_f_op_f32(max(arg_1.b.d.a, _wgslsmith_f_op_f32(f32(-1f) * -847f)))));
    let var_0 = Struct_2(~select(u_input.a.xy, -vec2<i32>(375i, arg_1.a), arg_1.b.c.xy) ^ -vec2<i32>(-arg_1.a, u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1475f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.a) - _wgslsmith_f_op_f32(trunc(arg_1.b.d.a))))));
    var var_1 = Struct_4(-2147483647i, arg_1.b, firstTrailingBit(~36034u));
    let var_2 = Struct_2(_wgslsmith_add_vec2_i32(-var_0.a, _wgslsmith_mult_vec2_i32(u_input.a.zw, -vec2<i32>(1i, -8670i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-228f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.b.d.a), _wgslsmith_f_op_f32(select(-1374f, var_1.b.d.a, arg_1.b.c.x)))))));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(1u, global0.b, 22013u, var_1.b.b) & vec4<u32>(var_1.c, 11718u, arg_1.b.b, arg_1.c)), vec4<u32>(max(6619u, 91004u), _wgslsmith_div_u32(var_1.b.b, ~global0.b), ~(~arg_1.c), 36940u)), max(vec4<u32>(global0.b, 0u, 21374u, ~(~34702u)), vec4<u32>(0u, var_1.c, _wgslsmith_dot_vec2_u32(vec2<u32>(116884u, 1u), vec2<u32>(50678u, 1u) & vec2<u32>(45754u, global0.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c, 20350u, 99727u), vec3<u32>(var_1.c, 1u, 0u) >> (vec3<u32>(37125u, 32506u, u_input.b) % vec3<u32>(32u))))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    global0 = Struct_3(true, func_3(true, Struct_4(abs(i32(-1i) * -18418i), Struct_3(global0.a, 4294967295u, vec3<bool>(false, true, true), Struct_1(global0.d.a)), u_input.b | 1u)), global0.c, global0.d);
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.a) - 304f), global0.d.a)), _wgslsmith_f_op_f32(floor(global0.d.a)));
    global0 = Struct_3(global0.c.x | global0.a, select(~arg_0.x, countOneBits(arg_0.x), global0.a & any(global0.c.xz)), !vec3<bool>(all(select(global0.c, vec3<bool>(global0.c.x, global0.a, false), global0.c)), global0.c.x, all(!global0.c.zy)), Struct_1(-1000f));
    var var_1 = !vec3<bool>(true, _wgslsmith_f_op_f32(exp2(global0.d.a)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)), !any(vec3<bool>(true, true, true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.d.a)) + var_0));
    return Struct_3(!var_1.x, ~u_input.b, vec3<bool>(select(var_1.x, all(vec2<bool>(false, global0.c.x)), var_1.x), !((var_0 >= -164f) || all(vec4<bool>(global0.c.x, var_1.x, false, var_1.x))), false), global0.d);
}

fn func_1(arg_0: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-911f + global0.d.a)), global0.d.a, _wgslsmith_div_f32(global0.d.a, global0.d.a), global0.d.a) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-477f, global0.d.a, global0.d.a, -202f) * vec4<f32>(1000f, -1772f, global0.d.a, 477f)))))));
    let var_1 = !global0.c.x;
    var var_2 = Struct_4(u_input.a.x, func_2(countOneBits(vec3<u32>(u_input.b, global0.b, global0.b) ^ (vec3<u32>(3050u, u_input.b, 4294967295u) & vec3<u32>(u_input.b, global0.b, 4294967295u)))), 1u);
    let var_3 = var_0.zxz;
    let var_4 = -(u_input.a.ww ^ vec2<i32>(_wgslsmith_clamp_i32(firstTrailingBit(-406i), 1i, var_2.a), ~(var_2.a & -41723i)));
    return var_0.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.a));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_3.wz - arg_3.xx);
    let var_1 = u_input.a.yz;
    var var_2 = Struct_2(~(~reverseBits(u_input.a.zx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.a, arg_0.d.a) * vec2<f32>(2136f, global0.d.a)), _wgslsmith_f_op_vec2_f32(select(arg_3.zy, arg_3.wy, vec2<bool>(false, arg_0.c.x)))))));
    let var_3 = vec2<f32>(func_2(firstLeadingBit(abs(~vec3<u32>(global0.b, u_input.b, 11101u)))).d.a, _wgslsmith_f_op_f32(var_0.x + global0.d.a));
    var var_4 = global0.c.x;
    return Struct_2(select(~vec2<i32>(select(-55418i, 2147483647i, arg_0.c.x), _wgslsmith_mult_i32(var_2.a.x, 1i)), countOneBits(u_input.a.xx), select(!select(arg_0.c.zy, global0.c.xx, false), vec2<bool>(arg_1, !arg_1), global0.c.yy)), var_2.b);
}

fn func_5(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> Struct_3 {
    let var_0 = ~12970u;
    global0 = arg_3;
    global0 = arg_3;
    var var_1 = ~(min(vec2<u32>(0u, ~72653u), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, global0.b), vec2<u32>(1u, var_0))) ^ vec2<u32>(arg_3.b, func_2(vec3<u32>(33020u, 4294967295u, 4782u)).b ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 4294967295u), vec2<u32>(global0.b, 26738u))));
    let var_2 = -1781f;
    return Struct_3(true, 0u | global0.b, !vec3<bool>(func_1(-u_input.a), global0.a, all(global0.c.yy) & arg_3.c.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global0.c.x, u_input.b, vec3<bool>(false, global0.a, true), global0.d);
    global0 = func_5(vec4<f32>(_wgslsmith_f_op_f32(select(518f, global0.d.a, true & var_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.a, var_0.d.a)), -1784f), -258f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.d.a, global0.d.a)))), 1008f)), ~_wgslsmith_clamp_i32(firstTrailingBit(abs(u_input.a.x)), -34707i, -(~u_input.a.x)), func_4(Struct_3(false, _wgslsmith_div_u32(~var_0.b, var_0.b), global0.c, Struct_1(_wgslsmith_div_f32(var_0.d.a, -1316f))), func_1(vec4<i32>(firstLeadingBit(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), u_input.a.x, ~(-1i))), -478f, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-361f)), _wgslsmith_f_op_f32(global0.d.a - global0.d.a)), 842f, var_0.d.a, -779f)), func_2(~(~vec3<u32>(4294967295u, 4294967295u, var_0.b)) & vec3<u32>(0u, ~global0.b, 0u)));
    var var_1 = min(-func_4(Struct_3(true, global0.b & global0.b, select(var_0.c, vec3<bool>(global0.a, false, global0.a), var_0.c), func_2(vec3<u32>(65436u, 4294967295u, var_0.b)).d), var_0.c.x, _wgslsmith_f_op_f32(-global0.d.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(495f, var_0.d.a, 843f, global0.d.a) * vec4<f32>(-826f, 488f, 1000f, -162f)))).a.x, 1i);
    var var_2 = 4294967295u;
    var_2 = var_0.b;
    var var_3 = ~global0.b;
    var var_4 = 875f;
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, u_input.b, var_0.b), vec4<u32>(global0.b, var_0.b, 43644u, var_0.b)), vec4<u32>(11218u, 0u, 32630u, u_input.b) ^ vec4<u32>(6787u, u_input.b, u_input.b, u_input.b)) | (vec4<u32>(72981u, 0u, 1u, 46129u) & vec4<u32>(0u, 27071u, var_0.b, global0.b))) & _wgslsmith_mod_vec4_u32(abs(max(vec4<u32>(783u, 1u, var_0.b, 56006u), vec4<u32>(1u, u_input.b, global0.b, global0.b))), (vec4<u32>(var_0.b, 0u, 77073u, var_0.b) >> (vec4<u32>(59578u, 6486u, var_0.b, 1u) % vec4<u32>(32u))) >> (min(vec4<u32>(11714u, var_0.b, 3804u, 27752u), vec4<u32>(u_input.b, 4294967295u, 36279u, var_0.b)) % vec4<u32>(32u))), 1031f, vec3<i32>(min(-2147483647i, u_input.a.x), firstTrailingBit(_wgslsmith_clamp_i32(~u_input.a.x, 0i, ~(-1i))), u_input.a.x), -min(-_wgslsmith_div_vec2_i32(u_input.a.zy, vec2<i32>(-1i, -23090i)), _wgslsmith_sub_vec2_i32(-u_input.a.xw, vec2<i32>(79587i, u_input.a.x))));
}

