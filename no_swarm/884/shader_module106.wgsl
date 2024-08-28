struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(-1i, 1i, -29548i), vec3<i32>(29146i, -17330i, -28664i), vec3<i32>(0i, 25697i, 1i), vec3<i32>(0i, 411i, 2147483647i), vec3<i32>(41815i, -1i, 1i), vec3<i32>(0i, -20761i, 29448i), vec3<i32>(0i, i32(-2147483648), 23334i), vec3<i32>(2147483647i, 4343i, 1i), vec3<i32>(2147483647i, 47510i, -15732i), vec3<i32>(1i, -28753i, 2147483647i), vec3<i32>(14753i, -5926i, i32(-2147483648)), vec3<i32>(0i, 15918i, 60047i), vec3<i32>(39790i, -2873i, -59095i), vec3<i32>(i32(-2147483648), i32(-2147483648), 21208i));

var<private> global1: array<Struct_1, 14>;

var<private> global2: Struct_1 = Struct_1(12431u, 686f, vec3<i32>(i32(-2147483648), 1i, 1i), vec4<f32>(-1000f, 1159f, -150f, -1000f), vec3<u32>(6109u, 4294967295u, 24125u));

var<private> global3: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 50348u), vec2<u32>(19098u, 1u), vec2<u32>(110103u, 13388u), vec2<u32>(0u, 22438u), vec2<u32>(0u, 8916u), vec2<u32>(43921u, 8635u), vec2<u32>(1u, 8787u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(7623u, 4294967295u), vec2<u32>(4294967295u, 7661u), vec2<u32>(33426u, 0u), vec2<u32>(17921u, 4294967295u), vec2<u32>(134403u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 39712u), vec2<u32>(1u, 4423u), vec2<u32>(0u, 1u), vec2<u32>(25478u, 38290u), vec2<u32>(0u, 61998u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4737u), vec2<u32>(1u, 47858u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 37698u), vec2<u32>(4294967295u, 44459u), vec2<u32>(25529u, 0u), vec2<u32>(108205u, 68119u));

var<private> global4: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: u32) -> i32 {
    let var_0 = reverseBits(u_input.a.x);
    var var_1 = true;
    var var_2 = global2.d.wy;
    let var_3 = vec2<f32>(985f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.d.x), _wgslsmith_f_op_f32(1000f + -1372f))));
    let var_4 = firstLeadingBit(u_input.a.wwz);
    return _wgslsmith_clamp_i32(-(~var_0), -_wgslsmith_clamp_i32(~firstTrailingBit(global2.c.x), firstTrailingBit(_wgslsmith_div_i32(global4.c.x, var_4.x)), global4.c.x), var_4.x);
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global4 = Struct_1(select(u_input.b, 4294967295u, true), _wgslsmith_f_op_f32(select(global4.b, global2.b, select(_wgslsmith_sub_u32(u_input.c, u_input.b) >= 1u, all(vec3<bool>(true, true, true)), countOneBits(2147483647i) <= _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-13985i, arg_0.x, -2147483647i, global2.c.x))))), vec3<i32>(firstLeadingBit((i32(-1i) * -65400i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(global4.c.x, u_input.a.x, 1i), vec3<i32>(arg_0.x, 0i, arg_0.x))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.d.x + 151f)), 76331u), global2.c.x >> (countOneBits(global2.a) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(548f * 473f), -1155f, 238f, -593f), firstTrailingBit(global4.e));
    let var_0 = abs(-arg_0.yx ^ (global2.c.xz << (global4.e.xz % vec2<u32>(32u))));
    global1 = array<Struct_1, 14>();
    global0 = array<vec3<i32>, 14>();
    var var_1 = ~(-(-vec2<i32>(37862i, 0i) >> (abs(global2.e.zz) % vec2<u32>(32u))) >> (~(~_wgslsmith_mult_vec2_u32(global4.e.xz, vec2<u32>(u_input.c, global2.a))) % vec2<u32>(32u)));
    return ~(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global2.e.x, global2.a, 21768u), _wgslsmith_add_u32(global4.a, global4.e.x)), u_input.b, ~0u));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global4 = arg_1;
    global1 = array<Struct_1, 14>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-global4.d.ww);
    let var_1 = Struct_1(~u_input.b, _wgslsmith_f_op_f32(-var_0.x), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a.wyy, countOneBits(~vec3<i32>(-22116i, 11094i, global4.c.x))), -1i, global2.c.x), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1058f))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2244f))), ~(~vec3<u32>(~arg_1.e.x, _wgslsmith_div_u32(global4.e.x, 4294967295u), arg_1.e.x)));
    let var_2 = !(!select(!vec4<bool>(true, true, arg_0.x, arg_2), !(!vec4<bool>(arg_0.x, false, arg_2, false)), select(vec4<bool>(false, true, true, arg_0.x), vec4<bool>(true, true, true, arg_0.x), arg_0.x && true)));
    return Struct_1(~global2.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.b + -1021f), -963f)), var_0.x), vec3<i32>(arg_1.c.x, var_1.c.x, u_input.a.x << (4294967295u % 32u)), vec4<f32>(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2850f))), any(select(var_2, var_2, var_2)))), -779f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -335f)))), -123f), vec3<u32>(_wgslsmith_mod_u32(global2.a, ~arg_1.e.x) ^ min(_wgslsmith_mod_u32(1u, u_input.c), 4294967295u), var_1.a, _wgslsmith_add_u32(func_2(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, global2.c.x, global4.c.x), u_input.a)), arg_1.e.x)));
}

