struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<u32>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_4,
    c: Struct_4,
    d: f32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_2 = Struct_2(vec2<u32>(4101u, 24343u), Struct_1(vec2<f32>(-559f, 546f), false, vec3<u32>(0u, 4294967295u, 52740u), vec4<bool>(false, true, true, false), vec2<bool>(false, true)), Struct_1(vec2<f32>(-340f, -283f), true, vec3<u32>(1u, 40940u, 49645u), vec4<bool>(true, true, true, false), vec2<bool>(true, false)), 0i, false);

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), 32875i, 46456i, 2287i);

var<private> global3: i32 = 1i;

var<private> global4: i32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>) -> i32 {
    global3 = ~_wgslsmith_div_i32(~(~_wgslsmith_mod_i32(-41825i, global1.d)), global0.e.c.d);
    var var_0 = Struct_3(u_input.b, all(vec4<bool>(global1.b.b, global0.d >= _wgslsmith_f_op_f32(round(global1.b.a.x)), all(global0.e.c.c.e), max(global0.a.x, global0.e.c.a.x) != global0.c.b.x)), vec3<bool>(global1.e, any(global0.e.a), !select(false, true, global1.b.d.x)));
    return abs(global0.c.c.d);
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_4) -> f32 {
    var var_0 = select(!select(select(global1.b.d.wzw, !global1.c.d.xyx, !global0.c.a), arg_3.c.c.d.zwz, arg_3.a.x), arg_3.a, true);
    let var_1 = vec2<u32>(99013u, 50869u);
    global2 = reverseBits(vec4<i32>(-arg_3.c.d << (~(~83481u) % 32u), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.c.a.x, -2230f, arg_3.c.b.a.x, -767f), vec4<f32>(648f, arg_3.c.b.a.x, -2698f, -116f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(701f, -383f, 918f, global1.b.a.x))), reverseBits(u_input.a)), -1i, i32(-1i) * -10845i));
    let var_2 = arg_3;
    var var_3 = _wgslsmith_f_op_f32(arg_3.c.b.a.x + 1000f);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(264f * _wgslsmith_f_op_f32(trunc(370f))), _wgslsmith_f_op_f32(sign(arg_0.x)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_4) -> Struct_3 {
    let var_0 = select(arg_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1000f, arg_1.c.b.a.x)), -1367f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<f32>(arg_1.c.b.a.x, global1.c.a.x, global1.c.a.x), 10410u, vec2<u32>(global0.b.b.x, 20650u), global0.b)))) <= _wgslsmith_f_op_f32(trunc(global0.c.c.b.a.x)), (any(select(global1.c.d, vec4<bool>(false, global1.e, global1.b.d.x, true), global1.c.d)) || true) || any(!vec4<bool>(true, false, arg_1.c.b.d.x, global1.c.b)));
    global4 = firstTrailingBit(0i);
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(-63762i, abs(global0.c.c.d)), countOneBits(vec2<i32>(-_wgslsmith_add_i32(0i, global2.x), -(2147483647i | global2.x))));
    var var_2 = -vec2<i32>(arg_1.c.d & ((global2.x & var_1.x) & ~global0.b.c.d), -2147483647i);
    let var_3 = Struct_5(vec4<u32>(arg_1.c.b.c.x, _wgslsmith_dot_vec4_u32(global0.c.b, global0.c.b), min(reverseBits(reverseBits(4294967295u)), 1u), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1.b.x, 19728u), ~u_input.b.x)), arg_1, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1.c.c.a.x, arg_1.c.b.a.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.c.b.a.x)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<f32>(-540f, global1.c.a.x, 430f), u_input.b.x, vec2<u32>(arg_1.b.x, 38649u), global0.c)) + 1043f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.a.x)), !(!arg_1.d.x)))), Struct_4(vec3<bool>(-u_input.a.x <= (i32(-1i) * -2147483647i), var_0, select(global0.e.b.x >= global0.e.c.c.c.x, true, !arg_1.c.c.d.x)), vec4<u32>(~global1.a.x, 1u, ~1u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(global0.e.b.x, 3685u, 4294967295u)), ~vec3<u32>(arg_1.c.c.c.x, arg_1.c.a.x, 33251u))), Struct_2(~vec2<u32>(u_input.b.x, 241u), arg_1.c.b, global0.e.c.b, 5012i, !arg_1.c.b.e.x), global0.b.d));
    return Struct_3(arg_1.b.yzw | ~(~global0.e.b.wzz), !all(select(var_3.e.a.xx, vec2<bool>(arg_1.c.b.d.x, global1.b.b), select(false, global1.c.b, false))), !select(select(global0.e.a, select(var_3.e.c.b.d.zxx, vec3<bool>(true, false, var_0), vec3<bool>(global1.e, true, arg_1.a.x)), select(arg_1.c.b.d.xwz, vec3<bool>(true, false, false), false)), !global0.b.c.c.d.wzz, global0.e.c.c.b));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_3, arg_3: bool) -> Struct_5 {
    var var_0 = vec2<u32>(~(~_wgslsmith_clamp_u32(0u, ~arg_2.a.x, _wgslsmith_sub_u32(111250u, u_input.b.x))), global1.b.c.x << (_wgslsmith_sub_u32(~9940u, 1u) % 32u));
    var var_1 = arg_1;
    var var_2 = ~_wgslsmith_dot_vec4_i32(u_input.a, u_input.a);
    var_1 = _wgslsmith_f_op_f32(-arg_1);
    let var_3 = vec2<u32>(u_input.b.x, 48445u);
    return Struct_5(global0.e.b, global0.e, global0.c, -509f, global0.c);
}

