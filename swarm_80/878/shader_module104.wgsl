struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<u32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<bool>,
    e: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(428f, 432f), vec2<f32>(560f, -759f), vec2<f32>(-1000f, -619f), vec2<f32>(668f, 1000f), vec2<f32>(-1477f, -1161f), vec2<f32>(-1000f, 1000f), vec2<f32>(459f, -1900f));

var<private> global2: vec4<f32>;

var<private> global3: array<u32, 31>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4) -> i32 {
    global3 = array<u32, 31>();
    global0 = Struct_2(reverseBits(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(~(4294967295u | global3[_wgslsmith_index_u32(u_input.b, 31u)]), 31u)], 31u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(810f, -1683f, 281f, arg_0.c.e.x))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(260f, arg_0.c.e.x, -591f, global2.x)))))), u_input.c.x, u_input.c, arg_0.c);
    let var_0 = Struct_3(Struct_2(arg_0.a.x | ~global0.e.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(1125f, _wgslsmith_f_op_f32(-global0.e.e.x), -1543f, _wgslsmith_f_op_f32(sign(arg_0.c.e.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.c.e.x, -610f, -211f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, -729f, 870f, 520f), vec4<f32>(arg_0.c.e.x, 680f, 951f, 1242f), vec4<bool>(false, global0.e.d, false, arg_0.d.x))))), 17255i >> (arg_0.c.c.x % 32u), arg_0.c.b.xzz, arg_0.c), !select(select(!arg_0.d, !arg_0.d, any(vec2<bool>(false, global0.e.a))), arg_0.d, vec3<bool>(true, all(arg_0.d.yz), false)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.e.c.x, global0.e.c.x), global0.e.c.yx), arg_0.c.c.x), global0.e.c.zyx), global0.e.c.xwz, firstTrailingBit(~(global0.e.c.wzx | global0.e.c.zzw))), Struct_1(all(!select(vec3<bool>(true, true, global0.e.d), arg_0.d, arg_0.d)), vec4<i32>(1i, -2147483647i, -1138i, firstTrailingBit(abs(1i))), ~(~arg_0.c.c | vec4<u32>(0u, global3[_wgslsmith_index_u32(global0.e.c.x, 31u)], 0u, global0.e.c.x)), any(select(!vec4<bool>(false, arg_0.c.d, true, false), vec4<bool>(false, true, true, true), select(vec4<bool>(false, global0.e.d, arg_0.c.a, true), vec4<bool>(arg_0.d.x, global0.e.a, arg_0.c.a, global0.e.a), vec4<bool>(false, global0.e.a, global0.e.a, true)))), arg_0.c.e));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(817f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.e.x) + _wgslsmith_f_op_f32(exp2(global2.x))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x)))))));
    let var_2 = ~global0.e.c.zy;
    return -_wgslsmith_add_i32(~u_input.c.x, ~_wgslsmith_mult_i32(select(arg_0.c.b.x, -64779i, true), global0.c));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> vec4<bool> {
    var var_0 = max(abs(u_input.a), arg_2.d.b.x);
    let var_1 = global0.e.b;
    var var_2 = abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, ~func_3(Struct_4(arg_1.d.c.zy, arg_1.a.e.b, arg_1.d, arg_1.b, -18669i)), arg_2.d.b.x, -u_input.a), max(global0.e.b, ~(arg_2.d.b >> (vec4<u32>(52392u, arg_3, 66805u, arg_1.d.c.x) % vec4<u32>(32u))))));
    global0 = arg_1.a;
    var var_3 = Struct_3(arg_2.a, select(!vec3<bool>(arg_1.b.x, !arg_0.x, true), arg_1.b, !vec3<bool>(arg_0.x, arg_1.d.a && true, !global0.e.a)), vec3<u32>(_wgslsmith_add_u32(~firstTrailingBit(global3[_wgslsmith_index_u32(u_input.b, 31u)]), firstLeadingBit(~arg_2.c.x)), reverseBits(_wgslsmith_dot_vec3_u32(reverseBits(arg_1.a.e.c.yxy), abs(vec3<u32>(982u, 53954u, 42979u)))), arg_1.c.x), Struct_1((true || (var_2.x < arg_2.a.c)) && true, arg_1.a.e.b, (global0.e.c ^ _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, arg_2.d.c.x, u_input.b), vec4<u32>(u_input.b, global3[_wgslsmith_index_u32(49965u, 31u)], 52866u, 4294967295u))) << (vec4<u32>(7739u, global3[_wgslsmith_index_u32(0u, 31u)], ~75970u, ~0u) % vec4<u32>(32u)), !arg_1.a.e.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_1.d.e))), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.d.e.x)), _wgslsmith_div_f32(arg_2.d.e.x, -1350f), _wgslsmith_f_op_f32(max(-973f, arg_2.a.b.x)), 156f))));
    return select(!vec4<bool>(!(!arg_1.a.e.a), true, true, true), vec4<bool>(!global0.e.d, true, global0.e.a == !(!arg_1.a.e.d), true), arg_0.x);
}

