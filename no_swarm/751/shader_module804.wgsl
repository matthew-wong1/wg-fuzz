struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 9>;

var<private> global1: vec2<u32>;

var<private> global2: array<vec2<i32>, 3>;

var<private> global3: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> u32 {
    global2 = array<vec2<i32>, 3>();
    var var_0 = _wgslsmith_sub_vec2_u32(arg_0.c, arg_3.c);
    return 5361u;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_2) -> vec3<f32> {
    global3 = 695f;
    global2 = array<vec2<i32>, 3>();
    let var_0 = u_input.a.x;
    global2 = array<vec2<i32>, 3>();
    var var_1 = -899f;
    return _wgslsmith_div_vec3_f32(arg_3.b, arg_3.b);
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_add_vec2_i32(max(_wgslsmith_mult_vec2_i32(global2[_wgslsmith_index_u32(global1.x, 3u)], ~vec2<i32>(u_input.a.x, -569i)), ~u_input.a.zz), global2[_wgslsmith_index_u32(~(~max(~27436u, func_2(Struct_3(Struct_2(vec2<bool>(true, arg_0.x), vec3<f32>(-411f, 1920f, -2034f)), -11009i, vec2<u32>(global1.x, global1.x), Struct_2(vec2<bool>(true, true), vec3<f32>(-150f, -335f, -291f))), Struct_3(Struct_2(vec2<bool>(true, arg_0.x), vec3<f32>(-912f, 372f, 1997f)), u_input.a.x, vec2<u32>(4294967295u, 4294967295u), Struct_2(arg_0.xy, vec3<f32>(885f, 1177f, -571f))), 44346u, Struct_3(Struct_2(arg_0.zx, vec3<f32>(-1513f, -329f, 533f)), 0i, vec2<u32>(global1.x, 0u), Struct_2(arg_0.yz, vec3<f32>(1000f, 309f, 341f)))))), 3u)]);
    global0 = array<vec3<u32>, 9>();
    var var_1 = vec4<i32>(var_0.x, ~(-1i), var_0.x, -1i);
    let var_2 = !vec3<bool>(false, all(!select(vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_0.x, false, arg_0.x), false)), ((31896i <= u_input.a.x) & arg_0.x) && (true && all(vec3<bool>(false, arg_0.x, arg_0.x))));
    var var_3 = vec4<i32>(-1i) * -(~(~(-vec4<i32>(1i, -19241i, var_0.x, var_0.x))));
    return Struct_3(Struct_2(vec2<bool>(var_2.x, var_2.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -1498f, 282f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-223f, 757f, -505f) + vec3<f32>(569f, -147f, -1000f)), var_2.x))))), min(2706i, (2147483647i | u_input.a.x) | u_input.a.x) >> (67715u % 32u), ~vec2<u32>(~global1.x, ~(~25244u)), Struct_2(var_2.zz, _wgslsmith_f_op_vec3_f32(func_3(Struct_4(-2325f, var_2, Struct_2(var_2.yy, vec3<f32>(1115f, 371f, -1000f)), arg_0.x, Struct_1(false, 0i)), Struct_1(false, ~1i), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -182f), var_2, Struct_2(vec2<bool>(true, true), vec3<f32>(-1344f, 632f, -892f)), var_2.x, Struct_1(arg_0.x, var_0.x)), Struct_2(vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1839f, -1081f, 1654f)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec3<f32>) -> vec2<f32> {
    var var_0 = _wgslsmith_sub_vec2_i32(-(-u_input.a.xz >> (arg_2.c % vec2<u32>(32u))), global2[_wgslsmith_index_u32(arg_2.c.x, 3u)]);
    var var_1 = Struct_4(arg_3.x, select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(arg_2.a.a.x, arg_2.a.a.x, arg_2.a.a.x), vec3<bool>(arg_2.a.a.x, false, arg_2.d.a.x)), select(vec3<bool>(true, arg_2.a.a.x, false), vec3<bool>(arg_2.a.a.x, false, true), true), false), select(vec3<bool>(arg_2.a.a.x, false, false), !vec3<bool>(arg_2.a.a.x, arg_2.a.a.x, false), vec3<bool>(false, arg_2.a.a.x, false)), all(vec4<bool>(true, false, false, arg_2.a.a.x))), vec3<bool>(-1785f < _wgslsmith_f_op_f32(min(-607f, arg_0.x)), !all(vec3<bool>(false, true, true)), arg_2.d.a.x), arg_2.a.a.x), arg_2.a, true, Struct_1(all(!select(arg_2.a.a, vec2<bool>(true, false), arg_2.d.a)), min(4773i | abs(u_input.a.x), -var_0.x)));
    var var_2 = 2303f;
    let var_3 = countOneBits(~_wgslsmith_div_vec2_u32(vec2<u32>(~arg_2.c.x, ~4294967295u), vec2<u32>(global1.x, _wgslsmith_sub_u32(arg_2.c.x, 0u))));
    global0 = array<vec3<u32>, 9>();
    return arg_2.d.b.yz;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec3<u32>) -> StorageBuffer {
    global1 = vec2<u32>(arg_2.x, 4294967295u);
    var var_0 = Struct_3(func_1(vec3<bool>(all(vec3<bool>(true, false, false)) && true, func_1(vec3<bool>(false, false, true)).a.a.x | false, func_1(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)).a.a.x)).a, u_input.a.x, ~arg_2.zy, Struct_2(vec2<bool>(69951u > arg_2.x, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 186f, arg_0.x) + vec3<f32>(arg_0.x, arg_0.x, 1298f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(564f, -321f, -369f) * vec3<f32>(arg_1.x, arg_0.x, arg_0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1514f, -172f, -149f), vec3<f32>(arg_0.x, 711f, arg_0.x)))))));
    return StorageBuffer(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1091f, arg_1.x) - _wgslsmith_f_op_f32(round(2236f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(156f + 454f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -269f, false))), -737f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -444f)), -527f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(690f, -576f)))));
    global0 = array<vec3<u32>, 9>();
    var var_1 = vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), -15007i);
    var_1 = _wgslsmith_add_vec2_i32(-u_input.a.xy | firstTrailingBit(global2[_wgslsmith_index_u32(reverseBits(1u), 3u)]), u_input.a.yy);
    global3 = var_0.x;
    var var_2 = u_input.a.xx;
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), vec2<f32>(1148f, var_0.x), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(-733f, -1000f)))), global0[_wgslsmith_index_u32(countOneBits(global1.x), 9u)], func_1(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(174f, -1944f, var_0.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-110f, var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(var_0.x, 1018f)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), -783f)), global0[_wgslsmith_index_u32(global1.x, 9u)] ^ vec3<u32>(abs(50312u), func_1(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))).c.x, abs(~4294967295u)));
}

