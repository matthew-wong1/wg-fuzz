struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 5>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(10375u, 5u)], global1[_wgslsmith_index_u32(u_input.d, 5u)], arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-551f, 681f, arg_0)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 772f, 1609f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1022f - -630f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 5u)]), global1[_wgslsmith_index_u32(arg_1 ^ 49236u, 5u)]) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1079f, 952f, 491f)))))));
    var var_1 = Struct_3(Struct_2(u_input.a, Struct_1(abs(u_input.c))), select(vec3<i32>(_wgslsmith_div_i32(41491i, i32(-1i) * -1i), -(u_input.c.x << (4294967295u % 32u)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-8537i, -2147483647i, 20283i, -2147483647i), ~u_input.c)), select(-(~vec3<i32>(u_input.b, -1i, u_input.c.x)), ~select(u_input.c.ywy, vec3<i32>(-65305i, u_input.c.x, 1i), global0.x), select(vec3<bool>(true, true, true), global0.zwy, any(global0.xwx))), !(!vec3<bool>(false, global0.x, false))));
    var var_2 = _wgslsmith_clamp_vec2_u32(~max(vec2<u32>(96636u & arg_1, countOneBits(u_input.a)), ~vec2<u32>(arg_1, 0u) | _wgslsmith_add_vec2_u32(vec2<u32>(94642u, 4294967295u), vec2<u32>(var_1.a.a, u_input.a))), firstTrailingBit(_wgslsmith_div_vec2_u32(max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(70234u, var_1.a.a)), ~(vec2<u32>(var_1.a.a, 31069u) ^ vec2<u32>(arg_1, var_1.a.a)))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(13142u, 0u)), ~vec2<u32>(4294967295u, var_1.a.a)), abs(42412u) | (var_1.a.a << (var_1.a.a % 32u))), ~var_1.a.a));
    var var_3 = true;
    var var_4 = 47272u;
    return select(select(!(!(!vec4<bool>(global0.x, false, global0.x, false))), select(select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), !vec4<bool>(global0.x, false, true, global0.x), select(vec4<bool>(false, false, true, global0.x), vec4<bool>(global0.x, false, true, true), vec4<bool>(false, true, false, global0.x))), vec4<bool>(all(vec4<bool>(false, global0.x, global0.x, global0.x)), true, false, global0.x), all(global0.xzz)), vec4<bool>(!(!global0.x), !all(global0.yw), all(global0.yy), false)), select(!select(!vec4<bool>(false, false, global0.x, true), vec4<bool>(true, true, true, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x)), vec4<bool>(var_1.a.b.a.x < (1i | u_input.c.x), !(global0.x & true), firstTrailingBit(arg_1) == u_input.a, true), global0.x), !select(true, true, !any(global0.zz)));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: u32) -> i32 {
    global1 = array<f32, 5>();
    global0 = select(vec4<bool>(_wgslsmith_div_i32(~u_input.b, 30412i) < 57403i, true, all(func_3(-876f, arg_2.x)), true), !vec4<bool>(true, select(true, global0.x, all(global0.wzw)), global0.x, ~2147483647i > -arg_0.b.x), global0.x);
    var var_0 = arg_0;
    global0 = vec4<bool>(select(global0.x, all(vec4<bool>(any(vec4<bool>(global0.x, true, global0.x, global0.x)), true, true, true)), any(!global0.xz)), all(!(!select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(false, false, global0.x, global0.x), global0.x))), all(vec2<bool>(true, true)) | (-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(-1i, u_input.b)) <= var_0.b.x), any(global0.yy));
    let var_1 = Struct_3(var_0.a, var_0.b);
    return -var_1.a.b.a.x;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = select(!(!func_3(_wgslsmith_f_op_f32(min(1094f, global1[_wgslsmith_index_u32(4294967295u, 5u)])), ~u_input.a).zx), select(global0.zz, global0.xy, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(0u, 5u)], 1000f, global0.x)))) == _wgslsmith_f_op_f32(f32(-1f) * -942f)), vec2<bool>(all(vec4<bool>(global0.x, global0.x, false, false)), true));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-646f)))), _wgslsmith_f_op_f32(-799f - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~32133u, 5u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d, 5u)] - global1[_wgslsmith_index_u32(u_input.a, 5u)])))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 5u)])))), global1[_wgslsmith_index_u32(u_input.a, 5u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.d, 5u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(33742u, 1u), 5u)])) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 5u)])))));
    let var_2 = u_input.a;
    global0 = !select(!(!(!vec4<bool>(var_0.x, false, true, true))), vec4<bool>(false, global0.x, !select(false, false, false), 1760f == var_1.x), !(!(!vec4<bool>(false, false, true, global0.x))));
    global1 = array<f32, 5>();
    return Struct_2(30379u, Struct_1(vec4<i32>(u_input.c.x, _wgslsmith_mult_i32(-2147483647i, -1i), -(1i | arg_0.a.x), _wgslsmith_clamp_i32(select(28822i, 26289i, global0.x), 37804i, u_input.c.x))));
}

