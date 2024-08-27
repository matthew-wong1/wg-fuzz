struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(4195i, -1280i), vec2<i32>(2147483647i, -107488i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-37399i, 23407i), vec2<i32>(-16949i, 12115i), vec2<i32>(638i, 2147483647i), vec2<i32>(2147483647i, 1i), vec2<i32>(-64298i, 117014i), vec2<i32>(31478i, 38036i), vec2<i32>(-1i, -39129i), vec2<i32>(1i, 0i), vec2<i32>(55817i, -1i));

var<private> global2: vec3<bool>;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, false, false, true), true, false, vec2<u32>(1u, 4294967295u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    global2 = arg_1.a.xzz;
    global1 = array<vec2<i32>, 13>();
    let var_0 = global0.x;
    global3 = arg_1;
    var var_1 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), 1100f, _wgslsmith_f_op_f32(-481f - -1285f) <= _wgslsmith_f_op_f32(step(643f, global0.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1614f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-140f)))), _wgslsmith_f_op_f32(343f - 1073f)), 1f);
    return arg_1.d.x ^ _wgslsmith_dot_vec3_u32(~u_input.d.zzw, vec3<u32>(1u >> (u_input.d.x % 32u), ~0u, 166u) & countOneBits(u_input.d.yyw));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -324f), _wgslsmith_f_op_f32(select(global0.x, 303f, global2.x)), global0.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1083f, global0.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1215f, global0.x, global0.x))))))));
    let var_0 = global3.a.x;
    let var_1 = -_wgslsmith_mod_vec2_i32(global1[_wgslsmith_index_u32(func_3(-46260i, Struct_1(global3.a, false, true, vec2<u32>(4294967295u, 70746u))), 13u)] ^ ~u_input.c, abs(countOneBits(vec2<i32>(-1i, -2147483647i))));
    let var_2 = true;
    return Struct_1(select(global3.a, select(vec4<bool>(true, var_1.x <= u_input.c.x, any(vec3<bool>(true, false, global2.x)), true), select(!global3.a, select(global3.a, vec4<bool>(false, true, true, true), global3.c), !vec4<bool>(global3.c, global2.x, true, global2.x)), vec4<bool>(true, true, true, true)), (~var_1.x != -12724i) || true), var_2, all(vec3<bool>(global3.b, all(select(global3.a, vec4<bool>(global3.a.x, global2.x, var_2, global2.x), vec4<bool>(false, false, var_2, global3.c))), var_2)), ~arg_0.zx & select(select(firstLeadingBit(vec2<u32>(25809u, 21597u)), vec2<u32>(1581u, 48908u), false | global2.x), vec2<u32>(arg_0.x, global3.d.x), global2.zz));
}

fn func_1() -> i32 {
    let var_0 = func_2(~u_input.d);
    var var_1 = Struct_1(!func_2(firstTrailingBit(select(u_input.d, vec4<u32>(0u, var_0.d.x, u_input.a, global3.d.x), global3.a))).a, ((true && any(vec4<bool>(false, global3.b, false, global2.x))) && (global2.x == var_0.a.x)) & false, !global3.b, u_input.d.yw);
    global2 = var_1.a.zxx;
    var var_2 = global0.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-495f)) - _wgslsmith_f_op_f32(-global0.x)));
    var_2 = 1000f >= global0.x;
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = u_input.d.ww;
    var var_2 = func_2(vec4<u32>(~91769u, 25505u, var_1.x, _wgslsmith_div_u32(var_1.x, var_1.x)));
    var var_3 = !var_2.a.yx;
    var_1 = _wgslsmith_add_vec2_u32(~(~vec2<u32>(~var_1.x, reverseBits(u_input.d.x))), ~var_2.d);
    let var_4 = vec2<u32>(~_wgslsmith_clamp_u32(~16261u, countOneBits(~3814u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, 0u), 62261u)), _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(u_input.d.wzw, vec3<u32>(4294967295u, 120683u, 4294967295u)), var_2.d.x));
    var var_5 = func_2(vec4<u32>(1u, _wgslsmith_mod_u32(u_input.d.x, 4294967295u), var_1.x, _wgslsmith_mult_u32(4294967295u, countOneBits(global3.d.x))));
    var_3 = !select(!select(global3.a.zx, global2.zz, !var_5.c), !(!var_5.a.wy), -1560f >= global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_2.d.x, 0u), _wgslsmith_mod_u32(104414u, 6u)), var_5.d.x, var_4.x)), _wgslsmith_add_vec4_u32(vec4<u32>(~abs(var_1.x), ~_wgslsmith_div_u32(0u, u_input.a), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_5.d.x, 4294967295u, global3.d.x), vec3<u32>(var_2.d.x, 4294967295u, 9963u)), vec3<u32>(var_2.d.x, var_5.d.x, 1u)), 4294967295u), firstTrailingBit(~vec4<u32>(var_2.d.x, var_1.x, 0u, 1u))));
}

