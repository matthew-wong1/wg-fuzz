struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_1.b.d.x, 20274i), arg_0.b.d.x), 0i), i32(-1i) * -1i);
    let var_1 = arg_1.b.d.x;
    var var_2 = vec4<bool>(true, true, arg_0.c, !(true == arg_0.c));
    var_2 = !select(select(!select(vec4<bool>(true, var_2.x, true, true), vec4<bool>(arg_0.d.b, arg_0.d.b, false, false), true), select(vec4<bool>(arg_1.d.b, false, true, arg_0.b.b), !vec4<bool>(true, arg_1.b.b, arg_1.c, false), vec4<bool>(arg_1.d.b, false, false, false)), vec4<bool>(!arg_1.b.b, true, false, all(vec2<bool>(false, true)))), vec4<bool>(true, false, arg_1.e.b, false), !(!select(vec4<bool>(true, arg_0.d.b, true, true), vec4<bool>(true, true, false, arg_0.d.b), vec4<bool>(var_2.x, arg_0.b.b, false, arg_1.d.b))));
    var_2 = select(!(!vec4<bool>(arg_0.c, arg_1.e.b, select(arg_0.c, var_2.x, true), arg_1.c)), select(!select(select(vec4<bool>(false, arg_0.c, arg_1.e.b, true), vec4<bool>(true, false, var_2.x, arg_0.d.b), false), vec4<bool>(true, arg_1.c, arg_1.c, var_2.x), true), !(!select(vec4<bool>(var_2.x, true, true, true), vec4<bool>(arg_0.e.b, arg_0.b.b, arg_0.e.b, true), arg_0.d.b)), all(select(!vec3<bool>(true, false, arg_1.d.b), var_2.wyz, select(vec3<bool>(var_2.x, var_2.x, true), var_2.zzy, var_2.yzz)))), any(vec4<bool>(!var_2.x, !(var_1 != 5595i), ~13456u > ~u_input.b, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<bool>) -> i32 {
    let var_0 = vec2<f32>(arg_1.c, -1709f);
    let var_1 = arg_2.e.d.x;
    var var_2 = arg_2.e.d.x;
    let var_3 = -694f;
    var var_4 = arg_2;
    return -firstTrailingBit(reverseBits(-_wgslsmith_mod_i32(0i, arg_2.e.d.x)));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>) -> vec3<i32> {
    let var_0 = u_input.a.x;
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(931f, 1134f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.b.c, 340f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.b.c, -867f)))))) * vec2<f32>(_wgslsmith_f_op_f32(899f - _wgslsmith_div_f32(arg_0.b.c, -563f)), 729f)));
    let var_3 = arg_0.e.a.x & arg_0.b.e;
    var var_4 = arg_0.d;
    return _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(8495i, 3888i) >> (_wgslsmith_clamp_u32(var_4.e, var_4.a.x, 48603u) % 32u), countOneBits(max(1i, var_0)), _wgslsmith_add_i32(var_0 | 7670i, -2147483647i)), func_4(_wgslsmith_f_op_f32(func_3(arg_0, arg_0, -24000i)), arg_0.e, arg_0, vec4<bool>(!arg_0.b.b, any(vec2<bool>(true, arg_0.b.b)), 14950i == u_input.a.x, arg_0.b.b & true)), -(~(~(-5880i)))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.c)));
    var var_1 = Struct_1(max(arg_3.a, select(~(~vec3<u32>(100415u, arg_1.e.a.x, arg_1.b.a.x)), abs(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 25183u, arg_3.a.x), vec3<u32>(arg_3.a.x, arg_2, u_input.b))), vec3<bool>(all(vec2<bool>(arg_1.b.b, true)), true, arg_1.b.b))), !arg_3.b, _wgslsmith_f_op_f32(f32(-1f) * -1291f), arg_0, max(arg_2 & u_input.b, u_input.b));
    let var_2 = all(select(!vec2<bool>(var_1.b, var_1.e >= 4294967295u), vec2<bool>(true, !any(vec4<bool>(arg_3.b, true, arg_3.b, false))), 1i < func_4(_wgslsmith_div_f32(var_0, arg_3.c), arg_3, arg_1, vec4<bool>(arg_1.d.b, false, var_1.b, true))));
    let var_3 = 1u;
    var_1 = Struct_1(~arg_1.e.a, !(!arg_1.d.b) || all(!vec4<bool>(true, true, true, arg_3.b)), 188f, firstTrailingBit(~u_input.a), arg_2);
    return 81118u;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: vec2<bool>) -> u32 {
    let var_0 = arg_2;
    let var_1 = var_0.d.d.x;
    var var_2 = 0u;
    let var_3 = var_0.e.d.yx;
    var_2 = var_0.d.a.x;
    return func_5(min(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(var_0.e.d, -vec3<i32>(var_3.x, -2147483647i, u_input.a.x)), _wgslsmith_div_vec3_i32(arg_0.b.d | vec3<i32>(var_1, 29455i, var_3.x), vec3<i32>(1i, 2147483647i, -54032i))), func_2(arg_0, 29198i, -vec2<i32>(u_input.a.x, -2147483647i))), Struct_2(abs(_wgslsmith_div_i32(-var_3.x, ~85065i)), var_0.e, all(vec4<bool>(false, select(arg_0.d.b, false, arg_2.e.b), true, arg_0.c)), var_0.e, Struct_1(_wgslsmith_sub_vec3_u32(firstTrailingBit(arg_2.b.a), vec3<u32>(40599u, arg_0.d.e, arg_0.d.e)), all(vec4<bool>(false, true, true, false)), _wgslsmith_f_op_f32(arg_0.d.c + -762f), _wgslsmith_mult_vec3_i32(-vec3<i32>(arg_2.b.d.x, arg_0.a, 8806i), ~u_input.a), firstTrailingBit(arg_2.e.e >> (27075u % 32u)))), ~61025u, arg_0.b);
}

