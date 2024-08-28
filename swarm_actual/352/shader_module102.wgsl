struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<u32>,
    e: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<i32>,
    d: Struct_3,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(593f, -333f, -1087f, -104f), vec4<f32>(518f, 722f, -650f, -687f), vec4<f32>(-1273f, 369f, 702f, -1256f), vec4<f32>(1198f, -981f, 735f, 286f), vec4<f32>(-189f, 214f, -192f, -333f), vec4<f32>(-967f, -328f, 369f, 288f), vec4<f32>(817f, 923f, 971f, 1600f), vec4<f32>(528f, -1000f, -1712f, 976f), vec4<f32>(243f, 775f, 454f, 129f), vec4<f32>(-1902f, -346f, 1075f, -1115f), vec4<f32>(179f, -936f, -219f, 366f), vec4<f32>(331f, -237f, 1000f, -1000f), vec4<f32>(-581f, 556f, -1000f, -1153f), vec4<f32>(948f, -320f, 1092f, -169f), vec4<f32>(-1540f, -468f, 697f, -1194f), vec4<f32>(1734f, 363f, 1000f, 659f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = false;
    var var_1 = true;
    var var_2 = countOneBits(max(_wgslsmith_add_u32(u_input.c, _wgslsmith_clamp_u32(42958u, 0u, ~1943u)), ~(~0u)));
    var var_3 = arg_0;
    let var_4 = -max(2147483647i, -27249i);
    return arg_1.c;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> Struct_1 {
    global0 = array<vec4<f32>, 16>();
    global0 = array<vec4<f32>, 16>();
    return arg_0;
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> Struct_4 {
    global0 = array<vec4<f32>, 16>();
    global0 = array<vec4<f32>, 16>();
    let var_0 = vec3<i32>(reverseBits(func_2(Struct_1(arg_3.a, arg_3.b, global0[_wgslsmith_index_u32(16998u, 16u)], _wgslsmith_clamp_i32(16098i, 48262i, arg_3.d), _wgslsmith_f_op_vec3_f32(step(arg_3.e, arg_3.c.ywy))), vec2<u32>(firstTrailingBit(18000u), firstLeadingBit(u_input.a.x)), ~(~u_input.e.x)).d), -10248i, ~(_wgslsmith_add_i32(arg_3.d, func_2(arg_3, u_input.b, u_input.d).d) & ~(arg_3.d & 0i)));
    global0 = array<vec4<f32>, 16>();
    let var_1 = Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.c.x, arg_3.e.x, arg_0.x)) * _wgslsmith_f_op_vec3_f32(arg_3.c.wxz * arg_3.e)))), Struct_1(vec2<bool>(!arg_3.a.x, false), ~min(u_input.b.x, 4294967295u), vec4<f32>(_wgslsmith_f_op_f32(313f * arg_2), _wgslsmith_f_op_f32(-arg_3.c.x), arg_2, _wgslsmith_f_op_f32(arg_0.x * arg_0.x)), 27774i, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_3.c.zwy, arg_3.e) * vec3<f32>(arg_2, 1314f, 1137f)))), Struct_3(true, Struct_2(_wgslsmith_f_op_vec3_f32(arg_3.e + arg_3.c.zwz), Struct_1(vec2<bool>(false, arg_1), arg_3.b >> (12846u % 32u), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.e.x, 16u)]), arg_3.d, vec3<f32>(arg_3.c.x, -1191f, arg_0.x))), -35972i, false & (_wgslsmith_add_i32(0i, var_0.x) <= (1i << (u_input.d % 32u))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_div_i32(arg_3.d, 1i), -var_0.x), vec2<i32>(-1i, arg_3.d))), max(~var_0.yz, vec2<i32>(-abs(arg_3.d), _wgslsmith_clamp_i32(2147483647i, 4502i, var_0.x) << (~63651u % 32u))), Struct_3(arg_1, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 750f, arg_2)), arg_3), -59212i, true, var_0.zx), arg_0);
    return Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(301f)))), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 37441u, 21252u, u_input.a.x), vec4<u32>(0u, 41472u, arg_3.b, 38683u)), ~vec4<u32>(u_input.c, u_input.c, 73206u, 0u)), ~(~vec4<u32>(4294967295u, u_input.b.x, 0u, 51539u)), vec4<u32>(var_1.d.b.b.b, abs(4294967295u), ~var_1.d.b.b.b, var_1.b.b.b.b)), Struct_1(vec2<bool>(arg_1, true), func_2(Struct_1(vec2<bool>(arg_1, arg_3.a.x), 145741u, vec4<f32>(arg_2, 105f, arg_0.x, -158f), 1i, vec3<f32>(700f, arg_2, arg_2)), ~vec2<u32>(63904u, arg_3.b), abs(1u)).b >> (11361u % 32u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1813f)) - 573f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.b.b.b.c.x - arg_0.x))), 712f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-410f)))), var_1.a.b.d, var_1.b.b.b.c.wwy), ~(~u_input.e.zz), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    var var_0 = !vec4<bool>(any(!select(vec3<bool>(arg_3.b.a.x, arg_2, true), vec3<bool>(arg_3.b.a.x, false, arg_3.b.a.x), arg_2)), func_2(arg_1.c, vec2<u32>(_wgslsmith_div_u32(arg_1.b.x, 25309u), func_3(arg_1.c.e.zy, false, 533f, arg_3.b).c.b), ~0u).a.x, func_2(Struct_1(!arg_1.c.a, arg_3.b.b, _wgslsmith_f_op_vec4_f32(-arg_1.c.c), ~(-2147483647i), vec3<f32>(arg_1.c.e.x, arg_3.b.c.x, 557f)), _wgslsmith_mod_vec2_u32(arg_1.d, vec2<u32>(arg_1.b.x, 4294967295u)), 1u).a.x, !(!any(arg_1.c.a)));
    global0 = array<vec4<f32>, 16>();
    let var_1 = arg_2;
    global0 = array<vec4<f32>, 16>();
    var var_2 = true;
    return Struct_1(!(!arg_3.b.a), _wgslsmith_clamp_u32(arg_1.d.x, _wgslsmith_add_u32(1u, ~arg_3.b.b), 55165u), arg_3.b.c, _wgslsmith_add_i32(-(_wgslsmith_sub_i32(33924i, -5625i) & min(arg_3.b.d, 0i)), abs(-_wgslsmith_add_i32(1i, -1i))), arg_1.c.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -712f;
    let var_1 = ~max(4294967295u, u_input.b.x ^ ((8985u >> (u_input.e.x % 32u)) << (u_input.a.x % 32u)));
    let var_2 = func_4(vec3<i32>(2147483647i, ~_wgslsmith_clamp_i32(~(-1i), 1i, 1i), func_1(1i, Struct_3(true, Struct_2(vec3<f32>(-646f, var_0, -250f), Struct_1(vec2<bool>(false, false), var_1, vec4<f32>(var_0, var_0, var_0, var_0), 1i, vec3<f32>(var_0, var_0, var_0))), 25627i, true, vec2<i32>(10508i, 10575i) >> (u_input.e.yx % vec2<u32>(32u))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0, 710f), -902f)), (-2147483647i >> (0u % 32u)) >> ((var_1 ^ 4294967295u) % 32u))), func_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1479f, _wgslsmith_f_op_f32(step(var_0, 1392f))))), all(vec3<bool>(u_input.c > u_input.d, true, true)), 1437f, func_2(Struct_1(select(vec2<bool>(true, false), vec2<bool>(false, true), false), ~55312u, global0[_wgslsmith_index_u32(~4314u, 16u)], _wgslsmith_sub_i32(19320i, 3587i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1207f, var_0, var_0) + vec3<f32>(var_0, var_0, var_0))), u_input.a, u_input.a.x << (_wgslsmith_mod_u32(u_input.d, u_input.b.x) % 32u))), all(func_2(Struct_1(vec2<bool>(true, true), _wgslsmith_add_u32(1u, u_input.d), vec4<f32>(-451f, var_0, 1071f, var_0), -664i << (1u % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(268f, var_0, var_0))), _wgslsmith_mult_vec2_u32(u_input.e.yx, ~vec2<u32>(var_1, var_1)), 0u).a), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(497f, -1161f, var_0))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0, -1222f, var_0), vec3<f32>(1154f, var_0, -2412f))), func_2(Struct_1(vec2<bool>(false, false), _wgslsmith_sub_u32(1u, u_input.a.x), _wgslsmith_f_op_vec4_f32(ceil(global0[_wgslsmith_index_u32(u_input.b.x, 16u)])), ~(-1i), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1844f, -847f, var_0), vec3<f32>(var_0, 129f, var_0)))), select(u_input.a, u_input.e.yz, vec2<bool>(true, true)) << (min(u_input.e.xz, u_input.b) % vec2<u32>(32u)), 6238u)));
    global0 = array<vec4<f32>, 16>();
    var var_3 = Struct_3(!(any(!vec3<bool>(true, true, var_2.a.x)) | (select(var_2.a.x, false, var_2.a.x) || var_2.a.x)), Struct_2(var_2.e, Struct_1(!(!var_2.a), _wgslsmith_dot_vec3_u32(u_input.e, ~vec3<u32>(var_2.b, 11253u, 92947u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(var_2.b, 16u)]) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2237f, var_2.c.x, var_0, var_2.e.x), global0[_wgslsmith_index_u32(var_1, 16u)], vec4<bool>(var_2.a.x, var_2.a.x, true, var_2.a.x)))), _wgslsmith_add_i32(func_2(Struct_1(vec2<bool>(false, var_2.a.x), var_1, vec4<f32>(1698f, var_2.e.x, var_2.e.x, -1272f), var_2.d, vec3<f32>(210f, var_0, var_0)), vec2<u32>(50831u, 42659u), var_2.b).d, 1i), var_2.e)), ~(-30325i), true, countOneBits(~_wgslsmith_sub_vec2_i32(vec2<i32>(8369i, -41293i), vec2<i32>(var_2.d, var_2.d)) | ~firstLeadingBit(vec2<i32>(25497i, 2147483647i))));
    var_3 = Struct_3(all(select(func_4(~vec3<i32>(var_2.d, var_2.d, var_3.c), Struct_4(var_0, vec4<u32>(u_input.d, 1u, var_3.b.b.b, 4294967295u), var_2, u_input.e.yz, var_0), false, var_3.b).a, var_2.a, any(!vec3<bool>(var_2.a.x, false, true)))), var_3.b, _wgslsmith_clamp_i32(-1i, var_3.c, ~var_3.e.x), var_2.a.x, ~(~vec2<i32>(-1i, countOneBits(1i))));
    let var_4 = any(!(!(!(!vec4<bool>(true, var_3.a, var_3.a, var_2.a.x)))));
    global0 = array<vec4<f32>, 16>();
    var var_5 = func_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_3.b.a.xy))) - _wgslsmith_f_op_vec2_f32(var_3.b.b.c.xx * _wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), var_2.e.xx))), vec2<f32>(var_0, var_3.b.a.x), !select(var_2.a, var_3.b.b.a, !vec2<bool>(true, var_4)))), !func_3(func_2(func_4(vec3<i32>(-38865i, var_3.e.x, var_2.d), Struct_4(140f, vec4<u32>(17926u, 8354u, 38712u, var_3.b.b.b), Struct_1(vec2<bool>(var_2.a.x, false), var_3.b.b.b, var_3.b.b.c, -2147483647i, var_2.c.zyz), vec2<u32>(u_input.c, var_2.b), -591f), true, var_3.b), vec2<u32>(0u, var_1) | vec2<u32>(var_2.b, 2808u), ~258u).e.yy, true, 172f, var_3.b.b).c.a.x, _wgslsmith_f_op_f32(1f + var_0), func_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -303f) + var_3.b.a.zz) * vec2<f32>(1799f, 254f)))), true, func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_3.b.b.c.zz, var_3.b.a.xz, var_3.d))), any(select(vec4<bool>(true, var_3.d, var_3.d, var_2.a.x), vec4<bool>(var_4, var_4, true, true), vec4<bool>(var_3.a, var_3.d, var_3.b.b.a.x, var_4))), -1000f, var_3.b.b).c.e.x, var_3.b.b).c);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.zz, _wgslsmith_mult_i32(-(_wgslsmith_clamp_i32(var_3.e.x, 12930i, var_5.c.d) ^ var_2.d), -(var_3.c << (~56770u % 32u))), vec3<f32>(-1041f, -392f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1419f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(820f, var_2.c.x)))) * var_5.c.c.yz)));
}

