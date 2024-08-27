struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(~((_wgslsmith_mod_vec4_i32(vec4<i32>(67795i, u_input.b, -15853i, -5225i), vec4<i32>(u_input.d, u_input.d, 49919i, 20762i)) << (countOneBits(vec4<u32>(21242u, 66534u, 21429u, 14349u)) % vec4<u32>(32u))) ^ countOneBits(vec4<i32>(-2113i, -27359i, u_input.d, u_input.b))), 1i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), u_input.c.ywx);
    var_0 = Struct_1(min(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(0i, -16823i), _wgslsmith_sub_i32(u_input.b, -1i)), _wgslsmith_add_i32(-1i, min(-44146i, u_input.d)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(41845i, -38542i, -3742i, -2147483647i), var_0.a), ~(~8958i)), var_0.a), ~2147483647i, var_0.c, firstLeadingBit(u_input.c.zyz));
    var var_1 = 56594i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -929f)));
    var var_3 = vec3<bool>(false, true, false);
    return var_3.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = firstLeadingBit(countOneBits(-_wgslsmith_sub_i32(~arg_0.d.b, -1i)));
    var_0 = 1i;
    let var_1 = select(~_wgslsmith_clamp_vec3_u32(max(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(arg_1.b.x, arg_1.d.d.x, arg_0.c.d.x)), vec3<u32>(1u, ~0u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(19167u, arg_0.d.d.x, 1u), vec3<u32>(u_input.c.x, arg_1.a.d.x, u_input.a))), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.a.d.x, 0u), 4294967295u), _wgslsmith_div_u32(arg_1.d.d.x & 0u, ~36759u), arg_0.d.d.x) | (u_input.c.yxw ^ arg_1.a.d), !select(_wgslsmith_f_op_f32(f32(-1f) * -1202f) < _wgslsmith_f_op_f32(select(200f, 1039f, true)), false, true));
    var var_2 = !select(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), func_3()), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)))), select(vec4<bool>(any(vec2<bool>(false, false)), any(vec3<bool>(true, false, true)), func_3(), true), vec4<bool>(true, true, true, any(vec2<bool>(false, false))), min(1u, arg_1.a.d.x) == _wgslsmith_div_u32(u_input.a, 73240u)));
    var var_3 = ~(-1868i);
    return select(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(i32(-1i) * -24405i, reverseBits(u_input.d)), abs(1i)), vec2<i32>(arg_0.c.b, -18557i)), select(_wgslsmith_clamp_vec2_i32(select(arg_0.d.a.zy, vec2<i32>(-59868i, arg_0.d.a.x), var_2.xy), ~vec2<i32>(34943i, -2147483647i), arg_1.a.a.yw) ^ vec2<i32>(1i, _wgslsmith_mult_i32(u_input.b, 44995i)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.c.b, arg_1.c.a.x) & vec2<i32>(82257i, u_input.b), vec2<i32>(76446i, 2147483647i) ^ arg_0.d.a.xz), var_2.zx), func_3());
}

