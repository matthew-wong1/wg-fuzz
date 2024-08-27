struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<bool>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(-4201i, 10938i), Struct_1(false, vec4<f32>(657f, 1047f, -340f, 907f), vec2<bool>(false, false), -1000f, vec4<bool>(false, false, true, false)), vec3<i32>(0i, 2147483647i, 1i));

var<private> global2: u32 = 1u;

var<private> global3: array<i32, 32>;

var<private> global4: array<Struct_2, 12>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>) -> Struct_2 {
    global4 = array<Struct_2, 12>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.b.d))), global1.b.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1592f, -810f))))));
    var var_1 = global1.c >> (vec3<u32>(u_input.b.x, _wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, ~u_input.b.x), u_input.b.x), ~u_input.b.x) % vec3<u32>(32u));
    global2 = u_input.b.x;
    var var_2 = Struct_1(!(!(!(-1395f <= var_0.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(813f, -854f, -121f, 1684f)) - global1.b.b) * global1.b.b))), vec2<bool>(select(true, global1.b.a, global1.b.a || true), false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-arg_1.x)))), !(!(!(!vec4<bool>(global1.b.e.x, global1.b.a, false, true)))));
    return global4[_wgslsmith_index_u32(~u_input.b.x, 12u)];
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: u32) -> bool {
    var var_0 = global1.b.e.wyx;
    var var_1 = arg_2 != firstTrailingBit(~firstTrailingBit(42438u));
    var_1 = false & select(true, global1.b.c.x, !(!var_0.x));
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_2, 18u)] - 1000f), _wgslsmith_f_op_f32(min(-1275f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.d))), global1.b.b.zw)), vec2<f32>(global0[_wgslsmith_index_u32(~(~arg_2), 18u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(14720u, 18u)]), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(arg_2, 18u)])), var_0.x | false))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b.b.wy * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_2.b.d, var_2.b.d)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 18u)])) + vec2<f32>(func_2(global1.b.b.yy, global1.b.b.xx).b.d, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 18u)] * var_2.b.d)))));
    return global1.b.c.x;
}

fn func_3(arg_0: f32) -> vec2<i32> {
    let var_0 = abs(_wgslsmith_dot_vec2_i32(global1.a ^ select(vec2<i32>(u_input.a.x, 0i), vec2<i32>(global1.c.x, global3[_wgslsmith_index_u32(1u, 32u)]), global1.b.a), ~vec2<i32>(-37605i, global3[_wgslsmith_index_u32(u_input.b.x, 32u)]))) ^ global3[_wgslsmith_index_u32(4294967295u, 32u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1028f, 1650f))), 160f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)] * global0[_wgslsmith_index_u32(u_input.b.x, 18u)]), -2352f, global0[_wgslsmith_index_u32(countOneBits(u_input.b.x), 18u)])))));
    var var_2 = global4[_wgslsmith_index_u32(4294967295u, 12u)];
    global4 = array<Struct_2, 12>();
    global0 = array<f32, 18>();
    return global1.c.yx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(u_input.b.x > ~u_input.b.x, all(vec3<bool>(true, true, -235f > global1.b.d)) != (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 727f) + _wgslsmith_f_op_f32(global1.b.b.x - -1377f)) > _wgslsmith_f_op_f32(global1.b.d + -1391f)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.b.b.x - 1183f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.b.b.x))), func_1(vec4<i32>(-1i) * -vec4<i32>(35284i, -27885i, 0i, 23207i), abs(vec2<i32>(u_input.a.x, global1.c.x)), ~18373u))) * global0[_wgslsmith_index_u32(23926u, 18u)]);
    let var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(func_3(_wgslsmith_f_op_f32(-var_1)), vec2<i32>(max(~u_input.a.x, select(20908i, 1i, var_0.x)), ~(i32(-1i) * -1048i))), vec2<i32>(global3[_wgslsmith_index_u32(~1u, 32u)], 79719i));
    let var_3 = all(global1.b.e.xxz);
    let var_4 = _wgslsmith_sub_i32(countOneBits(_wgslsmith_dot_vec3_i32(select(global1.c, global1.c, global1.b.e.ywz) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 32283u, 32219u)) % vec3<u32>(32u)), global1.c & vec3<i32>(53282i, -1i, var_2.x))), (_wgslsmith_clamp_i32(u_input.a.x | 77313i, u_input.a.x, ~u_input.a.x) | firstLeadingBit(countOneBits(2147483647i))) & -(~(-global3[_wgslsmith_index_u32(u_input.b.x, 32u)])));
    let var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.b.b), vec4<f32>(global1.b.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * var_1) + _wgslsmith_f_op_f32(var_1 + var_1)), 222f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b.b.x), global0[_wgslsmith_index_u32(u_input.b.x >> (48631u % 32u), 18u)], func_2(vec2<f32>(-991f, global0[_wgslsmith_index_u32(1u, 18u)]), global1.b.b.zz).b.a)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, 697f) * -1272f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b.x, 18u)])))));
    global0 = array<f32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

