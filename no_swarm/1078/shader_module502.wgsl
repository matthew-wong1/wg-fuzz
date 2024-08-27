struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 17968u;

var<private> global1: vec2<i32> = vec2<i32>(14708i, 8015i);

var<private> global2: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(808f, -1943f), vec2<f32>(-164f, 716f), vec2<f32>(-1417f, -397f), vec2<f32>(-413f, -627f), vec2<f32>(1000f, 1077f), vec2<f32>(-1581f, 1023f), vec2<f32>(372f, 950f), vec2<f32>(-479f, 1163f), vec2<f32>(-2057f, -697f), vec2<f32>(-911f, -378f), vec2<f32>(-1854f, -547f), vec2<f32>(-177f, 626f), vec2<f32>(1591f, 792f), vec2<f32>(-1828f, -259f), vec2<f32>(-159f, -1326f), vec2<f32>(145f, 531f), vec2<f32>(-905f, 194f), vec2<f32>(-212f, -2062f), vec2<f32>(-800f, -261f), vec2<f32>(-2128f, -582f), vec2<f32>(-2679f, 2298f), vec2<f32>(-260f, 679f), vec2<f32>(-1487f, -1377f), vec2<f32>(-639f, -596f), vec2<f32>(-412f, -355f), vec2<f32>(518f, -987f));

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<bool>(false, true), -1131f), Struct_1(vec2<bool>(true, false), 1037f), Struct_1(vec2<bool>(false, false), 651f), Struct_1(vec2<bool>(false, false), -979f), Struct_1(vec2<bool>(false, true), 945f), Struct_1(vec2<bool>(false, true), -416f), Struct_1(vec2<bool>(false, true), -159f), Struct_1(vec2<bool>(false, false), -1549f), Struct_1(vec2<bool>(false, true), 927f), Struct_1(vec2<bool>(false, true), -914f), Struct_1(vec2<bool>(true, true), 356f), Struct_1(vec2<bool>(true, false), -1541f), Struct_1(vec2<bool>(false, false), -1739f), Struct_1(vec2<bool>(true, false), 2596f), Struct_1(vec2<bool>(true, true), 1403f), Struct_1(vec2<bool>(false, true), -1156f), Struct_1(vec2<bool>(false, false), -1257f), Struct_1(vec2<bool>(true, true), -390f), Struct_1(vec2<bool>(true, false), 470f), Struct_1(vec2<bool>(false, false), -239f), Struct_1(vec2<bool>(false, true), 535f), Struct_1(vec2<bool>(false, true), 1292f), Struct_1(vec2<bool>(true, false), -169f), Struct_1(vec2<bool>(false, false), 259f), Struct_1(vec2<bool>(true, false), 456f), Struct_1(vec2<bool>(false, false), 311f), Struct_1(vec2<bool>(false, false), -203f), Struct_1(vec2<bool>(false, false), 525f), Struct_1(vec2<bool>(true, false), 654f), Struct_1(vec2<bool>(false, true), -1989f), Struct_1(vec2<bool>(true, false), 287f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = u_input.d.zz;
    return 2957f;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_2 {
    global2 = array<vec2<f32>, 26>();
    var var_0 = vec2<f32>(-949f, 1302f);
    let var_1 = global3[_wgslsmith_index_u32(0u, 31u)];
    global0 = ~u_input.c.x;
    var_0 = _wgslsmith_f_op_vec2_f32(arg_3 - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(arg_1.a.wz)), arg_3)));
    return Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-380f, _wgslsmith_div_f32(-1340f, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 1726f)), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<bool>(arg_0.b.x, true), arg_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1219f * arg_2.c) - arg_2.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1435f, _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(8315u, 31u)])), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-487f - -884f)))), arg_0.b, 605f);
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.a.x, 175f, arg_2.c, arg_2.c))))) + _wgslsmith_f_op_vec4_f32(-arg_2.a)));
    var var_1 = Struct_1(vec2<bool>(true, arg_0), -679f);
    global2 = array<vec2<f32>, 26>();
    let var_2 = 1797f;
    var var_3 = Struct_2(vec4<f32>(542f, _wgslsmith_div_f32(arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2)))), -136f, arg_2.a.x), arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-182f)) * -392f));
    return 0i;
}

fn func_1() -> StorageBuffer {
    global1 = -firstTrailingBit(vec2<i32>(select(u_input.d.x, u_input.d.x, false), global1.x) ^ ((vec2<i32>(u_input.b, 1i) | vec2<i32>(global1.x, 60825i)) ^ vec2<i32>(u_input.d.x, -15814i)));
    var var_0 = abs(u_input.c.yy) >> ((~u_input.a << (u_input.c.zy % vec2<u32>(32u))) % vec2<u32>(32u));
    var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(select(vec2<u32>(u_input.c.x, 49942u) | u_input.a, u_input.c.yx, false)), u_input.a), u_input.a);
    global1 = firstLeadingBit(countOneBits(vec2<i32>(func_4(true, select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), func_2(Struct_2(vec4<f32>(-627f, 959f, 2242f, 254f), vec3<bool>(false, true, false), -1506f), Struct_2(vec4<f32>(-537f, 1123f, -1337f, 1000f), vec3<bool>(false, true, false), -1354f), Struct_2(vec4<f32>(172f, 752f, 1099f, 294f), vec3<bool>(false, false, true), 281f), global2[_wgslsmith_index_u32(98450u, 26u)])), -_wgslsmith_dot_vec2_i32(u_input.d.ww, u_input.d.zw))));
    global0 = ~38104u;
    return StorageBuffer(vec3<f32>(1000f, _wgslsmith_f_op_f32(227f * _wgslsmith_f_op_f32(trunc(1542f))), _wgslsmith_f_op_f32(-1903f * _wgslsmith_f_op_f32(sign(1f)))), abs(_wgslsmith_clamp_i32(-2147483647i, -4537i, _wgslsmith_clamp_i32(4504i, u_input.b, global1.x)) >> (1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = func_1();
}

