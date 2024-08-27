struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_0.b.x)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-953f)), _wgslsmith_f_op_f32(max(var_0, var_0)), arg_0.c)) + var_0), _wgslsmith_f_op_f32(f32(-1f) * -290f), -122f, _wgslsmith_f_op_f32(-arg_0.b.x));
    let var_2 = Struct_2(arg_0.a, arg_0.b, arg_0.a.x);
    let var_3 = abs(_wgslsmith_dot_vec3_i32(reverseBits(u_input.a.zxz), vec3<i32>(u_input.a.x, -25038i, -23448i) & u_input.a.xyx)) == 2147483647i;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -808f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1161f, var_1.x) - var_0) - _wgslsmith_f_op_f32(step(682f, _wgslsmith_f_op_f32(exp2(arg_0.b.x)))))), arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -176f) + 1238f) + _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(757f))))));
    return !arg_0.a;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), !func_3(Struct_2(vec3<bool>(true, false, false), vec3<f32>(757f, 1000f, 1223f), false)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -506f, -258f))), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(select(false, false, true), all(vec4<bool>(true, true, false, true))), select(vec2<bool>(true, true), vec2<bool>(false, true), true))));
    let var_1 = u_input.d.zx;
    var var_2 = vec2<i32>(2147483647i, var_1.x) | _wgslsmith_mod_vec2_i32(~u_input.a.xy, firstLeadingBit(vec2<i32>(i32(-1i) * -17519i, ~var_1.x)));
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    return u_input.c.x;
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    global0 = array<u32, 12>();
    global1 = Struct_1(0u);
    var var_0 = (max(u_input.c.x, func_2()) >= 33459u) || (-_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(-41971i, u_input.a.x)) <= _wgslsmith_div_i32(i32(-1i) * -arg_0, arg_0));
    var var_1 = countOneBits(firstTrailingBit(~(~vec4<u32>(69171u, u_input.b, 76783u, 4294967295u) >> (~u_input.c % vec4<u32>(32u)))));
    let var_2 = true;
    return Struct_1(66070u & global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(38320u, 12u)] << (1u % 32u)) >> (1u % 32u), 12u)]);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_2 {
    global0 = array<u32, 12>();
    let var_0 = vec3<f32>(433f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -178f))) + -1114f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1388f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(800f, -1153f)), _wgslsmith_f_op_f32(923f * -468f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1095f))))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(629f, _wgslsmith_f_op_f32(min(var_0.x, 896f))))))));
    let var_2 = true;
    return Struct_2(vec3<bool>(any(select(arg_2, select(vec4<bool>(arg_2.x, true, var_2, false), arg_2, arg_2.x), false)), arg_2.x, false), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(var_1, 698f))), -585f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1060f, -845f)))), ~1i > (arg_0 | -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(0u);
    let var_0 = func_4(~_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.d.x, u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a.yw, u_input.d.yz)), 0i), func_1(-98493i & ~(u_input.a.x & u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -473f)), select(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false))), vec4<bool>(true, true, true, any(vec2<bool>(false, true)))), vec4<bool>(true, false, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true))), vec4<bool>(true, all(vec3<bool>(false, false, false)), true, select(true, true, false)), vec4<bool>(true, true, true, true))));
    var var_1 = u_input.c.yyz;
    let var_2 = _wgslsmith_mult_i32(u_input.a.x, u_input.a.x);
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    var var_3 = ~(select(~vec4<i32>(var_2, u_input.d.x, u_input.a.x, -9727i), select(countOneBits(vec4<i32>(-13134i, var_2, u_input.a.x, -2147483647i)), -vec4<i32>(-27382i, -5333i, var_2, var_2), var_0.a.x), all(var_0.a.yx)) & select(_wgslsmith_mod_vec4_i32(vec4<i32>(-65274i, var_2, u_input.d.x, u_input.d.x), ~vec4<i32>(-47290i, u_input.d.x, 1i, var_2)), vec4<i32>(firstTrailingBit(var_2), u_input.a.x >> (4294967295u % 32u), abs(1i), _wgslsmith_div_i32(-22124i, u_input.d.x)), select(select(vec4<bool>(true, true, var_0.a.x, var_0.c), vec4<bool>(true, false, true, false), vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x)), !vec4<bool>(false, false, false, var_0.a.x), !vec4<bool>(false, true, true, var_0.a.x))));
    var var_4 = ~var_2;
    global1 = func_1(var_3.x, _wgslsmith_f_op_f32(var_0.b.x + -695f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, -580f, -922f) - vec4<f32>(var_0.b.x, 828f, 1242f, -1274f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1216f), _wgslsmith_f_op_f32(845f * -375f), -228f, _wgslsmith_f_op_f32(select(-2566f, -354f, var_0.c)))))), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(ceil(var_0.b.x)), -222f, -400f), u_input.c);
}

