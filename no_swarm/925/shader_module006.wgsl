struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 15>;

var<private> global1: Struct_1;

var<private> global2: Struct_2;

var<private> global3: array<i32, 4>;

var<private> global4: array<i32, 10> = array<i32, 10>(2147483647i, 22051i, 30521i, 1i, 1i, 46624i, 0i, 2147483647i, 2147483647i, -11371i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: i32) -> u32 {
    global4 = array<i32, 10>();
    return _wgslsmith_mult_u32(_wgslsmith_mod_u32(~countOneBits(global2.b.a.x), global1.a.x), 4294967295u);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    global1 = Struct_1(vec4<u32>(min(u_input.b.x, arg_1.b.a.x), func_2(reverseBits(vec4<u32>(global1.a.x, 1u, 40976u, global1.a.x)), ~vec3<u32>(60394u, 4294967295u, 0u), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 908f, -2085f, 105f))), global3[_wgslsmith_index_u32(~arg_1.b.a.x, 4u)]), countOneBits(arg_1.b.a.x ^ u_input.c), global1.a.x) >> ((_wgslsmith_mult_vec4_u32(~arg_1.b.a, _wgslsmith_sub_vec4_u32(vec4<u32>(106887u, global1.a.x, arg_1.b.a.x, global2.b.a.x), vec4<u32>(global2.b.a.x, 0u, arg_1.b.a.x, global2.b.a.x))) ^ min(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global2.b.a.x, arg_1.b.a.x, u_input.a.x), vec4<u32>(153292u, global1.a.x, 4294967295u, global2.b.a.x)), vec4<u32>(36111u, 11208u, 4294967295u, global2.b.a.x))) % vec4<u32>(32u)), global4[_wgslsmith_index_u32(global2.b.a.x, 10u)] << (0u % 32u));
    let var_0 = vec3<u32>(arg_1.b.a.x, _wgslsmith_sub_u32(0u, global2.b.a.x), abs(~u_input.a.x));
    let var_1 = Struct_2(arg_1.a, global2.b);
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(0u), 15u)];
    let var_3 = Struct_3(Struct_2(false, Struct_1(vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, global1.a.x, 267u), ~var_0.x, abs(1u), 44476u), -1i)), arg_0, Struct_1(countOneBits(~vec4<u32>(global1.a.x, 52597u, 1u, 0u)), 39083i >> (arg_1.b.a.x % 32u)), ~0u);
    return var_3.a;
}

fn func_3(arg_0: vec3<f32>, arg_1: bool) -> Struct_2 {
    var var_0 = global2.b.a.xy;
    global0 = array<vec2<f32>, 15>();
    let var_1 = arg_0;
    var var_2 = max(u_input.b.x, countOneBits(115899u));
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yy))));
    return func_1(!select(!select(vec2<bool>(true, arg_1), vec2<bool>(true, true), vec2<bool>(arg_1, global2.a)), !(!vec2<bool>(arg_1, arg_1)), true), func_1(select(vec2<bool>(!global2.a, global2.a), select(select(vec2<bool>(true, false), vec2<bool>(false, global2.a), global2.a), select(vec2<bool>(false, false), vec2<bool>(true, global2.a), false), select(global2.a, true, true)), !vec2<bool>(arg_1, true)), func_1(vec2<bool>(!global2.a, false), func_1(vec2<bool>(false, arg_1), func_1(vec2<bool>(false, false), Struct_2(global2.a, global2.b), false), global2.a), (global3[_wgslsmith_index_u32(32789u, 4u)] >> (global2.b.a.x % 32u)) == global4[_wgslsmith_index_u32(~var_0.x, 10u)]), false & all(vec2<bool>(arg_1, global2.a))), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(!(!(!vec2<bool>(global2.a, global2.a)))), Struct_2(global2.a, Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global1.a.x, u_input.a.x, global2.b.a.x), vec4<u32>(u_input.a.x, 29844u, 1u, 4294967295u)), _wgslsmith_sub_i32(global1.b, global4[_wgslsmith_index_u32(46401u, 10u)]))), true);
    var_0 = func_3(vec3<f32>(121f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(514f, 371f, var_0.a)), _wgslsmith_div_f32(399f, -755f))), -104f), true);
    var var_1 = func_2(firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(var_0.b.a.x, 5309u), _wgslsmith_dot_vec2_u32(var_0.b.a.zy, u_input.b.yy), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.x, global1.a.x), vec2<u32>(global1.a.x, global2.b.a.x)), ~19759u)) << (~max(select(global1.a, vec4<u32>(11412u, u_input.c, 2620u, 0u), vec4<bool>(true, false, var_0.a, false)), vec4<u32>(4294967295u, u_input.b.x, global1.a.x, 0u) & vec4<u32>(var_0.b.a.x, 40685u, var_0.b.a.x, var_0.b.a.x)) % vec4<u32>(32u)), var_0.b.a.zww, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1336f, 674f, 389f, 1861f), vec4<f32>(-117f, 1945f, -405f, 1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1227f, -132f, -1000f, -443f), vec4<f32>(2133f, -528f, -1810f, 436f))))), i32(-1i) * -func_1(select(vec2<bool>(global2.a, global2.a), vec2<bool>(var_0.a, global2.a), vec2<bool>(false, true)), Struct_2(false, global2.b), any(vec4<bool>(global2.a, false, true, true))).b.b);
    var var_2 = global2.b;
    var_2 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(0u, 1u), 35738u, reverseBits(1u), 4294967295u), firstTrailingBit(global2.b.b));
    global4 = array<i32, 10>();
    global4 = array<i32, 10>();
    let var_3 = Struct_1(abs(vec4<u32>(0u, _wgslsmith_div_u32(24338u, u_input.b.x) ^ var_2.a.x, _wgslsmith_mult_u32(26588u, 0u), _wgslsmith_dot_vec2_u32(select(global1.a.yy, global2.b.a.zx, vec2<bool>(false, false)), select(u_input.b.yx, vec2<u32>(1u, global1.a.x), vec2<bool>(true, true))))), _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(-u_input.d.yz, u_input.d.yx), -(~u_input.d.zx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-514f, 1400f, -592f, 584f)), vec4<f32>(_wgslsmith_f_op_f32(-1491f + -422f), _wgslsmith_div_f32(1414f, -519f), _wgslsmith_f_op_f32(f32(-1f) * -921f), -2135f), select(select(vec4<bool>(true, global2.a, true, true), vec4<bool>(true, var_0.a, true, global2.a), vec4<bool>(true, false, var_0.a, global2.a)), !vec4<bool>(true, var_0.a, false, true), select(vec4<bool>(var_0.a, var_0.a, global2.a, true), vec4<bool>(var_0.a, false, false, false), false)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(590f)), -1000f, _wgslsmith_div_f32(839f, 720f), _wgslsmith_f_op_f32(1164f + -1000f)))));
}

