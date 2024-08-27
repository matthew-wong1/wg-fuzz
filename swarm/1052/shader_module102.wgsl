struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global1: Struct_2 = Struct_2(28118u, false, Struct_1(vec3<i32>(-1i, 1i, 31354i), vec3<i32>(-15941i, -38359i, 9735i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> vec4<u32> {
    global0 = select(!(!select(vec4<bool>(global0.x, true, false, true), select(vec4<bool>(arg_1.b, false, arg_1.b, arg_1.b), vec4<bool>(false, true, false, global0.x), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, global1.b, global0.x, false), vec4<bool>(arg_1.b, false, global0.x, global1.b), arg_1.b))), vec4<bool>(19560u <= ~(~u_input.a.x), any(select(!vec4<bool>(true, true, global1.b, false), vec4<bool>(true, arg_1.b, true, global1.b), global0.x)), false, arg_1.b), true);
    global1 = arg_1;
    var var_0 = Struct_2(arg_1.a, _wgslsmith_f_op_f32(838f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-746f, 855f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(trunc(2007f))), arg_1.c);
    var var_1 = vec3<i32>(-2147483647i, global1.c.b.x, ~(-1i));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(746f, 1000f)))))) + vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1719f)), _wgslsmith_f_op_f32(525f + -1857f), any(global0.zx))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1164f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(166f)))), -1010f));
    return vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(arg_1.a), ~21772u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, 32762u)), arg_1.a) >> (~firstTrailingBit(vec4<u32>(var_0.a, 2005u, global1.a, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, var_0.a, 0u, 1u), vec4<u32>(arg_1.a, arg_1.a, 106188u, global1.a)) << (~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_1.a, 4294967295u, var_0.a), vec4<u32>(global1.a, var_0.a, var_0.a, global1.a)) % vec4<u32>(32u))), max(reverseBits(~abs(71375u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, arg_1.a, arg_1.a) | _wgslsmith_clamp_vec3_u32(vec3<u32>(28211u, var_0.a, u_input.a.x), vec3<u32>(4944u, 4294967295u, global1.a), vec3<u32>(u_input.a.x, 25939u, u_input.a.x)), _wgslsmith_div_vec3_u32(vec3<u32>(13146u, arg_1.a, 1u) << (vec3<u32>(global1.a, 20337u, arg_1.a) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, 7729u, 1u)))), 4294967295u, 16891u);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(func_3(abs(vec4<i32>(18960i, 0i, 1i, 2147483647i)), Struct_2(4294967295u, false, arg_0.c)), vec4<u32>(1u, global1.a, 52634u, arg_0.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(4294967295u, u_input.a.x), ~u_input.a.x, u_input.a.x, firstTrailingBit(4294967295u)), countOneBits(vec4<u32>(arg_0.a, 50064u, 42263u, u_input.a.x)) ^ vec4<u32>(42154u, arg_0.a, arg_0.a, 18170u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a, 17738u, 58598u, u_input.a.x), ~vec4<u32>(global1.a, 0u, u_input.a.x, u_input.a.x)))), ~select(vec4<u32>(firstTrailingBit(u_input.a.x), _wgslsmith_mult_u32(4294967295u, u_input.a.x), 38374u, global1.a), vec4<u32>(1u, 8045u, 9070u, arg_0.a) << (~vec4<u32>(1u, 102221u, u_input.a.x, arg_0.a) % vec4<u32>(32u)), vec4<bool>(false, any(global0.zx), true, 17813i > arg_0.c.b.x)));
    global0 = select(vec4<bool>(true, !select(global1.b & global1.b, true, true), _wgslsmith_add_i32(select(10369i, arg_0.c.a.x, arg_0.b), _wgslsmith_mult_i32(-18771i, global1.c.a.x)) <= -_wgslsmith_mult_i32(1i, -1i), u_input.a.x <= u_input.a.x), !select(!vec4<bool>(false, global1.b, global0.x, false), vec4<bool>(global1.c.b.x <= -68586i, true, true, global0.x), true), vec4<bool>(true, true, (arg_0.a != _wgslsmith_mod_u32(u_input.a.x, global1.a)) == arg_0.b, !global0.x));
    global0 = vec4<bool>(global1.b, any(!(!(!vec4<bool>(global0.x, global1.b, global1.b, false)))), arg_0.b, all(global0.xzw));
    let var_1 = arg_0.c;
    var_0 = abs(~vec4<u32>(arg_0.a, arg_0.a, ~(~4294967295u), 1u));
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.a.x, var_0.x, 0u, arg_0.a) & vec4<u32>(4294967295u, global1.a, 89734u, var_0.x)), vec4<u32>(~var_0.x | 10240u, ~(arg_0.a >> (1724u % 32u)), 8987u, var_0.x)), func_3(vec4<i32>(-_wgslsmith_mult_i32(0i, u_input.b.x), -35019i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -55637i), vec3<i32>(arg_0.c.b.x, var_1.a.x, 17122i) ^ vec3<i32>(-2147483647i, 5630i, arg_0.c.b.x)), -(-16553i | global1.c.a.x)), arg_0).x, 48514u);
}

