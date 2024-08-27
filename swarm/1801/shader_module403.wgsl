struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(7935u, 1u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 36566u), vec2<u32>(48619u, 70566u), vec2<u32>(17025u, 1u), vec2<u32>(17713u, 32496u), vec2<u32>(44843u, 0u));

var<private> global1: array<i32, 9>;

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(vec3<bool>(false, false, false), -1i, 2147483647i, 339f, 367f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    global1 = array<i32, 9>();
    let var_0 = ~vec4<i32>(arg_3.b.b, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b, -20734i, global2.b.b) | vec3<i32>(global2.d.c, -2147483647i, 66288i), ~vec3<i32>(0i, arg_0.c, global3.c))), -(~(global3.c ^ arg_1.c)), ~min(global2.c.b, min(1i, 1i)));
    var var_1 = vec4<f32>(2253f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.b.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.d)))))), 243f, global3.d);
    var var_2 = 46027u;
    var var_3 = _wgslsmith_add_u32(49723u >> (_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u << (u_input.a.x % 32u), ~u_input.c), u_input.c) % 32u), ~u_input.c);
    return global1[_wgslsmith_index_u32(u_input.c, 9u)];
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_div_vec3_i32(-reverseBits(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], global1[_wgslsmith_index_u32(45500u, 9u)])) ^ vec3<i32>(20695i, func_3(global2.b, Struct_1(global2.b.a, 31395i, -16172i, 333f, -429f), Struct_1(vec3<bool>(global3.a.x, true, false), -19892i, -2147483647i, global2.c.d, global2.b.d), Struct_2(global2.d.a.x, global2.c, Struct_1(vec3<bool>(false, false, global3.a.x), global2.b.b, 28815i, -1459f, 1045f), global2.d)), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(4294967295u, 9u)] << (1u % 32u), 2147483647i)), min(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2599i, u_input.b), vec2<i32>(global1[_wgslsmith_index_u32(0u, 9u)], u_input.b)), global3.c, -1924i), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-18112i, global3.b, 60084i)), ~vec3<i32>(global3.b, global1[_wgslsmith_index_u32(u_input.c, 9u)], 2147483647i))) >> (u_input.a.xwz % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.d, global2.c.e, global3.d, global3.d) + vec4<f32>(global3.d, global3.d, global3.d, 842f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1439f, -449f, global2.b.e, 1909f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.d, global3.d, global2.c.d, global2.d.d)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.d.e, -863f, global3.d, 543f), vec4<f32>(820f, 334f, global2.d.e, 132f)))), vec4<bool>(global3.a.x, true, !global3.a.x, all(vec2<bool>(false, global3.a.x)))))));
    var var_2 = vec4<bool>(global2.c.a.x, true, !(true | global2.b.a.x), !(!global3.a.x));
    let var_3 = Struct_1(vec3<bool>(all(vec4<bool>(global2.b.a.x, false, true, global3.a.x)), global2.c.a.x, !(!(!var_2.x))), global2.c.c, var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.b.d)) + _wgslsmith_f_op_f32(-global3.d)), var_1.x)), _wgslsmith_div_f32(global3.d, _wgslsmith_f_op_f32(-global2.c.e)), firstTrailingBit(~1u) != 44922u)), _wgslsmith_f_op_f32(-global3.e));
    var var_4 = ~global0[_wgslsmith_index_u32(u_input.a.x, 9u)];
    return _wgslsmith_f_op_f32(ceil(var_1.x));
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1334f, 348f) * vec2<f32>(global2.c.e, global3.e))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-891f, global2.d.d)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.e, 175f) - vec2<f32>(global2.c.e, global2.b.e))))), vec2<f32>(1120f, _wgslsmith_f_op_f32(func_2()))));
    var var_1 = Struct_2(global2.c.a.x, global2.d, Struct_1(vec3<bool>(true, !global3.a.x || !global2.a, false), _wgslsmith_mod_i32(-global1[_wgslsmith_index_u32(~48410u, 9u)], -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(18223i, global2.b.b), -vec2<i32>(u_input.b, 0i)) ^ -80914i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1246f) * global3.e)), global3.d), global2.b);
    var var_2 = var_1.b.b;
    var var_3 = select(-max((global2.b.b >> (4294967295u % 32u)) | _wgslsmith_dot_vec4_i32(vec4<i32>(global3.c, u_input.b, 2147483647i, -2147483647i), vec4<i32>(var_1.c.b, -39756i, -810i, var_1.c.c)), -2147483647i), -13363i, true);
    let var_4 = Struct_2(true, var_1.c, var_1.c, var_1.c);
    return select(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(global3.a.x, global3.a.x, var_4.a, false), any(vec4<bool>(true, true, var_4.b.a.x, var_1.b.a.x))), vec4<bool>(!global3.a.x, global2.b.d >= -605f, global3.a.x || true, global3.a.x), true), select(select(vec4<bool>(true, global3.a.x, var_4.d.a.x, false), vec4<bool>(false, var_1.a, true, false), true), !select(vec4<bool>(false, false, var_4.a, global2.d.a.x), vec4<bool>(var_1.a, true, true, var_1.b.a.x), var_4.d.a.x), true), vec4<bool>(all(vec4<bool>(true, true, global3.a.x, var_4.c.a.x)) == var_1.a, var_1.a, false, global3.a.x)), select(vec4<bool>(true, _wgslsmith_f_op_f32(abs(global2.c.d)) <= var_1.b.d, false, false), !select(select(vec4<bool>(false, var_1.c.a.x, global2.b.a.x, var_4.a), vec4<bool>(var_4.a, var_4.a, global2.c.a.x, global3.a.x), var_1.a), !vec4<bool>(global2.a, var_4.c.a.x, true, false), any(var_4.c.a)), vec4<bool>(any(select(vec4<bool>(var_1.a, global3.a.x, false, false), vec4<bool>(true, false, var_4.c.a.x, global2.b.a.x), vec4<bool>(var_4.c.a.x, var_4.a, global2.a, false))), !global2.b.a.x, any(!vec4<bool>(false, var_1.d.a.x, global2.b.a.x, var_1.a)), any(select(vec3<bool>(var_1.b.a.x, var_1.d.a.x, false), global3.a, var_1.c.a)))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.c, 4294967295u, 0u, 1u), vec4<u32>(68142u, 0u, 41938u, u_input.a.x), vec4<bool>(true, global2.c.a.x, var_1.c.a.x, var_4.a)), ~u_input.a, vec4<u32>(0u, u_input.c, u_input.a.x, u_input.c) << (vec4<u32>(89246u, 2962u, u_input.a.x, 1u) % vec4<u32>(32u))), ~(u_input.a | u_input.a)) != u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!select(!select(global3.a, global3.a, global2.d.a), select(!global3.a, select(global2.d.a, vec3<bool>(global3.a.x, false, false), vec3<bool>(global3.a.x, false, global3.a.x)), true), any(func_1())), ~_wgslsmith_mult_i32(~global2.c.b, min(-25122i, _wgslsmith_clamp_i32(global3.b, 0i, global3.c))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(1i, u_input.b, -3456i)), -vec3<i32>(global1[_wgslsmith_index_u32(31363u, 9u)], -1i, -23521i)), ~vec3<i32>(2147483647i, 2147483647i, global3.b)) >> ((26430u & ((u_input.c >> (u_input.a.x % 32u)) | _wgslsmith_mult_u32(u_input.c, u_input.c))) % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.c.e))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global2.c.d, -906f, false)))));
    let var_1 = Struct_2(false, global2.c, global2.d, Struct_1(vec3<bool>(all(vec3<bool>(var_0.a.x, var_0.a.x, true)), all(select(vec4<bool>(true, global3.a.x, global3.a.x, var_0.a.x), vec4<bool>(var_0.a.x, false, global3.a.x, true), vec4<bool>(var_0.a.x, true, true, true))), any(func_1().xz)), -13245i, global2.c.b, var_0.d, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-449f, global3.e), -221f))));
    var var_2 = Struct_2(~14347i == _wgslsmith_div_i32(countOneBits(global1[_wgslsmith_index_u32(1u, 9u)]), ~abs(51471i)), Struct_1(func_1().yzy, -54203i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_1.b.b, u_input.b) ^ _wgslsmith_sub_i32(global2.b.c, global2.c.c), reverseBits(_wgslsmith_mult_i32(var_0.b, global3.b)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(1u, 9u)], 0i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.c, 9u)], u_input.b)), i32(-1i) * -1i)), _wgslsmith_f_op_f32(-1291f + -1000f), _wgslsmith_f_op_f32(1046f * 1412f)), var_1.d, Struct_1(func_1().yxx, ~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, var_1.b.b, global2.c.b), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, global3.c, 22882i), vec3<i32>(var_0.b, -1i, 2147483647i))), 0i, _wgslsmith_f_op_f32(-global3.e), global3.d));
    var var_3 = _wgslsmith_div_f32(global3.e, _wgslsmith_f_op_f32(step(var_1.d.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.d.e), _wgslsmith_f_op_f32(-global2.d.d))))));
    var_0 = Struct_1(global3.a, global2.b.c, _wgslsmith_mod_i32(-u_input.b, _wgslsmith_mult_i32(-20762i, -1i)), _wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(-global2.c.e));
    var var_4 = vec3<bool>(any(global3.a), false, var_0.a.x);
    var var_5 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, -_wgslsmith_clamp_i32(~42653i, ~max(27694i, u_input.b), ~_wgslsmith_mod_i32(-1i, 2147483647i)));
}