fn func_1() -> Struct_1 {
    let var_0 = -u_input.c;
    let var_1 = func_4(Struct_1(vec4<i32>(abs(-1i), var_0.x, -func_2(Struct_3(Struct_2(0u, Struct_1(vec4<i32>(0i, u_input.c.x, 1i, -2697i))), vec3<i32>(-1i, var_0.x, -62817i)), vec2<f32>(-424f, 1000f), vec4<u32>(19403u, u_input.d, u_input.d, 67229u), u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -1i), ~vec3<i32>(var_0.x, 9433i, -28870i)))));
    var var_2 = !func_3(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~1u, ~var_1.a) & 60556u, 5u)], abs(select(1u, 34716u, false)));
    var var_3 = var_1.b;
    global0 = vec4<bool>(false, true, !(!any(vec4<bool>(true, var_2.x, true, var_2.x))), all(vec3<bool>(false, 3042u == _wgslsmith_div_u32(4294967295u, u_input.a), !(var_1.b.a.x <= var_1.b.a.x))));
    return func_4(func_4(var_1.b).b).b;
}

fn func_5(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(1u, 5u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-272f))))));
    let var_1 = firstTrailingBit(_wgslsmith_div_i32(~firstTrailingBit(arg_0.b.a.x), -_wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_0.b.a.x, u_input.c.x, u_input.b)), reverseBits(arg_0.b.a.xyz))));
    var var_2 = _wgslsmith_f_op_f32(round(-183f));
    let var_3 = Struct_3(arg_0, -vec3<i32>(var_1, min(u_input.b, -u_input.b), -1i));
    var var_4 = vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -(~0i), 2147483647i), arg_0.b.a.x, -70209i, u_input.b);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec4<bool>(global0.x, all(vec4<bool>(global0.x, false, global0.x, !global0.x)), func_5(Struct_2(22541u, func_1())), all(select(select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(false, global0.x, false, global0.x)), !vec4<bool>(global0.x, false, global0.x, false), !vec4<bool>(global0.x, false, global0.x, global0.x))));
    global1 = array<f32, 5>();
    let var_0 = u_input.d;
    var var_1 = u_input.c.wwy;
    var_1 = vec3<i32>(40621i, -16981i, u_input.b) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(select(u_input.b, 1i, true), ~var_1.x, _wgslsmith_sub_i32(u_input.b, 1i)), u_input.c.yyy);
    let var_2 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(29868u, ~(~u_input.a)), min(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(28509u, u_input.a, 0u), vec3<u32>(u_input.d, 40421u, 4294967295u))), select(62553u, 64512u, u_input.a <= u_input.a) ^ reverseBits(13536u)));
    var var_3 = var_0;
    global1 = array<f32, 5>();
    var_3 = 2877u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(1u, u_input.d)));
}

