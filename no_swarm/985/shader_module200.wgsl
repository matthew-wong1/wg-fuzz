struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: vec4<u32>;

var<private> global1: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-186f + 796f), arg_1.e.c, -223f), _wgslsmith_f_op_vec3_f32(sign(arg_1.e.a.wwz)), !(_wgslsmith_div_f32(arg_1.e.a.x, 176f) > _wgslsmith_f_op_f32(abs(arg_1.e.c))))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.e.a.zwx), _wgslsmith_f_op_vec3_f32(ceil(arg_1.e.a.xxz)));
    global1 = any(!(!arg_1.e.b));
    var var_2 = Struct_3(arg_1.e);
    return abs(0u);
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    global1 = true;
    let var_0 = _wgslsmith_f_op_f32(-arg_0.c);
    global0 = vec4<u32>(_wgslsmith_dot_vec2_u32(global0.zx, vec2<u32>(select(~global0.x, ~global0.x, arg_0.b.x || true), firstLeadingBit(~63309u))), min(1u, _wgslsmith_dot_vec3_u32(~(global0.wxy >> (vec3<u32>(19560u, global0.x, 24466u) % vec3<u32>(32u))), global0.zwy)), ~_wgslsmith_sub_u32(0u, _wgslsmith_add_u32(func_3(global0.xzw, Struct_2(global0.x, true, global0.wy, global0.zyx, Struct_1(vec4<f32>(806f, 1898f, -671f, arg_0.c), arg_0.b, var_0))), ~4294967295u)), 11571u);
    global1 = arg_0.b.x;
    var var_1 = u_input.a & firstTrailingBit(countOneBits(-2147483647i));
    return vec2<bool>(true, !(arg_0.a.x < 1000f));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: f32, arg_3: i32) -> Struct_5 {
    global1 = arg_1.a.a.b.x;
    let var_0 = arg_1;
    var var_1 = arg_1.a;
    var var_2 = arg_1.c;
    global1 = !(_wgslsmith_mult_u32(global0.x, global0.x) > global0.x);
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<u32>) -> Struct_5 {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(~global0.x, ~arg_2.x, 4294967295u), _wgslsmith_div_u32(~1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.x, arg_2.x), min(arg_1, vec2<u32>(arg_2.x, arg_2.x))))), ~_wgslsmith_sub_u32(~reverseBits(arg_2.x), ~global0.x));
    var var_1 = ~(~(-u_input.a));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.a), arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -979f));
    global0 = vec4<u32>(arg_2.x, ~23096u, _wgslsmith_div_u32(~arg_2.x, ~4294967295u), 49033u);
    global0 = vec4<u32>(~arg_2.x, _wgslsmith_sub_u32(68312u, 18701u), 4294967295u, ~(~global0.x));
    return func_4(u_input.a, Struct_5(Struct_4(arg_0, !arg_0.b), !func_2(arg_0), Struct_4(arg_0, vec3<bool>(true, any(vec4<bool>(arg_0.b.x, true, true, false)), all(vec4<bool>(true, true, false, arg_0.b.x))))), _wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(select(-993f, _wgslsmith_f_op_f32(-var_2.a.x), select(var_2.b.x, true, var_2.b.x))), (40831i <= u_input.a) || true))), _wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(1i, u_input.a, -1i, u_input.a)) ^ ~(~vec4<i32>(34166i, -2147483647i, 23i, -21109i)), ~(~(-vec4<i32>(-1i, u_input.a, 22845i, 1i)))));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: vec4<i32>) -> u32 {
    global0 = vec4<u32>(_wgslsmith_div_u32(40811u, firstTrailingBit(global0.x)), ~(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 48403u, 20190u), vec3<u32>(global0.x, global0.x, global0.x) >> (global0.zzx % vec3<u32>(32u))) >> ((_wgslsmith_clamp_u32(global0.x, global0.x, global0.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 64058u, 15798u, 4294967295u), vec4<u32>(global0.x, global0.x, global0.x, 4294967295u))) % 32u)), _wgslsmith_div_u32(reverseBits(abs(global0.x)), ~((global0.x ^ 0u) << (_wgslsmith_mod_u32(global0.x, 1u) % 32u))), ~30495u);
    let var_0 = Struct_2(~firstLeadingBit(0u), arg_0.a.a.b.x, ~select(vec2<u32>(global0.x, ~0u), ~vec2<u32>(global0.x, 1u), any(arg_1.ww)), ~vec3<u32>(global0.x, ~select(global0.x, 42767u, true), _wgslsmith_div_u32(global0.x, 1u)), Struct_1(vec4<f32>(arg_0.c.a.a.x, arg_0.a.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-605f)) * _wgslsmith_f_op_f32(step(arg_0.a.a.a.x, arg_0.c.a.a.x)))), vec3<bool>(!arg_1.x, all(!arg_0.a.a.b), arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.a.x))));
    let var_1 = ~(_wgslsmith_mod_u32(71754u >> (var_0.d.x % 32u), abs(~var_0.a)) << (func_3(_wgslsmith_mod_vec3_u32(global0.zyz, var_0.d), var_0) % 32u));
    let var_2 = 1i >> (0u % 32u);
    let var_3 = arg_0.a.b.zz;
    return 1578u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec4<u32>(global0.x | ~_wgslsmith_sub_u32(global0.x, 0u), global0.x, max(global0.x, global0.x ^ 0u) | 47033u, ~func_5(func_1(Struct_1(vec4<f32>(1996f, 653f, -846f, 205f), vec3<bool>(true, false, false), 1209f), vec2<u32>(global0.x, 1u), vec4<u32>(588u, global0.x, 29741u, global0.x)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true), ~vec4<i32>(-41794i, 2147483647i, u_input.a, u_input.a)));
    var var_0 = min(~abs(_wgslsmith_sub_vec4_i32(vec4<i32>(485i, u_input.a, -17202i, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) | vec4<i32>(u_input.a, 30105i, -2147483647i, u_input.a))), _wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, u_input.a << ((global0.x & global0.x) % 32u), u_input.a, -2147483647i), abs(-vec4<i32>(u_input.a, 0i, u_input.a, 0i) & _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -1i, -40724i, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, -1i)))));
    var var_1 = countOneBits(~var_0.yy | var_0.zw);
    var var_2 = _wgslsmith_f_op_vec3_f32(-func_4(abs(53299i), Struct_5(Struct_4(Struct_1(vec4<f32>(-394f, -669f, 2154f, 566f), vec3<bool>(false, true, false), -654f), vec3<bool>(true, true, true)), vec2<bool>(true, func_2(Struct_1(vec4<f32>(-581f, -1000f, 337f, 1038f), vec3<bool>(true, true, false), 149f)).x), Struct_4(Struct_1(vec4<f32>(369f, 1238f, 1792f, -1000f), vec3<bool>(false, true, true), 2128f), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))), 623f, _wgslsmith_sub_i32(7728i, var_1.x)).a.a.a.xxx);
    global0 = vec4<u32>(~0u, reverseBits(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~7499u, global0.x, _wgslsmith_add_u32(global0.x, 4294967295u)), abs(global0.x) ^ _wgslsmith_add_u32(global0.x, 11910u))), _wgslsmith_clamp_u32(min(_wgslsmith_mult_u32(global0.x, _wgslsmith_div_u32(global0.x, 48467u)), global0.x), global0.x, global0.x), func_3(~(~global0.wxx) | ~_wgslsmith_mod_vec3_u32(global0.zzz, global0.xzy), Struct_2(_wgslsmith_dot_vec4_u32(max(vec4<u32>(global0.x, global0.x, 39867u, global0.x), vec4<u32>(global0.x, global0.x, global0.x, 1u)), countOneBits(vec4<u32>(33938u, global0.x, 0u, 0u))), _wgslsmith_f_op_f32(-var_2.x) >= 411f, ~_wgslsmith_clamp_vec2_u32(global0.xy, global0.xw, vec2<u32>(global0.x, 1u)), vec3<u32>(global0.x | global0.x, ~1u, global0.x), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -1254f, 641f, -462f) - vec4<f32>(-761f, var_2.x, -1829f, var_2.x)), vec3<bool>(true, false, false), _wgslsmith_f_op_f32(-782f * var_2.x)))));
    var var_3 = vec2<bool>(true, true);
    var var_4 = Struct_2(global0.x << (global0.x % 32u), var_3.x, global0.zw, vec3<u32>(41581u, global0.x, 0u) ^ ~firstTrailingBit(global0.xzy << (global0.www % vec3<u32>(32u))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x + var_2.x))), func_1(func_4(var_0.x, Struct_5(Struct_4(Struct_1(vec4<f32>(var_2.x, 664f, var_2.x, 1898f), vec3<bool>(var_3.x, false, false), var_2.x), vec3<bool>(false, var_3.x, var_3.x)), vec2<bool>(true, true), Struct_4(Struct_1(vec4<f32>(var_2.x, -1000f, var_2.x, -1902f), vec3<bool>(var_3.x, false, false), -503f), vec3<bool>(var_3.x, var_3.x, var_3.x))), 586f, -2147483647i).a.a, max(global0.zy, vec2<u32>(38694u, global0.x)), vec4<u32>(global0.x, global0.x, global0.x, 44999u) ^ vec4<u32>(1u, global0.x, 17858u, 0u)).c.a.c, 375f), !func_4(272i, Struct_5(Struct_4(Struct_1(vec4<f32>(213f, var_2.x, var_2.x, -268f), vec3<bool>(var_3.x, var_3.x, var_3.x), 796f), vec3<bool>(var_3.x, false, var_3.x)), vec2<bool>(false, false), Struct_4(Struct_1(vec4<f32>(var_2.x, -1318f, 1000f, var_2.x), vec3<bool>(var_3.x, false, var_3.x), 726f), vec3<bool>(var_3.x, false, true))), _wgslsmith_f_op_f32(trunc(150f)), u_input.a).c.b, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))))));
    var_3 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_4.e.a))), select(vec3<bool>(var_3.x, func_4(0i, Struct_5(Struct_4(Struct_1(var_4.e.a, var_4.e.b, var_4.e.a.x), vec3<bool>(true, var_3.x, false)), vec2<bool>(true, false), Struct_4(Struct_1(vec4<f32>(-1863f, 2279f, -2065f, -239f), var_4.e.b, var_4.e.c), vec3<bool>(var_4.e.b.x, false, var_4.e.b.x))), var_2.x, 62149i).a.a.b.x, all(vec4<bool>(var_4.b, true, true, var_3.x))), !(!var_4.e.b), var_4.e.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1160f - _wgslsmith_f_op_f32(floor(var_4.e.c))))), vec2<u32>(1u, global0.x), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(var_4.d, var_4.d), 1u, _wgslsmith_dot_vec2_u32(global0.xz, vec2<u32>(global0.x, var_4.d.x)), abs(21043u)) | ~vec4<u32>(var_4.a, global0.x, 1109u, 0u), select(vec4<u32>(_wgslsmith_sub_u32(31251u, var_4.c.x), ~global0.x, var_4.d.x, var_4.c.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 0u, global0.x, 9318u), vec4<u32>(4294967295u, var_4.a, var_4.c.x, global0.x)) << (vec4<u32>(18194u, global0.x, global0.x, var_4.a) % vec4<u32>(32u)), true))).a.a.b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-534f)), ~func_5(func_1(func_1(Struct_1(var_4.e.a, var_4.e.b, var_2.x), vec2<u32>(var_4.d.x, global0.x), vec4<u32>(var_4.c.x, global0.x, 79452u, 51052u)).a.a, ~var_4.d.xy, reverseBits(vec4<u32>(91407u, 71534u, global0.x, global0.x))), vec4<bool>(false, !var_4.b, false, func_1(Struct_1(vec4<f32>(-310f, 380f, var_4.e.c, var_4.e.c), vec3<bool>(false, true, var_3.x), var_4.e.c), vec2<u32>(99514u, 46472u), vec4<u32>(global0.x, var_4.a, 4294967295u, var_4.c.x)).b.x), vec4<i32>(5748i, 218i, 2060i, 2147483647i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(22846i, 1i, 13191i, 23720i), vec4<i32>(-2147483647i, 26289i, -27595i, var_1.x), vec4<i32>(2147483647i, -1i, var_0.x, var_0.x))));
}

