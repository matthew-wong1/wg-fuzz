struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 1i, -39495i, -38517i);

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global2: u32;

var<private> global3: array<vec4<bool>, 21>;

var<private> global4: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    let var_0 = true | global1.x;
    global0 = ~select(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.c, -10188i, 0i, global0.x), vec4<i32>(arg_2.c, arg_0.c, 46177i, arg_0.c))) | ~min(vec4<i32>(9380i, arg_0.c, -32468i, arg_0.c), vec4<i32>(global0.x, arg_0.c, 10087i, -50927i)), ~abs(vec4<i32>(-1i, 2147483647i, -15934i, arg_0.c) >> (vec4<u32>(1u, arg_2.b.x, arg_0.b.x, 0u) % vec4<u32>(32u))), !(1429f != arg_2.a.x));
    let var_1 = Struct_2(firstLeadingBit(_wgslsmith_mod_vec3_i32(global0.xzx >> (vec3<u32>(arg_0.b.x, 4312u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(1i, abs(-1i), ~arg_0.c))));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-731f, arg_0.a.x), -2013f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -717f)))), arg_0.b, 1i);
    global2 = 4294967295u;
    return -843f;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<f32> {
    let var_0 = vec4<bool>(true, global1.x, !all(vec4<bool>(true, true, global1.x, global1.x)), false);
    global3 = array<vec4<bool>, 21>();
    var var_1 = arg_0;
    global2 = 1u;
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-754f)) * -855f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_1.x)))), all(global1.wyy))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.a.x)), 1344f)));
    return _wgslsmith_div_vec2_f32(arg_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(arg_0, vec2<bool>(true, var_0.x), Struct_1(vec2<f32>(arg_0.a.x, -2126f), var_1.b, 2147483647i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x))))));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(arg_2.b.x, ~4294967295u), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(arg_2.b.x, 1u, _wgslsmith_div_u32(2050u, u_input.a))), _wgslsmith_div_vec3_u32(vec3<u32>(8559u, u_input.a, 4294967295u) | firstLeadingBit(vec3<u32>(1u, arg_0, 4294967295u)), vec3<u32>(~35122u, 4294967295u, 21262u << (u_input.a % 32u)))), 1u, arg_2.b.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(round(arg_2.a)), vec2<u32>(min(0u, 1u), reverseBits(u_input.a)), global0.x);
    var var_2 = vec2<bool>(global1.x, (any(global3[_wgslsmith_index_u32(max(0u, 41980u), 21u)]) | !(u_input.a == u_input.a)) || (_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-46477i, arg_2.c), i32(-1i) * -25226i, ~global0.x) > (-38433i >> (_wgslsmith_clamp_u32(360u, 4294967295u, 1u) % 32u))));
    global2 = 0u;
    let var_3 = Struct_1(vec2<f32>(arg_2.a.x, _wgslsmith_div_f32(arg_2.a.x, -830f)), var_0.xw, -arg_2.c);
    return Struct_2(~(~vec3<i32>(abs(-8135i), i32(-1i) * -1i, i32(-1i) * -20165i)));
}

fn func_1() -> Struct_1 {
    var var_0 = ~(~u_input.a);
    global4 = _wgslsmith_f_op_f32(-182f - 406f);
    var var_1 = ~0u;
    let var_2 = func_4(27098u, countOneBits(~global0.x), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-339f, -186f) + vec2<f32>(-780f, 410f)))) - _wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec2<f32>(-177f, -1231f), vec2<u32>(20587u, 1u), global0.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-890f, -1000f, 1926f, 327f)))))), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a, 48621u), ~u_input.a), min(-global0.x, i32(-1i) * -24012i)));
    var_0 = u_input.a;
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1144f, _wgslsmith_f_op_f32(min(314f, _wgslsmith_f_op_f32(595f + 385f)))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-723f, -476f)))), reverseBits(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), select(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a), global1.x))), _wgslsmith_clamp_i32(var_2.a.x, global0.x, 34448i) >> (reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 44449u, 1u, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)) & 1u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!(!vec2<bool>(global1.x && global1.x, global1.x)));
    global2 = 1u;
    var var_1 = _wgslsmith_mult_vec3_i32(countOneBits(-select(~vec3<i32>(-2147483647i, -40952i, global0.x), global0.wwx, global1.xzw)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(countOneBits(26138i), _wgslsmith_add_i32(global0.x, -2147483647i)), 2147483647i), global0.x << ((_wgslsmith_sub_u32(31425u, u_input.a) >> ((u_input.a ^ u_input.a) % 32u)) % 32u), 1i));
    var var_2 = func_1();
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(2147483647i, var_2.c) >> (_wgslsmith_sub_u32(firstTrailingBit(~u_input.a), select(1u << (u_input.a % 32u), 1u, true)) % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.a, 63913u, 4294967295u, 17790u) | vec4<u32>(37894u, u_input.a, u_input.a, u_input.a)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_2.b.x, 86345u, 44789u), vec4<u32>(u_input.a, 1u, 0u, 0u)), vec4<u32>(var_2.b.x, var_2.b.x, var_2.b.x, 97740u))), abs(~vec4<u32>(33600u, 17331u, 0u, var_2.b.x) | ~vec4<u32>(0u, 1u, 5016u, u_input.a))), ~var_2.b.x, global0.xwx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-743f * var_2.a.x))) * 1099f) + _wgslsmith_f_op_f32(-var_2.a.x)));
}

