struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 1895i, -9703i);

var<private> global1: Struct_1;

var<private> global2: bool = true;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4) -> vec4<u32> {
    let var_0 = Struct_2(Struct_1(1290i, vec4<i32>(_wgslsmith_div_i32(36541i, 2147483647i), -(i32(-1i) * -20386i), -1i, _wgslsmith_add_i32(~1i, ~global0.x)), _wgslsmith_mult_vec2_u32(~global1.c, u_input.d.zz), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.d.x, 45381i, u_input.e, -7951i), ~vec4<i32>(2147483647i, -1i, global1.a, -22948i)), countOneBits(global1.d))), Struct_1(16471i, ~(~global1.d ^ _wgslsmith_mult_vec4_i32(vec4<i32>(20743i, -2147483647i, arg_0.a, global0.x), global1.d)), select(min(u_input.d.xy, vec2<u32>(0u, u_input.c)) & max(u_input.d.zx, global1.c), ~u_input.d.yy, vec2<bool>(true, false)), global1.d), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1f)), -700f)), Struct_1(global0.x ^ firstLeadingBit(min(2147483647i, 0i)), vec4<i32>(_wgslsmith_sub_i32(-1i, u_input.a), global0.x | -2147483647i, ~2147483647i, _wgslsmith_dot_vec2_i32(u_input.b, global1.b.xw)) ^ vec4<i32>(_wgslsmith_mult_i32(1i, global1.b.x), -2147483647i, ~35490i, -u_input.b.x), u_input.d.xz, vec4<i32>(_wgslsmith_sub_i32(u_input.e, global1.d.x ^ global0.x), -1i, reverseBits(arg_0.b), _wgslsmith_dot_vec2_i32(-global0.zx, firstTrailingBit(vec2<i32>(12567i, -4065i))))));
    return ~(~vec4<u32>(10571u, _wgslsmith_dot_vec3_u32(vec3<u32>(57643u, var_0.a.c.x, u_input.d.x), vec3<u32>(var_0.a.c.x, 0u, var_0.d.c.x)), u_input.c, ~u_input.c) ^ countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d.x, 66077u, 1u, 10171u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.c, var_0.d.c.x, var_0.b.c.x), vec4<u32>(0u, u_input.d.x, var_0.a.c.x, 1u)))));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>) -> i32 {
    var var_0 = 14116u;
    global2 = any(vec2<bool>(true, true));
    global0 = global1.d.wxz;
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32((vec2<i32>(global1.b.x, u_input.e) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(global1.b.x, 23825i), vec2<i32>(u_input.b.x, global0.x))) ^ vec2<i32>(1i, 1i), vec2<i32>(-1i, (-21553i ^ global1.b.x) | -1i)), ~vec4<i32>(abs(~global1.a), abs(~global1.b.x), 9659i, -33404i & reverseBits(global0.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(abs(u_input.d.x), 32718u), global1.c) >> (vec2<u32>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 91898u, global1.c.x), vec3<u32>(4294967295u, 53823u, arg_1.x))), global1.c.x) % vec2<u32>(32u)), select(~max(-global1.b, _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, global1.a, 0i, 0i), vec4<i32>(u_input.b.x, -11177i, global1.b.x, -4377i))), -(-vec4<i32>(-3031i, u_input.a, global0.x, u_input.b.x) & abs(vec4<i32>(global1.a, global0.x, global1.a, global1.a))), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 1i), u_input.b)) > 1i));
    let var_2 = Struct_1(global1.b.x, var_1.b, u_input.d.zy, -abs(vec4<i32>(u_input.b.x, -50657i, var_1.a, -1i)) | vec4<i32>(75276i, var_1.b.x, _wgslsmith_mult_i32(global0.x, abs(var_1.b.x)), 1i));
    return ~(~(i32(-1i) * -global1.a));
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    global1 = Struct_1(global1.d.x, vec4<i32>(_wgslsmith_div_i32(arg_0.x, 1i), 2147483647i, func_4(-713f, func_3(Struct_4(45880i, global0.x, arg_0.xzy))), _wgslsmith_clamp_i32(func_4(_wgslsmith_f_op_f32(ceil(-533f)), vec4<u32>(u_input.d.x, global1.c.x, u_input.d.x, global1.c.x) & vec4<u32>(u_input.c, global1.c.x, u_input.d.x, 4294967295u)), min(-global1.d.x, abs(-62531i)), abs(select(u_input.b.x, global0.x, true)))), reverseBits(u_input.d.xx), -_wgslsmith_add_vec4_i32(~(global1.b << (vec4<u32>(1u, global1.c.x, global1.c.x, u_input.c) % vec4<u32>(32u))), ~select(arg_0, global1.b, true)));
    var var_0 = true || !all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), any(vec4<bool>(false, false, false, true))));
    let var_1 = Struct_4(u_input.b.x, -36562i, arg_0.yyx);
    global1 = Struct_1(-38196i, arg_0, firstTrailingBit(select(global1.c, _wgslsmith_sub_vec2_u32(u_input.d.xx & vec2<u32>(u_input.c, global1.c.x), vec2<u32>(676u, 3719u) >> (vec2<u32>(global1.c.x, u_input.d.x) % vec2<u32>(32u))), vec2<bool>(true, true))), arg_0);
    var_0 = true;
    return -(-21083i & var_1.c.x);
}

