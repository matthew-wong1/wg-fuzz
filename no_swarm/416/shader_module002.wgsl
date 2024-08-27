struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-859f, 222f, -1529f), vec3<f32>(-302f, 1000f, -1000f), vec3<f32>(1000f, -305f, 1111f));

var<private> global1: f32;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false, 4294967295u), Struct_1(false, 52234u), Struct_1(true, 0u), Struct_1(true, 9539u), Struct_1(true, 49560u), Struct_1(false, 4294967295u), Struct_1(true, 4294967295u), Struct_1(true, 39878u), Struct_1(true, 1u), Struct_1(true, 4294967295u), Struct_1(false, 16480u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<f32> {
    global0 = array<vec3<f32>, 3>();
    let var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, u_input.a, u_input.a, 1i), ~vec4<i32>(u_input.b.x, -1i, u_input.b.x, 13047i), -vec4<i32>(u_input.b.x, 1i, -1i, 31897i)) | ~(~vec4<i32>(1095i, u_input.b.x, -2147483647i, 46655i)), vec4<i32>(reverseBits(u_input.a) << (u_input.c % 32u), 46091i, ~u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, -21454i), vec4<i32>(u_input.a, -42070i, u_input.b.x, u_input.b.x)), select(u_input.b, vec4<i32>(u_input.b.x, -5346i, 21779i, 0i), vec4<bool>(global2.a, false, true, global2.a)))), vec4<i32>(-(~u_input.a), u_input.a, 35695i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(-29076i, u_input.a, u_input.b.x)))), vec4<i32>(u_input.b.x | ~u_input.b.x, 1i, _wgslsmith_dot_vec2_i32(-u_input.b.yx, u_input.b.ww), u_input.a), ~vec4<i32>(u_input.b.x, _wgslsmith_add_i32(u_input.a, 50050i) | u_input.a, -u_input.b.x, -countOneBits(-39301i)));
    global0 = array<vec3<f32>, 3>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1923f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))), 959f))));
    global3 = array<Struct_1, 11>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.zx, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(arg_0.yx)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_1)))), vec2<bool>(any(arg_3.xz), global2.a))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(arg_0.yx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 191f) + _wgslsmith_f_op_vec2_f32(ceil(arg_0.xy)))))));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> bool {
    var var_0 = global2.a;
    let var_1 = 0u;
    global1 = -696f;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-506f, -1350f, 1282f)), select(vec4<bool>(arg_0, false, true, true), vec4<bool>(false, true, true, arg_0), arg_0), arg_3, select(vec3<bool>(arg_3.a, false, global2.a), vec3<bool>(true, false, true), vec3<bool>(global2.a, arg_3.a, true))))))));
    let var_3 = select(!vec4<bool>(true, any(!vec3<bool>(true, true, global2.a)), true, arg_0), select(!select(vec4<bool>(arg_0, false, true, false), select(vec4<bool>(true, true, false, global2.a), vec4<bool>(arg_3.a, false, arg_3.a, arg_3.a), vec4<bool>(true, true, arg_0, global2.a)), false), !(!(!vec4<bool>(arg_0, arg_0, false, true))), !(var_2.x > _wgslsmith_f_op_f32(max(var_2.x, -1143f)))), all(!(!select(vec2<bool>(global2.a, arg_0), vec2<bool>(arg_3.a, global2.a), global2.a))));
    return !(true & (all(select(var_3, var_3, var_3)) != true));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: f32) -> Struct_1 {
    var var_0 = 53859i;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + arg_2) * _wgslsmith_f_op_f32(-arg_2)))))));
    let var_2 = Struct_1(all(arg_1.zzy), ~(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(1u, 15467u, 4294967295u, 1u)), max(u_input.c, 77691u), abs(global2.b)) | u_input.c));
    global2 = var_2;
    var var_3 = arg_0;
    return Struct_1(true, u_input.c | _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, var_2.b), _wgslsmith_div_u32(var_2.b, 16389u), 1u, ~var_2.b), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c, global2.b, global2.b, 4294967295u), vec4<u32>(65585u, 14604u, u_input.c, global2.b) >> (vec4<u32>(global2.b, global2.b, var_2.b, 83530u) % vec4<u32>(32u)))));
}

