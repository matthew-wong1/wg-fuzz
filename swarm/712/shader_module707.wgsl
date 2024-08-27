struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<u32>(55709u, 12687u, 9802u), vec3<f32>(-1041f, -975f, -311f)), Struct_1(vec3<u32>(0u, 4294967295u, 75866u), vec3<f32>(-145f, 806f, 241f)), Struct_1(vec3<u32>(0u, 100777u, 1u), vec3<f32>(449f, 276f, -810f)), Struct_1(vec3<u32>(1u, 4755u, 127851u), vec3<f32>(1002f, -545f, 1000f)), Struct_1(vec3<u32>(5930u, 4294967295u, 51643u), vec3<f32>(-514f, 951f, 796f)), Struct_1(vec3<u32>(33588u, 0u, 0u), vec3<f32>(-178f, 512f, -293f)), Struct_1(vec3<u32>(1u, 0u, 2809u), vec3<f32>(1091f, 1031f, 133f)), Struct_1(vec3<u32>(25001u, 24473u, 0u), vec3<f32>(-744f, 852f, 875f)), Struct_1(vec3<u32>(5287u, 38556u, 0u), vec3<f32>(-867f, -540f, -1000f)), Struct_1(vec3<u32>(4294967295u, 22362u, 45713u), vec3<f32>(-1162f, 1000f, 1291f)), Struct_1(vec3<u32>(19420u, 4294967295u, 1u), vec3<f32>(1849f, 742f, 1760f)), Struct_1(vec3<u32>(0u, 0u, 0u), vec3<f32>(1597f, -583f, -1236f)), Struct_1(vec3<u32>(4294967295u, 0u, 0u), vec3<f32>(-770f, 1046f, 1944f)), Struct_1(vec3<u32>(4294967295u, 32791u, 56u), vec3<f32>(1000f, 710f, -533f)), Struct_1(vec3<u32>(1623u, 0u, 35587u), vec3<f32>(540f, 555f, 356f)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec3<f32>(1583f, -1455f, -1000f)), Struct_1(vec3<u32>(1u, 37964u, 21517u), vec3<f32>(-283f, -285f, 474f)), Struct_1(vec3<u32>(0u, 30251u, 1084u), vec3<f32>(534f, -268f, 1088f)), Struct_1(vec3<u32>(20802u, 4294967295u, 19616u), vec3<f32>(-168f, -104f, 1648f)), Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec3<f32>(2483f, 202f, 207f)), Struct_1(vec3<u32>(0u, 1u, 43171u), vec3<f32>(144f, -2361f, 437f)), Struct_1(vec3<u32>(11975u, 45775u, 1u), vec3<f32>(-486f, -339f, -972f)), Struct_1(vec3<u32>(0u, 39283u, 57292u), vec3<f32>(869f, -1292f, 142f)), Struct_1(vec3<u32>(35930u, 1u, 39790u), vec3<f32>(-605f, -780f, -1000f)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<f32>(-213f, -329f, 1112f)), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<f32>(340f, 225f, 352f)));

var<private> global1: Struct_1;

var<private> global2: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: vec4<u32>) -> i32 {
    var var_0 = 4294967295u;
    var_0 = arg_0;
    global1 = global0[_wgslsmith_index_u32(countOneBits(reverseBits(_wgslsmith_mult_u32(arg_3.x, countOneBits(~arg_3.x)))), 26u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(773f - global1.b.x)))));
    var var_2 = Struct_1(~(~arg_3.yyx), global1.b);
    return ~(i32(-1i) * -48712i);
}

fn func_2() -> vec3<f32> {
    let var_0 = 5672u;
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    global2 = func_3(max(1u, var_0), 11723u, global1.b.x, ~vec4<u32>(~(~1u), global1.a.x | ~u_input.a.x, 1u, countOneBits(abs(8405u))));
    var var_1 = global1.b.x;
    return vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f)), -2002f)), _wgslsmith_f_op_f32(-global1.b.x), global1.b.x);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<u32> {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 26u)];
    let var_1 = vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true))), false, true, !all(vec4<bool>(true, true, false, true)));
    var var_2 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(~8943u, 1u, _wgslsmith_mult_u32(~0u, ~var_0.a.x)), _wgslsmith_mult_vec3_u32(~abs(global1.a), global1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-546f, -417f, 1568f)), vec3<f32>(arg_3.x, -1391f, 967f))), _wgslsmith_f_op_vec3_f32(func_2()))));
    var_2 = Struct_1(arg_2.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b))), global1.b));
    global1 = Struct_1(arg_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)));
    return arg_2.a.yz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.a, global1.b);
    let var_1 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.b.x, global1.b.x), global1.b.x)), global1.b.x), -2147483647i, global0[_wgslsmith_index_u32(~global1.a.x, 26u)], global1.b) | ~vec2<u32>(~(~60031u), ~_wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(var_0.a.x, u_input.a.x, 1u)));
    var var_2 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(max(global1.a, global1.a), firstLeadingBit(vec3<u32>(u_input.a.x, 1u, global1.a.x))), var_0.a), var_0.b);
    var var_3 = select(vec4<bool>(false, all(select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(false, true, true, false))), select(~u_input.b == ~(-638i), false, true), true), select(vec4<bool>(true, _wgslsmith_f_op_f32(round(global1.b.x)) != _wgslsmith_f_op_f32(var_2.b.x + global1.b.x), true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), any(vec3<bool>(false, true, false))), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), false);
    let var_4 = global0[_wgslsmith_index_u32(~(~(~(~_wgslsmith_div_u32(0u, var_0.a.x)))), 26u)];
    var_3 = !(!(!select(vec4<bool>(true, var_3.x, var_3.x, true), !vec4<bool>(var_3.x, true, false, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(34260u << (global1.a.x % 32u), select(min(firstTrailingBit(u_input.a.x), firstLeadingBit(33268u)), firstTrailingBit(~2777u), all(!vec4<bool>(true, false, var_3.x, true)))), reverseBits(vec4<i32>(firstLeadingBit(u_input.c), i32(-1i) * -1i, 2147483647i, u_input.c) << (abs(vec4<u32>(67010u, 11456u, var_2.a.x, var_4.a.x)) % vec4<u32>(32u))));
}

