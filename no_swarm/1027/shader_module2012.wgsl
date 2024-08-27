struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(-1189f, Struct_1(true, vec4<bool>(true, true, true, true), vec3<f32>(473f, -617f, 159f)), vec2<u32>(13550u, 0u), Struct_1(false, vec4<bool>(false, true, true, false), vec3<f32>(1580f, -1418f, -756f))), vec3<u32>(4294967295u, 4294967295u, 26790u));

var<private> global1: Struct_1 = Struct_1(true, vec4<bool>(false, false, false, true), vec3<f32>(-555f, -636f, -2012f));

var<private> global2: vec3<f32> = vec3<f32>(-1416f, -1000f, -466f);

var<private> global3: array<Struct_4, 4>;

var<private> global4: Struct_3;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3) -> vec4<bool> {
    global2 = _wgslsmith_f_op_vec3_f32(arg_2.a.b.c - vec3<f32>(903f, _wgslsmith_f_op_f32(-285f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4.a.b.c.x)) * _wgslsmith_f_op_f32(-global0.a.b.c.x))), arg_2.a.b.c.x));
    var var_0 = arg_0.b.c;
    let var_1 = vec3<f32>(1105f, 1f, arg_0.a);
    global0 = arg_2;
    let var_2 = arg_2;
    return var_2.a.b.b;
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = vec3<i32>(abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0), ~vec2<i32>(-17871i, 13534i))), -arg_0, -21225i);
    global1 = Struct_1(any(!vec2<bool>(false, select(arg_1.d.a, true, false))), !(!vec4<bool>(global4.a.b.b.x, true || arg_1.d.a, var_0.x <= var_0.x, -1i == var_0.x)), _wgslsmith_f_op_vec3_f32(global4.a.d.c - _wgslsmith_f_op_vec3_f32(-vec3<f32>(719f, global2.x, _wgslsmith_f_op_f32(select(global1.c.x, global4.a.b.c.x, false))))));
    let var_1 = ~(~vec3<u32>(_wgslsmith_add_u32(0u, _wgslsmith_sub_u32(global4.b.x, arg_1.c.x)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_1.c.x, global0.b.x), _wgslsmith_mod_u32(1u, 1879u)), 4294967295u));
    let var_2 = _wgslsmith_f_op_vec2_f32(global1.c.yz * arg_1.d.c.zz);
    global0 = Struct_3(global0.a, vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 837u, global4.a.c.x), _wgslsmith_mult_vec3_u32(vec3<u32>(5617u, global4.b.x, 56398u), var_1)), ~select(vec3<u32>(9309u, global4.b.x, arg_1.c.x), vec3<u32>(1u, 12048u, arg_1.c.x), vec3<bool>(arg_1.d.b.x, global1.b.x, true))), 25302u, 24951u));
    return select(var_1, select(select(reverseBits(global0.b), vec3<u32>(1u, arg_1.c.x, u_input.b.x), global0.a.d.a), ~global4.b, vec3<bool>(true, global4.a.b.b.x, true)), select(vec3<bool>(!arg_1.b.a, 1144f != arg_1.b.c.x, -800f != arg_1.b.c.x), !(!arg_1.b.b.zww), vec3<bool>(true, true, true))) ^ global0.b;
}

