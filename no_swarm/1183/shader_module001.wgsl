struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1202f, -950f, -981f);

var<private> global1: Struct_1 = Struct_1(1u, false, vec4<f32>(-604f, -292f, -684f, -141f), -24948i);

var<private> global2: Struct_2;

var<private> global3: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(i32(-2147483648), -62485i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> bool {
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, u_input.c), _wgslsmith_clamp_vec3_u32(~(~select(u_input.c, vec3<u32>(arg_1.a.a, arg_1.e.a, 4294967295u), vec3<bool>(global2.a.b, arg_1.e.b, true))), vec3<u32>(arg_1.a.a, 4707u, ~_wgslsmith_mult_u32(u_input.c.x, 4802u)), u_input.c));
    var var_1 = vec4<bool>(global1.b, any(vec4<bool>(true, !all(vec2<bool>(true, global1.b)), global2.a.b, false || all(vec4<bool>(true, global2.d.b, global1.b, true)))), !arg_1.e.b, arg_1.a.b | false);
    global0 = vec3<f32>(arg_1.d.c.x, global0.x, global1.c.x);
    var var_2 = Struct_2(global2.e, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(global1.c)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1837f, -1755f, 708f, 159f))) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.x, arg_1.a.c.x, -738f, 1250f), vec4<f32>(-1095f, arg_1.a.c.x, 713f, arg_1.b.x))))))), -(-76387i & _wgslsmith_clamp_i32(global1.d, global2.d.d << (4294967295u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_0), vec2<i32>(1i, -60717i)))), Struct_1(~(11868u | var_0.x), (!global2.d.b & var_1.x) && !var_1.x, vec4<f32>(global1.c.x, -170f, -631f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(trunc(global2.d.c.x))))), _wgslsmith_div_i32(~(~global1.d), (-2147483647i << (global2.e.a % 32u)) & _wgslsmith_clamp_i32(-3286i, -1572i, arg_1.c))), global2.e);
    global3 = array<vec2<i32>, 1>();
    return arg_1.a.d >= ~(-47061i);
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b.zwz));
    global2 = Struct_2(Struct_1(global1.a, select(true, true, global0.x <= -1793f), global2.b, u_input.b.x), _wgslsmith_f_op_vec4_f32(-global2.e.c), _wgslsmith_mult_i32(countOneBits(i32(-1i) * -1i), 56080i), Struct_1(max(u_input.c.x, ~4340u), false, _wgslsmith_f_op_vec4_f32(select(global1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c) + _wgslsmith_f_op_vec4_f32(max(global2.d.c, global2.e.c))), func_3(-2147483647i, Struct_2(Struct_1(global1.a, global1.b, global2.a.c, -6210i), vec4<f32>(-770f, 1215f, 180f, 1219f), global1.d, Struct_1(global1.a, false, global1.c, global2.e.d), global2.d)))), global1.d), global2.a);
    let var_0 = global2.d;
    let var_1 = vec2<u32>(u_input.c.x, ~(~(~_wgslsmith_mod_u32(u_input.c.x, global2.a.a))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, -1000f), _wgslsmith_f_op_f32(var_0.c.x - global2.d.c.x))) * global1.c.x), -338f, 724f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(380f + 774f), 209f)) * _wgslsmith_f_op_f32(-var_0.c.x))));
    return global2.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = vec4<bool>(func_2().b, !select(any(select(vec3<bool>(arg_0.b, false, global1.b), vec3<bool>(global1.b, global1.b, true), vec3<bool>(global1.b, global2.d.b, true))), global2.a.b, global2.d.b), all(vec2<bool>(arg_0.b, !arg_0.b)) != all(select(vec3<bool>(false, false, global1.b), select(vec3<bool>(global1.b, false, arg_0.b), vec3<bool>(true, arg_0.b, false), true), vec3<bool>(arg_0.b, arg_0.b, false))), arg_0.b);
    let var_1 = vec4<i32>(~abs(-2147483647i), 2147483647i, global1.d, global1.d);
    let var_2 = vec4<i32>(min(abs(7322i) | ~(-var_1.x), abs(reverseBits(~global1.d))), -_wgslsmith_dot_vec4_i32(-vec4<i32>(global1.d, 56935i, -2147483647i, arg_0.d), vec4<i32>(arg_0.d, 1i, -11528i, -1i)) ^ arg_0.d, _wgslsmith_dot_vec3_i32(select(vec3<i32>(global1.d, -7555i, -1i), vec3<i32>(var_1.x, u_input.b.x, var_1.x), true) >> (vec3<u32>(u_input.c.x, 59548u, 1u) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_i32(var_1.wxw, vec3<i32>(-2147483647i, var_1.x, arg_0.d))) << ((4294967295u >> (1u % 32u)) % 32u), var_1.x);
    global2 = Struct_2(global2.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-761f, -715f, global1.c.x, 1370f), arg_1)))))), _wgslsmith_clamp_i32(-71661i, 41583i, var_2.x ^ (u_input.d.x << (14824u % 32u))), Struct_1(~(~countOneBits(global2.a.a)), arg_0.b & true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1213f, arg_1.x, global1.c.x, global0.x))) * _wgslsmith_f_op_vec4_f32(-arg_1))), 13876i), arg_0);
    global3 = array<vec2<i32>, 1>();
    return global2.a;
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    global1 = func_4(func_2(), global2.d.c);
    var var_0 = false;
    var_0 = true;
    var_0 = true;
    let var_1 = vec3<bool>(true, true, true);
    return Struct_2(global2.a, vec4<f32>(-180f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), global0.x), u_input.d.x, global2.d, global2.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mult_vec2_u32(u_input.c.zy, u_input.c.zz));
    let var_1 = global2.e;
    var var_2 = func_3(var_1.d, var_0);
    global3 = array<vec2<i32>, 1>();
    var var_3 = firstTrailingBit(vec4<i32>(1i, global1.d, i32(-1i) * -1i, _wgslsmith_clamp_i32(func_2().d, ~global1.d, -2147483647i)) | vec4<i32>(2147483647i, var_0.a.d, 0i ^ u_input.b.x, 0i));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(0u, var_0.e.a)), abs(abs(vec2<u32>(global1.a, var_0.e.a))), vec2<u32>(countOneBits(var_1.a), ~global1.a)), firstTrailingBit(-14147i));
}

