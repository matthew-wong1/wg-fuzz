struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<bool>, 21>;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<f32>(569f, 465f, -1086f), vec4<bool>(true, true, false, true)), Struct_1(vec3<f32>(1566f, 1007f, 1467f), vec4<bool>(false, true, true, false)), Struct_1(vec3<f32>(-143f, -1175f, 665f), vec4<bool>(true, false, false, false)), Struct_1(vec3<f32>(104f, 301f, 1000f), vec4<bool>(false, true, false, false)), Struct_1(vec3<f32>(258f, -820f, -1898f), vec4<bool>(false, false, false, false)), Struct_1(vec3<f32>(-247f, -1307f, -341f), vec4<bool>(true, false, false, true)), Struct_1(vec3<f32>(2739f, -187f, -1000f), vec4<bool>(true, true, false, false)), Struct_1(vec3<f32>(-919f, -132f, 3497f), vec4<bool>(true, false, false, false)), Struct_1(vec3<f32>(1000f, 939f, 1228f), vec4<bool>(true, false, false, true)), Struct_1(vec3<f32>(-515f, -309f, 1291f), vec4<bool>(true, false, false, true)), Struct_1(vec3<f32>(1126f, 508f, -691f), vec4<bool>(true, false, true, true)), Struct_1(vec3<f32>(470f, 1169f, 1444f), vec4<bool>(false, false, false, true)), Struct_1(vec3<f32>(-1572f, 234f, 1000f), vec4<bool>(false, false, true, false)), Struct_1(vec3<f32>(350f, 1638f, 1000f), vec4<bool>(false, true, false, true)), Struct_1(vec3<f32>(1794f, 423f, -581f), vec4<bool>(false, true, false, true)), Struct_1(vec3<f32>(-866f, 1000f, -816f), vec4<bool>(false, false, false, false)), Struct_1(vec3<f32>(-228f, -114f, -978f), vec4<bool>(false, true, true, false)), Struct_1(vec3<f32>(473f, 1755f, -608f), vec4<bool>(true, true, true, false)), Struct_1(vec3<f32>(-635f, 452f, -286f), vec4<bool>(true, false, true, false)), Struct_1(vec3<f32>(339f, -295f, 855f), vec4<bool>(true, true, true, false)), Struct_1(vec3<f32>(-328f, -1446f, -997f), vec4<bool>(false, false, true, false)), Struct_1(vec3<f32>(-1030f, 1282f, -215f), vec4<bool>(false, false, false, true)), Struct_1(vec3<f32>(880f, -1019f, 2769f), vec4<bool>(false, false, false, false)));

