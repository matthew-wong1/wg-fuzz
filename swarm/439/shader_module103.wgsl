struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 26>;

var<private> global1: f32;

var<private> global2: Struct_3;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_3) -> vec3<i32> {
    var var_0 = abs(~firstTrailingBit(~arg_0) << (~(~vec2<u32>(2333u, arg_0.x)) % vec2<u32>(32u)));
    let var_1 = (true && any(!vec2<bool>(true, arg_2.a))) && ((arg_2.e.x >> ((var_0.x >> (43183u % 32u)) % 32u)) != -1i);
    var var_2 = ~11423i;
    var_0 = u_input.b.wy;
    global2 = Struct_3(!any(select(select(vec2<bool>(true, arg_2.a), vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(var_1, true)), vec2<bool>(true, true), vec2<bool>(true, true))), false, arg_2.c, u_input.a, firstLeadingBit(vec4<i32>(~1i, ~global2.e.x, ~max(17039i, u_input.a), global2.d)));
    return _wgslsmith_sub_vec3_i32(max(-vec3<i32>(-2147483647i & global2.d, u_input.a, -1i), ~(-(vec3<i32>(-1i, 2147483647i, u_input.a) << (vec3<u32>(4795u, arg_0.x, 0u) % vec3<u32>(32u))))), vec3<i32>(-1i, 1i << (var_0.x % 32u), u_input.a ^ min(59634i, countOneBits(u_input.a))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> vec4<bool> {
    var var_0 = arg_0.b;
    var_0 = arg_0.b;
    let var_1 = Struct_3(true, true, global2.c, arg_1.x, -_wgslsmith_mult_vec4_i32(select(~vec4<i32>(arg_1.x, 2905i, arg_1.x, 30335i), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, arg_1.x, -2147483647i, global2.e.x), vec4<i32>(arg_1.x, u_input.a, arg_1.x, -22515i)), any(vec3<bool>(true, global2.b, true))), global2.e));
    var var_2 = !vec3<bool>(!(!any(vec2<bool>(global2.a, true))), var_1.a, false);
    global0 = array<vec3<i32>, 26>();
    return select(select(!vec4<bool>(1i != arg_1.x, global2.a, var_1.b, var_1.c.x <= global2.c.x), vec4<bool>(false, false, true, true), vec4<bool>(false, all(select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(true, false, false), var_1.a)), !var_2.x, true)), !(!vec4<bool>(!global2.b, true, any(vec4<bool>(var_1.a, true, false, var_1.b)), true)), select(select(select(select(vec4<bool>(global2.a, true, var_2.x, false), vec4<bool>(global2.a, var_2.x, false, true), vec4<bool>(true, false, var_1.b, var_2.x)), select(vec4<bool>(global2.a, global2.b, var_1.a, false), vec4<bool>(true, false, var_2.x, false), true), !vec4<bool>(true, var_2.x, false, global2.b)), vec4<bool>(true, true, true, true), vec4<bool>(!var_2.x, var_2.x, any(vec2<bool>(var_1.a, false)), global2.b && global2.b)), vec4<bool>(global2.a, all(vec2<bool>(var_1.a, false)), 4294967295u >= _wgslsmith_div_u32(arg_0.b.a.x, 0u), true), var_1.a));
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2, arg_3: vec4<bool>) -> bool {
    global0 = array<vec3<i32>, 26>();
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(max(-374f, global2.c.x));
    var var_2 = global2.e.wy;
    let var_3 = vec4<i32>(global2.e.x, 1i, _wgslsmith_div_i32(abs(_wgslsmith_add_i32(abs(u_input.a), 2147483647i)), i32(-1i) * -7885i), _wgslsmith_mod_i32(abs(min(-8872i, _wgslsmith_mod_i32(1i, -18831i))), 1i));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: i32) -> f32 {
    global2 = Struct_3(true, func_5(~u_input.b.ww, true, Struct_2(_wgslsmith_f_op_f32(select(global2.c.x, _wgslsmith_f_op_f32(global2.c.x - global2.c.x), !arg_1.x)), arg_0), func_4(Struct_2(global2.c.x, arg_0), ~func_3(vec2<u32>(u_input.b.x, 1u), vec2<f32>(global2.c.x, global2.c.x), Struct_3(arg_1.x, false, global2.c, 27167i, global2.e)))), global2.c, 1i, ~_wgslsmith_mod_vec4_i32(global2.e, -global2.e));
    var var_0 = _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(countOneBits(4294967295u), u_input.b.x, u_input.b.x)), ~_wgslsmith_sub_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 56663u, arg_0.a.x), vec3<u32>(49062u, 61419u, arg_0.a.x))), _wgslsmith_mult_vec3_u32(u_input.b.yxw >> (vec3<u32>(u_input.b.x, arg_0.a.x, u_input.b.x) % vec3<u32>(32u)), reverseBits(u_input.b.yzx))));
    let var_1 = 0u;
    var_0 = u_input.b.yww;
    let var_2 = Struct_1(abs(~u_input.b.xy));
    return global2.c.x;
}

