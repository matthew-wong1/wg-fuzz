struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = 23928i;

var<private> global2: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(0u, 2845u), vec2<u32>(68731u, 1u), vec2<u32>(1u, 1u), vec2<u32>(48431u, 1u), vec2<u32>(1u, 31129u), vec2<u32>(52526u, 75706u), vec2<u32>(4294967295u, 127298u), vec2<u32>(14080u, 4294967295u), vec2<u32>(9510u, 58822u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(22000u, 4294967295u), vec2<u32>(1u, 60504u), vec2<u32>(31853u, 76485u), vec2<u32>(4294967295u, 1u), vec2<u32>(10312u, 106833u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(3001u, 64155u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u), vec2<u32>(21744u, 18705u), vec2<u32>(22516u, 4294967295u), vec2<u32>(6905u, 36861u), vec2<u32>(1u, 37212u), vec2<u32>(1u, 1u), vec2<u32>(0u, 1u), vec2<u32>(0u, 0u), vec2<u32>(0u, 0u), vec2<u32>(28010u, 0u), vec2<u32>(28943u, 4294967295u), vec2<u32>(59863u, 64813u));

var<private> global3: array<Struct_1, 14>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    global3 = array<Struct_1, 14>();
    let var_0 = global3[_wgslsmith_index_u32(~global4.b.x, 14u)];
    let var_1 = select(_wgslsmith_dot_vec4_u32(vec4<u32>(max(global4.b.x, var_0.b.x), ~2250u, min(26827u, 4294967295u), 22841u), _wgslsmith_add_vec4_u32(global4.b, var_0.b) >> (var_0.b % vec4<u32>(32u))), ~(~global4.b.x), !any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true))) != ~min(abs(global4.b.x), countOneBits(~1u));
    let var_2 = _wgslsmith_mult_vec2_u32(min(~global2[_wgslsmith_index_u32(var_0.b.x, 31u)] << (global2[_wgslsmith_index_u32(var_0.b.x ^ 1u, 31u)] % vec2<u32>(32u)), select(u_input.e, u_input.e, true) & global2[_wgslsmith_index_u32(18039u, 31u)]), _wgslsmith_add_vec2_u32(u_input.e, var_0.b.xw) & global4.b.yx) | global4.b.wz;
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(458f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1175f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-643f, -1000f) * _wgslsmith_f_op_f32(select(global4.a.x, -127f, var_1))), _wgslsmith_f_op_f32(-global4.d.x)))));
    return _wgslsmith_f_op_f32(select(global4.d.x, global4.a.x, !(_wgslsmith_mult_u32(~4079u, 0u) < (_wgslsmith_div_u32(59465u, 81748u) & (40196u ^ var_2.x)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> vec2<bool> {
    let var_0 = Struct_1(vec3<f32>(arg_0, -660f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))), global4.b, arg_1.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4.c, _wgslsmith_f_op_f32(arg_1.d.x + global4.d.x))) - 106f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.d.x, arg_1.d.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(sign(190f)))), arg_0));
    global0 = true;
    global1 = u_input.d;
    global3 = array<Struct_1, 14>();
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -674f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(171f)), _wgslsmith_f_op_f32(sign(-952f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) + _wgslsmith_f_op_f32(-901f * -263f)) * 348f), -216f)));
    return vec2<bool>(any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), select(false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(-541f != var_0.d.x, true, true, any(vec3<bool>(true, true, true))))), true);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: bool) -> vec2<bool> {
    global1 = max(-17343i, u_input.d);
    let var_0 = global4.b;
    global0 = !any(!(!func_2(542f, global3[_wgslsmith_index_u32(u_input.e.x, 14u)], 1u)));
    global4 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -701f, global4.c)), countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(global4.b, ~global4.b), vec4<u32>(0u, global4.b.x, global4.b.x, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x)), global4.d);
    var var_1 = vec3<bool>(false, (arg_1 > 466f) || true, true);
    return !var_1.zy;
}

fn func_4(arg_0: vec4<u32>, arg_1: bool) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global4.b.x, 20274u, global4.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_0.x, 1u), vec3<u32>(global4.b.x, arg_0.x, 90350u))), _wgslsmith_div_u32(firstLeadingBit(arg_0.x), 1u), arg_0.x)), 14u)];
    global1 = -1i;
    var var_1 = Struct_1(var_0.d.xwz, vec4<u32>(~(~firstTrailingBit(var_0.b.x)), _wgslsmith_mult_u32(u_input.c.x, 1u) ^ ~59627u, 50675u, _wgslsmith_sub_u32(_wgslsmith_add_u32(0u, max(4294967295u, u_input.e.x)), u_input.e.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-206f - 1000f), _wgslsmith_f_op_f32(abs(var_0.c)), arg_1)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1519f - 400f), var_0.a.x)), global4.a.x, _wgslsmith_div_f32(-167f, _wgslsmith_f_op_f32(-global4.c)), var_0.a.x)));
    return Struct_1(var_0.d.yxw, var_0.b, var_0.d.x, _wgslsmith_f_op_vec4_f32(floor(global4.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 14>();
    let var_0 = _wgslsmith_f_op_f32(-2254f - 594f);
    let var_1 = ~abs(vec4<u32>(_wgslsmith_mod_u32(31968u, 9381u), 0u, global4.b.x ^ 62764u, u_input.c.x >> (u_input.c.x % 32u)) >> (abs(vec4<u32>(0u, 54118u, u_input.c.x, global4.b.x) << (vec4<u32>(global4.b.x, 41061u, 0u, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = abs(u_input.b.zz);
    let var_3 = func_4(vec4<u32>(~(~(~3309u)), 1u, _wgslsmith_dot_vec2_u32(~firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u, 31u)]), reverseBits(abs(vec2<u32>(u_input.c.x, 72688u)))), var_1.x), all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), func_1(vec2<u32>(1u, u_input.c.x), var_0, true)), func_1(~global2[_wgslsmith_index_u32(1u, 31u)], var_0, true), vec2<bool>(true, true))));
    global3 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(58018i, 0i, 31640i, u_input.d), vec4<i32>(var_2.x, var_2.x, 0i, -2147483647i)), ~vec4<i32>(-2147483647i, u_input.b.x, 0i, -3186i)) << ((var_3.b.x & ~(~var_1.x)) % 32u), _wgslsmith_f_op_vec3_f32(global4.a * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(global4.d.ywy)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c, global4.d.x, 996f)))))), abs(~var_1.wxw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -639f, var_3.a.x, -1269f))))));
}

