struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, i32(-2147483648), 0i);

var<private> global1: bool;

var<private> global2: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(0i, 59804i, i32(-2147483648)), vec3<i32>(2147483647i, -1i, -7022i), vec3<i32>(1i, 22362i, 2147483647i), vec3<i32>(-86962i, 0i, -1i), vec3<i32>(18426i, 0i, -1i), vec3<i32>(25288i, 70178i, -17874i), vec3<i32>(-8476i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, 11831i, -1i), vec3<i32>(-49046i, 1i, -1i), vec3<i32>(-1607i, 2147483647i, 11932i), vec3<i32>(0i, -16202i, 1i), vec3<i32>(3462i, 23603i, -13059i), vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(47102i, 2147483647i, 1i), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<i32>(9168i, 1i, i32(-2147483648)), vec3<i32>(1i, 0i, -2845i), vec3<i32>(51597i, -50125i, -10549i), vec3<i32>(i32(-2147483648), -1i, 20021i), vec3<i32>(2147483647i, -37373i, i32(-2147483648)), vec3<i32>(-65143i, 58451i, 1i), vec3<i32>(0i, -18583i, -27178i), vec3<i32>(1i, 0i, 6085i), vec3<i32>(2147483647i, 47881i, 2147483647i), vec3<i32>(-53041i, 2147483647i, -28364i), vec3<i32>(62674i, -8494i, 25069i), vec3<i32>(i32(-2147483648), -4354i, -9874i), vec3<i32>(-19687i, 13057i, 12352i), vec3<i32>(0i, 2147483647i, 2147483647i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    let var_0 = !select(!(!select(vec4<bool>(true, arg_0.x, true, global0.a), vec4<bool>(global0.a, false, global0.a, global0.a), vec4<bool>(arg_0.x, true, false, false))), vec4<bool>(false, true, any(vec2<bool>(global0.a, false)), any(select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(global0.a, true, true), vec3<bool>(true, true, true)))), !vec4<bool>(true, arg_0.x, global0.a, true));
    global0 = Struct_1(all(select(select(var_0, select(var_0, var_0, vec4<bool>(true, true, arg_0.x, arg_0.x)), true), !var_0, !vec4<bool>(true, var_0.x, true, false))), _wgslsmith_div_i32(-(-global0.c ^ ~(-1i)), -global0.c << (~_wgslsmith_sub_u32(u_input.a, u_input.a) % 32u)), select(~(~0i), _wgslsmith_div_i32(global0.c, ~global0.c), false && any(!var_0)));
    let var_1 = 293f;
    let var_2 = Struct_1(true || any(var_0), ~27611i, global0.b);
    let var_3 = max(_wgslsmith_mod_i32(min(var_2.b, -1i), select(global0.c & 0i, -1i, true)) >> (u_input.a % 32u), countOneBits(~var_2.c >> (u_input.a % 32u)));
    return u_input.a >= (u_input.a >> (abs(countOneBits(u_input.a)) % 32u));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<bool>, arg_3: vec2<bool>) -> i32 {
    var var_0 = Struct_1(select(func_3(!select(arg_3, vec2<bool>(false, false), global0.a)), !(!arg_2.x), global0.a), _wgslsmith_mult_i32(min(-39011i, abs(global0.c)), global0.b | _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(global0.c, global0.c, global0.b)), _wgslsmith_clamp_vec3_i32(global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(u_input.a, 29u)], global2[_wgslsmith_index_u32(12302u, 29u)]))), 18089i | (global0.b & ~1i));
    global1 = ((-2147483647i & ~_wgslsmith_div_i32(var_0.b, 9418i)) < _wgslsmith_dot_vec4_i32(vec4<i32>(max(var_0.b, 0i), var_0.b, ~var_0.c, global0.b), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b, var_0.b, 0i, -30491i), vec4<i32>(var_0.c, var_0.b, -2147483647i, var_0.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(-26513i, global0.b, global0.b, -2147483647i), vec4<i32>(-9685i, var_0.c, global0.c, -1i))))) || false;
    global2 = array<vec3<i32>, 29>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1152f + arg_1) + -953f))));
    var var_2 = arg_2.x;
    return -7412i;
}

