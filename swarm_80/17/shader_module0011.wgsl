struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: u32) -> vec4<u32> {
    return _wgslsmith_sub_vec4_u32(vec4<u32>(12139u, firstLeadingBit(~u_input.b.x), u_input.e.x, u_input.e.x), reverseBits(_wgslsmith_div_vec4_u32(u_input.e, u_input.e))) | u_input.e;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32((u_input.e << (vec4<u32>(u_input.b.x, 4560u, 0u, 4294967295u) % vec4<u32>(32u))) ^ ~vec4<u32>(27299u, 1u, 1u, arg_3), _wgslsmith_div_vec4_u32(~vec4<u32>(56695u, 92819u, 4294967295u, 59090u), u_input.e)), vec4<u32>(~_wgslsmith_clamp_u32(select(u_input.b.x, u_input.b.x, false), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 93322u), u_input.e.xwz)), 25615u, ~arg_3, 1u));
    var_0 = _wgslsmith_div_vec4_u32((func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1040f, 883f, 1021f, 171f) * vec4<f32>(-1000f, 2025f, -1525f, -429f)), _wgslsmith_f_op_f32(step(182f, -180f)), var_0.x ^ 32259u) >> (vec4<u32>(arg_3, arg_3, 0u & var_0.x, arg_3) % vec4<u32>(32u))) ^ u_input.e, ~u_input.e >> (reverseBits(~(vec4<u32>(1u, 1u, var_0.x, arg_3) << (vec4<u32>(1u, u_input.e.x, 0u, 49194u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    var_0 = ~select(u_input.e, u_input.e, true) | (_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x), ~vec4<u32>(u_input.e.x, 1u, 4294967295u, var_0.x), u_input.e), vec4<u32>(u_input.b.x, u_input.a, ~arg_3, 1u)) & select(min(max(vec4<u32>(u_input.e.x, var_0.x, arg_3, arg_3), u_input.e), ~vec4<u32>(var_0.x, 1u, var_0.x, 4294967295u)), vec4<u32>(0u, select(arg_3, 4294967295u, true), ~arg_3, ~15539u), false));
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(104f + -207f) + -144f))), 775f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-299f - 568f) * _wgslsmith_f_op_f32(-1726f - -1706f)))), -225f), !vec2<bool>(u_input.e.x > ~var_0.x, true), Struct_1(arg_1, vec3<i32>(firstLeadingBit(arg_2), ~(u_input.d & arg_0.x), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c.ww, arg_1.xy), -vec2<i32>(arg_2, u_input.d))), -abs(vec2<i32>(-1i, 0i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, 152f, -1000f));
    return arg_3;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(775f, 1806f)), _wgslsmith_div_vec2_f32(vec2<f32>(986f, 972f), vec2<f32>(-683f, 3367f)), all(vec4<bool>(true, true, true, false))))))));
    var var_1 = vec3<i32>(46024i, u_input.c.x, reverseBits(u_input.c.x)) << (vec3<u32>(~24613u, _wgslsmith_dot_vec2_u32(arg_0.xx, (arg_0.xx << (arg_0.xz % vec2<u32>(32u))) >> (arg_0.zz % vec2<u32>(32u))), _wgslsmith_sub_u32(1u, func_2(u_input.c.wx, -u_input.c.ywz, ~u_input.d, 24407u))) % vec3<u32>(32u));
    var_1 = ~abs(u_input.c.yzw);
    var var_2 = Struct_1(~vec3<i32>(67660i, ~var_1.x, firstLeadingBit(-55223i)), -vec3<i32>(~u_input.d, ~(-1i) >> (~u_input.e.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 1i, 0i, 0i), u_input.c)), -_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x | u_input.c.x, 4070i), vec2<i32>(1i, _wgslsmith_dot_vec2_i32(var_1.xy, vec2<i32>(u_input.d, 1i)))));
    let var_3 = Struct_5(Struct_1(vec3<i32>(var_2.b.x & ~(-17240i), u_input.c.x, select(_wgslsmith_clamp_i32(-24751i, 2147483647i, 1774i), 0i, true)), var_2.b, select(u_input.c.zw, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.b.x, 2147483647i), vec2<i32>(-38167i, -55738i), u_input.c.ww), all(vec4<bool>(true, true, true, true)))), u_input.e.ywz, _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, var_0.x, 989f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(570f, -288f, -738f, -107f) - vec4<f32>(210f, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-397f, _wgslsmith_f_op_f32(ceil(var_0.x)), 303f, -1339f) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, -823f, -1443f), vec4<f32>(-621f, var_0.x, -365f, 216f)), vec4<f32>(-1173f, var_0.x, -187f, var_0.x)))), select(false, any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)), true))));
    return var_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = vec4<f32>(-438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(109f, 490f))), 1249f, arg_1);
    let var_1 = vec4<u32>(u_input.b.x, 1u, 26889u, u_input.e.x) & u_input.e;
    let var_2 = Struct_5(func_1(var_1.wxx, ~(vec2<u32>(var_1.x, var_1.x) | u_input.e.zz) | var_1.xw), vec3<u32>(u_input.e.x, func_2(min(~arg_0.c, arg_0.b.yy << (u_input.b % vec2<u32>(32u))), ~vec3<i32>(1i, 1i, -3289i), arg_0.b.x, ~abs(22933u)), ~4294967295u & (var_1.x ^ _wgslsmith_sub_u32(var_1.x, u_input.a))), _wgslsmith_f_op_f32(max(1214f, _wgslsmith_f_op_f32(trunc(1f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(907f, arg_1, -423f, -304f) - vec4<f32>(-573f, var_0.x, -560f, 693f))) - vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-arg_1))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1006f, -335f, 436f, arg_1), vec4<f32>(322f, arg_1, arg_1, 391f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1647f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -400f))), _wgslsmith_f_op_f32(abs(-835f)), -826f)))));
    var var_3 = u_input.c;
    return Struct_1(min(vec3<i32>(-10394i, -1i | ~var_2.a.a.x, _wgslsmith_add_i32(12645i, 0i)), reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(31907i, 12822i, var_2.a.c.x), vec3<i32>(-7429i, u_input.d, arg_0.a.x), vec3<i32>(u_input.d, -2147483647i, u_input.c.x)))), -vec3<i32>(_wgslsmith_dot_vec3_i32(arg_0.b, u_input.c.xzw), -2254i >> (0u % 32u), var_3.x), ~min(select(-u_input.c.yw, _wgslsmith_div_vec2_i32(vec2<i32>(var_3.x, u_input.d), arg_0.a.xy), true), vec2<i32>(var_2.a.b.x & var_2.a.b.x, ~32696i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_4(func_1(abs(_wgslsmith_div_vec3_u32(vec3<u32>(11382u, 71473u, u_input.e.x), vec3<u32>(31446u, 28167u, u_input.b.x))), u_input.e.xw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1216f))))), u_input.e.wxy, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(648f - 819f)), _wgslsmith_f_op_f32(min(-1558f, _wgslsmith_f_op_f32(trunc(718f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -734f) + _wgslsmith_f_op_f32(trunc(1767f))), _wgslsmith_f_op_f32(abs(1276f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-305f, -1250f, 1109f, -403f)) + vec4<f32>(-617f, 1434f, 1000f, -201f)), vec4<f32>(_wgslsmith_f_op_f32(min(-562f, -1000f)), _wgslsmith_f_op_f32(-603f * -1132f), -333f, _wgslsmith_f_op_f32(min(-462f, -677f))), !any(vec4<bool>(true, true, true, true)))))));
    let var_1 = func_3(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), 2324f, _wgslsmith_f_op_f32(sign(1017f)), _wgslsmith_f_op_f32(-var_0.c)), var_0.c, min(_wgslsmith_add_u32(~u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.b.x, 19015u, 1u), u_input.e)) & 143975u, ~_wgslsmith_mult_u32(u_input.a >> (0u % 32u), ~var_0.b.x))).x;
    let var_2 = func_4(func_1(u_input.e.xxx, ~var_0.b.yx), 1246f);
    var var_3 = var_0;
    var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, -func_4(func_4(var_3.a, _wgslsmith_f_op_f32(min(var_3.d.x, -1434f))), _wgslsmith_f_op_f32(f32(-1f) * -798f)).a, vec3<u32>(max(~(~53692u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(14841u, 35406u), var_0.b.xz)), u_input.e.x ^ u_input.b.x, 4294967295u), ~u_input.b.x, u_input.a);
}

