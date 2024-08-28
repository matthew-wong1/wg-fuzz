struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(-692f, 538f, 940f, -566f, 582f, -586f, -506f, -1000f, -1000f, 2653f, -1704f, -611f, 404f, -124f, -1524f, 681f, 1170f, -2314f, 239f, 1077f, -2583f, 1310f, -896f, 930f);

var<private> global1: array<vec4<bool>, 15>;

var<private> global2: array<u32, 22> = array<u32, 22>(30983u, 1u, 0u, 0u, 0u, 0u, 9734u, 4294967295u, 103320u, 25102u, 16049u, 0u, 43312u, 0u, 1u, 7893u, 50802u, 31155u, 42960u, 37761u, 4294967295u, 10514u);

var<private> global3: vec2<f32> = vec2<f32>(1397f, 592f);

var<private> global4: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = -183f;
    let var_1 = ~_wgslsmith_mult_u32(~(41205u | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(95642u, 22u)], 22u)], 22u)], 22u)]) >> (33941u % 32u), max(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(select(51988u, 0u, global4.x), 22u)], u_input.a), 1u & ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 22u)], 22u)]));
    return _wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1445f)))))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1013f, -231f, var_0)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1874f, global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30783u, 22u)], 24u)]), vec3<f32>(-486f, var_0, -1674f), vec3<bool>(global4.x, false, global4.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(-var_0), 240f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(279f, _wgslsmith_f_op_f32(round(var_0)), -1030f) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1051f, var_0, var_0))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-465f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], 24u)], var_0), vec3<f32>(global3.x, -1569f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], 24u)]), vec3<bool>(false, global4.x, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(310f, 361f, -841f)), select(vec3<bool>(true, true, global4.x), vec3<bool>(false, true, global4.x), global4.x))))));
    global0 = array<f32, 24>();
    let var_2 = global0[_wgslsmith_index_u32(0u, 24u)] > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1086f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(749f)), -1468f, global4.x)), false))));
    global0 = array<f32, 24>();
    return Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * 551f) - var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(199f * -718f)) - global0[_wgslsmith_index_u32(~firstLeadingBit(4062u), 24u)]))), vec2<bool>(true, all(select(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], vec4<bool>(global4.x, true, false, false), false)) != (select(global4.x, var_2, var_2) | true)));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    let var_0 = u_input.a;
    global1 = array<vec4<bool>, 15>();
    var var_1 = func_2();
    global3 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-816f)))), var_1.a);
    global4 = vec2<bool>(var_1.b.x, false && !var_1.b.x);
    return Struct_3(~_wgslsmith_mod_u32(reverseBits(1u), ~arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_3(46508u));
    var var_1 = Struct_1(~(~u_input.b.xz) | u_input.b.zx, -(~(-2147483647i)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, global3.x, 1018f, 314f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-176f, global3.x, -1183f, 420f) - vec4<f32>(global3.x, global0[_wgslsmith_index_u32(var_0.a, 24u)], global3.x, global3.x))))))), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, 58855u) << (_wgslsmith_mod_u32(u_input.b.x, global2[_wgslsmith_index_u32(0u, 22u)]) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.a, 22u)], 0u, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(var_0.a, 22u)], 56720u, u_input.a, u_input.a))), 22u)], 22u)], select(vec3<bool>(func_2().b.x, true, true), vec3<bool>(!all(vec3<bool>(true, global4.x, true)), false, global4.x || (global0[_wgslsmith_index_u32(u_input.a, 24u)] != global3.x)), select(vec3<bool>(global4.x, any(vec2<bool>(global4.x, global4.x)), all(vec4<bool>(global4.x, false, true, false))), select(vec3<bool>(true, false, true), vec3<bool>(global4.x, true, global4.x), global4.x), any(!vec4<bool>(global4.x, global4.x, global4.x, false)))));
    var var_2 = vec3<bool>(true, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.yz, ~vec2<u32>(var_1.d, 48176u)), 24u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))) == global3.x, true);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -506f))), select(var_2.zy, var_2.zx, select(vec2<bool>(select(var_1.e.x, var_2.x, true), false), var_1.e.yz, var_1.e.x)));
    var var_4 = ~(~0i);
    let var_5 = var_3;
    let var_6 = var_1.e;
    let var_7 = Struct_3(~abs(~var_0.a));
    var var_8 = select(func_1(func_1(func_1(var_7))).a, ~_wgslsmith_mult_u32(~max(var_0.a, u_input.a), u_input.b.x), func_2().b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b), vec2<f32>(264f, -823f), var_1.b, ~reverseBits(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(-62395i, 0i), vec2<i32>(var_1.b, var_1.b)))));
}

