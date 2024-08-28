struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(1000f, 1000f, 184f), vec3<f32>(-324f, -578f, -1629f), vec3<bool>(true, false, true), vec4<i32>(0i, 1i, -46035i, -22317i));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<f32>(1000f, -485f, 819f), vec3<f32>(-306f, -206f, 945f), vec3<bool>(true, false, false), vec4<i32>(0i, i32(-2147483648), 1i, 1i)), Struct_1(vec3<f32>(113f, 2024f, 477f), vec3<f32>(-1042f, -390f, 564f), vec3<bool>(false, false, true), vec4<i32>(12851i, -17722i, 22803i, 25301i)), 2147483647i, 280f, Struct_1(vec3<f32>(309f, -367f, 698f), vec3<f32>(596f, 2513f, 691f), vec3<bool>(false, true, true), vec4<i32>(-17610i, -15686i, -38835i, 53791i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> i32 {
    return global1.d.x;
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = global1.c;
    var var_1 = !global2.b.c;
    var_1 = global2.a.c;
    var var_2 = -firstTrailingBit(min(u_input.a.x, max(func_3(vec3<bool>(false, false, false), var_0.x, global0[_wgslsmith_index_u32(u_input.b, 20u)], global1.d.x), global1.d.x)));
    let var_3 = global1.a.x;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(global2.b.b)), global2.e.b, vec3<bool>(any(vec3<bool>(var_0.x, var_0.x, true)), global2.b.a.x >= -461f, true), ~(global1.d & u_input.a) >> (_wgslsmith_add_vec4_u32(vec4<u32>(26706u, 4294967295u, 1u, arg_0), ~vec4<u32>(4907u, arg_0, 0u, 1u)) % vec4<u32>(32u))), Struct_1(vec3<f32>(-2134f, _wgslsmith_f_op_f32(global2.a.a.x * global1.a.x), global2.e.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1811f, global1.a.x, global2.d)), global1.a))), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(var_0.x, global2.e.c.x)), u_input.a.x == global1.d.x, true), select(vec3<bool>(true, true, global1.c.x), vec3<bool>(false, true, true), !vec3<bool>(true, var_0.x, global1.c.x))), global2.a.d), _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(global2.b.d, vec4<i32>(1i, -18487i, global2.a.d.x, -4722i)), firstTrailingBit(vec4<i32>(global2.e.d.x, global1.d.x, global1.d.x, -2147483647i))), global1.d.x >> (u_input.b % 32u)), _wgslsmith_f_op_f32(-1f), global2.e);
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: i32) -> Struct_2 {
    var var_0 = func_2(reverseBits(0u));
    return func_2(_wgslsmith_div_u32(min(u_input.b, ~_wgslsmith_clamp_u32(0u, u_input.b, u_input.b)), u_input.b));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(global2.a.b.x, _wgslsmith_f_op_f32(1805f + _wgslsmith_f_op_f32(global1.a.x + arg_0.a.a.x)), global2.e.b.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(arg_0.b.b, arg_0.b.a)))), global1.a));
    let var_1 = u_input.b | u_input.b;
    global1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(222f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1089f - -614f))), -481f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.e.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b.a)), vec3<bool>(global1.c.x, false, global1.c.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.b, var_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(340f, 113f, -332f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b.x, -1000f, arg_0.e.b.x), _wgslsmith_f_op_vec3_f32(global2.b.b + vec3<f32>(-992f, arg_0.e.a.x, -1000f)), !arg_1.e.c.x)))), !func_1(func_2(min(u_input.b, var_1)).a.c.zx, !(!global2.b.c.x), arg_0.e.d.x).e.c, vec4<i32>(arg_1.c, ~(-arg_2.c) & 10199i, func_2(33373u).e.d.x, -12258i));
    var var_2 = arg_1.c;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-800f, var_0.x, 1000f, -1243f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, 1469f, global1.b.x, 566f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, arg_2.e.b.x, global2.a.a.x, arg_2.b.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1492f, global2.b.a.x, 735f, arg_2.b.b.x) * vec4<f32>(arg_0.d, 257f, -1805f, global1.b.x))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(2210f, -690f, 123f, -175f) * vec4<f32>(-360f, global2.b.a.x, global2.e.b.x, -1341f)), vec4<f32>(var_0.x, arg_1.e.b.x, arg_0.a.b.x, 1496f)))))));
    return arg_1.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(621f, global2.b.a.x), -846f, 1561f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global2.d, -462f), global1.a.x, global1.a.x)), vec3<f32>(-1409f, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-761f + global2.a.a.x)))), vec3<bool>(any(vec4<bool>(any(vec4<bool>(false, global1.c.x, global1.c.x, true)), true, true, global1.c.x)), !global2.a.c.x == !any(vec4<bool>(false, global2.a.c.x, global1.c.x, false)), true), abs(vec4<i32>(u_input.a.x, ~abs(29472i), (global1.d.x | -1i) | global1.d.x, ~global2.a.d.x)));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_4(func_1(vec2<bool>(global1.c.x, true), any(vec4<bool>(false, true, global1.c.x, global2.a.c.x)), _wgslsmith_mult_i32(-23981i, -1i)), Struct_2(Struct_1(vec3<f32>(global2.e.a.x, 1407f, -2301f), global1.a, vec3<bool>(true, true, true), vec4<i32>(-1i, u_input.a.x, 2991i, -14740i)), func_1(global2.a.c.yx, global2.b.c.x, global2.e.d.x).a, 1i, _wgslsmith_f_op_f32(-global1.b.x), Struct_1(global2.b.b, global1.b, vec3<bool>(global2.e.c.x, global1.c.x, false), u_input.a)), func_2(u_input.b))))), global2.a.a, !global1.c, global1.d);
    let var_0 = global2.e;
    let var_1 = select(!select(vec4<bool>(global2.e.c.x, 1u != u_input.b, true, global1.c.x), vec4<bool>(true, all(var_0.c), global2.a.c.x, false && global2.e.c.x), any(select(vec4<bool>(true, global2.b.c.x, global2.a.c.x, global2.e.c.x), vec4<bool>(true, global1.c.x, false, global2.a.c.x), vec4<bool>(true, true, global1.c.x, global1.c.x)))), select(vec4<bool>(global2.a.c.x, all(vec3<bool>(var_0.c.x, global1.c.x, true)), global2.a.c.x, false), vec4<bool>(false, u_input.b > ~u_input.b, var_0.c.x, global1.c.x), vec4<bool>(var_0.c.x, false, true, !global1.c.x)), !global1.c.x);
    let var_2 = -min(~global1.d.xxx ^ global2.b.d.wxz, vec3<i32>(countOneBits(var_0.d.x) & u_input.c, 32816i, _wgslsmith_mult_i32(~1i, -21763i)));
    var var_3 = global1.a.xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a + var_0.b) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_3.x, var_0.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a.a) - _wgslsmith_f_op_vec3_f32(select(global2.b.b, vec3<f32>(global1.a.x, -1000f, 110f), true))))), -740f, -u_input.a.x);
}