fn func_4(arg_0: vec3<i32>, arg_1: bool) -> Struct_1 {
    let var_0 = ~abs(~u_input.a);
    let var_1 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(2147483647i, arg_0.x, global0.c), countOneBits(global2[_wgslsmith_index_u32(var_0, 29u)])), arg_0, vec3<i32>(min(-13121i, arg_0.x), -45301i, min(_wgslsmith_clamp_i32(arg_0.x, arg_0.x, arg_0.x), ~global0.c)));
    global2 = array<vec3<i32>, 29>();
    global1 = true;
    global0 = Struct_1(!(!(!select(global0.a, arg_1, true))), reverseBits(1i) & (select(-18923i, ~(-37264i), true) | 1i), _wgslsmith_clamp_i32(~1i, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, var_1.x, -54274i, 35404i), _wgslsmith_mod_vec4_i32(vec4<i32>(-20740i, global0.b, arg_0.x, -10615i) | vec4<i32>(-2147483647i, arg_0.x, arg_0.x, -1i), vec4<i32>(var_1.x, 1i, 2147483647i, -52109i) & vec4<i32>(2147483647i, -70279i, -27098i, 30703i)))));
    return Struct_1(true, 0i, var_1.x);
}

fn func_1() -> f32 {
    var var_0 = func_4(-_wgslsmith_div_vec3_i32(global2[_wgslsmith_index_u32(~(~u_input.a), 29u)], _wgslsmith_add_vec3_i32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 29u)], -vec3<i32>(38792i, -2588i, global0.b))), (-(global0.b | global0.c) | func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1534f, 408f, -348f, -680f)), 1000f, select(vec3<bool>(true, global0.a, global0.a), vec3<bool>(true, global0.a, true), vec3<bool>(global0.a, false, global0.a)), !vec2<bool>(true, global0.a))) < ~global0.b);
    var var_1 = vec2<i32>(_wgslsmith_div_i32(~1i, global0.b), func_4(global2[_wgslsmith_index_u32(4294967295u >> (~u_input.a % 32u), 29u)] | -global2[_wgslsmith_index_u32(~u_input.a, 29u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-776f, 722f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2658f)) * _wgslsmith_f_op_f32(ceil(-566f)))).c);
    let var_2 = var_1.x;
    global0 = func_4(global2[_wgslsmith_index_u32(~min(abs(10269u), 43624u), 29u)], any(vec2<bool>(true, _wgslsmith_f_op_f32(step(-488f, -787f)) <= -2166f)));
    global1 = any(vec2<bool>((~global0.b ^ _wgslsmith_add_i32(global0.c, global0.c)) != var_0.c, var_0.a || all(!vec4<bool>(var_0.a, true, var_0.a, true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1436f + -1000f))) - _wgslsmith_f_op_f32(f32(-1f) * -297f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1937f))), -498f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(689f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -1284f) + 276f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-967f, -304f, 167f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1115f, 254f, 954f) - vec3<f32>(1133f, -2412f, -362f)))), vec3<f32>(454f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(sign(111f))), !select(vec3<bool>(true, global0.a, true), vec3<bool>(global0.a, false, global0.a), false))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(167f, -259f, -997f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-278f, -1000f, 1236f) * vec3<f32>(1777f, 163f, 774f)))))));
    global0 = func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(select(global0.c | 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c, -1i), vec2<i32>(global0.c, global0.b)), true), global0.c, ~max(global0.c, -1i)), -global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u)), 29u)] >> (~vec3<u32>(31545u, u_input.a, 1u) % vec3<u32>(32u))), false);
    global2 = array<vec3<i32>, 29>();
    global1 = global0.a;
    let var_1 = !func_4(global2[_wgslsmith_index_u32(4294967295u, 29u)], global0.a).a;
    global2 = array<vec3<i32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, -27393i << (u_input.a % 32u), -21885i));
}

