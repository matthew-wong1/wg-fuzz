struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
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

var<private> global0: vec4<i32> = vec4<i32>(9585i, -1854i, i32(-2147483648), i32(-2147483648));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec3<bool> {
    global0 = vec4<i32>(arg_0, firstTrailingBit(-101466i), 2147483647i, ~(-arg_0));
    let var_0 = -firstTrailingBit(~firstLeadingBit(abs(vec3<i32>(-55524i, arg_0, global0.x))));
    let var_1 = all(vec2<bool>(true, true));
    var var_2 = vec4<i32>(-50829i, i32(-1i) * -_wgslsmith_mod_i32(arg_0, 47846i), min(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(global0.x, var_0.x, global0.x, -19738i)), countOneBits(vec4<i32>(arg_0, global0.x, global0.x, u_input.c))), -var_0.x), arg_0) | vec4<i32>(global0.x, var_0.x << (u_input.b.x % 32u), -_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_0, vec3<i32>(u_input.a, 2147483647i, arg_0)), vec3<i32>(-1i, var_0.x, global0.x) << (u_input.b.wyx % vec3<u32>(32u))), countOneBits(2147483647i));
    global0 = ~(~vec4<i32>(firstTrailingBit(2147483647i), 16639i, select(_wgslsmith_sub_i32(9428i, -38079i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, arg_0), global0.wx), all(vec4<bool>(true, false, false, var_1))), -_wgslsmith_mult_i32(-11340i, u_input.a)));
    return !(!vec3<bool>(!var_1, all(select(vec2<bool>(false, false), vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1))), false));
}