fn func_6(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = ~u_input.b;
    var_0 = _wgslsmith_dot_vec2_u32(max(_wgslsmith_mult_vec2_u32(~min(vec2<u32>(73241u, 0u), vec2<u32>(4294967295u, u_input.b)), select(vec2<u32>(21094u, 5469u), ~vec2<u32>(u_input.b, u_input.b), arg_0.x)), select(~(~vec2<u32>(115546u, 59686u)), (vec2<u32>(0u, u_input.b) >> (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))) | (vec2<u32>(342u, u_input.b) ^ vec2<u32>(u_input.b, 37555u)), true)), vec2<u32>(abs(_wgslsmith_mod_u32(0u, u_input.b)), ~u_input.b) >> (~vec2<u32>(1u, u_input.b ^ u_input.b) % vec2<u32>(32u)));
    return Struct_1(~countOneBits(vec3<u32>(1u, 87038u, _wgslsmith_clamp_u32(u_input.b, 16298u, 4294967295u))), !(_wgslsmith_f_op_f32(ceil(1f)) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -654f), -1306f, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -498f))), 318f), vec3<i32>(-u_input.a.x, 1i, min(3909i, ~(-48803i))), _wgslsmith_mod_u32(~_wgslsmith_div_u32(min(7907u, u_input.b), u_input.b), u_input.b));
}

