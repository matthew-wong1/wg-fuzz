struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12>;

var<private> global1: array<Struct_1, 1>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(0u ^ ~countOneBits(u_input.a.x | 4294967295u), 12u)]);
    var var_1 = ~max(_wgslsmith_mod_vec2_u32(~(vec2<u32>(u_input.c, u_input.c) << (vec2<u32>(17673u, u_input.a.x) % vec2<u32>(32u))), ~max(u_input.a, u_input.a)), u_input.a);
    var var_2 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(min(countOneBits(vec4<u32>(u_input.a.x, 4294967295u, 9873u, u_input.c)), ~vec4<u32>(12374u, var_1.x, u_input.a.x, 0u)), ~select(vec4<u32>(4294967295u, var_1.x, 15338u, 98018u), vec4<u32>(u_input.a.x, var_1.x, 1u, 1u), false)), ~vec4<u32>(1u, 0u, select(u_input.a.x, var_1.x, true), u_input.c)), min(4294967295u, firstLeadingBit(4294967295u)), (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(111110u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, var_1.x, var_1.x)), abs(vec3<u32>(u_input.c, 49998u, var_1.x))) << (_wgslsmith_add_u32(447u, abs(0u)) % 32u)) >> (u_input.a.x % 32u));
    let var_3 = var_1.x << (~(~(~var_1.x)) % 32u);
    global1 = array<Struct_1, 1>();
    return vec4<bool>(any(!vec2<bool>(all(vec4<bool>(true, true, true, false)), arg_0.x < 2147483647i)), true & any(vec3<bool>(true, true, true)), u_input.b <= min(-1i, _wgslsmith_div_i32(-2147483647i | u_input.b, ~0i)), true);
}

fn func_4(arg_0: vec4<bool>) -> f32 {
    let var_0 = !arg_0.zz;
    var var_1 = global1[_wgslsmith_index_u32(~1u, 1u)];
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a))));
    var var_3 = select(~(~abs(vec3<u32>(u_input.c, u_input.c, u_input.c) ^ vec3<u32>(u_input.c, 4294967295u, 51156u))), ~(~vec3<u32>(_wgslsmith_div_u32(11987u, u_input.c), min(9906u, 50264u), abs(u_input.a.x))), true);
    var var_4 = Struct_1(1311f);
    return var_1.a;
}

fn func_2(arg_0: u32) -> u32 {
    global1 = array<Struct_1, 1>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-375f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_3(vec2<i32>(u_input.b, 8638i), vec2<f32>(1506f, 364f), 1373f))), -105f)));
    global0 = array<vec3<f32>, 12>();
    let var_1 = !all(select(vec4<bool>(true, true, true, true), !func_3(vec2<i32>(5492i, u_input.b), vec2<f32>(var_0, 897f), -172f), vec4<bool>(func_3(vec2<i32>(-2147483647i, u_input.b), vec2<f32>(var_0, var_0), -1432f).x, true, all(vec4<bool>(true, true, false, false)), true)));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~arg_0, ~((1u << (u_input.c % 32u)) | 4294967295u), arg_0), 1u)];
    return u_input.c;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = select(_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.b, -u_input.b), max(~vec2<i32>(3588i, -2147483647i), ~vec2<i32>(u_input.b, 49948i)) << (vec2<u32>(1u, func_2(u_input.a.x)) % vec2<u32>(32u))), -(~vec2<i32>(_wgslsmith_clamp_i32(-1i, -19661i, -2147483647i), _wgslsmith_mult_i32(u_input.b, u_input.b))), true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(132f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-428f - 562f) + -789f))));
    var var_2 = select(vec4<u32>((59912u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 65358u, 1u), vec4<u32>(u_input.c, 1u, u_input.c, u_input.a.x))) | ~select(u_input.c, 63442u, true), ~u_input.a.x, ~u_input.c, 19577u), ~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, 4294967295u), ~vec4<u32>(53304u, 28531u, u_input.a.x, u_input.c)) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, 267u, u_input.a.x), ~vec4<u32>(u_input.c, 21623u, 1u, 53360u))), ~_wgslsmith_clamp_u32(33355u, ~9342u, 14422u) == (u_input.c | 4294967295u));
    var var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(27037u), 1u)];
    global0 = array<vec3<f32>, 12>();
    return Struct_1(-120f);
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_mult_vec4_i32(abs(_wgslsmith_div_vec4_i32(~vec4<i32>(-20690i, u_input.b, -15821i, -1i), abs(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)))), -vec4<i32>(abs(u_input.b), u_input.b, 30758i, u_input.b)) ^ vec4<i32>(_wgslsmith_mult_i32(u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(-2147483647i, u_input.b, u_input.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(-46913i, u_input.b, u_input.b), vec3<i32>(2147483647i, 17669i, u_input.b)))), u_input.b, -u_input.b, 64858i);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 1u)];
    let var_1 = 1u;
    var var_2 = global0[_wgslsmith_index_u32(var_1, 12u)];
    var_2 = global0[_wgslsmith_index_u32(var_1, 12u)];
    global0 = array<vec3<f32>, 12>();
    global0 = array<vec3<f32>, 12>();
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 12u)]) - _wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(1u, 12u)]))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(func_5(func_1(vec4<bool>(true, true, false, false), vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(f32(-1f) * -937f), var_0.a), global0[_wgslsmith_index_u32(4294967295u, 12u)])));
    let var_3 = func_1(!(!func_3(vec2<i32>(u_input.b, u_input.b), _wgslsmith_f_op_vec2_f32(select(var_2.xx, vec2<f32>(489f, var_0.a), false)), var_0.a)), select(vec3<bool>(true, true, true), vec3<bool>(func_3(-vec2<i32>(u_input.b, u_input.b), vec2<f32>(var_0.a, -952f), _wgslsmith_f_op_f32(func_4(vec4<bool>(true, false, false, true)))).x, u_input.a.x > _wgslsmith_add_u32(0u, 2367u), true), vec3<bool>(!select(false, false, true), !select(true, false, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(29266u << (var_1 % 32u)), (reverseBits(var_1) ^ 1u) >> (var_1 % 32u), true), vec4<u32>(countOneBits(~90378u), 22897u, 57612u, var_1) << ((reverseBits(vec4<u32>(u_input.c, u_input.c, 4294967295u, 0u)) ^ vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1), u_input.a), ~var_1)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~1u, 12u)]));
}

