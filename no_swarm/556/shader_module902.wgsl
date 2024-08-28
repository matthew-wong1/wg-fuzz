struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_add_u32(33430u, 51753u), ~752u), _wgslsmith_mod_u32(1u, u_input.a.x), 50657u), ~vec3<u32>(1u, u_input.a.x ^ 22283u, u_input.a.x | 40960u)), Struct_2(Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1460f, 327f, -1844f, 867f) * vec4<f32>(1780f, 700f, -103f, -404f)), vec4<f32>(-729f, 985f, -148f, 1642f), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-900f, 484f, 662f, -1593f)))), -252f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(208f, 755f) + vec2<f32>(761f, -400f))))), Struct_1(vec2<bool>(all(vec4<bool>(true, true, true, true)), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(658f, -159f, 561f, 265f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(658f, 192f, 383f, 134f)) * vec4<f32>(1287f, -852f, 809f, 775f))), Struct_1(vec2<bool>(true, u_input.a.x >= u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -149f), -632f, _wgslsmith_div_f32(-398f, 894f), _wgslsmith_f_op_f32(f32(-1f) * -1215f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1219f, -538f, 341f, 767f) * vec4<f32>(660f, -1041f, -1153f, -840f)))))), _wgslsmith_add_u32(firstLeadingBit(min(4294967295u, u_input.a.x)), u_input.a.x), _wgslsmith_mod_vec3_u32(max(vec3<u32>(countOneBits(u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 4294967295u & u_input.a.x), min(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(20037u, 33150u, 5191u)), vec3<u32>(u_input.a.x, 9052u, 4294967295u))), (abs(vec3<u32>(10165u, 36222u, u_input.a.x)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(21997u, 4294967295u, u_input.a.x))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(3591u, u_input.a.x, 14576u)) % vec3<u32>(32u))));
    var var_1 = Struct_4(var_0.b.a.b.x, ~_wgslsmith_sub_i32(1i, 1i) | _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(-89447i, 0i, 44297i, 1i), vec4<i32>(-2147483647i, -1i, 1i, 2189i), false), ~vec4<i32>(1925i, 35947i, 45070i, 32284i)), vec4<i32>(1i, 1i, 1i, 1i)));
    let var_2 = Struct_2(Struct_1(vec2<bool>(any(!vec3<bool>(false, var_0.b.e.a.x, true)), var_0.b.e.a.x), _wgslsmith_f_op_vec4_f32(-var_0.b.e.b), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 2036f, 1000f, var_1.a)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a, var_1.a, -797f, -685f))))))), _wgslsmith_f_op_f32(-var_1.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.c.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-556f + 965f) + var_0.b.b)), _wgslsmith_div_f32(1000f, var_1.a)), var_0.b.d, var_0.b.e);
    let var_3 = var_0.d;
    var_1 = Struct_4(_wgslsmith_f_op_f32(var_0.b.b - -1241f), -1i);
    return Struct_1(vec2<bool>(false, !any(vec4<bool>(false, false, false, var_0.b.a.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-359f, -1251f, 1000f, -1158f), var_2.a.b)))), var_0.b.d.b);
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec3<f32>, arg_3: vec3<i32>) -> vec2<bool> {
    return vec2<bool>(true, all(vec3<bool>(all(!vec4<bool>(arg_1, false, true, false)), arg_1 != true, -arg_0.b != arg_0.b)));
}

