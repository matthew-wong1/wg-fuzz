struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_5, 23>;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec2<i32>(451i, i32(-2147483648)), vec4<u32>(38928u, 0u, 4294967295u, 0u), -16992i), Struct_1(vec2<i32>(2147483647i, 1i), vec4<u32>(17774u, 16851u, 75305u, 0u), -39236i), Struct_1(vec2<i32>(-32251i, 39177i), vec4<u32>(0u, 0u, 0u, 1u), i32(-2147483648)), 0i, vec4<bool>(false, true, false, false));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> Struct_1 {
    return Struct_1(global2.a.a, select(vec4<u32>(u_input.e.x, 69654u, 101137u, 107023u & u_input.a.x), u_input.a, global2.e.x) | _wgslsmith_mod_vec4_u32(u_input.a, ~(vec4<u32>(u_input.a.x, u_input.d, global2.c.b.x, 51755u) & global2.b.b)), abs(36870i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> vec2<u32> {
    global1 = array<Struct_5, 23>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-999f, -1000f, -933f, -1944f), vec4<f32>(1839f, 1385f, -1116f, 1717f))), vec4<f32>(-597f, 493f, 838f, -573f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(798f, -946f, 1036f, 201f) + vec4<f32>(1838f, -1390f, -364f, 216f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-729f, -1171f, 1158f, 1000f)))))), all(global2.e)));
    let var_1 = global2.a.b;
    var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1462f - 1876f), _wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(round(-591f)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(282f + 1000f))), var_0.x), _wgslsmith_f_op_f32(331f * -350f), _wgslsmith_f_op_f32(max(var_0.x, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-1193f * 1106f), _wgslsmith_f_op_f32(-var_0.x), var_0.x)))));
    let var_2 = reverseBits(u_input.e.x);
    return vec2<u32>(0u, var_1.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = firstLeadingBit(u_input.b);
    global0 = 4294967295u;
    var var_1 = 1630f;
    let var_2 = ~firstLeadingBit(arg_1.b.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-2030f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(173f, -975f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-136f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1853f))), vec4<f32>(_wgslsmith_f_op_f32(abs(326f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -320f), 1f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -707f))));
    return Struct_1(arg_0.zz, ~reverseBits(vec4<u32>(76613u, arg_1.b.x, global2.a.b.x, 30711u)) | ~func_2().b, 65204i);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: bool) -> u32 {
    var var_0 = Struct_3(func_2(), func_2(), global2.a, 37905i, arg_0.e);
    let var_1 = func_4(_wgslsmith_mult_vec3_i32(~_wgslsmith_clamp_vec3_i32(max(vec3<i32>(2147483647i, u_input.c, arg_1.x), vec3<i32>(-29921i, global2.d, arg_1.x)), vec3<i32>(1i, 13929i, -1i) & vec3<i32>(var_0.d, global2.b.a.x, 29001i), countOneBits(vec3<i32>(arg_0.b.c, 0i, -2147483647i))), ~(_wgslsmith_div_vec3_i32(vec3<i32>(global2.d, 12439i, var_0.b.c), vec3<i32>(-16690i, -26727i, global2.b.a.x)) | vec3<i32>(arg_1.x, global2.d, arg_0.c.c))), Struct_4(global2.a.a ^ min(arg_0.b.a, vec2<i32>(global2.b.c, u_input.c) ^ vec2<i32>(var_0.c.c, 8610i)), func_3(global2.e.zyz, Struct_2(~var_0.b.b.x, arg_0.b.a.x, _wgslsmith_div_u32(23815u, arg_0.b.b.x))), vec4<bool>(!(!arg_2), arg_1.x != _wgslsmith_dot_vec2_i32(var_0.c.a, u_input.b), true, !(!arg_2))));
    let var_2 = ~(-vec4<i32>(func_2().a.x, -var_1.a.x, abs(~var_1.a.x), abs(var_0.b.a.x)));
    var var_3 = Struct_2(_wgslsmith_clamp_u32(global2.a.b.x, ~(~global2.a.b.x), u_input.a.x), -min(var_1.a.x, abs(0i) ^ min(arg_0.b.a.x, -1i)), 14213u | ~_wgslsmith_sub_u32(arg_0.a.b.x ^ var_1.b.x, 12916u));
    var var_4 = global1[_wgslsmith_index_u32(select(arg_0.b.b.x, 165667u, all(vec2<bool>(any(!vec3<bool>(arg_2, false, global2.e.x)), false))), 23u)];
    return _wgslsmith_sub_u32(u_input.e.x, _wgslsmith_clamp_u32(abs(arg_0.a.b.x & 49737u), func_3(vec3<bool>(global2.e.x, true, true), Struct_2(var_0.c.b.x, var_0.c.a.x | -36558i, ~arg_0.a.b.x)).x, 4294967295u));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: u32) -> vec2<i32> {
    var var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(-reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.a.c, 2310i, global2.a.c), vec3<i32>(-94250i, u_input.c, u_input.c))), -_wgslsmith_mult_vec3_i32(vec3<i32>(49421i, global2.c.a.x, 2147483647i) >> (global2.a.b.zyx % vec3<u32>(32u)), -vec3<i32>(u_input.b.x, global2.d, u_input.c))), vec3<i32>(-_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(33860i, global2.d, 1i), vec3<i32>(global2.a.c, -47207i, u_input.b.x)), vec3<i32>(global2.d, u_input.b.x, u_input.b.x) | vec3<i32>(1i, -1i, global2.b.a.x)), global2.c.c, -1i));
    let var_1 = firstLeadingBit(u_input.c);
    var var_2 = max(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -var_0.x, var_1 << (arg_2 % 32u)), ~(vec3<i32>(-1i, 46819i, u_input.b.x) << (global2.c.b.wxy % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, 65382i, global2.a.a.x), vec3<i32>(35425i, -14229i, u_input.c), vec3<i32>(var_1, 2147483647i, 5740i)), firstLeadingBit(vec3<i32>(-1i, 0i, var_0.x))))), _wgslsmith_mod_vec3_i32((vec3<i32>(var_0.x, u_input.c, -1i) >> (_wgslsmith_div_vec3_u32(global2.c.b.zyx, u_input.a.yyx) % vec3<u32>(32u))) | vec3<i32>(~var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0.x, var_1, u_input.c), vec4<i32>(-2147483647i, -2147483647i, -10759i, 1i)), ~global2.d), ~(~_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_1, 0i), vec3<i32>(43688i, var_1, var_1)))));
    var var_3 = select(!arg_0.zxy, !global2.e.xxw, !(!arg_0.zzx));
    global2 = Struct_3(global2.c, global2.c, global2.c, 1i << (1u % 32u), global2.e);
    return vec2<i32>(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(-2147483647i, var_1, -9092i, -8000i)), -min(vec4<i32>(-10720i, 37672i, 8093i, -1i), vec4<i32>(-1824i, 0i, u_input.c, -1i))) & 2227i, firstTrailingBit(34724i));
}