fn func_4(arg_0: vec4<bool>) -> Struct_4 {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(global0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, 496f, global0.e.e.x, global0.b.x))), -10388i != -max(u_input.c.x, global0.c))) - global0.e.e);
    var var_0 = false;
    return Struct_4(vec2<u32>(_wgslsmith_div_u32(u_input.b, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 52531u, 4294967295u), global0.e.c.wxy))), 88221u | _wgslsmith_clamp_u32(~global3[_wgslsmith_index_u32(50933u, 31u)], ~4294967295u, ~0u)), vec4<i32>(global0.c, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.e.b.x, global0.d.x, global0.e.b.x, -2147483647i), vec4<i32>(-18325i, 3227i, u_input.c.x, global0.d.x)), global0.e.b), _wgslsmith_dot_vec3_i32(u_input.c, _wgslsmith_mod_vec3_i32(-global0.e.b.yyx, vec3<i32>(global0.e.b.x, -11653i, 16993i))), -1i), Struct_1(any(!arg_0), -vec4<i32>(-2147483647i, -global0.e.b.x, global0.c, select(u_input.c.x, global0.e.b.x, false)), min(vec4<u32>(4294967295u ^ global3[_wgslsmith_index_u32(global0.a, 31u)], ~u_input.b, 1u, u_input.b), global0.e.c), global0.e.a && any(arg_0), global0.b), arg_0.wxx, -2147483647i);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: f32) -> Struct_4 {
    return func_4(select(!func_2(arg_0.b.zy, arg_0, arg_0, ~global3[_wgslsmith_index_u32(arg_0.d.c.x, 31u)]), select(select(vec4<bool>(arg_0.b.x, false, false, arg_0.a.e.d), select(vec4<bool>(true, arg_0.a.e.d, false, arg_0.a.e.a), vec4<bool>(global0.e.a, false, arg_0.d.d, arg_0.b.x), vec4<bool>(arg_0.a.e.a, false, arg_0.d.a, false)), true), select(!vec4<bool>(arg_0.b.x, global0.e.d, arg_0.a.e.a, true), vec4<bool>(arg_0.d.d, false, arg_0.b.x, true), false), !vec4<bool>(arg_0.a.e.d, true, global0.e.a, global0.e.d)), select(vec4<bool>(any(arg_0.b.xy), arg_0.d.d, true, any(vec4<bool>(false, false, false, false))), func_2(select(vec2<bool>(arg_0.b.x, arg_0.d.d), arg_0.b.yz, vec2<bool>(arg_0.d.d, false)), Struct_3(Struct_2(global3[_wgslsmith_index_u32(0u, 31u)], arg_0.d.e, -19061i, arg_0.d.b.xwy, Struct_1(true, vec4<i32>(0i, arg_0.a.c, arg_2.x, arg_0.a.d.x), arg_0.d.c, global0.e.a, arg_0.a.b)), arg_0.b, vec3<u32>(15020u, 50745u, 0u), arg_0.a.e), Struct_3(Struct_2(4294967295u, vec4<f32>(global2.x, 638f, arg_1.x, global0.e.e.x), -78022i, arg_0.a.d, Struct_1(global0.e.d, vec4<i32>(-7714i, -2147483647i, u_input.a, -1i), vec4<u32>(global0.a, 27414u, u_input.b, 1u), false, global0.e.e)), vec3<bool>(arg_0.a.e.d, true, false), vec3<u32>(38495u, u_input.b, arg_0.c.x), arg_0.d), ~51920u), vec4<bool>(!arg_0.b.x, true, true, arg_0.b.x | false))));
}

