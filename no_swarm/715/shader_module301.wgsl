struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1242i, true, vec4<f32>(-421f, -1000f, 1937f, 1000f), vec4<i32>(-30908i, 13465i, 22975i, 55442i), vec4<bool>(false, true, true, false));

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(1i, false, vec4<f32>(384f, 231f, -701f, 602f), vec4<i32>(58813i, 9596i, i32(-2147483648), i32(-2147483648)), vec4<bool>(true, true, false, false)), Struct_1(-1i, true, vec4<f32>(148f, 1479f, -550f, -565f), vec4<i32>(i32(-2147483648), -31267i, 12618i, 0i), vec4<bool>(true, true, true, false)), Struct_1(27310i, true, vec4<f32>(-1966f, -305f, 1652f, 774f), vec4<i32>(i32(-2147483648), -51077i, -16061i, -13696i), vec4<bool>(false, true, true, true)), Struct_1(0i, true, vec4<f32>(-1135f, 147f, 378f, 366f), vec4<i32>(2147483647i, 5286i, 1i, 43517i), vec4<bool>(false, true, false, false)));

var<private> global2: array<Struct_1, 15>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    let var_0 = global0.b;
    var var_1 = global0.c.x;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.c.x, 504f)), _wgslsmith_div_f32(global0.c.x, -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(871f + -672f))))));
    var var_3 = 20423u;
    var var_4 = global0.c.x;
    return 1i;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_i32(-abs(global0.a), -func_3());
    let var_1 = _wgslsmith_dot_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(0u, 96205u), ~0u), select(~vec3<u32>(0u, 0u, 0u), vec3<u32>(37790u, 67319u, 10673u), select(global0.e.xxw, global0.e.zyw, false)))), firstLeadingBit(vec3<u32>(1u, 1u, 1u)));
    var var_2 = (-abs(global0.d.yxx) >> (vec3<u32>(1u, 53735u, max(65756u, 4294967295u)) % vec3<u32>(32u))) | -vec3<i32>(-_wgslsmith_clamp_i32(u_input.a, global0.d.x, 24709i), ~firstLeadingBit(var_0), _wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, 16790i), firstTrailingBit(var_0)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1822f)));
    var var_4 = global2[_wgslsmith_index_u32(~max(21334u, ~0u), 15u)];
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1 ^ 1u, _wgslsmith_div_u32(var_1, var_1)), vec2<u32>((var_1 ^ abs(var_1)) << (~select(var_1, 0u, false) % 32u), 21036u)), 15u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: bool) -> bool {
    global0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -340f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(func_2(global0.c.x, _wgslsmith_f_op_f32(max(arg_2.c.x, global0.c.x)), _wgslsmith_f_op_f32(-1118f * 970f)).c.x, 230f))), -1241f);
    let var_0 = arg_2.c.x;
    global1 = array<Struct_1, 4>();
    var var_1 = -954f;
    var var_2 = arg_2.d;
    return var_2.x >= -58544i;
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = vec3<bool>(any(global0.e.wy), func_4(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 5520u, 4294967295u), min(vec3<u32>(0u, 1089u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 23150u))), abs(vec3<u32>(1u, 1u, 1u))), vec3<i32>(~(u_input.a ^ u_input.a), u_input.a, global0.a), func_2(_wgslsmith_f_op_f32(f32(-1f) * -964f), _wgslsmith_f_op_f32(step(-264f, _wgslsmith_f_op_f32(global0.c.x - -2456f))), _wgslsmith_f_op_f32(global0.c.x - -1757f)), true), global0.e.x);
    return _wgslsmith_f_op_f32(-1f);
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: vec4<f32>) -> vec2<i32> {
    global0 = Struct_1(func_2(_wgslsmith_f_op_f32(func_1(global0.e.x || (true & global0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1090f, arg_1)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -538f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(460f, 102f)))).a, !global0.e.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global0.c, arg_3)) - global0.c), max(min(-abs(vec4<i32>(u_input.a, u_input.a, global0.a, u_input.a)), global0.d), vec4<i32>(0i, u_input.a, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(global0.d, vec4<i32>(u_input.a, u_input.a, 45808i, -2147483647i)), global0.d.x), countOneBits(global0.a))), !global0.e);
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c.x)));
    let var_1 = true;
    global0 = global1[_wgslsmith_index_u32(~4294967295u << (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~41599u, 0u, 1u, 1u)), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(55514u, 1u), vec2<u32>(63473u, 45018u)), ~1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 4222u), min(42673u, 4294967295u)), 15987u)) % 32u), 4u)];
    global0 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~abs(0u), ~(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 21477u) ^ ~63659u)), 15u)];
    return -global0.d.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global0.e;
    global2 = array<Struct_1, 15>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-global0.c.zw);
    let var_2 = _wgslsmith_f_op_vec4_f32(global0.c + vec4<f32>(-942f, -338f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x * var_1.x) + _wgslsmith_f_op_f32(ceil(var_1.x))) - global0.c.x)));
    global2 = array<Struct_1, 15>();
    global2 = array<Struct_1, 15>();
    let var_3 = 12092u;
    let var_4 = Struct_1(-50893i, true, var_2, ~max(~global0.d, vec4<i32>(50020i, -2147483647i, global0.d.x, u_input.a)), vec4<bool>(((37491i == global0.a) && true) && true, var_0.x, ~(var_3 ^ 4294967295u) != 0u, true));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.c.x * _wgslsmith_f_op_f32(select(532f, -298f, true)))), _wgslsmith_f_op_f32(func_1(465f > var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x * var_1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(floor(var_2.x)))), var_2), firstLeadingBit(vec4<i32>(~(-1i) << (var_3 % 32u), global0.d.x, 1i, min(global0.a, var_4.a ^ 0i))), _wgslsmith_mult_i32(-global0.a ^ _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(global0.d, vec4<i32>(u_input.a, var_4.d.x, 6107i, u_input.a)), reverseBits(global0.d.x)), ~49322i), abs(var_3));
}

