struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

var<private> global1: Struct_4 = Struct_4(16249i);

var<private> global2: vec3<i32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(~(~countOneBits(vec3<u32>(u_input.d.x, 25992u, 1u))), u_input.d.x);
    global2 = max(u_input.b, _wgslsmith_mod_vec3_i32(u_input.a.ywy, _wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(-1i, -53914i, -10209i)) >> (vec3<u32>(6171u, 35830u, u_input.c.x) % vec3<u32>(32u))) | ~(~u_input.a.yxy));
    let var_1 = Struct_3(select(vec3<bool>(!any(vec2<bool>(true, false)), all(vec3<bool>(true, true, false)), true), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, all(vec3<bool>(true, false, true)), true)), !vec3<bool>(var_0.b < var_0.b, false, all(vec3<bool>(true, false, false)))), -global1.a, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -270f), _wgslsmith_f_op_f32(668f + _wgslsmith_f_op_f32(step(-798f, 996f))))), 535f), var_0, _wgslsmith_dot_vec4_i32(min(select(countOneBits(vec4<i32>(u_input.b.x, 8162i, -1i, 1i)), _wgslsmith_mod_vec4_i32(u_input.a, u_input.a), select(false, true, true)), ~u_input.a), vec4<i32>(2147483647i, reverseBits(u_input.a.x), -44056i, abs(reverseBits(10663i)))));
    global1 = global0[_wgslsmith_index_u32(firstTrailingBit(0u), 31u)];
    global0 = array<Struct_4, 31>();
    return 1308f;
}

fn func_4(arg_0: f32, arg_1: i32) -> f32 {
    var var_0 = Struct_2(Struct_1(u_input.d, _wgslsmith_div_u32(u_input.c.x, ~1u | u_input.c.x)), Struct_1(~vec3<u32>(4294967295u, u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(15469u, 1u), vec2<u32>(1u, u_input.c.x))), u_input.d.x), !(!(_wgslsmith_f_op_f32(-arg_0) >= _wgslsmith_f_op_f32(trunc(1056f)))));
    global1 = Struct_4(~(~global2.x));
    var var_1 = arg_0;
    let var_2 = var_0.a.b;
    var var_3 = Struct_3(vec3<bool>(_wgslsmith_sub_i32(~33019i, max(global1.a, 1i)) != -1i, true, true), global2.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(919f - arg_0))), _wgslsmith_f_op_f32(1f + -1339f)), Struct_1(abs(~vec3<u32>(var_0.a.a.x, u_input.d.x, u_input.c.x)), 1u), _wgslsmith_mult_i32(-u_input.a.x, -5368i));
    return _wgslsmith_f_op_f32(var_3.c.x * _wgslsmith_f_op_f32(var_3.c.x * -241f));
}

