struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-4910i);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_2 {
    global0 = Struct_1(-1i);
    global0 = Struct_1(abs(-1i) << (_wgslsmith_sub_u32(u_input.c, 20477u) % 32u));
    let var_0 = firstLeadingBit(-(~(~0i)));
    global0 = Struct_1(40534i);
    return arg_1;
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> i32 {
    global0 = Struct_1(-select(-39286i, ~0i, false));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1296f, -442f, -112f, 1525f), vec4<f32>(-591f, 181f, 814f, 799f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-433f, 1470f, -457f, 1006f))))))));
    var var_1 = abs(u_input.b.xyw);
    let var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.b.x ^ _wgslsmith_mod_u32(var_1.x, var_1.x), firstLeadingBit(~0u)), firstLeadingBit(vec2<u32>(_wgslsmith_clamp_u32(1u, 0u, 21990u), ~0u))), ~vec2<u32>(26612u << (arg_1 % 32u), max(~arg_1, ~111178u)), abs(u_input.b.yw));
    let var_3 = func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-302f + var_0.x), _wgslsmith_f_op_f32(ceil(1000f)))), var_0.x) + vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_0.x)), 1f)))), Struct_2(_wgslsmith_clamp_i32(2147483647i, firstTrailingBit(_wgslsmith_mult_i32(0i, -19889i)), ~u_input.a | u_input.a), func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, -714f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 598f))), func_1(var_0.zx, func_1(var_0.yy, Struct_2(arg_0.x, Struct_1(1i), Struct_1(2147483647i))))).c, func_1(var_0.zx, func_1(_wgslsmith_f_op_vec2_f32(ceil(var_0.zx)), func_1(var_0.yx, Struct_2(arg_0.x, Struct_1(3778i), Struct_1(arg_0.x))))).c)).b;
    return abs(_wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_mod_i32(~(-13747i), 3902i)), -2147483647i));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    global0 = arg_1.b;
    let var_0 = _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b.x | ~4294967295u, ~0u), abs(~1u) & u_input.c);
    var var_1 = Struct_1(~(~func_1(vec2<f32>(853f, 792f), Struct_2(0i, arg_1.b, Struct_1(global0.a))).a | 23591i));
    let var_2 = arg_1.b;
    let var_3 = Struct_1(func_3(vec4<i32>(_wgslsmith_div_i32(-22862i, abs(u_input.a)), var_1.a, (-11934i | u_input.a) & (var_1.a & -1i), _wgslsmith_div_i32(0i, min(-33290i, global0.a))), ~_wgslsmith_mod_u32(0u, 1u)));
    return var_2;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    global0 = arg_1.b;
    global0 = func_2(2539f, func_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(696f, 868f))), -230f), Struct_2(-1i, Struct_1(1i), Struct_1(arg_0))));
    let var_0 = 1i;
    var var_1 = func_1(vec2<f32>(568f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-632f, -718f), -559f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-550f, 468f) * _wgslsmith_f_op_f32(ceil(-1915f))))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-795f, 302f))))), func_1(vec2<f32>(_wgslsmith_f_op_f32(689f - -564f), -730f), Struct_2(i32(-1i) * -2147483647i, arg_1.b, func_2(1587f, Struct_2(72065i, Struct_1(var_0), arg_1.c))))));
    var var_2 = !(!(true | arg_3.x));
    return func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(129f, -1000f), vec2<f32>(-814f, 166f)) - vec2<f32>(-1607f, -1232f)))), func_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(215f, -942f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-828f, 1000f) + vec2<f32>(1091f, 567f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1201f, 756f) + vec2<f32>(-1092f, 522f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-793f, 465f) - vec2<f32>(-418f, -1654f))))), arg_1)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(countOneBits(-(~u_input.a) >> (~6269u % 32u)), func_4(~(~(~global0.a)), Struct_2(~(-10450i), func_2(1066f, func_1(vec2<f32>(1321f, -585f), Struct_2(u_input.a, Struct_1(15869i), Struct_1(56850i)))), func_2(_wgslsmith_f_op_f32(floor(192f)), Struct_2(u_input.a, Struct_1(u_input.a), Struct_1(u_input.a)))), !(true || all(vec2<bool>(true, true))), vec3<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)), true, select(true, true, true))), func_1(vec2<f32>(-480f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-774f))))), func_1(vec2<f32>(-800f, _wgslsmith_f_op_f32(sign(1535f))), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(864f, -2079f)), func_1(vec2<f32>(-308f, 427f), Struct_2(u_input.a, Struct_1(29360i), Struct_1(0i)))))).b);
    var var_1 = Struct_2(_wgslsmith_mod_i32(u_input.a, abs(func_2(-2523f, var_0).a)), var_0.c, var_0.b);
    var_1 = var_0;
    var_1 = func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1478f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1978f + -401f) * -440f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1158f))))), Struct_2(~global0.a, var_0.b, Struct_1(0i & var_0.b.a)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(724f)));
    var var_3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -989f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-484f, 504f))))), countOneBits(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, u_input.c), 0u)), ~u_input.b.x, select(abs(min(vec2<i32>(354i, -25885i), vec2<i32>(0i, var_1.b.a))) >> (_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.zw, u_input.b.wz), vec2<u32>(u_input.c, 4294967295u)) % vec2<u32>(32u)), select(vec2<i32>(-var_0.c.a, func_2(var_2, Struct_2(var_1.c.a, Struct_1(-23458i), var_1.c)).a), _wgslsmith_clamp_vec2_i32(min(vec2<i32>(var_0.a, u_input.a), vec2<i32>(-5617i, -1i)), vec2<i32>(var_1.b.a, 1i), vec2<i32>(-2147483647i, var_0.b.a) ^ vec2<i32>(var_1.b.a, var_3.a)), !all(vec4<bool>(true, false, false, true))), false));
}

