struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(true, vec3<bool>(true, false, true), vec4<i32>(55732i, 1i, -1i, -15787i)), Struct_1(true, vec3<bool>(true, true, false), vec4<i32>(-1i, -23879i, 28710i, 0i)), Struct_1(true, vec3<bool>(false, false, false), vec4<i32>(1i, 22210i, 2147483647i, 3588i)), Struct_1(false, vec3<bool>(false, false, true), vec4<i32>(-25682i, 2147483647i, -1i, 1i)), Struct_1(true, vec3<bool>(true, true, false), vec4<i32>(18938i, -1i, -22256i, -1i)), Struct_1(true, vec3<bool>(false, true, true), vec4<i32>(-8756i, -1i, 23453i, 2147483647i)), Struct_1(true, vec3<bool>(false, false, true), vec4<i32>(14865i, 1i, -15782i, 2147483647i)));

var<private> global2: Struct_1 = Struct_1(false, vec3<bool>(true, false, false), vec4<i32>(-13379i, 1i, -26417i, 2147483647i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: vec2<i32>) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(369f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, -619f, arg_0.b.x)) + -385f)))), _wgslsmith_f_op_f32(-2051f - 501f));
    let var_1 = Struct_2(u_input.a.yy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-208f - _wgslsmith_f_op_f32(-1912f * var_0.x))))));
    let var_2 = -max(-31640i, _wgslsmith_mult_i32(i32(-1i) * -35927i, ~1i));
    let var_3 = u_input.b;
    global1 = array<Struct_1, 7>();
    return u_input.a.x;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = arg_3;
    var var_1 = Struct_1(arg_0, arg_2.yxz, abs(global2.c) & ~firstLeadingBit(countOneBits(global2.c)));
    var_0 = arg_3;
    var var_2 = !(!arg_2.wx);
    var_1 = global1[_wgslsmith_index_u32(1u, 7u)];
    return arg_3;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_2) -> vec3<bool> {
    global2 = Struct_1(_wgslsmith_sub_u32(reverseBits(_wgslsmith_mod_u32(arg_3.a.x, arg_0)), 1u) > _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, 1u, u_input.a.x, arg_1.x)), ~(~vec4<u32>(u_input.b, 1u, arg_3.a.x, 7537u))), vec3<bool>(4294967295u < ~arg_0, any(!vec4<bool>(global2.a, global2.a, false, true)), global2.b.x), global2.c);
    global2 = global1[_wgslsmith_index_u32(func_3(global2.a, arg_3.a.x, !(!select(vec4<bool>(global2.b.x, true, global2.b.x, false), !vec4<bool>(global2.b.x, false, true, true), -5773i < global2.c.x)), arg_3).a.x, 7u)];
    var var_0 = Struct_1(true, !vec3<bool>(true, -2147483647i < global2.c.x, true), vec4<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(-2147483647i << (arg_3.a.x % 32u), _wgslsmith_dot_vec2_i32(global2.c.xx, vec2<i32>(15681i, global2.c.x)))), firstTrailingBit(~(1i >> (0u % 32u))), global2.c.x, firstTrailingBit(countOneBits(global2.c.x))));
    var var_1 = global1[_wgslsmith_index_u32(arg_3.a.x, 7u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(730f * arg_2) + _wgslsmith_f_op_f32(f32(-1f) * -337f)) - func_3(false, func_3(true, 4294967295u, vec4<bool>(true, true, true, true), arg_3).a.x, !select(select(vec4<bool>(false, var_0.b.x, var_0.b.x, true), vec4<bool>(global2.b.x, global2.a, true, var_0.a), global2.a), select(vec4<bool>(false, true, false, false), vec4<bool>(global2.a, var_0.b.x, global2.b.x, var_1.b.x), true), !vec4<bool>(var_1.b.x, global2.b.x, false, global2.a)), arg_3).b);
    return !var_1.b;
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<u32>, arg_3: vec2<u32>) -> vec3<f32> {
    global0 = vec3<f32>(-661f, -1003f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x - global0.x), 583f, true)))));
    var var_0 = firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x) | 24951u, max(min(37954u, 0u), ~arg_2.x))) & arg_3.x;
    var var_1 = Struct_2(~arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(426f + global0.x), global2.a || false)) + global0.x)));
    var_1 = func_3(true, _wgslsmith_mod_u32(_wgslsmith_mod_u32(max(1u & arg_3.x, u_input.b), _wgslsmith_clamp_u32(~13847u, select(63393u, 14724u, arg_0.x), func_3(false, arg_2.x, vec4<bool>(false, false, arg_0.x, true), Struct_2(arg_2, -359f)).a.x)), 0u | arg_3.x), !vec4<bool>(all(vec3<bool>(false, arg_0.x, global2.a)), !any(vec2<bool>(global2.a, false)), true, !global2.a), func_3(global0.x < _wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_f_op_f32(-global0.x))), 51452u >> (select(arg_3.x, var_1.a.x, arg_2.x >= 86610u) % 32u), select(!(!vec4<bool>(global2.a, arg_0.x, arg_0.x, arg_0.x)), !select(vec4<bool>(arg_0.x, true, global2.b.x, true), vec4<bool>(false, arg_0.x, false, global2.b.x), true), select(select(vec4<bool>(global2.a, false, arg_0.x, false), vec4<bool>(arg_0.x, true, global2.a, arg_0.x), global2.a), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, arg_0.x, global2.a), true), select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(true, true, false, true), global2.a))), Struct_2(u_input.a.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1300f))))));
    global2 = global1[_wgslsmith_index_u32(abs(u_input.c), 7u)];
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 434f, var_1.b))))));
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_1, 7>();
    global0 = _wgslsmith_f_op_vec3_f32(func_5(select(global2.b, func_4(reverseBits(countOneBits(6667u)), u_input.a, 221f, func_3(global2.c.x == global2.c.x, func_2(Struct_1(false, global2.b, vec4<i32>(-2147483647i, -1i, 28443i, global2.c.x)), vec3<f32>(-379f, -1064f, -819f), u_input.a.xz, global2.c.wz), select(vec4<bool>(global2.a, global2.b.x, true, global2.b.x), vec4<bool>(global2.b.x, global2.b.x, global2.b.x, global2.a), true), Struct_2(u_input.a.zz, global0.x))), select(_wgslsmith_f_op_f32(trunc(1638f)) <= -302f, global2.a, false)), -2147483647i, _wgslsmith_mod_vec2_u32(vec2<u32>(max(2824u, u_input.b), 1u) & u_input.a.yy, vec2<u32>(0u, ~(~u_input.a.x))), vec2<u32>(71923u, u_input.c)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(769f, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(363f, global0.x, 950f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, -242f, -1802f)))))));
    global2 = Struct_1(any(!(!vec4<bool>(false, true, true, global2.a))) & !any(global2.b), !func_4(max(~0u, u_input.b | 77242u), u_input.a, global0.x, func_3(true, _wgslsmith_mod_u32(4294967295u, u_input.b), vec4<bool>(true, true, true, false), Struct_2(u_input.a.zy, 914f))), global2.c);
    let var_0 = min(vec3<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(u_input.c, 82682u)), u_input.c), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c, 1u, u_input.c, 66625u) ^ vec4<u32>(u_input.c, 4294967295u, 61907u, 93627u)), ~(~vec4<u32>(0u, 30971u, u_input.b, 0u))), _wgslsmith_clamp_u32(u_input.c, ~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.c, 41091u)), ~(27821u << (0u % 32u)))), ~u_input.a);
    return Struct_1(true | (abs(-1i) <= global2.c.x), select(vec3<bool>(true, !global2.b.x, all(func_4(1u, vec3<u32>(u_input.c, u_input.b, var_0.x), global0.x, Struct_2(u_input.a.zz, global0.x)))), select(global2.b, vec3<bool>(global2.c.x <= 0i, true, true), global2.b.x), global2.a), -(countOneBits(global2.c) >> (firstLeadingBit(vec4<u32>(u_input.b, 1u, var_0.x, 0u)) % vec4<u32>(32u))) << (vec4<u32>(8929u, u_input.a.x, ~(~u_input.c), ~1u >> (var_0.x % 32u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0.x, global0.x) - vec3<f32>(-374f, global0.x, -1119f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-189f, -170f, global0.x) + vec3<f32>(-1163f, global0.x, global0.x))))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -356f), global0.x) * _wgslsmith_f_op_f32(select(global0.x, -333f, var_0.a))), -268f, 1590f)));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.x)), 489f), 925f, !(!var_0.b.x))), _wgslsmith_f_op_f32(sign(global0.x))));
    global2 = var_0;
    let var_1 = Struct_2(u_input.a.zz, 508f);
    global2 = global1[_wgslsmith_index_u32(4294967295u, 7u)];
    var var_2 = var_1;
    var var_3 = var_0.b.xx;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(var_0.c.ww, var_0.c.yz >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.a.x, var_2.a.x), var_2.a, var_1.a) % vec2<u32>(32u)), select(vec2<bool>(true, true), vec2<bool>(true, false), select(true, var_0.a, var_0.b.x)))), var_2.a.x & _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, ~vec3<u32>(16328u, var_1.a.x, 45795u)), ~u_input.a >> (_wgslsmith_mult_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u))), ~_wgslsmith_sub_vec2_i32(global2.c.xw, firstTrailingBit(global2.c.yx)), ~(~abs(~u_input.a)));
}

