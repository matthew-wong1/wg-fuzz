struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(42475i, 1i, 28770i), vec3<i32>(50562i, 30384i, 14368i), vec3<i32>(45891i, 0i, 0i), vec3<i32>(53436i, 26457i, 0i), vec3<i32>(0i, -17340i, -53837i), vec3<i32>(37924i, -11385i, -12606i), vec3<i32>(19843i, 14420i, 13708i), vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(-15416i, -20203i, 0i));

var<private> global2: Struct_1 = Struct_1(true, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = u_input.e;
    let var_1 = 32581i;
    var var_2 = firstLeadingBit(-(abs(_wgslsmith_add_vec4_i32(vec4<i32>(10549i, var_0.x, u_input.d.x, 16474i), vec4<i32>(var_1, 1i, 33719i, var_0.x))) | countOneBits(-u_input.e)));
    let var_3 = Struct_1(all(!(!(!vec3<bool>(true, global2.a, global2.a)))), true);
    var var_4 = Struct_1(any(!vec4<bool>(true, true, false, !global2.b)), all(!(!select(vec2<bool>(global2.b, false), vec2<bool>(global2.b, var_3.b), vec2<bool>(false, true)))));
    return !select(select(!vec4<bool>(false, var_3.a, false, global2.a), vec4<bool>(var_4.b, true, all(vec2<bool>(false, var_4.a)), all(vec4<bool>(false, false, var_4.a, global2.a))), !vec4<bool>(global2.a, false, true, global2.a)), !select(!vec4<bool>(var_4.a, global2.a, var_4.a, global2.b), !vec4<bool>(global2.b, false, true, var_3.a), vec4<bool>(true, false, false, var_4.a)), vec4<bool>(false || all(vec4<bool>(var_4.b, var_3.a, false, false)), !var_4.a, any(select(vec4<bool>(global2.b, var_4.b, global2.a, false), vec4<bool>(false, true, var_4.a, false), vec4<bool>(var_4.b, false, var_4.b, var_3.b))), any(select(vec2<bool>(true, var_3.b), vec2<bool>(var_3.a, global2.b), var_3.b))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 20>();
    var var_0 = select(vec4<bool>(false, true, all(vec2<bool>(global2.a, global2.a)) || !any(vec2<bool>(arg_0.a, global2.b)), reverseBits(64106u) >= (~4294967295u ^ ~u_input.b)), !(!select(func_3(), select(vec4<bool>(arg_0.b, false, false, arg_0.b), vec4<bool>(true, arg_0.b, true, global2.b), false), true)), !vec4<bool>(global2.b, global2.b, global2.a, true));
    var var_1 = arg_0;
    var var_2 = any(vec4<bool>(all(vec4<bool>(0u < u_input.a, true, true, any(var_0.yxw))), false, !arg_0.b, var_0.x));
    global2 = global0[_wgslsmith_index_u32(1u, 20u)];
    return global0[_wgslsmith_index_u32(~(~(~_wgslsmith_add_u32(select(u_input.a, u_input.a, arg_0.a), _wgslsmith_dot_vec3_u32(vec3<u32>(29957u, 53130u, u_input.b), vec3<u32>(u_input.b, u_input.c, 0u))))), 20u)];
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global0 = array<Struct_1, 20>();
    global2 = global0[_wgslsmith_index_u32(arg_1, 20u)];
    var var_0 = arg_3;
    var var_1 = func_2(Struct_1(true, true));
    var var_2 = Struct_1(!all(!vec3<bool>(arg_2.a, false, arg_2.a)) | !any(select(vec3<bool>(var_1.b, var_1.a, true), vec3<bool>(true, global2.a, var_1.a), arg_2.b)), var_1.a);
    return func_2(func_2(Struct_1(func_3().x, true)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> vec2<bool> {
    global0 = array<Struct_1, 20>();
    let var_0 = arg_0;
    global0 = array<Struct_1, 20>();
    var var_1 = arg_0.a;
    global0 = array<Struct_1, 20>();
    return func_3().xw;
}

fn func_5(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<f32>, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_1 = arg_1;
    global2 = Struct_1(true, any(!vec4<bool>(arg_0.x, true, false, arg_0.x)) && (u_input.d.x < 1i));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xz), var_0.xz))));
    let var_3 = Struct_1(arg_0.x, (_wgslsmith_f_op_f32(-var_2.x) < -924f) | !(!all(vec3<bool>(global2.b, true, global2.b))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 20u)];
    global2 = func_5(func_4(func_1(u_input.e.x, firstTrailingBit(~32586u), global0[_wgslsmith_index_u32(1u, 20u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -784f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1425f, -1323f)) - _wgslsmith_div_f32(2131f, -1181f)))), _wgslsmith_f_op_f32(trunc(1023f))), u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(542f, -2058f), vec2<f32>(-592f, 872f), vec2<bool>(false, var_0.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-737f, 431f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) + vec2<f32>(_wgslsmith_div_f32(-597f, 1512f), 911f))), ~reverseBits(u_input.a));
    global0 = array<Struct_1, 20>();
    let var_1 = _wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(29039u, 25283u, u_input.b, 4294967295u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, u_input.c), vec4<u32>(u_input.c, u_input.b, 0u, 50077u)), firstLeadingBit(4294967295u), 4294967295u, u_input.b))), ~abs(_wgslsmith_div_vec4_u32(vec4<u32>(66512u, 1u, 56969u, 13703u), vec4<u32>(u_input.b, 63390u, u_input.a, 9100u))) & abs(~countOneBits(vec4<u32>(0u, 88242u, u_input.b, u_input.c))));
    global0 = array<Struct_1, 20>();
    var var_2 = Struct_1(true, all(select(vec4<bool>(!var_0.a, var_0.b, u_input.c >= var_1.x, !var_0.a), !vec4<bool>(false, false, var_0.b, global2.a), _wgslsmith_f_op_f32(step(1868f, 1000f)) < _wgslsmith_f_op_f32(f32(-1f) * -514f))));
    global2 = global0[_wgslsmith_index_u32(min(0u, u_input.c | 1u), 20u)];
    var_2 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-380f - _wgslsmith_f_op_f32(1521f + -542f)), -202f)) == _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(755f, -1000f))), func_1(-73392i, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x ^ 0u, u_input.a, u_input.a, _wgslsmith_div_u32(1u, u_input.b)), var_1 ^ _wgslsmith_add_vec4_u32(var_1, vec4<u32>(11807u, u_input.b, 4294967295u, var_1.x))), func_2(global0[_wgslsmith_index_u32(var_1.x, 20u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1435f, 1118f)))))).b);
    var var_3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(-1078f, 499f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-207f, -795f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(286f, -2398f), vec2<f32>(-255f, -2358f), vec2<bool>(true, true)))))), vec4<u32>(42335u, ~u_input.b, var_1.x << (u_input.c % 32u), 0u), vec3<u32>(_wgslsmith_dot_vec2_u32(var_1.ww, var_1.yy >> (var_1.wy % vec2<u32>(32u))), 53852u, ~(_wgslsmith_add_u32(u_input.b, var_1.x) | ~u_input.c)), reverseBits(vec4<i32>(min(u_input.e.x, u_input.d.x), u_input.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(25493i, u_input.e.x, u_input.d.x), vec3<i32>(62703i, -52077i, u_input.e.x)), u_input.e.x << (7194u % 32u))) >> (~(~var_1) % vec4<u32>(32u)));
}

