struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(true, false), Struct_1(-24720i, 64556u, vec3<f32>(-587f, 206f, -364f), vec3<bool>(false, true, false), vec2<bool>(false, false)), -1561f, vec3<u32>(59938u, 29623u, 4294967295u), Struct_1(-22999i, 0u, vec3<f32>(-179f, -616f, -2178f), vec3<bool>(true, false, true), vec2<bool>(true, false)));

var<private> global1: Struct_2;

var<private> global2: i32 = -1i;

var<private> global3: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    var var_0 = global1.a.x;
    let var_1 = global1.e.c;
    global0 = Struct_2(!select(select(global1.b.e, vec2<bool>(global1.b.d.x, global1.e.d.x), select(vec2<bool>(global0.e.e.x, global0.e.d.x), vec2<bool>(global0.a.x, false), global0.b.d.zx)), select(global0.b.e, global0.a, global1.a), all(select(vec3<bool>(true, true, global1.a.x), vec3<bool>(global0.b.e.x, global1.e.e.x, true), global0.e.d.x))), global1.e, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), global1.e.c.x)), global0.d, Struct_1(u_input.d, global3.x, vec3<f32>(-1362f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_1)), vec3<bool>(global1.e.d.x, any(!vec3<bool>(global0.a.x, true, global1.e.e.x)), true), global0.a));
    let var_2 = Struct_1(global0.e.a, global0.b.b | ~(39280u ^ global1.b.b), global0.b.c, !select(global1.b.d, global1.e.d, vec3<bool>(global1.a.x, true, true)), global0.a);
    let var_3 = Struct_2(vec2<bool>(_wgslsmith_f_op_f32(-1000f * 1254f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1427f * 681f) + var_1.x), !any(select(vec4<bool>(true, false, true, global1.e.d.x), vec4<bool>(true, var_2.d.x, true, true), vec4<bool>(true, false, false, true)))), Struct_1(-u_input.a.x, u_input.b.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.e.c - vec3<f32>(1000f, -1405f, arg_1)), vec3<f32>(global1.b.c.x, -561f, 112f)), global0.b.c)), select(select(select(vec3<bool>(var_2.d.x, false, global1.b.e.x), var_2.d, global0.e.d.x), vec3<bool>(var_2.e.x, true, true), vec3<bool>(false, true, global0.e.d.x)), select(global1.b.d, !global1.b.d, global1.e.d.x), global1.b.d), vec2<bool>(global1.e.b == abs(u_input.c.x), true)), -153f, global0.d, var_2);
    return ~81346u;
}

