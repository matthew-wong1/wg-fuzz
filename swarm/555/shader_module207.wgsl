struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(27495i, 1043f), Struct_1(i32(-2147483648), 375f), Struct_1(25960i, 1003f), Struct_1(0i, 1000f), Struct_1(2476i, -189f), Struct_1(-4754i, 2302f), Struct_1(-30824i, -503f), Struct_1(-1i, 1631f), Struct_1(39840i, -142f), Struct_1(45763i, 560f), Struct_1(2147483647i, 167f), Struct_1(1i, -1307f), Struct_1(30013i, -209f), Struct_1(-63562i, -725f), Struct_1(0i, -340f), Struct_1(1i, 413f), Struct_1(53396i, 784f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 17>();
    var var_0 = u_input.c;
    var var_1 = firstTrailingBit(u_input.e.yz);
    return -745f;
}

fn func_3(arg_0: bool) -> u32 {
    global0 = array<Struct_1, 17>();
    let var_0 = (_wgslsmith_div_i32(u_input.e.x, 2058i) ^ _wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.b, u_input.b, -13407i, u_input.b)), abs(vec4<i32>(u_input.b, u_input.d, u_input.d, 19739i)))) | 65000i;
    var var_1 = ~(-reverseBits(~u_input.e.zz));
    var var_2 = false;
    let var_3 = ~(-u_input.d);
    return u_input.c;
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_3 {
    global0 = array<Struct_1, 17>();
    let var_0 = vec4<bool>(any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true, !any(vec3<bool>(true, true, true)), !(min(i32(-1i) * -24811i, -arg_0) <= reverseBits(34570i)));
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-1247f + _wgslsmith_f_op_f32(1122f + _wgslsmith_f_op_f32(f32(-1f) * -117f)))), _wgslsmith_f_op_f32(func_2()));
    let var_2 = u_input.e;
    let var_3 = u_input.a.yx;
    return Struct_3(~min(_wgslsmith_div_vec2_u32(select(vec2<u32>(1u, 0u), var_3, var_0.xy), vec2<u32>(1u, 1u)), u_input.a.xy), global0[_wgslsmith_index_u32(func_3(any(!select(vec4<bool>(false, false, var_0.x, var_0.x), var_0, var_0.x))), 17u)], arg_0, global0[_wgslsmith_index_u32(min(var_3.x, var_3.x) << (arg_1 % 32u), 17u)]);
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(793f, 1230f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(659f, arg_2.d.b))), true))) - vec2<f32>(arg_2.d.b, _wgslsmith_f_op_f32(max(1187f, -311f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(884f, arg_1)), vec2<f32>(1237f, -1051f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_2.d.b), -1443f)))), false));
    let var_1 = Struct_4(arg_0.wz);
    let var_2 = Struct_2(Struct_1(_wgslsmith_clamp_i32(-(5550i ^ arg_2.d.a), 0i, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1316f))))), arg_2.b);
    global0 = array<Struct_1, 17>();
    let var_3 = arg_2;
    return max(1i, _wgslsmith_mult_i32(u_input.d, _wgslsmith_sub_i32(reverseBits(firstTrailingBit(0i)), u_input.e.x)));
}

fn func_5(arg_0: i32, arg_1: vec2<u32>) -> StorageBuffer {
    global0 = array<Struct_1, 17>();
    let var_0 = u_input.a.x;
    let var_1 = Struct_2(func_1(0i, arg_1.x).b, Struct_1(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1165f)))));
    var var_2 = func_1(arg_0, abs(func_3(true)));
    global0 = array<Struct_1, 17>();
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.b.b, 932f), vec2<f32>(136f, -965f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.b, 1445f) - vec2<f32>(-183f, 605f))))), var_2.a.x, vec2<i32>(-arg_0, var_2.d.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = func_5(max(u_input.d, func_4(firstTrailingBit(vec4<u32>(1u, 22953u, 47248u, 35501u)) & select(vec4<u32>(0u, 4294967295u, u_input.c, 4294967295u), vec4<u32>(28747u, u_input.a.x, 1u, u_input.a.x), true), 1f, func_1(u_input.e.x ^ u_input.d, u_input.a.x))), vec2<u32>(u_input.c, ~1u));
}

