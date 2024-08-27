struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_2;

var<private> global2: u32;

var<private> global3: array<Struct_1, 7>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> f32 {
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = global0.zz;
    global0 = global1.c;
    let var_2 = global1.d.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1521f * 582f));
    return _wgslsmith_f_op_f32(global1.a.b.x - _wgslsmith_f_op_f32(f32(-1f) * -2526f));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> vec2<u32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.d), arg_1.b, _wgslsmith_f_op_f32(sign(-1002f)), ~(~vec2<u32>(arg_3.x, arg_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), -873f)) - arg_1.a.x), global1.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, -1488f, arg_0.x, -933f)))), _wgslsmith_f_op_vec4_f32(-arg_1.a), true)));
    global2 = ~arg_2.a.d.x;
    global3 = array<Struct_1, 7>();
    global0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-54993i, min(var_0.c.x, u_input.b.x), 2147483647i, 18192i), vec4<i32>(select(var_0.c.x << (var_0.a.d.x % 32u), -5054i << (1u % 32u), true), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(18956i, global1.c.x), global1.c.yx)), max(22071i ^ arg_2.c.x, -2147483647i), -12436i), -_wgslsmith_mult_vec4_i32(var_0.c, vec4<i32>(global0.x, global1.c.x, var_0.c.x, u_input.b.x))) | ~(vec4<i32>(~42588i, 2147483647i, arg_2.c.x, -2147483647i) ^ vec4<i32>(arg_2.c.x, ~var_0.c.x, max(global1.c.x, arg_2.c.x), global0.x));
    global0 = firstTrailingBit(firstLeadingBit(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(global1.c.x, 30739i, 2147483647i, global1.c.x), _wgslsmith_add_vec4_i32(var_0.c, vec4<i32>(-2147483647i, 1i, var_0.c.x, u_input.b.x))), -(global1.c ^ vec4<i32>(global0.x, var_0.c.x, u_input.b.x, global0.x)))));
    return _wgslsmith_div_vec2_u32(arg_2.a.d, vec2<u32>(arg_2.a.d.x, ~29069u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_2 {
    global0 = vec4<i32>(-1i) * -(~_wgslsmith_mult_vec4_i32(arg_1.c, ~vec4<i32>(-46708i, arg_1.c.x, arg_1.c.x, global1.c.x)));
    var var_0 = arg_1.a;
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(-(-5260i << (arg_1.a.d.x % 32u)), _wgslsmith_dot_vec4_i32(global1.c >> (vec4<u32>(4294967295u, 16603u, 65559u, global1.a.d.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(arg_1.c, arg_1.c))), global0.zw) << (vec2<u32>(min(arg_1.a.d.x, _wgslsmith_clamp_u32(firstTrailingBit(1647u), reverseBits(0u), ~0u)), 34957u) % vec2<u32>(32u));
    var var_2 = !vec2<bool>(all(vec2<bool>(true, true)), true);
    var var_3 = ~40058u;
    return arg_1;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = !vec4<bool>(_wgslsmith_f_op_f32(-arg_2.a.c) <= arg_1.b.x, true, false, arg_3.d.x < ~arg_1.d.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(1404f, -460f), arg_2.b, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(-965f)))), vec3<f32>(arg_2.d.x, 717f, _wgslsmith_f_op_f32(-arg_3.c))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-900f, -582f) * _wgslsmith_f_op_f32(f32(-1f) * -256f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1179f, 1352f))), var_0.x)));
    var var_3 = vec3<u32>(u_input.c, _wgslsmith_mod_u32(0u, u_input.c), arg_2.a.d.x);
    global1 = func_4(u_input.a.zzx, func_4(u_input.a.yxz, arg_2));
    return func_4((firstLeadingBit(vec3<u32>(0u, var_3.x, u_input.a.x)) >> (~u_input.a.wzx % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(20339u, 4294967295u, 4294967295u), ~vec3<u32>(49149u, global1.a.d.x, 4294967295u)), ~(~u_input.a.wzz)) % vec3<u32>(32u)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2.a.a, arg_3.a)), _wgslsmith_f_op_vec2_f32(var_1.yx + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, 3013f), vec2<f32>(1344f, 905f), var_0.xy))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(258f, arg_2.a.c), _wgslsmith_f_op_f32(-1809f - -366f))), vec2<u32>(_wgslsmith_mult_u32(4294967295u, 0u), min(arg_3.d.x, arg_1.d.x))), 371f, global1.c << (~u_input.a % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-744f)), -964f, var_1.x, _wgslsmith_f_op_f32(-var_2.x)) - vec4<f32>(_wgslsmith_div_f32(1147f, 439f), _wgslsmith_f_op_f32(floor(arg_1.a.x)), -1019f, -2050f))));
}

