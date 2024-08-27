struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10>;

var<private> global1: array<i32, 12> = array<i32, 12>(0i, 2147483647i, -13127i, 37645i, 0i, -51466i, i32(-2147483648), -1i, 74526i, i32(-2147483648), -20114i, 40979i);

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(1020f, vec3<i32>(1436i, i32(-2147483648), -12309i), vec4<i32>(i32(-2147483648), -27738i, 0i, 1i), true, vec4<i32>(-1648i, 32228i, i32(-2147483648), i32(-2147483648))), Struct_1(-444f, vec3<i32>(47004i, i32(-2147483648), -34731i), vec4<i32>(-38381i, -1i, 20743i, 10265i), true, vec4<i32>(0i, 0i, 21829i, 2147483647i)), Struct_1(1680f, vec3<i32>(i32(-2147483648), 41167i, 886i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 0i), true, vec4<i32>(-65553i, 46144i, -34367i, 75158i)), Struct_1(538f, vec3<i32>(-7286i, 0i, -47931i), vec4<i32>(-11392i, i32(-2147483648), -7621i, -38133i), false, vec4<i32>(0i, i32(-2147483648), 2147483647i, i32(-2147483648))), Struct_1(664f, vec3<i32>(2147483647i, 2147483647i, -1i), vec4<i32>(-1i, -27489i, 15067i, 2147483647i), false, vec4<i32>(2147483647i, 28187i, 1i, -6274i)), Struct_1(440f, vec3<i32>(8727i, -1i, 0i), vec4<i32>(34946i, -74676i, -1i, -53777i), true, vec4<i32>(-6343i, -1i, 1i, -12034i)), Struct_1(-1134f, vec3<i32>(59763i, -1i, 1i), vec4<i32>(2332i, -4370i, 1i, -16181i), true, vec4<i32>(-1i, -47118i, 22211i, -1i)), Struct_1(-421f, vec3<i32>(i32(-2147483648), 2147483647i, 41922i), vec4<i32>(-1i, -54804i, 1i, 1i), false, vec4<i32>(-50402i, 20196i, 2147483647i, -34224i)));

var<private> global3: array<Struct_1, 5>;

var<private> global4: i32 = 50040i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-548f + -1402f), arg_1.a), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a))))));
    let var_1 = arg_1.b;
    let var_2 = arg_1;
    global4 = -2147483647i;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a))), ~(-vec3<i32>(firstLeadingBit(1i), -2147483647i, u_input.b)), vec4<i32>((-2147483647i << (u_input.c % 32u)) & -_wgslsmith_dot_vec2_i32(arg_0, u_input.a.zy), u_input.b, -(arg_1.c.x >> (u_input.d % 32u)), 0i), false & (any(vec4<bool>(var_2.d, var_2.d, arg_1.d, true)) & arg_1.d), vec4<i32>(-_wgslsmith_add_i32(u_input.b, -2147483647i) | global1[_wgslsmith_index_u32(u_input.d, 12u)], _wgslsmith_clamp_i32(~var_2.e.x, _wgslsmith_mod_i32(~2147483647i, 2147483647i), -6917i), var_2.e.x, -2147483647i));
    return var_2;
}

fn func_1(arg_0: bool) -> vec3<u32> {
    global1 = array<i32, 12>();
    var var_0 = vec4<bool>(!arg_0, false, arg_0, true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(390f, 583f)));
    global4 = 2147483647i >> (u_input.c % 32u);
    var var_2 = func_2(u_input.a.yy, global2[_wgslsmith_index_u32(u_input.d, 8u)]);
    return ~(vec3<u32>(1u, ~reverseBits(u_input.c), u_input.d) >> (vec3<u32>(1u, u_input.c, (u_input.c >> (u_input.d % 32u)) >> (u_input.d % 32u)) % vec3<u32>(32u)));
}