fn func_4(arg_0: vec3<bool>) -> bool {
    let var_0 = ((u_input.b.x << (u_input.b.x % 32u)) & (106876u & abs(~u_input.b.x))) ^ ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.b.zw, u_input.b.zz | u_input.b.wy, vec2<u32>(37332u, u_input.b.x)), select(vec2<u32>(36476u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x), !arg_0.zy));
    global0 = _wgslsmith_sub_vec4_i32(~vec4<i32>(_wgslsmith_div_i32(u_input.c, global0.x), 35754i, _wgslsmith_sub_i32(2464i, select(global0.x, 2147483647i, arg_0.x)), min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, global0.x, 2147483647i), vec3<i32>(-7647i, 1i, global0.x)), -2147483647i)), ~vec4<i32>(max(-2147483647i, global0.x) >> (min(u_input.b.x, u_input.b.x) % 32u), 393i, _wgslsmith_div_i32(u_input.a, global0.x) ^ -1i, global0.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -827f), 1f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(411f, -1518f))))));
    var var_2 = Struct_4(vec2<f32>(1f, 1f), global0.xyz, !(!select(select(vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(true, arg_0.x, true, true)), !vec4<bool>(false, true, false, arg_0.x), all(arg_0.zz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -600f), _wgslsmith_f_op_f32(floor(-307f)), false))));
    var var_3 = 0u;
    return any(vec3<bool>(true, true, true));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_div_u32(24167u, _wgslsmith_div_u32(u_input.b.x, 54237u));
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(1655f, -1216f))))), _wgslsmith_mod_vec3_i32(reverseBits(global0.xww), vec3<i32>(i32(-1i) * -u_input.c, -12583i, arg_0.x)), !vec4<bool>(false, select(true, true, false) | false, true, func_4(func_3(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -411f)), _wgslsmith_f_op_f32(297f - _wgslsmith_f_op_f32(-1301f + arg_1)))));
    var var_2 = select(vec2<i32>(firstTrailingBit(-1i), ~(-2147483647i)), vec2<i32>(~global0.x, -1i), var_1.c.x);
    var var_3 = vec3<i32>(select(reverseBits(global0.x), 0i, true), _wgslsmith_clamp_i32(~(_wgslsmith_mod_i32(5586i, global0.x) >> (reverseBits(u_input.b.x) % 32u)), global0.x, u_input.c), global0.x);
    let var_4 = vec3<f32>(1f, _wgslsmith_f_op_f32(-arg_1), -1000f);
    return _wgslsmith_div_f32(529f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1019f * var_1.d) * _wgslsmith_f_op_f32(f32(-1f) * -1258f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec2<i32>(global0.x, 2419i), -1000f)))), -222f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(959f - -1771f) - -809f)), 1000f));
    global0 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, firstTrailingBit(-(~(-1i))), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(8689i, arg_2.x, -1i, global0.x)), firstTrailingBit(reverseBits(vec4<i32>(arg_0.x, 0i, 40390i, global0.x)))), -arg_2.x), vec4<i32>(min(32505i, max(min(-2147483647i, global0.x), -1i)), countOneBits(-22270i), -21114i, 9254i));
    var var_1 = firstTrailingBit(_wgslsmith_div_vec2_i32(min(min(arg_0, vec2<i32>(14865i, global0.x) ^ arg_0), _wgslsmith_mult_vec2_i32(global0.yx, global0.zw)), arg_0));
    var var_2 = abs(~u_input.c) <= firstLeadingBit(0i);
    var var_3 = Struct_2(any(select(select(vec4<bool>(false, arg_1, arg_1, arg_1), !vec4<bool>(true, arg_1, true, arg_1), arg_1), vec4<bool>(true, true, true, true), any(vec4<bool>(arg_1, arg_1, true, true)))));
    return Struct_2(var_3.a);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<f32>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_mod_u32(arg_0.a, select(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, 4294967295u), vec2<u32>(arg_0.a, 4294967295u)), _wgslsmith_mod_u32(4294967295u, 1u), true)) << (_wgslsmith_add_u32(1u, ~1u) % 32u), func_1(~(~(vec2<i32>(-36148i, 1i) & global0.yx)), true && any(vec3<bool>(arg_1.a, arg_0.b.a, arg_0.c.a)), -vec2<i32>(-1i, u_input.a)), func_1(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, global0.x), vec2<i32>(global0.x, u_input.c) | vec2<i32>(u_input.c, u_input.a))), !all(!vec4<bool>(arg_0.b.a, arg_0.b.a, false, true)), _wgslsmith_mult_vec2_i32(global0.zz | reverseBits(global0.yw), ~abs(vec2<i32>(2147483647i, u_input.a)))), _wgslsmith_f_op_f32(select(-1910f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -872f)), true)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~global0.zy, -1369f))));
    var var_1 = _wgslsmith_mult_u32(28185u, var_0.a);
    global0 = vec4<i32>(-12307i, firstTrailingBit(~(-u_input.a)), -1i, global0.x) >> (~min(u_input.b << (u_input.b % vec4<u32>(32u)), ~u_input.b) % vec4<u32>(32u));
    let var_2 = max(vec4<i32>((1068i & global0.x) >> (~reverseBits(28749u) % 32u), i32(-1i) * -463i, u_input.c, -_wgslsmith_dot_vec3_i32(global0.xxx, vec3<i32>(global0.x, u_input.a, u_input.c) << (u_input.b.yxw % vec3<u32>(32u)))), min(~vec4<i32>(_wgslsmith_add_i32(u_input.c, u_input.a), max(global0.x, global0.x), -u_input.a, _wgslsmith_mult_i32(u_input.c, global0.x)), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c, 17875i, -2147483647i, 2147483647i), firstTrailingBit(~vec4<i32>(1i, 0i, -40931i, global0.x)))));
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-arg_2.zw), var_2.zzw, select(!(!vec4<bool>(false, arg_0.c.a, arg_0.b.a, arg_1.a)), select(!(!vec4<bool>(false, true, var_0.b.a, var_0.d)), !select(vec4<bool>(false, true, false, var_0.d), vec4<bool>(arg_1.a, true, false, true), false), vec4<bool>(false, !arg_1.a, false, true)), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, var_0.b.a, true, false), vec4<bool>(arg_0.b.a, false, true, var_0.c.a)), !vec4<bool>(var_0.d, true, arg_1.a, false), false), select(!vec4<bool>(arg_1.a, true, false, var_0.c.a), !vec4<bool>(true, arg_0.c.a, false, var_0.d), !arg_1.a), select(!vec4<bool>(false, false, false, var_0.d), !vec4<bool>(false, false, arg_0.c.a, arg_0.d), select(vec4<bool>(true, var_0.c.a, true, var_0.b.a), vec4<bool>(arg_0.d, arg_1.a, arg_0.d, arg_1.a), true)))), -992f);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.b.x, func_5(Struct_3(1u, Struct_2(true), Struct_2(true), false), func_1(global0.wx, false, vec2<i32>(-17921i, 9746i)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-315f, 576f, 324f, -1017f), vec4<f32>(1000f, -175f, -2088f, -125f))))), ~(1u << (func_5(Struct_3(62931u, Struct_2(false), Struct_2(false), true), Struct_2(false), vec4<f32>(1717f, 652f, 609f, -639f)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b.x | (u_input.b.x << (4294967295u % 32u))) >> (countOneBits(u_input.b.x) % 32u));
}

