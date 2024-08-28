struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(-948f, -1743f, 1445f);

var<private> global1: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(Struct_2(1720f, false, 0i, vec3<i32>(-33253i, 0i, -26919i), Struct_1(vec4<bool>(false, false, true, false), true))), Struct_3(Struct_2(432f, true, 2319i, vec3<i32>(4187i, -31295i, 2147483647i), Struct_1(vec4<bool>(false, false, false, true), false))), Struct_3(Struct_2(1446f, false, 1i, vec3<i32>(2147483647i, -5541i, -42199i), Struct_1(vec4<bool>(true, false, false, true), true))), Struct_3(Struct_2(1562f, false, -23347i, vec3<i32>(-34959i, i32(-2147483648), 1i), Struct_1(vec4<bool>(true, false, false, true), false))), Struct_3(Struct_2(-863f, true, -3840i, vec3<i32>(0i, 0i, i32(-2147483648)), Struct_1(vec4<bool>(false, false, false, true), false))), Struct_3(Struct_2(-350f, true, 0i, vec3<i32>(24942i, 73708i, 0i), Struct_1(vec4<bool>(false, true, false, true), true))), Struct_3(Struct_2(872f, false, 20784i, vec3<i32>(2147483647i, 9740i, 2147483647i), Struct_1(vec4<bool>(false, false, false, true), false))), Struct_3(Struct_2(-147f, true, -36012i, vec3<i32>(2147483647i, -48180i, -14533i), Struct_1(vec4<bool>(true, false, true, false), true))), Struct_3(Struct_2(1000f, false, 42495i, vec3<i32>(-1i, -42785i, 1i), Struct_1(vec4<bool>(true, true, true, false), false))), Struct_3(Struct_2(-141f, false, 23210i, vec3<i32>(2147483647i, -4286i, -24342i), Struct_1(vec4<bool>(false, true, true, false), true))), Struct_3(Struct_2(-488f, false, -10481i, vec3<i32>(i32(-2147483648), 10858i, -1i), Struct_1(vec4<bool>(true, true, true, true), false))), Struct_3(Struct_2(-393f, true, 8930i, vec3<i32>(2147483647i, 49795i, 1i), Struct_1(vec4<bool>(false, false, true, false), false))), Struct_3(Struct_2(434f, false, 34054i, vec3<i32>(-15460i, 0i, 6052i), Struct_1(vec4<bool>(false, true, true, true), false))), Struct_3(Struct_2(2100f, false, 16349i, vec3<i32>(i32(-2147483648), -1i, 0i), Struct_1(vec4<bool>(false, true, false, true), false))), Struct_3(Struct_2(-323f, true, -1i, vec3<i32>(-11824i, -1i, -17438i), Struct_1(vec4<bool>(true, true, true, true), false))), Struct_3(Struct_2(2099f, false, 48374i, vec3<i32>(31664i, i32(-2147483648), i32(-2147483648)), Struct_1(vec4<bool>(true, true, false, true), true))), Struct_3(Struct_2(-303f, true, -76179i, vec3<i32>(2147483647i, 0i, 0i), Struct_1(vec4<bool>(true, false, false, false), false))), Struct_3(Struct_2(549f, false, -1i, vec3<i32>(0i, 40144i, 2147483647i), Struct_1(vec4<bool>(true, false, true, true), true))));

var<private> global2: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, true, false, true));

