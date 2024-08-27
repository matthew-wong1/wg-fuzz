struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<i32>;

var<private> global2: array<vec4<u32>, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: u32) -> f32 {
    global1 = min(u_input.c, u_input.c);
    global2 = array<vec4<u32>, 12>();
    var var_0 = Struct_1(~_wgslsmith_div_u32(1u, u_input.b.x), ~(~u_input.b.x));
    let var_1 = Struct_1(arg_3, ~var_0.a);
    global0 = _wgslsmith_add_vec3_u32(u_input.b.wyz, u_input.b.xzx);
    return arg_1;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(1541f, 668f, u_input.d, 40568u)))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(252f * 2140f)), _wgslsmith_f_op_f32(round(-1437f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(681f, 252f, 272f, 288f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(623f, -303f, 1108f, 1000f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1017f, -435f, -1441f, 1231f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2035f, 592f, 1026f, 966f), vec4<f32>(756f, 371f, -453f, -661f), arg_0.x)), arg_0.x))))));
    let var_1 = -243f;
    var var_2 = !select(select(arg_0.ywz, arg_0.yxw, any(arg_0.zz)), select(select(arg_0.yzx, arg_0.ywz, select(arg_0.xwy, vec3<bool>(true, true, arg_0.x), true)), !vec3<bool>(true, arg_0.x, arg_0.x), false), (_wgslsmith_f_op_f32(-var_0.x) == var_1) | !(arg_0.x || arg_0.x));
    var var_3 = u_input.b.x;
    let var_4 = global2[_wgslsmith_index_u32(global0.x, 12u)];
    return -40673i;
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = select(~u_input.b.wy, max(global0.xy, global0.yy), vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -817f) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -549f))), true));
    let var_1 = Struct_1(u_input.a.x, ~var_0.x);
    let var_2 = !(!select(vec2<bool>(true, global0.x > 4294967295u), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))));
    global1 = -(~vec4<i32>(~arg_0.x, u_input.c.x, -select(-11039i, global1.x, var_2.x), _wgslsmith_add_i32(-17760i, func_2(vec4<bool>(var_2.x, var_2.x, false, var_2.x), u_input.d))));
    let var_3 = vec3<bool>(!var_2.x && var_2.x, true, select(false, any(!select(var_2, var_2, var_2)), var_2.x));
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> vec4<bool> {
    let var_0 = func_4(vec2<i32>(select(func_2(vec4<bool>(true, true, true, true), min(33781i, 2147483647i)), -2147483647i, false && (0i >= global1.x)), _wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_1), global1.wy), ~u_input.d)));
    global0 = firstLeadingBit(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_2, global0.x, 4294967295u) | ~vec3<u32>(arg_0.b, var_0.b, global0.x), abs(~vec3<u32>(0u, 0u, 1u)), reverseBits(u_input.b.zww)), select(reverseBits(~vec3<u32>(u_input.a.x, var_0.a, arg_0.a)), ~(u_input.b.xxw & u_input.b.xwy), vec3<bool>(true, arg_1 <= u_input.d, true))));
    return vec4<bool>(any(select(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), all(vec3<bool>(true, true, true)))), any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false)), firstTrailingBit(_wgslsmith_clamp_i32(1i, arg_1, _wgslsmith_clamp_i32(u_input.d, arg_1, -1i))) >= abs(global1.x), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(true, ~global0.x == global0.x, false, false), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false)));
    global2 = array<vec4<u32>, 12>();
    var var_1 = select(!(!vec3<bool>(!var_0.x, all(vec3<bool>(var_0.x, false, false)), any(var_0))), vec3<bool>(var_0.x, false, var_0.x), select(var_0.x, any(func_1(Struct_1(1507u, 10793u), max(u_input.c.x, -2147483647i), abs(0u))), !func_1(Struct_1(global0.x, 0u), u_input.d, u_input.b.x).x | var_0.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(487f, -1160f) + vec2<f32>(-168f, 598f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(278f, -1904f)))), func_1(func_4(vec2<i32>(u_input.c.x, global1.x)), -8293i << (0u % 32u), global0.x).xw)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1800f, -719f), vec2<f32>(1836f, -1198f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-676f, 1773f)))));
    global2 = array<vec4<u32>, 12>();
    global0 = ~reverseBits(select(firstLeadingBit(firstTrailingBit(vec3<u32>(30076u, 5966u, 1u))), ~firstTrailingBit(vec3<u32>(0u, global0.x, global0.x)), false));
    let var_3 = Struct_2(-vec3<i32>(_wgslsmith_mod_i32(global1.x, u_input.c.x), ~51365i, _wgslsmith_div_i32(global1.x, -35917i)) | (vec3<i32>(reverseBits(-33214i), global1.x & u_input.c.x, 0i) & _wgslsmith_add_vec3_i32(~global1.yzz, vec3<i32>(global1.x, global1.x, global1.x))), 287f, Struct_1(~_wgslsmith_add_u32(49250u, u_input.b.x), u_input.b.x));
    let var_4 = _wgslsmith_f_op_f32(-var_3.b);
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(629f, -697f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-188f, _wgslsmith_f_op_f32(func_3(var_3.b, var_3.b, var_3.a.x, 4294967295u)))), !var_0.zy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_5.x + var_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(trunc(858f)), 210f, var_4, _wgslsmith_f_op_f32(func_3(var_4, 451f, 1i, 10883u)))))), 1351f, ~abs(abs(abs(vec3<i32>(var_3.a.x, global1.x, global1.x)))));
}

