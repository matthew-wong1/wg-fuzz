struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<u32>;

var<private> global2: bool;

var<private> global3: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_3 {
    var var_0 = vec3<bool>(arg_1.b.x, true, arg_3.b.b.x);
    var var_1 = ~(~arg_2.x);
    var var_2 = arg_1;
    global2 = 0i <= u_input.b.x;
    return arg_3.b;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1415f, arg_0.a.x, arg_0.a.x, -974f), arg_2.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.x, arg_1.a, 705f, arg_1.a), arg_2.a, arg_2.b.x)))), arg_2.a)), arg_2, global1.zy, Struct_4(any(func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.x, -2554f, arg_2.a.x, -466f), arg_2.a, arg_0.b.x)), arg_2, _wgslsmith_clamp_vec2_u32(vec2<u32>(3502u, 1u), vec2<u32>(75908u, 59143u), global1.xz), Struct_4(true, Struct_3(vec4<f32>(-469f, arg_1.a, 1877f, arg_1.a), arg_2.b), arg_0.b.x, 65618i)).b), arg_0, true, 0i)).b.x;
    let var_1 = !vec3<bool>(!all(!arg_2.b), false, all(vec2<bool>(any(vec2<bool>(arg_0.b.x, true)), true)));
    global3 = _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_2.a + arg_2.a))) * vec4<f32>(-749f, _wgslsmith_f_op_f32(max(arg_2.a.x, -1966f)), _wgslsmith_f_op_f32(-arg_2.a.x), -1187f)), func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(514f, 1836f, 249f, -564f), vec4<f32>(arg_0.a.x, arg_1.a, arg_2.a.x, arg_1.a))))), arg_2, vec2<u32>(firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec2_u32(global1.yx, vec2<u32>(71852u, 27903u))), Struct_4(true, Struct_3(vec4<f32>(arg_2.a.x, arg_1.a, 1000f, 1000f), arg_2.b), var_0, firstTrailingBit(arg_1.b))), u_input.d, Struct_4(var_0, arg_0, true, select(~arg_1.b, -arg_1.b, !var_1.x))).a.x);
    global0 = global1.x;
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -356f) - _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(arg_1.a * -615f), arg_1.a, arg_2.a.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-342f, -958f, -302f, arg_0.a.x) * vec4<f32>(arg_1.a, arg_0.a.x, arg_2.a.x, 671f))))))), Struct_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a.x, -1000f, arg_1.a, -515f))), vec4<f32>(arg_1.a, arg_2.a.x, 376f, 1000f)))), select(arg_2.b, vec4<bool>(true, var_0, arg_0.b.x, true), -u_input.b.x == 1i)), reverseBits(firstLeadingBit(_wgslsmith_clamp_vec2_u32(u_input.a.wz, vec2<u32>(0u, global1.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(0u, u_input.c.x), vec2<u32>(u_input.c.x, global1.x))))), Struct_4(!(!var_0), Struct_3(vec4<f32>(-748f, func_2(arg_0.a, Struct_3(vec4<f32>(arg_0.a.x, arg_2.a.x, 722f, arg_2.a.x), arg_0.b), vec2<u32>(u_input.c.x, 4294967295u), Struct_4(arg_2.b.x, arg_2, false, 2147483647i)).a.x, _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(-arg_0.a.x)), !select(vec4<bool>(false, var_0, false, true), vec4<bool>(arg_0.b.x, var_0, true, true), arg_0.b.x)), true, _wgslsmith_dot_vec2_i32(u_input.b.ww, _wgslsmith_mult_vec2_i32(min(vec2<i32>(1i, 1i), u_input.e.zx), _wgslsmith_mod_vec2_i32(u_input.e.yz, u_input.b.wx))))).b;
    return select(!var_2.zzy, arg_2.b.xyx, any(arg_0.b.zww));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: f32, arg_3: i32) -> vec2<f32> {
    let var_0 = select(~(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, u_input.c.x), min(151345u, 1u))), abs(~global1.x & global1.x), all(!(!vec3<bool>(false, arg_0, arg_0))));
    var var_1 = _wgslsmith_f_op_f32(-arg_2);
    let var_2 = vec3<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x << (1u % 32u), select(31945u, abs(25922u), false), _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, var_0), ~2028u)), vec3<u32>(var_0 >> (max(4294967295u, 84646u) % 32u), ~min(0u, 0u), _wgslsmith_dot_vec4_u32(~u_input.a, ~vec4<u32>(var_0, global1.x, var_0, 1u)))), 15156u);
    global1 = ~var_2;
    global2 = false;
    return _wgslsmith_f_op_vec2_f32(step(arg_1.yx, vec2<f32>(386f, -1149f)));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> f32 {
    global1 = u_input.a.xyy;
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(all(select(arg_0.b.ywx, func_3(func_2(arg_0.a, arg_0, global1.xz, Struct_4(false, Struct_3(arg_0.a, arg_0.b), false, u_input.b.x)), Struct_1(arg_0.a.x, 20081i), func_2(vec4<f32>(arg_0.a.x, 863f, -1039f, arg_0.a.x), arg_0, vec2<u32>(u_input.c.x, 36915u), Struct_4(arg_0.b.x, Struct_3(arg_0.a, arg_0.b), false, 0i))), false)), _wgslsmith_f_op_vec3_f32(-arg_0.a.yzz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1145f, 1215f)))) - _wgslsmith_f_op_f32(-arg_0.a.x)), -21336i));
    global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(470f + -556f)));
    var var_1 = u_input.e.x;
    global1 = vec3<u32>(~firstLeadingBit(~1u), ~global1.x, 1u);
    return -948f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -604f), _wgslsmith_f_op_f32(func_1(Struct_3(vec4<f32>(-253f, 656f, 1219f, -1000f), vec4<bool>(false, false, false, false)), true)), _wgslsmith_f_op_f32(-1118f * 370f), _wgslsmith_f_op_f32(step(242f, 936f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1919f, 681f, -455f))) - vec4<f32>(_wgslsmith_f_op_f32(sign(-1438f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-692f)) * _wgslsmith_f_op_f32(round(-397f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-802f + -859f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2643f - 329f), -1198f), 1092f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(844f)) + _wgslsmith_f_op_f32(-902f - -1689f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-744f * -435f))))), !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -919f), 2014f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f)))));
    var var_1 = -(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(select(u_input.e.zwz, vec3<i32>(-33592i, u_input.b.x, -1i), true), _wgslsmith_mult_vec3_i32(u_input.b.xzw, u_input.b.zyy)), vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), u_input.e.x, u_input.e.x)) & (max(countOneBits(u_input.b.wxx), u_input.e.xzz) << (u_input.a.zzz % vec3<u32>(32u))));
    global1 = _wgslsmith_mult_vec3_u32(vec3<u32>(58558u, 20924u, abs(4294967295u)), u_input.a.wzy);
    global2 = false;
    let var_2 = Struct_4(false, func_2(var_0, func_2(_wgslsmith_f_op_vec4_f32(ceil(var_0)), Struct_3(_wgslsmith_f_op_vec4_f32(var_0 * var_0), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false)), countOneBits(global1.zz), Struct_4(true, func_2(var_0, Struct_3(var_0, vec4<bool>(false, false, false, false)), u_input.a.wz, Struct_4(false, Struct_3(vec4<f32>(-665f, -241f, -1000f, -1616f), vec4<bool>(true, true, true, true)), true, 2147483647i)), select(false, false, false), -13841i)), vec2<u32>(abs(~46717u), ~(~global1.x)), Struct_4(true, func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-449f, var_0.x, 150f, 1409f))), func_2(vec4<f32>(var_0.x, var_0.x, -3077f, var_0.x), Struct_3(var_0, vec4<bool>(true, true, false, false)), vec2<u32>(0u, u_input.d.x), Struct_4(true, Struct_3(vec4<f32>(var_0.x, var_0.x, var_0.x, -200f), vec4<bool>(true, false, false, true)), false, var_1.x)), vec2<u32>(6366u, 0u), Struct_4(true, Struct_3(vec4<f32>(-1000f, var_0.x, var_0.x, -857f), vec4<bool>(true, false, true, false)), true, u_input.b.x)), !all(vec3<bool>(false, false, true)), -5811i)), false, ~min(29126i, _wgslsmith_add_i32(select(var_1.x, 22965i, true), -2147483647i)));
    var var_3 = countOneBits(abs(~max(var_1.x, ~(-1i))));
    var_3 = -(-2147483647i | max(_wgslsmith_sub_i32(abs(u_input.b.x), _wgslsmith_sub_i32(var_2.d, var_1.x)), _wgslsmith_dot_vec3_i32(u_input.b.zzx, _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, -36661i, 52186i), u_input.b.wyw))));
    var var_4 = var_2.b.a.x != 1030f;
    let var_5 = u_input.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a.x, ~(~u_input.c.wxw));
}

