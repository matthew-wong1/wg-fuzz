struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32> = vec3<u32>(25087u, 0u, 18836u);

var<private> global2: array<vec3<bool>, 2>;

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(1000f)), Struct_2(Struct_1(721f)), Struct_2(Struct_1(2764f)), Struct_2(Struct_1(-1181f)), Struct_2(Struct_1(-1000f)), Struct_2(Struct_1(-149f)), Struct_2(Struct_1(-1000f)), Struct_2(Struct_1(-1000f)));

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec4<i32>) -> u32 {
    let var_0 = true;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.c.a.x)) + _wgslsmith_f_op_f32(-arg_0.c.a.x)), arg_0.b);
    let var_2 = arg_0.c;
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -244f)));
    var var_4 = arg_2.ww;
    return 4294967295u;
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = vec4<bool>(true, select(true, true, false), true, !(true & !all(vec2<bool>(true, false))));
    global1 = vec3<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, 0u, u_input.a), vec4<u32>(89740u, global1.x, global1.x, 0u))), ~global1.x, 0u) & vec3<u32>(53880u, _wgslsmith_sub_u32(~4516u, ~u_input.c), 30056u);
    global3 = array<Struct_2, 8>();
    global1 = vec3<u32>(18112u, func_3(Struct_4(-(~vec2<i32>(-2147483647i, 0i)), _wgslsmith_f_op_f32(f32(-1f) * -1635f), Struct_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(961f, 622f))), ~u_input.c)), ~countOneBits(firstLeadingBit(global1.x)), _wgslsmith_add_vec4_i32(~(~vec4<i32>(u_input.b, 38078i, arg_0, arg_0)), vec4<i32>(-2147483647i, 1i, -1i, -18389i) & -vec4<i32>(4738i, arg_0, -2147483647i, 9572i))), ~96921u);
    global1 = countOneBits(vec3<u32>(47687u | ~(0u << (u_input.c % 32u)), _wgslsmith_mod_u32(~(~30032u), ~_wgslsmith_add_u32(u_input.a, global1.x)), 52338u | global1.x));
    return Struct_3(vec2<f32>(-2003f, _wgslsmith_f_op_f32(ceil(370f))), max(4294967295u, func_3(Struct_4(countOneBits(vec2<i32>(arg_0, 0i)), -1410f, Struct_3(vec2<f32>(197f, 1000f), global1.x)), _wgslsmith_clamp_u32(0u, 1u, u_input.c), vec4<i32>(_wgslsmith_add_i32(u_input.b, -7499i), i32(-1i) * -1i, ~13354i, -2147483647i))));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: i32) -> vec2<f32> {
    global1 = vec3<u32>(func_3(Struct_4(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(arg_3, 0i)), firstLeadingBit(vec2<i32>(arg_3, -42885i))), arg_0, Struct_3(arg_2.a, reverseBits(arg_1))), ~0u, ~(~(vec4<i32>(0i, arg_3, -31871i, -12567i) >> (vec4<u32>(48657u, 5037u, arg_2.b, global1.x) % vec4<u32>(32u))))), 107762u, _wgslsmith_mult_u32(abs(_wgslsmith_sub_u32(arg_2.b, 47768u) >> (_wgslsmith_sub_u32(u_input.c, 48869u) % 32u)), func_2(abs(~14123i)).b));
    var var_0 = !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-780f * arg_2.a.x) * -873f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(835f - -545f))));
    var var_1 = Struct_2(Struct_1(-1000f));
    global4 = _wgslsmith_mod_i32(0i << (arg_2.b % 32u), abs(abs(-3547i))) >> (arg_1 % 32u);
    var var_2 = vec4<u32>(~23220u, 1u, _wgslsmith_div_u32(~abs(arg_1) ^ _wgslsmith_mult_u32(~global1.x, _wgslsmith_div_u32(u_input.a, arg_2.b)), 111970u), reverseBits(arg_1 >> (~(arg_1 & global1.x) % 32u)));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1374f - _wgslsmith_div_f32(-963f, 537f)), _wgslsmith_f_op_f32(ceil(-455f))), 663f));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    global3 = array<Struct_2, 8>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(-934f - 143f), 46677u, func_2(-10031i), 1i)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-277f, -2136f) - vec2<f32>(-677f, -681f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-292f, 1000f)) - _wgslsmith_f_op_vec2_f32(round(func_2(u_input.b).a)))), abs(_wgslsmith_mod_u32(func_2(firstTrailingBit(2147483647i)).b, 0u)));
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(~(u_input.b >> (0u % 32u)), -21191i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(17610i, u_input.b), vec2<i32>(-34775i, u_input.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(1i, u_input.b)))) & _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(u_input.b, 34647i, u_input.b)), ~(-vec3<i32>(26187i, u_input.b, u_input.b)), select(max(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(-302i, 1i, -2147483647i)), vec3<i32>(-40792i, u_input.b, u_input.b), all(vec3<bool>(arg_0, true, arg_0)))), reverseBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)), u_input.b, u_input.b << (15244u % 32u))) | vec3<i32>(1i, ~u_input.b, ~(~u_input.b)));
    global3 = array<Struct_2, 8>();
    var var_2 = u_input.c != global1.x;
    return StorageBuffer(1u, ~var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.b;
    global4 = reverseBits(1i);
    global2 = array<vec3<bool>, 2>();
    let x = u_input.a;
    s_output = func_1(all(global2[_wgslsmith_index_u32(~1u, 2u)]));
}

