struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: array<Struct_3, 26>;

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), -48370i);

var<private> global3: array<vec4<bool>, 12>;

var<private> global4: vec4<f32> = vec4<f32>(-408f, -980f, 1126f, 528f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1) -> i32 {
    global3 = array<vec4<bool>, 12>();
    var var_0 = (_wgslsmith_mod_vec3_i32(vec3<i32>(-global2.x, u_input.a, _wgslsmith_mod_i32(u_input.a, 2147483647i)), -select(vec3<i32>(-69954i, u_input.b, u_input.b), vec3<i32>(-15630i, u_input.b, 33651i), arg_1.x)) << (vec3<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 21u)], ~4294967295u), ~0u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], u_input.d, 1u)), countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(arg_0, 21u)], 0u, u_input.d)))) % vec3<u32>(32u))) ^ select(min(select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -7354i, 27135i), vec3<i32>(u_input.b, 21054i, u_input.b)), vec3<i32>(2147483647i, -31869i, global2.x), global0[_wgslsmith_index_u32(79034u, 21u)] >= arg_0), vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global2.x, global2.x, 2147483647i), vec4<i32>(global2.x, 1i, u_input.a, global2.x)), 0i)), vec3<i32>(global2.x, global2.x ^ 23963i, -2147483647i) | -(~vec3<i32>(u_input.a, -18898i, u_input.a)), !vec3<bool>(arg_2.a, arg_1.x, all(vec2<bool>(false, false))));
    let var_1 = u_input.d;
    let var_2 = firstTrailingBit(~_wgslsmith_sub_i32(-_wgslsmith_add_i32(global2.x, u_input.a), -_wgslsmith_dot_vec2_i32(var_0.zx, vec2<i32>(global2.x, -84736i))));
    let var_3 = Struct_5(_wgslsmith_clamp_vec2_i32(min(var_0.xz, vec2<i32>(min(var_2, global2.x), 8191i ^ u_input.a)), -var_0.yy, var_0.yx));
    return _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-abs(-vec4<i32>(-3791i, global2.x, global2.x, var_3.a.x)), vec4<i32>(21114i, firstLeadingBit(-6050i), _wgslsmith_clamp_i32(2147483647i, -2147483647i, 2147483647i), var_3.a.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(23912u, 54414u, 4294967295u, 34532u), abs(vec4<u32>(39947u, 33520u, var_1, 0u))) % vec4<u32>(32u))), _wgslsmith_mod_i32(~u_input.b >> (var_1 % 32u), var_0.x) << (1u % 32u));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_add_i32(max(~func_3(u_input.d, vec3<bool>(false, true, true), Struct_1(false)) ^ 28441i, _wgslsmith_add_i32(reverseBits(u_input.a), u_input.a << (~47556u % 32u))), abs(20431i));
    global0 = array<u32, 21>();
    let var_1 = true | any(global3[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 25616u), 21u)]) | _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(75920u, global0[_wgslsmith_index_u32(16177u, 21u)], u_input.d), vec3<u32>(84901u, global0[_wgslsmith_index_u32(25658u, 21u)], 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], 3218u, 85257u), vec3<u32>(62262u, u_input.c, global0[_wgslsmith_index_u32(u_input.d, 21u)]))), 12u)]);
    let var_2 = Struct_4(!(!(!vec2<bool>(var_1, var_1))), Struct_1(false), global1[_wgslsmith_index_u32(9215u, 26u)]);
    var var_3 = vec3<i32>(u_input.b ^ _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_2.c.b.b), abs(vec2<i32>(global2.x, var_2.c.b.b)))), firstTrailingBit(u_input.a), ~(~(-(0i ^ u_input.a))));
    return _wgslsmith_f_op_f32(trunc(596f));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> vec2<i32> {
    global3 = array<vec4<bool>, 12>();
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(523f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global4.x, -1025f), _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x * global4.x) + _wgslsmith_f_op_f32(472f * global4.x))))));
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -952f, global4.x, global4.x))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global4.x, global4.x), _wgslsmith_div_f32(1000f, global4.x), -1036f, _wgslsmith_f_op_f32(-837f * global4.x)), vec4<f32>(1000f, -746f, _wgslsmith_f_op_f32(step(global4.x, 1000f)), -2007f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, _wgslsmith_f_op_f32(func_2()), global4.x, -505f))));
    let var_1 = Struct_5(vec2<i32>(u_input.a, _wgslsmith_div_i32(-2147483647i, global2.x & _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, -2147483647i, global2.x, global2.x), vec4<i32>(1i, 98862i, u_input.a, global2.x)))));
    var_0 = global4.x;
    return _wgslsmith_sub_vec2_i32(vec2<i32>(global2.x, _wgslsmith_sub_i32(~1i, var_1.a.x)), vec2<i32>(2147483647i, global2.x) << (~arg_1.yy % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = 1u;
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1030f, global4.x, -906f, global4.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global4.x, -1195f, -408f) + vec4<f32>(662f, global4.x, global4.x, global4.x)))))));
    global0 = array<u32, 21>();
    var var_1 = global4.x;
    let var_2 = global1[_wgslsmith_index_u32(1u, 26u)];
    return Struct_1(!(true | all(vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_5(~_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(u_input.b, global2.x)), func_1(4294967295u, vec3<u32>(global0[_wgslsmith_index_u32(1u, 21u)], 49835u, 21986u)))), _wgslsmith_mod_vec3_u32(vec3<u32>(20115u, ~24799u, ~1u), reverseBits(~(~vec3<u32>(41269u, u_input.c, global0[_wgslsmith_index_u32(27324u, 21u)])))));
    global1 = array<Struct_3, 26>();
    var var_1 = Struct_4(vec2<bool>(!(true || !var_0.a), true), func_4(Struct_5(vec2<i32>(-1i) * -vec2<i32>(25300i, u_input.b)), ~abs(vec3<u32>(32562u, u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)]))), Struct_3(Struct_2(vec3<u32>(~58932u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 21u)], u_input.c), vec2<u32>(0u, 1u)), min(47118u, global0[_wgslsmith_index_u32(u_input.c, 21u)])), ~(global2.x >> (u_input.c % 32u))), Struct_2(~vec3<u32>(8430u, 1u, 0u), ~9990i)));
    global0 = array<u32, 21>();
    global3 = array<vec4<bool>, 12>();
    global2 = _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(reverseBits(var_1.c.b.b), _wgslsmith_add_i32(global2.x, var_1.c.b.b)), vec2<i32>(u_input.a, ~(~u_input.b))), _wgslsmith_mod_vec2_i32(~vec2<i32>(global2.x >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27809u, 21u)], 21u)], 21u)] % 32u), -u_input.a), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global2.x, var_1.c.b.b), vec2<i32>(-2147483647i, 3265i), vec2<i32>(-1i, -1i)), -vec2<i32>(global2.x, -22845i)), -select(vec2<i32>(global2.x, u_input.b), vec2<i32>(u_input.b, 0i), true))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-(vec2<i32>(-60038i, -2147483647i) & firstLeadingBit(vec2<i32>(global2.x, var_1.c.b.b)))), firstTrailingBit(0i), _wgslsmith_dot_vec3_u32(var_1.c.a.a, var_1.c.a.a) << (4294967295u % 32u));
}

