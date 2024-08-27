struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_2, 1>;

var<private> global2: u32;

var<private> global3: array<vec2<f32>, 3>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec3<u32> {
    var var_0 = Struct_2(arg_1.a.x, Struct_1(select(select(select(vec3<bool>(arg_1.a.x, false, true), vec3<bool>(true, true, arg_1.a.x), arg_1.a), arg_1.a, arg_1.a.x & false), arg_1.a, !(!arg_1.a.x))), _wgslsmith_div_f32(158f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) * -441f)), vec4<i32>(-3912i, 28254i, -1i, ~1i));
    var var_1 = Struct_1(vec3<bool>(false, !any(var_0.b.a), true));
    let var_2 = global1[_wgslsmith_index_u32(~(~min(~arg_3, global0.x)), 1u)];
    global2 = min(~10872u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(max(vec3<u32>(arg_3, u_input.a.x, 23998u) & vec3<u32>(4294967295u, u_input.a.x, 6399u), ~vec3<u32>(u_input.a.x, u_input.a.x, 51955u)), vec3<u32>(u_input.a.x, u_input.a.x, 0u) << (_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, arg_3, global0.x), vec3<u32>(53473u, global0.x, 38421u)) % vec3<u32>(32u))), vec3<u32>(4294967295u, firstTrailingBit(global0.x), ~0u)));
    var var_3 = Struct_2(false, var_2.b, var_0.c, abs(var_2.d));
    return ~vec3<u32>(_wgslsmith_mod_u32(1u, u_input.a.x), _wgslsmith_sub_u32(4294967295u, u_input.a.x), _wgslsmith_mod_u32(19943u, max(u_input.a.x << (arg_3 % 32u), _wgslsmith_div_u32(u_input.a.x, arg_3))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_3 {
    let var_0 = arg_2.xxx >> (_wgslsmith_mod_vec3_u32(max(~func_3(u_input.a.x, Struct_1(vec3<bool>(false, arg_0.a, false)), arg_1.c, 2344u), vec3<u32>(global0.x ^ global0.x, 1u, ~39548u)), ~vec3<u32>(firstTrailingBit(9877u), min(4294967295u, 43484u), select(u_input.a.x, global0.x, false))) % vec3<u32>(32u));
    global1 = array<Struct_2, 1>();
    global3 = array<vec2<f32>, 3>();
    var var_1 = 1000f;
    let var_2 = Struct_2(true, Struct_1(arg_0.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c))), vec4<i32>(abs(-var_0.x), -1i, var_0.x, ~(arg_0.d.x << (u_input.a.x % 32u)) | _wgslsmith_clamp_i32(max(2147483647i, 26896i), firstTrailingBit(-33446i), arg_1.d.x)));
    return Struct_3(var_2.c, Struct_2(any(vec3<bool>(any(vec4<bool>(arg_1.b.a.x, true, false, false)), var_2.b.a.x, arg_1.b.a.x)), Struct_1(arg_0.b.a), var_2.c, ~select(arg_1.d, arg_1.d, vec4<bool>(true, arg_1.b.a.x, arg_1.b.a.x, true))), arg_0, u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-940f + _wgslsmith_f_op_f32(ceil(-185f))), _wgslsmith_f_op_f32(var_2.c * 2511f), arg_1.c));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = false;
    let var_1 = Struct_2(true, Struct_1(arg_1.c.b.a), -575f, arg_0);
    global1 = array<Struct_2, 1>();
    let var_2 = u_input.a.x;
    let var_3 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(func_3(4294967295u, var_1.b, -1000f, 64457u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, var_2, arg_1.d), vec3<u32>(20313u, arg_1.d, global0.x))), global0.x | ~4294967295u), func_3(global0.x, func_2(var_1, Struct_2(var_1.b.a.x, arg_2, -1344f, vec4<i32>(var_1.d.x, 1i, arg_1.c.d.x, -61683i)), select(arg_1.b.d, arg_3.d, vec4<bool>(false, arg_1.c.b.a.x, var_1.b.a.x, var_1.b.a.x))).b.b, func_2(Struct_2(false, var_1.b, arg_3.c, vec4<i32>(-1i, -26814i, arg_1.b.d.x, -44407i)), arg_1.c, arg_1.c.d).a, arg_1.d));
    return Struct_2(true, func_2(arg_1.b, func_2(global1[_wgslsmith_index_u32(arg_1.d, 1u)], arg_3, ~(vec4<i32>(1i, -2147483647i, var_1.d.x, arg_0.x) ^ vec4<i32>(arg_1.b.d.x, arg_0.x, arg_0.x, arg_0.x))).b, -abs(vec4<i32>(var_1.d.x, var_1.d.x, arg_0.x, arg_0.x))).c.b, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_3.c))))))), reverseBits(-var_1.d));
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    global3 = array<vec2<f32>, 3>();
    var var_0 = func_4(arg_1.b.d, func_2(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], Struct_2(arg_1.b.a, Struct_1(select(vec3<bool>(arg_1.c.b.a.x, arg_1.b.a, true), vec3<bool>(arg_1.c.b.a.x, true, arg_1.c.a), arg_1.b.b.a)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(ceil(arg_1.a)))), _wgslsmith_mod_vec4_i32(max(arg_1.c.d, arg_1.b.d), arg_1.c.d)), -(arg_1.c.d & (vec4<i32>(-1i, -1i, 0i, -7503i) | arg_1.b.d))), Struct_1(arg_1.c.b.a), arg_1.b).b;
    var var_1 = ~(~vec4<u32>(4294967295u, 4294967295u, max(abs(arg_1.d), ~16478u), u_input.a.x));
    let var_2 = arg_1.c;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(130f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(998f - _wgslsmith_f_op_f32(-arg_1.b.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_2.c))))))));
    return func_2(func_2(func_4(~firstTrailingBit(arg_1.b.d), arg_1, func_4(_wgslsmith_sub_vec4_i32(arg_1.b.d, vec4<i32>(-1i, var_2.d.x, var_2.d.x, var_2.d.x)), Struct_3(-887f, Struct_2(var_0.a.x, Struct_1(vec3<bool>(false, var_0.a.x, var_2.a)), -123f, arg_1.c.d), Struct_2(true, var_2.b, 330f, arg_1.c.d), var_1.x, vec4<f32>(var_2.c, var_3, var_2.c, 838f)), arg_1.c.b, var_2).b, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_1.x, arg_1.d), 1u)]), func_4(arg_1.b.d, Struct_3(_wgslsmith_div_f32(1217f, 1095f), Struct_2(var_0.a.x, var_2.b, arg_1.a, vec4<i32>(-4808i, 2147483647i, 14706i, -9726i)), func_2(Struct_2(var_0.a.x, var_2.b, var_2.c, var_2.d), Struct_2(arg_1.c.b.a.x, Struct_1(vec3<bool>(arg_1.c.a, false, true)), -1080f, vec4<i32>(var_2.d.x, -28599i, var_2.d.x, var_2.d.x)), vec4<i32>(5957i, var_2.d.x, var_2.d.x, var_2.d.x)).c, ~u_input.a.x, arg_1.e), arg_1.c.b, Struct_2(arg_1.c.a, Struct_1(vec3<bool>(false, var_0.a.x, var_2.b.a.x)), arg_1.c.c, vec4<i32>(arg_1.b.d.x, arg_1.b.d.x, var_2.d.x, var_2.d.x))), var_2.d).b, func_2(Struct_2(var_0.a.x, arg_1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)), vec4<i32>(-var_2.d.x, i32(-1i) * -13251i, ~var_2.d.x, abs(var_2.d.x))), global1[_wgslsmith_index_u32(abs(arg_1.d), 1u)], min(abs(~var_2.d), vec4<i32>(arg_1.c.d.x, var_2.d.x, arg_1.b.d.x, arg_1.c.d.x) << (abs(vec4<u32>(0u, global0.x, global0.x, u_input.a.x)) % vec4<u32>(32u)))).c, _wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -25724i, _wgslsmith_mod_i32(~arg_1.b.d.x, _wgslsmith_sub_i32(-2147483647i, -51993i)), 0i, -_wgslsmith_dot_vec3_i32(var_2.d.xyx, var_2.d.zxx)), var_2.d, vec4<i32>(~(-8874i), -(~arg_1.b.d.x), arg_1.b.d.x, var_2.d.x)));
}

