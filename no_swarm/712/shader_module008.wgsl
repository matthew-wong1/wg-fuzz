struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = true;
    var_0 = true;
    var_0 = true;
    let var_1 = select(43233u, ~(u_input.b | firstTrailingBit(~u_input.d)), !any(vec4<bool>(true, true, true, false)));
    var_0 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_div_f32(642f, 201f)))) != _wgslsmith_f_op_f32(abs(512f))) || (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0)))) < 1000f);
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = arg_2.b;
    var_0 = Struct_1(arg_2.c.a, ~select(~_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(var_0.b.x, u_input.e)), countOneBits(vec2<i32>(-68603i, arg_0.b.x)), arg_2.c.d), !(!(~arg_0.e == _wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(67066u, 53356u)))), !arg_2.c.d, select(reverseBits(reverseBits(1684u)), firstTrailingBit(arg_0.e), true) | _wgslsmith_mod_u32(arg_2.a.x & (0u | arg_2.c.e), ~(~0u)));
    let var_1 = vec3<bool>(!var_0.d.x, true, !arg_2.b.c);
    var var_2 = arg_0.d.x && !var_1.x;
    let var_3 = Struct_2(reverseBits(~vec2<u32>(var_0.e, ~u_input.b)), arg_0, Struct_1(arg_2.b.a, vec2<i32>(var_0.b.x, 1i), select(var_0.c & false, !var_1.x, false) && true, vec2<bool>(true, true), var_0.e >> (min(arg_0.e, arg_0.e) % 32u)));
    return arg_1;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = ~u_input.a.yw;
    let var_1 = false;
    var_0 = vec2<u32>(13547u, var_0.x);
    let var_2 = min(func_3(Struct_1(_wgslsmith_f_op_f32(trunc(-285f)), vec2<i32>(0i, -2147483647i), var_1, vec2<bool>(true, true), 3734u), ~(-vec4<i32>(u_input.e, u_input.e, -1i, u_input.e)) | max(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.e, -22320i, u_input.e), vec4<i32>(u_input.e, 76704i, u_input.e, u_input.e), vec4<i32>(27494i, u_input.e, u_input.e, 14221i)), select(vec4<i32>(u_input.e, u_input.e, u_input.e, u_input.e), vec4<i32>(u_input.e, u_input.e, 16866i, u_input.e), true)), Struct_2(vec2<u32>(4294967295u, 0u), Struct_1(-1000f, vec2<i32>(1i, u_input.e), var_1, arg_0.yz, 0u), Struct_1(_wgslsmith_f_op_f32(-460f * 213f), -vec2<i32>(-3116i, 2147483647i), var_1, arg_0.xz, min(44728u, 73492u)))), _wgslsmith_clamp_vec4_i32((firstTrailingBit(vec4<i32>(u_input.e, -1i, -46067i, -2147483647i)) >> (~vec4<u32>(var_0.x, var_0.x, var_0.x, 42941u) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.c, var_0.x, u_input.d), u_input.a), var_0.x ^ u_input.b, ~1u, 33143u) % vec4<u32>(32u)), -vec4<i32>(20386i, ~u_input.e, -u_input.e, select(u_input.e, -2147483647i, var_1)), firstTrailingBit(-(vec4<i32>(-2147483647i, -59105i, u_input.e, 19834i) | vec4<i32>(u_input.e, 11094i, -18513i, u_input.e)))));
    var_0 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(8666u, 1u), vec2<u32>(reverseBits(var_0.x), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 1u, var_0.x), u_input.a.yzx, vec3<u32>(4294967295u, var_0.x, 0u)), u_input.a.zxz)), _wgslsmith_clamp_vec2_u32(max(vec2<u32>(var_0.x, 7296u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 6159u), u_input.a.wx, u_input.a.xx)), u_input.a.xy << ((u_input.a.zw | vec2<u32>(var_0.x, var_0.x)) % vec2<u32>(32u)), u_input.a.xw));
    return Struct_1(1136f, _wgslsmith_div_vec2_i32((abs(var_2.xw) >> (vec2<u32>(54263u, var_0.x) % vec2<u32>(32u))) & firstTrailingBit(-vec2<i32>(-1i, 8185i)), ~(_wgslsmith_clamp_vec2_i32(var_2.xx, var_2.zz, vec2<i32>(25439i, var_2.x)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, u_input.c), vec2<u32>(u_input.d, 1u)) % vec2<u32>(32u)))), ~0u <= _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.d, _wgslsmith_clamp_u32(39773u, u_input.d, 1u), _wgslsmith_clamp_u32(u_input.c, u_input.a.x, var_0.x)), ~u_input.a.xxx & vec3<u32>(var_0.x, 20582u, 70805u)), select(vec2<bool>(!(!var_1), select(!arg_0.x, !arg_0.x, true)), !arg_0.yz, true), var_0.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_2(vec3<bool>(-348f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.a))), !(arg_2.c | all(arg_0)), arg_2.c));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(floor(-793f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a - var_0.a) - var_0.a));
    let var_2 = ~((vec2<u32>(min(u_input.b, 4294967295u), ~u_input.c) & _wgslsmith_mod_vec2_u32(~vec2<u32>(1283u, u_input.c), _wgslsmith_mult_vec2_u32(u_input.a.wz, u_input.a.yz))) >> (_wgslsmith_clamp_vec2_u32(firstLeadingBit(~vec2<u32>(2761u, 70332u)), ~(u_input.a.xx ^ u_input.a.ww), u_input.a.yw) % vec2<u32>(32u)));
    var var_3 = vec2<u32>(1u, arg_2.e);
    var var_4 = vec2<bool>(any(vec4<bool>(select(any(vec2<bool>(true, arg_1.x)), u_input.b > 33343u, true), false, arg_0.x, all(select(vec4<bool>(arg_0.x, arg_1.x, arg_1.x, var_0.c), vec4<bool>(arg_2.d.x, true, var_0.c, true), vec4<bool>(var_0.d.x, arg_1.x, arg_1.x, arg_1.x))))), arg_0.x);
    return Struct_1(_wgslsmith_div_f32(-1362f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.a, 463f)), -824f)) - arg_2.a)), select(abs(arg_2.b), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-22417i, u_input.e), vec2<i32>(var_0.b.x, 3933i)), var_0.b), !select(arg_2.d, var_0.d, false)) << (~_wgslsmith_div_vec2_u32(~vec2<u32>(var_3.x, 43646u), vec2<u32>(var_3.x, arg_2.e)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1340f) < _wgslsmith_f_op_f32(min(arg_2.a, _wgslsmith_f_op_f32(-1296f + -692f))), arg_2.d, ~var_3.x);
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1.c;
    let var_1 = !(!vec4<bool>(arg_1.c.c, true, arg_1.b.c, arg_1.b.c));
    let var_2 = Struct_2(max(arg_1.a, _wgslsmith_mod_vec2_u32(select(u_input.a.yy, u_input.a.yz, arg_1.c.d.x), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, var_0.e) & vec2<u32>(arg_0, 9504u), _wgslsmith_mult_vec2_u32(u_input.a.zz, vec2<u32>(24382u, arg_0))))), arg_1.c, func_2(var_1.zxz));
    var var_3 = ~var_0.e;
    var var_4 = var_0.e;
    return Struct_1(1164f, ~arg_1.b.b, !var_1.x == all(var_1.wzy), !(!vec2<bool>(var_2.c.d.x, true)), arg_1.b.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -12005i;
    var_0 = -(reverseBits(u_input.e) ^ ~(-u_input.e));
    var_0 = u_input.e;
    var var_1 = Struct_2(min(firstTrailingBit(u_input.a.zx), firstTrailingBit(u_input.a.wy | vec2<u32>(u_input.d, 8360u)) << (_wgslsmith_div_vec2_u32(vec2<u32>(59838u, u_input.b), u_input.a.yx) % vec2<u32>(32u))), func_5(func_1(1f), Struct_2(~vec2<u32>(u_input.c, u_input.d), func_4(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec2<bool>(true, true), func_2(vec3<bool>(true, false, false))), func_4(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec2<bool>(true, true), Struct_1(372f, vec2<i32>(29610i, -20445i), true, vec2<bool>(false, false), u_input.c)))), Struct_1(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1000f, -478f))))), abs(countOneBits(~vec2<i32>(0i, u_input.e))), true, func_5(~(~4294967295u), Struct_2(~vec2<u32>(65857u, u_input.a.x), Struct_1(-430f, vec2<i32>(u_input.e, 0i), false, vec2<bool>(false, true), u_input.a.x), Struct_1(142f, vec2<i32>(u_input.e, u_input.e), true, vec2<bool>(false, false), 127267u))).d, 46765u));
    var_1 = Struct_2(_wgslsmith_clamp_vec2_u32(~var_1.a, vec2<u32>(1u, _wgslsmith_mult_u32(0u, var_1.c.e)) >> (vec2<u32>(u_input.c >> (u_input.a.x % 32u), 4294967295u) % vec2<u32>(32u)), var_1.a), func_4(select(vec3<bool>(true, func_5(var_1.a.x, Struct_2(var_1.a, var_1.c, Struct_1(var_1.c.a, var_1.b.b, var_1.c.c, vec2<bool>(var_1.c.c, var_1.b.d.x), 1u))).c, var_1.c.d.x), select(vec3<bool>(false, var_1.b.d.x, var_1.b.c), select(vec3<bool>(false, var_1.c.c, var_1.b.c), vec3<bool>(var_1.b.d.x, var_1.b.d.x, false), vec3<bool>(var_1.b.c, var_1.c.c, var_1.b.d.x)), !vec3<bool>(var_1.b.d.x, false, true)), all(vec3<bool>(true, var_1.b.d.x, var_1.c.d.x))), var_1.c.d, var_1.b), func_4(vec3<bool>(true, true, true), func_4(vec3<bool>(true, all(vec3<bool>(var_1.c.c, var_1.c.d.x, var_1.c.d.x)), false), !func_2(vec3<bool>(false, var_1.c.c, true)).d, func_4(vec3<bool>(true, var_1.c.d.x, false), func_5(u_input.d, Struct_2(vec2<u32>(1u, u_input.d), var_1.c, Struct_1(-289f, var_1.b.b, var_1.b.c, vec2<bool>(var_1.b.c, true), 1u))).d, Struct_1(var_1.c.a, var_1.b.b, var_1.b.d.x, var_1.c.d, var_1.c.e))).d, Struct_1(_wgslsmith_f_op_f32(abs(var_1.c.a)), vec2<i32>(-28006i, var_1.c.b.x << (96929u % 32u)), func_2(select(vec3<bool>(var_1.b.d.x, true, var_1.b.c), vec3<bool>(false, true, true), true)).d.x, !vec2<bool>(var_1.c.c, var_1.c.c), max(~u_input.d, 105380u & u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -vec2<i32>(2147483647i, -2147483647i >> (u_input.b % 32u)), u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a, -401f, var_1.c.a, var_1.b.a)), _wgslsmith_div_vec4_f32(vec4<f32>(-595f, var_1.c.a, var_1.b.a, var_1.b.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a, var_1.b.a, -306f, var_1.b.a))), var_1.b.c)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1186f, 648f, var_1.c.a, 167f)))), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b, 34103u) ^ (u_input.a >> (vec4<u32>(var_1.c.e, 4294967295u, var_1.b.e, u_input.b) % vec4<u32>(32u))), vec4<u32>(firstTrailingBit(26448u), _wgslsmith_dot_vec2_u32(u_input.a.zw, vec2<u32>(1u, var_1.b.e)), abs(u_input.c), u_input.c >> (var_1.a.x % 32u))));
}

