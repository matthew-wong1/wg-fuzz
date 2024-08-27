struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    let var_0 = !(false || all(vec3<bool>(true, true, false)));
    let var_1 = vec3<bool>(all(!vec2<bool>(select(var_0, var_0, false), false)), var_0, true);
    return !vec2<bool>(var_1.x, !any(select(var_1.yz, vec2<bool>(var_0, var_1.x), false)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = select(vec2<bool>(false, true), arg_0.xx, func_3());
    let var_1 = Struct_1(firstLeadingBit(select(u_input.c.xwx, abs(_wgslsmith_div_vec3_i32(u_input.c.xxz, vec3<i32>(u_input.b.x, u_input.c.x, u_input.c.x))), func_3().x)), !vec4<bool>(all(vec4<bool>(false, arg_0.x, var_0.x, false)), var_0.x, u_input.a.x > ~u_input.d, false));
    var var_2 = func_3().x;
    var var_3 = var_1.a & max(vec3<i32>(2147483647i, 11670i, -min(u_input.c.x, u_input.b.x)), _wgslsmith_sub_vec3_i32(var_1.a >> (_wgslsmith_clamp_vec3_u32(u_input.a.wzz, u_input.a.yzz, vec3<u32>(50698u, u_input.a.x, 24182u)) % vec3<u32>(32u)), ~vec3<i32>(-2147483647i, -5030i, var_1.a.x)));
    var_3 = vec3<i32>(2296i, u_input.b.x, firstLeadingBit(u_input.c.x));
    return Struct_2(var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(216f, -1000f)))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~u_input.a.x, ~15204u), (u_input.d ^ 7203u) >> (u_input.a.x % 32u)) ^ (~_wgslsmith_mod_u32(u_input.a.x, 0u) << (_wgslsmith_mult_u32(~u_input.d, 16604u) % 32u)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = u_input.b;
    let var_1 = !func_2(arg_2.a.b.zxw).a.b;
    var var_2 = u_input.a.zx;
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.b.x)) + -149f), _wgslsmith_f_op_f32(sign(arg_2.b.x))));
    var var_4 = arg_2.a.b.wy;
    return Struct_1(abs(select(-vec3<i32>(-19028i, -26064i, 0i), firstLeadingBit(_wgslsmith_mult_vec3_i32(arg_2.a.a, vec3<i32>(17004i, var_0.x, arg_3.x))), arg_0)), vec4<bool>(true, arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 32437u, 4294967295u), vec3<u32>(47653u, arg_1, arg_2.c)) > _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 31727u), vec3<u32>(arg_1, var_2.x, arg_2.c)), any(select(var_1, select(vec4<bool>(var_4.x, true, arg_0, var_4.x), arg_2.a.b, var_1), false))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> vec4<bool> {
    var var_0 = Struct_2(func_2(select(arg_2.b.wxy, arg_1.b.zxy, arg_3.x)).a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), -728f)))), select(22145u, u_input.a.x, false));
    var_0 = Struct_2(Struct_1(vec3<i32>(min(0i, _wgslsmith_sub_i32(-15959i, 501i)), var_0.a.a.x, 41736i), vec4<bool>(true, true & !arg_3.x, var_0.a.b.x, var_0.a.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b.x, 1193f)))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.x, 902f))))), _wgslsmith_dot_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.a.x), u_input.a.yy, vec2<u32>(var_0.c, u_input.d))), ~u_input.a.wz));
    let var_1 = Struct_2(var_0.a, var_0.b, 9542u);
    var_0 = func_2(arg_1.b.wyw);
    let var_2 = -min(_wgslsmith_div_vec2_i32(u_input.c.wx, reverseBits(vec2<i32>(var_0.a.a.x, var_0.a.a.x))), var_0.a.a.zy) & select(vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(1i, u_input.b.x)), max(-countOneBits(u_input.b.zz), func_2(arg_2.b.wyz).a.a.xz), !(-1000f < var_1.b.x) | arg_1.b.x);
    return !(!vec4<bool>(!arg_2.b.x, !var_0.a.b.x, all(func_2(vec3<bool>(false, arg_2.b.x, true)).a.b.zx), ~u_input.d > _wgslsmith_clamp_u32(1u, var_0.c, var_1.c)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = !select(!vec4<bool>(true, arg_1.b.x & false, u_input.a.x <= u_input.d, true), arg_1.b, arg_1.b);
    var var_1 = Struct_2(arg_1, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(332f, 355f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(549f, 566f), vec2<f32>(1498f, -1133f)))), arg_1.b.x)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a.xw, vec2<u32>(1u, ~38241u)), _wgslsmith_sub_u32(~u_input.a.x, u_input.a.x)));
    let var_2 = vec3<f32>(var_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b.x, -765f, arg_1.b.x)))), _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_1.b.x, var_1.b.x, true)))))), -144f);
    let var_3 = arg_1;
    var_1 = Struct_2(Struct_1(var_1.a.a, func_5(vec4<f32>(1693f, _wgslsmith_f_op_f32(f32(-1f) * -1693f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x - var_1.b.x)), arg_1, func_4(true, _wgslsmith_add_u32(25574u, 20205u), func_2(vec3<bool>(false, arg_1.b.x, arg_1.b.x)), vec3<i32>(var_3.a.x, var_1.a.a.x, 6879i) ^ var_3.a), arg_1.b.zx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, -795f)) * _wgslsmith_f_op_vec2_f32(var_1.b * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.b.x, 365f)))))), u_input.a.x);
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = u_input.a.ww;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(reverseBits(~u_input.c.x), Struct_1(u_input.b & vec3<i32>(-4709i, u_input.b.x, u_input.b.x), vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-214f * 750f), _wgslsmith_f_op_f32(957f - 1590f), true))))));
    var_0 = true;
    var_0 = !func_4(false, ~(_wgslsmith_dot_vec3_u32(u_input.a.yyy, u_input.a.ywy) | u_input.a.x), func_2(vec3<bool>(any(vec3<bool>(false, false, true)), true, false)), u_input.b).b.x;
    let var_3 = func_2(!vec3<bool>(any(func_2(vec3<bool>(true, false, false)).a.b.xzw), true, any(vec2<bool>(true, true)))).a;
    var var_4 = var_3;
    var_0 = var_3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(1i, 32104i, var_3.a.x, 1i >> (_wgslsmith_mod_u32(var_1.x, 16732u) % 32u)), vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, -u_input.b.x), -2147483647i, ~632i, _wgslsmith_mod_i32(countOneBits(var_3.a.x), var_3.a.x)), func_2(func_2(vec3<bool>(var_3.b.x, true, var_3.b.x)).a.b.xxw).a.b), vec2<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(u_input.b.zz, vec2<i32>(0i, var_4.a.x), u_input.c.yx), max(vec2<i32>(u_input.c.x, -24028i), -vec2<i32>(18861i, -12583i))), -28915i), _wgslsmith_clamp_i32(max(_wgslsmith_add_i32(_wgslsmith_clamp_i32(0i, 27528i, 0i), -var_4.a.x), 62954i), 1i, i32(-1i) * -2147483647i), _wgslsmith_f_op_vec2_f32(-var_2));
}

