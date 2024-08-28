struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: array<vec2<i32>, 8>;

var<private> global2: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(-135f, 1186f, -621f, 532f), vec4<f32>(-1109f, 904f, 927f, 338f), vec4<f32>(-738f, 1914f, 523f, -1810f), vec4<f32>(-416f, 603f, -242f, -1379f), vec4<f32>(312f, 1176f, 582f, 713f), vec4<f32>(1161f, 1493f, -713f, -1051f), vec4<f32>(1000f, -2760f, 1497f, 385f), vec4<f32>(-1000f, 852f, -1771f, 208f), vec4<f32>(207f, -1473f, 863f, 1000f), vec4<f32>(1091f, -2010f, -796f, -872f), vec4<f32>(937f, -1000f, -1380f, 1048f), vec4<f32>(506f, 912f, -708f, 1816f), vec4<f32>(-394f, -354f, -573f, 382f), vec4<f32>(-374f, -882f, 943f, 2919f), vec4<f32>(1550f, -255f, 1362f, -223f), vec4<f32>(262f, 789f, -1000f, 1904f), vec4<f32>(-942f, -685f, 1620f, 479f), vec4<f32>(442f, -233f, -263f, 2380f), vec4<f32>(-1214f, 363f, 1013f, 1227f), vec4<f32>(-762f, -1468f, 654f, -1253f), vec4<f32>(-495f, -873f, 694f, -114f), vec4<f32>(577f, 803f, -319f, -431f), vec4<f32>(-437f, -1121f, -226f, 2323f), vec4<f32>(1258f, -252f, 762f, 1216f), vec4<f32>(-519f, 2138f, 1990f, -909f), vec4<f32>(-1000f, -697f, -983f, -358f), vec4<f32>(-770f, -918f, -602f, 680f), vec4<f32>(-1000f, -1409f, -165f, -375f), vec4<f32>(960f, 495f, 700f, -404f));

var<private> global3: Struct_1 = Struct_1(vec3<f32>(780f, 579f, -557f), vec3<u32>(4294967295u, 1u, 17541u));

var<private> global4: bool = false;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = vec2<bool>(!global0[_wgslsmith_index_u32(~abs(firstTrailingBit(59776u)), 21u)], global0[_wgslsmith_index_u32(82040u, 21u)]);
    global3 = arg_3;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(236f)))))))), Struct_1(arg_3.a, global3.b));
    let var_2 = !vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], any(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0, 21u)], var_0.x, global0[_wgslsmith_index_u32(1u, 21u)]), vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(var_1.b.b.x, 21u)], false), global0[_wgslsmith_index_u32(4294967295u, 21u)])), any(select(vec3<bool>(true, true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(15220u, 21u)]), all(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0, 21u)])))), true);
    var var_3 = var_2.yw;
    return arg_2;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    global2 = array<vec4<f32>, 29>();
    global3 = Struct_1(global3.a, countOneBits(vec3<u32>(64524u, ~abs(113066u), global3.b.x)));
    global2 = array<vec4<f32>, 29>();
    var var_0 = Struct_1(global3.a, _wgslsmith_div_vec3_u32(min(select(countOneBits(global3.b), ~global3.b, global0[_wgslsmith_index_u32(94976u, 21u)] && global0[_wgslsmith_index_u32(1u, 21u)]), global3.b), abs(min(global3.b, global3.b))));
    var var_1 = !(!((_wgslsmith_f_op_f32(global3.a.x - var_0.a.x) == _wgslsmith_f_op_f32(-global3.a.x)) & any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(41731u, 21u)]))));
    return Struct_2(-443f, Struct_1(_wgslsmith_f_op_vec3_f32(func_3(1u, global3.a.x, vec3<f32>(_wgslsmith_div_f32(global3.a.x, arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -137f), _wgslsmith_f_op_f32(234f + 602f)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(global3.a)), var_0.b | vec3<u32>(4294967295u, var_0.b.x, 1u)))), vec3<u32>(var_0.b.x, var_0.b.x, global3.b.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = 1i;
    let var_1 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-150f, global3.a.x))), _wgslsmith_f_op_f32(-global3.a.x)));
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, global3.a.x))))) + _wgslsmith_f_op_vec2_f32(-var_1.b.a.zz)));
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, global3.a.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, 505f)) - _wgslsmith_f_op_vec2_f32(var_1.b.a.yy + _wgslsmith_f_op_vec2_f32(-var_2.b.a.zy))))));
    var var_4 = func_2(var_1.b.a.xz).b;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-277f, var_2.a, 1000f)) - _wgslsmith_f_op_vec3_f32(max(var_1.b.a, vec3<f32>(-103f, -319f, var_1.a)))) + global3.a) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_1.b.a, vec3<f32>(var_3.x, var_4.a.x, 1000f))))))), firstLeadingBit(var_4.b) & ~select(vec3<u32>(var_2.b.b.x, 90413u, 4294967295u), var_4.b, select(vec3<bool>(global0[_wgslsmith_index_u32(13506u, 21u)], global0[_wgslsmith_index_u32(global3.b.x, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(global3.b.x, 21u)], global0[_wgslsmith_index_u32(var_4.b.x, 21u)]), vec3<bool>(global0[_wgslsmith_index_u32(58432u, 21u)], global0[_wgslsmith_index_u32(var_4.b.x, 21u)], global0[_wgslsmith_index_u32(var_2.b.b.x, 21u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1027f, _wgslsmith_f_op_f32(f32(-1f) * -296f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1772f + global3.a.x))), _wgslsmith_f_op_f32(global3.a.x + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -2225f)))));
    global0 = array<bool, 21>();
    var var_1 = _wgslsmith_f_op_f32(global3.a.x + global3.a.x);
    global4 = all(!(!vec3<bool>(1u >= global3.b.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.b.x, 4294967295u), 21u)], true)));
    let var_2 = func_1();
    let var_3 = select(vec2<bool>(all(select(!vec3<bool>(global0[_wgslsmith_index_u32(global3.b.x, 21u)], global0[_wgslsmith_index_u32(var_2.b.x, 21u)], global0[_wgslsmith_index_u32(0u, 21u)]), !vec3<bool>(false, true, global0[_wgslsmith_index_u32(96277u, 21u)]), !vec3<bool>(global0[_wgslsmith_index_u32(var_2.b.x, 21u)], global0[_wgslsmith_index_u32(14123u, 21u)], global0[_wgslsmith_index_u32(49202u, 21u)]))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_2.b.x, ~global3.b.x, select(~global3.b.x, ~var_2.b.x, global0[_wgslsmith_index_u32(41085u, 21u)])), 21u)]), vec2<bool>(-(u_input.a & u_input.a) <= -u_input.a, global0[_wgslsmith_index_u32(4294967295u, 21u)]), false);
    global1 = array<vec2<i32>, 8>();
    global4 = true;
    var var_4 = any(!var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_0.zxy));
}