fn func_1(arg_0: u32) -> vec4<i32> {
    var var_0 = -985i;
    let var_1 = abs(vec2<i32>(-1i) * -func_2(Struct_2(Struct_1(vec4<i32>(0i, u_input.d, u_input.d, 739i), 1i, 1388f, u_input.c.wwz), u_input.c.zw, Struct_1(vec4<i32>(u_input.d, u_input.b, u_input.d, u_input.b), u_input.b, 1039f, vec3<u32>(0u, arg_0, u_input.c.x)), Struct_1(vec4<i32>(-1i, u_input.b, 2147483647i, -2147483647i), u_input.d, -320f, u_input.c.zwy)), Struct_2(Struct_1(vec4<i32>(-1i, u_input.b, u_input.b, -46849i), u_input.b, 747f, u_input.c.zwz), u_input.c.yy, Struct_1(vec4<i32>(-45276i, u_input.b, -17726i, -1i), u_input.b, 952f, vec3<u32>(arg_0, arg_0, arg_0)), Struct_1(vec4<i32>(u_input.b, 42974i, u_input.d, u_input.b), u_input.d, 278f, vec3<u32>(u_input.a, 27354u, arg_0))))) << (countOneBits(~_wgslsmith_add_vec2_u32(u_input.c.zy, ~vec2<u32>(u_input.c.x, 1u))) % vec2<u32>(32u));
    var_0 = ~25047i;
    let var_2 = ~(-vec3<i32>(-14123i, u_input.b, u_input.d));
    let var_3 = var_1.x;
    return abs(vec4<i32>(-(~var_2.x), -27940i, ~u_input.d, 0i));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = func_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.d.x, arg_0.x, 0u) | vec4<u32>(24770u, u_input.a, 0u, arg_0.x), select(vec4<u32>(23165u, 94296u, var_0.d.x, 4294967295u), vec4<u32>(arg_0.x, u_input.c.x, 0u, 27267u), vec4<bool>(false, false, true, false)))).zyy & min(vec3<i32>(_wgslsmith_mult_i32(-4644i, u_input.b), arg_1.a.x, -u_input.b >> (select(14280u, arg_1.d.x, true) % 32u)), abs(var_0.a.yww));
    var_1 = _wgslsmith_mod_vec3_i32(select(arg_1.a.zxx, var_0.a.xxx, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), any(vec4<bool>(false, false, true, true))), !select(false, false, true))), vec3<i32>(_wgslsmith_mult_i32(~abs(-2147483647i), ~_wgslsmith_mult_i32(u_input.b, -4462i)), -abs(firstTrailingBit(var_0.a.x)), -2147483647i));
    var_1 = ~arg_1.a.xxy ^ (var_0.a.xyx >> (vec3<u32>(arg_1.d.x, ~1u, _wgslsmith_add_u32(countOneBits(arg_1.d.x), ~var_0.d.x)) % vec3<u32>(32u)));
    var var_2 = ~(~(-u_input.b) & arg_1.b);
    return Struct_2(var_0, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0.x, 11456u), _wgslsmith_div_vec2_u32(~u_input.c.wz, arg_1.d.yx & var_0.d.yy)), abs(countOneBits(u_input.c.xz << (vec2<u32>(43269u, arg_1.d.x) % vec2<u32>(32u))))), Struct_1(var_0.a, ~2147483647i, _wgslsmith_f_op_f32(max(var_0.c, -1000f)), ~vec3<u32>(u_input.c.x, 1u, 1u)), Struct_1(~arg_1.a, 1i, -1231f, select((var_0.d | arg_0) ^ u_input.c.zzy, ~arg_1.d ^ ~var_0.d, vec3<bool>(false, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = u_input.c.x ^ _wgslsmith_add_u32(u_input.a, u_input.c.x);
    let var_1 = func_4(u_input.c.yxz, Struct_1(~func_1(0u), u_input.d >> (_wgslsmith_dot_vec3_u32(u_input.c.xyy, u_input.c.yyw ^ u_input.c.zyx) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -689f))), u_input.c.wwz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1981f, -1737f), vec2<f32>(-144f, 387f)))) - vec2<f32>(_wgslsmith_f_op_f32(step(-1151f, -569f)), -2719f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(313f, 1343f) + vec2<f32>(389f, -792f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-824f, -930f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-832f, 1194f) - vec2<f32>(2324f, 1050f))), !select(vec2<bool>(false, false), vec2<bool>(false, true), true)))));
    let var_2 = 0i;
    var var_3 = 28801u;
    var_3 = 67000u;
    var_3 = reverseBits(_wgslsmith_sub_u32(_wgslsmith_mult_u32(30445u, ~select(var_1.a.d.x, u_input.c.x, true)), min(1u, var_1.c.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec2_u32(u_input.c.wz, u_input.c.yz));
}

