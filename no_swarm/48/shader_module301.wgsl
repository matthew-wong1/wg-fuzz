struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: i32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32) -> vec3<f32> {
    let var_0 = Struct_2(1u);
    var var_1 = _wgslsmith_div_vec2_i32(-abs(abs(-vec2<i32>(2147483647i, u_input.b))), vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(max(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(arg_0, arg_0)), min(vec2<i32>(arg_0, u_input.a), vec2<i32>(u_input.b, u_input.a))));
    var var_2 = Struct_4(Struct_1(~max(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, var_1.x), vec2<i32>(11309i, -12919i)), vec2<i32>(u_input.d, u_input.b) >> (vec2<u32>(3224u, 86151u) % vec2<u32>(32u))), _wgslsmith_clamp_vec4_u32(select(~vec4<u32>(1u, 14716u, u_input.c.x, 24695u), vec4<u32>(4294967295u, 25707u, 8405u, var_0.a), 14903u != u_input.c.x), vec4<u32>(_wgslsmith_mult_u32(84175u, var_0.a), ~u_input.c.x, 1u, u_input.c.x >> (var_0.a % 32u)), (vec4<u32>(u_input.c.x, var_0.a, 0u, 5150u) & vec4<u32>(1u, u_input.c.x, 1u, 13929u)) & ~vec4<u32>(1u, var_0.a, u_input.c.x, 0u)), -6807i, vec3<i32>(-33042i, _wgslsmith_add_i32(u_input.d >> (var_0.a % 32u), _wgslsmith_mult_i32(var_1.x, -1i)), _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.d, -12564i), 67619i)), ~(-vec2<i32>(20303i, u_input.b))), vec3<f32>(1732f, -622f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2827f, -1000f) + 1f) * -901f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1116f, -1708f, 1350f, -985f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-853f, 1327f, -877f, -1935f)))) + vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(min(400f, 815f)))), 1f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-193f, -408f), _wgslsmith_f_op_f32(-1233f * -148f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-238f)) - _wgslsmith_f_op_f32(trunc(559f))))));
    var var_3 = Struct_3(Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(var_2.a.d << (vec3<u32>(var_0.a, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), -var_2.a.d), abs(countOneBits(-21366i))), max(vec4<u32>(0u, 0u ^ var_2.a.b.x, 1u, var_0.a | var_0.a), ~var_2.a.b), 2147483647i, -vec3<i32>(_wgslsmith_div_i32(-13116i, var_2.a.a.x), ~26146i, var_2.a.d.x), -_wgslsmith_div_vec2_i32(var_2.a.d.zx, var_2.a.e)), vec4<u32>(var_2.a.b.x, var_2.a.b.x, var_2.a.b.x, ~firstTrailingBit(_wgslsmith_mult_u32(50058u, 35936u))), vec2<u32>(19096u, 47662u));
    let var_4 = _wgslsmith_dot_vec4_u32(var_3.a.b, var_3.a.b) >> (~(~(select(4294967295u, var_2.a.b.x, true) >> (var_3.b.x % 32u))) % 32u);
    return vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b.x), 705f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-470f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -670f)))), true)), -371f);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<f32>) -> bool {
    let var_0 = arg_0.a.b.xz;
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.c.zzz)));
    let var_2 = _wgslsmith_f_op_vec3_f32(func_3(abs(_wgslsmith_mod_i32(arg_0.a.c, 48176i))));
    var var_3 = _wgslsmith_div_vec3_i32(arg_0.a.d, vec3<i32>(2147483647i, _wgslsmith_mod_i32(-min(-7941i, 21390i), -22211i << (~arg_0.a.b.x % 32u)), u_input.b));
    let var_4 = ~_wgslsmith_sub_u32(reverseBits(u_input.c.x), ~(~arg_1.b.x)) << (u_input.c.x % 32u);
    return select(true == any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec2<bool>(true, false)))), true, false);
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: vec3<bool>) -> vec4<u32> {
    var var_0 = !arg_2;
    let var_1 = !all(arg_2);
    let var_2 = all(!select(vec4<bool>(var_1, arg_0, select(var_1, true, var_0.x), !var_0.x), !(!vec4<bool>(true, var_0.x, var_1, true)), _wgslsmith_div_i32(1i, u_input.d) != 1i));
    var_0 = vec3<bool>(any(!arg_2), ~u_input.a == u_input.d, any(vec4<bool>(func_2(Struct_4(Struct_1(vec2<i32>(-1i, -2147483647i), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 1u), -26680i, vec3<i32>(u_input.b, u_input.a, 6235i), vec2<i32>(u_input.a, u_input.d)), vec3<f32>(-681f, -106f, 157f), vec4<f32>(-411f, -261f, 1094f, -871f)), Struct_1(vec2<i32>(u_input.a, u_input.d), vec4<u32>(56042u, arg_1.x, 0u, 78797u), u_input.b, vec3<i32>(-1i, u_input.d, u_input.d), vec2<i32>(2147483647i, u_input.a)), Struct_2(1u), vec3<f32>(683f, 1000f, -1014f)) != false, any(vec2<bool>(var_2, arg_0)), !(!var_0.x), all(!var_0.zx))));
    var_0 = vec3<bool>(var_0.x, true, true);
    return _wgslsmith_div_vec4_u32(vec4<u32>(~max(110991u, arg_1.x), arg_1.x, ~u_input.c.x << (~38835u % 32u), 1u), ~(~vec4<u32>(u_input.c.x, 20074u, 19721u, 27376u) ^ vec4<u32>(u_input.c.x, 1u, 4294967295u, 0u))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(33851u, 19974u), u_input.c), min(arg_1.x, arg_1.x) ^ arg_1.x, 4294967295u, u_input.c.x), _wgslsmith_div_vec4_u32(~vec4<u32>(1518u, 4294967295u, 1u, 77689u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 0u, 54388u, arg_1.x), vec4<u32>(u_input.c.x, 8212u, u_input.c.x, u_input.c.x))));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0.b, vec4<u32>(arg_0.c.x, arg_0.b.x, arg_0.b.x, 11231u)) >> (firstTrailingBit(vec4<u32>(arg_0.a.b.x, u_input.c.x, u_input.c.x, arg_0.b.x)) % vec4<u32>(32u)), arg_0.b), countOneBits(abs(vec4<u32>(4294967295u, u_input.c.x, 16570u, 21457u) >> (vec4<u32>(arg_0.b.x, arg_0.b.x, 55111u, u_input.c.x) % vec4<u32>(32u))))));
    var var_1 = abs(-arg_0.a.d);
    var var_2 = var_0;
    var var_3 = arg_0.a.b << (~(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 27718u, u_input.c.x) & arg_0.a.b, arg_0.b) << (vec4<u32>(u_input.c.x, arg_0.c.x, 18855u, ~var_2.a) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_4 = arg_0.a.a;
    return arg_0.a;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = ~arg_0.a.b.yy;
    var var_1 = !select(!vec3<bool>(arg_2.x, select(false, false, arg_3.x), true), !arg_2.xww, !(u_input.c.x > ~u_input.c.x));
    var var_2 = Struct_2(~_wgslsmith_mult_u32(~var_0.x, _wgslsmith_mod_u32(~1u, _wgslsmith_mod_u32(u_input.c.x, 15357u))));
    var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_0.x) >> (arg_0.b.yy % vec2<u32>(32u)), ~u_input.c), vec2<u32>(18798u, 0u)), min(~(~var_0.x), abs(~min(var_2.a, var_0.x))));
    var var_3 = Struct_4(Struct_1(vec2<i32>(~(~arg_1.x), 1i), arg_0.a.b, -1i, arg_0.a.d, _wgslsmith_sub_vec2_i32(arg_0.a.d.xz, arg_1)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1000f, -1178f), vec3<f32>(-503f, -383f, 1086f)) + vec3<f32>(169f, 1067f, -1139f))))), vec4<f32>(-346f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1239f, -991f))), -1965f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-767f, -1000f))));
    return Struct_2(14058u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!(any(vec3<bool>(false, false, true)) || true)));
    let var_1 = vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(u_input.a), -u_input.a), u_input.b, ~2488i);
    var_0 = false;
    var_0 = false;
    var var_2 = ~max(~u_input.c.x, reverseBits(u_input.c.x)) >> (~_wgslsmith_div_u32(~4294967295u >> (u_input.c.x % 32u), u_input.c.x) % 32u);
    let var_3 = func_5(Struct_3(func_4(Struct_3(Struct_1(var_1.yx, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u), u_input.b, vec3<i32>(var_1.x, 2015i, var_1.x), var_1.zz), func_1(true, vec3<u32>(4294967295u, 34787u, u_input.c.x), vec3<bool>(true, true, false)), ~vec2<u32>(1445u, u_input.c.x)), var_1.x), abs(reverseBits(firstTrailingBit(vec4<u32>(86997u, u_input.c.x, u_input.c.x, 14469u)))), abs(vec2<u32>(4294967295u, 0u))), var_1.zx, select(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, false, false, true), true), vec4<bool>(false, !all(vec3<bool>(true, true, true)), true, true), !vec4<bool>(u_input.c.x <= u_input.c.x, any(vec3<bool>(false, false, true)), any(vec4<bool>(true, false, false, true)), false)), select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, true, true))), vec2<bool>(all(vec4<bool>(true, true, true, true)), true)));
    let var_4 = vec2<i32>(24499i, i32(-1i) * -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~vec4<i32>(i32(-1i) * -58911i, _wgslsmith_add_i32(var_1.x, 0i), 8225i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_4.x, u_input.b), var_1))), _wgslsmith_f_op_f32(f32(-1f) * -613f), var_4.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-573f, -646f, -104f, -1793f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1299f, -1079f, -1054f, -1166f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(242f, -437f, 810f, 1807f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-506f - -1172f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-676f + 757f))), _wgslsmith_f_op_f32(ceil(712f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -502f), _wgslsmith_f_op_f32(round(448f))))), _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -1i, 0i, var_1.x) << (vec4<u32>(40089u, u_input.c.x, var_3.a, var_3.a) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, u_input.d, -2147483647i, var_1.x), vec4<i32>(22985i, u_input.a, var_1.x, 1i), vec4<i32>(-1i, u_input.b, -1i, -2147483647i))), _wgslsmith_dot_vec2_i32(var_4, -_wgslsmith_add_vec2_i32(vec2<i32>(var_4.x, var_1.x), var_4))));
}

