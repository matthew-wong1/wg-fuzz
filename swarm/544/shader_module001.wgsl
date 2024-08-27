struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26>;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<f32>(409f, 1000f, -1000f), -1104f, false), Struct_1(vec3<f32>(1132f, -255f, -1925f), 735f, false), Struct_1(vec3<f32>(-252f, -526f, 1606f), 1451f, false), Struct_1(vec3<f32>(1300f, 169f, -455f), 1456f, true), Struct_1(vec3<f32>(-1134f, 970f, 785f), 770f, true), Struct_1(vec3<f32>(-1000f, -851f, -1000f), -1709f, true), Struct_1(vec3<f32>(-1000f, 988f, -318f), 533f, true), Struct_1(vec3<f32>(-1625f, 1441f, -2451f), 658f, true), Struct_1(vec3<f32>(631f, -437f, 132f), 1000f, false), Struct_1(vec3<f32>(754f, 1066f, 1140f), -1108f, false), Struct_1(vec3<f32>(947f, 285f, -220f), 2040f, false), Struct_1(vec3<f32>(-768f, 1648f, -723f), 1000f, false));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<f32>(-1329f, 637f, -709f), 3051f, false), vec3<f32>(1825f, 615f, -1574f));

var<private> global3: array<f32, 7> = array<f32, 7>(418f, -111f, -828f, 970f, -1173f, -1792f, -1000f);

var<private> global4: array<f32, 11> = array<f32, 11>(1437f, 1000f, 1858f, 311f, -1000f, 1719f, 343f, -203f, 494f, 919f, 1562f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> u32 {
    global4 = array<f32, 11>();
    global1 = array<Struct_1, 12>();
    return _wgslsmith_add_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 49336u, 0u, 0u), select(vec4<u32>(u_input.c.x, 0u, 116883u, u_input.c.x), vec4<u32>(u_input.c.x, 1u, 1u, u_input.c.x), global2.a.c)), u_input.c.x), ~max(_wgslsmith_div_u32(u_input.c.x, 0u), 53170u >> (countOneBits(u_input.c.x) % 32u)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(0u)), 12u)], _wgslsmith_f_op_vec3_f32(step(global2.a.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(407f, global2.a.b, -1518f)))))))));
    global0 = array<vec3<u32>, 26>();
    var var_1 = min(vec4<u32>(~u_input.c.x, u_input.c.x, 1u, ~(u_input.c.x & func_3(Struct_2(Struct_1(global2.b, var_0.b.x, false), vec3<f32>(var_0.a.b, global3[_wgslsmith_index_u32(u_input.c.x, 7u)], global3[_wgslsmith_index_u32(u_input.c.x, 7u)]))))), u_input.c);
    var_1 = ~select(vec4<u32>(1u, 104400u, u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 47383u, var_1.x), var_1.wxw)), u_input.c, select(!vec4<bool>(false, false, global2.a.c, var_0.a.c), select(vec4<bool>(false, false, false, global2.a.c), select(vec4<bool>(var_0.a.c, var_0.a.c, var_0.a.c, global2.a.c), vec4<bool>(false, false, true, true), true), true), !var_0.a.c));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(global2.a.a.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(617f, -443f) + vec2<f32>(-1564f, -627f))))) + vec2<f32>(global4[_wgslsmith_index_u32(3776u, 11u)], _wgslsmith_f_op_f32(-global2.b.x)))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(global2.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.a), var_0.a.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global2.b.x)))), false), global2.a.a);
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = any(!(!(!(!vec4<bool>(true, true, false, global2.a.c)))));
    let var_1 = min(-abs(vec3<i32>(-12671i, u_input.b.x, -1i << (u_input.c.x % 32u))), vec3<i32>(1i, 1i, 1i) | vec3<i32>(reverseBits(~u_input.d), countOneBits(-33294i), 0i));
    let var_2 = func_2();
    global0 = array<vec3<u32>, 26>();
    var var_3 = ~(~u_input.c.wy);
    return StorageBuffer(u_input.c.zz, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~u_input.c.x, 7u)] - _wgslsmith_f_op_f32(-1409f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1387f * -1385f), _wgslsmith_f_op_f32(-433f - global3[_wgslsmith_index_u32(83477u, 7u)]))))), _wgslsmith_add_vec3_i32(vec3<i32>(34064i, u_input.d, u_input.a), var_1), vec2<f32>(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(1u, u_input.c.x), u_input.c.x, false), 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-352f - -1055f)))), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_add_u32(u_input.c.x, var_3.x), abs(1u)), 11u)]), _wgslsmith_div_vec2_u32(firstLeadingBit(~(~vec2<u32>(u_input.c.x, 72683u))), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.c.x, u_input.c.x)), abs(~vec2<u32>(90782u, var_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(true, Struct_2(Struct_1(global2.b, _wgslsmith_f_op_f32(round(-1648f)), !(!global2.a.c)), global2.b));
}