fn func_2() -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(~u_input.c.x, 31u)];
    global1 = Struct_4(-(i32(-1i) * -39661i));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3()), 0i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -355f), abs(u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -375f))));
    var var_2 = u_input.c;
    let var_3 = select(max(~(~(vec4<u32>(1u, var_2.x, u_input.d.x, u_input.c.x) ^ vec4<u32>(u_input.c.x, 22081u, 7149u, u_input.c.x))), ~vec4<u32>(var_2.x, 1u, 24476u, 14175u) | ~select(vec4<u32>(107600u, 67131u, 6841u, var_2.x), vec4<u32>(1u, 34100u, var_2.x, u_input.d.x), true)), ~vec4<u32>(u_input.c.x, u_input.d.x, _wgslsmith_add_u32(var_2.x, abs(4294967295u)), 46830u), true);
    return Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(~0u, ~u_input.c.x, 1u), vec3<u32>(~var_3.x, var_3.x, 29592u), vec3<u32>(47053u >> (var_3.x % 32u), var_2.x, u_input.c.x)), ~var_2.x), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(~0u, u_input.c.x, _wgslsmith_mod_u32(1u, var_3.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(20715u, u_input.d.x, 74860u) ^ vec3<u32>(var_3.x, 56497u, 41936u), ~u_input.d)), u_input.d.x | (_wgslsmith_clamp_u32(1u, 0u, var_2.x) >> (~4294967295u % 32u))), true);
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_4 {
    global1 = Struct_4(global1.a);
    let var_0 = Struct_3(vec3<bool>(all(vec2<bool>(true, func_2().c)), !((2147483647i > global1.a) | true), select(arg_0, !arg_1.c, true)), u_input.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-457f, -695f), 759f) + vec2<f32>(-987f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(596f, global2.x)), _wgslsmith_f_op_f32(632f * -1073f)))), Struct_1(~_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(u_input.d.x, u_input.c.x, arg_1.a.b)), arg_1.a.a), arg_1.a.a.x), -41489i);
    global2 = ~_wgslsmith_clamp_vec3_i32(~(-vec3<i32>(u_input.b.x, -19317i, 2147483647i)) ^ (_wgslsmith_div_vec3_i32(u_input.b, u_input.a.xwz) & u_input.a.yyx), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_0.b, -1i) << (vec3<u32>(u_input.c.x, 1u, var_0.d.b) % vec3<u32>(32u)), abs(u_input.b << (arg_1.a.a % vec3<u32>(32u)))), max(u_input.a.wxz, u_input.a.yzy ^ u_input.a.zxx) & -u_input.b);
    global0 = array<Struct_4, 31>();
    global0 = array<Struct_4, 31>();
    return Struct_4(global2.x | -46006i);
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1) -> vec3<bool> {
    global0 = array<Struct_4, 31>();
    global0 = array<Struct_4, 31>();
    var var_0 = func_2();
    global1 = global0[_wgslsmith_index_u32(~countOneBits(4294967295u ^ ~(~arg_2.a.x)), 31u)];
    var var_1 = func_5(!((var_0.c & (false & var_0.c)) || var_0.c), Struct_2(var_0.a, func_2().a, any(vec2<bool>(true, true))));
    return select(select(!vec3<bool>(select(var_0.c, true, var_0.c), select(var_0.c, var_0.c, false), true || var_0.c), select(vec3<bool>(func_2().c, u_input.b.x < 80141i, var_0.c), !select(vec3<bool>(true, true, var_0.c), vec3<bool>(false, var_0.c, var_0.c), vec3<bool>(false, var_0.c, false)), !(!var_0.c)), vec3<bool>(!var_0.c, var_0.c, var_0.c)), select(vec3<bool>(true, var_0.c, var_0.c), !select(select(vec3<bool>(false, false, var_0.c), vec3<bool>(false, var_0.c, var_0.c), vec3<bool>(true, true, var_0.c)), vec3<bool>(var_0.c, true, var_0.c), select(false, var_0.c, var_0.c)), var_0.c), select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(var_0.c, false, var_0.c), vec3<bool>(false, var_0.c, var_0.c), var_0.c), !vec3<bool>(var_0.c, var_0.c, var_0.c), func_2().c), vec3<bool>(var_0.c, var_0.c, var_0.c), var_0.c), vec3<bool>(var_0.c, false, true)));
}

fn func_7(arg_0: Struct_3) -> Struct_1 {
    let var_0 = select(!vec4<bool>(arg_0.a.x, true, global2.x <= firstTrailingBit(u_input.a.x), any(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)) || arg_0.a.x), vec4<bool>(global2.x <= global1.a, false, false, true), func_2().c || !func_6(Struct_4(global2.x), global0[_wgslsmith_index_u32(27113u, 31u)], Struct_1(arg_0.d.a, u_input.c.x)).x);
    var var_1 = func_2().c;
    var var_2 = vec3<u32>(u_input.c.x, 2857u, _wgslsmith_sub_u32(~countOneBits(u_input.d.x), u_input.c.x));
    let var_3 = Struct_4(max(func_5(func_2().c, func_2()).a, max(global1.a, ~(~513i))));
    var_1 = 44900i < global2.x;
    return func_2().a;
}

