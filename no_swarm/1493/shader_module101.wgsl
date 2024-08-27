struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: u32;

var<private> global2: array<vec4<bool>, 21>;

var<private> global3: bool = false;

var<private> global4: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<i32>(-12709i, -85423i, -1i)), Struct_1(vec3<i32>(2147483647i, 12556i, 2147483647i)), Struct_1(vec3<i32>(1i, 1i, 2147483647i)), Struct_1(vec3<i32>(1i, -8583i, -1i)), Struct_1(vec3<i32>(14378i, -1i, i32(-2147483648))), Struct_1(vec3<i32>(-41866i, -32071i, 1i)), Struct_1(vec3<i32>(-9938i, 2147483647i, 47738i)), Struct_1(vec3<i32>(1i, 1i, 1i)), Struct_1(vec3<i32>(0i, -1i, -13843i)), Struct_1(vec3<i32>(9839i, 20235i, 0i)), Struct_1(vec3<i32>(43111i, -1i, 77446i)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -13910i)), Struct_1(vec3<i32>(13455i, 2147483647i, i32(-2147483648))), Struct_1(vec3<i32>(1i, -1i, -1i)), Struct_1(vec3<i32>(-1i, 21923i, -1i)), Struct_1(vec3<i32>(-30650i, 2147483647i, 1i)), Struct_1(vec3<i32>(0i, 33678i, 14325i)), Struct_1(vec3<i32>(-29951i, i32(-2147483648), i32(-2147483648))), Struct_1(vec3<i32>(55321i, 1070i, 7484i)), Struct_1(vec3<i32>(i32(-2147483648), 0i, -5416i)), Struct_1(vec3<i32>(2147483647i, 1i, -1i)), Struct_1(vec3<i32>(-18801i, 1i, -1326i)), Struct_1(vec3<i32>(2147483647i, -1i, -1i)), Struct_1(vec3<i32>(-20546i, 0i, 1264i)), Struct_1(vec3<i32>(1i, -4273i, 2147483647i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> u32 {
    global2 = array<vec4<bool>, 21>();
    global1 = 4294967295u;
    global4 = array<Struct_1, 25>();
    var var_0 = ~u_input.a.zy << (vec2<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), min(abs(u_input.a.x), u_input.a.x))) % vec2<u32>(32u));
    let var_1 = u_input.a;
    return min(var_1.x, reverseBits(abs(~var_1.x) & _wgslsmith_mult_u32(~0u, ~var_1.x)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>) -> vec4<i32> {
    let var_0 = vec3<i32>(arg_0.a.x, ~11750i, max(_wgslsmith_add_i32(141i, _wgslsmith_add_i32(1i, arg_0.a.x) | _wgslsmith_sub_i32(arg_1, 2147483647i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-35856i, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<i32>(arg_1, 2147483647i, 9244i, arg_1)) | arg_0.a.x));
    let var_1 = Struct_1(_wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(arg_0.a, ~arg_0.a), min(arg_0.a, arg_0.a)));
    var var_2 = Struct_1(select(~(~countOneBits(var_1.a)), ~abs(vec3<i32>(arg_1, arg_1, var_1.a.x)), all(vec2<bool>(true, true))));
    global4 = array<Struct_1, 25>();
    let var_3 = ~select(i32(-1i) * -1i, var_2.a.x, true);
    return _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(i32(-1i) * -6473i, _wgslsmith_sub_i32(var_1.a.x, 2147483647i), reverseBits(64i), 25622i)), vec4<i32>(~var_1.a.x, 20832i, var_2.a.x, arg_1)), -vec4<i32>(-(~0i), -min(var_1.a.x, arg_1), ~countOneBits(-2147483647i), 21439i));
}

fn func_2(arg_0: Struct_2) -> StorageBuffer {
    global1 = u_input.a.x;
    global2 = array<vec4<bool>, 21>();
    global1 = 380u;
    var var_0 = _wgslsmith_add_vec4_i32(select(countOneBits(-func_3(arg_0.d, arg_0.d.a.x, vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x))), vec4<i32>(firstLeadingBit(reverseBits(3754i)), min(_wgslsmith_mult_i32(arg_0.b.x, -1i), ~16757i), -max(arg_0.d.a.x, 0i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.d.a.x, 1i), arg_0.b.wyy), arg_0.b.x | arg_0.d.a.x)), !(arg_0.a.x | all(vec2<bool>(true, false)))), abs(arg_0.b) & arg_0.b);
    global1 = _wgslsmith_dot_vec4_u32(~min(vec4<u32>(u_input.a.x, 6602u, 5103u, 0u) & vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u) | vec4<u32>(1u, 20758u, 4294967295u, u_input.a.x)) ^ vec4<u32>(~20174u & select(u_input.a.x, 1u, arg_0.c.x), abs(u_input.a.x) & 1u, u_input.a.x << (4294967295u % 32u), 0u), ~max(countOneBits(vec4<u32>(11935u, u_input.a.x, 47753u, u_input.a.x)) << ((vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, 30233u, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), reverseBits(vec4<u32>(12550u, 31515u, 4775u, u_input.a.x))));
    return StorageBuffer(_wgslsmith_clamp_vec3_i32(var_0.yyw, arg_0.d.a, vec3<i32>(var_0.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_0.d.a.x, 18523i), select(arg_0.b.x, 0i, true)), _wgslsmith_sub_i32(var_0.x, min(0i, 2147483647i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1030f, 256f, -1000f), _wgslsmith_div_vec3_f32(vec3<f32>(500f, 766f, -141f), _wgslsmith_div_vec3_f32(vec3<f32>(-568f, -739f, -218f), vec3<f32>(725f, 889f, -130f))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-311f, 457f))), _wgslsmith_f_op_f32(select(-293f, _wgslsmith_f_op_f32(-1207f + 339f), all(arg_0.a.yy)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1314f, -433f)))))), vec2<bool>(true, arg_0.c.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-175f * -2808f) + 1f)), _wgslsmith_f_op_f32(abs(-149f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))))), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(36910u, ~(~countOneBits(11479u)), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_sub_u32(0u | ~u_input.a.x, ~700u)), 13014u);
    global2 = array<vec4<bool>, 21>();
    global1 = 0u;
    global2 = array<vec4<bool>, 21>();
    let var_1 = -_wgslsmith_mod_i32(-9269i, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(7221i, 0i, -16256i)), vec3<i32>(_wgslsmith_add_i32(28170i, -2147483647i), 1i, max(-1061i, 0i))));
    var var_2 = global4[_wgslsmith_index_u32(~func_1(), 25u)];
    global4 = array<Struct_1, 25>();
    let var_3 = true;
    let x = u_input.a;
    s_output = func_2(global0[_wgslsmith_index_u32(~firstTrailingBit(4294967295u), 11u)]);
}

