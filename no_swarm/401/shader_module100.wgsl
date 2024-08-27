struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> f32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1340f), !select(global0.zx, global0.zz, global0.wy), !select(!global0.yzw, select(vec3<bool>(false, global0.x, false), global0.xwx, vec3<bool>(arg_1, arg_1, false)), global0.zzz), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-478f, -332f, -1354f, -177f))), vec4<f32>(527f, -499f, 1086f, 2281f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f)))), 0u));
    var var_1 = Struct_3(var_0.a);
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.d.x), -347f)), !global0.wy, select(var_0.a.c, select(!vec3<bool>(true, true, var_0.a.c.x), var_0.a.c, var_0.a.c.x), select(false, any(vec4<bool>(var_1.a.b.x, var_0.a.b.x, false, true)), true)), vec4<f32>(-1733f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.d.x * var_0.a.a), _wgslsmith_f_op_f32(-var_1.a.a))), _wgslsmith_div_f32(359f, var_0.a.d.x), _wgslsmith_div_f32(-925f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 0u));
    var var_2 = var_1.a.a;
    let var_3 = Struct_2(max(var_1.a.e, ~_wgslsmith_add_u32(~65036u, arg_0.x)));
    return _wgslsmith_f_op_f32(floor(1f));
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(func_3(countOneBits(~u_input.c), global0.x)), select(global0.wy, !vec2<bool>(false, global0.x), !all(vec4<bool>(global0.x, global0.x, false, global0.x))), !(!vec3<bool>(global0.x, global0.x, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1132f, 1431f, -1223f, -607f) - vec4<f32>(877f, -1412f, 1000f, 1480f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(789f, -432f, 1002f, 934f))), u_input.e.x));
    var var_1 = var_0.a.b;
    var var_2 = abs(firstLeadingBit(46258i));
    let var_3 = var_0.a.d.xz;
    global0 = select(select(vec4<bool>(global0.x, (385f == var_0.a.d.x) && all(vec4<bool>(global0.x, true, false, true)), var_1.x, any(select(vec2<bool>(global0.x, true), var_0.a.b, var_0.a.b.x))), !vec4<bool>(true, true, u_input.a.x != 17431i, true), var_1.x & true), vec4<bool>(true, max(abs(u_input.c.x), reverseBits(4294967295u)) <= _wgslsmith_clamp_u32(~5219u, 10358u, min(u_input.c.x, u_input.e.x)), var_1.x, any(vec2<bool>(true, all(vec3<bool>(var_1.x, false, true))))), true);
    return select(vec4<bool>(true, true, false, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.e, var_0.a.e), vec2<u32>(var_0.a.e, 18847u)) == var_0.a.e), vec4<bool>(any(!select(var_0.a.b, vec2<bool>(var_1.x, false), vec2<bool>(false, var_0.a.b.x))), true, var_1.x | select(true, var_0.a.c.x, false & var_1.x), any(vec2<bool>(!var_0.a.b.x, true))), vec4<bool>(true, any(!select(global0.wxw, global0.wwz, global0.x)), !(-u_input.b > u_input.b), true));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec2<u32>) -> vec4<bool> {
    var var_0 = -u_input.a.x;
    global0 = !select(select(!vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, any(vec4<bool>(global0.x, global0.x, global0.x, false)), true, true), !select(vec4<bool>(true, global0.x, true, true), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, true, false, false))), func_2(Struct_2(arg_2.x & 18395u)), !func_2(Struct_2(arg_2.x)));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(380f * 538f) - _wgslsmith_f_op_f32(min(1372f, 555f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -727f) - _wgslsmith_f_op_f32(sign(318f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1377f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -444f), 946f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(4294967295u, arg_1.x, 22498u, 0u), true)) + _wgslsmith_f_op_f32(f32(-1f) * -1570f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -411f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(912f, 395f)), _wgslsmith_f_op_f32(f32(-1f) * -295f), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(step(-1276f, -1000f))) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(-2143f - 1372f), 1000f, -1747f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-323f, _wgslsmith_div_f32(-603f, -175f), -234f, -476f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-733f, -941f, -1873f, 1000f)), !vec4<bool>(true, global0.x, false, false)))));
    var var_2 = all(global0.xx);
    let var_3 = abs(~(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(36124u, arg_2.x, u_input.e.x, u_input.c.x), u_input.c), arg_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(28493u, 1510u), u_input.c.yw), ~arg_1.x) | u_input.c));
    return !select(vec4<bool>(!global0.x, global0.x, !(arg_0.x == 10036i), global0.x), vec4<bool>(false, true, false, all(!global0.yww)), !(!(!vec4<bool>(global0.x, global0.x, global0.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.yz)));
    global0 = select(func_1(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.a.x) >> (_wgslsmith_sub_vec4_u32(u_input.c, u_input.c) % vec4<u32>(32u)), vec4<i32>(~19263i, abs(-10261i), ~u_input.a.x, u_input.b ^ 2147483647i)), u_input.c.yz, _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(var_0.a, u_input.c.x)), vec2<u32>(u_input.e.x, 1u)), firstTrailingBit(vec2<u32>(1u, 1u)) | ~u_input.e)), select(vec4<bool>(!(!global0.x), _wgslsmith_div_i32(-1i, u_input.b) <= u_input.d, any(vec4<bool>(global0.x, true, true, false)), global0.x), !func_1(select(vec4<i32>(u_input.b, -1i, u_input.d, u_input.b), vec4<i32>(35363i, u_input.d, u_input.d, -2147483647i), global0.x), ~vec2<u32>(u_input.e.x, 13813u), vec2<u32>(u_input.e.x, 41281u) >> (u_input.e % vec2<u32>(32u))), global0.x), _wgslsmith_mod_i32(_wgslsmith_add_i32(1i, 0i >> (0u % 32u)), ~u_input.a.x) < u_input.d);
    var var_1 = Struct_3(Struct_1(1006f, !vec2<bool>(!global0.x, true), !vec3<bool>(global0.x & global0.x, u_input.d == 39713i, all(global0.yw)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1164f, 846f, 476f, 801f)) * vec4<f32>(-434f, 868f, -157f, -1033f)))), firstLeadingBit(1u)));
    var var_2 = !func_1(vec4<i32>(u_input.d, u_input.a.x, countOneBits(~u_input.b), (u_input.d | u_input.a.x) & (i32(-1i) * -1i)), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_1.a.e, var_0.a), _wgslsmith_mod_u32(u_input.c.x, 4294967295u)), vec2<u32>(_wgslsmith_mult_u32(0u, 31151u), var_1.a.e)), countOneBits(u_input.c.zz)).wxz;
    var_2 = select(global0.zzw, !vec3<bool>((u_input.a.x << (4294967295u % 32u)) >= _wgslsmith_mod_i32(2147483647i, u_input.b), u_input.d != _wgslsmith_mod_i32(5987i, u_input.d), true), var_1.a.c.x);
    var_0 = Struct_2(u_input.c.x);
    var var_3 = vec4<bool>(true, var_2.x, global0.x, var_1.a.c.x);
    var var_4 = select(~vec4<u32>(~4294967295u, _wgslsmith_div_u32(38173u, u_input.c.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.e, 70522u, 28844u), u_input.c.wyy), var_0.a), firstTrailingBit(reverseBits(~vec4<u32>(68323u, u_input.c.x, 0u, var_1.a.e))), select(!select(select(vec4<bool>(true, var_3.x, var_2.x, false), vec4<bool>(var_1.a.b.x, var_1.a.b.x, false, false), vec4<bool>(false, false, global0.x, false)), select(vec4<bool>(false, var_3.x, false, true), vec4<bool>(var_3.x, global0.x, var_3.x, false), vec4<bool>(false, var_3.x, var_2.x, var_1.a.c.x)), !var_2.x), func_1(-vec4<i32>(u_input.d, u_input.a.x, u_input.a.x, 0i), select(u_input.c.ww, u_input.c.yx, false), min(vec2<u32>(1u, var_1.a.e), u_input.e)), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(u_input.e ^ ~u_input.e, _wgslsmith_div_vec2_u32(~vec2<u32>(var_4.x, 4294967295u), var_4.xw)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.d.x, -532f, var_1.a.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.d.x, -652f, var_1.a.a) + vec3<f32>(var_1.a.a, -1000f, -389f)))), var_1.a.d.xyx), var_1.a.d.xww, var_0.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_add_i32(~29482i, ~u_input.d), _wgslsmith_sub_i32(firstTrailingBit(60283i), 12164i), 0i), u_input.a, -vec4<i32>(abs(-2147483647i), 1i << (1u % 32u), u_input.d, ~33747i)));
}

