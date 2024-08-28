struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = vec2<i32>(1i, 1i);
    var var_1 = u_input.b.wz;
    var_1 = min(~_wgslsmith_sub_vec2_u32(~vec2<u32>(40007u, 0u), u_input.b.wx), _wgslsmith_mod_vec2_u32(~(~arg_2), ~max(select(u_input.b.yx, vec2<u32>(4294967295u, 0u), vec2<bool>(arg_0, arg_1.x)), vec2<u32>(arg_2.x, 0u))));
    var_1 = firstTrailingBit(arg_2) | _wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, arg_2.x), ~arg_2), vec2<u32>(39376u, firstLeadingBit(arg_2.x)));
    let var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(-2956i, var_0.x, 1i), firstTrailingBit(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(-35724i, var_0.x, 68407i))));
    return 202f;
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    let var_0 = false;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(465f * -1970f) + 267f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(823f, -1581f))))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(true, vec4<bool>(false, var_0, var_0, false), vec2<u32>(76406u, u_input.b.x), Struct_1(1161f))), -716f))), _wgslsmith_f_op_f32(-1198f - -699f));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(148f, _wgslsmith_div_f32(-454f, -474f))), -537f, 1143f));
    var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(348f, var_1.x, 489f, var_1.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-989f, var_1.x, -338f, 506f) - vec4<f32>(var_1.x, -992f, var_1.x, 3626f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-145f, var_1.x, 1461f, var_1.x) * vec4<f32>(var_1.x, var_1.x, 2494f, 416f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1147f, -1456f, -272f, 235f), vec4<f32>(var_1.x, 1195f, -669f, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -2015f, 1331f)), !vec4<bool>(var_0, false, var_0, true))))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(948f)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec2<bool>(true, false);
    var_0 = select(!select(select(vec2<bool>(false, true), !vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true), any(vec2<bool>(false, false))), vec2<bool>(true, !var_0.x)), vec2<bool>(all(vec4<bool>(any(vec3<bool>(var_0.x, var_0.x, false)), u_input.b.x <= 1u, true, any(vec2<bool>(var_0.x, var_0.x)))), false), !select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(var_0.x, true)), false), vec2<bool>(true, true)));
    var_0 = vec2<bool>(all(vec2<bool>(all(!vec2<bool>(false, var_0.x)), false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), 1970f) < arg_2.a);
    let var_1 = arg_2;
    var_0 = vec2<bool>(all(!select(!vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(true, false))), true);
    return var_1;
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = ~1i;
    var var_1 = -_wgslsmith_add_i32(~(-23465i), _wgslsmith_mod_i32(-1i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(25335i, 17679i), -29273i << (1u % 32u))));
    let var_2 = func_4(~(1i >> (u_input.b.x % 32u)), countOneBits(u_input.b.yw), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(func_2(u_input.b.zw)))))));
    var_1 = 1i ^ min(_wgslsmith_mod_i32(-2147483647i, 1i), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(1i, -1i)), ~vec2<i32>(-54371i, 12198i)));
    var var_3 = max(u_input.b.xx, _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.b.wy & _wgslsmith_clamp_vec2_u32(u_input.b.yy, vec2<u32>(3252u, u_input.a), u_input.b.xz), _wgslsmith_sub_vec2_u32(~u_input.b.yw, u_input.b.zz)), select(_wgslsmith_sub_vec2_u32(u_input.b.xy, select(vec2<u32>(u_input.b.x, 10968u), u_input.b.wx, arg_1)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(10632u, u_input.b.x, u_input.a), u_input.b.yxw), u_input.a), arg_2)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, var_2.a))));
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = vec2<i32>(i32(-1i) * -79155i, ~(~2147483647i));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(func_2(max(vec2<u32>(24802u, u_input.b.x), vec2<u32>(26505u, u_input.b.x)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-func_4(2147483647i, u_input.b.xw, Struct_1(arg_3.a)).a))));
    var var_3 = func_1(var_2.a, select(vec2<bool>(false, true), select(vec2<bool>(arg_1, any(vec2<bool>(arg_1, false))), !vec2<bool>(true, arg_1), !select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), true)), select(vec2<bool>(all(vec3<bool>(arg_1, arg_1, true)), u_input.b.x <= u_input.a), select(select(vec2<bool>(arg_1, true), vec2<bool>(false, false), arg_1), !vec2<bool>(true, arg_1), true), arg_1)), _wgslsmith_div_u32(u_input.b.x, ~u_input.b.x ^ 1u) < u_input.b.x);
    let var_4 = ~firstTrailingBit(u_input.b.x) >= _wgslsmith_sub_u32(4294967295u, ~(~(~u_input.a)));
    return var_0.x | 14653i;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_1(arg_2.a, vec2<bool>(true, true), true && !all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false))));
    var var_1 = _wgslsmith_mult_vec2_u32(u_input.b.wz, select(~_wgslsmith_mult_vec2_u32(max(vec2<u32>(14353u, u_input.a), u_input.b.zx), vec2<u32>(u_input.b.x, u_input.a)), reverseBits(u_input.b.wy), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))));
    var var_2 = var_0.a;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(arg_2.a * -173f));
    var_1 = u_input.b.zy;
    return func_4(abs(72493i), u_input.b.ww, func_1(var_3, vec2<bool>(false, false), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(1f), vec3<i32>(-1i, countOneBits(~2147483647i), countOneBits(44492i)) | vec3<i32>(countOneBits(select(22898i, -2147483647i, true)), 2147483647i, func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(843f, -377f)), true, func_1(-668f, vec2<bool>(false, false), true), func_1(1000f, vec2<bool>(true, true), true))), func_4(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(-2147483647i, 2147483647i), -vec2<i32>(2147483647i, 1i)), abs(vec2<i32>(1i, 1i))), vec2<u32>(_wgslsmith_add_u32(54564u, ~u_input.a), ~9100u >> (abs(u_input.b.x) % 32u)), Struct_1(_wgslsmith_f_op_f32(round(-2712f)))));
    let var_1 = select(max(~firstLeadingBit(vec4<i32>(15878i, -2147483647i, 2147483647i, 38211i)), reverseBits(~vec4<i32>(-51077i, 1i, 45195i, 2147483647i))), ~(~(~(-vec4<i32>(-14246i, 20713i, -36826i, 30888i)))), false);
    let var_2 = vec2<f32>(696f, var_0.a);
    let var_3 = var_0;
    let var_4 = vec4<i32>(var_1.x, var_1.x, var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(select(i32(-1i) * -2147483647i, var_1.x, any(vec4<bool>(true, false, true, false))), max(_wgslsmith_sub_i32(30409i, var_1.x), i32(-1i) * -34175i), countOneBits(var_1.x)), var_1.yyy));
    let var_5 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(-var_4.x, u_input.b.yz, _wgslsmith_f_op_vec2_f32(-var_2), _wgslsmith_sub_vec3_u32(u_input.b.xxw, abs(u_input.b.yww)));
}

