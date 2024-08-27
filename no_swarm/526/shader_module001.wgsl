struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(2147483647i, 0i), vec2<i32>(11283i, 0i), vec2<i32>(11192i, 0i), vec2<i32>(5798i, 1969i), vec2<i32>(-34159i, 0i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(29626i, i32(-2147483648)), vec2<i32>(2147483647i, 1i), vec2<i32>(16135i, 1i), vec2<i32>(2147483647i, -1i), vec2<i32>(1i, -1i), vec2<i32>(-18956i, 2147483647i), vec2<i32>(13900i, -33036i), vec2<i32>(i32(-2147483648), i32(-2147483648)));

var<private> global1: array<f32, 10> = array<f32, 10>(672f, -1000f, -1000f, 400f, 1129f, 168f, -682f, 1022f, 649f, 176f);

var<private> global2: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-1268f, 1325f), vec2<f32>(-1824f, 1264f), vec2<f32>(253f, 145f));

var<private> global3: vec4<u32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> u32 {
    var var_0 = max(~reverseBits(abs(u_input.e)), -36652i);
    var var_1 = 2147483647i;
    global3 = ~(~select(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 0u, global3.x, global3.x), vec4<u32>(u_input.c, 20559u, 0u, u_input.a.x))), ~(~vec4<u32>(0u, 34798u, u_input.d.x, 0u)), all(vec3<bool>(false, true, arg_0)) && arg_0));
    var_0 = u_input.e;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3.x, 10u)]))) + arg_1.x));
    return _wgslsmith_mult_u32(global3.x, _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(global3.x, u_input.c), min(_wgslsmith_div_u32(~global3.x, u_input.b.x), abs(global3.x)), ~abs(global3.x)));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: bool) -> Struct_1 {
    let var_0 = ~(select(u_input.a.zyw, _wgslsmith_add_vec3_u32(u_input.b.xwy, vec3<u32>(39753u, 4294967295u, 3862u)), arg_1.x) >> (vec3<u32>(u_input.a.x, 79457u, ~_wgslsmith_add_u32(global3.x, 4294967295u)) % vec3<u32>(32u)));
    var var_1 = Struct_1(true, var_0.yy);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 10u)]) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2004f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 10u)])))) + -521f));
    let var_3 = (arg_2.yz & vec2<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(-27721i, -25553i)), 0i)) << ((_wgslsmith_div_vec2_u32(global3.wx & (var_0.zz ^ global3.yx), global3.xz) | vec2<u32>(global3.x, func_3(var_2 > 152f, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1383f, 2262f, 981f, global1[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec4<f32>(-934f, global1[_wgslsmith_index_u32(u_input.a.x, 10u)], 371f, global1[_wgslsmith_index_u32(1u, 10u)])))))) % vec2<u32>(32u));
    var var_4 = ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.b);
    return Struct_1(arg_1.x, firstLeadingBit((~vec2<u32>(1u, 5277u) >> (~vec2<u32>(u_input.a.x, 35335u) % vec2<u32>(32u))) & _wgslsmith_sub_vec2_u32(u_input.b.wz >> (global3.xx % vec2<u32>(32u)), vec2<u32>(global3.x, u_input.c))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> StorageBuffer {
    let var_0 = false;
    var var_1 = Struct_1(!(!(!(!var_0))), ~global3.zx);
    global2 = array<vec2<f32>, 3>();
    var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(arg_0.b.x, 10u)])) - 481f);
    return StorageBuffer(vec2<i32>(_wgslsmith_add_i32(-(~0i), u_input.e), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, -64699i, -7706i, u_input.e) << (vec4<u32>(global3.x, 17601u, var_1.b.x, 4294967295u) % vec4<u32>(32u)), max(vec4<i32>(u_input.e, -1i, u_input.e, 1583i), vec4<i32>(0i, -46932i, 1i, u_input.e)))));
}

fn func_1() -> StorageBuffer {
    global2 = array<vec2<f32>, 3>();
    let var_0 = ~abs(_wgslsmith_div_u32(0u, 16604u));
    global2 = array<vec2<f32>, 3>();
    var var_1 = u_input.b.zyy << (global3.xwx % vec3<u32>(32u));
    var var_2 = !(!(!all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false))));
    return func_4(func_2((_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 10u)] - global1[_wgslsmith_index_u32(1u, 10u)]) > global1[_wgslsmith_index_u32(var_1.x, 10u)]) | true, vec2<bool>(true, any(vec2<bool>(true, true))), vec3<i32>(-1i, -71152i, u_input.e), true), select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), select(vec3<bool>(any(vec2<bool>(false, true)), true, true), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, false)), true & (u_input.c >= var_0)), vec3<bool>(any(vec2<bool>(false, false)), any(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, true, true)) != any(vec4<bool>(true, true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -1i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(global3.x, 10u)], -776f))))));
    let var_2 = firstLeadingBit(~max(u_input.b, firstTrailingBit(abs(vec4<u32>(u_input.a.x, global3.x, u_input.c, u_input.a.x)))));
    global0 = array<vec2<i32>, 16>();
    var var_3 = _wgslsmith_f_op_f32(-1067f - -594f);
    var var_4 = 1i;
    var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(1u) | var_2.x, 10u)];
    let x = u_input.a;
    s_output = func_1();
}