fn func_2() -> Struct_1 {
    global2 = global1.b.a;
    let var_0 = ~(vec4<u32>(_wgslsmith_mult_u32(global0.e.b >> (global0.d.x % 32u), global3.x), select(4294967295u, 1429u, -2147483647i > global1.b.a), _wgslsmith_add_u32(~global3.x, firstTrailingBit(u_input.b.x)), max(4294967295u, global0.e.b) >> (~global3.x % 32u)) | vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(global3.x, 1u), global1.e.b), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.d.x, 36141u), vec2<u32>(6008u, global3.x) >> (global0.d.xx % vec2<u32>(32u))), select(27317u, ~0u, !global0.a.x), 0u));
    global3 = vec4<u32>(_wgslsmith_sub_u32(global1.b.b | abs(~global1.d.x), func_3(_wgslsmith_div_f32(852f, _wgslsmith_f_op_f32(global1.e.c.x - global0.b.c.x)), -1000f)), ~_wgslsmith_add_u32(global3.x & (global3.x >> (u_input.b.x % 32u)), 0u & global1.b.b), 15998u, countOneBits(4294967295u));
    let var_1 = select(!(!(!select(global0.e.d, vec3<bool>(true, global0.a.x, false), global0.b.d))), global0.b.d, vec3<bool>(!(true != global0.b.d.x), global1.e.d.x || all(vec2<bool>(false, global0.a.x)), !(!global0.b.e.x) && any(vec3<bool>(true, true, global1.a.x))));
    var var_2 = !vec3<bool>(global0.e.e.x, all(vec4<bool>(global0.b.e.x, var_1.x && var_1.x, true, global1.e.e.x)), (any(global1.b.e) || any(vec2<bool>(false, true))) || global0.a.x);
    return Struct_1(global1.b.a, 1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1577f, _wgslsmith_f_op_f32(trunc(global1.c)), -1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, -275f, global0.c))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.e.c + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, global1.b.c.x, global1.b.c.x) - global1.e.c)) + global0.e.c)), !(!(!var_1)), select(global0.e.d.yz, !(!select(vec2<bool>(var_2.x, global0.b.e.x), var_1.xz, var_1.xx)), vec2<bool>(var_2.x, false)));
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(select(_wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), i32(-1i) * -2147483647i), global0.e.a, all(!global0.b.e)), global3.x, _wgslsmith_f_op_vec3_f32(global0.b.c * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1264f, _wgslsmith_f_op_f32(-global0.e.c.x), _wgslsmith_f_op_f32(-arg_0.c.x))))), !func_2().d, vec2<bool>(true, global0.e.d.x & arg_0.d.x));
    var var_1 = _wgslsmith_f_op_f32(ceil(-805f));
    var var_2 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(global1.c - 943f));
    let var_3 = func_2();
    var var_4 = func_2();
    return ~u_input.c;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> u32 {
    global3 = func_4(func_2());
    global0 = Struct_2(vec2<bool>(arg_2.e.e.x, true), Struct_1(global0.b.a, min(23911u, 0u), arg_1.c, vec3<bool>(false, any(vec4<bool>(true, global0.e.e.x, global1.a.x, false)), arg_1.d.x), arg_2.b.e), 1000f, select(~(~vec3<u32>(0u, 4294967295u, global1.e.b)), firstTrailingBit(~global0.d), vec3<bool>(true, all(vec2<bool>(global1.a.x, true)), true)), func_2());
    let var_0 = arg_2;
    let var_1 = !any(vec2<bool>(false, _wgslsmith_f_op_f32(1060f + arg_1.c.x) >= var_0.b.c.x));
    let var_2 = 37870u & ~_wgslsmith_div_u32(var_0.b.b, _wgslsmith_mod_u32(0u, _wgslsmith_div_u32(u_input.b.x, 27198u)));
    return ~var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.c.zy), global0.b.c.yy)))))), _wgslsmith_f_op_vec2_f32(-global0.e.c.yz)));
    var var_2 = countOneBits(~vec3<u32>(_wgslsmith_mod_u32(func_1(Struct_1(global0.b.a, 54306u, var_0.c, global0.b.d, var_0.e), global1.b, Struct_2(var_0.d.zz, Struct_1(u_input.d, 1u, vec3<f32>(-225f, var_1.x, global1.e.c.x), global1.b.d, vec2<bool>(true, false)), var_0.c.x, vec3<u32>(58198u, var_0.b, global0.e.b), global1.b), global3.x), max(global3.x, global0.b.b)), 28654u, ~global3.x | 0u));
    global0 = Struct_2(!(!select(global0.b.e, global0.a, select(global1.a, var_0.e, false))), func_2(), -512f, vec3<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(func_4(Struct_1(var_0.a, 67985u, vec3<f32>(2269f, var_0.c.x, var_1.x), global1.e.d, vec2<bool>(true, true))).zyy, ~global1.d), _wgslsmith_clamp_u32(global1.e.b, 1u, func_3(_wgslsmith_f_op_f32(var_0.c.x * global1.b.c.x), _wgslsmith_f_op_f32(-var_1.x)))), Struct_1(0i, _wgslsmith_sub_u32(var_2.x, u_input.c.x), global1.e.c, vec3<bool>(false, any(!global1.a), global1.a.x), vec2<bool>(true, any(vec3<bool>(var_0.d.x, true, true)))));
    var var_3 = 23084u;
    global2 = -1i ^ u_input.a.x;
    let var_4 = ~global3.x << (var_2.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<u32>(global0.b.b, global3.x, 46332u, _wgslsmith_mod_u32(global3.x, func_4(global0.e).x))), vec3<u32>(global0.b.b, 50563u, _wgslsmith_dot_vec3_u32(global3.wyy, _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.b, 33373u, 4294967295u), reverseBits(vec3<u32>(4294967295u, 51736u, var_0.b))))), countOneBits(u_input.c | u_input.c), -u_input.d);
}