fn func_6(arg_0: vec2<i32>, arg_1: f32) -> bool {
    var var_0 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, func_2().b.x, _wgslsmith_sub_u32(global2.b.b.x, 1u)), abs(~vec3<u32>(73685u, 3786u, 0u))), 1u, global2.b.b.x);
    global2 = Struct_3(func_4(vec3<i32>(-1i, -func_5(global2.e, vec4<f32>(arg_1, arg_1, arg_1, -773f), 77644u).x, func_2().a.x), Struct_4(_wgslsmith_mult_vec2_i32(u_input.b, abs(global2.a.a)), vec2<u32>(u_input.e.x, _wgslsmith_div_u32(0u, global2.b.b.x)), vec4<bool>(global2.e.x, any(global2.e), any(global2.e.wzy), u_input.c < arg_0.x))), func_2(), global2.a, u_input.b.x, select(vec4<bool>(1205f == _wgslsmith_f_op_f32(sign(-243f)), false, true, global2.e.x), vec4<bool>(false, true, any(vec2<bool>(true, global2.e.x)), true), global2.e));
    let var_1 = Struct_2(0u, -2147483647i, ~_wgslsmith_mult_u32(4615u, countOneBits(~u_input.e.x)));
    global1 = array<Struct_5, 23>();
    var var_2 = !(!vec4<bool>(any(!global2.e.wxz), false, true | (true | global2.e.x), false));
    return var_2.x;
}

