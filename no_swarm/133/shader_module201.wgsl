struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = countOneBits(u_input.a.x);
    let var_1 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, ~u_input.a.x), ~var_0), 1u, var_0), 4294967295u, var_0, firstLeadingBit(u_input.b.x));
    var var_2 = Struct_3(vec2<bool>(!arg_0.x, arg_0.x), Struct_2(vec3<u32>(~(var_1.x | 1u), max(var_1.x, 14575u) & var_1.x, var_1.x), arg_3, vec2<u32>(u_input.b.x, var_1.x), !arg_3.c.yy, _wgslsmith_clamp_vec3_i32(abs(_wgslsmith_add_vec3_i32(u_input.c.yxx, u_input.c.wwx)), reverseBits(vec3<i32>(-2147483647i, -16551i, -2147483647i) << (u_input.a % vec3<u32>(32u))), ~(u_input.c.xxx << (vec3<u32>(u_input.b.x, var_1.x, var_1.x) % vec3<u32>(32u))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + 1039f)) - 1000f)));
    let var_4 = arg_3;
    return _wgslsmith_f_op_f32(trunc(-1907f));
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_2(vec3<u32>(~u_input.b.x >> (~_wgslsmith_mod_u32(4294967295u, u_input.a.x) % 32u), ~(firstTrailingBit(u_input.a.x) >> (_wgslsmith_add_u32(65184u, 60371u) % 32u)), 1u), Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-982f * 620f), _wgslsmith_f_op_f32(floor(-122f))), -1446f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-705f - -782f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -914f))), _wgslsmith_div_f32(429f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, true), Struct_1(vec4<f32>(1483f, -1000f, -833f, 1025f), 393f, vec3<bool>(false, true, true)), vec3<f32>(-492f, -538f, 850f), Struct_1(vec4<f32>(-1441f, -734f, 284f, 773f), 1000f, vec3<bool>(true, false, false)))) * _wgslsmith_f_op_f32(f32(-1f) * -498f))), vec3<bool>(all(vec3<bool>(true, true, true)), true, true)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 1u), u_input.b.yy), vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xw), select(vec2<bool>(false, any(vec2<bool>(true, true))), !vec2<bool>(false, u_input.a.x >= 1u), vec2<bool>(true, true)), ~u_input.c.yyy);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.a.x)), _wgslsmith_f_op_f32(var_0.b.b * var_0.b.b), _wgslsmith_f_op_f32(f32(-1f) * -1143f)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.x, var_0.b.a.x, -671f))))))));
    var_0 = Struct_2(vec3<u32>(_wgslsmith_clamp_u32((var_0.c.x << (1u % 32u)) << (~0u % 32u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a.x, var_0.c.x, var_0.a.x), 17308u), ~u_input.b.x | countOneBits(4068u)), _wgslsmith_dot_vec3_u32(min(var_0.a, u_input.a), _wgslsmith_sub_vec3_u32(u_input.b.ywx, var_0.a)) >> (1u % 32u), 0u), Struct_1(_wgslsmith_f_op_vec4_f32(var_0.b.a * _wgslsmith_f_op_vec4_f32(var_0.b.a + var_0.b.a)), var_0.b.b, vec3<bool>(var_0.b.c.x, true, select(4875i, 15677i, var_0.d.x) > -var_0.e.x)), _wgslsmith_add_vec2_u32(select(u_input.b.xz, vec2<u32>(u_input.a.x, 4294967295u), select(vec2<bool>(true, var_0.d.x), vec2<bool>(var_0.d.x, var_0.d.x), var_0.d)) | countOneBits(u_input.a.xx), (firstTrailingBit(var_0.c) << (vec2<u32>(var_0.c.x, 4294967295u) % vec2<u32>(32u))) & vec2<u32>(0u, var_0.c.x)), !vec2<bool>(any(!vec4<bool>(true, var_0.b.c.x, var_0.b.c.x, true)), var_0.d.x), vec3<i32>(abs(_wgslsmith_add_i32(-4895i, -1i) << (_wgslsmith_clamp_u32(var_0.a.x, 66610u, var_0.a.x) % 32u)), -19199i, -var_0.e.x ^ _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, var_0.e.x, var_0.e.x), _wgslsmith_mod_i32(-20339i, var_0.e.x))));
    let var_2 = Struct_2(vec3<u32>(0u, u_input.a.x, _wgslsmith_mult_u32(4294967295u, ~u_input.a.x) << (u_input.b.x % 32u)), var_0.b, vec2<u32>(var_0.a.x, select(1u << (1u % 32u), u_input.b.x, var_0.d.x)) >> (~vec2<u32>(var_0.a.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) % vec2<u32>(32u)), vec2<bool>(var_1.x == _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.b.b, -210f))), true), _wgslsmith_clamp_vec3_i32(var_0.e ^ u_input.c.ywz, -_wgslsmith_mult_vec3_i32(var_0.e, var_0.e) ^ _wgslsmith_add_vec3_i32(~vec3<i32>(7934i, 0i, 0i), var_0.e), min(-u_input.c.yzy, vec3<i32>(select(u_input.d, -28900i, var_0.d.x), reverseBits(-11137i), firstTrailingBit(64393i)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_2.b.a.www)) + _wgslsmith_f_op_vec3_f32(var_0.b.a.xxw - var_2.b.a.zzz)));
    return var_2.a.yz;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = Struct_3(select(vec2<bool>(true, any(vec2<bool>(true, false)) | true), vec2<bool>(true, true), true), Struct_2(~reverseBits(_wgslsmith_sub_vec3_u32(u_input.b.yyy, u_input.b.wwy)), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-459f, 1000f, 2431f, 536f), vec4<f32>(-763f, -2625f, -909f, -1508f))), _wgslsmith_f_op_f32(f32(-1f) * -228f), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, true)))), vec2<u32>(2145u, ~22690u), vec2<bool>(true, true), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 56888i, -12396i) ^ vec3<i32>(u_input.c.x, 30454i, -13342i), ~u_input.c.wzz) >> (~(vec3<u32>(12795u, var_0.x, 12047u) >> (vec3<u32>(1u, u_input.b.x, arg_0) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_2 = var_1;
    var var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(select(var_2.b.e.x, u_input.e.x, var_2.b.d.x), ~u_input.e.x, u_input.d, ~u_input.e.x) | vec4<i32>(2147483647i, -36704i, 13982i | u_input.c.x, var_2.b.e.x), vec4<i32>(select(-2147483647i, _wgslsmith_dot_vec2_i32(var_2.b.e.zy, vec2<i32>(var_1.b.e.x, -12257i)), all(vec4<bool>(false, var_1.a.x, true, var_1.b.b.c.x))), 14541i, _wgslsmith_dot_vec2_i32(-var_2.b.e.xy, -var_1.b.e.xy), abs(_wgslsmith_div_i32(var_1.b.e.x, var_2.b.e.x))), vec4<i32>(0i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), min(0i, -1i)), ~(i32(-1i) * -1i), abs(u_input.d))) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_2.b.c.x, u_input.a.x, 1u, arg_0), firstTrailingBit(u_input.b), u_input.b) % vec4<u32>(32u));
    let var_4 = u_input.b.zx;
    return var_2.b.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec2_i32(u_input.e, vec2<i32>(-37513i, 3186i), (vec2<i32>(arg_2.b.e.x, max(u_input.d, 2147483647i)) << (firstLeadingBit(~u_input.b.xy) % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_i32(arg_0.e.zx, -arg_0.e.xz));
    var var_1 = any(vec2<bool>(false, all(!(!vec2<bool>(false, arg_2.b.d.x)))));
    let var_2 = _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c.x, arg_2.b.e.x, arg_2.b.e.x, arg_2.b.e.x), abs(-vec4<i32>(-6601i, arg_0.e.x, -38545i, 25857i)));
    var_1 = all(arg_0.d);
    let var_3 = arg_2;
    return arg_2.b.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_3 {
    let var_0 = Struct_2(u_input.a, arg_1, ~select(~vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(reverseBits(u_input.b.x), u_input.b.x), !arg_0.c.zz), func_1(u_input.b.x).c.zx, u_input.c.yww);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.b, _wgslsmith_f_op_f32(-var_0.b.a.x))), 415f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) + var_0.b.a.x), arg_1.b), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(trunc(var_0.b.b)), _wgslsmith_f_op_f32(abs(664f)), -975f))), !select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, arg_0.c.x, arg_1.c.x, arg_1.c.x), vec4<bool>(arg_0.c.x, arg_1.c.x, var_0.d.x, arg_0.c.x), false), select(vec4<bool>(arg_1.c.x, arg_0.c.x, false, false), vec4<bool>(true, true, arg_0.c.x, true), vec4<bool>(arg_0.c.x, false, true, arg_0.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-424f * 586f))), arg_1.c);
    return Struct_3(vec2<bool>(func_1(0u).c.x & true, false), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-firstLeadingBit(u_input.c.zz));
    var var_1 = -1012f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - 595f);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(1f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(995f - -454f))))));
    let var_2 = func_5(func_4(Struct_2(min(vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 14574u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.a.x, 3109u))), func_1(51403u), vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), vec2<bool>(true, true), vec3<i32>(-67976i, ~u_input.e.x, -19822i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(109f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1408f), _wgslsmith_f_op_f32(-1171f - 2348f), -1096f)), Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_2(~vec3<u32>(u_input.a.x, u_input.a.x, 5785u), func_1(1u), ~vec2<u32>(12298u, u_input.b.x), vec2<bool>(false, false), -u_input.c.zwz)), _wgslsmith_sub_vec4_u32(u_input.b, select(vec4<u32>(1u, 40169u, u_input.a.x, 0u), vec4<u32>(37907u, 0u, 40183u, 15247u), vec4<bool>(false, true, false, true)) & countOneBits(vec4<u32>(1u, u_input.a.x, 73512u, u_input.a.x)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(-242f, 1000f)), _wgslsmith_f_op_f32(round(236f)), -156f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1870f * -1560f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1506f * 682f))), vec3<bool>(any(vec2<bool>(true, true)), u_input.a.x < u_input.a.x, true)));
    var_1 = 873f;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b.a.x, ~(~var_2.b.c.x));
}

