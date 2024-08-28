struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 15>;

var<private> global1: Struct_4;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<i32>(2147483647i, -1i, -1i, 1i)));

var<private> global3: array<u32, 12> = array<u32, 12>(0u, 51969u, 25298u, 4294967295u, 1u, 399u, 25216u, 4294967295u, 4294967295u, 56485u, 79459u, 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>) -> vec2<bool> {
    global1 = Struct_4(Struct_3(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(global2.a.a, vec4<i32>(0i, u_input.a, global1.a.a, -19789i), vec4<i32>(global1.a.b.a.x, u_input.d, -2147483647i, global2.a.a.x)), _wgslsmith_mod_vec4_i32(global2.a.a, vec4<i32>(0i, -21680i, u_input.a, global2.a.a.x))), 10938i), arg_0.d, arg_0.c, global1.a.d, vec4<i32>(u_input.d, i32(-1i) * -23413i, (i32(-1i) * -87709i) << (abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.c, 12u)], 12u)]) % 32u), -23580i)), !arg_0.c.xxz, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(~abs(select(9857u, 4294967295u, true)), 12u)], arg_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2170f - global1.d.x) * global1.d.x))));
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_mod_i32(firstLeadingBit(-max(reverseBits(arg_0.a), _wgslsmith_sub_i32(u_input.d, -18528i))), u_input.a);
    global2 = Struct_2(Struct_1(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(global1.a.e.x, 27295i, global1.a.e.x, u_input.d), vec4<i32>(global2.a.a.x, global2.a.a.x, 57475i, arg_0.e.x)))));
    global3 = array<u32, 12>();
    return global1.b.xx;
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    global0 = array<vec2<f32>, 15>();
    let var_0 = Struct_1(abs(abs(vec4<i32>(i32(-1i) * -23724i, abs(u_input.a), global2.a.a.x, _wgslsmith_clamp_i32(-12453i, global2.a.a.x, u_input.d)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(arg_0, arg_0)))))))));
    var var_2 = reverseBits(u_input.a);
    var var_3 = global1.b.x;
    return i32(-1i) * -var_0.a.x;
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_2) -> i32 {
    let var_0 = firstTrailingBit(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.c, 3158u, 38500u), 12u)]);
    let var_1 = u_input.b;
    global2 = arg_2;
    let var_2 = Struct_4(Struct_3(u_input.d, global1.a.d, vec4<bool>(true, false, true, !(true & arg_0)), global2.a, vec4<i32>(_wgslsmith_add_i32(-arg_2.a.a.x, arg_2.a.a.x), 0i, -_wgslsmith_sub_i32(global2.a.a.x, global2.a.a.x), func_3(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(var_0, 15u)])))), vec3<bool>(any(select(global1.a.c.yx, vec2<bool>(true, global1.a.c.x), select(global1.a.c.wy, global1.b.yy, vec2<bool>(false, global1.a.c.x)))), any(!global1.a.c.yw), any(!vec4<bool>(arg_0, false, arg_0, false))), global1.c, _wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.d.x - 1311f), _wgslsmith_f_op_f32(-1406f - global1.d.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(346f, 485f) + global1.d))), global1.a.c.x)));
    var var_3 = global2.a;
    return _wgslsmith_add_i32(_wgslsmith_clamp_i32(10665i, arg_2.a.a.x, firstTrailingBit(arg_1.x)) | global1.a.a, 1i) | ~arg_2.a.a.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: u32, arg_3: i32) -> f32 {
    let var_0 = func_2(arg_1.a, _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 21971u, 72663u, u_input.c.x), vec4<u32>(45472u, arg_2, 1u, 0u) | u_input.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(13354u, global3[_wgslsmith_index_u32(1u, 12u)], arg_1.c, 27723u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 46200u, 4294967295u, 1u), u_input.b)), ~u_input.c.x, ~_wgslsmith_div_u32(global1.c, arg_2))));
    let var_1 = arg_1.a;
    var var_2 = vec4<i32>(arg_3, 1i, 1i, ~_wgslsmith_dot_vec3_i32(var_1.d.a.xyz, vec3<i32>(firstLeadingBit(arg_1.a.d.a.x), ~arg_1.a.e.x, -2147483647i)));
    var var_3 = vec4<i32>(func_4(global1.b.x, vec3<i32>(func_3(_wgslsmith_f_op_vec2_f32(exp2(arg_1.d))), _wgslsmith_clamp_i32(25468i, max(arg_3, 14410i), -10332i), arg_0.x), Struct_2(Struct_1(vec4<i32>(2147483647i, 26080i, arg_1.a.a, u_input.d) | arg_1.a.d.a))), 1i, -2147483647i, (i32(-1i) * -1i) | ~_wgslsmith_dot_vec2_i32(~vec2<i32>(10453i, u_input.a), firstLeadingBit(vec2<i32>(2147483647i, 26549i))));
    var var_4 = _wgslsmith_mod_i32(0i, var_2.x);
    return -2429f;
}

