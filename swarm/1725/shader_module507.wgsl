struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = vec4<i32>(i32(-1i) * -27679i, ~(-(~select(10268i, arg_0, true))), -1i & arg_0, -1i);
    var var_1 = Struct_1(abs(firstLeadingBit(~(-24133i)) | min(-u_input.e.x, _wgslsmith_clamp_i32(u_input.b, arg_0, -2147483647i))), !vec4<bool>(true, false, false, select(select(true, true, true), true, true)), u_input.a, firstLeadingBit(select(countOneBits(u_input.a), vec2<u32>(9593u, 24672u), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))) & ~vec2<u32>(0u, 26586u)), u_input.a.x);
    var_0 = max(abs(select(vec4<i32>(u_input.b, ~2147483647i, arg_0, arg_0), abs(abs(vec4<i32>(var_0.x, 4357i, var_1.a, 0i))), !vec4<bool>(var_1.b.x, var_1.b.x, true, var_1.b.x))), vec4<i32>(~select(~0i, _wgslsmith_div_i32(u_input.e.x, arg_0), all(vec4<bool>(var_1.b.x, false, var_1.b.x, true))), ~_wgslsmith_mult_i32(arg_0, max(0i, 1630i)), 22402i, firstTrailingBit(4914i)));
    var var_2 = _wgslsmith_f_op_f32(-518f * -173f);
    let var_3 = firstTrailingBit(~(~var_1.d.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -868f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-589f, _wgslsmith_f_op_f32(abs(-977f)), any(var_1.b.zz)))))) <= 399f;
}

