struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20>;

var<private> global1: vec2<u32> = vec2<u32>(19920u, 13005u);

var<private> global2: array<Struct_1, 21>;

var<private> global3: array<vec3<i32>, 7>;

var<private> global4: Struct_3 = Struct_3(22727u, Struct_2(false, Struct_1(1i, vec2<u32>(31003u, 21202u), 1u, false, vec4<f32>(130f, 1828f, 854f, 653f))), Struct_1(4967i, vec2<u32>(7510u, 43657u), 0u, true, vec4<f32>(-1736f, 1620f, -103f, 358f)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: bool) -> i32 {
    global2 = array<Struct_1, 21>();
    global2 = array<Struct_1, 21>();
    var var_0 = Struct_3(1u, Struct_2(true, Struct_1(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -14878i), vec2<i32>(1i, 2147483647i)), vec2<u32>(0u, 61886u), max(4294967295u, global4.c.b.x >> (u_input.e.x % 32u)), global4.c.d, global4.c.e)), Struct_1(u_input.d.x, u_input.e.yx | vec2<u32>(u_input.b, 4294967295u), ~15970u, false, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global4.b.b.e * vec4<f32>(-1000f, global4.b.b.e.x, global4.b.b.e.x, global4.c.e.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.b.e.x, 2092f, global4.c.e.x, -845f)), any(vec3<bool>(arg_0, false, arg_1))))))));
    global3 = array<vec3<i32>, 7>();
    var var_1 = (_wgslsmith_add_u32(global1.x, 1u) >> (~reverseBits(~4294967295u) % 32u)) ^ global4.a;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(33163i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-global4.c.a, u_input.d.x, max(u_input.c.x, u_input.d.x)), select(_wgslsmith_mult_i32(-65007i, -15054i), -18207i, select(false, true, true))), abs(~global4.c.a ^ _wgslsmith_sub_i32(u_input.c.x, -2838i)), 15132i), firstLeadingBit(~(~vec4<i32>(u_input.c.x, var_0.c.a, global4.b.b.a, var_0.c.a) >> (~vec4<u32>(var_0.c.c, var_0.b.b.b.x, 1u, global1.x) % vec4<u32>(32u)))));
}

fn func_4(arg_0: i32) -> vec2<u32> {
    var var_0 = global4.a;
    var_0 = 1u;
    var var_1 = abs(abs(u_input.e.x));
    var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(~24786u, 30933u), global1.x);
    var var_2 = Struct_2(global4.b.a, Struct_1(~_wgslsmith_sub_i32(abs(arg_0), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -43781i), vec2<i32>(1i, arg_0))), global4.c.b, abs(select(1u, ~u_input.e.x, true)), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4.c.e)))));
    return ~global4.b.b.b;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-319f, _wgslsmith_f_op_f32(-global4.b.b.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-global4.b.b.e.x))))));
    var var_1 = func_4(func_3(all(vec3<bool>(var_0 <= var_0, var_0 <= var_0, !global4.b.b.d)), true | (all(vec3<bool>(true, global4.c.d, global4.b.b.d)) != !global4.c.d)));
    global3 = array<vec3<i32>, 7>();
    let var_2 = Struct_1(-1i, vec2<u32>(_wgslsmith_add_u32(~var_1.x, ~1u), var_1.x), ~_wgslsmith_clamp_u32(global4.b.b.c, 4294967295u, 4294967295u), false || !(global1.x >= min(global1.x, global4.b.b.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), global4.b.b.e.x, _wgslsmith_f_op_f32(abs(var_0)), global4.b.b.e.x))) + global4.b.b.e));
    global1 = ~(var_2.b << (var_2.b % vec2<u32>(32u)));
    return Struct_3(reverseBits(~select(1u, ~9033u, any(vec2<bool>(var_2.d, global4.b.b.d)))), global4.b, global2[_wgslsmith_index_u32(4294967295u, 21u)]);
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3) -> vec2<u32> {
    global3 = array<vec3<i32>, 7>();
    let var_0 = Struct_3(17921u, arg_2.b, arg_0.b.b);
    var var_1 = _wgslsmith_mod_vec4_i32(-vec4<i32>(2147483647i, i32(-1i) * -26345i, -2147483647i, arg_1), -(vec4<i32>(-2147483647i, -arg_2.b.b.a, _wgslsmith_div_i32(13844i, arg_1), global4.c.a) | (vec4<i32>(-1i) * -vec4<i32>(2147483647i, 2147483647i, 18732i, 62471i))));
    var var_2 = Struct_2(any(vec3<bool>(false, true, any(select(vec2<bool>(var_0.c.d, false), vec2<bool>(true, global4.c.d), vec2<bool>(false, global4.b.a))))), global2[_wgslsmith_index_u32(~abs(reverseBits(global4.b.b.c)), 21u)]);
    var var_3 = u_input.c.zy;
    return var_0.c.b;
}