fn func_1() -> vec2<i32> {
    let var_0 = -u_input.a.zx;
    var var_1 = func_7(Struct_3(func_6(func_5(false, func_2()), Struct_4(-73739i), func_2().a), _wgslsmith_mod_i32(countOneBits(0i >> (u_input.c.x % 32u)), _wgslsmith_mod_i32(global1.a, abs(global2.x))), vec2<f32>(966f, _wgslsmith_f_op_f32(round(-1457f))), func_2().a, ~(global2.x | firstTrailingBit(global1.a))));
    var var_2 = func_2();
    let var_3 = ~(~func_7(Struct_3(select(vec3<bool>(var_2.c, var_2.c, var_2.c), vec3<bool>(false, false, true), true), 0i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-109f, -1233f)), Struct_1(vec3<u32>(0u, var_2.b.a.x, var_1.a.x), u_input.d.x), -global2.x)).a.x);
    let var_4 = var_2.b;
    return vec2<i32>(var_0.x, _wgslsmith_dot_vec2_i32((global2.zx >> (~var_4.a.yz % vec2<u32>(32u))) >> (var_2.a.a.yz % vec2<u32>(32u)), vec2<i32>(-2086i, u_input.a.x)));
}

fn func_8(arg_0: f32, arg_1: vec2<i32>) -> f32 {
    global1 = func_5(!func_2().c, Struct_2(func_7(Struct_3(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), _wgslsmith_mod_i32(23544i, u_input.b.x), vec2<f32>(1064f, arg_0), Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), 1u), countOneBits(global1.a))), Struct_1(min(vec3<u32>(u_input.d.x, u_input.d.x, u_input.c.x), u_input.c) >> (_wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(u_input.d.x, u_input.d.x, 35072u), vec3<u32>(u_input.d.x, u_input.c.x, 4294967295u)) % vec3<u32>(32u)), u_input.d.x), true));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(!vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), true, !all(vec4<bool>(true, false, true, false))), _wgslsmith_add_i32(-global1.a, abs(~(-u_input.b.x))), vec2<f32>(-190f, _wgslsmith_f_op_f32(func_8(-167f, abs(func_1())))), func_7(Struct_3(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), true), global1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-625f, 769f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-277f, -384f), vec2<f32>(-1121f, 817f)))), Struct_1(countOneBits(vec3<u32>(u_input.d.x, u_input.d.x, 0u)), _wgslsmith_mult_u32(u_input.c.x, 4294967295u)), global2.x)), -select(global2.x, ~(-global2.x), select(func_2().c, all(vec4<bool>(true, false, false, true)), global1.a >= 25333i)));
    let var_1 = var_0.a.xz;
    var var_2 = func_5(11i >= global2.x, func_2());
    global0 = array<Struct_4, 31>();
    global2 = select(_wgslsmith_mod_vec3_i32(abs(~(u_input.b << (var_0.d.a % vec3<u32>(32u)))), _wgslsmith_add_vec3_i32(~abs(vec3<i32>(-2147483647i, global2.x, 0i)), vec3<i32>(global2.x, i32(-1i) * -38511i, global2.x))), vec3<i32>(countOneBits(global2.x), 3282i >> (var_0.d.a.x % 32u), reverseBits(global1.a)), true);
    var var_3 = ~global2.x;
    var var_4 = vec3<i32>(1i, 2147483647i, firstLeadingBit(~(~(-6349i))));
    var_3 = 1i;
    let var_5 = _wgslsmith_mult_i32(~(~14213i), _wgslsmith_add_i32(-abs(-1i), 2147483647i) & _wgslsmith_add_i32(var_0.b, firstLeadingBit(var_4.x) << ((var_0.d.a.x ^ u_input.c.x) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(33203u, u_input.c.x), select(u_input.c.x, max(~u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(10605u, 0u, u_input.d.x, u_input.d.x), vec4<u32>(4294967295u, var_0.d.b, 526u, u_input.d.x))), var_1.x) | u_input.d.x, ~var_5);
}

