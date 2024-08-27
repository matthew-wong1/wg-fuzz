struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

var<private> global1: u32;

var<private> global2: vec3<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = Struct_2(arg_3.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(min(arg_2.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.x, arg_2.b, -630f, -332f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1313f, -705f, 1292f, arg_2.a.x), vec4<f32>(arg_2.a.x, 195f, -388f, arg_2.b))), select(vec4<bool>(true, true, false, arg_0.x), vec4<bool>(arg_3.a.x, false, true, arg_0.x), vec4<bool>(false, global2.x, arg_0.x, false)))))), _wgslsmith_f_op_f32(sign(-326f)), -vec2<i32>(global0[_wgslsmith_index_u32(~4294967295u, 8u)], arg_3.b), firstLeadingBit(arg_2.d), arg_2.e), vec4<u32>(~83519u | u_input.b.x, u_input.b.x, u_input.b.x, 79254u), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_2.a.x, _wgslsmith_f_op_f32(-1243f * -530f), _wgslsmith_f_op_f32(-arg_2.a.x))), -1847f, vec2<i32>(u_input.a.x ^ u_input.c, ~arg_3.b) >> (~(~vec2<u32>(u_input.b.x, u_input.b.x)) % vec2<u32>(32u)), ~(-vec4<i32>(u_input.c, u_input.a.x, 49370i, 1i)), vec3<bool>(true, any(arg_2.e), !(74359u > u_input.b.x))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -610f);
    var var_2 = -arg_2.d.wyx;
    let var_3 = _wgslsmith_f_op_vec2_f32(arg_2.a.wz - arg_2.a.xw);
    var var_4 = arg_3;
    return arg_2.e;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<f32> {
    global0 = array<i32, 8>();
    var var_0 = arg_0.e.x;
    var_0 = true;
    global1 = 4294967295u;
    let var_1 = arg_0.e.x;
    return _wgslsmith_f_op_vec4_f32(-arg_0.a);
}

fn func_1() -> StorageBuffer {
    global0 = array<i32, 8>();
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -684f)), _wgslsmith_f_op_f32(1646f + 1000f), _wgslsmith_div_f32(2086f, -1331f), 1f), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1271f, 1501f, 877f, -611f)), -126f, _wgslsmith_sub_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], -26790i), u_input.a), vec4<i32>(-33534i, 2147483647i, u_input.c, global0[_wgslsmith_index_u32(32406u, 8u)]) & vec4<i32>(u_input.a.x, 1i, 1i, -1i), func_2(vec3<bool>(global2.x, global2.x, global2.x), global0[_wgslsmith_index_u32(u_input.b.x, 8u)], Struct_1(vec4<f32>(-353f, 1000f, -142f, -180f), 250f, vec2<i32>(u_input.a.x, 11601i), vec4<i32>(1i, 2147483647i, u_input.c, -41883i), vec3<bool>(global2.x, false, global2.x)), Struct_3(vec2<bool>(true, false), u_input.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1147f, 178f, 673f, -811f))))), _wgslsmith_div_f32(-269f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -351f) - _wgslsmith_f_op_f32(exp2(1f)))), vec2<i32>(u_input.a.x, -reverseBits(select(u_input.a.x, global0[_wgslsmith_index_u32(0u, 8u)], false))), select(~max(_wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(40704u, 8u)], 11653i, -44281i, global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec4<i32>(u_input.c, u_input.a.x, 0i, u_input.a.x)), vec4<i32>(18768i, u_input.c, 0i, global0[_wgslsmith_index_u32(u_input.b.x, 8u)])), -reverseBits(vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(u_input.b.x, 8u)], u_input.c, u_input.a.x)), select(select(select(vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(false, global2.x, false, global2.x), global2.x), vec4<bool>(true, false, true, global2.x), global2.x), vec4<bool>(any(vec2<bool>(false, false)), true, true, global2.x), vec4<bool>(!global2.x, any(global2.zx), select(true, false, global2.x), global2.x))), select(!vec3<bool>(true, global2.x, !global2.x), vec3<bool>(true & (global2.x | true), select(global2.x, global2.x, all(vec4<bool>(true, global2.x, global2.x, true))), global2.x), global2.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.a.zx))), vec2<f32>(_wgslsmith_f_op_f32(min(var_0.b, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.a.x, var_0.b), _wgslsmith_f_op_f32(var_0.a.x * var_0.b)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(var_0.a.xxx, vec3<f32>(var_0.a.x, -1285f, -170f))), vec3<f32>(var_1.x, var_1.x, var_1.x), true))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2207f, var_1.x, -1000f), var_0.a.wxz, var_0.e.x)) + vec3<f32>(var_0.b, 1327f, var_0.a.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(var_0.a.xwz, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-552f, var_0.a.x, -637f))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 1178f, -1530f)), vec3<f32>(-1420f, 247f, var_1.x))))));
    var var_3 = select(u_input.b.x, 52394u >> (~u_input.b.x % 32u), all(select(vec3<bool>(var_0.e.x, false, global2.x), func_2(!vec3<bool>(false, var_0.e.x, var_0.e.x), var_0.c.x >> (u_input.b.x % 32u), Struct_1(vec4<f32>(-1161f, var_0.a.x, 674f, var_0.a.x), -125f, vec2<i32>(u_input.a.x, -6861i), var_0.d, var_0.e), Struct_3(vec2<bool>(var_0.e.x, global2.x), var_0.c.x)), global2.x)));
    return StorageBuffer(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-873f * _wgslsmith_f_op_f32(max(var_2.x, var_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -18428i, global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), abs(vec3<i32>(38690i, global0[_wgslsmith_index_u32(u_input.b.x, 8u)], u_input.c))) == _wgslsmith_dot_vec2_i32(~u_input.a, vec2<i32>(u_input.c, -42574i)), true);
    let x = u_input.a;
    s_output = func_1();
}