fn func_3(arg_0: vec3<u32>) -> vec4<u32> {
    var var_0 = select(!(!vec3<bool>(true, true, func_2(u_input.a.xx, global3[_wgslsmith_index_u32(u_input.c, 5u)]).d)), vec3<bool>(true, any(vec3<bool>(true, true, true)), 1u <= ~u_input.c), select(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), func_2(u_input.a.wz, global2[_wgslsmith_index_u32(arg_0.x, 8u)]).d));
    var var_1 = vec2<bool>(var_0.x || (min(31482i, ~u_input.a.x) == -2499i), 76044u <= ~arg_0.x);
    var var_2 = vec2<bool>(func_2(u_input.a.zz, global2[_wgslsmith_index_u32(abs(1u), 8u)]).d, any(select(!select(vec3<bool>(false, var_1.x, var_0.x), vec3<bool>(var_0.x, true, false), false), vec3<bool>(any(vec4<bool>(true, true, var_1.x, var_0.x)), any(vec3<bool>(var_1.x, var_1.x, var_0.x)), 61370u <= arg_0.x), vec3<bool>(true, var_0.x, any(vec4<bool>(var_0.x, var_0.x, false, var_0.x))))));
    let var_3 = global3[_wgslsmith_index_u32(~1u, 5u)];
    var var_4 = vec3<i32>(var_3.c.x, global1[_wgslsmith_index_u32(39887u, 12u)], 1i);
    return select(vec4<u32>(_wgslsmith_mod_u32(~(~4294967295u), ~1u), arg_0.x, firstLeadingBit(arg_0.x), ~_wgslsmith_clamp_u32(0u, reverseBits(u_input.d), select(arg_0.x, arg_0.x, false))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(arg_0.x, 62381u, 1u, arg_0.x) >> (vec4<u32>(1u, 23523u, u_input.d, 76417u) % vec4<u32>(32u)), vec4<u32>(arg_0.x, 0u, u_input.c, 6889u), !var_3.d), select(vec4<u32>(arg_0.x, 0u, u_input.d, 0u) ^ vec4<u32>(arg_0.x, arg_0.x, u_input.c, arg_0.x), ~vec4<u32>(1u, 10231u, u_input.c, arg_0.x), select(vec4<bool>(var_1.x, false, false, var_2.x), vec4<bool>(false, false, var_3.d, var_0.x), vec4<bool>(true, true, var_2.x, var_0.x)))), min(vec4<u32>(arg_0.x, ~10919u, _wgslsmith_add_u32(0u, u_input.d), 15039u ^ u_input.c), ~(~vec4<u32>(76701u, u_input.d, 2936u, 0u)))), vec4<bool>(true, false, true & any(vec4<bool>(true, false, var_3.d, false)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_3(_wgslsmith_add_vec3_u32(~func_1(false), vec3<u32>(abs(u_input.d), _wgslsmith_add_u32(1u, u_input.c), u_input.d)));
    global0 = array<vec3<i32>, 10>();
    let var_1 = vec3<bool>(all(vec4<bool>(false, all(vec2<bool>(false, false)), !any(vec3<bool>(true, true, false)), true)), true, true);
    global0 = array<vec3<i32>, 10>();
    let var_2 = (1i & ~_wgslsmith_mult_i32(u_input.b, u_input.a.x)) > 1i;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(274f))), _wgslsmith_f_op_f32(f32(-1f) * -1116f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(u_input.a.xy, Struct_1(-1000f, global0[_wgslsmith_index_u32(u_input.d, 10u)], u_input.a, false, vec4<i32>(global1[_wgslsmith_index_u32(44198u, 12u)], global1[_wgslsmith_index_u32(54659u, 12u)], u_input.b, 2147483647i))).a + -399f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(106f)))))));
    var var_4 = vec3<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1341f - _wgslsmith_f_op_f32(round(var_3.x)))), 414f);
    var var_5 = var_4.x;
    let var_6 = 4109i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.x), u_input.c, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(531f, -345f, 200f, 581f), vec4<f32>(var_3.x, var_3.x, var_4.x, var_4.x)))))))));
}

