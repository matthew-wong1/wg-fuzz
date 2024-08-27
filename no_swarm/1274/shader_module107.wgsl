struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global2: Struct_1 = Struct_1(vec3<i32>(1i, 1i, 23421i), -939f);

var<private> global3: Struct_1;

var<private> global4: vec4<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    global1 = select(!select(!select(vec4<bool>(global1.x, global4.x, global1.x, global1.x), vec4<bool>(false, global4.x, global4.x, global1.x), vec4<bool>(true, true, global1.x, false)), !select(vec4<bool>(global1.x, global1.x, global4.x, global4.x), vec4<bool>(true, global4.x, false, false), false), select(vec4<bool>(global1.x, true, global1.x, global4.x), vec4<bool>(false, global1.x, false, false), !vec4<bool>(false, global4.x, true, false))), vec4<bool>(false, global4.x, any(vec4<bool>(true, true, true, true)), false), ~_wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, global0[_wgslsmith_index_u32(1u, 3u)], arg_0.a.x), _wgslsmith_sub_i32(-35676i, 1i)) >= (firstLeadingBit(-6731i ^ global0[_wgslsmith_index_u32(1u, 3u)]) | -147i));
    let var_0 = _wgslsmith_f_op_f32(-arg_0.b);
    let var_1 = arg_1 < 98156u;
    global3 = arg_0;
    let var_2 = vec3<i32>(global3.a.x << (4294967295u % 32u), max(31423i, -1i), i32(-1i) * -22384i);
    return !(!(!vec4<bool>(var_1, !global1.x, global1.x, all(vec4<bool>(global4.x, global4.x, true, global4.x)))));
}

fn func_3() -> i32 {
    var var_0 = ~(-global3.a.x);
    var var_1 = Struct_1(firstTrailingBit(global2.a), -250f);
    var var_2 = Struct_1(global3.a, _wgslsmith_f_op_f32(-516f * var_1.b));
    global2 = Struct_1(vec3<i32>(-1i) * -var_2.a, -589f);
    let var_3 = select(vec4<bool>(true, select(all(global4.wy), global1.x, global4.x), global3.b >= 137f, false), !func_2(Struct_1(vec3<i32>(1i, u_input.a.x, var_2.a.x), _wgslsmith_div_f32(var_2.b, 1000f)), 1u), !select(vec4<bool>(true, -20783i > global3.a.x, global4.x & global4.x, global4.x), select(select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(global4.x, global4.x, false, global4.x), global4.x), func_2(Struct_1(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 3u)], 1i), global3.b), 1u), true), true));
    return -2147483647i;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = 2147483647i;
    global1 = !(!select(select(vec4<bool>(false, global4.x, true, false), !vec4<bool>(global1.x, global1.x, global1.x, global4.x), global4.x | global1.x), func_2(Struct_1(global3.a, global3.b), _wgslsmith_dot_vec4_u32(vec4<u32>(35447u, 47353u, 4294967295u, 20345u), vec4<u32>(84382u, 1u, 0u, 28464u))), true));
    var var_1 = global1.wz;
    let var_2 = vec4<i32>(func_3(), select(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(11548u, 3u)], -(~(-27003i)), 1i), ~arg_2.a.x, global4.x), _wgslsmith_div_i32(abs(var_0), ~arg_2.a.x), var_0);
    global2 = arg_2;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(global0[_wgslsmith_index_u32(1u, 3u)], u_input.a.x, global3.a.x) | vec3<i32>(1i, u_input.a.x, global0[_wgslsmith_index_u32(1u, 3u)])) & ~global3.a, select(-global3.a, global3.a, any(global4.yy))), global2.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-411f))))), _wgslsmith_f_op_f32(-var_0.b)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-271f, -1140f, global2.b) + vec3<f32>(global3.b, global2.b, -945f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 122f, global2.b) - vec3<f32>(global2.b, global2.b, global2.b))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(217f, 170f, global3.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, global3.b, global2.b))))));
    var_1 = vec3<f32>(-246f, global3.b, -2043f);
    let var_2 = Struct_1(min(_wgslsmith_sub_vec3_i32(vec3<i32>(func_1(vec2<f32>(global2.b, var_1.x), global2.a.x, Struct_1(vec3<i32>(var_0.a.x, global3.a.x, 0i), -181f), -193f), _wgslsmith_mod_i32(-2147483647i, global3.a.x), min(global0[_wgslsmith_index_u32(40651u, 3u)], 25988i)), vec3<i32>(var_0.a.x << (34285u % 32u), -2147483647i, ~global2.a.x)), _wgslsmith_clamp_vec3_i32(reverseBits(global2.a), ~var_0.a, vec3<i32>(-global2.a.x, select(40563i, u_input.a.x, false), ~(-17777i)))), -183f);
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global3.b)), var_2.b)), _wgslsmith_f_op_f32(313f - _wgslsmith_f_op_f32(select(global2.b, -521f, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.b)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b, global2.b, global3.b) + vec3<f32>(123f, -1257f, 801f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-581f, _wgslsmith_f_op_f32(f32(-1f) * -1366f), false))), -6570i, ~abs(12468i));
}

