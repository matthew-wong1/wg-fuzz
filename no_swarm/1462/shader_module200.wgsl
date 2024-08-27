struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 8>;

var<private> global2: Struct_3;

var<private> global3: f32 = -898f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: bool) -> Struct_5 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global2.a)), global2.a)), _wgslsmith_div_f32(global2.b.a, 179f))), _wgslsmith_dot_vec3_u32(min(vec3<u32>(global2.b.b, 6132u, ~global2.b.b), select(vec3<u32>(1u, 108509u, 4294967295u) | vec3<u32>(45198u, 1u, global2.b.b), ~vec3<u32>(0u, u_input.c.x, 91376u), select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, false, arg_2)))), ~_wgslsmith_div_vec3_u32(vec3<u32>(global2.b.b, 0u, 426u), vec3<u32>(1u, global2.b.b, global2.b.b) ^ vec3<u32>(29535u, global2.b.b, u_input.a.x))), global2.b.c, _wgslsmith_sub_vec2_i32(min(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, 44487i), global2.b.d) & _wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], global1[_wgslsmith_index_u32(global2.b.b, 8u)]), global2.b.d), vec2<i32>(-35647i & u_input.b.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(19096u, 13868u, global2.b.b, u_input.c.x), vec4<u32>(global2.b.b, global2.b.b, global2.b.b, 0u)), 8u)])), vec2<i32>(_wgslsmith_dot_vec2_i32(-global2.b.c.zy, global2.b.d), ~(~u_input.b.x))));
    global1 = array<i32, 8>();
    return Struct_5(30536u, u_input.b);
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: Struct_4, arg_3: vec4<bool>) -> i32 {
    global0 = 1i;
    global3 = _wgslsmith_div_f32(1566f, _wgslsmith_f_op_f32(min(arg_2.a.a.a, -1120f)));
    let var_0 = arg_3.xyw;
    global3 = -487f;
    let var_1 = Struct_3(-1732f, Struct_1(-1225f, arg_0, u_input.b.zzz, countOneBits(select(min(arg_1.b.zy, global2.b.d), _wgslsmith_clamp_vec2_i32(global2.b.c.yy, vec2<i32>(-5267i, -30977i), u_input.b.ww), select(var_0.zy, arg_3.zw, false)))));
    return -50499i;
}

