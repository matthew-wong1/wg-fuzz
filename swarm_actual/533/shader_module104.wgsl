struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23>;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(i32(-2147483648), -44869i, -30956i, 1i), 677f);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    global1 = Struct_1(reverseBits(global1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.b))) + 215f), _wgslsmith_f_op_f32(ceil(-510f))));
    let var_0 = abs(vec3<i32>(_wgslsmith_div_i32(21054i, -reverseBits(u_input.a)), countOneBits(arg_0.a.x), min(-2147483647i, _wgslsmith_clamp_i32(-6394i, 2147483647i, 2147483647i)) << (firstTrailingBit(60612u) % 32u)));
    var var_1 = 4294967295u <= _wgslsmith_add_u32(u_input.b, u_input.b);
    global1 = arg_0;
    var var_2 = true;
    return ~(~0u);
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_1 {
    let var_0 = global1.b;
    let var_1 = vec4<u32>(u_input.b, (_wgslsmith_add_u32(~31958u, reverseBits(u_input.b)) >> (func_3(Struct_1(global1.a, global1.b), 0i) % 32u)) ^ u_input.b, func_3(Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, 0i), vec3<i32>(1i, -2147483647i, 2147483647i)), ~2147483647i, global1.a.x, global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -361f)), -u_input.a), arg_0);
    global0 = array<vec2<u32>, 23>();
    global1 = Struct_1(global1.a, global1.b);
    var var_2 = global1.b;
    return Struct_1(~_wgslsmith_mult_vec4_i32(global1.a, select(reverseBits(global1.a), vec4<i32>(1i, global1.a.x, global1.a.x, u_input.a), true)), -536f);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = func_2(reverseBits(5794u), true);
    var var_1 = Struct_1(_wgslsmith_add_vec4_i32(-_wgslsmith_div_vec4_i32(global1.a << (vec4<u32>(u_input.b, 1u, arg_2.x, 29086u) % vec4<u32>(32u)), var_0.a), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(30088i, var_0.a.x), _wgslsmith_mult_vec2_i32(arg_0.a.xz, vec2<i32>(var_0.a.x, arg_0.a.x))), -1i, var_0.a.x, -1i)), _wgslsmith_f_op_f32(f32(-1f) * -1883f));
    global1 = Struct_1(vec4<i32>(-36514i, ~(~(-2147483647i)), -_wgslsmith_dot_vec2_i32(global1.a.wz & vec2<i32>(u_input.a, global1.a.x), _wgslsmith_mult_vec2_i32(var_0.a.xz, vec2<i32>(arg_1.a.x, 0i))), -1i), -1000f);
    return func_2(53661u, true);
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = func_2(1394u, true);
    var var_1 = !select(select(vec4<bool>(true, any(vec3<bool>(true, true, false)), true, global1.b > 222f), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true))), false);
    let var_2 = global0[_wgslsmith_index_u32(0u, 23u)];
    global1 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - _wgslsmith_f_op_f32(-127f + _wgslsmith_f_op_f32(1000f - 110f))), global1.b)));
    let var_3 = arg_0;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_2.x, var_2.x, 4294967295u) << (_wgslsmith_clamp_vec3_u32(max(vec3<u32>(4294967295u, 4294967295u, 629u), vec3<u32>(43813u, var_2.x, var_2.x)), ~vec3<u32>(var_2.x, 0u, u_input.b), vec3<u32>(16402u, 1u, 75675u)) % vec3<u32>(32u)), ~(~(~vec3<u32>(1u, 31057u, 1u)))), firstTrailingBit(vec3<u32>(~firstLeadingBit(1u), 0u, abs(u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<i32>(~_wgslsmith_mult_i32(25786i, u_input.a), global1.a.x | global1.a.x, 2147483647i, -_wgslsmith_dot_vec3_i32(global1.a.yzz, vec3<i32>(0i, global1.a.x, global1.a.x) << (vec3<u32>(u_input.b, 53659u, 1u) % vec3<u32>(32u)))), global1.b);
    var var_1 = -(-var_0.a.zww & var_0.a.yyy);
    var var_2 = max(~select(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 66495u, 0u), vec3<u32>(u_input.b, 19106u, 0u)), vec3<u32>(~1812u, ~u_input.b, 0u), !(61281u > u_input.b)), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(81699u, 39944u, 0u, u_input.b), ~vec4<u32>(55720u, 4294967295u, 4294967295u, u_input.b)), ~1u, func_4(func_1(Struct_1(global1.a, 1812f), Struct_1(global1.a, 357f), vec3<u32>(4294967295u, 1u, u_input.b)))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(36980u, u_input.b, u_input.b), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(19384u, 20228u, u_input.b)), vec3<u32>(44768u, u_input.b, 5626u)), select(vec3<u32>(4294967295u, 22904u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(23271u, 27255u, 44424u), vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(4144u, 10149u, u_input.b)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -339f) + vec2<f32>(-268f, 153f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b, var_0.b), vec2<f32>(global1.b, 139f), vec2<bool>(true, false)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -556f) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b, 655f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -1000f) * vec2<f32>(global1.b, -986f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(830f, 1736f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b, var_0.b)))))));
    var var_4 = ~var_0.a.zx | (vec2<i32>(countOneBits(_wgslsmith_add_i32(-2147483647i, 18729i)), global1.a.x & var_1.x) & ~(~var_1.zx));
    let var_5 = func_2(_wgslsmith_add_u32(var_2.x, var_2.x), !(_wgslsmith_div_i32(1i, u_input.a << (var_2.x % 32u)) < -9879i));
    let x = u_input.a;
    s_output = StorageBuffer((i32(-1i) * -countOneBits(1i)) >> (reverseBits(u_input.b) % 32u), 515f, var_5.b);
}

