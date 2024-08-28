struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
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

var<private> global0: array<Struct_1, 2>;

var<private> global1: f32 = -628f;

var<private> global2: vec4<f32>;

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    global2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(566f + _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -488f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.e.d))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x))) - global2.x) * _wgslsmith_f_op_f32(global4.b.a * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2.x, global2.x))))), 1069f, _wgslsmith_f_op_f32(global4.a.a * -117f));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(160f, _wgslsmith_f_op_f32(trunc(global2.x))))), global4.c.a, 923f, global4.e.a);
    global1 = global4.b.d;
    let var_1 = abs(~(0u | ~_wgslsmith_add_u32(global4.d, 0u)));
    var var_2 = select(vec4<bool>(global3.x, !(_wgslsmith_div_f32(var_0.x, global2.x) < 703f), (1i & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, arg_0.x, 18132i), vec4<i32>(-29513i, u_input.b.x, u_input.a.x, arg_0.x))) > u_input.b.x, any(!vec4<bool>(true, global3.x, false, false))), vec4<bool>(!global3.x, global3.x, !global3.x, any(!(!vec3<bool>(false, true, global3.x)))), all(vec3<bool>(true, true | (global2.x >= 2095f), -global4.e.c < (arg_0.x & 1i))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-610f)) + global4.b.d);
}

fn func_2() -> Struct_1 {
    global2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1796f, -178f, global2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -137f, 422f, global4.c.a))))) * vec4<f32>(global2.x, 803f, global4.e.d, -434f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.d, 3244f, global4.e.a, global2.x))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1500f, 2196f, global4.c.a, 1000f))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1019f, -830f, false)), global4.b.d)), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_i32(u_input.b.zx, vec2<i32>(u_input.b.x, -14216i)))), global2.x, -763f))));
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1033f + global4.a.d) * 935f))), global2.yxx));
    var var_1 = select(abs(~global4.e.b.yxw), global4.c.b.ywz, true);
    global3 = vec4<bool>(true, any(!vec2<bool>(global3.x, global3.x)) && !(!(global2.x > global2.x)), !global3.x, !(u_input.c.x < global4.b.c));
    global1 = _wgslsmith_f_op_f32(-249f - -1000f);
    return global4.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: bool) -> Struct_2 {
    var var_0 = func_2();
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(827f + _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.c.a)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(898f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(f32(-1f) * -1557f))))));
    let var_1 = func_2();
    var_0 = func_2();
    var var_2 = var_0.b.xz;
    return arg_0;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.d));
    global0 = array<Struct_1, 2>();
    return func_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-567f + 473f) - _wgslsmith_f_op_f32(min(-888f, var_0))), vec4<u32>(~20047u, _wgslsmith_add_u32(0u, 1u), ~4294967295u, 0u), countOneBits(u_input.b.x >> (global4.d % 32u)), 597f, _wgslsmith_dot_vec3_u32(global4.c.b.ywx, global4.b.b.zwx)), global0[_wgslsmith_index_u32(12223u, 2u)], global0[_wgslsmith_index_u32(~0u, 2u)], _wgslsmith_add_u32(_wgslsmith_add_u32(global4.b.b.x, 0u), 1u), func_2()), global3.xx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 1816f, var_0))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1976f, 789f, -183f, var_0) * vec4<f32>(global4.e.d, global2.x, 1158f, -131f)), vec4<f32>(1198f, global2.x, global2.x, 1613f)))), global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(false && any(select(!vec4<bool>(false, global3.x, global3.x, global3.x), !vec4<bool>(global3.x, global3.x, false, false), !global3.x)));
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, _wgslsmith_f_op_f32(var_1.b.a + var_1.e.a), _wgslsmith_f_op_f32(-var_1.e.a))) - _wgslsmith_f_op_vec3_f32(-global2.wzz))));
    let var_3 = Struct_2(global4.a, func_4(func_4(Struct_2(global0[_wgslsmith_index_u32(6395u, 2u)], Struct_1(-1536f, var_1.c.b, 0i, var_2.x, var_1.e.b.x), var_1.e, _wgslsmith_sub_u32(23641u, global4.b.e), Struct_1(global4.e.a, vec4<u32>(4294967295u, 2952u, 0u, 1u), global4.b.c, global4.e.d, 4294967295u)), select(vec2<bool>(global3.x, global3.x), global3.xy, all(vec4<bool>(global3.x, false, global3.x, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 685f, global2.x, -1000f) * vec4<f32>(global2.x, global2.x, 131f, var_1.c.d))), global3.x), select(select(global3.wx, vec2<bool>(global3.x, false), select(global3.zx, vec2<bool>(global3.x, global3.x), global3.yz)), select(global3.wy, select(vec2<bool>(global3.x, global3.x), global3.zw, false), global3.wx), !select(false, global3.x, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.c.a, -887f, global4.e.d, global4.e.a) * vec4<f32>(441f, var_1.b.d, -1070f, -1110f)), vec4<f32>(1000f, 512f, global4.a.a, -510f))), all(vec2<bool>(global3.x, global3.x)) && ((var_1.d << (4294967295u % 32u)) >= ~global4.e.b.x)).a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -523f))), var_1.a.b, (u_input.c.x ^ -9591i) | -3805i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2198f, 2886f)) - _wgslsmith_f_op_f32(144f + global2.x))), global4.c.b.x), global4.b.e ^ (_wgslsmith_add_u32(0u & global4.c.e, 1u) | ~4294967295u), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(~var_1.d, reverseBits(33308u)) & 18031u), 2u)]);
    var var_4 = global3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(-(~(vec4<i32>(2147483647i, -1i, var_3.a.c, global4.c.c) >> (global4.e.b % vec4<u32>(32u)))), -select(abs(vec4<i32>(var_1.c.c, u_input.c.x, var_3.e.c, var_3.e.c)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, var_1.b.c, -67840i, var_3.e.c), vec4<i32>(global4.b.c, var_1.e.c, 2147483647i, var_1.b.c)), true), select(~reverseBits(vec4<i32>(0i, global4.c.c, global4.c.c, -47056i)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, global4.b.c, var_3.b.c, var_1.e.c), vec4<i32>(global4.c.c, global4.e.c, -1i, var_1.b.c)) << (vec4<u32>(0u, var_3.c.e, global4.a.e, 1u) % vec4<u32>(32u)), global3.x != (global4.d < var_3.c.e))));
}

