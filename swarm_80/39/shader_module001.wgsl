struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-1100f, 112f, -345f), vec4<i32>(1i, -72543i, -2038i, -52535i), 39652u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    global0 = arg_2.a;
    global0 = arg_0.a;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, 462f, arg_2.a.a.x)))), vec4<i32>(u_input.e, global0.b.x, -8579i, min(-1i, global0.b.x)), _wgslsmith_mult_u32(arg_0.a.c, _wgslsmith_add_u32(_wgslsmith_sub_u32(45737u << (global0.c % 32u), ~4294967295u), 1u)));
    global0 = arg_0.a;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global0.a, vec3<f32>(-983f, 1511f, -685f)), vec3<f32>(arg_2.c.x, global0.a.x, 543f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_2.b.wyz))))), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -2147483647i, arg_2.a.b.x, arg_3.b.x), u_input.a, -arg_0.a.b) << (vec4<u32>(~arg_0.a.c, max(113u, arg_1), 1u, _wgslsmith_sub_u32(0u, u_input.c.x)) % vec4<u32>(32u))), arg_0.a.c);
    return ~(-_wgslsmith_mult_i32(arg_3.b.x ^ -3221i, -2147483647i) | arg_0.a.b.x);
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = u_input.d;
    global0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1273f) * _wgslsmith_f_op_f32(global0.a.x - arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * -295f))), global0.a), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(func_3(Struct_2(Struct_1(global0.a, u_input.a, 0u), vec4<f32>(arg_0, 1188f, global0.a.x, global0.a.x), vec2<f32>(1864f, global0.a.x), global0.b.x), u_input.d, Struct_2(Struct_1(vec3<f32>(arg_0, arg_0, arg_0), vec4<i32>(u_input.e, u_input.a.x, u_input.e, -37842i), 0u), vec4<f32>(252f, -325f, -612f, global0.a.x), vec2<f32>(-1000f, global0.a.x), 27203i), Struct_1(global0.a, vec4<i32>(1i, 1i, u_input.e, 19212i), 4294967295u)), abs(u_input.b.x), -32216i), ~u_input.b.x, _wgslsmith_div_i32(-u_input.a.x, -1i)), 5119i, countOneBits(func_3(Struct_2(Struct_1(global0.a, vec4<i32>(u_input.b.x, global0.b.x, global0.b.x, global0.b.x), u_input.c.x), vec4<f32>(arg_0, 280f, -129f, arg_0), vec2<f32>(152f, 2574f), u_input.a.x), 1u, Struct_2(Struct_1(vec3<f32>(arg_0, 293f, 1000f), vec4<i32>(-49470i, global0.b.x, 25933i, u_input.e), u_input.d), vec4<f32>(arg_0, 1032f, 782f, global0.a.x), vec2<f32>(global0.a.x, arg_0), -1i), Struct_1(vec3<f32>(-1000f, 1000f, arg_0), vec4<i32>(global0.b.x, u_input.b.x, u_input.e, u_input.b.x), 94487u))), 1i), var_0);
    var var_1 = global0.a.xx;
    let var_2 = Struct_2(Struct_1(global0.a, ~firstLeadingBit(~vec4<i32>(-1i, global0.b.x, 1i, -10876i)), ~var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-248f, -1272f, -1252f, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, arg_0, 493f, arg_0) * vec4<f32>(arg_0, -1204f, arg_0, 1737f)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, var_1.x, global0.a.x) + vec4<f32>(arg_0, 243f, 626f, global0.a.x)), vec4<f32>(-901f, 364f, arg_0, global0.a.x), vec4<bool>(true, false, false, true))))), global0.a.zx, -global0.b.x);
    let var_3 = ~vec3<u32>(_wgslsmith_clamp_u32(1u & var_2.a.c, ~var_0, 4294967295u) | ~_wgslsmith_clamp_u32(1u, var_0, 4294967295u), global0.c, ~reverseBits(~4294967295u));
    return Struct_2(var_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_2.b, vec4<f32>(global0.a.x, var_2.a.a.x, arg_0, global0.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(860f, -1833f, var_2.a.a.x, var_1.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a.x, 1616f, var_1.x, var_1.x))), true))), _wgslsmith_div_vec2_f32(var_2.a.a.yy, global0.a.yz), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.b.x, global0.b.x & _wgslsmith_dot_vec4_i32(u_input.a, var_2.a.b)), -u_input.a.yy));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = !select(vec2<bool>(true, true), select(vec2<bool>(-8606i < arg_0.d, true), vec2<bool>(true, any(vec4<bool>(false, false, true, true))), vec2<bool>(true, true)), false);
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x))).a;
    var var_2 = 1i;
    global0 = arg_0.a;
    var_0 = !(!(!vec2<bool>(any(vec3<bool>(var_0.x, true, true)), true)));
    return func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), 159f))).a;
}

fn func_1() -> vec3<bool> {
    global0 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_f_op_f32(global0.a.x * -1092f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a.x, global0.a.x), global0.a.x)), _wgslsmith_div_f32(1096f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(676f)) * 192f))), -countOneBits(u_input.a), min(u_input.d, u_input.d));
    var var_0 = global0.a.x;
    let var_1 = u_input.c.xyx;
    global0 = func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1318f), global0.a.x)))), global0.c, global0.a.x);
    var var_2 = true;
    return select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, any(vec3<bool>(false, false, true)), 8955u == u_input.c.x), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), var_1.x > (global0.c | 36716u)), select(vec3<bool>(true, any(vec3<bool>(false, false, true)), all(vec2<bool>(true, false))), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), !select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), false), !select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), 2411i >= u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_div_u32(u_input.c.x, 4294967295u >> (~_wgslsmith_dot_vec2_u32(u_input.c.xz | vec2<u32>(global0.c, 4294967295u), ~vec2<u32>(global0.c, 0u)) % 32u));
    var var_2 = global0.b;
    var var_3 = -3128f;
    var var_4 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(2147483647i, 43242i >> (var_1 % 32u)), var_2.x), -13254i, 2266i), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_2.x, func_2(global0.a.x).d) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(11003u, u_input.d, 1u), u_input.c.yxw) >> (u_input.c.xxy % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(var_2.xzz, _wgslsmith_clamp_vec3_i32(u_input.a.xzx, vec3<i32>(2147483647i, u_input.e, global0.b.x), var_2.www))));
    var var_5 = max(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_4.x, ~0i, -1670i | var_4.x), min(vec3<i32>(global0.b.x, 1i, global0.b.x) ^ global0.b.zzx, vec3<i32>(var_4.x, -1i, -15936i))), var_2.zxw), var_2.x);
    global0 = func_4(func_2(-1087f), ((firstTrailingBit(var_1) ^ countOneBits(global0.c)) ^ global0.c) << (_wgslsmith_add_u32(~7045u, ~global0.c) % 32u), global0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xx);
}

