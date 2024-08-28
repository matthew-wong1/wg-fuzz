struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<i32> {
    global0 = -(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_add_i32(u_input.c.x, 1i), -4975i, abs(u_input.c.x)));
    var var_0 = Struct_2(!select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), false), vec4<bool>(all(vec2<bool>(false, false)), true, all(vec4<bool>(true, false, false, false)), all(vec4<bool>(false, false, true, false))), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_i32(vec4<i32>(~(-u_input.b), 2147483647i, _wgslsmith_clamp_i32(2147483647i, -u_input.c.x, abs(global0.x)), min(_wgslsmith_sub_i32(9485i, u_input.c.x), global0.x)), min(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, global0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 2147483647i, global0.x, 34946i), vec4<i32>(1i, 1i, -37972i, 29548i))), reverseBits(vec4<i32>(-1i, u_input.c.x, 87273i, u_input.b) >> (vec4<u32>(u_input.a, 1u, 11093u, u_input.a) % vec4<u32>(32u))))));
    let var_1 = Struct_2(vec4<bool>(true, true, var_0.a.x, false), ~(-var_0.b));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(108f, -2018f, 174f) - vec3<f32>(-1691f, -369f, 1043f)))))))));
    global0 = select(reverseBits(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(0i, 0i, var_1.b.x) << (vec3<u32>(90396u, 4269u, 51116u) % vec3<u32>(32u))), abs(~var_0.b.xyw))), var_0.b.xxy, !vec3<bool>(true, var_2.x != _wgslsmith_f_op_f32(var_2.x - -361f), !select(false, var_1.a.x, var_1.a.x)));
    return var_1.b.zwy;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> i32 {
    let var_0 = arg_2;
    global0 = _wgslsmith_sub_vec3_i32(arg_3.b.yxw, func_3());
    global0 = _wgslsmith_sub_vec3_i32(firstTrailingBit(func_3()) | _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, global0.x, global0.x | u_input.b), vec3<i32>(-24235i, abs(21697i), -u_input.b), vec3<i32>(~u_input.c.x, -arg_3.b.x, abs(u_input.b))), vec3<i32>(firstLeadingBit(arg_3.b.x), ~abs(~0i), -2147483647i));
    let var_1 = 1u;
    var var_2 = any(select(arg_3.a.zxz, arg_3.a.wwx, any(!arg_3.a.wy)));
    return select(global0.x, -27269i, any(!vec3<bool>(any(arg_3.a.zx), true, !arg_3.a.x)));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> Struct_2 {
    global0 = -min(vec3<i32>(u_input.c.x, _wgslsmith_div_i32(func_2(vec4<f32>(-1524f, -1763f, 602f, 777f), -694f, 19616u, Struct_2(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<i32>(19113i, u_input.c.x, -28i, -44676i))), ~(-1i)), select(~global0.x, -u_input.c.x, true)), countOneBits(vec3<i32>(global0.x, global0.x, 0i)) >> (arg_0 % vec3<u32>(32u)));
    let var_0 = Struct_1(vec4<bool>(true, _wgslsmith_add_i32(1i << (u_input.a % 32u), 37023i) == ~global0.x, true, (_wgslsmith_div_i32(24840i, u_input.c.x) >> (_wgslsmith_clamp_u32(arg_0.x, arg_0.x, 4294967295u) % 32u)) >= func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-500f, 169f, 271f, 1060f), vec4<f32>(266f, -1322f, 1669f, -836f)), -1488f, 1u, Struct_2(vec4<bool>(true, false, arg_1, false), vec4<i32>(2147483647i, global0.x, 1i, u_input.c.x)))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 1411f)) + _wgslsmith_f_op_f32(f32(-1f) * -1094f))))), u_input.d, global0.zx & -(-vec2<i32>(7425i, global0.x) ^ -vec2<i32>(76985i, 1i)), u_input.c.x);
    global0 = -(vec3<i32>(_wgslsmith_add_i32(global0.x, ~var_0.d.x), -var_0.d.x, min(~var_0.d.x, 1i)) << (_wgslsmith_mult_vec3_u32(arg_0, min(vec3<u32>(arg_0.x, arg_0.x, u_input.a), vec3<u32>(55516u, 72007u, var_0.c.x) >> (vec3<u32>(43492u, 5227u, 1u) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    var var_1 = firstTrailingBit(arg_0);
    let var_2 = var_0.b;
    return Struct_2(select(var_0.a, !(!select(var_0.a, var_0.a, var_0.a)), !arg_1 | (_wgslsmith_add_u32(1u, arg_0.x) >= ~23673u)), vec4<i32>(global0.x, -2147483647i, -2147483647i, min(~(i32(-1i) * -1i), countOneBits(var_0.e))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(213f, 1183f))) * _wgslsmith_div_vec2_f32(vec2<f32>(-870f, 182f), vec2<f32>(-1442f, -437f))))))));
    var var_1 = Struct_1(select(vec4<bool>(false, (1i != u_input.c.x) && true, false, true), vec4<bool>(true, arg_1.a.x, true, arg_1.a.x), func_1(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 0u, 67726u), vec3<u32>(11377u, 57876u, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.d.x, 48635u), vec3<u32>(u_input.d.x, 1u, 733u))), countOneBits(-16371i) == arg_0.x).a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(412f)), _wgslsmith_f_op_f32(f32(-1f) * -2212f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(2018f, 853f)))), 1081f)), u_input.d, (arg_0.wz << (vec2<u32>(~1u, _wgslsmith_add_u32(u_input.a, 29090u)) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_mod_u32(30296u, ~1604u), _wgslsmith_mod_u32(~u_input.d.x, 1u)) % vec2<u32>(32u)), -1i);
    var_1 = Struct_1(vec4<bool>(!(!var_1.a.x), any(select(arg_1.a, vec4<bool>(var_1.a.x, arg_1.a.x, arg_1.a.x, true), vec4<bool>(false, arg_1.a.x, var_1.a.x, true))) && var_1.a.x, arg_1.a.x, !any(arg_1.a.xzy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.x)))), -270f, !var_1.a.x))), u_input.d, abs(vec2<i32>(~u_input.c.x, 3050i)), -2147483647i ^ _wgslsmith_sub_i32(arg_0.x, ~_wgslsmith_div_i32(-2147483647i, var_1.e)));
    var var_2 = u_input.d;
    var var_3 = Struct_1(vec4<bool>(var_1.a.x, !(select(-48196i, -2147483647i, true) > _wgslsmith_sub_i32(var_1.d.x, var_1.d.x)), _wgslsmith_mod_i32(i32(-1i) * -47828i, firstTrailingBit(var_1.d.x)) > (arg_0.x & abs(u_input.c.x)), true), -1543f, ~(firstTrailingBit(vec2<u32>(28598u, 10832u)) << (~vec2<u32>(0u, 0u) % vec2<u32>(32u))) >> (abs(~_wgslsmith_mult_vec2_u32(var_1.c, u_input.d)) % vec2<u32>(32u)), ~vec2<i32>(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -1660f, 1405f, var_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -166f), ~1u, Struct_2(vec4<bool>(true, false, true, true), arg_1.b)), -(i32(-1i) * -22174i)), ~arg_1.b.x);
    return _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_1.c.x, _wgslsmith_add_u32(~u_input.a, abs(_wgslsmith_clamp_u32(var_3.c.x, 15909u, var_3.c.x))), _wgslsmith_mod_u32(abs(~12442u), countOneBits(~u_input.d.x))), firstLeadingBit(~(~abs(var_3.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(true, false, true, true), 576f, vec2<u32>(countOneBits(u_input.d.x), ~func_4(vec4<i32>(-1i, u_input.b, global0.x, u_input.b), func_1(vec3<u32>(u_input.a, 1u, 0u), true))), -firstLeadingBit(min(~global0.yz, global0.yz)), _wgslsmith_mod_i32(u_input.b, _wgslsmith_sub_i32(u_input.b >> (4294967295u % 32u), global0.x) & (global0.x << (54480u % 32u))));
    var var_1 = func_1(~max(min(vec3<u32>(var_0.c.x, 1u, var_0.c.x), vec3<u32>(var_0.c.x, 34481u, var_0.c.x)), firstTrailingBit(vec3<u32>(var_0.c.x, u_input.a, 1u))) ^ (_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(25475u, u_input.a, 1u)), vec3<u32>(0u, var_0.c.x, var_0.c.x) & vec3<u32>(u_input.d.x, var_0.c.x, u_input.a)) | vec3<u32>(1u, u_input.a >> (68457u % 32u), 1u)), true);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(530f, var_0.b, -945f, var_0.b), vec4<f32>(var_0.b, 175f, -687f, -105f))))) - vec4<f32>(_wgslsmith_f_op_f32(1466f + var_0.b), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(max(-1023f, var_0.b)), var_0.b)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * -1084f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.b)), var_0.b, u_input.b >= -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1315f - var_0.b)), _wgslsmith_f_op_f32(841f - _wgslsmith_f_op_f32(max(-794f, 290f))))));
    var_0 = Struct_1(vec4<bool>(true, !func_1(vec3<u32>(4416u, 0u, 30398u), var_1.a.x).a.x, true, _wgslsmith_mod_i32(var_1.b.x, global0.x) < ~(-2786i)), -1139f, _wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.c.x, 24258u), var_0.c) >> ((u_input.d << (~vec2<u32>(var_0.c.x, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(global0.x, 0i), 15905i);
    global0 = vec3<i32>(max(global0.x, u_input.c.x), var_1.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(20292i, 1i) | (vec2<i32>(global0.x, -1i) << (var_0.c % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(func_3().xx, var_1.b.wx)));
    var var_3 = ~global0.x;
    var var_4 = _wgslsmith_clamp_vec3_u32(select(~abs(vec3<u32>(u_input.d.x, 3805u, var_0.c.x)), vec3<u32>(64989u, ~var_0.c.x ^ u_input.d.x, u_input.a), !var_0.a.www), select(~firstTrailingBit(min(vec3<u32>(100608u, 4294967295u, u_input.a), vec3<u32>(var_0.c.x, var_0.c.x, u_input.a))), ~(~(~vec3<u32>(17260u, u_input.a, 1u))), true), vec3<u32>(~u_input.d.x, reverseBits(var_0.c.x ^ var_0.c.x), _wgslsmith_dot_vec4_u32(select(~vec4<u32>(var_0.c.x, var_0.c.x, u_input.d.x, 7822u), countOneBits(vec4<u32>(var_0.c.x, u_input.d.x, var_0.c.x, 21691u)), select(var_0.a, var_0.a, var_1.a)), vec4<u32>(u_input.a, 16169u, 1u, func_4(var_1.b, Struct_2(vec4<bool>(true, true, var_1.a.x, true), var_1.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