fn func_1() -> f32 {
    global1 = _wgslsmith_mult_vec2_u32(select(global4.b.b.b, _wgslsmith_sub_vec2_u32(u_input.e.zy, ~global4.c.b) << (func_5(Struct_3(u_input.b, Struct_2(global4.c.d, Struct_1(-1i, global4.c.b, 133379u, true, global4.c.e)), Struct_1(global4.c.a, global4.c.b, 18165u, true, vec4<f32>(global4.c.e.x, global4.c.e.x, -476f, -599f))), min(u_input.c.x, global4.b.b.a), func_2(vec4<f32>(global4.c.e.x, 1957f, -491f, 1109f), global4.b.b.a, -50333i)) % vec2<u32>(32u)), !vec2<bool>(global4.b.b.d, func_2(global4.b.b.e, 1i, u_input.c.x).b.a)), global4.b.b.b);
    let var_0 = func_2(global4.c.e, reverseBits(select(countOneBits(1i), ~(-2147483647i), false)), u_input.d.x);
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c.e.x, _wgslsmith_f_op_f32(abs(-221f)), _wgslsmith_f_op_f32(1888f * global4.b.b.e.x), _wgslsmith_f_op_f32(var_0.b.b.e.x * var_0.b.b.e.x)))), -23566i, 2147483647i).c;
    global1 = ~vec2<u32>(~global1.x, ~(~10507u)) | vec2<u32>(_wgslsmith_dot_vec2_u32(func_5(var_0, -2147483647i, Struct_3(var_1.b.x, var_0.b, Struct_1(u_input.c.x, global4.c.b, 4294967295u, true, vec4<f32>(-877f, var_1.e.x, global4.b.b.e.x, var_1.e.x)))), vec2<u32>(abs(4294967295u), _wgslsmith_mod_u32(var_1.b.x, u_input.b))), var_1.c);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1152f)), -239f, false)));
    return -1094f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_i32(global4.b.b.a, global4.c.a);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c.e.x)), 2651f));
    var var_2 = global4.b;
    let var_3 = !vec4<bool>(global4.c.d, global4.c.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.b.e.x))) >= _wgslsmith_f_op_f32(ceil(415f)), global4.b.b.d);
    global4 = Struct_3(var_2.b.c, global4.b, Struct_1(abs(~(-u_input.c.x)), global4.c.b, max(~u_input.a, 14281u), false, vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(sign(var_2.b.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1409f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.b.e.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(u_input.c.x, global4.c.a, -6409i), _wgslsmith_mult_vec4_u32(select(select(vec4<u32>(var_2.b.c, 4294967295u, 6714u, 75435u), vec4<u32>(80577u, global4.a, var_2.b.c, 23202u), var_3) & _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, global1.x, 6078u), vec4<u32>(var_2.b.c, u_input.e.x, 75559u, u_input.b)), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(56962u, global1.x, global4.a)), global4.c.c, _wgslsmith_div_u32(global4.c.c, 21193u), global1.x & var_2.b.c), vec4<bool>(true, global4.b.a, any(var_3.zyw), !var_3.x)), ~(~vec4<u32>(global4.a, var_2.b.b.x, var_2.b.b.x, 31295u))), global4.b.b.e.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.b.e.x, -159f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b.b.e.x, var_1)) - _wgslsmith_f_op_vec2_f32(var_2.b.e.wz - vec2<f32>(global4.c.e.x, var_1)))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(global4.b.b.e.x * -666f), global4.b.b.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1095f * _wgslsmith_f_op_f32(var_1 * 201f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.e.x) - _wgslsmith_f_op_f32(-745f + var_1))))));
}