fn func_1() -> Struct_2 {
    var var_0 = 2147483647i;
    var var_1 = func_2();
    let var_2 = 2147483647i;
    return Struct_2(func_2(), _wgslsmith_f_op_f32(-285f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x * -1000f) * var_1.c.x) * var_1.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1425f))) + _wgslsmith_f_op_vec2_f32(min(var_1.c.zw, vec2<f32>(-223f, _wgslsmith_f_op_f32(f32(-1f) * -2327f))))), Struct_1(func_3(Struct_4(var_1.c.x, 0i), any(vec3<bool>(true, true, false)) != true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_1.b.wxz))), vec3<i32>(max(-2147483647i, -1i), -73013i, countOneBits(var_2))), var_1.b, _wgslsmith_f_op_vec4_f32(round(var_1.b))), func_2());
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_3 {
    let var_0 = arg_1.b.a.b.xw;
    var var_1 = arg_2.b;
    let var_2 = max(arg_1.a, 0u);
    var var_3 = arg_1;
    let var_4 = true;
    return Struct_3(~min(u_input.a.x, ~arg_1.a), var_3.b, 29031u, var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-240f + 291f))), -235f), Struct_3(4294967295u, func_1(), abs(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, 7084u), ~48235u)), vec3<u32>(max(u_input.a.x, u_input.a.x), ~u_input.a.x << (u_input.a.x % 32u), u_input.a.x)), func_2());
    var_0 = func_4(vec2<f32>(-969f, 1219f), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.d.c.yy + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2191f, var_0.b.d.b.x), vec2<f32>(var_0.b.c.x, -762f), vec2<bool>(false, false))))), Struct_3(max(0u, ~var_0.a), Struct_2(func_2(), -682f, vec2<f32>(-723f, var_0.b.a.b.x), func_4(vec2<f32>(var_0.b.b, var_0.b.c.x), Struct_3(1u, var_0.b, 34556u, vec3<u32>(u_input.a.x, var_0.a, 4294967295u)), Struct_1(vec2<bool>(var_0.b.a.a.x, true), var_0.b.a.b, var_0.b.d.b)).b.e, var_0.b.d), _wgslsmith_mod_u32(46671u, ~var_0.a), var_0.d), Struct_1(var_0.b.a.a, _wgslsmith_f_op_vec4_f32(abs(var_0.b.e.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a.c.x, 1000f, var_0.b.b, var_0.b.a.c.x) + vec4<f32>(1000f, var_0.b.e.b.x, var_0.b.d.b.x, 893f))))), var_0.b.d);
    var var_1 = Struct_1(var_0.b.a.a, var_0.b.d.b, _wgslsmith_f_op_vec4_f32(select(var_0.b.a.b, vec4<f32>(_wgslsmith_f_op_f32(-1251f * _wgslsmith_f_op_f32(var_0.b.e.c.x + var_0.b.b)), _wgslsmith_f_op_f32(round(-165f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.b, -730f) + -2122f), -1467f), select(vec4<bool>(!var_0.b.a.a.x, func_3(Struct_4(var_0.b.e.c.x, 3292i), var_0.b.d.a.x, var_0.b.d.b.xyz, vec3<i32>(0i, 25404i, 72775i)).x, func_1().a.a.x, var_0.b.e.b.x == var_0.b.e.b.x), select(vec4<bool>(var_0.b.e.a.x, var_0.b.e.a.x, var_0.b.a.a.x, var_0.b.a.a.x), select(vec4<bool>(var_0.b.e.a.x, false, true, var_0.b.a.a.x), vec4<bool>(true, true, var_0.b.a.a.x, var_0.b.a.a.x), vec4<bool>(var_0.b.e.a.x, false, false, true)), !vec4<bool>(false, false, var_0.b.a.a.x, true)), !select(vec4<bool>(true, var_0.b.e.a.x, var_0.b.d.a.x, false), vec4<bool>(false, false, true, var_0.b.a.a.x), var_0.b.d.a.x)))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-1799f * func_1().d.c.x), 1i);
    var_1 = func_2();
    var_0 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + _wgslsmith_div_f32(var_2.a, var_2.a)))), Struct_3(~var_0.d.x, Struct_2(func_1().e, 777f, var_1.c.zx, Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.b.x, -923f, var_1.b.x)), vec4<f32>(-403f, 742f, 335f, var_0.b.e.b.x)), Struct_1(func_3(var_2, false, vec3<f32>(842f, var_2.a, var_0.b.e.c.x), vec3<i32>(var_2.b, 2147483647i, var_2.b)), var_0.b.a.b, _wgslsmith_f_op_vec4_f32(-var_0.b.e.c))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 4294967295u, u_input.a.x), reverseBits(vec4<u32>(1u, 0u, u_input.a.x, var_0.a))), max(22236u, u_input.a.x) | (var_0.d.x & 27137u)), ~select(~var_0.d, var_0.d, !var_1.a.x)), var_0.b.d);
    let var_3 = _wgslsmith_f_op_f32(-var_2.a);
    var var_4 = Struct_3(min(var_0.a, firstLeadingBit(u_input.a.x)), Struct_2(var_0.b.d, var_1.c.x, var_1.c.xx, Struct_1(vec2<bool>(var_1.a.x, select(true, false, var_1.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c)), var_1.b), func_2()), select(u_input.a.x, ~(~(~u_input.a.x)), !(!(false | var_0.b.e.a.x))), abs(abs(select(vec3<u32>(14262u, 1u, u_input.a.x), var_0.d, var_1.a.x))));
    var var_5 = 29252u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~var_2.b, var_2.b, -abs(_wgslsmith_div_i32(-2190i, -1i)), (-var_2.b ^ ~65367i) | var_2.b));
}

