struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: vec3<i32> = vec3<i32>(2478i, 2147483647i, -1i);

var<private> global2: Struct_5 = Struct_5(Struct_3(false, vec4<i32>(-10024i, 2147483647i, 72136i, -38689i), Struct_2(95722u, Struct_1(vec3<u32>(83638u, 0u, 43372u), 26900i, 4294967295u, vec3<u32>(32760u, 74814u, 11235u))), vec3<i32>(1i, -1i, -1i)), vec2<bool>(true, false), vec4<f32>(1000f, 1370f, 1588f, 1733f));

var<private> global3: u32 = 53650u;

var<private> global4: array<f32, 18> = array<f32, 18>(313f, -1000f, -657f, -1377f, -490f, 192f, 1280f, 107f, 222f, -252f, -959f, -855f, 1790f, -568f, -948f, -980f, 1075f, -1000f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<bool>) -> vec4<f32> {
    let var_0 = global2.a.c.b;
    global2 = Struct_5(global2.a, vec2<bool>(arg_0.x, select(any(!arg_0.zzy), all(vec4<bool>(global2.b.x, false, global2.b.x, arg_0.x)), true && any(vec4<bool>(false, true, false, global2.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2.c, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.c.x, -1000f, global4[_wgslsmith_index_u32(1u, 18u)], -178f))))));
    let var_1 = vec4<u32>(~(~(_wgslsmith_sub_u32(70063u, global2.a.c.b.a.x) ^ 4753u)), global2.a.c.a, 0u, global2.a.c.a);
    let var_2 = global2.a;
    var var_3 = Struct_3(true | all(!(!arg_0.yyx)), _wgslsmith_add_vec4_i32(var_2.b | min(-var_2.b, ~var_2.b), vec4<i32>(var_2.d.x, firstLeadingBit(countOneBits(global2.a.c.b.b)), 20853i, u_input.a)), Struct_2(58501u, global2.a.c.b), _wgslsmith_div_vec3_i32(var_2.d, var_2.b.zyy));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(global2.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1068f, 649f, global4[_wgslsmith_index_u32(global2.a.c.b.c, 18u)], global0[_wgslsmith_index_u32(var_2.c.b.a.x, 28u)])))))));
}

fn func_2() -> Struct_5 {
    let var_0 = global2.a;
    let var_1 = vec2<bool>(false == (any(vec2<bool>(global2.b.x, global2.a.a)) && var_0.a), var_0.a);
    let var_2 = global2.a;
    var var_3 = Struct_2((var_0.c.b.d.x << (~select(29299u, 0u, true) % 32u)) | 1u, global2.a.c.b);
    let var_4 = Struct_1(firstLeadingBit(~vec3<u32>(109409u, global2.a.c.b.d.x, 61877u)) ^ vec3<u32>(1u, ~var_0.c.a, global2.a.c.a), ~(var_0.d.x & 0i), var_0.c.b.d.x, ~((vec3<u32>(24312u, global2.a.c.a, 4294967295u) ^ u_input.b) | ~global2.a.c.b.d) << ((~vec3<u32>(var_0.c.b.a.x, 0u, var_3.b.a.x) >> (~_wgslsmith_div_vec3_u32(var_3.b.a, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return Struct_5(global2.a, global2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(!vec4<bool>(var_2.a, false, true, var_2.a))), vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.c.b.a.x, 28u)]), -623f, _wgslsmith_f_op_f32(f32(-1f) * -817f))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    global2 = func_2();
    let var_0 = 3914u;
    let var_1 = func_2();
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_1.c.xyy))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(max(global2.c.x, 867f)), _wgslsmith_f_op_f32(-655f * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(global2.a.c.a, 28u)], -1279f))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(1991u, 18u)], var_1.c.x)) + _wgslsmith_f_op_f32(floor(var_1.c.x)))), -1909f) - _wgslsmith_f_op_vec2_f32(-global2.c.zz));
    return global2.c.x;
}

fn func_4(arg_0: f32, arg_1: vec4<i32>) -> Struct_5 {
    var var_0 = 6769u;
    var var_1 = u_input.b.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global2.c)));
    global4 = array<f32, 18>();
    var var_3 = Struct_2(4294967295u, Struct_1(~(~vec3<u32>(u_input.b.x, 38875u, u_input.b.x) << (vec3<u32>(1u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), global1.x, ~u_input.b.x, vec3<u32>(~47833u, func_2().a.c.a, ~u_input.b.x & firstTrailingBit(u_input.b.x))));
    return Struct_5(func_2().a, !(!global2.b), global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(_wgslsmith_f_op_f32(func_1(global2.a.c.b, global2.c)), ~select(firstTrailingBit(~vec4<i32>(-6421i, 2147483647i, global2.a.b.x, u_input.a)), global2.a.b, global2.b.x));
    var var_0 = global2.a.b;
    global4 = array<f32, 18>();
    let var_1 = ~_wgslsmith_sub_i32(~global2.a.c.b.b, 2147483647i);
    let var_2 = func_4(1237f, global2.a.b).c.xzx;
    var var_3 = global2.a;
    global4 = array<f32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_3(!(!vec4<bool>(true, false, var_3.a, false)))).x, _wgslsmith_add_i32(min(var_3.b.x & _wgslsmith_mod_i32(u_input.a, u_input.a), -1i), reverseBits(func_2().a.d.x ^ ~1i)), var_3.c.a, ~u_input.b.x);
}

