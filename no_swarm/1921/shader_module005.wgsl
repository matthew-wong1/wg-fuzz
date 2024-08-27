struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_1(1u), vec3<f32>(-223f, 600f, -670f), Struct_1(1u)), Struct_3(Struct_1(4294967295u), vec3<f32>(-1462f, 579f, -896f), Struct_1(4294967295u)), Struct_3(Struct_1(20268u), vec3<f32>(-164f, 588f, -629f), Struct_1(1u)), Struct_3(Struct_1(11672u), vec3<f32>(-1275f, -656f, -1038f), Struct_1(4134u)), Struct_3(Struct_1(7708u), vec3<f32>(419f, 1380f, 331f), Struct_1(0u)), Struct_3(Struct_1(4294967295u), vec3<f32>(344f, 1037f, 1732f), Struct_1(20480u)), Struct_3(Struct_1(58065u), vec3<f32>(893f, 2400f, -564f), Struct_1(12096u)), Struct_3(Struct_1(28848u), vec3<f32>(1204f, 117f, -296f), Struct_1(45677u)), Struct_3(Struct_1(1u), vec3<f32>(-1772f, 867f, 775f), Struct_1(1u)), Struct_3(Struct_1(14907u), vec3<f32>(1667f, -443f, 887f), Struct_1(0u)), Struct_3(Struct_1(4294967295u), vec3<f32>(458f, -418f, 1183f), Struct_1(68729u)), Struct_3(Struct_1(37089u), vec3<f32>(-1825f, 970f, 795f), Struct_1(1u)), Struct_3(Struct_1(77950u), vec3<f32>(385f, 1000f, 1000f), Struct_1(1u)), Struct_3(Struct_1(0u), vec3<f32>(615f, 261f, 743f), Struct_1(38094u)), Struct_3(Struct_1(34728u), vec3<f32>(1865f, -753f, 1296f), Struct_1(1u)), Struct_3(Struct_1(1u), vec3<f32>(1648f, -453f, -927f), Struct_1(4294967295u)), Struct_3(Struct_1(0u), vec3<f32>(205f, 171f, -1227f), Struct_1(4294967295u)), Struct_3(Struct_1(0u), vec3<f32>(307f, 1239f, -174f), Struct_1(0u)), Struct_3(Struct_1(1u), vec3<f32>(-932f, 661f, -960f), Struct_1(4294967295u)));

var<private> global1: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(2147483647i, 0i, -48621i));

var<private> global2: i32;

var<private> global3: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global4: Struct_3 = Struct_3(Struct_1(1u), vec3<f32>(-1355f, 2744f, -1833f), Struct_1(4294967295u));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    return max(_wgslsmith_div_u32(~firstLeadingBit(global4.a.a), global4.a.a), 1u) ^ ~u_input.a.x;
}

fn func_2() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(func_3(), 19u)];
    let var_1 = abs(firstTrailingBit(max(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), ~vec4<i32>(8559i, 8465i, 1i, 1i), ~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<i32>(-70872i, _wgslsmith_mult_i32(0i, u_input.b), 1i, u_input.b))));
    let var_2 = var_1.x;
    global4 = Struct_3(var_0.c, var_0.b, Struct_1(3524u));
    let var_3 = -countOneBits(var_1.wx);
    return var_0.c;
}

fn func_1() -> bool {
    var var_0 = func_2();
    var var_1 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(u_input.a.wyy), ~vec3<u32>(var_0.a, var_0.a, global4.a.a)) ^ ~u_input.a.yzx, ~u_input.a.xzy, u_input.a.wwx);
    var_0 = func_2();
    var var_2 = global4.c;
    var_0 = func_2();
    return all(select(!select(global3.zzy, select(global3.wzx, vec3<bool>(true, global3.x, false), vec3<bool>(true, global3.x, false)), vec3<bool>(true, global3.x, true)), select(vec3<bool>(any(vec4<bool>(false, global3.x, true, global3.x)), !global3.x, global3.x), vec3<bool>(global3.x != true, global3.x, any(global3.wy)), true), vec3<bool>(global3.x, any(select(global3.zxz, global3.zwz, global3.x)), any(vec4<bool>(true, global3.x, global3.x, true)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32) -> Struct_2 {
    global2 = u_input.b;
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-532f, global4.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -544f) * _wgslsmith_f_op_vec2_f32(-global4.b.yy))))));
    global1 = array<vec3<i32>, 1>();
    var var_1 = var_0.x;
    var var_2 = 1i;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-405f)))))), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(~u_input.a.yxx, u_input.a.xwz);
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.x - global4.b.x) + _wgslsmith_f_op_f32(global4.b.x * 510f)), -1645f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b.x, -224f)) - _wgslsmith_f_op_vec2_f32(-global4.b.yz)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b.x, -1410f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b.x, global4.b.x)))), !func_1())), -807f);
    global4 = Struct_3(global4.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global4.b.x, var_1.a, -1556f))))), global4.b), var_1.b);
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global4.b.x, 753f)));
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(1034f, global4.b.x, -52502i, min(~select(~vec2<u32>(38651u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(global4.a.a, 18564u), vec2<u32>(var_1.b.a, var_3.a)), select(global3.x, false, global3.x)), vec2<u32>(~countOneBits(0u), _wgslsmith_dot_vec4_u32(u_input.a << (vec4<u32>(421u, 0u, u_input.a.x, 8335u) % vec4<u32>(32u)), u_input.a))));
}

