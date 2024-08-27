struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_3,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: Struct_4,
    d: vec2<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec2<i32>(i32(-2147483648), 23896i), false, 26530i, vec2<f32>(-1495f, 184f)), Struct_2(vec2<i32>(i32(-2147483648), 1i), true, 1i, vec2<f32>(-1293f, -1180f)), Struct_2(vec2<i32>(12412i, 1i), true, 15791i, vec2<f32>(1842f, -239f)), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), false, i32(-2147483648), vec2<f32>(474f, 364f)), Struct_2(vec2<i32>(-47462i, 1755i), false, 1i, vec2<f32>(1450f, 523f)), Struct_2(vec2<i32>(-6105i, -20017i), true, 12402i, vec2<f32>(-144f, -840f)), Struct_2(vec2<i32>(-6621i, 0i), false, -81569i, vec2<f32>(801f, 1129f)), Struct_2(vec2<i32>(42719i, 20325i), true, 0i, vec2<f32>(415f, 363f)), Struct_2(vec2<i32>(9935i, -1i), false, 2147483647i, vec2<f32>(-402f, 1348f)), Struct_2(vec2<i32>(2147483647i, 0i), false, 1i, vec2<f32>(1000f, 1448f)), Struct_2(vec2<i32>(i32(-2147483648), -36167i), false, 9508i, vec2<f32>(-1153f, -390f)), Struct_2(vec2<i32>(18708i, 10137i), false, -1i, vec2<f32>(254f, 894f)), Struct_2(vec2<i32>(1i, i32(-2147483648)), false, 1111i, vec2<f32>(-2252f, 306f)), Struct_2(vec2<i32>(-1i, 42860i), false, 1i, vec2<f32>(1264f, 1096f)), Struct_2(vec2<i32>(-10976i, 0i), true, i32(-2147483648), vec2<f32>(597f, 1000f)), Struct_2(vec2<i32>(1i, 17906i), true, -43838i, vec2<f32>(-655f, -324f)), Struct_2(vec2<i32>(32243i, i32(-2147483648)), true, 2147483647i, vec2<f32>(-913f, -561f)));

var<private> global1: array<bool, 8> = array<bool, 8>(true, true, true, true, false, true, false, false);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(abs(vec2<i32>(u_input.b.x, 2147483647i) & firstTrailingBit(~u_input.b.yy)), all(vec3<bool>(true, global1[_wgslsmith_index_u32(48568u, 8u)], true)), select(~1i, -15157i, !(_wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(-1i, -2147483647i)) == (i32(-1i) * -2147483647i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1825f - -1024f) - 1292f), -263f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-890f - 166f), _wgslsmith_f_op_f32(-219f - 1123f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(459f, 796f), vec2<f32>(2151f, 506f))))));
    let var_1 = Struct_2(firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b, ~u_input.b), _wgslsmith_mult_i32(u_input.b.x, var_0.a.x))), true, 2147483647i, var_0.d);
    var_0 = var_1;
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(abs(46661u), ~(u_input.d << (_wgslsmith_sub_u32(u_input.a.x, u_input.e) % 32u))), 17u)];
    global0 = array<Struct_2, 17>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-508f, var_1.d.x)), _wgslsmith_f_op_f32(-1138f * 708f)), _wgslsmith_f_op_f32(var_1.d.x - var_2.d.x))));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = ~reverseBits(_wgslsmith_mult_u32(~arg_0, arg_0));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(486f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - -104f), 1160f))));
    let var_2 = 1i;
    global0 = array<Struct_2, 17>();
    var var_3 = vec4<bool>(select(1i < _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_2, var_2), i32(-1i) * -51042i), false || global1[_wgslsmith_index_u32(u_input.a.x & u_input.a.x, 8u)], any(!select(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(u_input.e, 8u)]), vec4<bool>(false, true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 8u)], false, false, false)))), all(!vec4<bool>(global1[_wgslsmith_index_u32(25173u, 8u)], all(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 8u)])), any(vec3<bool>(global1[_wgslsmith_index_u32(25359u, 8u)], global1[_wgslsmith_index_u32(arg_0, 8u)], false)), !global1[_wgslsmith_index_u32(arg_0, 8u)])), !global1[_wgslsmith_index_u32(abs(firstLeadingBit(abs(25316u))), 8u)], false);
    return Struct_3(Struct_2(max(vec2<i32>(48404i, -var_2), u_input.b.xz), select(false, true, false), -1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1)))), -433f <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-666f, _wgslsmith_f_op_f32(func_3()))), var_2);
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    global1 = array<bool, 8>();
    let var_0 = Struct_1(vec2<bool>(select(global1[_wgslsmith_index_u32(u_input.e, 8u)], !(-17801i < u_input.b.x), (33563u ^ u_input.a.x) != min(0u, u_input.a.x)), true), !vec4<bool>(true, any(select(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(u_input.c, 8u)]), vec4<bool>(global1[_wgslsmith_index_u32(72568u, 8u)], global1[_wgslsmith_index_u32(22930u, 8u)], arg_0.a.b, true), true)), false, !all(vec3<bool>(arg_0.a.b, global1[_wgslsmith_index_u32(u_input.c, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]))));
    var var_1 = Struct_4(Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(~u_input.c, 8u)], arg_0.a.b), vec4<bool>(select(false || var_0.b.x, !arg_0.b, true), false, !(true & arg_0.b), arg_0.a.b)), arg_0.a.a.x, arg_0, -867f, arg_0.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, -875f, -2045f), vec3<f32>(arg_0.a.d.x, arg_0.a.d.x, -490f)), vec3<f32>(arg_1, -580f, -1356f))))) + vec3<f32>(arg_1, 1f, 749f));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1068f, arg_1, -1519f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.e.d.x, 1447f, var_1.e.d.x), vec3<f32>(arg_0.a.d.x, arg_1, -1481f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-609f, arg_0.a.d.x, 116f), vec3<f32>(395f, -1667f, var_1.e.d.x)), vec3<f32>(-1495f, arg_1, arg_1), !vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a.x, 8u)]))))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(abs(arg_1))), -1818f))));
    return Struct_1(var_0.b.xz, var_0.b);
}