fn func_2(arg_0: vec3<f32>) -> vec4<bool> {
    let var_0 = 4568i << (global0.a.c.x % 32u);
    global1 = global0.a.d;
    var var_1 = func_1(global4.a, ~global0.a.c.x, Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), Struct_1(true, vec4<bool>(true, global4.a.d.b.x, global0.a.d.a, global4.a.b.b.x), _wgslsmith_f_op_vec3_f32(-global0.a.b.c)), ~(~vec2<u32>(20660u, global4.a.c.x)), Struct_1(any(vec3<bool>(global1.a, global1.a, global1.b.x)), global4.a.b.b, global4.a.b.c)), func_3(max(_wgslsmith_add_i32(var_0, 2147483647i), ~24521i), Struct_2(-687f, global4.a.d, _wgslsmith_mod_vec2_u32(vec2<u32>(global0.b.x, 0u), global0.a.c), global4.a.b)))).x;
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, u_input.c), firstTrailingBit(_wgslsmith_add_i32(1i, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.c << (_wgslsmith_div_u32(global4.b.x, 34419u) % 32u), ~(-11899i & u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -22363i, 1i, -1415i), vec4<i32>(0i, var_0, u_input.d, u_input.c)), -24233i), vec4<i32>(var_0, u_input.d << (0u % 32u), ~u_input.c, reverseBits(-1i)) & vec4<i32>(-var_0, i32(-1i) * -50596i, ~var_0, -var_0)));
    let var_3 = global4.a.b.b.x;
    return !global4.a.d.b;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = select(~global0.b.zy, select(u_input.b, global0.b.zx, false), !select(global1.b.yy, !(!arg_2.b.yy), all(vec3<bool>(false, true, global0.a.b.b.x))));
    let var_2 = vec3<f32>(global2.x, -183f, _wgslsmith_div_f32(-141f, -401f));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2), vec3<f32>(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(select(global2.x, arg_2.c.x, false)), _wgslsmith_div_f32(1000f, global0.a.a))))) - vec3<f32>(-1000f, _wgslsmith_f_op_f32(-global4.a.b.c.x), _wgslsmith_f_op_f32(-global4.a.a)));
    var var_3 = vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(min(vec3<i32>(u_input.c, -1i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.d)), vec3<i32>(-1i, 7399i, -32153i) >> (global0.b % vec3<u32>(32u))), ~_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 0i, 12964i), vec3<i32>(u_input.c, u_input.d, u_input.c)), -vec3<i32>(-2147483647i, 283i, u_input.d))), 37882i, _wgslsmith_sub_i32(u_input.c, u_input.d));
    return Struct_3(global4.a, max(vec3<u32>(44804u, u_input.a, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global4.b.x, u_input.e), ~global4.b, global4.b << (vec3<u32>(arg_1, 4294967295u, 1u) % vec3<u32>(32u))) >> (~global0.b % vec3<u32>(32u))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = !vec3<bool>(global0.a.d.b.x, arg_0.x, any(vec4<bool>(all(vec3<bool>(false, arg_0.x, global4.a.d.b.x)), true, arg_1.a.d.a, true)));
    var var_1 = _wgslsmith_dot_vec3_u32(global4.b, vec3<u32>(abs(func_3(-14751i, func_4(arg_1.a.b.b.x, 1u, global4.a.b).a).x), arg_1.a.c.x, arg_1.b.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a.d.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.c.x - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(954f + 188f) + global2.x))))));
    global4 = Struct_3(global0.a, select(vec3<u32>(0u, 1u, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 46889u, u_input.b.x), vec3<u32>(1u, 0u, 23327u)), select(!vec3<bool>(var_0.x, global0.a.d.a, false), func_1(global0.a, arg_1.a.c.x, Struct_3(Struct_2(1823f, Struct_1(arg_1.a.b.b.x, vec4<bool>(false, true, false, true), global0.a.b.c), u_input.b, Struct_1(false, vec4<bool>(var_0.x, false, arg_1.a.b.b.x, global4.a.b.a), vec3<f32>(-176f, -269f, global2.x))), arg_1.b)).yxw, true)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(26817u, 1u | global4.b.x, ~2250u), firstTrailingBit(countOneBits(global0.b))));
    var_0 = !global1.b.xwx;
    return Struct_3(global4.a, global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(select(!vec4<bool>(global4.a.d.a, global4.a.d.b.x & true, !global1.b.x, global1.a), !select(vec4<bool>(true, false, global4.a.d.b.x, false), global1.b, !global1.b), select(!(!vec4<bool>(false, global0.a.d.a, global0.a.b.b.x, false)), select(!global1.b, func_1(Struct_2(827f, global4.a.d, global0.a.c, global4.a.b), 15271u, Struct_3(global0.a, global4.b)), func_1(global4.a, 1u, Struct_3(Struct_2(global0.a.b.c.x, Struct_1(global4.a.b.b.x, global0.a.b.b, global0.a.d.c), global0.a.c, global0.a.d), vec3<u32>(u_input.b.x, global4.a.c.x, 1u))).x), global4.a.d.b)), func_4(any(!global0.a.b.b.zz), reverseBits(u_input.b.x) << (7895u % 32u), Struct_1(all(vec2<bool>(false, false)), select(global1.b, func_2(global1.c), !global1.b.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global4.a.d.c.x, -305f)), _wgslsmith_f_op_vec3_f32(abs(global4.a.b.c)))))));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_4(global0.a.b.b.x, 56563u, Struct_1(false, vec4<bool>(global4.a.b.b.x, global4.a.b.b.x, global1.b.x, true), vec3<f32>(-1578f, global1.c.x, global0.a.a))).a.d.c) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(func_5(vec4<bool>(true, false, true, false), Struct_3(Struct_2(-1388f, global0.a.d, global0.a.c, Struct_1(false, vec4<bool>(true, true, global0.a.d.b.x, global0.a.d.b.x), global0.a.d.c)), global4.b)).a.d.c))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-func_5(vec4<bool>(global0.a.d.a, true, false, global4.a.d.a), Struct_3(Struct_2(-334f, Struct_1(global4.a.d.b.x, global0.a.b.b, vec3<f32>(-597f, global1.c.x, -1830f)), global4.b.yz, Struct_1(global1.b.x, global4.a.b.b, global0.a.d.c)), global0.b)).a.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4.a.b.c.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.a.d.c.x - 504f), _wgslsmith_f_op_f32(abs(758f)), _wgslsmith_f_op_f32(f32(-1f) * -969f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 1515f, global0.a.a) - _wgslsmith_f_op_vec3_f32(select(global0.a.d.c, global4.a.d.c, true))))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-115f)) + -317f), _wgslsmith_f_op_f32(step(global4.a.a, 1598f)), -1337f, global2.x));
    global0 = func_4(false, 41476u, Struct_1(!global0.a.d.b.x, global0.a.b.b, vec3<f32>(725f, -203f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x + var_0.x))))));
    global3 = array<Struct_4, 4>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(952f, var_0.x)) * global0.a.b.c.x)) * -121f);
    global1 = global0.a.d;
    let var_2 = vec3<bool>(global4.a.b.b.x, true, all(func_1(func_5(select(global1.b, vec4<bool>(global1.b.x, true, global4.a.b.b.x, global4.a.d.b.x), vec4<bool>(global1.b.x, global0.a.d.b.x, global1.b.x, false)), func_4(false, 3572u, global0.a.d)).a, _wgslsmith_clamp_u32(func_5(vec4<bool>(global4.a.d.a, true, global4.a.d.a, global0.a.d.a), Struct_3(global0.a, global4.b)).b.x, 1u, ~60478u), func_4(!global1.a, global0.b.x, Struct_1(global0.a.b.b.x, vec4<bool>(global1.a, global0.a.b.b.x, false, true), global4.a.d.c)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -929f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global1.c.x)), _wgslsmith_f_op_f32(-global4.a.d.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global2.yz + vec2<f32>(-421f, -2144f)), vec2<f32>(_wgslsmith_f_op_f32(var_3.x * global2.x), _wgslsmith_f_op_f32(abs(global1.c.x))))), firstTrailingBit(((vec3<i32>(-1i, 0i, u_input.c) >> (vec3<u32>(global4.b.x, global0.b.x, 130149u) % vec3<u32>(32u))) | -vec3<i32>(0i, -38758i, u_input.c)) ^ ((vec3<i32>(u_input.d, -28617i, u_input.d) << (global0.b % vec3<u32>(32u))) & reverseBits(vec3<i32>(u_input.d, -1i, u_input.c)))), ~vec2<i32>(~(-u_input.d), 19138i), firstLeadingBit(-2147483647i), ~firstLeadingBit(vec2<i32>(1i, -2147483647i)));
}

