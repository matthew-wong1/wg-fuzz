struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 17> = array<i32, 17>(-67060i, 24098i, -79695i, 2147483647i, 8779i, -24964i, 1i, -12899i, i32(-2147483648), -17363i, i32(-2147483648), -67160i, i32(-2147483648), 2147483647i, i32(-2147483648), 6666i, 0i);

var<private> global2: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> bool {
    let var_0 = reverseBits(_wgslsmith_mult_vec2_u32(reverseBits(select(u_input.a.yx, vec2<u32>(47748u, global2.x), arg_3.b.xz)), u_input.a.yz)) ^ vec2<u32>(~global2.x, 1u);
    global0 = 888f;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, 2028f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -142f)))))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1125f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-696f, 193f), _wgslsmith_f_op_f32(-1222f * -861f)))));
    let var_2 = arg_0;
    return !any(vec2<bool>(true, true));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = select(select(!arg_0.b.yz, vec2<bool>(arg_0.a, arg_0.b.x), !select(true, arg_0.a || true, true)), select(vec2<bool>(true, arg_0.b.x), arg_0.b.yz, arg_0.b.zx), vec2<bool>(all(vec3<bool>(true, true, false == arg_0.a)), arg_0.a));
    let var_1 = Struct_1((global2.x >> (~(global2.x | global2.x) % 32u)) < ~_wgslsmith_add_u32(global2.x, ~51730u), arg_0.b);
    let var_2 = Struct_1(var_0.x && true, !select(select(select(vec3<bool>(var_0.x, true, true), vec3<bool>(false, true, true), vec3<bool>(arg_0.a, true, true)), select(arg_0.b, vec3<bool>(var_1.b.x, true, true), arg_0.b.x), var_1.b), vec3<bool>(func_3(Struct_1(arg_0.b.x, var_1.b), Struct_1(false, var_1.b), vec4<bool>(arg_0.a, false, false, var_0.x), Struct_1(true, arg_0.b)), false, true), select(select(arg_0.b, var_1.b, arg_0.b.x), vec3<bool>(false, arg_0.a, var_1.b.x), -8882i > u_input.b.x)));
    global1 = array<i32, 17>();
    global1 = array<i32, 17>();
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> i32 {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1252f, 1f)));
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-951f, 1462f, -1179f) - vec3<f32>(-1000f, -217f, 230f)) + _wgslsmith_div_vec3_f32(vec3<f32>(196f, -1067f, -909f), vec3<f32>(-598f, 147f, -522f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -684f)))), 474f, _wgslsmith_f_op_f32(f32(-1f) * -1178f))));
    var var_1 = arg_0;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-343f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-740f, var_0.x, 844f) - vec3<f32>(1000f, -1000f, -1198f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -382f, 474f) * vec3<f32>(-1050f, 227f, var_0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -677f, _wgslsmith_f_op_f32(exp2(var_0.x)))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, var_0.x, -3299f)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(abs(var_0.x)), true)), _wgslsmith_f_op_f32(-2236f * -311f)), all(vec3<bool>(true, true, true)) && !var_1.b.x)));
    global2 = u_input.a.yy;
    return 43685i;
}

fn func_1() -> Struct_1 {
    global1 = array<i32, 17>();
    global1 = array<i32, 17>();
    let var_0 = ~vec2<i32>(~(~(-213i)), ~_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(4294967295u, 17u)], -2483i)) ^ vec2<i32>(abs(~u_input.b.x) << (max(0u, ~17833u) % 32u), func_4(func_2(Struct_1(false, vec3<bool>(true, true, false))), true));
    let var_1 = func_2(Struct_1(any(vec2<bool>(true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), func_2(Struct_1(false, vec3<bool>(false, true, false))).b)));
    var var_2 = 0u;
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    global2 = _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.xx) << (~u_input.a.x % 32u), ~global2.x), abs(u_input.a.xz));
    let var_0 = vec2<bool>(arg_0.a, !all(arg_1.b.yx));
    let var_1 = func_2(arg_1);
    let var_2 = var_1;
    global2 = u_input.a.xz;
    return Struct_1(!(!(arg_1.a & var_2.a)) & var_2.b.x, vec3<bool>(true, true, var_2.b.x));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_dot_vec3_i32(~arg_3.wzx, -abs(reverseBits(arg_3.zwx >> (vec3<u32>(4294967295u, 141136u, 19811u) % vec3<u32>(32u)))));
    let var_1 = arg_1;
    let var_2 = u_input.a.x;
    global1 = array<i32, 17>();
    var var_3 = reverseBits(u_input.a.yy & u_input.a.zy);
    return true;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(true, !(!(!(!arg_1.b))));
    var var_1 = 2147483647i;
    var_0 = arg_0;
    var_1 = func_4(func_5(arg_1, Struct_1(false, !select(vec3<bool>(true, var_0.b.x, false), vec3<bool>(arg_1.a, arg_2.b.x, arg_0.a), arg_1.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-2237f - -719f), 538f, _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-247f * 643f)))), false);
    var var_2 = arg_0;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(global2.x, 1u);
    var var_1 = func_7(Struct_1(func_6(-vec2<i32>(u_input.b.x, u_input.b.x), func_5(func_1(), func_1(), vec4<f32>(-539f, 1168f, -1251f, 291f)), !all(vec2<bool>(true, false)), ~abs(vec4<i32>(u_input.c, 23256i, u_input.c, 59374i))), !vec3<bool>(true, func_5(Struct_1(false, vec3<bool>(true, false, true)), Struct_1(true, vec3<bool>(true, true, true)), vec4<f32>(-372f, -213f, -321f, 2640f)).b.x, func_2(Struct_1(true, vec3<bool>(false, false, false))).b.x)), Struct_1(true, !vec3<bool>(true, false, func_6(vec2<i32>(-1i, global1[_wgslsmith_index_u32(15274u, 17u)]), Struct_1(false, vec3<bool>(false, false, true)), false, vec4<i32>(global1[_wgslsmith_index_u32(0u, 17u)], 24177i, global1[_wgslsmith_index_u32(0u, 17u)], u_input.c)))), func_2(func_2(func_5(func_1(), Struct_1(false, vec3<bool>(true, false, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1200f, 1000f, 129f, -761f))))));
    var var_2 = ~vec2<u32>((1u & var_0.x) << (u_input.a.x % 32u), _wgslsmith_clamp_u32(~(1u ^ u_input.a.x), 1u, firstLeadingBit(var_0.x)));
    let var_3 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-795f, 105f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(251f, -295f))), !var_1.b.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(824f)), _wgslsmith_f_op_f32(f32(-1f) * -1014f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1492f * 1f)))));
}