fn func_5(arg_0: Struct_4) -> bool {
    global1 = array<vec2<f32>, 7>();
    global2 = _wgslsmith_div_vec4_f32(global0.e.e, _wgslsmith_f_op_vec4_f32(select(global0.e.e, arg_0.c.e, !arg_0.c.a)));
    var var_0 = Struct_5(Struct_2(36685u, vec4<f32>(arg_0.c.e.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-arg_0.c.e.x), true)), 1551f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(420f - global0.e.e.x))), -arg_0.b.x, ~vec3<i32>(_wgslsmith_mod_i32(2147483647i, -10252i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.e.b.x, -60476i, arg_0.b.x), vec3<i32>(-82156i, -41762i, 2476i)), -4360i), arg_0.c), !func_1(Struct_3(Struct_2(global0.e.c.x, global0.e.e, 43906i, arg_0.c.b.xwx, Struct_1(arg_0.d.x, global0.e.b, global0.e.c, false, vec4<f32>(global0.b.x, 1000f, -856f, -1418f))), vec3<bool>(global0.e.d, false, arg_0.d.x), vec3<u32>(36472u, 47019u, global0.a), Struct_1(arg_0.c.a, global0.e.b, arg_0.c.c, true, global0.b)), vec3<f32>(arg_0.c.e.x, _wgslsmith_f_op_f32(-1046f * -1052f), arg_0.c.e.x), vec3<i32>(-2147483647i, countOneBits(0i), -40690i & arg_0.c.b.x), _wgslsmith_f_op_f32(arg_0.c.e.x - _wgslsmith_f_op_f32(728f * -251f))).d, Struct_3(Struct_2(~19160u, _wgslsmith_f_op_vec4_f32(min(arg_0.c.e, vec4<f32>(-560f, arg_0.c.e.x, global2.x, arg_0.c.e.x))), u_input.c.x, _wgslsmith_add_vec3_i32(select(vec3<i32>(-15619i, -2147483647i, -2147483647i), vec3<i32>(-35439i, arg_0.c.b.x, u_input.a), arg_0.d), -vec3<i32>(-30115i, global0.d.x, u_input.a)), arg_0.c), arg_0.d, arg_0.c.c.zzx, Struct_1(all(func_2(vec2<bool>(false, false), Struct_3(Struct_2(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6132u, 31u)], 31u)], vec4<f32>(-1721f, 1971f, 244f, 1156f), global0.e.b.x, vec3<i32>(31680i, 0i, global0.d.x), Struct_1(true, vec4<i32>(2147483647i, -1i, 13707i, global0.e.b.x), vec4<u32>(4294967295u, 1u, 53187u, global0.a), global0.e.a, global0.e.e)), arg_0.d, arg_0.c.c.ywz, arg_0.c), Struct_3(Struct_2(u_input.b, global0.e.e, -27724i, vec3<i32>(global0.c, arg_0.c.b.x, 2147483647i), arg_0.c), arg_0.d, arg_0.c.c.yyw, Struct_1(false, vec4<i32>(21295i, 0i, -7595i, 49677i), global0.e.c, global0.e.a, vec4<f32>(-375f, arg_0.c.e.x, -524f, arg_0.c.e.x))), arg_0.c.c.x)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -22722i, u_input.a, arg_0.c.b.x), arg_0.b), arg_0.c.c, global0.e.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(655f, 757f, -683f, -1307f) + _wgslsmith_f_op_vec4_f32(global0.e.e - vec4<f32>(global2.x, -1339f, arg_0.c.e.x, global2.x))))));
    global1 = array<vec2<f32>, 7>();
    global3 = array<u32, 31>();
    return !global0.e.a;
}

