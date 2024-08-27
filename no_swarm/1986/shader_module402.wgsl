struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec4<f32>(469f, 114f, 1000f, -1000f)), Struct_3(vec4<f32>(-587f, 1000f, -987f, 401f)), Struct_3(vec4<f32>(402f, -185f, -1363f, -458f)), Struct_3(vec4<f32>(-174f, -229f, 447f, 1094f)), Struct_3(vec4<f32>(796f, -1712f, 1173f, -706f)), Struct_3(vec4<f32>(2480f, -391f, -1135f, -1286f)), Struct_3(vec4<f32>(-1709f, -174f, 639f, 562f)), Struct_3(vec4<f32>(-612f, -214f, -1000f, -687f)), Struct_3(vec4<f32>(-458f, -1000f, -487f, -1432f)), Struct_3(vec4<f32>(1000f, -237f, 814f, 656f)), Struct_3(vec4<f32>(102f, 469f, 2029f, -1000f)), Struct_3(vec4<f32>(-395f, -425f, 1003f, 607f)), Struct_3(vec4<f32>(-317f, 1000f, -1273f, -498f)), Struct_3(vec4<f32>(-601f, 1611f, 397f, -825f)), Struct_3(vec4<f32>(465f, 1000f, -117f, 186f)), Struct_3(vec4<f32>(1684f, 2302f, 1608f, -579f)), Struct_3(vec4<f32>(163f, -1071f, -1058f, 938f)));

var<private> global3: array<Struct_2, 27>;

var<private> global4: i32 = -1i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: i32) -> u32 {
    var var_0 = vec3<f32>(global1.a.x, global1.a.x, _wgslsmith_f_op_f32(max(global1.a.x, _wgslsmith_f_op_f32(-global1.a.x))));
    var var_1 = -1713f;
    var var_2 = -_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, abs(u_input.b), abs(0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, arg_0, -2147483647i), vec3<i32>(arg_1 >> (u_input.a % 32u), arg_0 & 52095i, _wgslsmith_sub_i32(0i, arg_0))));
    var var_3 = global3[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 27u)];
    var var_4 = Struct_1(~var_3.a.a);
    return 107199u;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec2<bool>) -> Struct_2 {
    global1 = global2[_wgslsmith_index_u32(~(~(~_wgslsmith_div_u32(4294967295u, u_input.a)) | ~(~u_input.a)), 17u)];
    global4 = u_input.b;
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(123f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1503f + global0.x)), 890f))));
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 34821u), countOneBits(vec2<u32>(73740u, u_input.a)))), vec2<u32>(abs(28333u), _wgslsmith_clamp_u32(u_input.a, reverseBits(u_input.a), u_input.a))) << (abs(~vec2<u32>(u_input.a, ~14942u)) % vec2<u32>(32u));
    return Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 1563i, 1i) & ~vec3<i32>(1i, arg_0, -2147483647i), vec3<i32>(~arg_0, _wgslsmith_clamp_i32(6096i, arg_0, arg_1), -2147483647i))), !(true | (_wgslsmith_f_op_f32(-global1.a.x) >= -635f)), Struct_1(-(~_wgslsmith_mult_vec3_i32(vec3<i32>(5963i, u_input.b, arg_0), vec3<i32>(arg_0, 47545i, arg_0)))), _wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(81267u, 38389u, 1u, 1u), vec4<u32>(51194u, u_input.a, 1u, var_0.x)), vec4<u32>(func_3(1i, reverseBits(-1i)), firstTrailingBit(~var_0.x), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 5766u, u_input.a), vec3<u32>(23289u, 0u, u_input.a))))));
}

fn func_1() -> bool {
    global4 = ~(abs(u_input.b) ^ _wgslsmith_add_i32(i32(-1i) * -2147483647i, u_input.b << (1u % 32u))) >> (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u);
    var var_0 = func_2(firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_div_i32(abs(66788i), -17588i), 9445i)), ~_wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, u_input.b) & firstTrailingBit(u_input.b), min(u_input.b, min(-1i, u_input.b))), select(vec2<bool>(true, u_input.b < _wgslsmith_mod_i32(u_input.b, u_input.b)), vec2<bool>(true & any(vec2<bool>(false, false)), select(true, any(vec3<bool>(false, false, false)), true)), true));
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(-global1.a.wy);
    global4 = -1i;
    return u_input.b < firstTrailingBit(-2490i);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_2) -> bool {
    var var_0 = -_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.b, arg_2.c.a.x), vec4<i32>(u_input.b, u_input.b, arg_2.a.a.x, abs(u_input.b))), countOneBits(_wgslsmith_div_vec4_i32(~vec4<i32>(arg_2.c.a.x, u_input.b, 2147483647i, arg_2.a.a.x), ~vec4<i32>(-2147483647i, arg_2.c.a.x, arg_2.a.a.x, u_input.b))));
    var var_1 = (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a.x)) * global1.a.x))) != -1918f) && arg_2.b;
    var_0 = vec4<i32>(abs(_wgslsmith_dot_vec2_i32(arg_2.a.a.yz, ~var_0.yx)), arg_2.a.a.x, firstLeadingBit(-12721i), -max(_wgslsmith_mult_i32(var_0.x, ~var_0.x), 0i));
    var var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(min(var_0.zwy, _wgslsmith_mod_vec3_i32(arg_2.c.a, ~arg_2.c.a)), var_0.www), -_wgslsmith_mult_i32(-min(1i, arg_2.c.a.x), u_input.b));
    var var_3 = arg_2.a;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 682f;
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -507f) - _wgslsmith_div_f32(global0.x, global1.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - _wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(-432f, global1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -760f)), var_0));
    var var_2 = func_4(select(!vec2<bool>(func_1(), false), vec2<bool>(true, true), false), !select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), any(vec2<bool>(false, true)))), func_2(1i, ~2147483647i, select(vec2<bool>(u_input.a <= u_input.a, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false)), true)));
    let var_3 = global2[_wgslsmith_index_u32(~29568u | (~(~11269u) >> (func_3(u_input.b, 23307i) % 32u)), 17u)];
    var var_4 = vec2<bool>(true, ~min(select(u_input.a, u_input.a, true), ~1u) != (~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a) & 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(762f, global0.x, 331f > global0.x)))), 1543f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-838f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))) - var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - 660f)) - 2934f) - 1486f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global1.a)) + _wgslsmith_div_vec4_f32(var_3.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1405f, -951f, -538f, var_3.a.x)))));
}