fn func_4(arg_0: u32) -> u32 {
    let var_0 = select(!vec4<bool>(global1.b, false, global1.b, u_input.b.x < 0i), !(!select(!vec4<bool>(global1.b, true, global1.b, global0.x), select(vec4<bool>(global0.x, true, true, false), vec4<bool>(false, false, global0.x, global0.x), false), vec4<bool>(global0.x, true, global0.x, false))), select(!select(select(vec4<bool>(true, true, global1.b, true), vec4<bool>(true, global0.x, global1.b, global0.x), vec4<bool>(global1.b, false, global0.x, true)), !vec4<bool>(false, global0.x, false, true), global0.x), select(vec4<bool>(global0.x, global1.b & global0.x, all(vec2<bool>(global1.b, false)), any(vec4<bool>(false, true, true, false))), vec4<bool>(all(vec3<bool>(global0.x, true, true)), any(vec3<bool>(global1.b, global1.b, false)), any(vec4<bool>(false, false, false, global0.x)), !global1.b), !select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(global1.b, true, global0.x, true), false)), !select(!vec4<bool>(false, true, global1.b, true), !vec4<bool>(false, global0.x, false, true), select(vec4<bool>(false, global1.b, global1.b, false), vec4<bool>(true, true, true, global0.x), global0.x))));
    global0 = select(select(vec4<bool>(var_0.x, true, all(global0.zw), any(select(vec3<bool>(false, global1.b, global1.b), vec3<bool>(global1.b, var_0.x, true), global1.b))), vec4<bool>(!any(vec4<bool>(true, var_0.x, global1.b, global0.x)), any(select(var_0, var_0, true)), global1.a >= firstLeadingBit(4911u), !(37507i > u_input.b.x)), vec4<bool>(any(select(var_0, vec4<bool>(true, false, global1.b, false), var_0)), u_input.a.x >= _wgslsmith_mod_u32(4294967295u, u_input.a.x), any(select(var_0, vec4<bool>(global1.b, var_0.x, false, false), var_0.x)), false)), !select(vec4<bool>(arg_0 < global1.a, true, global1.b, true), !(!vec4<bool>(true, false, global0.x, false)), true), select(var_0.x, false & any(select(vec2<bool>(false, global1.b), vec2<bool>(global1.b, true), var_0.x)), global0.x));
    var var_1 = Struct_2(_wgslsmith_dot_vec2_u32(abs(u_input.a), u_input.a), any(vec2<bool>(any(vec2<bool>(true, var_0.x)), var_0.x)), global1.c);
    var_1 = Struct_2(5681u, all(global0.yy), global1.c);
    var var_2 = global1.c;
    return _wgslsmith_sub_u32(~arg_0 >> (1u % 32u), ~(~(~var_1.a))) | (_wgslsmith_sub_u32(_wgslsmith_div_u32(~global1.a, reverseBits(var_1.a)), ~firstTrailingBit(9395u)) << (func_2(Struct_2(_wgslsmith_mult_u32(arg_0, arg_0), all(vec2<bool>(var_0.x, true)), var_1.c), vec2<f32>(1000f, 1284f)) % 32u));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    global1 = Struct_2(reverseBits(~func_4(func_2(Struct_2(1u, true, Struct_1(vec3<i32>(-12981i, -28237i, -11933i), global1.c.b)), vec2<f32>(-1000f, 1197f)))), !all(global0.wy), Struct_1(vec3<i32>(u_input.b.x, _wgslsmith_clamp_i32(55409i, 28724i, global1.c.b.x) >> (0u % 32u), arg_3.a.x), global1.c.b));
    let var_0 = global0.x;
    let var_1 = global1.c;
    var var_2 = global1.b;
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(-303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-817f, 1000f)) - -489f)), 1667f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1606f, -450f, 296f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1159f, 1738f, -571f)))));
    return Struct_1(global1.c.a, vec3<i32>(arg_1, arg_3.b.x, reverseBits(~(-arg_3.a.x))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    global1 = Struct_2(~u_input.a.x, global0.x, global1.c);
    let var_0 = -483f;
    global0 = vec4<bool>(any(global0.zyz), global0.x, (false | global0.x) == all(select(select(global0.yxy, global0.yxy, global0.zzx), !vec3<bool>(false, global0.x, true), true)), global1.b);
    var var_1 = var_0;
    var var_2 = Struct_2(func_3(-vec4<i32>(u_input.b.x, 19312i, -global1.c.a.x, global1.c.b.x), Struct_2(_wgslsmith_sub_u32(_wgslsmith_div_u32(8894u, global1.a), global1.a), true, func_1(countOneBits(arg_1.a.x), reverseBits(16090i), vec4<bool>(false, global1.b, global1.b, false), Struct_1(vec3<i32>(32700i, arg_1.a.x, -2147483647i), vec3<i32>(-11915i, 19140i, -50694i))))).x, !select(!global0.x, all(!vec4<bool>(true, false, global1.b, global0.x)), global0.x), func_1(-abs(~(-35878i)), arg_0.a.x, select(!select(vec4<bool>(global0.x, true, global1.b, false), vec4<bool>(false, false, global0.x, true), true), vec4<bool>(all(global0.xzz), false, any(vec4<bool>(true, true, true, true)), global0.x & true), vec4<bool>(true, true, true, true)), Struct_1(-countOneBits(vec3<i32>(-1i, -26354i, arg_1.a.x)), -vec3<i32>(global1.c.a.x, -4896i, global1.c.a.x))));
    return StorageBuffer(vec4<u32>(1u | var_2.a, 1u >> (firstTrailingBit(~50304u) % 32u), global1.a, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(global1.c, func_1(~_wgslsmith_sub_i32(firstTrailingBit(6261i), u_input.b.x >> (4294967295u % 32u)), 4992i, !(!select(vec4<bool>(false, global0.x, false, false), vec4<bool>(global1.b, global0.x, global0.x, global1.b), vec4<bool>(false, false, global1.b, global0.x))), global1.c));
}