fn func_7(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1126f, arg_1, arg_1) - vec3<f32>(242f, -1168f, -1000f)) * vec3<f32>(-231f, -960f, -391f)) * vec3<f32>(arg_0.c, arg_0.c, _wgslsmith_div_f32(arg_1, arg_1)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.c - arg_1), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_0.c + -1000f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, -737f, arg_1))))));
    var var_1 = arg_0.d.zz;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-152f + _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -614f))) + func_6(select(select(!vec4<bool>(false, arg_0.b, arg_2, arg_0.b), !vec4<bool>(false, true, arg_0.b, arg_0.b), arg_0.b), select(!vec4<bool>(true, true, false, arg_0.b), !vec4<bool>(true, arg_0.b, arg_2, arg_2), false), !all(vec4<bool>(false, arg_0.b, arg_0.b, arg_0.b)))).c);
    var_1 = _wgslsmith_mult_vec2_i32(-u_input.a.xx, -_wgslsmith_mod_vec2_i32(-max(vec2<i32>(u_input.a.x, var_1.x), vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(1570i, ~u_input.a.x)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1308f, arg_1) * arg_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 479f)) + 535f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -724f))));
    return StorageBuffer(vec3<i32>(var_1.x, -1i, var_1.x) | u_input.a, select(arg_0.a.x, firstTrailingBit(~func_1(Struct_2(u_input.a.x, Struct_1(arg_0.a, arg_0.b, 138f, arg_0.d, arg_0.a.x), arg_0.b, Struct_1(vec3<u32>(u_input.b, arg_0.e, arg_0.e), false, 938f, vec3<i32>(2893i, arg_0.d.x, arg_0.d.x), u_input.b), arg_0), var_0.x, Struct_2(-9158i, arg_0, arg_2, arg_0, Struct_1(vec3<u32>(u_input.b, arg_0.e, 4294967295u), false, -293f, vec3<i32>(11353i, arg_0.d.x, u_input.a.x), u_input.b)), vec2<bool>(arg_2, false))), arg_0.b), 23117u, select(~(select(vec4<u32>(6940u, 4417u, 0u, 86679u), vec4<u32>(32708u, 4294967295u, u_input.b, arg_0.a.x), vec4<bool>(true, arg_0.b, arg_2, true)) | _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.e, 4294967295u, 94571u, arg_0.a.x), vec4<u32>(0u, 49882u, u_input.b, arg_0.a.x))), firstLeadingBit(vec4<u32>(1u, _wgslsmith_add_u32(arg_0.a.x, 45514u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.e, arg_0.e, 0u), vec3<u32>(arg_0.e, 26872u, u_input.b)), max(u_input.b, 0u))), vec4<bool>(!any(vec3<bool>(false, arg_0.b, false)), all(select(vec4<bool>(true, arg_2, arg_2, false), vec4<bool>(arg_0.b, false, false, arg_0.b), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false))), arg_2, _wgslsmith_sub_u32(2943u, arg_0.e) <= (2080u >> (arg_0.a.x % 32u)))), _wgslsmith_f_op_f32(select(1102f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(ceil(120f))), any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, arg_2, arg_0.b, false), vec4<bool>(arg_0.b, arg_0.b, false, arg_2)), vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b), arg_0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = func_7(func_6(vec4<bool>(var_0, any(vec3<bool>(var_0, true, var_0)), true, (u_input.b << (u_input.b % 32u)) < func_1(Struct_2(7006i, Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), false, 866f, u_input.a, 29996u), var_0, Struct_1(vec3<u32>(17269u, u_input.b, u_input.b), var_0, 1336f, vec3<i32>(u_input.a.x, 2147483647i, 5404i), u_input.b), Struct_1(vec3<u32>(0u, u_input.b, u_input.b), var_0, 441f, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), 4294967295u)), -988f, Struct_2(1i, Struct_1(vec3<u32>(u_input.b, 52832u, 30720u), var_0, -851f, u_input.a, 1u), var_0, Struct_1(vec3<u32>(u_input.b, 1u, 0u), true, -148f, u_input.a, u_input.b), Struct_1(vec3<u32>(1u, u_input.b, u_input.b), false, -1229f, vec3<i32>(u_input.a.x, -31860i, -1i), u_input.b)), vec2<bool>(false, var_0)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1371f - 1580f)))))), !select(true, var_0, any(select(vec3<bool>(true, var_0, true), vec3<bool>(var_0, true, true), vec3<bool>(var_0, var_0, var_0)))));
}

