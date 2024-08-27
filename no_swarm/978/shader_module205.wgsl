struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: vec2<i32>) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(-arg_1);
    global0 = arg_1;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2055f, 336f, arg_1.x, global0.x))))));
    let var_0 = Struct_4(arg_0.wzz, Struct_3(arg_0.x, Struct_1(-26343i, arg_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, global0.x, arg_2.x, -1133f) + arg_1)), min(vec2<u32>(435u, u_input.c.x), select(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(4294967295u, 7773u), vec2<bool>(arg_0.x, false))))), Struct_3(arg_0.x, Struct_1(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b.x, -33765i), ~arg_3.x), arg_3, arg_1, ~u_input.c >> ((vec2<u32>(u_input.c.x, u_input.a) >> (vec2<u32>(52963u, 36785u) % vec2<u32>(32u))) % vec2<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, arg_2.x), vec2<f32>(-366f, arg_2.x))), _wgslsmith_f_op_vec2_f32(select(arg_2.zx, vec2<f32>(arg_2.x, -244f), arg_0.x)), var_0.a.yz)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.xz + var_0.b.b.c.yx))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.b.b.c.yw)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-390f, arg_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.yy, arg_1.zx))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(769f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(147f, 137f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.wy) * global0.yy), any(arg_0.xw) || (u_input.c.x > u_input.a))), select(vec2<bool>(arg_0.x, any(vec3<bool>(arg_0.x, var_0.a.x, false))), vec2<bool>(!any(vec2<bool>(arg_0.x, true)), any(vec3<bool>(true, var_0.b.a, false))), false)));
    return select(arg_0.zxz, select(select(vec3<bool>(arg_0.x, any(arg_0.zzz), -1000f >= var_0.b.b.c.x), !var_0.a, !(false && arg_0.x)), arg_0.wxy, any(select(vec2<bool>(false, true), var_0.a.yz, arg_0.yz)) && (_wgslsmith_div_i32(1i, arg_3.x) >= ~arg_3.x)), !vec3<bool>(~var_0.c.b.d.x >= var_0.c.b.d.x, select(global0.x >= arg_1.x, false, arg_0.x), true || !arg_0.x));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    let var_0 = select(vec3<bool>(!all(func_3(vec4<bool>(true, true, false, true), vec4<f32>(global0.x, -1350f, global0.x, global0.x), global0.zww, vec2<i32>(u_input.b.x, -38439i))), true, ~(~arg_2.x) <= u_input.a), !(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), false)), !select(func_3(vec4<bool>(false, true, true, false), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -399f, global0.x, 660f) * vec4<f32>(559f, global0.x, global0.x, 499f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1000f, 597f)), -vec2<i32>(2147483647i, arg_3)), vec3<bool>(true, true, true), (-538f >= global0.x) == true));
    global0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x - global0.x))), -305f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-126f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(265f, -229f, 541f, -932f), vec4<bool>(false, true, true, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-575f, global0.x, 135f, global0.x)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -717f, 1000f, 529f)) + vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -850f, _wgslsmith_f_op_f32(1043f + global0.x), _wgslsmith_f_op_f32(-global0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1387f, -821f), 770f, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * 1203f))))))));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -310f, global0.x) - vec4<f32>(global0.x, global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2425f, global0.x, global0.x, 1572f)))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 335f, global0.x, global0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, 906f, global0.x, -299f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-global0.yyy);
    return ~(_wgslsmith_sub_u32(arg_1.x & arg_2.x, countOneBits(_wgslsmith_sub_u32(arg_1.x, arg_2.x))) << (~(~49571u) % 32u));
}

fn func_1() -> Struct_3 {
    let var_0 = vec4<bool>((_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, u_input.b.x, -2147483647i), firstLeadingBit(u_input.b.xzy)) >> (~func_2(u_input.b.ww, vec3<u32>(u_input.c.x, u_input.a, u_input.a), vec4<u32>(0u, 7285u, 8268u, 20143u), -2147483647i) % 32u)) == _wgslsmith_mult_i32(1i, -8717i), true, false, select(any(vec2<bool>(true, true)), false, true));
    let var_1 = reverseBits(_wgslsmith_clamp_i32(-42833i, i32(-1i) * -21237i, u_input.b.x));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1054f, -1051f, global0.x)), vec4<f32>(global0.x, global0.x, global0.x, 395f), var_0)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1518f, global0.x, -852f, global0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2089f, global0.x, global0.x, global0.x))))));
    var var_2 = Struct_4(var_0.wwy, Struct_3(var_0.x, Struct_1(-var_1 ^ u_input.b.x, -u_input.b.xz >> (u_input.c % vec2<u32>(32u)), vec4<f32>(global0.x, global0.x, 901f, _wgslsmith_f_op_f32(trunc(global0.x))), ~u_input.c)), Struct_3(var_0.x || all(var_0.xwx), Struct_1(~2147483647i, vec2<i32>(countOneBits(u_input.b.x), -33923i >> (u_input.a % 32u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, global0.x, -775f), vec4<f32>(-308f, 1016f, -1456f, global0.x), var_1 <= -45700i)), u_input.c)));
    var_2 = Struct_4(var_0.zyw, var_2.b, var_2.b);
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = ~vec3<u32>(~4294967295u, 1u, firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.c.x, u_input.c.x))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c.x + 997f) + _wgslsmith_f_op_f32(-1313f + -119f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(var_0.b.c)), func_1().b.c))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.c.x) - _wgslsmith_f_op_f32(-global0.x))), global0.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(f32(-1f) * -941f))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))))), -211f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(1445f))) + global0.x), _wgslsmith_f_op_f32(-global0.x));
    var var_2 = Struct_1(2147483647i, u_input.b.wy, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_0.b.c * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c.x, 1152f, global0.x, 117f))))), _wgslsmith_f_op_vec4_f32(-var_0.b.c))), var_0.b.d);
    var_2 = func_1().b;
    let var_3 = 117510u;
    var var_4 = min(_wgslsmith_add_vec3_u32(~var_1, ~select(vec3<u32>(var_0.b.d.x, var_3, 89481u), var_1, all(vec4<bool>(var_0.a, var_0.a, var_0.a, true)))), max(~firstTrailingBit(vec3<u32>(var_0.b.d.x, var_1.x, 32618u)), vec3<u32>(var_2.d.x, _wgslsmith_mod_u32(var_1.x, var_0.b.d.x), ~var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_1.xz), -23576i, ~var_1);
}