fn func_1() -> Struct_4 {
    global2 = false;
    var var_0 = !vec3<bool>(-2147483647i <= _wgslsmith_sub_i32(~1i, global0.x), all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), true)), !(!all(vec3<bool>(false, false, false))));
    var var_1 = vec4<bool>(var_0.x, true, all(select(var_0.xz, vec2<bool>(true, true), false)), true);
    let var_2 = _wgslsmith_mult_vec4_i32(firstTrailingBit(global1.b | vec4<i32>(global1.d.x, 5987i, u_input.e, global0.x)), global1.d) | vec4<i32>(global1.d.x, _wgslsmith_mod_i32(~0i & ~global1.b.x, _wgslsmith_sub_i32(-24954i, ~global1.b.x)), global0.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(24954i >> (global1.c.x % 32u), func_2(global1.b)), u_input.b.x));
    return Struct_4(i32(-1i) * -var_2.x, _wgslsmith_mod_i32(-5294i, _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(u_input.b.x, global0.x), _wgslsmith_div_i32(-global1.d.x, -1i & u_input.a), abs(_wgslsmith_add_i32(1i, u_input.e)))), global1.d.zyw);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<f32>) -> i32 {
    var var_0 = arg_0;
    global1 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.x, -19573i), vec2<i32>(_wgslsmith_mod_i32(-2147483647i, 32713i), global0.x)), var_0.b), firstTrailingBit(global1.d), _wgslsmith_div_vec2_u32(u_input.d.zy, countOneBits(~_wgslsmith_sub_vec2_u32(vec2<u32>(global1.c.x, global1.c.x), vec2<u32>(global1.c.x, 5556u)))), vec4<i32>(_wgslsmith_sub_i32(arg_0.c.x, -26282i), ~(-35534i), 1i, arg_0.b));
    var var_1 = Struct_3(arg_1.yy);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(423f * var_1.a.x) - 1866f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -1831f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(round(907f)))))), var_1.a.x, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, 1090f, 2707f, arg_1.x), vec4<f32>(var_1.a.x, arg_1.x, -2160f, var_1.a.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, arg_1.x, var_1.a.x, 161f) + vec4<f32>(-112f, -681f, -381f, -133f))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a.x, -1503f, arg_1.x, var_1.a.x))), vec4<f32>(2277f, -1824f, var_1.a.x, 1748f))))));
    var var_3 = var_1.a.x;
    return u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(select(vec2<i32>(-4576i, func_5(func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(925f, 1503f, -311f)))), countOneBits(~vec2<i32>(2147483647i, u_input.a)), !any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))));
    global1 = Struct_1(u_input.b.x << (_wgslsmith_mult_u32(4294967295u, u_input.c) % 32u), global1.b, u_input.d.yx, vec4<i32>(u_input.b.x, ~_wgslsmith_mod_i32(-1i, i32(-1i) * -20802i), func_5(Struct_4(global1.a, 20610i, global1.b.wzy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-407f, 1917f, 184f) - vec3<f32>(-680f, 2210f, 337f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(317f, 676f, -230f) + vec3<f32>(173f, 1225f, -202f)))), ~global1.d.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-264f)) * -562f);
    var_0 = ~(-global1.d.zw);
    var var_2 = Struct_1(func_5(Struct_4(global1.b.x, global1.d.x, global1.d.zyx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(647f, 817f, 1377f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(412f, -673f, 116f) + vec3<f32>(-912f, -298f, -115f)))))), min(global1.b, firstLeadingBit(~select(global1.b, global1.d, vec4<bool>(true, true, true, true)))), global1.c, global1.d);
    let var_3 = var_2.a;
    var var_4 = Struct_2(Struct_1(-23974i, vec4<i32>(var_2.a, -1i, func_1().a, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, -6270i, u_input.a, global1.d.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.d.x, global0.x, 0i, -6099i), vec4<i32>(global0.x, 2147483647i, global0.x, 2147483647i)))), global1.c, _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(global1.b.x, var_2.b.x, var_2.a, 0i), countOneBits(vec4<i32>(global1.a, -14520i, var_0.x, global1.d.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(34823i, 1i, 2147483647i, -23732i), ~global1.d, ~global1.d))), Struct_1(2622i, reverseBits(vec4<i32>(-2147483647i, -2147483647i, global1.a ^ 0i, var_2.a)), max(~select(vec2<u32>(u_input.c, u_input.d.x), u_input.d.yz, false), vec2<u32>(12548u, 4294967295u) | _wgslsmith_div_vec2_u32(vec2<u32>(var_2.c.x, u_input.c), vec2<u32>(4294967295u, 34651u))), -_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, u_input.b.x, u_input.e, u_input.e), countOneBits(vec4<i32>(20195i, var_0.x, -2147483647i, 4123i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1376f * _wgslsmith_f_op_f32(floor(-807f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(658f * -1000f))), Struct_1(_wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(-51568i, 1i, global0.x), vec3<i32>(global1.a, global0.x, var_0.x) & vec3<i32>(var_2.b.x, -1i, -16744i)), -1i << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.c.x, u_input.d.x, 1u), vec4<u32>(global1.c.x, 4294967295u, 46558u, u_input.c)) % 32u)), global1.b, max(~select(var_2.c, vec2<u32>(82653u, 14353u), false), ~_wgslsmith_mult_vec2_u32(global1.c, vec2<u32>(1u, global1.c.x))), vec4<i32>(func_4(-1256f, reverseBits(vec4<u32>(40314u, u_input.d.x, 0u, u_input.c))), 31776i, firstTrailingBit(global0.x) & countOneBits(-22585i), u_input.e << (_wgslsmith_mult_u32(4294967295u, u_input.c) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.c - 317f) + var_4.c), -704f)), 1f, vec4<f32>(-1401f, -1531f, var_4.c, var_4.c));
}

