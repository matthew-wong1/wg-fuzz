struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-5186i);

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 4>;

var<private> global3: array<Struct_4, 2>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_2) -> bool {
    global0 = Struct_4(u_input.d.x);
    let var_0 = Struct_3(select(arg_3.c.yz, ~_wgslsmith_sub_vec2_u32(arg_3.c.xx, vec2<u32>(arg_1, 47473u)) ^ global1.a, true), firstTrailingBit(arg_3.d.a.ywx));
    global2 = array<Struct_1, 4>();
    let var_1 = 31664u;
    let var_2 = -38869i;
    return true;
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-543f * 1216f), 2105f, -1189f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-973f, 2365f, 185f) - vec3<f32>(-586f, 1312f, -542f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-577f, -204f, -1619f) * vec3<f32>(-1110f, 978f, -126f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-863f, -835f, -536f))))));
    var var_1 = _wgslsmith_sub_u32(~(~(min(134868u, 4294967295u) & u_input.e)), abs(~1u));
    global1 = Struct_3(vec2<u32>(global1.a.x, min(~_wgslsmith_sub_u32(u_input.a, u_input.a), ~1u)), min(vec3<i32>(-1i) * -vec3<i32>(-19870i, global1.b.x, global1.b.x), -_wgslsmith_div_vec3_i32(vec3<i32>(-42704i, global0.a, -1i), -u_input.c.wyy)));
    let var_2 = global2[_wgslsmith_index_u32(0u, 4u)];
    var var_3 = _wgslsmith_f_op_f32(trunc(-480f));
    return u_input.c.xzw;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> vec2<u32> {
    let var_0 = _wgslsmith_mod_i32(-(~(func_3().x >> (select(u_input.a, 1u, false) % 32u))), arg_0.b.x);
    global1 = arg_1;
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(24273u), ~(_wgslsmith_add_u32(74630u, u_input.a) & arg_0.a.x) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_0.a.x, 22338u), firstLeadingBit(global1.a), countOneBits(global1.a)), vec2<u32>(~26507u, ~4294967295u)) % 32u)), 4u)];
    let var_2 = vec3<bool>(true, arg_2, true);
    let var_3 = select(1i, abs(arg_0.b.x), !arg_2) >> (_wgslsmith_add_u32(countOneBits(_wgslsmith_add_u32(arg_0.a.x & u_input.e, _wgslsmith_sub_u32(arg_0.a.x, 4294967295u))), reverseBits(firstTrailingBit(20611u))) % 32u);
    return arg_1.a;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: u32) -> Struct_3 {
    global2 = array<Struct_1, 4>();
    var var_0 = vec4<bool>(func_2(Struct_4(43848i), _wgslsmith_sub_u32(global1.a.x, _wgslsmith_clamp_u32(31090u, u_input.a, 0u) & u_input.e), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -234f))), 125f, 1565f), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(335f * 681f)), 2147483647i, _wgslsmith_add_vec3_u32(vec3<u32>(27627u, arg_1.x, global1.a.x), vec3<u32>(u_input.e, arg_2, global1.a.x)) >> (~vec3<u32>(arg_1.x, u_input.a, 1u) % vec3<u32>(32u)), Struct_1(max(vec4<i32>(arg_0.a, global0.a, u_input.b, 1i), u_input.c), 48182i), 4294967295u)), true, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-201f)) * -1015f) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1116f - -224f), 1192f))), all(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))));
    var var_1 = ~(~(((vec4<u32>(arg_2, 12288u, global1.a.x, 15912u) | vec4<u32>(25325u, u_input.e, global1.a.x, 4294967295u)) | _wgslsmith_mult_vec4_u32(vec4<u32>(global1.a.x, 1u, arg_1.x, arg_2), vec4<u32>(11055u, u_input.a, u_input.e, 74739u))) | ~(vec4<u32>(arg_1.x, global1.a.x, 0u, 1u) | vec4<u32>(arg_1.x, 39327u, 1u, 35349u))));
    return Struct_3(func_4(Struct_3(~arg_1, ~func_3()), Struct_3(firstTrailingBit(vec2<u32>(var_1.x, 4294967295u)), ~select(vec3<i32>(arg_0.a, arg_0.a, global1.b.x), u_input.c.yyy, var_0.x)), var_0.x, 71751u), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, arg_0.a >> (arg_1.x % 32u)), u_input.c.zz ^ vec2<i32>(u_input.b, 87863i)), _wgslsmith_mod_i32(u_input.b, abs(-2147483647i) >> ((arg_2 << (1u % 32u)) % 32u)), arg_0.a));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    let var_0 = Struct_3(global1.a, ~_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(0i, -5268i), max(36113i, u_input.c.x), _wgslsmith_mod_i32(-2147483647i, 27002i)), u_input.c.yxx));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(855f + _wgslsmith_f_op_f32(f32(-1f) * -1160f))));
    let var_2 = -(_wgslsmith_sub_i32(arg_0.b.x, -2147483647i) | ~arg_0.b.x);
    global0 = global3[_wgslsmith_index_u32(~(~(~min(_wgslsmith_sub_u32(0u, 0u), abs(global1.a.x)))), 2u)];
    global1 = func_1(global3[_wgslsmith_index_u32(arg_0.a.x, 2u)], ~(~vec2<u32>(_wgslsmith_mod_u32(4294967295u, 46495u), u_input.a)), global1.a.x);
    return Struct_2(-519f, ~_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), abs(max(vec3<u32>(~71091u, func_1(global3[_wgslsmith_index_u32(13477u, 2u)], vec2<u32>(global1.a.x, u_input.e), 1u).a.x, max(var_0.a.x, 40608u)), ~vec3<u32>(var_0.a.x, arg_0.a.x, var_0.a.x))), Struct_1(select(_wgslsmith_div_vec4_i32(abs(u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.d.x, global1.b.x, -40314i), vec4<i32>(48925i, u_input.c.x, -643i, 26070i))), vec4<i32>(-21295i, 33713i, global1.b.x, -2147483647i) >> ((vec4<u32>(13871u, global1.a.x, arg_0.a.x, 0u) | vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u)) % vec4<u32>(32u)), vec4<bool>(select(false, false, false), all(vec4<bool>(true, true, false, false)), false, false)), -1i), ~countOneBits(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(Struct_4(_wgslsmith_mult_i32(2147483647i, global1.b.x)), vec2<u32>(global1.a.x, ~u_input.e | ~global1.a.x), u_input.e));
    let var_1 = var_0;
    global1 = Struct_3(~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, 4294967295u), select(var_1.c.yx, vec2<u32>(0u, u_input.a), false)), func_5(Struct_3(vec2<u32>(global1.a.x, u_input.a), var_1.d.a.zwy)).c.yx), var_0.d.a.zxx);
    global3 = array<Struct_4, 2>();
    let var_2 = _wgslsmith_sub_vec4_i32(~min(_wgslsmith_div_vec4_i32(u_input.c, var_0.d.a), vec4<i32>(global1.b.x, 35499i, 16173i, global0.a)), u_input.c) ^ vec4<i32>(func_1(Struct_4(_wgslsmith_clamp_i32(-19237i, u_input.d.x, 43252i)), vec2<u32>(0u, var_1.c.x) << (var_0.c.yy % vec2<u32>(32u)), ~u_input.a).b.x, global0.a, func_3().x << (func_4(Struct_3(var_0.c.zz, vec3<i32>(global0.a, -25430i, -1i)), Struct_3(vec2<u32>(global1.a.x, 81546u), u_input.c.zyz), true, ~1u).x % 32u), _wgslsmith_sub_i32(global1.b.x, ~var_1.b));
    global0 = Struct_4(var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * func_5(Struct_3(var_0.c.xy, u_input.c.yyw)).a)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(20848u, var_1.c.x, max(4294967295u, 4294967295u), 11651u), vec4<u32>(54763u | var_1.e, reverseBits(7415u), 19006u, ~var_0.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 311f) - vec2<f32>(494f, var_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1573f - _wgslsmith_f_op_f32(max(448f, _wgslsmith_f_op_f32(floor(-1210f)))))));
}