fn func_1() -> vec3<i32> {
    global1 = array<i32, 8>();
    let var_0 = global2.b.d.x;
    global0 = ((global1[_wgslsmith_index_u32(~(27065u >> (1u % 32u)), 8u)] | global2.b.d.x) | ~0i) ^ -69228i;
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, -1000f)))), -1248f);
    global0 = _wgslsmith_clamp_i32(-857i, global2.b.d.x, i32(-1i) * -func_3(global2.b.b | 4294967295u, func_2(vec3<f32>(1000f, 422f, global2.a), -1250f, false), Struct_4(Struct_2(global2.b, global2.b, vec4<u32>(u_input.a.x, u_input.a.x, 6462u, global2.b.b)), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], 14597i, global1[_wgslsmith_index_u32(47835u, 8u)])), vec4<bool>(true, false, false, false)));
    return _wgslsmith_div_vec3_i32(global2.b.c, ~vec3<i32>(max(-1i, u_input.b.x), global2.b.c.x, 2147483647i));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_5) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-1000f - -1893f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -233f)))), arg_1);
    let var_1 = Struct_4(Struct_2(var_0.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.a * global2.b.a) * _wgslsmith_div_f32(-357f, -450f)), 35335u, max(u_input.b.zyz | arg_2.b.xxx, select(u_input.b.xwx, u_input.b.yzy, vec3<bool>(arg_0, false, true))), ~(~global2.b.d)), vec4<u32>(~min(var_0.b.b, 4294967295u), u_input.a.x, _wgslsmith_mult_u32(max(99101u, 0u), func_2(vec3<f32>(var_0.a, arg_1.a, 671f), -603f, true).a), 1u)), -u_input.b.zyy);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1526f, var_1.a.b.a)), arg_1.a, any(select(vec4<bool>(true, arg_0, false, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, true, true, arg_0)))))));
    var var_3 = !any(select(!(!vec2<bool>(arg_0, true)), select(!vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), false), all(vec3<bool>(true, true, true))));
    let var_4 = !select(!vec3<bool>(true, arg_0, !arg_0), select(select(select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, true, true), false), select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, arg_0, true), false), true), !select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, true, true), true), true), false);
    return var_1;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec2<bool>) -> Struct_3 {
    global0 = ~firstTrailingBit(0i >> (func_4(true, Struct_1(380f, u_input.a.x, global2.b.c, u_input.b.yy), arg_1).a.b.b % 32u));
    global1 = array<i32, 8>();
    global1 = array<i32, 8>();
    var var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - -350f))) + _wgslsmith_f_op_f32(235f + _wgslsmith_f_op_f32(-arg_0.a.b.a))), func_4(arg_2.x, func_4(false, Struct_1(global2.a, 0u, vec3<i32>(arg_1.b.x, arg_1.b.x, arg_0.b.x), vec2<i32>(global1[_wgslsmith_index_u32(0u, 8u)], 0i)), Struct_5(arg_1.a, vec4<i32>(1279i, -8449i, global1[_wgslsmith_index_u32(1u, 8u)], arg_1.b.x))).a.a, Struct_5(max(u_input.a.x, 22574u), arg_1.b)).a.a.a), Struct_1(_wgslsmith_f_op_f32(global2.a + 497f), ~(~97908u), -(~vec3<i32>(29622i, global2.b.c.x, global1[_wgslsmith_index_u32(arg_1.a, 8u)])), ~(vec2<i32>(global2.b.c.x, global1[_wgslsmith_index_u32(1u, 8u)]) ^ min(global2.b.c.zx, arg_1.b.yx))));
    var var_1 = Struct_2(func_4(true, func_4(true, Struct_1(_wgslsmith_div_f32(global2.b.a, -1348f), func_2(vec3<f32>(arg_0.a.a.a, 827f, var_0.b.a), global2.a, arg_2.x).a, _wgslsmith_mod_vec3_i32(vec3<i32>(global2.b.c.x, 9587i, 25477i), arg_1.b.yxw), countOneBits(vec2<i32>(var_0.b.c.x, 18692i))), Struct_5(_wgslsmith_sub_u32(global2.b.b, 4294967295u), arg_1.b | u_input.b)).a.a, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.b.a, global2.b.a, var_0.a) + vec3<f32>(global2.a, 1000f, global2.a))), arg_0.a.a.a, false)).a.a, global2.b, vec4<u32>(_wgslsmith_add_u32(1u, select(arg_0.a.c.x, 0u & arg_1.a, true & arg_2.x)), 4294967295u, 0u, ~func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1842f, -862f, 133f)), _wgslsmith_f_op_f32(max(var_0.b.a, 1000f)), true).a));
    return Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-181f, _wgslsmith_f_op_f32(step(var_1.b.a, arg_0.a.a.a))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-630f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-208f - _wgslsmith_div_f32(arg_0.a.b.a, var_1.a.a)) + 1000f))), func_4(all(select(vec3<bool>(arg_2.x, true, true), select(vec3<bool>(arg_2.x, false, false), vec3<bool>(true, arg_2.x, arg_2.x), false), any(vec4<bool>(arg_2.x, arg_2.x, true, false)))), Struct_1(var_0.b.a, u_input.a.x >> (arg_0.a.b.b % 32u), vec3<i32>(~(-2147483647i), -26386i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(60133u, 8u)], u_input.b.x)), var_0.b.d), arg_1).a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    global0 = _wgslsmith_div_i32(global1[_wgslsmith_index_u32(~global2.b.b, 8u)], ~_wgslsmith_mult_i32(global2.b.d.x | ~(-15173i), global2.b.c.x));
    var_0 = u_input.a.x;
    var var_1 = ~(~global2.b.d.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(global2.a + 348f), 0u, -vec3<i32>(i32(-1i) * -1i, -global1[_wgslsmith_index_u32(~4294967295u, 8u)], _wgslsmith_add_i32(u_input.b.x, u_input.b.x) | -u_input.b.x), vec2<i32>(1i, u_input.b.x));
    global2 = func_5(func_4(true, Struct_1(-368f, 11463u, firstTrailingBit(func_1()), _wgslsmith_add_vec2_i32(func_1().xy, _wgslsmith_mult_vec2_i32(vec2<i32>(21695i, -1889i), vec2<i32>(-36209i, global2.b.d.x)))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, 709f, -269f))), _wgslsmith_div_f32(-614f, var_2.a), 1000f >= global2.b.a)), Struct_5(func_4(select(false, true, true), Struct_1(_wgslsmith_f_op_f32(step(-1863f, global2.a)), _wgslsmith_div_u32(u_input.c.x, var_2.b), vec3<i32>(4384i, 0i, -2147483647i) << (vec3<u32>(var_2.b, 37696u, 37246u) % vec3<u32>(32u)), vec2<i32>(-14409i, -1i)), Struct_5(50092u, vec4<i32>(2147483647i, global2.b.c.x, -2147483647i, u_input.b.x))).a.c.x, u_input.b), !vec2<bool>(false, all(vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(max(global2.b.b, 46393u), 8u)], _wgslsmith_mod_i32(-1i, -(~0i | global2.b.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1317f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - var_2.a)), -528f, global2.a)));
}

