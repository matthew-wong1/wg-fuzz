struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>) -> f32 {
    let var_0 = arg_1.x;
    var var_1 = Struct_1(abs(u_input.a) == (u_input.a ^ u_input.a), -var_0 & 21812i);
    let var_2 = ~13197u;
    let var_3 = var_0 <= ~((-var_1.b ^ -1i) ^ ~(var_0 << (var_2 % 32u)));
    var var_4 = Struct_1(any(!select(!vec3<bool>(var_3, var_3, true), select(vec3<bool>(true, true, var_3), vec3<bool>(false, var_1.a, false), var_1.a), any(vec3<bool>(false, false, true)))), abs(~max(~var_1.b, var_0)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f - 1000f));
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(-581f, -1000f), vec3<i32>(2147483647i, -2147483647i, 21005i))), -100f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(656f, -211f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(1773f, 1000f), vec3<i32>(76488i, u_input.b.x, u_input.b.x))))))));
    let var_1 = vec3<u32>(1u >> (u_input.a % 32u), 4294967295u, ~(u_input.a ^ u_input.a));
    var_0 = vec3<f32>(373f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(-var_0.x), 73243i < u_input.b.x)) - _wgslsmith_f_op_f32(exp2(var_0.x)))), -623f);
    var var_2 = vec2<bool>(false, true);
    let var_3 = 0i;
    return Struct_4(min(-abs(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -16360i) | vec4<i32>(var_3, u_input.b.x, 2147483647i, var_3)), abs(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, var_3, 35979i, u_input.b.x), vec4<i32>(var_3, u_input.b.x, 32815i, u_input.b.x)))), Struct_1(true, var_3), all(select(select(select(vec4<bool>(true, false, false, var_2.x), vec4<bool>(false, true, var_2.x, var_2.x), vec4<bool>(var_2.x, false, var_2.x, var_2.x)), !vec4<bool>(true, var_2.x, var_2.x, true), !vec4<bool>(true, false, false, var_2.x)), vec4<bool>(all(vec2<bool>(var_2.x, false)), true, true, select(var_2.x, var_2.x, var_2.x)), true)), _wgslsmith_div_u32(var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x & 1u, countOneBits(13640u)), var_1.yz)), 21001u);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = arg_0.e;
    var var_1 = !arg_0.b.a;
    var_1 = true;
    var_1 = arg_1.d;
    let var_2 = 1170f;
    return Struct_3(0i);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = !select(select(select(arg_2, !arg_2, select(vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_2)), vec3<bool>(true, !arg_2.x, any(vec2<bool>(true, arg_2.x))), select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), !vec3<bool>(arg_2.x, arg_2.x, arg_2.x))), arg_2, !vec3<bool>(arg_2.x, true, arg_2.x));
    let var_1 = select(select(false, any(arg_2.yx), ~u_input.b.x <= -u_input.b.x) != arg_2.x, -1i > u_input.b.x, any(select(select(vec3<bool>(false, false, arg_2.x), !arg_2, !var_0), !(!vec3<bool>(arg_2.x, false, arg_2.x)), vec3<bool>(arg_0.x > arg_0.x, true, all(vec4<bool>(arg_2.x, false, true, arg_2.x))))));
    let var_2 = 2147483647i;
    var var_3 = 2147483647i;
    let var_4 = all(select(var_0, select(var_0, !var_0, !var_0.x && true), arg_2));
    return Struct_2(u_input.a, ~(~(~vec2<u32>(4294967295u, 44212u)) | vec2<u32>(u_input.a, u_input.a)), ~_wgslsmith_div_u32(countOneBits(_wgslsmith_add_u32(0u, u_input.a)), _wgslsmith_mult_u32(~u_input.a, ~u_input.a)), any(!(!(!vec4<bool>(var_4, false, var_4, true)))), vec2<bool>(!var_0.x, any(!arg_2.zy)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), func_4(func_2(), Struct_2(arg_0.x, vec2<u32>(select(39985u, u_input.a, false), ~53240u), ~arg_0.x, any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), vec2<bool>(false, any(vec3<bool>(false, true, true)))), vec3<f32>(_wgslsmith_div_f32(-203f, 1414f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -539f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2129f, 1379f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-595f, 1497f, 1606f, 1822f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1207f, -934f, -1042f, 1246f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-608f, 1000f, -1000f, 1311f))), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))))), vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), all(vec2<bool>(true, true)), !(all(vec3<bool>(false, false, true)) || true)));
    var var_1 = vec2<i32>(u_input.b.x, 1i);
    var_1 = _wgslsmith_div_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -6780i), _wgslsmith_add_vec2_i32(~vec2<i32>(-1i, u_input.b.x), u_input.b)), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 56401i, -52276i, var_1.x), vec4<i32>(var_1.x, var_1.x, 17693i, var_1.x)) << (u_input.a % 32u), select(_wgslsmith_clamp_i32(var_1.x, u_input.b.x, u_input.b.x), ~2147483647i, all(vec3<bool>(false, var_0.e.x, var_0.e.x)))), min(vec2<i32>(var_1.x | u_input.b.x, ~u_input.b.x), _wgslsmith_clamp_vec2_i32(-u_input.b, u_input.b, u_input.b >> (vec2<u32>(u_input.a, arg_0.x) % vec2<u32>(32u))))));
    let var_2 = arg_0.x;
    var_1 = vec2<i32>(-u_input.b.x, u_input.b.x);
    return Struct_1(!((func_4(Struct_4(vec4<i32>(1i, 11705i, u_input.b.x, var_1.x), Struct_1(true, var_1.x), true, var_0.c, 16289u), var_0, vec3<f32>(2006f, 426f, 197f), vec4<f32>(145f, -841f, -2270f, -1000f)).a & _wgslsmith_clamp_i32(var_1.x, var_1.x, 0i)) <= -43289i), abs(var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_i32(u_input.b >> (select(vec2<u32>(~u_input.a, u_input.a), _wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(1u, u_input.a))), true) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(-_wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(2147483647i, 14964i)), select(abs(u_input.b), u_input.b << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), true)) >> (firstLeadingBit(~(~vec2<u32>(117303u, u_input.a))) % vec2<u32>(32u)));
    var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -206f)))), 1f, -1316f));
    var_0 = vec2<i32>(1509i, u_input.b.x);
    var_0 = ~u_input.b;
    let var_2 = func_1(~max(~vec2<u32>(u_input.a, 61598u), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(4294967295u, u_input.a))) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 21505u), _wgslsmith_add_vec2_u32(~vec2<u32>(50520u, u_input.a), vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-(~(-2147483647i)), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(var_0.x, var_2.b)), max(firstLeadingBit(vec2<i32>(u_input.b.x, var_0.x)), vec2<i32>(var_2.b, var_0.x)))), 38098i, _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, select(reverseBits(var_2.b), u_input.b.x << (u_input.a % 32u), func_2().c), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), -2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(var_0.x, var_0.x)), vec2<i32>(var_0.x, -1i))), ~(~vec4<i32>(var_2.b, -29524i, 0i, -1i)) ^ -vec4<i32>(23336i, 3674i, 35343i, -2147483647i)), ~u_input.a << (~(~u_input.a) % 32u));
}