fn func_1(arg_0: Struct_2) -> vec2<f32> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(~arg_0.b.a >> (_wgslsmith_sub_vec2_u32(arg_0.b.a, vec2<u32>(1u, u_input.b.x)) % vec2<u32>(32u))), vec4<bool>(-22539i == global2.d, false, !any(vec2<bool>(true, global2.b)), all(select(vec4<bool>(false, global2.b, false, true), vec4<bool>(global2.b, global2.b, global2.a, global2.a), vec4<bool>(global2.b, global2.b, global2.b, global2.b)))), ~(-vec2<i32>(global2.e.x, global2.d) << (vec2<u32>(u_input.b.x, 3699u) % vec2<u32>(32u))), reverseBits(_wgslsmith_mult_i32(_wgslsmith_sub_i32(2147483647i, 43406i), global2.e.x)))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(535f)))), -164f) + global2.c.ww);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(-u_input.a, -2147483647i), firstTrailingBit(_wgslsmith_sub_i32(global2.e.x, -51113i))) << (select(~(~u_input.b.x), ~_wgslsmith_div_u32(1u, 1u), global2.a) % 32u), ~(-select(global2.d, -2147483647i, global2.a) << (~1u % 32u)), 0i);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global2.c.zy)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1014f), _wgslsmith_f_op_f32(-global2.c.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_2(global2.c.x, Struct_1(vec2<u32>(0u, 68547u))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.c.x, global2.c.x))), vec2<f32>(-2704f, global2.c.x)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(max(global2.c.wx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global2.c.yz)))));
    var var_2 = false;
    let var_3 = func_4(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1231f, -102f)))))), Struct_1(u_input.b.zw)), ~global2.e.yzy);
    global0 = array<vec3<i32>, 26>();
    var var_4 = Struct_3(var_3.x, all(select(!var_3.wyz, vec3<bool>(true, var_3.x, -988f <= var_1.x), func_4(Struct_2(1085f, Struct_1(vec2<u32>(u_input.b.x, 1u))), max(vec3<i32>(u_input.a, var_0.x, var_0.x), vec3<i32>(-2147483647i, u_input.a, u_input.a))).zxz)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1120f)), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2.c.x, var_1.x)), global2.c.x), _wgslsmith_f_op_f32(-global2.c.x)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.c - vec4<f32>(1221f, global2.c.x, 1000f, global2.c.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1156f, 518f, 309f, 1104f)))))), u_input.a, global2.e);
    global1 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.c.x) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_4.c.x, var_1.x), var_4.c.x, var_4.a))))));
    global2 = Struct_3(false, true, var_4.c, 1i, vec4<i32>(21538i, _wgslsmith_dot_vec4_i32(~firstTrailingBit(vec4<i32>(-23602i, var_0.x, var_0.x, 0i)), ~(global2.e | vec4<i32>(45308i, -20457i, var_0.x, u_input.a))), -2147483647i & _wgslsmith_mod_i32(2719i, -var_0.x), 36516i));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_4.e.zw), abs(firstTrailingBit(vec3<u32>(19097u, u_input.b.x, u_input.b.x))) << (min(firstTrailingBit(u_input.b.xzy) >> (vec3<u32>(1u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), u_input.b.xzy << (max(u_input.b.yzy, vec3<u32>(68119u, 4294967295u, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec2<u32>(~(4294967295u << (0u % 32u)), _wgslsmith_mult_u32(55725u, abs(u_input.b.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(~min(1u, 31903u), u_input.b.x, 58639u << ((u_input.b.x ^ 0u) % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.b.yxy, vec3<u32>(u_input.b.x, u_input.b.x, 63333u)), u_input.b.x)), ~(~vec4<u32>(u_input.b.x, 0u, 13356u, 34926u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(184f, global2.c.x) * _wgslsmith_f_op_f32(floor(var_1.x))))));
}

