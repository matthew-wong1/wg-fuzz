struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(1000f, 1270f, 597f, 637f, -539f, 1459f, -184f, 1000f, 989f, 1838f, -1000f, 753f);

var<private> global1: Struct_1;

var<private> global2: vec2<f32> = vec2<f32>(-380f, 1000f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~(u_input.b ^ _wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -1i, u_input.b.x, -14796i), vec4<i32>(-13956i, 1i, 0i, 3824i))), u_input.b), firstTrailingBit(select(firstTrailingBit(vec4<i32>(-2147483647i, u_input.d, u_input.d, u_input.c)), vec4<i32>(-2147483647i, u_input.d, 1i | u_input.c, -u_input.c), !vec4<bool>(false, false, false, arg_0))));
    let var_1 = vec2<i32>(-select(u_input.b.x, select(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.b.xx, u_input.b.wy), true), arg_0), 18992i >> (1u % 32u));
    global2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e.x, 12u)] * _wgslsmith_f_op_f32(f32(-1f) * -467f)) * -1247f), _wgslsmith_f_op_f32(floor(arg_1)))));
    let var_2 = -2147483647i;
    global0 = array<f32, 12>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global1.a)) + arg_2.c.c.a);
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4, arg_2: bool) -> f32 {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a.b.a + global1.a), _wgslsmith_f_op_vec2_f32(func_3(arg_2, arg_1.c.a.x, arg_1.a))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-725f, 960f)))))))));
    var var_0 = arg_0.c.x;
    var_0 = ~firstTrailingBit(-2147483647i) < (~firstTrailingBit(15816i) ^ 2147483647i);
    var var_1 = global0[_wgslsmith_index_u32(~u_input.e.x, 12u)];
    var_1 = global2.x;
    return arg_1.c.a.x;
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1564f, 831f)), _wgslsmith_f_op_f32(f32(-1f) * -332f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(Struct_5(arg_0.a.x, arg_0, vec2<bool>(false, true)), Struct_4(Struct_3(Struct_2(1108f, global0[_wgslsmith_index_u32(72986u, 12u)], Struct_1(arg_0.a)), Struct_1(vec2<f32>(719f, -1853f)), Struct_2(-808f, -502f, arg_0)), arg_0, arg_0), false)))))), Struct_1(_wgslsmith_f_op_vec2_f32(step(arg_0.a, vec2<f32>(1199f, global2.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-551f, -767f)))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, global2.x) + global0[_wgslsmith_index_u32(3613u, 12u)])), _wgslsmith_f_op_f32(func_2(Struct_5(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0, select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), Struct_4(Struct_3(Struct_2(-1107f, arg_0.a.x, Struct_1(arg_0.a)), Struct_1(vec2<f32>(1035f, global2.x)), Struct_2(-1327f, arg_0.a.x, arg_0)), Struct_1(global1.a), arg_0), true)), arg_0));
    var var_1 = Struct_3(Struct_2(-1270f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(false, arg_0.a.x, Struct_3(Struct_2(global2.x, global1.a.x, arg_0), Struct_1(vec2<f32>(-949f, global2.x)), Struct_2(-1268f, global2.x, Struct_1(vec2<f32>(arg_0.a.x, global0[_wgslsmith_index_u32(1u, 12u)])))))).x) - -751f), var_0.b), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(785f, _wgslsmith_f_op_f32(-arg_0.a.x)))), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(true, -2046f, var_0)).x + 1249f))), _wgslsmith_div_f32(-737f, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.e.x ^ u_input.e.x, 12u)], _wgslsmith_f_op_vec2_f32(func_3(false, global2.x, var_0)).x))), arg_0));
    global0 = array<f32, 12>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(335f, 325f, 964f, 2190f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-452f, var_1.b.a.x, global1.a.x, -103f), vec4<f32>(arg_0.a.x, arg_0.a.x, -1700f, 1593f), vec4<bool>(true, false, true, false))))))));
    let var_3 = true;
    return Struct_4(Struct_3(var_1.a, var_1.b, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e.x, 12u)])), _wgslsmith_f_op_f32(func_2(Struct_5(global2.x, Struct_1(arg_0.a), vec2<bool>(true, var_3)), Struct_4(var_0, Struct_1(vec2<f32>(-2430f, 237f)), Struct_1(vec2<f32>(1479f, -988f))), !var_3)), arg_0)), Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(~u_input.e.x, 12u)], 763f)), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-116f))), -591f)));
    let var_1 = func_1(Struct_1(vec2<f32>(global2.x, var_0.a.x)));
    var var_2 = var_1.a;
    let var_3 = u_input.b.x;
    let var_4 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.c.a, var_1.a.a.b, vec4<f32>(global0[_wgslsmith_index_u32(~0u, 12u)], var_1.c.a.x, -914f, -939f));
}

