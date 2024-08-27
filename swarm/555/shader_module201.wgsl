struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_3 = Struct_3(vec2<u32>(4294967295u, 26195u), Struct_2(-17101i, Struct_1(vec4<i32>(48865i, i32(-2147483648), 2147483647i, 2147483647i), 2147483647i, -480f, vec3<i32>(24270i, -23475i, -8723i)), false, vec4<u32>(36706u, 55583u, 4294967295u, 4294967295u)), vec2<f32>(2897f, -2316f), vec4<bool>(true, true, true, false));

var<private> global2: Struct_2;

var<private> global3: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: f32, arg_3: vec2<bool>) -> vec4<i32> {
    var var_0 = global1.b.b;
    global2 = Struct_2(countOneBits(global2.b.b), global1.b.b, true, ~vec4<u32>(~abs(global2.d.x), firstTrailingBit(u_input.b | 8731u), ~_wgslsmith_mult_u32(arg_0.a.x, 1u), _wgslsmith_mult_u32(arg_0.b.d.x, ~global2.d.x)));
    let var_1 = Struct_3(reverseBits(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global2.d.x, 23901u, 0u), select(global2.d, vec4<u32>(arg_0.b.d.x, global1.b.d.x, global2.d.x, 4294967295u), global1.d)), ~4294967295u)), Struct_2(arg_1, global1.b.b, true | select(any(vec2<bool>(false, global2.c)), arg_0.b.b.c == var_0.c, true), ~vec4<u32>(1u, arg_0.b.d.x, 66849u, u_input.b) & vec4<u32>(global2.d.x >> (1u % 32u), ~0u, 11270u, select(19361u, global1.b.d.x, arg_0.d.x))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -594f) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + 1026f)))), _wgslsmith_f_op_f32(step(arg_0.b.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.b.c, -866f)))))), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b.c)) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_0.b.b.c)))), !(!select(arg_0.d.x, false, arg_3.x)), global2.c, select(!(!arg_0.b.c), global2.c, !global2.c)));
    var var_2 = 24469u;
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.b.c))) - 1113f), 1197f) - var_1.c);
    return var_0.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: f32) -> bool {
    let var_0 = select(global1.d.wy, vec2<bool>(global2.a != global2.b.d.x, true), global2.b.c >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(global2.b.c * 520f)))));
    var var_1 = Struct_2(global2.b.b, Struct_1(func_3(Struct_3(countOneBits(vec2<u32>(arg_0.x, 1u)), Struct_2(13457i, global2.b, false, vec4<u32>(1u, 66183u, u_input.b, 2591u)), vec2<f32>(1829f, arg_2), select(vec4<bool>(global0.x, var_0.x, global2.c, global2.c), vec4<bool>(global1.d.x, true, false, var_0.x), global1.b.c)), u_input.d.x, _wgslsmith_f_op_f32(-1053f * -325f), vec2<bool>(false, global1.b.c && true)), ~_wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.a.x, -1i), vec2<i32>(-1i, u_input.a.x)), abs(global2.b.a.yz)), _wgslsmith_f_op_f32(f32(-1f) * -966f), ~(abs(vec3<i32>(global1.b.a, global2.b.a.x, global2.a)) ^ ~global1.b.b.d)), any(global1.d.xyw), abs(_wgslsmith_add_vec4_u32(abs(vec4<u32>(global1.b.d.x, global2.d.x, 84u, global2.d.x) | vec4<u32>(arg_1.x, arg_0.x, 8213u, global1.a.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(global2.d.x, u_input.c, global2.d.x, 84935u), vec4<u32>(14962u, global2.d.x, arg_1.x, arg_0.x)))));
    global3 = global1.a.x;
    var var_2 = vec2<i32>(2147483647i, min(-(~(-23531i)), var_1.a));
    let var_3 = select(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(76787u, arg_1.x), 0u), firstTrailingBit(global1.b.d.x)), 29868u, true);
    return false == (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1431f))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.b.c)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> u32 {
    let var_0 = global2.b.d;
    var var_1 = Struct_3(vec2<u32>(global1.b.d.x, _wgslsmith_add_u32(global2.d.x, 0u ^ _wgslsmith_clamp_u32(global2.d.x, arg_1.d.x, 2800u))), global1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-861f, 1079f), vec2<f32>(566f, global2.b.c)) * global1.c))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, 1299f) + vec2<f32>(1000f, 1091f))))), vec4<bool>(!(!arg_1.c), false, global2.c, any(vec3<bool>(true, global2.c, all(vec2<bool>(false, false))))));
    global2 = arg_1;
    global0 = select(global1.d.wyy, vec3<bool>(_wgslsmith_div_u32(arg_1.d.x | global2.d.x, reverseBits(0u)) > _wgslsmith_dot_vec3_u32(arg_1.d.wyw, global1.b.d.zwx), false, !all(select(vec2<bool>(global0.x, arg_0.x), vec2<bool>(global1.b.c, global1.d.x), global1.b.c))), arg_0.wxz);
    global1 = Struct_3(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global1.b.d.wzx, global2.d.yxy), _wgslsmith_clamp_vec3_u32(~global2.d.yxx, vec3<u32>(0u, 4294967295u, 27774u), select(vec3<u32>(47216u, u_input.b, 53114u), vec3<u32>(1u, arg_1.d.x, u_input.b), true))), _wgslsmith_add_u32(arg_1.d.x, 65450u)), var_1.b, var_1.c, var_1.d);
    return 25977u;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<i32>) -> Struct_3 {
    global3 = firstLeadingBit(u_input.c);
    global3 = ~14357u;
    global3 = _wgslsmith_sub_u32(~func_4(select(!vec4<bool>(true, false, global0.x, true), select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(global0.x, false, global2.c, global1.b.c), global1.d), func_2(vec3<u32>(1u, global1.b.d.x, 14129u), global1.b.d, global2.b.c)), Struct_2(u_input.d.x >> (global1.b.d.x % 32u), Struct_1(global1.b.b.a, arg_2.x, -366f, vec3<i32>(arg_2.x, global1.b.a, global2.b.d.x)), global0.x, global1.b.d ^ vec4<u32>(4294967295u, global1.a.x, global1.b.d.x, global1.b.d.x))), countOneBits(global1.a.x) ^ firstTrailingBit(~(~9548u)));
    global3 = 0u;
    let var_0 = vec4<i32>(abs(~(18241i >> (1u % 32u))), global2.a >> ((~(u_input.b & 62761u) >> (~0u % 32u)) % 32u), arg_2.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-52381i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(36439i, arg_2.x)), u_input.a.ww >> (vec2<u32>(global1.a.x, u_input.b) % vec2<u32>(32u))), -7627i), global1.b.b.b));
    return Struct_3(vec2<u32>(global1.b.d.x, ~(countOneBits(global2.d.x) & 20129u)), global1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global1.c * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.c, 672f))), global1.c))), select(global1.d, vec4<bool>(true, global0.x, global1.b.c, false), !vec4<bool>(true, select(global1.d.x, true, arg_1), select(true, global1.b.c, true), global2.c & arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.b;
    global0 = global1.d.wyz;
    var var_0 = !(_wgslsmith_mod_i32(1i, ~u_input.d.x) >= -8743i);
    var var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1142f + _wgslsmith_f_op_f32(-global1.c.x)) - global1.c.x) + -502f), false, vec2<i32>(-1i) * -(u_input.d.ww | _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), global1.b.b.d.yx)));
    let var_2 = func_1(-321f, global0.x, reverseBits(max(vec2<i32>(-1i) * -vec2<i32>(global2.b.a.x, 0i), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-12852i, global1.b.b.a.x), u_input.a.zy))))).b;
    let var_3 = global2.b.c;
    var_1 = Struct_3(vec2<u32>(select(_wgslsmith_clamp_u32(~u_input.b, var_2.d.x, var_2.d.x), 10957u, true), ~max(max(1u, 54392u), global1.a.x)), Struct_2(-5622i, func_1(_wgslsmith_f_op_f32(max(var_2.b.c, global1.c.x)), _wgslsmith_mult_u32(var_2.d.x, global2.d.x) <= 11024u, abs(global2.b.a.xz)).b.b, global0.x, countOneBits(firstLeadingBit(vec4<u32>(1u, global2.d.x, var_2.d.x, global2.d.x))) ^ var_1.b.d), _wgslsmith_f_op_vec2_f32(floor(var_1.c)), global1.d);
    let var_4 = func_1(global2.b.c, var_1.b.c, ~_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.a.x), global1.b.a), func_1(var_1.b.b.c, true, _wgslsmith_sub_vec2_i32(vec2<i32>(global1.b.b.d.x, 0i), vec2<i32>(global2.b.d.x, 14688i))).b.b.a.yw));
    let var_5 = var_4.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -947f), _wgslsmith_f_op_f32(f32(-1f) * -1018f), 2256f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-244f, var_1.b.b.c, -532f, global2.b.c), vec4<f32>(var_2.b.c, var_4.c.x, -1464f, var_4.b.b.c)))), vec4<f32>(_wgslsmith_f_op_f32(sign(675f)), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1472f), 836f)))), ~global2.a);
}

