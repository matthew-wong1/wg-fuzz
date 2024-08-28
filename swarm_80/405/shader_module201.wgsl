struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    let var_0 = 36121u > arg_0.x;
    let var_1 = false;
    let var_2 = arg_2;
    var var_3 = true;
    var var_4 = countOneBits(~u_input.a.x) | 1u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.d.x)) + _wgslsmith_f_op_f32(var_2.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-469f * _wgslsmith_f_op_f32(-1000f - 1826f)))));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-1755f - _wgslsmith_f_op_f32(f32(-1f) * -112f))) + vec3<f32>(_wgslsmith_div_f32(var_0, var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -717f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1189f)))));
    var var_2 = Struct_1(~arg_1.wxy, !(!select(vec2<bool>(true, true), vec2<bool>(arg_0, false), true)), !arg_0, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_1.x)), 326f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-688f, var_1.x))))));
    var var_3 = arg_1;
    let var_4 = vec3<bool>(arg_0, false, all(!(!vec4<bool>(true, var_2.b.x, false, arg_0))));
    return -arg_1.x;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_2(reverseBits(_wgslsmith_add_i32(arg_2, 0i)), Struct_1(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(-22284i, arg_2, -58383i)), vec3<i32>(0i, 0i ^ arg_2, arg_2)), vec2<bool>(true, true), true, vec4<f32>(_wgslsmith_f_op_f32(-621f * 856f), _wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.a.x, arg_3.x, 1u, arg_0), vec2<bool>(true, true), Struct_1(vec3<i32>(-38984i, -1552i, arg_2), vec2<bool>(true, true), true, vec4<f32>(494f, 944f, 236f, -383f)))), _wgslsmith_f_op_f32(529f - _wgslsmith_div_f32(456f, 1067f)), 830f)), countOneBits(vec2<i32>(~abs(2147483647i), -2147483647i)), -vec3<i32>(arg_2 << (u_input.a.x % 32u), ~(-4596i) >> (arg_0 % 32u), _wgslsmith_mult_i32(arg_2, func_3(true, vec4<i32>(arg_2, arg_2, -1i, arg_2)))));
    let var_1 = _wgslsmith_sub_i32(var_0.a, var_0.c.x);
    let var_2 = abs(abs(29766u));
    let var_3 = u_input.a.xz;
    var var_4 = var_0.b.b.x;
    return Struct_1(~(~vec3<i32>(1i, -2147483647i, 710i)), select(vec2<bool>(var_0.b.b.x, var_0.b.c), select(vec2<bool>(true, true), select(select(vec2<bool>(var_0.b.b.x, false), vec2<bool>(true, var_0.b.b.x), false), !var_0.b.b, var_0.b.b), _wgslsmith_clamp_i32(-13507i, arg_2, -2147483647i) > 3434i), true), var_0.b.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.d.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1112f)))), var_0.b.d.x, -1489f)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = min(func_2(0u, _wgslsmith_mod_u32(u_input.a.x >> (u_input.a.x % 32u), ~4294967295u), 0i, _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(8257u, arg_2.x), vec2<u32>(0u, 1u)), vec2<u32>(1u, u_input.a.x) ^ u_input.a.xx)).a.x, -arg_3.a.x) & 1i;
    var var_1 = arg_0;
    var var_2 = Struct_1(firstTrailingBit(vec3<i32>(arg_3.a.x, firstLeadingBit(_wgslsmith_dot_vec3_i32(var_1.d, vec3<i32>(arg_0.d.x, var_0, 1i))), var_1.a | ~arg_1.c.x)), vec2<bool>(func_2(~7857u, min(firstLeadingBit(11011u), arg_2.x), -6205i, arg_2).c, arg_1.b.b.x), any(select(vec4<bool>(arg_1.b.c, true, true, true), !select(vec4<bool>(var_1.b.c, true, true, true), vec4<bool>(false, true, true, var_1.b.c), vec4<bool>(arg_0.b.c, false, true, true)), !vec4<bool>(false, true, arg_1.b.c, arg_0.b.b.x))), arg_1.b.d);
    var var_3 = u_input.a;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_3.d.zwz, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.d.x) - _wgslsmith_f_op_f32(exp2(arg_3.d.x))), -315f, -984f)));
    return -19351i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 378f >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(192f)) + _wgslsmith_f_op_f32(func_1(vec4<u32>(20964u, 4459u, 1336u, 336u), vec2<bool>(true, false), Struct_1(vec3<i32>(-2714i, 2147483647i, 4408i), vec2<bool>(false, true), false, vec4<f32>(1988f, -2434f, -1149f, 671f)))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1033f + -2528f) * 1316f))), -884f);
    var_1 = _wgslsmith_f_op_f32(-566f + -1000f);
    let var_2 = (-2147483647i | ~_wgslsmith_dot_vec3_i32(max(vec3<i32>(-12404i, -58656i, -1i), vec3<i32>(5506i, -1676i, -2147483647i)), vec3<i32>(4837i, -51532i, 0i))) & _wgslsmith_mod_i32(1i, func_4(Struct_2(_wgslsmith_add_i32(-1i, -1i), func_2(u_input.a.x, 4294967295u, -25675i, u_input.a.zz), _wgslsmith_mult_vec2_i32(vec2<i32>(-25045i, -1i), vec2<i32>(0i, -55136i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-12619i, 24889i, -19312i), vec3<i32>(-4822i, 8631i, -18519i))), Struct_2(2147483647i, func_2(35097u, u_input.a.x, -1i, u_input.a.yy), -vec2<i32>(1i, -1i), vec3<i32>(-16542i, 1i, 15209i)), vec2<u32>(u_input.a.x, u_input.a.x) | u_input.a.zz, Struct_1(~vec3<i32>(19537i, 0i, -2147483647i), func_2(1u, 1u, 2147483647i, vec2<u32>(u_input.a.x, u_input.a.x)).b, true, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(596f, 1667f, -1177f, 622f), vec4<f32>(-252f, 275f, 2170f, 637f))))));
    var var_3 = !vec3<bool>(var_0, var_0, true);
    var var_4 = Struct_2(0i, func_2(~u_input.a.x, 1u, func_2(reverseBits(u_input.a.x), ~u_input.a.x, -40865i, u_input.a.yy).a.x, ~vec2<u32>(~31007u, 4294967295u)), _wgslsmith_add_vec2_i32(select(~min(vec2<i32>(-1i, var_2), vec2<i32>(var_2, 1i)), vec2<i32>(-26782i, firstLeadingBit(-2147483647i)), false), firstLeadingBit(vec2<i32>(-2147483647i, var_2))), _wgslsmith_add_vec3_i32(vec3<i32>(var_2, var_2, -(var_2 ^ 25807i)), vec3<i32>(-3055i, var_2, -8553i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-392f)))), -312f, ~var_4.d.zy, 0i);
}

