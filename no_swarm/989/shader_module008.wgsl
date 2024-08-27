struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u, vec4<u32>(1u, 73057u, 36787u, 0u), -299f, Struct_1(vec3<u32>(66954u, 1u, 4294967295u), vec4<f32>(-1000f, -1283f, 1571f, 1102f), vec3<u32>(50657u, 4294967295u, 52025u)));

var<private> global1: i32;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec3<u32>(28900u, 0u, 15871u), vec4<f32>(-1775f, 540f, 325f, 237f), vec3<u32>(15356u, 1u, 4294967295u)));

var<private> global3: Struct_2 = Struct_2(4294967295u, vec4<u32>(47270u, 1700u, 4294967295u, 1u), -1534f, Struct_1(vec3<u32>(1u, 0u, 2735u), vec4<f32>(619f, -636f, 163f, -275f), vec3<u32>(0u, 4294967295u, 0u)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_4) -> vec3<u32> {
    global3 = Struct_2(4294967295u, countOneBits(vec4<u32>(_wgslsmith_mult_u32(global2.a.c.x, ~global0.b.x), ~(~u_input.b.x), min(1u, arg_2.b << (global2.a.a.x % 32u)), ~arg_1.a >> (global2.a.a.x % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -995f), Struct_1(_wgslsmith_clamp_vec3_u32(~(~global0.d.a), (vec3<u32>(arg_2.b, global3.d.a.x, arg_2.b) << (arg_1.b.xzw % vec3<u32>(32u))) | global0.d.c, abs(countOneBits(global3.b.xww))), arg_1.d.b, select(firstLeadingBit(global2.a.c), ~(~arg_1.b.zzw), select(true, arg_2.c.x, u_input.c > u_input.c))));
    global1 = firstTrailingBit(u_input.a.x);
    global2 = Struct_3(arg_1.d);
    let var_0 = vec2<i32>(~_wgslsmith_clamp_i32(-33319i, abs(min(-13452i, u_input.a.x)), abs(_wgslsmith_mult_i32(u_input.a.x, -66014i))), u_input.a.x);
    global2 = Struct_3(global3.d);
    return ~vec3<u32>(global3.b.x, 4294967295u, ~(global3.a >> (global0.d.a.x % 32u))) << (~(~(~vec3<u32>(42544u, arg_1.b.x, arg_2.b))) % vec3<u32>(32u));
}

fn func_2() -> u32 {
    var var_0 = 1u;
    var var_1 = Struct_3(Struct_1(max(~(global3.b.zxy ^ vec3<u32>(488u, 28949u, 4294967295u)), func_3(_wgslsmith_f_op_vec3_f32(select(global2.a.b.zwx, vec3<f32>(582f, global0.c, 2361f), vec3<bool>(true, false, true))), Struct_2(global0.d.a.x, global0.b, global3.d.b.x, Struct_1(vec3<u32>(global2.a.a.x, 20317u, u_input.b.x), global3.d.b, global2.a.a)), Struct_4(false, global3.d.a.x, vec4<bool>(false, true, true, false)))), global0.d.b, vec3<u32>(~global3.a, min(countOneBits(4294967295u), 1u), 0u)));
    let var_2 = select(!vec2<bool>(_wgslsmith_f_op_f32(trunc(935f)) >= -170f, -2147483647i == u_input.a.x), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(all(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)), true));
    let var_3 = min(abs(~vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, -2266i), -u_input.a.x, reverseBits(u_input.a.x))), u_input.a);
    var var_4 = firstLeadingBit(-(~u_input.c | -2147483647i));
    return global2.a.c.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_div_u32(~func_2(), ~(~(arg_0.a.x ^ global3.a))) << (~global3.b.x % 32u);
    let var_1 = global0.b;
    global3 = Struct_2(67399u, _wgslsmith_mult_vec4_u32(~(~(global0.b & global0.b)), _wgslsmith_div_vec4_u32(select(_wgslsmith_div_vec4_u32(global0.b, vec4<u32>(arg_0.c.x, 15542u, 32951u, 0u)), abs(vec4<u32>(var_1.x, 97034u, global0.d.c.x, global2.a.a.x)), true), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 81096u, 0u, 4294967295u), vec4<u32>(1u, 93522u, 52814u, 52132u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global3.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.x, 283f) * _wgslsmith_f_op_f32(global3.d.b.x - -1547f)))))), Struct_1(~vec3<u32>(~4294967295u, 4294967295u, 4294967295u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.c, arg_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1800f), _wgslsmith_div_f32(global2.a.b.x, 224f)))), select(arg_0.c, _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(67681u, arg_0.a.x, 4294967295u), arg_1.a), countOneBits(vec3<u32>(35916u, 38560u, 0u))), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))));
    var var_2 = !(global2.a.b.x <= _wgslsmith_f_op_f32(1211f * _wgslsmith_f_op_f32(-global0.c)));
    let var_3 = global2.a.c.x;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a.x;
    var var_0 = Struct_2(func_1(Struct_1(max(global3.b.xwx >> (global3.d.a % vec3<u32>(32u)), vec3<u32>(13025u, global3.b.x, global0.b.x)), _wgslsmith_f_op_vec4_f32(select(global0.d.b, vec4<f32>(494f, global3.c, global3.d.b.x, global0.c), vec4<bool>(false, true, false, false))), abs(global2.a.c) ^ ~global2.a.a), global3.d), vec4<u32>(global0.a, global0.b.x, global3.b.x, max(u_input.b.x, select(1u, 1u | global2.a.a.x, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(637f - global0.c), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.a.b.x * _wgslsmith_f_op_f32(-global0.c))))), Struct_1(countOneBits(vec3<u32>(~global3.a, ~44252u, select(69362u, 4294967295u, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-956f, -794f, global0.d.b.x, global3.c)) - _wgslsmith_f_op_vec4_f32(sign(global2.a.b)))), ~min(vec3<u32>(global0.b.x, global2.a.a.x, 4294967295u), vec3<u32>(0u, 61434u, global2.a.a.x)) | global3.b.xxx));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1415f, -925f))) * global3.c) <= global0.c;
    global2 = Struct_3(global0.d);
    var var_2 = func_3(global0.d.b.zxw, Struct_2(u_input.b.x, _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.b.x, global3.a, var_0.d.c.x), select(~vec4<u32>(global0.b.x, var_0.a, var_0.d.a.x, global3.b.x), reverseBits(global3.b), var_1)), global3.d.b.x, global3.d), Struct_4(false, firstTrailingBit(global2.a.a.x & ~85453u), select(select(!vec4<bool>(var_1, false, true, false), select(vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(false, true, true, false), vec4<bool>(var_1, true, false, var_1)), vec4<bool>(true, var_1, var_1, true)), vec4<bool>(!var_1, !var_1, !var_1, false), select(select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(false, var_1, var_1, false), true), vec4<bool>(var_1, var_1, var_1, false), var_1)))).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.c, -firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, 1i, u_input.a.x), vec4<i32>(u_input.c, 1i, u_input.a.x, -1i)))), 2991u, -5344i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.b.x)));
}

