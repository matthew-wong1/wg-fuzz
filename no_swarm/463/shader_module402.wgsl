struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<i32, 22>;

var<private> global2: vec3<f32> = vec3<f32>(2185f, 917f, 378f);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, false), vec2<bool>(false, true)), -3216i);

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    var var_0 = vec3<f32>(1f, _wgslsmith_f_op_f32(step(524f, global2.x)), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(select(264f, _wgslsmith_f_op_f32(global2.x * _wgslsmith_div_f32(1000f, -1726f)), global3.a.b.x))));
    global0 = array<Struct_1, 4>();
    let var_1 = !select(select(select(select(global4.a, vec2<bool>(true, true), vec2<bool>(global3.a.a.x, false)), select(vec2<bool>(true, true), vec2<bool>(global4.a.x, global3.a.b.x), global3.a.a.x), global3.a.a.x), global3.a.a, global3.a.a.x), vec2<bool>(u_input.a.x == _wgslsmith_mult_u32(53717u, 429u), !select(global4.a.x, global4.a.x, global3.a.a.x)), _wgslsmith_f_op_f32(-1f) >= global2.x);
    global3 = Struct_2(global3.a, _wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, -global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), ~(-_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(global3.b, -11146i, global3.b, -2147483647i)))));
    let var_2 = global3.a;
    return ~_wgslsmith_sub_vec4_i32(-(~vec4<i32>(global3.b, 50519i, 1i, 27857i)), u_input.e);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec4<f32> {
    global4 = global3.a;
    var var_0 = abs(select(u_input.e, ~func_3(u_input.e.x), !global4.b.x));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(79068u, 86343u)) | 3181u) << (~(0u ^ _wgslsmith_add_u32(u_input.a.x, u_input.a.x)) % 32u), 4u)], ~var_0.x);
    var_1 = Struct_2(global0[_wgslsmith_index_u32(143256u, 4u)], _wgslsmith_div_i32(16274i, abs(global3.b)));
    var var_2 = ~min(_wgslsmith_dot_vec3_u32(u_input.a.yzz, min(vec3<u32>(46656u, u_input.a.x, u_input.a.x), vec3<u32>(11824u, u_input.a.x, 4294967295u))), ~u_input.a.x);
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 489f, global2.x, global2.x), vec4<f32>(global2.x, arg_0.x, -1607f, arg_0.x)))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(ceil(arg_0.x)), true)), -770f, 1988f, global2.x)));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<i32>) -> vec3<bool> {
    var var_0 = any(!(!(!select(vec4<bool>(global4.b.x, global4.a.x, global3.a.b.x, false), vec4<bool>(global3.a.b.x, global3.a.a.x, true, true), vec4<bool>(global4.b.x, global4.a.x, true, global3.a.a.x)))));
    var var_1 = select(vec4<bool>(!all(vec3<bool>(true, false, global4.b.x)), global4.a.x, global4.b.x, true), vec4<bool>(global4.b.x, true, !any(global3.a.a), !(any(vec3<bool>(global4.a.x, true, global3.a.b.x)) != global4.a.x)), vec4<bool>(global3.a.a.x, any(global3.a.b), global3.a.b.x, all(select(vec4<bool>(global3.a.b.x, false, global4.a.x, global4.b.x), select(vec4<bool>(global4.b.x, global4.b.x, global3.a.b.x, false), vec4<bool>(false, true, false, global3.a.a.x), global4.a.x), select(vec4<bool>(true, true, false, false), vec4<bool>(global4.a.x, global4.b.x, global3.a.a.x, true), vec4<bool>(true, global3.a.b.x, false, true))))));
    return select(var_1.yww, vec3<bool>(any(select(!var_1.wxw, var_1.zwx, vec3<bool>(false, false, false))), all(vec2<bool>(true, global4.b.x)) || (_wgslsmith_f_op_f32(round(arg_0.x)) >= global2.x), !(!var_1.x)), vec3<bool>(var_1.x, global4.b.x, all(vec2<bool>(false, true)) | global4.a.x));
}

fn func_5(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = 23110u;
    global4 = arg_3.a;
    var var_1 = ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(~27426u, u_input.a.x, u_input.a.x), ~(~u_input.a.ywz), vec3<u32>(25947u, var_0, 1u) >> (~vec3<u32>(var_0, 33429u, var_0) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.yy)))))));
    var var_3 = arg_3.a;
    return arg_3;
}

fn func_1() -> Struct_2 {
    global1 = array<i32, 22>();
    var var_0 = global3.a;
    return func_5(vec3<i32>(_wgslsmith_div_i32(-2147483647i, 3956i) ^ abs(abs(global1[_wgslsmith_index_u32(u_input.a.x, 22u)])), ~_wgslsmith_dot_vec2_i32(max(u_input.d.zz, u_input.d.wz), ~vec2<i32>(0i, u_input.e.x)), ~reverseBits(_wgslsmith_div_i32(2147483647i, global3.b))), -global1[_wgslsmith_index_u32(u_input.a.x, 22u)], func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<f32>(global2.x, 1000f), global0[_wgslsmith_index_u32(~u_input.a.x, 4u)], u_input.d << (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, -160f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(424f, 1000f, global2.x, global2.x))))), min(69647u, u_input.a.x), reverseBits(~u_input.e << (select(u_input.a, vec4<u32>(0u, u_input.a.x, 63331u, 0u), vec4<bool>(true, false, global4.b.x, false)) % vec4<u32>(32u)))), Struct_2(Struct_1(vec2<bool>(global3.a.a.x, true), func_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, global2.x, global2.x, global2.x))), 32003u, func_3(7068i)).xx), global1[_wgslsmith_index_u32(~(~(~0u)), 22u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(u_input.e.zxx);
    var var_1 = func_1();
    global4 = global3.a;
    var var_2 = _wgslsmith_mult_vec3_i32(-abs(~_wgslsmith_add_vec3_i32(u_input.e.xxz, u_input.d.wzx)), u_input.e.wxx);
    global1 = array<i32, 22>();
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, global3.b, -15822i, _wgslsmith_add_i32(_wgslsmith_mult_i32(var_2.x, _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(0i, 34926i, global3.b, 2147483647i))), func_5(countOneBits(u_input.d.wxw), func_5(vec3<i32>(20512i, u_input.c, global1[_wgslsmith_index_u32(2950u, 22u)]), global3.b, vec3<bool>(var_1.a.b.x, global3.a.b.x, var_1.a.b.x), Struct_2(Struct_1(var_1.a.a, global4.b), global3.b)).b, func_4(vec4<f32>(1190f, -514f, global2.x, -197f), 25572u, vec4<i32>(global3.b, var_0.x, var_0.x, var_1.b)), Struct_2(Struct_1(vec2<bool>(var_1.a.b.x, global3.a.a.x), vec2<bool>(true, global4.a.x)), -12729i)).b)));
}

