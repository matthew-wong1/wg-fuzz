struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec2<u32>(4294967295u, 1u), 0u, Struct_2(vec2<f32>(1505f, -585f), -1i, vec3<i32>(-35224i, 0i, 2797i))), Struct_3(vec2<u32>(4294967295u, 1u), 1u, Struct_2(vec2<f32>(1000f, -1225f), -1i, vec3<i32>(1i, -16860i, 0i))), Struct_3(vec2<u32>(6275u, 4294967295u), 1u, Struct_2(vec2<f32>(-1208f, 717f), -1i, vec3<i32>(1i, -6611i, i32(-2147483648)))), Struct_3(vec2<u32>(6950u, 13529u), 0u, Struct_2(vec2<f32>(1685f, 610f), -46441i, vec3<i32>(-36203i, -12028i, -47521i))), Struct_3(vec2<u32>(1u, 0u), 69914u, Struct_2(vec2<f32>(-1018f, 1735f), 49365i, vec3<i32>(-4643i, -40810i, 21761i))), Struct_3(vec2<u32>(2421u, 1u), 4294967295u, Struct_2(vec2<f32>(251f, -1406f), 5615i, vec3<i32>(-43688i, -1i, 1i))), Struct_3(vec2<u32>(0u, 1u), 1u, Struct_2(vec2<f32>(-623f, -1069f), -32525i, vec3<i32>(-1i, 1i, 4992i))), Struct_3(vec2<u32>(51784u, 17871u), 0u, Struct_2(vec2<f32>(-783f, 1281f), 1i, vec3<i32>(i32(-2147483648), 14034i, -20831i))), Struct_3(vec2<u32>(1u, 5444u), 0u, Struct_2(vec2<f32>(1452f, -338f), -29465i, vec3<i32>(17193i, 2147483647i, -1i))), Struct_3(vec2<u32>(4294967295u, 18221u), 1u, Struct_2(vec2<f32>(-621f, 769f), 1i, vec3<i32>(636i, 2147483647i, 1i))), Struct_3(vec2<u32>(50272u, 36238u), 4294967295u, Struct_2(vec2<f32>(781f, -1530f), i32(-2147483648), vec3<i32>(2147483647i, -20974i, i32(-2147483648)))), Struct_3(vec2<u32>(4294967295u, 4294967295u), 3042u, Struct_2(vec2<f32>(499f, 838f), -1i, vec3<i32>(-23462i, -8350i, 1i))), Struct_3(vec2<u32>(115008u, 52878u), 1u, Struct_2(vec2<f32>(656f, 1079f), 40022i, vec3<i32>(-1i, 25554i, 2147483647i))), Struct_3(vec2<u32>(23726u, 0u), 97844u, Struct_2(vec2<f32>(1767f, 321f), 33095i, vec3<i32>(20658i, 14040i, 2147483647i))));

var<private> global1: vec2<u32>;

var<private> global2: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

var<private> global3: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(772f, 509f, 580f), vec3<f32>(-131f, -1191f, 149f), vec3<f32>(1853f, -114f, -1801f), vec3<f32>(-1888f, 570f, -513f), vec3<f32>(-1020f, -589f, -648f), vec3<f32>(1359f, 1361f, -531f), vec3<f32>(455f, 912f, -1112f), vec3<f32>(2690f, 1251f, 323f), vec3<f32>(-984f, 654f, -193f), vec3<f32>(-1047f, -285f, 1540f), vec3<f32>(323f, -502f, -238f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>) -> vec3<f32> {
    global0 = array<Struct_3, 14>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(arg_0.b.a.x + _wgslsmith_f_op_f32(max(arg_0.b.a.x, _wgslsmith_div_f32(1882f, -842f)))), 1u);
    var var_1 = u_input.e.yzw;
    var var_2 = arg_0.b;
    let var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(max(_wgslsmith_dot_vec3_u32(u_input.e.xxz, ~u_input.e.wxx), ~(39757u << (arg_0.a.b % 32u))), _wgslsmith_sub_u32(~4294967295u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.b, arg_0.a.a.x, arg_0.a.b), u_input.e)))), 9u)];
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-734f)) * arg_0.a.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1232f, arg_0.a.c.a.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1681f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a.x))))));
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 14u)];
    global2 = array<vec3<bool>, 9>();
    var var_2 = any(!select(!global2[_wgslsmith_index_u32(65560u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)], true)) || true;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_5(Struct_3(vec2<u32>(28852u, 0u), global1.x, Struct_2(var_1.c.a, var_1.c.c.x, var_1.c.c)), Struct_2(var_1.c.a, _wgslsmith_clamp_i32(2147483647i, u_input.a, -1i), _wgslsmith_div_vec3_i32(var_1.c.c, var_1.c.c)), !(u_input.e.x > 4294967295u)), global2[_wgslsmith_index_u32(0u, 9u)])));
    return Struct_1(countOneBits(0u) << (u_input.c % 32u));
}

fn func_1(arg_0: bool) -> vec3<i32> {
    var var_0 = !(-17630i >= u_input.a);
    var var_1 = func_2(Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -184f))))), 70162u));
    var var_2 = true;
    let var_3 = 4513i;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-988f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1567f + -499f) + -662f)), -832f));
    return ~firstTrailingBit(firstLeadingBit(-vec3<i32>(u_input.a, var_3, var_3) << (vec3<u32>(42710u, 1u, var_1.a) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(all(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global1.x, 14042u), 9u)]));
    global2 = array<vec3<bool>, 9>();
    let var_1 = Struct_1(_wgslsmith_mult_u32(abs(u_input.d), u_input.c));
    let var_2 = false;
    var var_3 = global0[_wgslsmith_index_u32(25405u, 14u)];
    global3 = array<vec3<f32>, 11>();
    let var_4 = Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, _wgslsmith_clamp_u32(~30008u, firstLeadingBit(0u) ^ (u_input.b & 0u), 1u)), 14u)], var_3.c, !select(var_2, !(!var_2), var_2 || all(vec4<bool>(var_2, false, var_2, var_2))));
    var var_5 = var_3.a.x <= var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.b, vec4<u32>(countOneBits(1921u), u_input.d, var_3.a.x, var_4.a.a.x) >> (min(u_input.e, _wgslsmith_sub_vec4_u32(u_input.e, ~vec4<u32>(u_input.e.x, var_4.a.b, 4294967295u, 78117u))) % vec4<u32>(32u)), ~vec2<u32>(~u_input.c, _wgslsmith_add_u32(~global1.x, var_1.a | 0u)), u_input.e, ~_wgslsmith_add_vec3_i32(select(vec3<i32>(var_4.a.c.b, var_4.a.c.c.x, var_4.b.b), max(vec3<i32>(var_0.x, var_3.c.b, var_4.b.b), vec3<i32>(64264i, -42569i, 23116i)), global2[_wgslsmith_index_u32(var_3.a.x, 9u)]), abs(abs(vec3<i32>(39711i, var_0.x, u_input.a)))));
}