fn func_1() -> bool {
    global1 = func_5(-1i, Struct_1(vec4<f32>(-1503f, _wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(f32(-1f) * -593f)), _wgslsmith_f_op_f32(ceil(global1.b)), -414f), global1.a.a.xy, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1.a.c)))))), vec2<u32>(1u, ~global1.a.d.x | (global1.a.d.x | global1.a.d.x))), func_4(vec3<u32>(4294967295u, global1.a.d.x, ~_wgslsmith_div_u32(u_input.a.x, global1.a.d.x)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.a.c, -120f, 748f, -397f))), _wgslsmith_f_op_vec2_f32(-global1.d.wx), -1226f, func_2(vec3<f32>(global1.a.c, 618f, global1.a.b.x), Struct_1(vec4<f32>(-1133f, -1752f, global1.d.x, global1.d.x), vec2<f32>(1399f, 1834f), global1.d.x, u_input.a.wx), Struct_2(Struct_1(vec4<f32>(global1.b, global1.d.x, 894f, 921f), global1.a.b, global1.a.a.x, global1.a.d), 1199f, global1.c, global1.a.a), vec2<u32>(global1.a.d.x, global1.a.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-374f, -1098f)), _wgslsmith_mod_vec4_i32(global1.c, ~global1.c), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(global1.a.a)))))), Struct_1(vec4<f32>(global1.a.b.x, -1131f, _wgslsmith_f_op_f32(f32(-1f) * -1504f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + 860f)), func_4(vec3<u32>(global1.a.d.x, 1u, 17830u) & vec3<u32>(u_input.a.x, 30644u, u_input.a.x), func_4(u_input.a.xwx, func_4(vec3<u32>(26476u, global1.a.d.x, 41356u), Struct_2(global3[_wgslsmith_index_u32(611u, 7u)], -393f, global1.c, vec4<f32>(372f, 304f, global1.a.b.x, 690f))))).a.a.yx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec3<u32>(u_input.c, 62840u, global1.a.d.x), Struct_2(Struct_1(global1.a.a, global1.a.a.wx, -530f, u_input.a.zy), -1424f, global1.c, global1.a.a)).d.x * global1.d.x) + 252f), _wgslsmith_add_vec2_u32(~(~vec2<u32>(global1.a.d.x, global1.a.d.x)), min(global1.a.d, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 40643u), vec2<u32>(18143u, u_input.a.x))))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(global1.d)), global1.a.b, 273f, ~(vec2<u32>(global1.a.d.x, _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.c)) | vec2<u32>(global1.a.d.x, _wgslsmith_mult_u32(110029u, global1.a.d.x))));
    var var_1 = var_0.b;
    let var_2 = Struct_2(func_4(~u_input.a.wzy, Struct_2(global1.a, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-554f + -709f))), global1.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.d.x, global1.b, -1094f)))).a, -257f, vec4<i32>(_wgslsmith_mult_i32(-_wgslsmith_add_i32(global1.c.x, global0.x), -45785i), _wgslsmith_div_i32(u_input.b.x, ~global0.x), u_input.b.x, global1.c.x), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(369f * -378f) + -718f), -1267f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(187f - 1608f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), var_0.b.x, -486f));
    var var_3 = firstTrailingBit(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, countOneBits(-1i), ~var_2.c.x, global0.x), var_2.c)));
    return false;
}

