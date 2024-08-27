struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false), true, vec3<u32>(0u, 4294967295u, 4863u), Struct_1(true), 1068f);

var<private> global1: array<Struct_3, 19>;

var<private> global2: array<vec4<u32>, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32) -> u32 {
    global0 = Struct_2(Struct_1(!all(!vec4<bool>(true, global0.b, true, false))), false, abs(vec3<u32>(select(~global0.c.x, _wgslsmith_add_u32(global0.c.x, 8149u), global0.a.a != global0.a.a), abs(global0.c.x ^ 0u), _wgslsmith_add_u32(global0.c.x, global0.c.x))), global0.a, _wgslsmith_f_op_f32(min(global0.e, 507f)));
    let var_0 = -(~u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e, global0.e, global0.e)), vec3<f32>(global0.e, global0.e, global0.e))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e, global0.e, 361f)), vec3<f32>(global0.e, -272f, global0.e)), !global0.b)))), vec3<f32>(836f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e + global0.e)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e * -1236f) - _wgslsmith_f_op_f32(436f + -867f))))));
    global0 = Struct_2(Struct_1(global0.a.a), true & !all(!vec2<bool>(global0.a.a, true)), vec3<u32>(_wgslsmith_dot_vec3_u32(max(global0.c, global0.c), select(firstTrailingBit(global0.c), global0.c, var_1.x <= global0.e)), 0u, 92885u), Struct_1(!all(vec3<bool>(global0.b, global0.d.a, true)) == all(!vec3<bool>(true, false, global0.d.a))), 1000f);
    global0 = Struct_2(global0.d, global0.e != _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1654f), 508f), ~(~global0.c), Struct_1(all(vec3<bool>(!global0.d.a, global0.e == var_1.x, any(vec2<bool>(true, true))))), _wgslsmith_div_f32(global0.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1096f, var_1.x)))));
    return ~_wgslsmith_mod_u32(4294967295u, global0.c.x);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_5(vec2<i32>(abs(u_input.a.x), ~(-u_input.a.x)) >> (vec2<u32>(0u, func_3(-2147483647i, 1i)) % vec2<u32>(32u)), vec4<bool>(true, !any(!vec3<bool>(global0.d.a, global0.b, global0.d.a)), global0.a.a, true), 707f, Struct_2(global0.a, !(!any(vec4<bool>(global0.a.a, true, false, global0.a.a))), ~vec3<u32>(1u, global0.c.x, countOneBits(0u)), Struct_1(true), global0.e), global0.d);
    return Struct_3(-vec2<i32>(~var_0.a.x, -u_input.a.x), select(var_0.a.x, -(firstTrailingBit(0i) & u_input.a.x), (all(var_0.b.wyw) & all(vec4<bool>(var_0.b.x, false, var_0.d.d.a, var_0.e.a))) & true), 651f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.e, global0.e) * _wgslsmith_f_op_f32(sign(var_0.d.e))), -1058f)), Struct_1(true));
}

fn func_4(arg_0: Struct_3) -> StorageBuffer {
    var var_0 = u_input.a ^ (vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(-17136i, -2147483647i), vec2<i32>(-2147483647i, 31746i)));
    var var_1 = Struct_2(global0.d, arg_0.e.a, vec3<u32>(100346u, _wgslsmith_mult_u32(~1u, abs(1u)), 17897u), Struct_1(true), global0.e);
    var var_2 = arg_0.d;
    global1 = array<Struct_3, 19>();
    var var_3 = ~(-u_input.a.x);
    return StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(666f, arg_0.c, var_1.d.a)) - 233f)))), -(vec4<i32>(_wgslsmith_mult_i32(1i, u_input.a.x), arg_0.a.x, abs(arg_0.a.x), u_input.a.x | arg_0.b) ^ (~vec4<i32>(arg_0.a.x, var_0.x, -2147483647i, 0i) << ((global2[_wgslsmith_index_u32(global0.c.x, 22u)] & global2[_wgslsmith_index_u32(var_1.c.x, 22u)]) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_0.d - arg_0.d), func_2(1u, vec2<u32>(~55161u, reverseBits(global0.c.x))).d)), firstLeadingBit(~51118u));
}

fn func_1() -> StorageBuffer {
    var var_0 = 1u;
    let var_1 = Struct_3(vec2<i32>(1i, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mod_i32(1i, 28442i)) & _wgslsmith_clamp_i32(~(-4212i), 22000i, u_input.a.x)), 3215i, _wgslsmith_f_op_f32(f32(-1f) * -109f), vec2<f32>(1020f, -147f), global0.a);
    return func_4(func_2(5118u, global0.c.zy));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 19>();
    let var_0 = global0.c.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) * global0.e);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) - _wgslsmith_f_op_f32(f32(-1f) * -593f));
    let var_3 = vec3<bool>(!(!(!global0.d.a) || !(true | global0.b)), !(!any(!vec3<bool>(global0.d.a, false, true))), global0.d.a);
    let var_4 = Struct_5(_wgslsmith_mult_vec2_i32(vec2<i32>(-55085i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x) & u_input.a.x), u_input.a), !vec4<bool>(_wgslsmith_f_op_f32(global0.e * -1121f) <= _wgslsmith_f_op_f32(-global0.e), false | global0.b, all(select(var_3, vec3<bool>(global0.a.a, false, false), var_3)), false), -1285f, Struct_2(global0.d, !var_3.x, global0.c << (vec3<u32>(21113u, 1u, 15849u) % vec3<u32>(32u)), Struct_1(true), _wgslsmith_f_op_f32(select(-823f, -914f, true))), Struct_1(!var_3.x));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-424f - -162f) * _wgslsmith_f_op_f32(trunc(var_2)));
    var var_5 = u_input.a.x;
    var var_6 = vec3<i32>(var_4.a.x, 2147483647i, 1i);
    let x = u_input.a;
    s_output = func_1();
}

