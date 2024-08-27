struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_2;

var<private> global2: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(973f, 812f, 236f), vec3<f32>(-1000f, 729f, -1026f), vec3<f32>(324f, -310f, 436f), vec3<f32>(1925f, -1506f, 1019f), vec3<f32>(1317f, -2621f, -986f), vec3<f32>(-279f, -1374f, -1779f));

var<private> global3: vec4<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    let var_0 = Struct_4(reverseBits(firstLeadingBit(arg_0.x) | _wgslsmith_div_u32(global1.d.x, arg_0.x)), vec4<f32>(_wgslsmith_f_op_f32(global0.c - 1248f), -420f, -2571f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.x))))), -1000f, ~(~(~63944u)), arg_2);
    global0 = Struct_4(0u, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b.x))), 924f)), u_input.a.x, var_0.e);
    global1 = Struct_2(global3.x, var_0.b.x, _wgslsmith_dot_vec3_i32(countOneBits(~(-vec3<i32>(17361i, u_input.b.x, 10722i))), -abs(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, arg_1.x, u_input.b.x), vec3<i32>(u_input.b.x, -1i, -2147483647i)))), arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.e, -248f) * _wgslsmith_f_op_f32(global1.e * -404f))))));
    var var_1 = var_0.e.a;
    let var_2 = global0.e;
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<f32> {
    global1 = arg_0;
    let var_0 = Struct_1(~vec2<u32>(~0u, 86878u), func_3(min(u_input.a.yyw, firstLeadingBit(u_input.a.yxz | vec3<u32>(36111u, 0u, u_input.a.x))), _wgslsmith_div_vec2_i32(select(abs(u_input.b), vec2<i32>(0i, 2147483647i), select(vec2<bool>(arg_0.a, global1.a), vec2<bool>(arg_1.b, global3.x), global3.wy)), u_input.b), Struct_1(~vec2<u32>(arg_1.a.x, 1u) & global0.e.a, false)));
    let var_1 = 46536u != _wgslsmith_dot_vec3_u32(~(~arg_0.d), ~(~global1.d));
    global1 = arg_0;
    global2 = array<vec3<f32>, 6>();
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e)), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b.x - -1010f), -307f)))), _wgslsmith_f_op_vec4_f32(global0.b + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.c)) - _wgslsmith_f_op_f32(ceil(-779f))), global0.c, arg_0.e, _wgslsmith_f_op_f32(f32(-1f) * -2108f)))));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = Struct_3(select(!(!(!vec2<bool>(global0.e.b, true))), global3.zx, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b * global0.b) + _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 784f, 160f, global1.b), global0.b))))), 175f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1098f))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + global1.b), _wgslsmith_f_op_f32(-global0.b.x), global1.a))), global0.e);
    var var_1 = 1i;
    var var_2 = Struct_3(vec2<bool>(any(vec2<bool>(var_0.e.b, any(global3.wzx))), global0.e.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(749f, _wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_f32(f32(-1f) * -466f), _wgslsmith_f_op_f32(min(global1.e, -326f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_2(global1.a, var_0.b.x, u_input.b.x, u_input.a.yyy, var_0.c), var_0.e, vec2<bool>(false, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * global0.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(459f)))))), Struct_1(global1.d.yx, true));
    let var_3 = -1958f;
    var var_4 = Struct_2(false | var_2.a.x, _wgslsmith_f_op_f32(step(450f, _wgslsmith_f_op_f32(max(global1.e, _wgslsmith_div_f32(-142f, _wgslsmith_f_op_f32(global0.b.x * 678f)))))), _wgslsmith_div_i32(global1.c, _wgslsmith_sub_i32(-1i, countOneBits(firstTrailingBit(u_input.b.x)))), global1.d, -1594f);
    return u_input.a.x;
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_4) -> Struct_2 {
    global2 = array<vec3<f32>, 6>();
    global0 = arg_2;
    let var_0 = ~(~(-(~u_input.b.x | 3258i)));
    let var_1 = -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, global1.c, var_0, -15552i), vec4<i32>(u_input.b.x, u_input.b.x, 5647i, u_input.b.x)), _wgslsmith_div_i32(-31991i, global1.c), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 1i, 2147483647i, var_0), vec4<i32>(-31667i, var_0, u_input.b.x, 71171i))), ~_wgslsmith_sub_i32(global1.c, u_input.b.x), 3710i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_0, -2147483647i, global1.c), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, var_0, u_input.b.x), vec3<i32>(-16400i, global1.c, u_input.b.x) | vec3<i32>(global1.c, 35118i, -2147483647i)), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), _wgslsmith_mod_i32(1i, global1.c), global1.c)));
    var var_2 = Struct_3(vec2<bool>(var_1 != 1i, true), arg_2.b, global0.c, -1901f, Struct_1(~global1.d.zz, any(select(!vec2<bool>(false, global3.x), select(global3.xy, global3.ww, vec2<bool>(false, global0.e.b)), arg_1.x))));
    return Struct_2(u_input.b.x >= ~(-var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-986f, 273f, global3.x)), 777f)) * 803f), -1i, firstLeadingBit(vec3<u32>(4294967295u, select(31852u, ~8394u, any(vec4<bool>(arg_2.e.b, global1.a, true, arg_1.x))), ~48553u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_2.c)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -968f) + _wgslsmith_f_op_f32(-1528f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b), global1.b, select(global0.e.b, false, true))))));
    global1 = func_4(func_1(1i), !global3.xwy, Struct_4(~10216u, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-892f, _wgslsmith_f_op_f32(max(global0.c, 244f)), _wgslsmith_f_op_f32(global1.b - -183f), _wgslsmith_f_op_f32(abs(-1151f))))), _wgslsmith_f_op_f32(max(global0.b.x, -475f)), _wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(67855u, _wgslsmith_mult_u32(4294967295u, global1.d.x))), global0.e));
    global0 = Struct_4(~(~0u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(139f, global0.c, -457f, -1454f), _wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_f_op_vec4_f32(select(global0.b, global0.b, vec4<bool>(true, true, false, global1.a))))), global0.b)), _wgslsmith_f_op_f32(global0.b.x + -221f), _wgslsmith_sub_u32(_wgslsmith_add_u32(global1.d.x, u_input.a.x), 34484u) << (4294967295u % 32u), global0.e);
    var var_1 = select(vec3<bool>(true, true, true), select(!(!vec3<bool>(global3.x, false, true)), vec3<bool>(false, all(global3.wx), true), select(global3.zxw, vec3<bool>(!global1.a, func_3(u_input.a.xxx, u_input.b, global0.e), global0.e.b), func_3(_wgslsmith_add_vec3_u32(u_input.a.xxz, global1.d), firstTrailingBit(u_input.b), Struct_1(vec2<u32>(0u, 53478u), global1.a)))), !(!any(global3.xxy)));
    global2 = array<vec3<f32>, 6>();
    let var_2 = Struct_1(~vec2<u32>(func_1(global1.c), reverseBits(abs(68329u))), ~global1.d.x <= 53728u);
    var var_3 = var_1.x;
    let var_4 = func_4(u_input.a.x, select(!global3.wwy, !select(!vec3<bool>(var_2.b, global0.e.b, true), select(vec3<bool>(true, true, false), vec3<bool>(global0.e.b, var_2.b, false), global3.xwz), var_1.x), false), Struct_4(1u, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(global0.b, vec4<f32>(global0.c, global0.b.x, global0.b.x, global1.b), global1.a)))))), 281f, ~_wgslsmith_mult_u32(global1.d.x, reverseBits(1u)), global0.e));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_sub_vec3_i32(min(vec3<i32>(2147483647i, u_input.b.x, 0i), vec3<i32>(-1i, -34563i, var_4.c)), vec3<i32>(u_input.b.x, var_4.c, global1.c) & vec3<i32>(-1883i, -2147483647i, u_input.b.x)) >> (reverseBits(var_4.d) % vec3<u32>(32u)), min(-_wgslsmith_mod_vec3_i32(vec3<i32>(global1.c, global1.c, u_input.b.x), vec3<i32>(var_4.c, -29336i, global1.c)), -select(vec3<i32>(global1.c, global1.c, -22305i), vec3<i32>(u_input.b.x, u_input.b.x, var_4.c), vec3<bool>(var_4.a, var_1.x, global3.x)))), 27520i);
}

