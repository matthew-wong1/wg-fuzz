struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1) -> f32 {
    return -792f;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_1 {
    global0 = array<vec4<bool>, 10>();
    global0 = array<vec4<bool>, 10>();
    var var_0 = Struct_3(Struct_1(u_input.a.zz, true));
    var_0 = Struct_3(Struct_1(var_0.a.a, _wgslsmith_f_op_f32(func_3(var_0.a)) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(var_0.a)), -895f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(1382f)), _wgslsmith_f_op_f32(248f - -2813f)))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-781f + 1388f), _wgslsmith_f_op_f32(-190f - 126f))), -389f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-443f, _wgslsmith_f_op_f32(f32(-1f) * -3095f)) - vec2<f32>(_wgslsmith_f_op_f32(min(530f, -714f)), _wgslsmith_f_op_f32(f32(-1f) * -1143f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -698f)), 110f)))));
    return var_0.a;
}

fn func_1(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_3 {
    return Struct_3(func_2(u_input.c, abs(min(~vec2<u32>(42229u, 56551u), vec2<u32>(u_input.b, 12120u)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(322f, _wgslsmith_f_op_f32(min(667f, _wgslsmith_f_op_f32(func_3(func_1(Struct_4(vec4<bool>(false, arg_1.a.b, arg_1.a.b, true), Struct_2(283f, u_input.a, arg_1.a, arg_0.ywy, vec4<i32>(-2147483647i, 1i, arg_1.a.a.x, 2147483647i))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(-378f, arg_0.x, arg_0.x, arg_0.x))), Struct_3(arg_1.a)).a)))));
    let var_1 = arg_1;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), 356f, _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, arg_2), vec2<i32>(u_input.a.x, 33890i) ^ var_1.a.a), arg_1.a.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0)), arg_0.x)));
    let var_3 = vec2<f32>(723f, arg_0.x);
    var var_4 = select(vec2<bool>((1f >= arg_0.x) || any(!vec4<bool>(arg_1.a.b, arg_1.a.b, false, var_1.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1948f + -1131f) - _wgslsmith_f_op_f32(-var_0)) != -1160f), !select(!select(vec2<bool>(true, var_1.a.b), vec2<bool>(var_1.a.b, arg_1.a.b), arg_1.a.b), vec2<bool>(var_1.a.b, false), vec2<bool>(true, arg_1.a.b != arg_1.a.b)), vec2<bool>(func_1(Struct_4(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 10u)], Struct_2(-512f, vec3<i32>(1581i, -1i, -33913i), arg_1.a, arg_0.yxx, vec4<i32>(0i, u_input.a.x, -4087i, arg_1.a.a.x))), _wgslsmith_f_op_vec4_f32(var_2 + _wgslsmith_f_op_vec4_f32(-var_2)), arg_1).a.b, var_1.a.b));
    return arg_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> f32 {
    global0 = array<vec4<bool>, 10>();
    var var_0 = Struct_3(Struct_1(vec2<i32>(-firstTrailingBit(u_input.a.x), -arg_0.a.x), select(arg_1.b.c.b, true, !func_4(vec4<f32>(arg_1.b.a, -149f, arg_1.b.a, arg_1.b.a), Struct_3(arg_1.b.c), 35723i).b)));
    var var_1 = u_input.c;
    global0 = array<vec4<bool>, 10>();
    var var_2 = func_1(arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(281f, -435f, arg_1.b.a, -1013f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1327f, 245f, arg_1.b.a, 687f), vec4<f32>(-1339f, 1025f, 567f, arg_1.b.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1023f, arg_1.b.a, -368f, 1020f))), vec4<f32>(arg_1.b.d.x, arg_1.b.a, _wgslsmith_f_op_f32(sign(arg_1.b.a)), _wgslsmith_f_op_f32(-arg_1.b.a))))), func_1(Struct_4(vec4<bool>(any(arg_1.a.wx), !var_0.a.b, false, true), Struct_2(_wgslsmith_f_op_f32(-arg_1.b.a), vec3<i32>(var_0.a.a.x, u_input.a.x, arg_0.a.x), Struct_1(arg_1.b.e.wz, false), arg_1.b.d, max(vec4<i32>(arg_1.b.e.x, var_0.a.a.x, u_input.a.x, arg_0.a.x), vec4<i32>(arg_1.b.e.x, -34626i, arg_0.a.x, 0i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-116f, 768f, 936f, arg_1.b.d.x) * vec4<f32>(arg_1.b.a, -1305f, 525f, -160f)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(733f, arg_1.b.a, arg_1.b.a, arg_1.b.d.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.b.a, -431f, arg_1.b.a, arg_1.b.a)))))), func_1(Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), 10u)], arg_1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.d.x, arg_1.b.d.x, arg_1.b.d.x, arg_1.b.d.x) * vec4<f32>(816f, -1268f, 274f, 860f))), func_1(arg_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1006f, 169f, 272f, -218f)), Struct_3(Struct_1(vec2<i32>(u_input.a.x, arg_1.b.b.x), false)))))).a.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1101f, -1717f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b.a)))))) * arg_1.b.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(vec4<f32>(-209f, 503f, -1106f, 1397f), func_1(Struct_4(global0[_wgslsmith_index_u32(1u, 10u)], Struct_2(1017f, vec3<i32>(u_input.a.x, u_input.a.x, -763i), Struct_1(vec2<i32>(0i, 1i), true), vec3<f32>(1460f, -345f, 1145f), vec4<i32>(u_input.a.x, u_input.a.x, -8345i, 4101i))), vec4<f32>(-632f, 448f, 2176f, -1491f), Struct_3(Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), false))), 1i), Struct_4(vec4<bool>(true, true, true, true), Struct_2(758f, vec3<i32>(2147483647i, -37289i, -30853i), Struct_1(vec2<i32>(34656i, u_input.a.x), true), vec3<f32>(-1434f, 780f, -847f), vec4<i32>(u_input.a.x, -44869i, 0i, 2147483647i)))))), reverseBits(-max(u_input.a, u_input.a << (vec3<u32>(0u, u_input.c, u_input.b) % vec3<u32>(32u)))), func_4(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1067f, -1478f))), -713f, _wgslsmith_f_op_f32(min(-518f, _wgslsmith_f_op_f32(round(-1435f)))), -273f), Struct_3(Struct_1(-u_input.a.zx, func_4(vec4<f32>(-1508f, 1512f, -487f, 501f), Struct_3(Struct_1(u_input.a.yy, true)), -28394i).b)), _wgslsmith_add_i32(-1i, 14263i ^ u_input.a.x)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -789f)), 385f, 601f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -334f), _wgslsmith_f_op_f32(f32(-1f) * -912f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(508f, 1000f) - 215f))), max(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x), reverseBits(vec4<i32>(u_input.a.x, -7682i, u_input.a.x, -307i))), ~abs(-2147483647i), -(~(-1748i)), -u_input.a.x), abs(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i, 5927i, -18374i, -31979i), -vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -2147483647i), min(vec4<i32>(-34923i, 1i, -46070i, 11220i), vec4<i32>(4338i, u_input.a.x, -1i, 1i))))));
    global0 = array<vec4<bool>, 10>();
    let var_1 = !(!var_0.c.b);
    global0 = array<vec4<bool>, 10>();
    var var_2 = ~(-var_0.e.yy ^ vec2<i32>(u_input.a.x, _wgslsmith_mod_i32(func_1(Struct_4(vec4<bool>(var_0.c.b, true, false, var_1), var_0), vec4<f32>(991f, var_0.d.x, var_0.a, -103f), Struct_3(Struct_1(u_input.a.xy, true))).a.a.x, u_input.a.x << (18350u % 32u))));
    let var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(min(~u_input.b, firstLeadingBit(_wgslsmith_sub_u32(u_input.d, u_input.d))), firstTrailingBit(_wgslsmith_div_u32(~u_input.b, ~4294967295u))), ~vec2<u32>(select(~u_input.d, u_input.b, var_1), u_input.d));
    global0 = array<vec4<bool>, 10>();
    var var_4 = vec2<u32>(_wgslsmith_dot_vec3_u32(~(~(vec3<u32>(var_3.x, u_input.d, 53220u) & vec3<u32>(4294967295u, 4294967295u, 44169u))), vec3<u32>(0u, u_input.d, ~reverseBits(u_input.d))), 0u);
    let var_5 = all(!(!select(select(vec2<bool>(var_0.c.b, false), vec2<bool>(false, var_1), var_1), select(vec2<bool>(var_0.c.b, true), vec2<bool>(var_0.c.b, var_0.c.b), vec2<bool>(var_1, false)), select(vec2<bool>(var_0.c.b, true), vec2<bool>(var_0.c.b, var_0.c.b), var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d.yy * var_0.d.zx), _wgslsmith_f_op_vec2_f32(-var_0.d.zy))), var_0.d.yz, !func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a) + vec4<f32>(var_0.a, var_0.a, var_0.d.x, -1150f)), Struct_3(Struct_1(vec2<i32>(u_input.a.x, var_0.c.a.x), false)), var_2.x).b)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.d - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.d.x, var_0.d.x, 1263f)))), vec3<f32>(-418f, var_0.a, 870f), vec3<bool>(true, true, !var_1))))));
}

