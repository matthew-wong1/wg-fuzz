struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: Struct_2 = Struct_2(Struct_1(1970f, vec2<bool>(false, false)), vec4<bool>(true, true, false, true), Struct_1(-105f, vec2<bool>(true, true)));

var<private> global2: i32 = 64111i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> f32 {
    let var_0 = global1.c;
    let var_1 = -327f;
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    var var_2 = global1.b.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1369f, _wgslsmith_f_op_f32(global1.a.a + _wgslsmith_f_op_f32(990f * 905f)))) + _wgslsmith_f_op_f32(-479f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - global1.c.a)), var_0.a))));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> vec4<bool> {
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(global1.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c.a))))), select(!global1.a.b, vec2<bool>(true, !global1.b.x), select(!global1.b.xw, !vec2<bool>(global1.b.x, false), false || global1.c.b.x))), select(!(!vec4<bool>(global1.b.x, true, global1.b.x, global1.b.x)), vec4<bool>(~68229u != _wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(u_input.d, 26u)]), true, _wgslsmith_div_f32(-211f, global1.a.a) > _wgslsmith_div_f32(-641f, global1.a.a), all(vec4<bool>(global1.c.b.x, global1.a.b.x, true, global1.c.b.x))), !all(!global1.b.wyy)), global1.a);
    var var_0 = !vec2<bool>(false, global1.c.b.x);
    var_0 = !vec2<bool>(global1.a.b.x, (abs(u_input.e.x) > 19263i) && (114241u == _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.d, 26u)], u_input.d, global0[_wgslsmith_index_u32(0u, 26u)])));
    var_0 = !global1.b.yw;
    var_0 = select(select(vec2<bool>(global1.b.x, all(!vec4<bool>(var_0.x, var_0.x, var_0.x, global1.a.b.x))), vec2<bool>(false, global1.a.b.x), !vec2<bool>(false, global1.c.b.x)), global1.a.b, all(vec2<bool>(true | !global1.a.b.x, !var_0.x)));
    return global1.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<u32>) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = var_0;
    global0 = array<u32, 26>();
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-120f, arg_0.a.a, any(func_3(u_input.e.ywy >> (vec3<u32>(global0[_wgslsmith_index_u32(1u, 26u)], arg_2.x, 1u) % vec3<u32>(32u)), -u_input.c.x)))), 1062f));
    return vec3<bool>(!(!((1u >> (u_input.d % 32u)) > u_input.d)), ~_wgslsmith_dot_vec4_i32(u_input.e | u_input.e, vec4<i32>(u_input.a.x, u_input.b, u_input.e.x, 56929i)) < firstTrailingBit(u_input.c.x), false);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> vec2<f32> {
    var var_0 = vec2<bool>(!global1.b.x, true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_1()), select(select(vec2<bool>(all(global1.b), var_0.x), vec2<bool>(true, true), vec2<bool>(var_0.x, !global1.b.x)), !(!global1.c.b), !(global1.b.x | false)));
    let var_2 = func_4(Struct_2(Struct_1(310f, select(select(vec2<bool>(true, global1.a.b.x), vec2<bool>(false, global1.c.b.x), global1.b.x), vec2<bool>(global1.b.x, global1.b.x), all(var_1.b))), select(!select(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, true), vec4<bool>(true, false, var_0.x, var_1.b.x), global1.b), func_3(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e.x, u_input.b, -37348i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.c.x)), -u_input.e.x), vec4<bool>(any(global1.b.wyy), !var_0.x, var_0.x, all(vec3<bool>(var_0.x, true, false)))), var_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1110f, -739f, arg_1) * vec3<f32>(648f, -1896f, var_1.a)) + vec3<f32>(global1.a.a, -1240f, -424f)))), vec3<u32>(~(~0u) << (_wgslsmith_dot_vec2_u32(max(arg_0, arg_0), max(vec2<u32>(25629u, u_input.d), vec2<u32>(global0[_wgslsmith_index_u32(u_input.d, 26u)], 4294967295u))) % 32u), ~(u_input.d ^ u_input.d) ^ 4294967295u, 4294967295u));
    let var_3 = vec2<u32>(arg_0.x, firstLeadingBit(~_wgslsmith_dot_vec2_u32(arg_0, arg_0) << (~arg_0.x % 32u)));
    var var_4 = ~1i;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -1346f), vec2<f32>(-1439f, -596f)), vec2<f32>(_wgslsmith_f_op_f32(trunc(858f)), _wgslsmith_div_f32(var_1.a, var_1.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = global1.c.a >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.c.a)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-558f + global1.c.a))))));
    var var_2 = 71885u;
    let var_3 = any(vec3<bool>(false, global1.a.b.x, !any(global1.b.ywx)));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), 216f) * _wgslsmith_f_op_vec2_f32(func_2(vec2<u32>(72994u, min(1u, 17292u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(167f))))));
    let var_5 = Struct_1(var_4.x, !func_3(u_input.a.wzx ^ vec3<i32>(2147483647i, u_input.e.x, 12491i), _wgslsmith_clamp_i32(u_input.b, u_input.c.x << (4294967295u % 32u), 0i)).ww);
    var var_6 = global1.c.b.x;
    var_6 = !func_3(-u_input.a.yxz, _wgslsmith_add_i32(countOneBits(~1i), _wgslsmith_mult_i32(u_input.a.x, -41824i))).x;
    var var_7 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(min(u_input.a.x, -u_input.c.x) >> (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.d), 26u)], 26u)] % 32u), -1i), -_wgslsmith_add_vec3_i32(u_input.c ^ vec3<i32>(-1i, u_input.a.x, u_input.c.x), vec3<i32>(u_input.a.x, ~u_input.c.x, 13442i)));
}