fn func_6(arg_0: bool, arg_1: vec4<i32>, arg_2: u32, arg_3: bool) -> Struct_4 {
    global1 = array<vec2<f32>, 7>();
    let var_0 = vec4<bool>(false, any(vec4<bool>(false, arg_3, arg_0, -895f < _wgslsmith_f_op_f32(-global2.x))), all(func_1(Struct_3(Struct_2(0u, vec4<f32>(global2.x, -1017f, 328f, -698f), global0.e.b.x, vec3<i32>(global0.d.x, 42126i, u_input.a), Struct_1(false, arg_1, global0.e.c, arg_3, global0.e.e)), vec3<bool>(true, global0.e.a, true), reverseBits(vec3<u32>(41845u, 1u, 1u)), Struct_1(arg_0, vec4<i32>(u_input.a, global0.d.x, 34049i, -1i), global0.e.c, true, global0.e.e)), global0.b.yyx, vec3<i32>(-19027i, arg_1.x, 33434i >> (global3[_wgslsmith_index_u32(471u, 31u)] % 32u)), -296f).d.xz), all(select(!vec4<bool>(false, arg_3, false, global0.e.a), func_2(vec2<bool>(true, true), Struct_3(Struct_2(4294967295u, global0.b, u_input.a, global0.e.b.yyy, Struct_1(true, vec4<i32>(global0.e.b.x, global0.d.x, global0.c, u_input.c.x), global0.e.c, true, vec4<f32>(726f, -1000f, -820f, global2.x))), vec3<bool>(arg_0, false, arg_0), global0.e.c.yxy, Struct_1(arg_0, vec4<i32>(1i, global0.c, arg_1.x, arg_1.x), global0.e.c, arg_0, vec4<f32>(global0.b.x, global2.x, global2.x, global0.e.e.x))), Struct_3(Struct_2(arg_2, vec4<f32>(global2.x, -146f, -703f, -1035f), global0.e.b.x, vec3<i32>(-1i, 2147483647i, arg_1.x), Struct_1(false, vec4<i32>(global0.e.b.x, -61713i, 27595i, arg_1.x), vec4<u32>(global0.a, 39021u, 52440u, 14073u), global0.e.d, global0.e.e)), vec3<bool>(true, false, arg_3), vec3<u32>(global3[_wgslsmith_index_u32(1u, 31u)], u_input.b, 1u), Struct_1(false, vec4<i32>(-1i, u_input.c.x, arg_1.x, -55810i), global0.e.c, global0.e.a, vec4<f32>(-1000f, global0.b.x, global2.x, global0.e.e.x))), ~60518u), any(func_1(Struct_3(Struct_2(4294967295u, vec4<f32>(global0.b.x, -1143f, 1203f, global2.x), -2147483647i, u_input.c, Struct_1(true, vec4<i32>(-38894i, global0.d.x, u_input.a, u_input.c.x), vec4<u32>(22495u, global0.a, u_input.b, u_input.b), false, vec4<f32>(global0.e.e.x, global2.x, global2.x, 1000f))), vec3<bool>(true, arg_3, true), vec3<u32>(u_input.b, global0.e.c.x, arg_2), global0.e), vec3<f32>(-845f, -2140f, -631f), global0.d, 539f).d.zy))));
    global3 = array<u32, 31>();
    let var_1 = Struct_4(reverseBits(_wgslsmith_sub_vec2_u32(~(global0.e.c.zy | vec2<u32>(4294967295u, arg_2)), global0.e.c.yz)), vec4<i32>(global0.e.b.x | select(1i, -1i, true), -1i, select(u_input.c.x, ~(-2147483647i), !any(vec2<bool>(arg_0, var_0.x))), -1i), global0.e, var_0.xwx, func_3(Struct_4(~global0.e.c.xw, arg_1, Struct_1(true, global0.e.b, vec4<u32>(4294967295u, 4294967295u, global3[_wgslsmith_index_u32(arg_2, 31u)], global0.e.c.x), arg_3 | true, global0.b), vec3<bool>(false, true, arg_3), func_3(func_4(var_0)))));
    global1 = array<vec2<f32>, 7>();
    return Struct_4(~global0.e.c.zy >> (max(min(vec2<u32>(1u, global0.a), var_1.a), vec2<u32>(23960u, 1u)) % vec2<u32>(32u)), global0.e.b, func_4(var_0).c, select(select(select(!vec3<bool>(false, false, arg_3), !vec3<bool>(global0.e.a, global0.e.a, arg_3), var_1.d), !(!var_1.d), !arg_0), var_1.d, all(func_2(!var_1.d.yx, Struct_3(Struct_2(0u, var_1.c.e, u_input.a, vec3<i32>(global0.e.b.x, 2147483647i, -1i), global0.e), var_1.d, var_1.c.c.zwy, Struct_1(var_1.d.x, var_1.c.b, vec4<u32>(4294967295u, 0u, 8957u, var_1.c.c.x), var_1.d.x, var_1.c.e)), Struct_3(Struct_2(1u, vec4<f32>(-410f, global0.b.x, 1156f, 829f), 24873i, vec3<i32>(var_1.e, arg_1.x, global0.e.b.x), global0.e), var_0.wzy, var_1.c.c.xxy, global0.e), _wgslsmith_clamp_u32(0u, global3[_wgslsmith_index_u32(4726u, 31u)], 62675u)))), 2500i);
}