var<private> global3: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -554f), global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -157f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(142f, global0.a.x, arg_3.a.x, 2013f)) * _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, 470f, 2191f, global0.a.x), vec4<f32>(var_0.a.x, -639f, arg_3.a.x, -201f)))))));
    let var_2 = vec4<bool>(false, all(arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) + _wgslsmith_div_f32(1708f, arg_3.a.x))), !(false && any(vec3<bool>(arg_1, global0.b.x, arg_0.x))));
    var var_3 = ~abs(~u_input.b);
    let var_4 = u_input.e.x;
    return 1u;
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(var_0.a.x * arg_2.a.x);
    let var_2 = arg_2.b.yy;
    var var_3 = var_0.b.ywx;
    let var_4 = select(_wgslsmith_dot_vec2_i32(-(-vec2<i32>(-33681i, -25263i) & firstLeadingBit(vec2<i32>(u_input.e.x, u_input.e.x))), ~abs(vec2<i32>(-1i, arg_0) & vec2<i32>(3381i, 43186i))), 23541i, !any(vec2<bool>(true, false | global0.b.x)));
    return arg_1;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>) -> vec4<bool> {
    let var_0 = ~abs(u_input.e);
    var var_1 = vec4<i32>(1i, var_0.x, u_input.c, 0i);
    global3 = global0.a.x;
    let var_2 = func_4(_wgslsmith_mult_i32(arg_1.x, firstTrailingBit(-2147483647i)), u_input.b.xy, Struct_1(global0.a, !(!global1[_wgslsmith_index_u32(func_3(vec4<bool>(true, global0.b.x, global0.b.x, false), true, -48377i, Struct_1(vec3<f32>(global0.a.x, -1550f, -168f), global1[_wgslsmith_index_u32(u_input.d, 21u)])), 21u)])));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2321f + -738f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1362f) * global0.a.x), global0.a.x))), global0.b);
    return vec4<bool>(all(!var_3.b.yzz), all(vec2<bool>(arg_0.x, all(select(vec3<bool>(arg_0.x, var_3.b.x, false), var_3.b.xyz, false)))), any(vec2<bool>(all(!global1[_wgslsmith_index_u32(1u, 21u)]), global0.b.x)), arg_0.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<f32>) -> f32 {
    global3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))))), _wgslsmith_div_f32(748f, -502f)));
    let var_0 = global2[_wgslsmith_index_u32(u_input.a, 23u)];
    global2 = array<Struct_1, 23>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global0.a.x, 541f, arg_0.b.x)), 1327f, 2702f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(417f, 981f, -1000f), vec3<f32>(global0.a.x, 1241f, 198f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, -569f, arg_2.x) * global0.a)), true)), all(!(!vec4<bool>(global0.b.x, false, var_0.b.x, global0.b.x))))));
    var_1 = vec3<f32>(arg_0.a.x, -691f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(219f - var_0.a.x)))));
    return _wgslsmith_f_op_f32(floor(-1067f));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<u32>) -> f32 {
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 - -1632f)))) + _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(649f, -1976f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -719f))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(885f - arg_0), -605f), func_2(select(vec4<bool>(global0.b.x, arg_1, global0.b.x, arg_1), vec4<bool>(arg_1, false, arg_1, false), global0.b.x), _wgslsmith_mult_vec2_i32(u_input.e.yx, vec2<i32>(u_input.c, 70689i)))), vec2<f32>(752f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a)))));
    var var_0 = ~(~arg_2.x);
    global2 = array<Struct_1, 23>();
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~(~arg_2.x)), 0u) | ((~u_input.a ^ _wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, 4294967295u, u_input.a), u_input.b.xwy), ~vec3<u32>(1u, u_input.a, 43895u))) >> (~u_input.b.x % 32u)), 23u)];
    return -1412f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(-_wgslsmith_dot_vec2_i32(u_input.e.xz & u_input.e.zz, firstTrailingBit(u_input.e.yx))) >= 2147483647i;
    let var_1 = global2[_wgslsmith_index_u32(52460u, 23u)];
    global1 = array<vec4<bool>, 21>();
    let var_2 = true;
    global1 = array<vec4<bool>, 21>();
    global2 = array<Struct_1, 23>();
    let var_3 = select(u_input.b.xy, u_input.b.xw, global0.a.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global0.a.x, false, u_input.b.yz)) - _wgslsmith_f_op_f32(-1028f - 1320f))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(1481f - _wgslsmith_f_op_f32(min(-1009f, -276f))), var_1.a.x, -373f, _wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(global0.a.x - global0.a.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a.x, global0.a.x, var_1.a.x, 1000f))))))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, global0.a.x, var_1.a.x, -737f), vec4<f32>(global0.a.x, -832f, -603f, var_1.a.x)) * vec4<f32>(-521f, 699f, 1209f, -138f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, 1256f, -1455f) + vec4<f32>(-1653f, -1147f, 1000f, -1475f)))), var_2)));
    var var_5 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(355f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(Struct_1(var_1.a, vec4<bool>(var_2, true, var_2, var_1.b.x)), var_4.wz, var_4.wwy)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-474f, _wgslsmith_f_op_f32(-global0.a.x))))), vec4<bool>(!global0.b.x, global0.b.x, global0.a.x != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global0.a.x, 2165f)))), ~_wgslsmith_mult_i32(-1i, u_input.c) != _wgslsmith_dot_vec4_i32(-vec4<i32>(2807i, -52777i, u_input.c, u_input.c), countOneBits(vec4<i32>(2147483647i, -48969i, -39231i, 34705i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(203f + var_5.a.x)) - _wgslsmith_f_op_f32(floor(121f))))), u_input.e, u_input.e.x, var_4.xxx, _wgslsmith_f_op_vec4_f32(var_4 + var_4));
}