fn func_7(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_4, arg_3: Struct_4) -> vec2<bool> {
    global0 = ~((37321u | u_input.e.x) ^ 4294967295u);
    global0 = u_input.d;
    global0 = countOneBits(58188u) & arg_3.b.x;
    global1 = array<Struct_5, 23>();
    let var_0 = Struct_4(~vec2<i32>(i32(-1i) * -2147483647i, global2.c.c ^ (arg_2.a.x ^ 1i)), arg_3.b | select(u_input.e, select(global2.a.b.yy, _wgslsmith_add_vec2_u32(arg_3.b, global2.c.b.yx), vec2<bool>(global2.e.x, true)), vec2<bool>(global2.a.a.x > arg_3.a.x, true)), vec4<bool>(arg_1, func_6(vec2<i32>(~arg_3.a.x, ~0i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1775f), 460f))), !global2.e.x, arg_2.c.x));
    return vec2<bool>(arg_2.c.x, true | (all(select(global2.e.xyy, arg_2.c.wxw, false)) != (any(arg_2.c) | global2.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(vec4<i32>(_wgslsmith_div_i32(reverseBits(u_input.b.x), global2.a.a.x), _wgslsmith_add_i32(abs(global2.a.c << (u_input.d % 32u)), 17294i), _wgslsmith_clamp_i32(-(-1i ^ global2.c.a.x), global2.d, global2.a.c), -4667i), func_6(func_5(global2.e, _wgslsmith_div_vec4_f32(vec4<f32>(-3097f, -1488f, 564f, -191f), vec4<f32>(313f, -1111f, -374f, -1000f)), _wgslsmith_mod_u32(global2.c.b.x, func_1(Struct_3(Struct_1(vec2<i32>(-37361i, u_input.b.x), vec4<u32>(global2.c.b.x, global2.a.b.x, u_input.e.x, 0u), -42618i), global2.b, global2.c, global2.b.c, vec4<bool>(true, global2.e.x, false, true)), global2.a.a, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1973f * 736f), -929f)) * -746f)), Struct_4(global2.c.a, vec2<u32>(select(~556u, ~u_input.d, global2.e.x), u_input.a.x), vec4<bool>(!(true || global2.e.x), all(!global2.e), global2.e.x, true)), Struct_4(~(~countOneBits(vec2<i32>(global2.d, u_input.c))), global2.b.b.zw, vec4<bool>(!(true || global2.e.x), any(global2.e), any(!vec3<bool>(global2.e.x, true, global2.e.x)), any(global2.e))));
    var var_1 = ~(~global2.a.b << ((_wgslsmith_mod_vec4_u32(u_input.a, u_input.a) >> (abs(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_0 = global2.e.yw;
    let var_2 = var_0.x;
    global1 = array<Struct_5, 23>();
    let var_3 = select(!select(!(!vec4<bool>(var_0.x, var_0.x, global2.e.x, var_0.x)), global2.e, !global2.e), global2.e, global2.e);
    var var_4 = abs(global2.c.b | (u_input.a >> (countOneBits(vec4<u32>(u_input.e.x, 1u, 0u, 1u)) % vec4<u32>(32u))));
    global0 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(select(~vec2<u32>(31944u, 0u), u_input.e, !global2.e.x), _wgslsmith_mult_vec2_u32(var_4.yw, _wgslsmith_mod_vec2_u32(min(var_1.zw, global2.a.b.xx), _wgslsmith_mod_vec2_u32(vec2<u32>(16174u, 85128u), var_4.zw)))), 14043i, -_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b.x, 1i, u_input.c, -7752i), vec4<i32>(global2.c.a.x, global2.b.c, u_input.c, u_input.c), global2.e), vec4<i32>(119984i, u_input.b.x, 1i, global2.b.c) ^ vec4<i32>(2147483647i, -32961i, -2147483647i, u_input.c))), _wgslsmith_f_op_f32(1486f + -1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-663f, -1000f)) + _wgslsmith_div_vec2_f32(vec2<f32>(1989f, 337f), vec2<f32>(-585f, -216f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-980f, 556f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -615f))), select(!global2.e.ww, vec2<bool>(true, var_3.x), true)))));
}

