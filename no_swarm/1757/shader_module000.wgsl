struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(47345u, 2010u, 0u, 7774u, 125618u, 3146u, 0u, 8189u, 35759u, 45092u, 4690u, 12351u, 14137u);

var<private> global1: Struct_4 = Struct_4(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<f32>(676f, -929f), 37970i, vec4<u32>(41986u, 130607u, 26898u, 1u), false), vec3<f32>(-865f, 490f, -232f), 0u, Struct_1(vec2<i32>(-19585i, -25204i), vec2<f32>(-1010f, 181f), 0i, vec4<u32>(43993u, 1u, 0u, 9465u), true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a.b)), vec3<f32>(598f, global1.a.d.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-125f, 223f, false)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.b.x)))))));
    let var_1 = !select(!(!vec3<bool>(true, false, global1.a.d.e)), select(select(!vec3<bool>(global1.a.d.e, false, true), vec3<bool>(global1.a.d.e, global1.a.a.e, false), !vec3<bool>(global1.a.d.e, global1.a.d.e, false)), vec3<bool>(true, false, true), true), vec3<bool>(false, select(global1.a.d.e, true, global1.a.a.e) & (u_input.c.x == 2147483647i), true));
    let var_2 = 4294967295u;
    var var_3 = global1.a.d;
    let var_4 = global1.a.d.b.x;
    return ~_wgslsmith_sub_u32(firstLeadingBit(~1u), var_2);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_4, arg_3: vec2<i32>) -> Struct_4 {
    var var_0 = global1.a.a.b.x;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-864f))))));
    var var_2 = u_input.e.x;
    var_2 = 40316u;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1519f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_2.a.b.x)))))), arg_0.b.xy, _wgslsmith_sub_u32(arg_2.a.a.d.x, _wgslsmith_sub_u32(arg_2.a.a.d.x, 10217u)) > (global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e.x, reverseBits(u_input.e.x)), 13u)] >> (arg_2.a.c % 32u))));
    return Struct_4(Struct_2(Struct_1((arg_3 << (vec2<u32>(global1.a.c, u_input.e.x) % vec2<u32>(32u))) | ~vec2<i32>(arg_0.d.a.x, arg_0.a.c), _wgslsmith_f_op_vec2_f32(-arg_0.b.yx), arg_2.a.a.a.x, vec4<u32>(func_3(u_input.c), abs(global0[_wgslsmith_index_u32(164u, 13u)]), func_3(u_input.b), ~arg_0.c), false), _wgslsmith_f_op_vec3_f32(-arg_2.a.b), arg_0.d.d.x, global1.a.d));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> f32 {
    global0 = array<u32, 13>();
    global1 = func_2(Struct_2(func_2(Struct_2(Struct_1(arg_1.a.d.a, arg_1.a.d.b, -1i, vec4<u32>(arg_1.a.c, arg_0.b, u_input.e.x, 4294967295u), false), arg_1.a.b, ~global0[_wgslsmith_index_u32(4294967295u, 13u)], Struct_1(vec2<i32>(arg_1.a.a.c, arg_1.a.a.a.x), arg_1.a.b.zx, -20583i, vec4<u32>(global1.a.d.d.x, 4294967295u, arg_0.b, global1.a.d.d.x), arg_1.a.a.e)), select(true, all(vec2<bool>(true, true)), arg_1.a.d.e & false), arg_1, -u_input.a.xz).a.a, vec3<f32>(global1.a.b.x, 1f, _wgslsmith_div_f32(arg_1.a.b.x, _wgslsmith_f_op_f32(-arg_0.a.x))), u_input.e.x, global1.a.a), select(1u, ~_wgslsmith_clamp_u32(4294967295u, 18950u, 1u), global1.a.a.e) <= _wgslsmith_dot_vec4_u32(global1.a.a.d, firstTrailingBit(vec4<u32>(5002u, u_input.e.x, 45180u, arg_0.b))), arg_1, ~_wgslsmith_div_vec2_i32(-countOneBits(vec2<i32>(0i, global1.a.d.c)), func_2(Struct_2(Struct_1(vec2<i32>(41818i, 1i), arg_1.a.b.yx, global1.a.a.c, arg_1.a.d.d, false), vec3<f32>(-490f, arg_1.a.d.b.x, -489f), 20111u, arg_1.a.d), true, Struct_4(global1.a), ~vec2<i32>(54554i, 1i)).a.d.a));
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1552f);
    let var_1 = vec4<bool>(global1.a.d.e, true, arg_1.a.d.e, func_2(Struct_2(Struct_1(~global1.a.d.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(1209f, global1.a.b.x) + vec2<f32>(global1.a.a.b.x, arg_0.a.x)), func_2(arg_1.a, true, Struct_4(Struct_2(arg_1.a.d, arg_0.a, 8237u, Struct_1(global1.a.a.a, vec2<f32>(arg_1.a.b.x, global1.a.d.b.x), -1i, global1.a.a.d, true))), vec2<i32>(arg_1.a.a.c, 10409i)).a.a.a.x, firstLeadingBit(global1.a.d.d), all(vec2<bool>(false, global1.a.a.e))), _wgslsmith_f_op_vec3_f32(abs(arg_0.a)), ~(0u >> (arg_1.a.d.d.x % 32u)), global1.a.d), func_2(Struct_2(global1.a.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1079f, arg_0.a.x, global1.a.a.b.x), vec3<f32>(-1521f, 487f, arg_0.a.x), vec3<bool>(arg_1.a.d.e, true, arg_1.a.a.e))), arg_1.a.d.d.x, Struct_1(global1.a.d.a, arg_1.a.b.xy, u_input.c.x, vec4<u32>(global1.a.a.d.x, arg_1.a.c, 1u, global0[_wgslsmith_index_u32(u_input.e.x, 13u)]), true)), func_2(arg_1.a, global1.a.d.e & arg_1.a.d.e, func_2(global1.a, global1.a.a.e, Struct_4(arg_1.a), vec2<i32>(u_input.d, global1.a.a.c)), _wgslsmith_add_vec2_i32(global1.a.a.a, arg_1.a.d.a)).a.d.e, Struct_4(Struct_2(arg_1.a.d, vec3<f32>(-500f, -267f, -597f), arg_1.a.c, global1.a.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.a.x), vec2<i32>(-58318i, global1.a.d.a.x) << (vec2<u32>(0u, global1.a.c) % vec2<u32>(32u)))).a.d.e, func_2(func_2(func_2(Struct_2(Struct_1(arg_1.a.d.a, arg_0.a.zx, -1i, global1.a.a.d, false), global1.a.b, 0u, Struct_1(global1.a.d.a, global1.a.a.b, u_input.c.x, vec4<u32>(arg_0.b, 38770u, 11563u, arg_1.a.c), arg_1.a.d.e)), false, Struct_4(global1.a), vec2<i32>(1i, 47478i)).a, all(vec4<bool>(false, arg_1.a.d.e, arg_1.a.a.e, global1.a.a.e)), arg_1, vec2<i32>(-33761i, u_input.b.x)).a, arg_1.a.a.d.x == ~61536u, Struct_4(func_2(Struct_2(Struct_1(vec2<i32>(27348i, 799i), arg_1.a.b.yy, 1i, global1.a.a.d, global1.a.d.e), arg_1.a.b, global0[_wgslsmith_index_u32(4294967295u, 13u)], arg_1.a.a), global1.a.d.e, arg_1, u_input.b.zx).a), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-15043i, 1i), vec2<i32>(global1.a.d.a.x, 1i)))), -(vec2<i32>(global1.a.d.c, 2147483647i) >> (vec2<u32>(arg_1.a.d.d.x, 174064u) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_i32(vec2<i32>(global1.a.a.a.x, 38676i), global1.a.a.a)).a.d.e);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(874f * arg_0.a.x), _wgslsmith_f_op_f32(-1f), 2030f);
    return arg_0.a.x;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<u32>) -> StorageBuffer {
    global0 = array<u32, 13>();
    var var_0 = _wgslsmith_dot_vec3_i32(-u_input.a, u_input.a);
    var var_1 = vec3<bool>(global1.a.a.e, !(!select(any(vec3<bool>(global1.a.a.e, false, global1.a.d.e)), true, global1.a.d.a.x < global1.a.a.a.x)), false & !any(vec4<bool>(false, global1.a.d.e, global1.a.a.e, true)));
    let var_2 = false;
    var_1 = !select(vec3<bool>(var_2, !var_1.x, var_2), vec3<bool>(any(select(vec3<bool>(var_1.x, var_2, true), vec3<bool>(false, true, false), true)), true, var_1.x && any(var_1.yx)), select(vec3<bool>(true, var_1.x, var_2), !vec3<bool>(var_2, var_1.x, global1.a.a.e), !select(vec3<bool>(var_2, false, true), vec3<bool>(var_1.x, true, var_2), vec3<bool>(true, var_2, false))));
    return StorageBuffer(426f, arg_0.yzx);
}