fn func_1() -> Struct_3 {
    let var_0 = !(!select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)));
    var var_1 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~u_input.a, u_input.a), global0.x), u_input.a.x, min(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, 29818u, 18862u), ~vec4<u32>(global0.x, u_input.a.x, global0.x, u_input.a.x)), max(vec4<u32>(global0.x, 0u, 4294967295u, u_input.a.x) >> (vec4<u32>(11594u, 41937u, global0.x, u_input.a.x) % vec4<u32>(32u)), reverseBits(vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x))))), u_input.a.x);
    var var_2 = func_5(-1390f, Struct_3(-2124f, global1[_wgslsmith_index_u32(0u, 1u)], func_4(vec4<i32>(~20152i, -37389i, 15427i, 1i), func_2(global1[_wgslsmith_index_u32(~u_input.a.x, 1u)], Struct_2(var_0.x, Struct_1(vec3<bool>(var_0.x, true, true)), -423f, vec4<i32>(-5697i, 51902i, -18594i, 21726i)), abs(vec4<i32>(-2147483647i, -59761i, 1i, 975i))), func_2(func_2(Struct_2(true, Struct_1(var_0), 1238f, vec4<i32>(1i, -2624i, -2147483647i, 0i)), Struct_2(var_0.x, Struct_1(var_0), 1358f, vec4<i32>(6834i, 9286i, 2147483647i, 0i)), vec4<i32>(-1i, 7227i, 8610i, 13449i)).b, func_2(Struct_2(false, Struct_1(vec3<bool>(true, false, true)), 1375f, vec4<i32>(2147483647i, 18615i, 2147483647i, -10399i)), global1[_wgslsmith_index_u32(u_input.a.x, 1u)], vec4<i32>(-14535i, -57904i, -60598i, 43461i)).b, -vec4<i32>(-18639i, 0i, -2147483647i, -2147483647i)).b.b, global1[_wgslsmith_index_u32(4294967295u, 1u)]), 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(296f - -717f), 964f, _wgslsmith_f_op_f32(1181f + 1299f), 1f))));
    global0 = var_1.zzy;
    var var_3 = !(!(!vec3<bool>(!var_0.x, true, var_2.e.x >= var_2.c.c)));
    return Struct_3(829f, func_4(vec4<i32>(2147483647i, -57801i, countOneBits(~var_2.b.d.x), -(var_2.b.d.x | -6962i)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-919f, var_2.a)) + _wgslsmith_f_op_f32(abs(var_2.a))), func_5(-241f, Struct_3(var_2.c.c, Struct_2(false, Struct_1(var_0), var_2.b.c, var_2.c.d), Struct_2(true, Struct_1(var_2.c.b.a), -930f, vec4<i32>(-5768i, var_2.b.d.x, 2147483647i, var_2.c.d.x)), var_2.d, vec4<f32>(var_2.b.c, 216f, var_2.a, var_2.a))).c, func_4(vec4<i32>(var_2.c.d.x, 0i, var_2.b.d.x, var_2.c.d.x), func_2(global1[_wgslsmith_index_u32(var_1.x, 1u)], global1[_wgslsmith_index_u32(var_1.x, 1u)], vec4<i32>(var_2.c.d.x, var_2.b.d.x, var_2.c.d.x, var_2.b.d.x)), Struct_1(vec3<bool>(false, false, var_2.c.b.a.x)), global1[_wgslsmith_index_u32(global0.x | 4294967295u, 1u)]), ~65719u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-623f, 729f, 1000f, var_2.c.c)))), func_5(482f, Struct_3(_wgslsmith_f_op_f32(-var_2.e.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(12585u, var_1.x), u_input.a), 1u)], Struct_2(var_2.c.b.a.x, var_2.b.b, -1297f, vec4<i32>(var_2.c.d.x, 14943i, var_2.b.d.x, 24640i)), ~9375u, _wgslsmith_f_op_vec4_f32(round(var_2.e)))).c.b, func_2(Struct_2(true, Struct_1(var_0), -436f, vec4<i32>(-2912i, var_2.b.d.x, var_2.c.d.x, 47651i)), global1[_wgslsmith_index_u32(func_2(var_2.c, Struct_2(var_3.x, Struct_1(var_0), var_2.c.c, vec4<i32>(-35851i, var_2.b.d.x, -23920i, var_2.b.d.x)), ~vec4<i32>(var_2.b.d.x, var_2.c.d.x, -84264i, 59107i)).d, 1u)], var_2.c.d).b), Struct_2(var_3.x, func_5(var_2.b.c, Struct_3(_wgslsmith_f_op_f32(ceil(var_2.e.x)), var_2.b, func_2(var_2.b, Struct_2(true, var_2.b.b, var_2.b.c, var_2.c.d), vec4<i32>(var_2.b.d.x, var_2.b.d.x, -43236i, var_2.c.d.x)).b, ~21811u, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.e.x, var_2.a, var_2.e.x, 554f))))).c.b, var_2.b.c, ~func_4(vec4<i32>(20099i, 5186i, var_2.b.d.x, var_2.c.d.x), Struct_3(-1000f, Struct_2(false, var_2.c.b, var_2.c.c, vec4<i32>(var_2.c.d.x, 0i, 1i, var_2.c.d.x)), global1[_wgslsmith_index_u32(var_1.x, 1u)], 60326u, var_2.e), var_2.c.b, global1[_wgslsmith_index_u32(global0.x, 1u)]).d ^ _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.b.d.x, 1i, var_2.c.d.x, var_2.b.d.x), ~var_2.b.d)), 0u, var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, 1u, global0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(28193u, 12387u, 1u), vec3<u32>(1u, u_input.a.x, 1u))), max(~vec3<u32>(global0.x, global0.x, 1u), vec3<u32>(15432u, global0.x, u_input.a.x))), ~vec3<u32>(min(global0.x, 4294967295u), 0u, _wgslsmith_mod_u32(global0.x, global0.x)));
    var var_0 = Struct_1(!select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), false));
    global3 = array<vec2<f32>, 3>();
    let var_1 = func_1();
    var_0 = Struct_1(var_0.a);
    var var_2 = vec2<u32>(~(~var_1.d), _wgslsmith_add_u32(_wgslsmith_mult_u32(26333u, 0u) << (0u % 32u), abs(~u_input.a.x))) ^ global0.zx;
    var var_3 = vec3<u32>(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.d, var_2.x) | (vec3<u32>(var_1.d, var_1.d, 1u) << (vec3<u32>(var_1.d, var_2.x, var_2.x) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(vec3<u32>(28379u, var_1.d, 60452u), vec3<u32>(33069u, 4294967295u, u_input.a.x)) >> (select(vec3<u32>(var_1.d, 1u, 1749u), vec3<u32>(global0.x, var_2.x, 54380u), true) % vec3<u32>(32u))), abs(4294967295u));
    let var_4 = 524f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.d, 0u, 72528u, 1u), vec4<u32>(global0.x, 0u, 4294967295u, 0u)), ~vec4<u32>(0u, var_2.x, 3099u, var_1.d)), var_3.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, var_1.d, global0.x), vec3<u32>(var_1.d, var_1.d, 4294967295u))), _wgslsmith_mod_u32(~9047u, func_1().d), ~30591u), func_4(var_1.b.d, func_1(), var_1.b.b, global1[_wgslsmith_index_u32(u_input.a.x, 1u)]).d.x, _wgslsmith_mod_u32(0u, var_3.x), var_2.x);
}