fn func_6(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_2.c;
    global3 = array<Struct_1, 7>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-226f - var_0) + 593f)), global1.d.x));
    let var_2 = arg_1;
    global1 = Struct_2(func_5(~u_input.b.x, func_4(vec3<u32>(u_input.c, 23706u, u_input.c) ^ u_input.a.ywy, Struct_2(Struct_1(vec4<f32>(var_0, -683f, -2058f, 1274f), arg_2.b, -1000f, u_input.a.zw), global1.a.b.x, _wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.b.x, 14629i, -23230i), global1.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1667f, -2052f, arg_2.a.x, var_0)))).a, Struct_2(global1.a, _wgslsmith_f_op_f32(ceil(arg_2.b.x)), abs(-vec4<i32>(-2147483647i, u_input.b.x, -55861i, global0.x)), vec4<f32>(arg_2.a.x, var_0, _wgslsmith_div_f32(-165f, arg_2.a.x), _wgslsmith_f_op_f32(-141f - arg_2.b.x))), global1.a).a, 219f, ~_wgslsmith_add_vec4_i32((global1.c ^ global1.c) >> (vec4<u32>(u_input.c, 42756u, global1.a.d.x, u_input.c) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(global1.c, global1.c)), vec4<f32>(_wgslsmith_div_f32(244f, _wgslsmith_f_op_f32(step(-1785f, _wgslsmith_f_op_f32(488f + -1868f)))), _wgslsmith_div_f32(arg_2.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(452f, 799f, arg_1.x)), var_0))), _wgslsmith_f_op_f32(-global1.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a.c))))));
    return func_5(-_wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, u_input.b.x, u_input.b.x, -4978i), global1.c), global1.c), func_4(u_input.a.wxy, Struct_2(Struct_1(vec4<f32>(var_0, -1000f, arg_2.a.x, var_0), _wgslsmith_f_op_vec2_f32(arg_2.a.zy - arg_2.a.xx), _wgslsmith_div_f32(1000f, 1295f), _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.a.d.x, 55334u), u_input.a.zz, vec2<u32>(41959u, arg_2.d.x))), 1092f, global1.c, global1.d)).a, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(global1.a.a, arg_2.a)))), func_5(~0i, Struct_1(vec4<f32>(-664f, global1.d.x, 456f, arg_2.b.x), vec2<f32>(-2306f, var_0), 1155f, vec2<u32>(global1.a.d.x, u_input.a.x)), Struct_2(arg_2, arg_2.c, global1.c, vec4<f32>(var_0, 1626f, arg_2.a.x, -197f)), arg_2).a.b, _wgslsmith_f_op_f32(-1885f * 532f), firstLeadingBit(global1.a.d)), _wgslsmith_f_op_f32(-func_5(_wgslsmith_dot_vec3_i32(global0.zxz, vec3<i32>(global1.c.x, 39213i, global1.c.x)), Struct_1(vec4<f32>(arg_2.a.x, var_0, 643f, -579f), arg_2.b, arg_2.a.x, u_input.a.zw), Struct_2(Struct_1(vec4<f32>(1000f, -1248f, -822f, 1448f), vec2<f32>(-367f, 1197f), var_0, u_input.a.yz), arg_2.a.x, vec4<i32>(22598i, global1.c.x, u_input.b.x, -43281i), global1.d), Struct_1(arg_2.a, arg_2.b, 1445f, vec2<u32>(u_input.c, u_input.a.x))).d.x), (~global1.c ^ func_5(u_input.b.x, Struct_1(vec4<f32>(global1.d.x, arg_2.b.x, 1000f, 1000f), arg_2.a.yx, -521f, vec2<u32>(0u, global1.a.d.x)), Struct_2(Struct_1(global1.d, global1.a.a.yy, var_0, u_input.a.yy), -1617f, vec4<i32>(-6262i, global1.c.x, global0.x, -1i), arg_2.a), arg_2).c) & ~global1.c, _wgslsmith_div_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(-153f * 1710f), 1511f, _wgslsmith_f_op_f32(ceil(132f))), vec4<f32>(global1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0, _wgslsmith_f_op_f32(round(var_0))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.d - _wgslsmith_f_op_vec4_f32(arg_2.a - arg_2.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a.a))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-334f - global1.d.x), -1505f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(arg_2.a.yy, global1.d.xz))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), select(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 10046u), vec2<u32>(global1.a.d.x, global1.a.d.x), arg_2.d), ~u_input.a.xz), ~(global1.a.d ^ vec2<u32>(u_input.a.x, arg_2.d.x)), var_2.yy)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.c;
    global3 = array<Struct_1, 7>();
    global1 = func_6(select(vec3<bool>(false, true, !func_1()), vec3<bool>(true, true, true), true), select(vec3<bool>(global1.a.d.x <= global1.a.d.x, (2147483647i != global0.x) & select(false, true, false), true), !vec3<bool>(global1.d.x > global1.b, true, all(vec4<bool>(false, false, true, false))), !(global1.b >= -552f) & false), global1.a);
    global3 = array<Struct_1, 7>();
    let var_0 = -19504i;
    let x = u_input.a;
    s_output = StorageBuffer(global1.c);
}