fn func_1() -> vec2<bool> {
    let var_0 = func_4(func_2(_wgslsmith_add_u32(1u, 66990u)), _wgslsmith_f_op_f32(f32(-1f) * -522f));
    let var_1 = _wgslsmith_mod_u32(4294967295u, u_input.d);
    global0 = array<Struct_2, 17>();
    var var_2 = Struct_4(func_4(Struct_3(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, var_1), 17u)], false, -1i), func_2(u_input.a.x).a.d.x), -(~(-1i)), func_2(u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -924f) + _wgslsmith_f_op_f32(546f - 563f)), 110f))), global0[_wgslsmith_index_u32(~var_1, 17u)]);
    global0 = array<Struct_2, 17>();
    return select(vec2<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(0u, 8u)], true & global1[_wgslsmith_index_u32(31670u, 8u)])), true), select(select(var_0.a, var_0.b.zz, select(var_2.a.b.zw, vec2<bool>(global1[_wgslsmith_index_u32(var_1, 8u)], var_2.e.b), all(vec2<bool>(var_0.b.x, var_2.a.b.x)))), vec2<bool>(all(!vec3<bool>(var_0.a.x, global1[_wgslsmith_index_u32(56724u, 8u)], var_0.a.x)), var_2.c.a.d.x >= 894f), select(!vec2<bool>(false, global1[_wgslsmith_index_u32(var_1, 8u)]), !select(var_2.a.a, var_0.a, vec2<bool>(false, var_2.c.a.b)), any(var_0.b.xx))), var_2.e.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!func_1(), vec4<bool>(true, true, global1[_wgslsmith_index_u32(51637u, 8u)], true));
    let var_1 = func_4(Struct_3(Struct_2(u_input.b.zy, func_2(~4294967295u).b, -13540i, vec2<f32>(_wgslsmith_f_op_f32(-289f - 993f), 723f)), false, _wgslsmith_div_i32(_wgslsmith_mod_i32(0i, -48098i), u_input.b.x >> (1u % 32u))), -1384f);
    let var_2 = var_1;
    let var_3 = u_input.b.yz;
    let var_4 = var_0.b.zz;
    var var_5 = !(!select(vec4<bool>(true, var_2.a.x && true, -1i != u_input.b.x, true), !(!var_0.b), select(!var_0.b, vec4<bool>(true, var_0.b.x, var_0.a.x, false), select(vec4<bool>(var_1.a.x, false, false, global1[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<bool>(true, false, true, var_2.b.x), var_0.b))));
    var_0 = func_4(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.c), firstLeadingBit(u_input.a.yz))), 791f);
    global1 = array<bool, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(258f, -299f, 812f, -1416f) + vec4<f32>(-1000f, 768f, -1000f, -1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-571f, -110f, -362f, -513f) - vec4<f32>(752f, 1912f, 761f, 1181f))))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(717f + -527f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, 1300f)), -453f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(376f * -1128f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -351f)))), _wgslsmith_f_op_f32(-353f - -1000f), vec3<i32>(-1i) * -u_input.b, abs(_wgslsmith_clamp_vec3_i32(~u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, 1i), vec3<i32>(-29509i, var_3.x, u_input.b.x)) | _wgslsmith_mod_vec3_i32(select(u_input.b, u_input.b, var_0.b.wwx), u_input.b >> (u_input.a % vec3<u32>(32u)))));
}