fn func_7(arg_0: Struct_4, arg_1: f32) -> Struct_3 {
    var var_0 = -1i;
    let var_1 = 12051i << (_wgslsmith_div_u32(global3[_wgslsmith_index_u32(select(global0.a, 37489u, global0.e.d), 31u)], min(1u, countOneBits(22979u)) & (~global3[_wgslsmith_index_u32(u_input.b, 31u)] >> ((global3[_wgslsmith_index_u32(u_input.b, 31u)] & global3[_wgslsmith_index_u32(1u, 31u)]) % 32u))) % 32u);
    var var_2 = global0.e.d;
    var var_3 = func_6(true, global0.e.b, firstLeadingBit(_wgslsmith_clamp_u32(abs(0u) & global3[_wgslsmith_index_u32(~38975u, 31u)], 4253u, ~(~global3[_wgslsmith_index_u32(0u, 31u)]))), true).c;
    var var_4 = Struct_3(Struct_2(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(~0u, 31u)], global0.e.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(-global2.x), 476f, arg_0.c.e.x) - arg_0.c.e), firstTrailingBit(func_6(false, var_3.b, 4294967295u, var_3.a).c.b.x | -28978i), ~(-vec3<i32>(var_3.b.x, 1i, u_input.a)), global0.e), arg_0.d, vec3<u32>(~21575u, ~select(reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 31u)], 31u)]), 4294967295u, true), var_3.c.x), Struct_1(var_3.d, arg_0.c.b, var_3.c, false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -1938f, 554f)))));
    return Struct_3(var_4.a, arg_0.d, ~((vec3<u32>(0u, 0u, 3600u) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, arg_0.c.c.x, global3[_wgslsmith_index_u32(global0.a, 31u)]), var_4.d.c.yyz)) | vec3<u32>(~var_3.c.x, ~1u, _wgslsmith_add_u32(var_3.c.x, global3[_wgslsmith_index_u32(19281u, 31u)]))), func_4(vec4<bool>(true, var_3.d && true, false, func_2(vec2<bool>(false, true), Struct_3(Struct_2(global3[_wgslsmith_index_u32(u_input.b, 31u)], vec4<f32>(-999f, 404f, 582f, -976f), -56269i, var_3.b.yyy, Struct_1(false, vec4<i32>(-72087i, var_3.b.x, 0i, -21411i), vec4<u32>(var_4.c.x, arg_0.c.c.x, global3[_wgslsmith_index_u32(u_input.b, 31u)], 61660u), true, var_4.d.e)), var_4.b, vec3<u32>(50865u, 3703u, 31681u), Struct_1(true, vec4<i32>(-2147483647i, -2147483647i, -4321i, var_3.b.x), vec4<u32>(1u, 0u, var_3.c.x, global0.e.c.x), var_4.d.a, vec4<f32>(var_3.e.x, arg_1, -1403f, 644f))), Struct_3(var_4.a, vec3<bool>(false, arg_0.d.x, false), var_3.c.zzw, Struct_1(arg_0.d.x, vec4<i32>(-14639i, -1i, 2147483647i, -1i), global0.e.c, true, vec4<f32>(-1039f, arg_1, global2.x, arg_0.c.e.x))), abs(u_input.b)).x)).c);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 31>();
    global3 = array<u32, 31>();
    let var_0 = func_7(func_6(!func_5(func_1(Struct_3(Struct_2(0u, vec4<f32>(1057f, global2.x, 1137f, global0.e.e.x), global0.d.x, u_input.c, global0.e), vec3<bool>(global0.e.a, false, global0.e.d), global0.e.c.wyz, global0.e), vec3<f32>(global2.x, 592f, 1515f), vec3<i32>(global0.d.x, -214i, 2147483647i), 667f)), _wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(global0.e.b, vec4<i32>(u_input.a, u_input.a, 0i, global0.c)), global0.e.b), _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, global3[_wgslsmith_index_u32(78795u, 31u)], global3[_wgslsmith_index_u32(global0.a, 31u)]), vec4<u32>(0u, u_input.b, global3[_wgslsmith_index_u32(8474u, 31u)], u_input.b)), ~global0.a), global0.e.d), _wgslsmith_f_op_f32(abs(global2.x)));
    var var_1 = vec4<u32>(47416u, var_0.d.c.x ^ select(firstLeadingBit(50477u), global3[_wgslsmith_index_u32(abs(0u), 31u)], var_0.a.e.a), ~reverseBits(~_wgslsmith_div_u32(global0.a, 0u)), min(0u, ~select(71016u, 749u, var_0.b.x) >> (abs(1u) % 32u)));
    global2 = global0.e.e;
    let var_2 = firstLeadingBit(~vec2<u32>(max(var_0.c.x, 4294967295u), u_input.b));
    global3 = array<u32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_sub_u32(~(~4294967295u), var_0.c.x | abs(99638u)), ~u_input.b), ~var_0.d.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, func_7(func_4(vec4<bool>(true, global0.e.a, var_0.b.x, true)), global2.x).d.e.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(global0.b.zwz, var_0.d.e.wzy))))), global0.e.e.xyx, select(vec3<bool>(var_0.a.e.a, true, var_0.a.e.d), vec3<bool>(global0.e.d, true, 1u < global3[_wgslsmith_index_u32(u_input.b, 31u)]), var_0.b))), firstTrailingBit(2894u));
}

