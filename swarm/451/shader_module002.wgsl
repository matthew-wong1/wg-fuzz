struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18>;

var<private> global1: Struct_3;

var<private> global2: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(-50639i, 7835i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32, arg_3: i32) -> Struct_1 {
    global1 = Struct_3(arg_0, global1.c.a, global1.c);
    global0 = array<vec2<u32>, 18>();
    let var_0 = global1.a.a.x;
    global0 = array<vec2<u32>, 18>();
    global1 = Struct_3(arg_0, arg_3, global1.c);
    return Struct_1(vec3<bool>(!arg_1.x, any(vec4<bool>(false | arg_1.x, false, all(vec4<bool>(false, arg_0.a.x, arg_0.a.x, arg_1.x)), !arg_0.a.x)), arg_1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.a.b - _wgslsmith_f_op_f32(530f + global1.a.b)))))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_2(func_2(func_2(Struct_1(vec3<bool>(arg_1, arg_0, global1.a.a.x), 196f), vec2<bool>(false, false), 0u, -35828i), vec2<bool>(true, true), ~u_input.a.x, -38240i), arg_2.a.yy, firstTrailingBit(u_input.c), i32(-1i) * -2147483647i).b * _wgslsmith_f_op_f32(-arg_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.b * -1227f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(round(arg_2.b)))))));
    var var_1 = abs(vec3<u32>(u_input.c, abs(~(~u_input.a.x)), _wgslsmith_mod_u32(u_input.a.x, 57424u)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.b)) + -1058f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a.b))), var_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b + -679f) - arg_2.b)), _wgslsmith_div_f32(2206f, _wgslsmith_f_op_f32(sign(arg_2.b))), (~1u != var_1.x) && arg_1)));
    var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1249f) + -467f), _wgslsmith_f_op_f32(-921f - arg_2.b))));
    global1 = Struct_3(Struct_1(vec3<bool>(!arg_2.a.x, all(select(global1.a.a, global1.a.a, vec3<bool>(arg_2.a.x, arg_0, true))), arg_1 & all(vec2<bool>(true, arg_0))), arg_2.b), -16485i, global1.c);
    return global1.c;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = false;
    var var_1 = Struct_3(func_2(func_2(Struct_1(!global1.a.a, 1135f), global1.a.a.yy, arg_2.x, _wgslsmith_dot_vec3_i32(u_input.b.zxz, u_input.b.xzy)), global1.a.a.xy, u_input.c, _wgslsmith_mod_i32((i32(-1i) * -1i) | u_input.d, func_3(true, var_0, Struct_1(vec3<bool>(false, global1.a.a.x, true), 1140f)).a ^ u_input.d)), _wgslsmith_dot_vec2_i32(u_input.b.ww, abs(_wgslsmith_div_vec2_i32(global2[_wgslsmith_index_u32(0u, 1u)], reverseBits(u_input.b.yy)))), Struct_2(u_input.b.x));
    var_1 = Struct_3(var_1.a, reverseBits(-2147483647i), arg_1);
    global0 = array<vec2<u32>, 18>();
    global0 = array<vec2<u32>, 18>();
    return Struct_3(func_2(Struct_1(select(func_2(Struct_1(vec3<bool>(false, global1.a.a.x, global1.a.a.x), var_1.a.b), global1.a.a.xy, u_input.a.x, var_1.b).a, func_2(Struct_1(vec3<bool>(var_0, global1.a.a.x, true), -2109f), global1.a.a.xx, u_input.c, 38701i).a, all(global1.a.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(449f, -766f) - -153f)), select(vec2<bool>(any(vec3<bool>(true, var_0, var_0)), true), global1.a.a.zz, !(!var_1.a.a.zy)), ~1u, -31310i), abs(~46717i | _wgslsmith_div_i32(abs(3585i), countOneBits(global1.c.a))), func_3(var_1.a.a.x, global1.a.a.x, func_2(Struct_1(select(var_1.a.a, vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(-237f + var_1.a.b)), vec2<bool>(any(var_1.a.a.zx), var_1.a.a.x), ~(~u_input.c), -2147483647i)));
}

fn func_1(arg_0: u32) -> vec2<i32> {
    global1 = func_4(global1.a.b, func_3(any(!(!vec3<bool>(true, global1.a.a.x, false))), !any(select(vec3<bool>(global1.a.a.x, false, false), global1.a.a, vec3<bool>(global1.a.a.x, global1.a.a.x, true))), func_2(Struct_1(global1.a.a, _wgslsmith_f_op_f32(global1.a.b * 1155f)), vec2<bool>(select(true, true, global1.a.a.x), true), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(49729u, u_input.a.x, u_input.c, 0u), vec4<u32>(arg_0, 44155u, arg_0, 1u)), ~u_input.c), -_wgslsmith_mod_i32(28542i, global1.b))), firstTrailingBit(abs(~vec4<u32>(arg_0, u_input.a.x, 35808u, 4294967295u)) ^ _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, arg_0, arg_0, 57339u), vec4<u32>(u_input.c, 6442u, arg_0, arg_0)), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.c, u_input.c, 28418u)))));
    global0 = array<vec2<u32>, 18>();
    let var_0 = global1.a.a.x;
    var var_1 = firstTrailingBit(arg_0) << (reverseBits(firstTrailingBit(1u)) % 32u);
    let var_2 = 0i;
    return _wgslsmith_mult_vec2_i32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(u_input.a.x), ~39876u | ~u_input.a.x), 1u)], select(select(global2[_wgslsmith_index_u32(abs(u_input.c), 1u)], vec2<i32>(-30933i, -10763i), global1.a.a.x && false), _wgslsmith_add_vec2_i32(-u_input.b.zz, u_input.b.xy), false && global1.a.a.x)) ^ ~(vec2<i32>(min(-1i, 2147483647i), -1i) >> (u_input.a.yx % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 18>();
    global2 = array<vec2<i32>, 1>();
    let var_0 = global1.c;
    global1 = Struct_3(global1.a, -6542i, Struct_2(min(-(global1.b >> (7519u % 32u)), -2147483647i)));
    var var_1 = -256f;
    global0 = array<vec2<u32>, 18>();
    let var_2 = select(global1.a.a, global1.a.a, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -679f)) < global1.a.b) || false);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b * 702f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.a.b, global1.a.b), vec2<f32>(-2350f, -1515f), true)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1228f, -162f) + vec2<f32>(global1.a.b, 105f)))))), func_2(Struct_1(global1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-369f)))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1590f)), global1.c, _wgslsmith_mult_vec4_u32(vec4<u32>(9157u, u_input.c, 38889u, 41096u), firstTrailingBit(vec4<u32>(u_input.c, 0u, 81988u, 1u)))).a.a.xy, 18218u, min(2147483647i, 528i)).b);
}