fn func_1() -> Struct_1 {
    global3 = array<vec2<u32>, 30>();
    global2 = func_4(select(vec2<bool>(!select(false, true, false), ~global4.a < func_2(u_input.a)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true)), !all(vec3<bool>(false, false, true))), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), false))), Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~global2.e, ~vec3<u32>(114957u, 12157u, 56556u)), ~(global4.e.x >> (u_input.b % 32u))), global4.b, ~min(select(global2.c, global2.c, true), global4.c), global2.d, ~global4.e & global4.e), !(((u_input.a.x < global2.c.x) && false) || !any(vec4<bool>(false, false, false, false))));
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1000f, -299f))));
    let var_1 = func_4(select(select(vec2<bool>(true, any(vec3<bool>(true, false, true))), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), false), !vec2<bool>(false, any(vec3<bool>(false, true, true)))), func_4(vec2<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(sign(global4.d.x)) == _wgslsmith_f_op_f32(-global4.d.x)), func_4(vec2<bool>(true, true), Struct_1(8054u, _wgslsmith_f_op_f32(round(global4.b)), vec3<i32>(-2573i, -17740i, 21461i) | vec3<i32>(u_input.a.x, global2.c.x, 0i), global2.d, ~vec3<u32>(19309u, global2.e.x, 75398u)), !any(vec3<bool>(false, false, false))), false), false);
    let var_2 = 1043f;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(~0u, ~u_input.c)), 14u)];
    let var_0 = u_input.a.zyy | select(_wgslsmith_add_vec3_i32(global2.c, reverseBits(select(vec3<i32>(global2.c.x, 0i, 1i), vec3<i32>(global4.c.x, 15420i, -49507i), true))), _wgslsmith_sub_vec3_i32(-global2.c, countOneBits(global0[_wgslsmith_index_u32(min(86753u, 1u), 14u)])), 1i != ~select(u_input.a.x, global4.c.x, false));
    var var_1 = func_1();
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b, _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, global4.e.x), global4.a)), var_1.e.x), 14u)];
    global1 = array<Struct_1, 14>();
    let var_3 = vec3<i32>((_wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, global2.c.x), u_input.a.x) >> (_wgslsmith_mod_u32(u_input.b, 0u) % 32u)) & 23427i, -global2.c.x, min(global2.c.x, global4.c.x) >> (global4.e.x % 32u));
    global3 = array<vec2<u32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1().e, var_1.a, -2147483647i);
}

