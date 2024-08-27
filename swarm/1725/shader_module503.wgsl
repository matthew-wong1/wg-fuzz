struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: Struct_1;

var<private> global2: array<f32, 16> = array<f32, 16>(-820f, -1000f, -2082f, -2883f, -553f, 886f, -2044f, 1000f, 653f, 1092f, -1252f, -1000f, -526f, -1000f, 970f, -838f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1131f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(7733u, 16u)] + -456f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 16u)]), _wgslsmith_f_op_f32(-global1.a)))))));
    global0 = !(!(!(!vec3<bool>(global0.x, global0.x, global0.x))));
    var var_1 = ~(~abs(u_input.a.yxz));
    var var_2 = u_input.b.x;
    var var_3 = _wgslsmith_add_vec3_u32(select(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 26910u), u_input.b.xwz ^ vec3<u32>(u_input.b.x, 0u, 34708u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(29132u, u_input.b.x, 1u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), ~u_input.b.yyx)), ~max(u_input.b.zzx, u_input.b.ywx) >> (max(~u_input.b.zww, vec3<u32>(u_input.b.x, u_input.b.x, 1u)) % vec3<u32>(32u)), !vec3<bool>(all(vec4<bool>(global0.x, false, true, global0.x)), true, !global0.x)), _wgslsmith_div_vec3_u32(u_input.b.yzx, select(vec3<u32>(_wgslsmith_div_u32(0u, u_input.b.x), u_input.b.x, ~u_input.b.x), vec3<u32>(~u_input.b.x, ~u_input.b.x, 10043u), select(select(global0.x, false, true), false != global0.x, false))));
    return ~_wgslsmith_dot_vec3_u32(~u_input.b.zxx, ~(abs(vec3<u32>(36879u, u_input.b.x, 4294967295u)) ^ _wgslsmith_clamp_vec3_u32(u_input.b.xyx, vec3<u32>(var_3.x, var_3.x, 1u), vec3<u32>(var_3.x, var_3.x, 81010u))));
}

fn func_2() -> f32 {
    global2 = array<f32, 16>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a), global1.a))))), 263f, _wgslsmith_f_op_f32(810f - _wgslsmith_f_op_f32(167f + global1.a)));
    var var_1 = ~(-6960i);
    var var_2 = Struct_1(global1.a);
    let var_3 = func_3() <= ~(~min(1u, ~57344u));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_2()));
    var var_1 = vec4<i32>(-2147483647i ^ _wgslsmith_div_i32(10286i, -u_input.a.x), -abs(u_input.d), -7232i, 3315i);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.a));
    var_1 = vec4<i32>(~(-1i), u_input.c, 863i, select(_wgslsmith_sub_i32(-(var_1.x ^ var_1.x), -(~(-1i))), _wgslsmith_sub_i32(u_input.c, _wgslsmith_sub_i32(firstTrailingBit(var_1.x), u_input.a.x)), false));
    global1 = Struct_1(global1.a);
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(2592u, 16u)])) - var_0.a)), var_2.a));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = global0.x;
    let var_1 = u_input.b.x;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(func_1().a * global2[_wgslsmith_index_u32(func_3(), 16u)]));
    var_0 = true;
    var_0 = global0.x;
    return func_1();
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global2 = array<f32, 16>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1529f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u & u_input.b.x, 16u)]), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1396f, global2[_wgslsmith_index_u32(1u, 16u)]))) + -699f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, global1.a, -554f, global1.a)) + vec4<f32>(global1.a, arg_0.a, _wgslsmith_f_op_f32(global1.a * 1000f), -1472f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -1678f, -1054f, arg_0.a) - vec4<f32>(arg_0.a, -276f, arg_0.a, -1787f)))))));
    let var_1 = firstTrailingBit(_wgslsmith_clamp_vec3_u32(u_input.b.yyw, ~select(~vec3<u32>(0u, 5349u, 62359u), ~u_input.b.xyw, global0.x), ~(u_input.b.wxz & _wgslsmith_sub_vec3_u32(u_input.b.xxz, u_input.b.wzy))));
    var var_2 = func_4(arg_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.wwy - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1606f, arg_0.a, global1.a), vec3<f32>(-1397f, -819f, 1000f), vec3<bool>(global0.x, true, true)))))), _wgslsmith_div_vec3_f32(var_0.xwy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.xzw)))));
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_add_u32(var_1.x, var_1.x)), ~abs(_wgslsmith_clamp_u32(4294967295u, var_1.x, 4294967295u))), u_input.b.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 16>();
    var var_0 = func_5(func_4(func_1(), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(369f, global1.a, global2[_wgslsmith_index_u32(u_input.b.x, 16u)]) - vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], global1.a, global1.a)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.a, -879f, -1000f))))))), -1i);
    let var_1 = false;
    var var_2 = vec2<bool>(var_1, !(any(!vec3<bool>(global0.x, global0.x, global0.x)) & false));
    let var_3 = select(vec4<bool>(all(select(vec2<bool>(true, global0.x), global0.yy, global0.x)), !(all(global0.zx) | any(vec3<bool>(true, global0.x, true))), 0u < (1u & u_input.b.x), all(!vec3<bool>(var_1, var_1, global0.x)) != any(select(vec4<bool>(var_2.x, var_1, var_1, false), vec4<bool>(false, false, false, true), var_2.x))), select(vec4<bool>(all(select(vec4<bool>(false, var_1, false, true), vec4<bool>(false, false, true, global0.x), vec4<bool>(var_1, var_2.x, global0.x, false))), true, true, !var_2.x), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, global0.x, false, var_1), var_1), vec4<bool>(var_1, false, false, var_2.x), vec4<bool>(true, true, true, true)), !(!(!vec4<bool>(true, global0.x, true, var_1)))), !(!(!(!vec4<bool>(var_1, global0.x, var_1, global0.x)))));
    global0 = vec3<bool>(all(select(!var_3, select(vec4<bool>(false, var_3.x, var_1, var_3.x), select(var_3, var_3, var_3), select(vec4<bool>(true, false, global0.x, true), var_3, var_3)), any(!var_3))), any(global0.yz), _wgslsmith_sub_u32(u_input.b.x & ~u_input.b.x, _wgslsmith_mult_u32(~1u, firstTrailingBit(u_input.b.x))) == firstTrailingBit(u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_div_f32(var_0.a, 559f))))), ~vec3<i32>(firstLeadingBit(-1i), u_input.c ^ u_input.d, 33228i) ^ ~_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.d, u_input.a.x, u_input.c), -u_input.a.wyw), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(~(~u_input.b.x)), 16u)]));
}

