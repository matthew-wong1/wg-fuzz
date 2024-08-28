struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(i32(-2147483648), -9787i, i32(-2147483648), -20492i, -49527i, 28557i, 2147483647i, 98466i, 2147483647i, 54984i, 1i, 1i, -1i, i32(-2147483648), -1i, 1i, -1i, 72400i, 14830i, 1i, 1i, 0i, 0i, 2147483647i, -1i, 0i);

var<private> global1: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(23800u, 1u, 4294967295u, 15227u), vec4<u32>(1u, 34404u, 40709u, 15881u), vec4<u32>(26562u, 0u, 6135u, 4580u), vec4<u32>(29887u, 55911u, 14740u, 4294967295u), vec4<u32>(0u, 7848u, 0u, 0u), vec4<u32>(0u, 13708u, 4294967295u, 73454u), vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(40693u, 2906u, 34904u, 19096u), vec4<u32>(0u, 55535u, 59476u, 8396u), vec4<u32>(78329u, 1u, 99143u, 1u), vec4<u32>(43250u, 24728u, 1u, 4294967295u), vec4<u32>(17004u, 19676u, 4294967295u, 1u), vec4<u32>(41742u, 0u, 61295u, 66370u), vec4<u32>(4294967295u, 9423u, 0u, 0u), vec4<u32>(51480u, 25795u, 7012u, 1u), vec4<u32>(9520u, 31155u, 0u, 1u), vec4<u32>(0u, 22853u, 3453u, 4294967295u), vec4<u32>(23448u, 5503u, 1846u, 4589u), vec4<u32>(1788u, 74703u, 9301u, 1u), vec4<u32>(0u, 60632u, 0u, 16401u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 77u), vec4<u32>(0u, 1u, 1u, 14629u), vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(4294967295u, 1u, 578u, 98334u), vec4<u32>(4294967295u, 12131u, 17663u, 0u), vec4<u32>(27132u, 60706u, 0u, 91536u), vec4<u32>(1u, 1u, 54242u, 0u), vec4<u32>(0u, 87819u, 0u, 0u), vec4<u32>(16240u, 4294967295u, 57111u, 17802u), vec4<u32>(48337u, 0u, 1u, 13157u), vec4<u32>(1u, 42759u, 54087u, 46596u), vec4<u32>(4294967295u, 23456u, 94733u, 0u));

var<private> global2: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    let var_0 = arg_2;
    var var_1 = select(!select(arg_3.zz, !(!vec2<bool>(false, arg_3.x)), arg_1.x), arg_3.yx, all(!arg_1));
    global1 = array<vec4<u32>, 32>();
    var var_2 = var_0;
    let var_3 = -1892f;
    return arg_0;
}

fn func_3(arg_0: bool) -> u32 {
    global0 = array<i32, 26>();
    let var_0 = abs(_wgslsmith_clamp_i32(-u_input.b.x, global0[_wgslsmith_index_u32(1u, 26u)] >> (~_wgslsmith_mod_u32(0u, 1u) % 32u), 2096i));
    return ~(~(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 4294967295u), 1u) & _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(0u, 32u)], ~global1[_wgslsmith_index_u32(4294967295u, 32u)])));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> u32 {
    global2 = 1f;
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(773f, -809f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(882f, -244f)))))) * vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(901f * 1394f), -162f) - vec2<f32>(_wgslsmith_f_op_f32(sign(-1170f)), _wgslsmith_f_op_f32(floor(876f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(399f, -1188f))) - _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 3156f), vec2<f32>(2258f, -692f))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -615f))), var_0.x)));
    let var_2 = Struct_1(0u, vec4<u32>(abs(_wgslsmith_div_u32(0u, 1u)), 24903u, 4294967295u, ~(~1u)) | global1[_wgslsmith_index_u32(22943u, 32u)]);
    var var_3 = ~vec4<u32>(4294967295u, var_2.a, var_2.b.x, var_2.b.x);
    return func_3(!arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(max(func_2(vec2<bool>(false, true), func_1(global0[_wgslsmith_index_u32(1u, 26u)], vec4<bool>(false, false, true, true), Struct_1(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<bool>(true, true, false)) ^ u_input.b.x), min(_wgslsmith_sub_u32(56223u, func_2(vec2<bool>(false, true), u_input.b.x)), 1u)), 0u);
    var var_1 = -139f;
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(func_2(vec2<bool>(true, false), -20848i), firstLeadingBit(1u) >> (abs(0u) % 32u)), 26u)] >> (~(~14545u) % 32u);
    let var_3 = Struct_1(~17373u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(~global1[_wgslsmith_index_u32(1794u, 32u)]), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(39964u, 1u), 32u)]), 32u)] | _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(0u, 33043u, 1u, 147630u) & global1[_wgslsmith_index_u32(6080u, 32u)]), ~(~vec4<u32>(1u, 11741u, 1u, 54449u))));
    let var_4 = abs(~u_input.b.x);
    var_0 = ~40062u;
    let var_5 = vec2<i32>(u_input.b.x, var_4);
    var var_6 = Struct_1(abs(0u), var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1213f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-425f, 273f), 1402f)))), vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(2177i, u_input.b.x, 0i, -52350i), vec4<i32>(var_4, 54502i, global0[_wgslsmith_index_u32(var_3.a, 26u)], u_input.b.x))), global0[_wgslsmith_index_u32(~var_3.b.x, 26u)] | _wgslsmith_div_i32(global0[_wgslsmith_index_u32(var_6.a, 26u)], global0[_wgslsmith_index_u32(var_3.b.x, 26u)]), -14371i) | vec3<i32>(-1i, -_wgslsmith_mult_i32(var_4, u_input.b.x), var_5.x));
}

