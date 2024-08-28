struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 1i);

var<private> global1: bool = false;

var<private> global2: vec2<u32> = vec2<u32>(6140u, 25627u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = select(select(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, false, false))), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), (global0.x | global0.x) <= _wgslsmith_mod_i32(global0.x, -1i))), select(select(vec3<bool>(select(false, true, true), true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), false), true), vec3<bool>(all(vec4<bool>(all(vec2<bool>(false, false)), true, false, u_input.a.x <= 0i)), true, true));
    let var_1 = -(~17316i);
    var var_2 = select(select(vec2<bool>(false, any(vec4<bool>(false, var_0.x, var_0.x, false))), var_0.xx, select(var_0.x, (global0.x | u_input.a.x) <= -1i, any(vec3<bool>(false, var_0.x, var_0.x)) && (false & var_0.x))), vec2<bool>(select(var_0.x, _wgslsmith_f_op_f32(floor(542f)) == _wgslsmith_f_op_f32(step(731f, -952f)), var_0.x), var_0.x != !(var_0.x | true)), all(!(!vec4<bool>(var_0.x, false, false, var_0.x))) | (true || !var_0.x));
    var_2 = var_0.zy;
    var_2 = vec2<bool>(var_2.x, true | !var_2.x);
    return true;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec3<u32>) -> Struct_1 {
    global0 = -vec2<i32>(reverseBits(_wgslsmith_sub_i32(1i, global0.x)), 1i);
    global1 = !(any(vec4<bool>(true, true, true, true)) || (func_3() == !(arg_1 > 1581f)));
    global2 = ~arg_2.zy;
    var var_0 = Struct_1(vec3<i32>(-1i, -select(~1i, -2147483647i, true), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-517i, 16186i, 2147483647i, global0.x) << (vec4<u32>(4294967295u, 0u, global2.x, arg_2.x) % vec4<u32>(32u)), ~u_input.a), u_input.a)), vec3<i32>(global0.x ^ ~(~1i), _wgslsmith_dot_vec3_i32(vec3<i32>(~29247i, -4982i, _wgslsmith_add_i32(u_input.a.x, arg_0)), u_input.a.wxx), abs(6446i)), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, u_input.a.x, global0.x, arg_0) >> (vec4<u32>(global2.x, 0u, 11522u, 4294967295u) % vec4<u32>(32u)), u_input.a), reverseBits(vec4<i32>(u_input.a.x, -2149i, -5746i, 2147483647i)), u_input.a));
    global0 = vec2<i32>(-2147483647i, _wgslsmith_add_i32(-_wgslsmith_add_i32(-1i, -1i), _wgslsmith_dot_vec4_i32(var_0.c, var_0.c) >> (select(4294967295u, 4294967295u, true) % 32u)) ^ 1i);
    return Struct_1(vec3<i32>(~select(select(arg_0, var_0.b.x, false), 1i | u_input.a.x, true), -1i, -4518i), ~vec3<i32>(-_wgslsmith_mod_i32(-2333i, -11940i), global0.x, var_0.b.x), reverseBits(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.c, vec4<i32>(-2147483647i, arg_0, global0.x, var_0.b.x)), ~var_0.c), _wgslsmith_mod_i32(54607i, abs(-1i)), 1i, i32(-1i) * -50016i)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_1 {
    var var_0 = ~(~43195u);
    return Struct_1(_wgslsmith_div_vec3_i32(arg_1.c.xzx, ~vec3<i32>(-6982i | arg_1.a.x, arg_1.a.x, arg_1.a.x)), -(~arg_0.wxy), vec4<i32>(u_input.a.x, 21151i, ~abs(24685i) ^ u_input.a.x, _wgslsmith_sub_i32(~reverseBits(-3278i), u_input.a.x)));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> u32 {
    global2 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(45932u, 19398u), 4294967295u), ~vec2<u32>(global2.x, 4294967295u)) ^ (vec2<u32>(firstTrailingBit(~global2.x), 74299u) ^ vec2<u32>(~max(16106u, global2.x), global2.x));
    var var_0 = vec4<bool>(false, true, all(vec2<bool>(arg_0, _wgslsmith_clamp_i32(6903i, u_input.a.x, u_input.a.x) < -1955i)), true && !arg_0);
    var var_1 = 60040u;
    var var_2 = arg_0;
    let var_3 = arg_0;
    return ~_wgslsmith_mult_u32(1u, 87363u) & global2.x;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = u_input.a.wz;
    var var_0 = global0.x;
    global2 = vec2<u32>(global2.x, func_5(true, func_4(~u_input.a | u_input.a, func_2(u_input.a.x, -129f, _wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, 1u, 4294967295u), vec3<u32>(4294967295u, 58467u, 0u))), firstLeadingBit(-2147483647i) >> (countOneBits(12687u) % 32u), all(vec3<bool>(true, true, true)))));
    global0 = vec2<i32>(-16699i, 8404i);
    var var_1 = Struct_1(max(-vec3<i32>(-2147483647i, arg_0, reverseBits(arg_0)), ~(u_input.a.xxz | _wgslsmith_div_vec3_i32(u_input.a.yyw, vec3<i32>(arg_0, 1i, -1i)))), _wgslsmith_add_vec3_i32(~u_input.a.xxx, -u_input.a.xzz | countOneBits(reverseBits(u_input.a.xww))), u_input.a);
    return Struct_1(countOneBits(vec3<i32>(~_wgslsmith_dot_vec3_i32(u_input.a.xwy, vec3<i32>(arg_0, global0.x, u_input.a.x)), ~68472i ^ (arg_0 ^ arg_0), 27697i)), vec3<i32>(50159i, abs(var_1.a.x), -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, ~global0.x, arg_0, -global0.x) << (reverseBits(select(vec4<u32>(1u, 1u, 66856u, 1u), vec4<u32>(0u, 9649u, 4294967295u, 4294967295u), false)) % vec4<u32>(32u)), func_4(var_1.c, func_4(vec4<i32>(u_input.a.x, -13303i, 28070i, var_1.a.x), func_2(arg_0, -1231f, vec3<u32>(global2.x, 32653u, 4294967295u)), ~global0.x, true), firstLeadingBit(1i), arg_0 != _wgslsmith_clamp_i32(u_input.a.x, -6986i, -49663i)).c, -(~vec4<i32>(2147483647i, -39441i, arg_0, var_1.b.x)) | u_input.a));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = Struct_1(u_input.a.xwz, abs(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.c.x, arg_2, 2147483647i), arg_1.a ^ arg_3.c.zwy)) >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(18710u, 0u, arg_0.x), ~vec3<u32>(0u, 46344u, global2.x)) % vec3<u32>(32u)), _wgslsmith_mult_vec4_i32(arg_1.c ^ arg_1.c, ~arg_3.c) & min(firstLeadingBit(~vec4<i32>(-3705i, 28240i, arg_1.b.x, 2147483647i)), vec4<i32>(18399i, 18740i, global0.x, 1i)));
    var var_1 = Struct_1(~((_wgslsmith_sub_vec3_i32(arg_3.a, u_input.a.xxx) >> (arg_0 % vec3<u32>(32u))) >> ((~vec3<u32>(arg_0.x, 4294967295u, arg_0.x) >> (vec3<u32>(arg_0.x, 0u, global2.x) % vec3<u32>(32u))) % vec3<u32>(32u))), -u_input.a.yxx, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(35791i, ~var_0.c.x), -select(vec2<i32>(var_0.c.x, -2147483647i), vec2<i32>(1i, arg_2), vec2<bool>(false, true))), ~u_input.a.x, 1i, ~_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_clamp_i32(var_0.c.x, arg_1.c.x, 88370i))));
    global2 = ~(~(~vec2<u32>(max(global2.x, global2.x), 75591u)));
    global2 = arg_0.yz;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-566f, -1616f, false))), 1107f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1048f + 174f)))) + _wgslsmith_f_op_f32(abs(-718f))), _wgslsmith_f_op_f32(max(540f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(396f * -646f) + 1f) + 1000f))), _wgslsmith_f_op_f32(select(2547f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1824f - -883f), 1f), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-936f + -1236f) + _wgslsmith_f_op_f32(f32(-1f) * -601f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_6(vec3<u32>(global2.x, global2.x | global2.x, firstLeadingBit(4294967295u)), func_1(~global0.x), firstLeadingBit(-55456i) & ~u_input.a.x, func_4(u_input.a | vec4<i32>(u_input.a.x, global0.x, global0.x, -1i), func_1(30280i), global0.x, true)))));
    global0 = _wgslsmith_add_vec2_i32(select(-u_input.a.xz, u_input.a.wz, select(vec2<bool>(true, true), vec2<bool>(true, true), false)), vec2<i32>(_wgslsmith_mod_i32(~abs(global0.x), firstTrailingBit(abs(global0.x))), -2147483647i));
    global1 = any(vec4<bool>(!(global0.x == u_input.a.x) && (_wgslsmith_f_op_f32(-var_0.x) == _wgslsmith_f_op_f32(-var_1.x)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), !(!(0i < global0.x)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)) || all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))));
    var var_2 = func_1(countOneBits(_wgslsmith_div_i32(global0.x, global0.x)));
    var var_3 = -vec2<i32>(_wgslsmith_mod_i32(2147483647i | _wgslsmith_mod_i32(global0.x, 72394i), u_input.a.x), 0i);
    var_3 = vec2<i32>(func_4(vec4<i32>(-33318i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(10315i, -36802i), var_2.a.xx)), ~(~global0.x), 2147483647i), Struct_1(max(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.a.x, global0.x, -16380i), vec3<i32>(u_input.a.x, 1i, -1i)), firstLeadingBit(vec3<i32>(1i, var_2.b.x, global0.x))), ~u_input.a.wxw, u_input.a | u_input.a), firstTrailingBit(~(-2147483647i)), any(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))))).b.x, u_input.a.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1016f, -344f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, var_0.x, -3548f), _wgslsmith_f_op_vec3_f32(-var_1.yyw))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), vec3<f32>(970f, _wgslsmith_f_op_f32(f32(-1f) * -2095f), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x * -479f))), select(vec3<bool>(true, any(vec2<bool>(false, false)), var_2.c.x > var_3.x), vec3<bool>(true, true, true), any(vec3<bool>(true, true, false)) || all(vec3<bool>(true, true, false))))) * _wgslsmith_f_op_vec3_f32(max(var_1.xyx, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.zzy)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -1750f, var_0.x), var_1.ywy)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-select(vec4<i32>(-1i) * -u_input.a, vec4<i32>(max(u_input.a.x, 0i), var_2.a.x, countOneBits(-59426i), abs(global0.x)), func_3()), u_input.a.xzy);
}

