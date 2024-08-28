struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_3) -> vec2<f32> {
    let var_0 = arg_0.xy;
    let var_1 = arg_0.x;
    var var_2 = u_input.b.x;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1005f, -190f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-541f, 1548f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(389f, 107f), vec2<f32>(300f, 1000f), var_1)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(957f, 760f) + vec2<f32>(-985f, -1000f))))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_4 {
    var var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1073f, -882f))), 1146f), false), Struct_1(_wgslsmith_f_op_vec2_f32(func_3(!select(arg_0.xyw, vec3<bool>(false, false, arg_0.x), false), min(-40258i ^ u_input.c.x, ~u_input.c.x), Struct_3(true))), true), u_input.a, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1000f, -1684f), 1000f)), any(select(vec4<bool>(arg_0.x, true, true, arg_0.x), arg_0, arg_0.x)) & false));
    var_0 = Struct_2(var_0.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, var_0.a.a.x)))) * var_0.b.a), any(arg_0.zz)), var_0.c, var_0.b);
    let var_1 = Struct_1(vec2<f32>(2501f, _wgslsmith_f_op_vec2_f32(func_3(!(!vec3<bool>(arg_0.x, true, arg_0.x)), u_input.c.x, Struct_3(!arg_0.x))).x), _wgslsmith_sub_i32(u_input.c.x, 1i) <= u_input.c.x);
    let var_2 = select(~firstLeadingBit(~vec4<u32>(u_input.b.x, 4294967295u, u_input.a, var_0.c)), (vec4<u32>(u_input.b.x, 19003u, var_0.c, u_input.b.x) << ((~vec4<u32>(22166u, 4294967295u, var_0.c, var_0.c) | reverseBits(vec4<u32>(var_0.c, var_0.c, 6180u, 32312u))) % vec4<u32>(32u))) << (~vec4<u32>(select(u_input.a, 24164u, var_0.d.b), u_input.b.x, ~u_input.b.x, 0u) % vec4<u32>(32u)), false);
    let var_3 = u_input.c.zxy;
    return Struct_4(true);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32, arg_3: Struct_3) -> i32 {
    let var_0 = Struct_5(_wgslsmith_add_i32(abs(-11315i), ~(-14459i)), reverseBits(~31587u), ~4294967295u, u_input.c.yxy, Struct_4(func_2(!vec4<bool>(false, arg_0.d.b, false, true)).a & true));
    let var_1 = arg_0.a.a;
    var var_2 = ~_wgslsmith_sub_i32(u_input.c.x, 0i);
    var var_3 = Struct_3(arg_0.a.b);
    var var_4 = _wgslsmith_f_op_f32(-var_1.x);
    return _wgslsmith_mod_i32(var_0.a, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a, var_0.a), u_input.c.yx), -vec2<i32>(u_input.c.x, var_0.a)), reverseBits(vec2<i32>(var_0.a, -1i))) >> (arg_2 % 32u));
}

fn func_1(arg_0: Struct_3) -> Struct_5 {
    let var_0 = u_input.b.x;
    return Struct_5(func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(195f, -1000f)), true), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-259f, -510f)), arg_0.a), reverseBits(83190u), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1785f, -523f)), true)), func_2(!(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false))), max(1u, 7256u), arg_0), 34493u, countOneBits(firstLeadingBit(u_input.a) >> (u_input.b.x % 32u)), vec3<i32>(~(-1i), -20486i, _wgslsmith_dot_vec4_i32(select(countOneBits(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), ~vec4<i32>(u_input.c.x, 11805i, u_input.c.x, u_input.c.x), false), _wgslsmith_clamp_vec4_i32(-u_input.c, u_input.c, ~u_input.c))), func_2(vec4<bool>(!(arg_0.a != false), true, all(select(vec2<bool>(false, arg_0.a), vec2<bool>(false, false), vec2<bool>(arg_0.a, false))), !(!arg_0.a))));
}

fn func_5(arg_0: u32, arg_1: Struct_5) -> bool {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(965f * 1819f), 197f, !arg_1.e.a));
    let var_1 = _wgslsmith_f_op_f32(-870f - 1000f);
    var_0 = _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1 + 1f))));
    let var_2 = arg_1;
    var_0 = 118f;
    return var_2.e.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(u_input.a, 4294967295u, !any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), func_1(Struct_3(true)));
    var_0 = func_5(~u_input.b.x, func_1(Struct_3(false)));
    let var_1 = min(u_input.c.xxy & firstLeadingBit(_wgslsmith_mult_vec3_i32(select(vec3<i32>(40221i, u_input.c.x, u_input.c.x), u_input.c.xyz, vec3<bool>(true, false, false)), _wgslsmith_div_vec3_i32(u_input.c.zxz, u_input.c.xzw))), vec3<i32>(u_input.c.x, firstLeadingBit(u_input.c.x), func_4(Struct_2(Struct_1(vec2<f32>(3455f, -332f), true), Struct_1(vec2<f32>(1000f, -1605f), true), 22838u, Struct_1(vec2<f32>(-843f, -2355f), false)), func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true)), u_input.b.x | ~u_input.b.x, Struct_3(true))));
    let var_2 = u_input.c.zy;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -800f) - _wgslsmith_f_op_f32(f32(-1f) * -865f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-215f * -1756f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-369f + 567f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-367f)) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1112f - 1289f), _wgslsmith_f_op_f32(ceil(1032f)), u_input.b.x <= 16675u)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -2164f) + 560f))));
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -735f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.x), var_3.x, true))))), _wgslsmith_add_u32(~(~11532u), 1u), firstTrailingBit(_wgslsmith_add_u32(~_wgslsmith_div_u32(0u, 4294967295u), u_input.a)), _wgslsmith_add_i32(-63246i, 0i));
}