fn func_5(arg_0: f32, arg_1: f32) -> u32 {
    var var_0 = Struct_3(~global1.a.d.a.x, Struct_1(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-565i, 2147483647i, -38397i, global1.a.a), global2.a.a))), global1.a.c, Struct_1(-vec4<i32>(u_input.d, 2147483647i, 0i, -27861i) ^ -global1.a.b.a), _wgslsmith_sub_vec4_i32(firstLeadingBit((global2.a.a ^ global1.a.d.a) >> (abs(u_input.b) % vec4<u32>(32u))), ~min(min(vec4<i32>(-1i, -27521i, 36236i, global1.a.a), vec4<i32>(-21528i, -52893i, global1.a.b.a.x, global2.a.a.x)), countOneBits(global1.a.d.a))));
    var var_1 = Struct_3(u_input.d, Struct_1(-global1.a.b.a), global1.a.c, global2.a, select(global1.a.e, vec4<i32>(u_input.d, firstTrailingBit(u_input.a), select(global2.a.a.x, global2.a.a.x, global1.a.c.x), global1.a.a ^ var_0.b.a.x), vec4<bool>(var_0.c.x, any(var_0.c.xz), true, all(select(var_0.c.zzy, var_0.c.zxz, global1.b)))));
    let var_2 = Struct_2(var_1.b);
    var var_3 = _wgslsmith_sub_vec4_i32(firstLeadingBit(reverseBits(global1.a.b.a & var_2.a.a)), select(global2.a.a, -vec4<i32>(var_2.a.a.x, -1i, -31158i, var_2.a.a.x) >> (max(vec4<u32>(global1.c, 1u, u_input.c.x, global3[_wgslsmith_index_u32(1u, 12u)]), max(vec4<u32>(0u, global1.c, 0u, 6955u), u_input.b)) % vec4<u32>(32u)), true));
    let var_4 = var_2;
    return ~_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(u_input.b.x, global1.c, 22722u)), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(~(~(86955u | u_input.c.x)) == _wgslsmith_mod_u32(global1.c, func_5(_wgslsmith_f_op_f32(func_1(global1.a.b.a.wy, Struct_4(Struct_3(global2.a.a.x, Struct_1(vec4<i32>(global2.a.a.x, 0i, global1.a.e.x, global1.a.e.x)), global1.a.c, Struct_1(vec4<i32>(global1.a.b.a.x, 18819i, global2.a.a.x, u_input.d)), global2.a.a), vec3<bool>(false, global1.b.x, global1.a.c.x), u_input.c.x, global1.d), 0u, u_input.d)), global1.d.x)), global1.a.c.x, global1.d.x < _wgslsmith_f_op_f32(-global1.d.x));
    let var_1 = 1i;
    let var_2 = var_0.x;
    let var_3 = 27456u;
    var var_4 = global1.a;
    var_0 = select(global1.b, select(!(!select(global1.b, vec3<bool>(var_4.c.x, true, global1.a.c.x), var_4.c.x)), var_4.c.wxx, !any(vec3<bool>(var_0.x, false, false)) | global1.a.c.x), var_4.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.d.x, -959f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 631f, 144f), vec3<f32>(global1.d.x, 210f, global1.d.x)))))))));
}