fn func_2() -> Struct_3 {
    let var_0 = func_3(u_input.d.x);
    var var_1 = Struct_1(_wgslsmith_mult_i32(u_input.c.x, select(~(u_input.d.x | 0i), _wgslsmith_mod_i32(max(-1i, u_input.d.x), 41022i), var_0 | false)), select(vec4<bool>(true, any(vec4<bool>(var_0, true, true, var_0)), var_0, true), !select(vec4<bool>(var_0, true, true, true), vec4<bool>(false, false, var_0, false), select(vec4<bool>(true, true, true, var_0), vec4<bool>(var_0, var_0, var_0, true), true)), select(vec4<bool>(false, true, var_0, var_0), vec4<bool>(false, var_0 || true, true | var_0, true), false)), abs(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(1u, ~1624u))), select(~vec2<u32>(firstTrailingBit(65650u), firstLeadingBit(u_input.a.x)), ~max(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a), vec2<bool>(true, true)), ~(~u_input.a.x));
    var var_2 = Struct_2(~0u, Struct_1(_wgslsmith_mult_i32(u_input.c.x, 32275i), var_1.b, u_input.a, var_1.c, u_input.a.x));
    let var_3 = Struct_1(~0i, !vec4<bool>(false, (u_input.d.x | -2147483647i) != ~(-1i), !var_0, var_0), ~(vec2<u32>(var_1.c.x | var_2.b.c.x, abs(var_2.b.d.x)) | ~vec2<u32>(var_1.e, var_1.d.x)), firstTrailingBit(u_input.a), abs(abs(0u)) >> (max(_wgslsmith_mod_u32(u_input.a.x, ~5468u), ~31420u) % 32u));
    var var_4 = ~u_input.a.x;
    return Struct_3(Struct_1(var_1.a, !select(select(var_1.b, var_3.b, var_2.b.b), var_1.b, select(true, var_2.b.b.x, var_3.b.x)), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_2.a, var_1.d.x), ~4294967295u), _wgslsmith_mult_u32(u_input.a.x, 1u)), var_3.d, ~93701u), Struct_2(abs(1u), Struct_1(-var_3.a, var_1.b, ~_wgslsmith_sub_vec2_u32(var_1.d, vec2<u32>(4294967295u, var_1.d.x)), var_3.c, var_3.d.x)), _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(~var_3.a, -2147483647i)), ~(~vec2<i32>(0i, 1i)), u_input.d.yx));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    let var_0 = arg_1;
    let var_1 = 1u;
    var var_2 = arg_0;
    var var_3 = 329f;
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, -1720f), vec3<f32>(var_2.x, arg_0.x, 426f)))))), select(arg_1.b.b.zwz, !select(var_0.b.b.zxw, var_0.b.b.yyy, arg_1.b.b.x), !vec3<bool>(arg_2.b.b.b.x, false, false)))));
    return 4294967295u;
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(~(vec4<i32>(0i, u_input.b, 25237i, u_input.d.x) | vec4<i32>(1i, 2147483647i, arg_3.b.a, -25736i)), max(vec4<i32>(arg_1.a.a, arg_1.b.b.a, u_input.c.x, 29053i), vec4<i32>(1i, arg_1.a.a, u_input.d.x, 21325i)) ^ (vec4<i32>(-24032i, u_input.c.x, 2147483647i, arg_3.b.a) << (vec4<u32>(30520u, arg_2.x, 1u, 1u) % vec4<u32>(32u)))) << (_wgslsmith_add_u32(1u, 1u) % 32u), 41681i, ~u_input.c.x);
    let var_1 = _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.a.x, 20997u, ~4294967295u, firstTrailingBit(arg_1.b.a))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 140u, arg_2.x, 1u), vec4<u32>(arg_1.b.b.d.x, u_input.a.x, arg_2.x, 68214u))), 1u, 51116u, _wgslsmith_mod_u32(137702u, u_input.a.x)), vec4<u32>(func_4(vec3<f32>(248f, 1647f, 1536f), arg_3, func_2()), _wgslsmith_div_u32(max(0u, arg_3.b.c.x), select(arg_3.a, arg_2.x, false)), min(_wgslsmith_dot_vec2_u32(arg_1.a.c, vec2<u32>(arg_2.x, arg_3.b.c.x)), arg_3.b.e), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_1.b.a, 0u) >> (arg_2 % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(66154u, 1u, arg_2.x), arg_2)))));
    let var_2 = Struct_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(46046u, arg_2.x) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(68618u, arg_3.a), arg_1.a.c), arg_2.zx), Struct_1(-_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.b.b.a, arg_3.b.a, u_input.e.x, -3828i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, arg_3.b.a, -32626i, arg_3.b.a), vec4<i32>(-1i, 32532i, 2147483647i, arg_1.c.x))), arg_1.b.b.b, select(vec2<u32>(firstTrailingBit(u_input.a.x), 1u >> (u_input.a.x % 32u)), vec2<u32>(var_1, select(52041u, 4294967295u, false)), arg_3.b.b.zz), ~firstTrailingBit(abs(u_input.a)), ~select(1u, 0u, arg_1.a.b.x) ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(18893u, 0u), vec2<u32>(var_1, u_input.a.x)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_2.x, u_input.a.x, arg_1.b.b.d.x), vec4<u32>(arg_3.b.e, var_1, 44320u, var_1)) % 32u))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(-510f, _wgslsmith_f_op_f32(f32(-1f) * -1246f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-204f, 692f)))))) + vec2<f32>(441f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-637f + _wgslsmith_f_op_f32(113f - 258f)), -1138f))));
    let var_4 = !all(select(func_2().a.b, !select(vec4<bool>(var_2.b.b.x, var_2.b.b.x, false, arg_3.b.b.x), vec4<bool>(true, arg_3.b.b.x, arg_0, arg_1.a.b.x), false), arg_3.b.b));
    return var_2.b;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2.b.zw;
    let var_1 = Struct_1(24194i, vec4<bool>(!select(arg_0.b.b.b.x, var_0.x, var_0.x) && any(!vec3<bool>(var_0.x, false, true)), true && (_wgslsmith_f_op_f32(sign(arg_1.x)) > _wgslsmith_f_op_f32(-arg_1.x)), false, true | func_2().a.b.x), select(_wgslsmith_div_vec2_u32(select(_wgslsmith_sub_vec2_u32(arg_2.c, vec2<u32>(arg_0.a.d.x, arg_2.d.x)), vec2<u32>(4294967295u, arg_0.a.c.x), any(arg_0.a.b.wzx)), countOneBits(vec2<u32>(arg_2.e, u_input.a.x))), abs(u_input.a), var_0.x), vec2<u32>(58980u, ~abs(arg_0.a.d.x)), ~u_input.a.x << (_wgslsmith_mult_u32(arg_0.b.a, ~_wgslsmith_div_u32(arg_0.b.a, 4294967295u)) % 32u));
    var_0 = arg_0.b.b.b.xx;
    let var_2 = -168f;
    var var_3 = func_2();
    return Struct_1(abs(-_wgslsmith_sub_i32(2147483647i, var_3.b.b.a)) & u_input.c.x, !func_1(!func_3(arg_0.a.a), Struct_3(func_1(false, arg_0, vec3<u32>(1u, 1240u, u_input.a.x), var_3.b), var_3.b, _wgslsmith_clamp_vec2_i32(var_3.c, vec2<i32>(u_input.d.x, arg_0.b.b.a), arg_0.c)), vec3<u32>(_wgslsmith_div_u32(arg_2.d.x, arg_2.c.x), u_input.a.x ^ 34342u, _wgslsmith_mod_u32(var_3.a.e, var_3.a.e)), var_3.b).b, var_3.a.d, vec2<u32>(min(1u & _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.e, var_1.e, 14672u, 23770u), vec4<u32>(arg_0.b.b.d.x, u_input.a.x, 1u, var_3.b.a)), 0u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(func_4(vec3<f32>(-1352f, -804f, var_2), var_3.b, arg_0), ~1u), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) * vec3<f32>(arg_1.x, -1546f, var_2)), func_2().b, Struct_3(var_3.a, var_3.b, vec2<i32>(u_input.b, u_input.b))))), var_1.c.x | 29431u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.a.x, func_5(Struct_3(Struct_1(u_input.e.x, vec4<bool>(true, true, true, true), u_input.a << (u_input.a % vec2<u32>(32u)), vec2<u32>(18007u, u_input.a.x), 1u), Struct_2(firstTrailingBit(u_input.a.x), func_1(false, Struct_3(Struct_1(u_input.d.x, vec4<bool>(false, false, false, true), vec2<u32>(4294967295u, 1u), u_input.a, 0u), Struct_2(u_input.a.x, Struct_1(u_input.b, vec4<bool>(false, true, true, true), u_input.a, vec2<u32>(17373u, u_input.a.x), u_input.a.x)), vec2<i32>(u_input.c.x, u_input.e.x)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(u_input.a.x, Struct_1(7070i, vec4<bool>(false, true, true, false), u_input.a, u_input.a, 32522u)))), vec2<i32>(u_input.c.x, max(3436i, u_input.d.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(511f, -727f) - vec2<f32>(1146f, 1005f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(515f, 1223f))))), Struct_1(2147483647i, vec4<bool>(true, false, true, true), u_input.a >> (u_input.a % vec2<u32>(32u)), reverseBits(u_input.a), func_4(vec3<f32>(1120f, -839f, 1069f), Struct_2(u_input.a.x, Struct_1(10953i, vec4<bool>(false, true, true, true), u_input.a, u_input.a, 1u)), func_2()))));
    let var_1 = func_5(func_2(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-615f, 662f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(661f, 520f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1367f, -613f)), vec2<bool>(var_0.b.b.x, any(vec3<bool>(var_0.b.b.x, var_0.b.b.x, var_0.b.b.x))))) - vec2<f32>(_wgslsmith_f_op_f32(1741f * _wgslsmith_div_f32(-581f, 842f)), _wgslsmith_f_op_f32(abs(-476f)))), func_2().a);
    var var_2 = func_2().a;
    let var_3 = var_0.b;
    var_2 = func_1(var_1.b.x, Struct_3(var_3, Struct_2(_wgslsmith_mod_u32(var_2.d.x, abs(var_3.d.x)), var_3), ~u_input.d.zy), abs(~vec3<u32>(4294967295u, 5008u, 0u) ^ ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 57438u), vec3<u32>(var_3.c.x, 0u, 44673u), vec3<u32>(var_2.c.x, 90686u, 4294967295u))), func_2().b);
    let var_4 = func_2().b;
    var var_5 = 1583i;
    var var_6 = func_2().b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -758f), _wgslsmith_f_op_f32(f32(-1f) * -981f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1436f))))), _wgslsmith_clamp_u32(var_0.a, firstLeadingBit(~_wgslsmith_add_u32(var_3.c.x, var_3.d.x)), 0u));
}

