struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_4;

var<private> global2: Struct_1;

var<private> global3: vec2<i32> = vec2<i32>(-8397i, -1994i);

var<private> global4: u32 = 21047u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = global1.a;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-616f * 196f), arg_0))), _wgslsmith_f_op_f32(-388f + 1716f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -702f))) * 1741f), 1006f, -309f), global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), vec2<f32>(var_1.x, -1788f));
}

fn func_3() -> vec3<f32> {
    var var_0 = vec4<bool>(false, firstLeadingBit((i32(-1i) * -2147483647i) << (_wgslsmith_mult_u32(1u, u_input.b) % 32u)) >= -59480i, global2.b.x, !all(global2.b));
    let var_1 = ~u_input.a;
    var var_2 = -45145i;
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1267f - global1.a), global2.d.x, -1838f)));
}

fn func_1(arg_0: u32) -> vec3<f32> {
    let var_0 = -1000f;
    global2 = func_2(1294f, arg_0, _wgslsmith_f_op_f32(-global1.a));
    var var_1 = Struct_2(global2.a.yz, Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) + _wgslsmith_f_op_vec3_f32(step(global2.a, global2.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1244f, global1.a, global1.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(860f, -739f, global2.a.x))))), !(!global2.b), var_0, global2.a.yz));
    let var_2 = ~1u;
    global1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 1000f))))));
    return _wgslsmith_f_op_vec3_f32(-var_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(-342f);
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global2.a + vec3<f32>(1314f, 1072f, 1577f)))) - vec3<f32>(-1891f, _wgslsmith_f_op_f32(-global1.a), global2.d.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(0u)) - vec3<f32>(-892f, global2.c, global2.a.x)))), global2.b, global1.a, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1280f * -367f)), -1388f), global2.a.zx));
    let var_0 = func_2(_wgslsmith_f_op_f32(ceil(-125f)), abs(1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(335f)) - -1660f) + global1.a));
    var var_1 = false;
    global3 = ~_wgslsmith_sub_vec2_i32(~(vec2<i32>(global3.x, global3.x) | vec2<i32>(-12253i, global3.x)), ~vec2<i32>(_wgslsmith_div_i32(global3.x, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, global3.x), vec2<i32>(-2147483647i, global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.d.x, ~vec2<u32>(~_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.a), 0u), _wgslsmith_add_vec2_i32(vec2<i32>(countOneBits(-2548i), max(-2147483647i, global3.x)), vec2<i32>(-2147483647i, global3.x >> (u_input.a % 32u))) >> (vec2<u32>(18840u, _wgslsmith_sub_u32(50035u, ~u_input.b)) % vec2<u32>(32u)), var_0.c);
}