fn func_1() -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(~u_input.c, 11u)];
    global0 = array<vec3<f32>, 3>();
    let var_1 = func_4(var_0.a, !vec4<bool>(all(!vec4<bool>(global2.a, true, var_0.a, global2.a)), var_0.a, func_2(true, u_input.b.xww, ~vec3<u32>(34690u, 30403u, 1u), global3[_wgslsmith_index_u32(29060u, 11u)]), !(!var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -397f)));
    var var_2 = vec2<f32>(-894f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1141f * -573f), _wgslsmith_f_op_f32(-789f * 1173f), var_1.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -640f), -966f))));
    var var_3 = var_1;
    return Struct_1(!global2.a, ~(_wgslsmith_div_u32(~global2.b, u_input.c) | ~firstLeadingBit(var_3.b)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec3<f32>, 3>();
    let var_0 = u_input.b.x;
    global3 = array<Struct_1, 11>();
    let var_1 = -(i32(-1i) * -(~38575i)) >> (firstLeadingBit(reverseBits(~54730u)) % 32u);
    return func_4(true, select(vec4<bool>((0u != u_input.c) | true, false, true, func_1().a), vec4<bool>(any(!vec4<bool>(false, arg_1.a, arg_2.a, arg_1.a)), func_4(true, vec4<bool>(false, arg_0.a, true, true), 486f).a, arg_2.a, false), !arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-276f)) - -739f) - _wgslsmith_f_op_f32(-212f * -157f)) * 782f));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    global3 = array<Struct_1, 11>();
    let var_0 = max(~arg_1, reverseBits(u_input.b.x) | 0i);
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(arg_2.b, 3u)] + global0[_wgslsmith_index_u32(81565u, 3u)]), !vec4<bool>(arg_3.a, true, arg_3.a, arg_3.a), func_1(), vec3<bool>(true, true, true))).x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-658f, -467f, arg_3.a)), -462f))), _wgslsmith_f_op_f32(-1112f + _wgslsmith_f_op_f32(abs(863f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -769f) - _wgslsmith_f_op_f32(max(-1027f, -1551f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(158f, 258f)) + _wgslsmith_f_op_f32(min(-835f, 1084f)))))));
    global3 = array<Struct_1, 11>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(4294967295u, 3u)], vec4<bool>(false, false, false, arg_3.a), Struct_1(true, 1u), vec3<bool>(true, global2.a, false))).x * _wgslsmith_div_f32(-872f, 1000f)) * _wgslsmith_f_op_f32(round(1f))))));
    return !vec3<bool>(true, true, !any(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_6(Struct_1(!global2.a, abs(71855u)), _wgslsmith_mod_i32(1i, abs(u_input.a)) | -_wgslsmith_mult_i32(0i, u_input.a), func_5(Struct_1(false, abs(global2.b)), func_1(), Struct_1(global2.a, global2.b)), global3[_wgslsmith_index_u32(global2.b, 11u)]), select(!select(!vec3<bool>(false, global2.a, global2.a), vec3<bool>(false, false, true), vec3<bool>(global2.a, global2.a, false)), vec3<bool>(global2.a, true, true), func_6(func_1(), -22356i, Struct_1(false, ~1u), global3[_wgslsmith_index_u32(~(~35327u), 11u)])), true);
    var var_1 = !(_wgslsmith_add_i32(1i, u_input.b.x | u_input.a) == u_input.b.x);
    var var_2 = abs(78450u);
    var var_3 = false;
    let var_4 = global3[_wgslsmith_index_u32(u_input.c, 11u)];
    let var_5 = func_1();
    let var_6 = Struct_1(var_0.x, _wgslsmith_mult_u32(func_5(global3[_wgslsmith_index_u32(func_1().b, 11u)], var_5, func_5(var_5, var_5, Struct_1(var_5.a, 0u))).b, 39934u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(abs(countOneBits(vec4<u32>(u_input.c, u_input.c, global2.b, var_4.b))), ~(~vec4<u32>(1u, 12787u, u_input.c, 48767u))), ~abs(~(~vec3<u32>(u_input.c, 7575u, 1145u))), _wgslsmith_add_u32(4294967295u, 0u >> (firstLeadingBit(var_5.b) % 32u)), vec2<i32>(abs(u_input.b.x) ^ 0i, firstLeadingBit(_wgslsmith_mod_i32(0i, u_input.a))) & vec2<i32>(_wgslsmith_sub_i32(u_input.b.x, 1i) | -53016i, u_input.a & 1i), 13948u);
}