var<private> global3: array<i32, 18>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<bool>) -> f32 {
    global2 = array<vec4<bool>, 1>();
    var var_0 = arg_1;
    var var_1 = arg_1;
    var var_2 = global1[_wgslsmith_index_u32(arg_1, 18u)];
    var_1 = _wgslsmith_sub_u32(arg_1, 47588u);
    return var_2.a.a;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<f32, 3>();
    let var_0 = -(~_wgslsmith_mult_i32(0i, -select(global3[_wgslsmith_index_u32(69279u, 18u)], -27600i, arg_0.a.x)));
    global1 = array<Struct_3, 18>();
    global0 = array<f32, 3>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-2034f + _wgslsmith_f_op_f32(select(1075f, global0[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_mod_i32(var_0, 50571i) >= _wgslsmith_mod_i32(var_0, -1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-661f - -1695f) - 755f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 3u)])))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1029f, -933f)), firstTrailingBit(13791u), select(vec3<bool>(arg_0.a.x, arg_0.b, arg_0.a.x), arg_0.a.zzz, arg_0.a.yyz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 3u)]))))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(~0u, max(68122u, 1u), true), 1u), 3u)]));
    return Struct_1(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 1784f)) > -851f, true & ((true != arg_0.a.x) | arg_0.a.x), arg_0.b, true), true);
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_f32(vec2<f32>(992f, 535f), vec2<f32>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)])), _wgslsmith_sub_u32(21065u, 0u), vec3<bool>(false, true, false)))) + 117f), (-1i != _wgslsmith_add_i32(_wgslsmith_clamp_i32(-2147483647i, u_input.a.x, u_input.a.x), u_input.a.x)) || true, u_input.a.x, _wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(-2147483647i), -2147483647i, u_input.a.x), vec3<i32>(-_wgslsmith_mult_i32(0i, 22848i), -(global3[_wgslsmith_index_u32(74234u, 18u)] << (73366u % 32u)), -global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), 18u)])), Struct_1(vec4<bool>(true, true, true, true), u_input.a.x > 2147483647i));
    var var_1 = func_1(func_1(Struct_1(vec4<bool>(func_1(Struct_1(vec4<bool>(true, var_0.e.b, true, true), false)).b, true, var_0.e.b, func_1(Struct_1(var_0.e.a, var_0.b)).a.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 3u)]) < _wgslsmith_f_op_f32(floor(var_0.a)))));
    let var_2 = vec2<bool>(true, true);
    var var_3 = global1[_wgslsmith_index_u32(~0u, 18u)];
    let var_4 = var_3.a.d.x;
    return -var_0.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_2) -> i32 {
    return 8795i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(reverseBits(~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(20002u, 13517u)), select(vec2<u32>(1u, 0u), vec2<u32>(8639u, 1u), vec2<bool>(false, true)))), 1u)], false);
    var var_1 = select(vec2<bool>(true, false), !var_0.a.yw, -u_input.a.x < func_4(func_1(var_0), Struct_2(global0[_wgslsmith_index_u32(~66689u, 3u)], var_0.b, ~u_input.a.x, func_3(), var_0), (vec3<i32>(u_input.a.x, 0i, global3[_wgslsmith_index_u32(65331u, 18u)]) >> (vec3<u32>(1u, 1u, 0u) % vec3<u32>(32u))) ^ vec3<i32>(global3[_wgslsmith_index_u32(0u, 18u)], -1i, -1i), Struct_2(_wgslsmith_f_op_f32(-1182f * 1043f), var_0.a.x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-2147483647i, -26347i, 2147483647i)), func_3(), Struct_1(vec4<bool>(false, false, false, var_0.a.x), var_0.b))));
    let var_2 = any(!(!global2[_wgslsmith_index_u32(1u, 1u)]));
    var var_3 = all(func_1(Struct_1(vec4<bool>(true, all(var_0.a.xyw), true, true), false)).a.yxx);
    let var_4 = true;
    var_1 = select(select(select(!func_1(var_0).a.zz, !vec2<bool>(var_0.b, true), any(vec2<bool>(false, var_2)) | true), vec2<bool>(false, any(global2[_wgslsmith_index_u32(0u, 1u)]) || true), true), vec2<bool>(false, all(vec3<bool>(var_4, var_2, true)) && (var_4 || var_2)), vec2<bool>(~82464u <= firstTrailingBit(~4612u), var_2));
    var var_5 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -886f), false, -603i, abs(u_input.a), func_1(var_0));
    global2 = array<vec4<bool>, 1>();
    var_3 = !(max(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(79222u, 0u, 27816u), vec3<u32>(4294967295u, 0u, 11690u))), _wgslsmith_sub_u32(~0u, 1u)) == 1u);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a, reverseBits(_wgslsmith_clamp_u32(~firstTrailingBit(43316u), ~(~69115u), 1u)), select(abs(~reverseBits(vec2<u32>(51092u, 1u))), ~_wgslsmith_add_vec2_u32(vec2<u32>(22948u, 25002u), abs(vec2<u32>(1u, 1u))), true));
}

