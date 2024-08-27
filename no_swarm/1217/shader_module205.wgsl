struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_2, 32>;

var<private> global2: Struct_4;

var<private> global3: array<vec4<bool>, 10>;

var<private> global4: bool;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> f32 {
    global4 = !all(global2.b.b.wwx);
    global1 = array<Struct_2, 32>();
    global1 = array<Struct_2, 32>();
    global1 = array<Struct_2, 32>();
    let var_0 = global0.zx;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -237f), -358f));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> vec2<u32> {
    let var_0 = arg_2.d;
    global4 = any(!vec4<bool>(all(vec4<bool>(global0.x, global0.x, arg_2.a.c, true)), arg_2.c.c, arg_2.c.c, !(arg_2.a.b.x || true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.e.x) + _wgslsmith_f_op_f32(-arg_2.e.x)), 920f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2.d.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.e.x, _wgslsmith_f_op_f32(-787f * 133f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(250f, -222f, global0.x))))));
    global4 = false;
    var var_2 = Struct_4(!(any(arg_2.c.b.ywx) & true) & global2.a, global2.b, Struct_1(arg_2.a.e), 16418i, arg_2.c.d);
    return vec2<u32>(reverseBits(1u), arg_2.a.e.x);
}

fn func_1() -> bool {
    var var_0 = Struct_1(~vec3<u32>(~global2.c.a.x, abs(u_input.b.x), _wgslsmith_dot_vec2_u32(select(vec2<u32>(global2.e.a.x, global2.c.a.x), global2.c.a.xx, global0.zx), func_2(1000f, global2.b.a, Struct_3(global1[_wgslsmith_index_u32(global2.c.a.x, 32u)], u_input.b.x, Struct_2(27676u, vec4<bool>(global0.x, true, global0.x, global0.x), true, Struct_1(vec3<u32>(u_input.b.x, 3345u, 1748u)), global2.c.a), vec3<i32>(-1i, u_input.a, 26640i), vec2<f32>(790f, -625f))))));
    global0 = !select(select(vec3<bool>(global0.x, all(vec4<bool>(false, true, global0.x, false)), any(vec4<bool>(false, global0.x, true, global2.b.c))), global2.b.b.xzz, vec3<bool>(false, !global0.x, any(vec2<bool>(false, true)))), select(select(!vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global2.b.c, global0.x, true), global2.b.b.zyz), !select(global2.b.b.zwz, vec3<bool>(false, global2.b.b.x, global2.a), false), select(!global2.b.b.yxw, select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global2.b.b.x, false, true), vec3<bool>(global2.b.c, false, true)), true)), global2.b.b.zwy);
    let var_1 = global2.b;
    let var_2 = select(vec2<i32>(10051i, u_input.a | -_wgslsmith_mod_i32(u_input.a, global2.d)), _wgslsmith_sub_vec2_i32(min(~vec2<i32>(global2.d, global2.d), -vec2<i32>(u_input.a, u_input.a)), ~select(vec2<i32>(global2.d, 2147483647i), vec2<i32>(global2.d, u_input.a), true)) >> (vec2<u32>(var_0.a.x, 1u) % vec2<u32>(32u)), var_1.b.x);
    let var_3 = !select(vec2<bool>(global2.a, var_1.b.x), vec2<bool>(all(global3[_wgslsmith_index_u32(~global2.b.e.x, 10u)]), true), !(!var_1.b.yz));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = -(~vec4<i32>(global2.d, global2.d, _wgslsmith_mod_i32(~(-41146i), _wgslsmith_add_i32(-68577i, 1i)), u_input.a));
    let var_2 = Struct_2(~global2.c.a.x, global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.c.a.x, 0u, 0u), vec3<u32>(995u, 1u, 5980u)), ~57461u), global2.c.a.x)), 10u)], true, Struct_1(~(vec3<u32>(33328u, global2.e.a.x, 0u) | (vec3<u32>(67836u, u_input.b.x, 19972u) | vec3<u32>(4294967295u, global2.e.a.x, global2.c.a.x)))), vec3<u32>(_wgslsmith_div_u32(global2.c.a.x, u_input.b.x) & global2.e.a.x, 4294967295u, _wgslsmith_sub_u32(16551u, ~global2.e.a.x)));
    global1 = array<Struct_2, 32>();
    let var_3 = Struct_4(global2.a | var_2.b.x, global2.b, global2.b.d, -((~0i ^ ~global2.d) & (i32(-1i) * -57079i)), Struct_1(var_2.d.a));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(1u, 1u), _wgslsmith_f_op_f32(f32(-1f) * -518f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1632f, -2069f, 1339f), vec3<f32>(1000f, 544f, 232f))) + vec3<f32>(1f, 1f, 1f))));
}

