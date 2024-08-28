struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true));

var<private> global1: array<vec2<f32>, 16>;

var<private> global2: Struct_2 = Struct_2(true, Struct_1(false), Struct_1(true), Struct_1(false), vec4<f32>(-519f, -769f, 159f, 1411f));

var<private> global3: i32;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.e.x))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1145f - arg_0.e.x), _wgslsmith_f_op_f32(floor(arg_0.e.x)), var_0.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(273f, 460f, var_0.a)) + _wgslsmith_f_op_f32(func_3())))), global2.e.x);
    let var_2 = vec4<u32>(~arg_1.x, 26020u, arg_1.x, arg_1.x);
    global1 = array<vec2<f32>, 16>();
    let var_3 = !(!vec3<bool>(var_2.x != firstLeadingBit(arg_1.x), (arg_1.x ^ 38204u) >= ~89387u, !var_0.b.a));
    return global2.d;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    global2 = Struct_2(global2.d.a, Struct_1((~u_input.b.x > ~4508u) && true), Struct_1(true), arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.e) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1533f, -216f, global2.e.x, arg_1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-465f, arg_1.x, 3050f, arg_1.x), global2.e)) * arg_1))));
    let var_0 = countOneBits(_wgslsmith_sub_vec2_i32(~(-vec2<i32>(0i, -1i)), countOneBits(vec2<i32>(-2147483647i, 1i)))) >> (select(~select(u_input.b, reverseBits(vec2<u32>(13185u, 4294967295u)), false), abs(u_input.b) ^ _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.c.x, 0u)), u_input.b), select(!(!vec2<bool>(global2.b.a, arg_0.a)), vec2<bool>(global2.e.x <= global2.e.x, all(vec2<bool>(global2.b.a, false))), false)) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(func_3());
    let var_2 = _wgslsmith_f_op_f32(193f + global2.e.x);
    return var_2;
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.e.x), 618f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(func_2(Struct_2(false, global0[_wgslsmith_index_u32(u_input.c.x, 15u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global2.e), u_input.b), global2.e, func_2(Struct_2(false, global2.b, global0[_wgslsmith_index_u32(u_input.c.x, 15u)], Struct_1(true), global2.e), u_input.a.xy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-global2.e.x)), func_2(Struct_2(false, Struct_1(global2.b.a), Struct_1(arg_0), global0[_wgslsmith_index_u32(u_input.b.x, 15u)], vec4<f32>(223f, -997f, global2.e.x, -102f)), vec2<u32>(27891u, u_input.b.x)).a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e.x))))));
    var var_1 = (~_wgslsmith_mult_i32(min(20715i, -12960i), 22332i >> (0u % 32u)) ^ firstLeadingBit(~select(-15066i, 4506i, false))) <= -(~_wgslsmith_add_i32(i32(-1i) * -3584i, 1i));
    let var_2 = ~(~u_input.c);
    global2 = Struct_2(any(!select(vec4<bool>(true, arg_0, global2.a, global2.a), vec4<bool>(arg_0, arg_0, true, arg_0), false)), func_2(Struct_2((39204i << (var_2.x % 32u)) > 1i, global2.c, Struct_1(any(vec2<bool>(global2.b.a, false))), Struct_1(true), vec4<f32>(_wgslsmith_f_op_f32(-1525f + var_0.x), -1107f, -1116f, -313f)), _wgslsmith_sub_vec2_u32(vec2<u32>(~14650u, var_2.x), abs(vec2<u32>(0u, u_input.a.x)))), func_2(Struct_2(true, func_2(Struct_2(false, Struct_1(arg_0), global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global2.c, global2.e), abs(vec2<u32>(1u, var_2.x))), Struct_1(any(vec4<bool>(global2.a, false, false, arg_0))), func_2(Struct_2(global2.a, global2.b, Struct_1(false), Struct_1(false), vec4<f32>(246f, var_0.x, -2641f, 456f)), _wgslsmith_add_vec2_u32(var_2.xy, vec2<u32>(var_2.x, var_2.x))), global2.e), ~(~(~var_2.zx))), func_2(Struct_2(all(vec2<bool>(true, false)), func_2(Struct_2(global2.c.a, global2.c, global2.c, Struct_1(arg_0), global2.e), min(u_input.b, vec2<u32>(26193u, var_2.x))), global0[_wgslsmith_index_u32(8030u, 15u)], Struct_1(global2.a && arg_0), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -1373f, _wgslsmith_f_op_f32(var_0.x * -976f), 1005f)), firstLeadingBit(u_input.a.yy)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global2.e)), vec4<f32>(global2.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x)), global2.e.x, _wgslsmith_f_op_f32(f32(-1f) * -215f))));
    var var_3 = global2.d;
    return true || !any(select(!vec4<bool>(true, false, arg_0, false), !vec4<bool>(arg_0, false, global2.c.a, false), vec4<bool>(arg_0, global2.c.a, global2.b.a, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    var var_0 = (u_input.c & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, countOneBits(4294967295u), u_input.b.x | u_input.a.x), firstLeadingBit(countOneBits(vec4<u32>(22155u, u_input.b.x, 1u, u_input.b.x))))) >> ((~vec4<u32>(325u, ~0u, u_input.a.x, ~4294967295u) ^ u_input.c) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(global2.e.zyx));
    var var_2 = select(!vec2<bool>(true, -240f <= var_1.x), select(select(!(!vec2<bool>(true, global2.c.a)), vec2<bool>(global2.d.a, func_1(false)), vec2<bool>(func_2(Struct_2(false, global0[_wgslsmith_index_u32(1u, 15u)], Struct_1(false), Struct_1(true), global2.e), u_input.b).a, func_1(global2.a))), vec2<bool>(true, global2.a), global2.c.a), vec2<bool>(true, false));
    let var_3 = Struct_1(false);
    var var_4 = _wgslsmith_f_op_vec3_f32(ceil(global2.e.wyw));
    var var_5 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) != var_1.x, func_2(Struct_2(false, Struct_1(true), var_3, global0[_wgslsmith_index_u32(~10547u >> ((16691u ^ u_input.b.x) % 32u), 15u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(2347f, global2.e.x, 1056f, global2.e.x) * _wgslsmith_f_op_vec4_f32(floor(global2.e)))), u_input.c.yw), global0[_wgslsmith_index_u32(0u, 15u)], var_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.e + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(global2.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-183f, global2.e.x, -949f, global2.e.x)), !global2.d.a)))));
    let var_6 = any(!(!(!vec2<bool>(global2.b.a, true))));
    global0 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, -32853i), vec3<i32>(0i, -9547i, -2147483647i)), -2147483647i)), -_wgslsmith_mult_i32(-36335i, _wgslsmith_add_i32(-14650i, -15888i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(-1062i, 36112i, 36160i, 0i), ~vec4<i32>(22962i, 32348i, 37944i, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 2793i, 2147483647i), vec4<i32>(-2147483647i, 17694i, 10542i, -37370i), reverseBits(vec4<i32>(-2147483647i, 45784i, 2147483647i, 1i))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-834f, _wgslsmith_f_op_f32(-global2.e.x)) - var_5.e.zy) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(global2.e.zz)), _wgslsmith_f_op_vec2_f32(var_5.e.ww - _wgslsmith_f_op_vec2_f32(-vec2<f32>(275f, -127f))), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(950f, _wgslsmith_div_f32(var_5.e.x, var_1.x), var_6)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -747f))), true))));
}