fn func_5(arg_0: Struct_5, arg_1: bool) -> Struct_2 {
    global4 = -20785i;
    var var_0 = vec3<u32>(global1.a.x, _wgslsmith_dot_vec3_u32(global0.b.b.wwx, global0.c.c.b.c), 1u >> (_wgslsmith_clamp_u32(global1.a.x, global0.b.b.x ^ global1.c.c.x, countOneBits(global1.b.c.x)) % 32u));
    var_0 = ~func_1(vec2<i32>(max(_wgslsmith_mod_i32(u_input.a.x, arg_0.e.c.d), -50605i), global0.b.c.d), arg_0.b).a;
    var var_1 = ~(~(~_wgslsmith_add_vec4_u32(arg_0.a, vec4<u32>(arg_0.e.b.x, arg_0.c.b.x, 2664u, arg_0.e.b.x)) << (reverseBits(vec4<u32>(var_0.x, 46545u, 1u, global0.b.c.c.c.x)) % vec4<u32>(32u))));
    global1 = func_4(true, _wgslsmith_f_op_f32(sign(global1.c.a.x)), Struct_3(_wgslsmith_mod_vec3_u32(global0.a.zyz, vec3<u32>(~116125u, ~var_0.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(123301u, 0u, global0.c.c.a.x)))), arg_1, !vec3<bool>(any(vec2<bool>(false, arg_0.b.c.e)), false, true)), !any(vec4<bool>(true, true, true, true))).b.c;
    return Struct_2(vec2<u32>(global0.e.b.x, ~1u), Struct_1(arg_0.e.c.c.a, global1.e, var_1.zyw, !global1.c.d, !(!select(vec2<bool>(true, false), vec2<bool>(global1.b.d.x, true), false))), Struct_1(global0.e.c.c.a, true, u_input.b & global1.b.c, func_4(all(func_4(global1.e, 842f, Struct_3(vec3<u32>(global0.c.b.x, global1.a.x, 4294967295u), true, arg_0.b.c.c.d.yxw), true).b.a.yx), _wgslsmith_f_op_f32(func_2(vec3<f32>(934f, 607f, arg_0.b.c.b.a.x), 1u, var_1.wz, Struct_4(global0.e.a, vec4<u32>(global1.c.c.x, 6394u, global0.c.b.x, arg_0.b.b.x), Struct_2(var_0.zx, Struct_1(vec2<f32>(global1.c.a.x, -1987f), arg_0.e.a.x, global1.c.c, vec4<bool>(global1.b.b, arg_1, true, global1.b.e.x), vec2<bool>(arg_0.b.c.c.b, global1.e)), Struct_1(vec2<f32>(arg_0.c.c.b.a.x, 426f), true, vec3<u32>(arg_0.a.x, 1u, var_0.x), vec4<bool>(global1.c.d.x, arg_1, false, arg_0.e.c.e), arg_0.b.c.b.d.xw), global1.d, global0.b.d.x), global0.c.a.zx))), Struct_3(vec3<u32>(70439u, arg_0.a.x, 38556u) ^ vec3<u32>(45278u, 1u, 5712u), any(arg_0.e.a.zz), !vec3<bool>(false, arg_1, true)), true).e.c.c.d, !(!(!global1.c.e))), min(arg_0.e.c.d, _wgslsmith_dot_vec4_i32(abs(u_input.a & vec4<i32>(global2.x, global2.x, 2147483647i, -2147483647i)), select(vec4<i32>(global2.x, 10076i, global2.x, -13133i), u_input.a, true) >> (~vec4<u32>(4294967295u, u_input.b.x, 31712u, 4305u) % vec4<u32>(32u)))), !(global1.c.b && all(select(vec4<bool>(arg_0.b.a.x, true, arg_0.c.d.x, false), vec4<bool>(true, true, arg_1, global1.c.e.x), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~global0.c.b.xyy, !all(!select(vec3<bool>(true, false, true), global0.c.c.c.d.xyx, global0.c.c.b.d.zzz)), global1.b.d.zyz);
    global0 = Struct_5(vec4<u32>(global1.a.x, _wgslsmith_mod_u32(var_0.a.x, ~global1.b.c.x), _wgslsmith_dot_vec2_u32(~(vec2<u32>(global1.c.c.x, 4208u) | vec2<u32>(0u, global1.b.c.x)), countOneBits(vec2<u32>(global0.b.b.x, u_input.b.x)) ^ ~var_0.a.xz), _wgslsmith_add_u32(~(~37671u), ~(~global0.e.b.x))), Struct_4(var_0.c, firstTrailingBit(vec4<u32>(global0.e.b.x, var_0.a.x, u_input.b.x, global0.b.c.c.c.x) & vec4<u32>(u_input.b.x, 37516u, global1.b.c.x, 932u)), func_5(func_4(true, _wgslsmith_f_op_f32(-global0.e.c.c.a.x), func_1(global2.zz, global0.e), global0.c.c.e), var_0.b), !func_1(abs(vec2<i32>(global2.x, global1.d)), func_4(global1.c.b, global0.c.c.c.a.x, Struct_3(u_input.b, false, global0.e.c.c.d.wzz), true).b).c.xx), Struct_4(!vec3<bool>(true, -356f == global0.d, !var_0.b), global0.c.b, Struct_2(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 4294967295u), global0.a.wx), Struct_1(_wgslsmith_f_op_vec2_f32(max(global1.b.a, global0.c.c.b.a)), global0.b.d.x, global1.b.c, !global1.b.d, func_5(Struct_5(vec4<u32>(var_0.a.x, global1.c.c.x, 71537u, var_0.a.x), global0.c, global0.b, global1.b.a.x, Struct_4(vec3<bool>(var_0.b, global1.b.b, global1.e), global0.b.b, global0.e.c, var_0.c.xy)), true).b.e), global1.b, u_input.a.x, true), global1.c.e), _wgslsmith_f_op_f32(min(global0.e.c.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))), global0.e);
    global3 = _wgslsmith_sub_i32(2147483647i, _wgslsmith_mult_i32(_wgslsmith_div_i32(min(-7377i, global0.c.c.d) | -1i, u_input.a.x), _wgslsmith_mod_i32(global0.c.c.d << (u_input.b.x % 32u), firstTrailingBit(2147483647i)) | (i32(-1i) * -1i)));
    var var_1 = global0.b.c.b.d;
    let var_2 = ~(~_wgslsmith_dot_vec4_u32(global0.a, ~vec4<u32>(u_input.b.x, 1u, 1u, u_input.b.x))) ^ _wgslsmith_mod_u32(4294967295u, var_0.a.x);
    global2 = vec4<i32>(countOneBits(((u_input.a.x & global2.x) << (30182u % 32u)) | -1i), -func_5(Struct_5(global0.c.b, global0.c, func_4(global1.b.d.x, global0.b.c.b.a.x, Struct_3(vec3<u32>(global1.b.c.x, global0.c.b.x, global1.b.c.x), true, var_0.c), false).c, global1.b.a.x, func_4(false, -440f, Struct_3(global0.b.c.c.c, true, vec3<bool>(false, global1.e, true)), var_0.b).c), !(!var_0.c.x)).d, _wgslsmith_dot_vec4_i32(select(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.d, u_input.a.x, -69924i, 24567i), vec4<i32>(2147483647i, 2147483647i, u_input.a.x, -26552i))), u_input.a, select(select(global1.c.d, global0.c.c.c.d, true), select(global1.b.d, global1.c.d, vec4<bool>(true, var_0.c.x, true, true)), func_5(Struct_5(vec4<u32>(var_2, 4294967295u, 4294967295u, 4294967295u), global0.b, Struct_4(global1.c.d.yzw, vec4<u32>(var_0.a.x, var_2, 21102u, var_0.a.x), global0.c.c, global1.c.e), global0.b.c.c.a.x, Struct_4(vec3<bool>(false, global1.b.b, global1.c.d.x), global0.b.b, global0.c.c, vec2<bool>(false, global0.c.c.e))), global0.c.c.c.b).b.d)), vec4<i32>(global0.e.c.d, -u_input.a.x, 1i, ~45877i)), global1.d);
    var var_3 = Struct_5(vec4<u32>(_wgslsmith_add_u32(reverseBits(0u), _wgslsmith_sub_u32(~global0.c.b.x, ~15993u)), ~global1.c.c.x, var_0.a.x, ~(~(~0u))), global0.c, func_4(global0.e.c.b.a.x <= global1.b.a.x, global0.c.c.c.a.x, func_1(_wgslsmith_div_vec2_i32(u_input.a.zx, _wgslsmith_add_vec2_i32(u_input.a.xy, global2.ww)), Struct_4(!global1.c.d.zwx, reverseBits(global0.c.b), func_5(Struct_5(vec4<u32>(var_0.a.x, u_input.b.x, var_2, var_2), global0.c, Struct_4(var_1.yyw, vec4<u32>(var_2, global0.a.x, var_2, 43027u), Struct_2(global0.e.b.zz, Struct_1(global0.c.c.c.a, true, u_input.b, global1.b.d, vec2<bool>(global1.c.e.x, false)), global1.c, -32231i, true), vec2<bool>(var_1.x, true)), global1.b.a.x, global0.b), var_0.c.x), var_1.xz)), var_1.x).b, -191f, func_4(global0.c.c.c.b, 1650f, Struct_3(global0.c.b.yzy, false, vec3<bool>(global1.e && false, global1.c.d.x, func_1(u_input.a.wz, global0.b).b)), all(global0.c.a.xy)).e);
    var var_4 = global0.b.c.c.a;
    var var_5 = Struct_4(select(func_4(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(440f - global1.b.a.x), global0.e.c.b.a.x), Struct_3(vec3<u32>(global0.b.c.a.x, 0u, var_2), true, var_1.zxw), any(func_5(Struct_5(vec4<u32>(1u, var_2, u_input.b.x, global0.c.b.x), Struct_4(vec3<bool>(true, var_3.e.d.x, true), vec4<u32>(55138u, 0u, 1u, u_input.b.x), global0.e.c, var_3.c.d), Struct_4(vec3<bool>(global0.b.c.e, global0.b.a.x, global0.b.c.b.b), var_3.a, global0.b.c, var_1.yy), -620f, global0.c), var_3.b.c.c.d.x).c.d.xw)).b.a, var_3.e.a, false), vec4<u32>(23856u, 0u, _wgslsmith_mult_u32(var_0.a.x, 4294967295u), func_4(var_3.c.c.b.e.x, _wgslsmith_f_op_f32(-global1.c.a.x), func_1(global2.yx, Struct_4(var_1.ywx, vec4<u32>(global1.c.c.x, 7380u, u_input.b.x, 42771u), Struct_2(global0.a.zz, global0.b.c.b, Struct_1(var_3.e.c.c.a, false, vec3<u32>(0u, 1u, 133462u), global0.c.c.b.d, global0.b.c.b.d.yz), global2.x, true), vec2<bool>(var_1.x, true))), ~global1.b.c.x > _wgslsmith_dot_vec2_u32(var_3.a.zy, global0.c.c.b.c.zx)).c.b.x), func_5(Struct_5(~vec4<u32>(6629u, 2491u, var_2, 4294967295u), func_4(select(false, var_1.x, var_0.b), 1000f, Struct_3(u_input.b, global1.e, vec3<bool>(true, var_3.e.d.x, var_1.x)), 48788u == u_input.b.x).c, var_3.e, 1000f, var_3.e), any(!global0.c.c.b.d)), vec2<bool>(!select(252f <= var_4.x, false, 358f > var_3.d), !global0.b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b) ^ vec3<u32>(~reverseBits(11835u), var_3.c.c.b.c.x, global1.c.c.x), ~0u, u_input.a.wy, var_5.b, 1000f);
}