fn func_1(arg_0: i32) -> StorageBuffer {
    global0 = array<u32, 13>();
    return func_5(vec4<f32>(global1.a.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -799f), -2079f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a.b.x)), _wgslsmith_f_op_f32(func_4(Struct_3(global1.a.b, 47242u), func_2(global1.a, global1.a.d.e, Struct_4(Struct_2(global1.a.a, vec3<f32>(global1.a.a.b.x, 1760f, 1001f), 8727u, global1.a.a)), vec2<i32>(u_input.d, -32229i)))))), vec4<u32>(~0u, _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 4294967295u) >> (reverseBits(global1.a.a.d.x) % 32u), u_input.e.x), u_input.e.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(abs(1u), global0[_wgslsmith_index_u32(~u_input.e.x, 13u)]), global1.a.a.d.x), 13u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1.a.d, vec3<f32>(-459f, 2369f, _wgslsmith_f_op_f32(floor(-527f))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(global1.a.d.d, vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global1.a.a.d.x, 13u)], 4294967295u, 22439u)), 15411u) | ~_wgslsmith_dot_vec3_u32(~global1.a.d.d.xwx, global1.a.d.d.zxy), 13u)], global1.a.d);
    let x = u_input.a;
    s_output = func_1(1i >> (0u % 32u));
}

