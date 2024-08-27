struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_3,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: vec2<f32> = vec2<f32>(-624f, -490f);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = abs(select(max(~vec3<i32>(global0[_wgslsmith_index_u32(56294u, 7u)], 5139i, -1i) & abs(u_input.a.yyx), ~(~u_input.a.zzz)), arg_0.a.b.yxz, vec3<bool>(true, !all(vec4<bool>(true, false, true, true)), true)));
    let var_1 = !(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true)));
    let var_2 = true;
    let var_3 = Struct_4(select(vec4<bool>(!select(true, var_2, var_2), true, -1i == (u_input.d | -24471i), true), vec4<bool>(all(!var_1.yzx), var_2, !(!var_2), select(true, all(vec2<bool>(true, true)), false)), !(global1.x > _wgslsmith_f_op_f32(min(-752f, -186f)))), select(!var_1.wz, vec2<bool>((82264u >= u_input.c.x) && var_2, var_1.x), !var_1.x), Struct_3(~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 20441i, -39642i, 2147483647i), arg_0.a.b) | vec4<i32>(_wgslsmith_clamp_i32(17684i, 1i, 1090i), i32(-1i) * -25252i, var_0.x, _wgslsmith_mult_i32(-1i, -33724i)), !var_1.xxy, select(!select(var_1, var_1, true), !vec4<bool>(false, var_1.x, var_1.x, var_1.x), false), true), arg_0.a.b, _wgslsmith_sub_vec2_i32(max(var_0.xz, select(arg_0.a.b.yz, vec2<i32>(-13991i, global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), false)), vec2<i32>(u_input.d, -13158i)) & -_wgslsmith_div_vec2_i32(~var_0.xx, -vec2<i32>(2147483647i, -44578i)));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x * 1000f)), vec2<f32>(_wgslsmith_f_op_f32(-global1.x), -609f), select(vec2<bool>(var_1.x, var_2), select(var_1.zx, var_3.a.zy, vec2<bool>(var_2, true)), select(var_1.xy, var_3.c.b.xy, var_3.c.b.x)))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))))));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-350f, _wgslsmith_f_op_f32(f32(-1f) * -742f)) + _wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(1u, u_input.a))))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1127f, -404f) + vec2<f32>(global1.x, global1.x))))))));
    var var_0 = global1.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(199f - -246f)) - -724f);
    var var_1 = select(vec2<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(~u_input.c.x), 7u)] >= _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-9484i, 1i, 0i, arg_1.x)), firstLeadingBit(arg_0.a.x)), !all(!arg_0.c)), arg_0.b.xy, any(select(!arg_0.b.yz, !select(arg_0.b.xy, arg_0.b.xx, arg_0.d), false || arg_0.b.x)));
    return Struct_1(4294967295u, vec4<i32>(-10531i, arg_1.x, -2147483647i, -arg_1.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = 2147483647i;
    var_0 = _wgslsmith_sub_i32(abs(-27978i), firstLeadingBit(-u_input.b.x ^ global0[_wgslsmith_index_u32(1u, 7u)]));
    var_0 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~abs(arg_1.b.x) | (arg_0.b.x << (1u % 32u)), 2147483647i), firstTrailingBit(global0[_wgslsmith_index_u32(arg_1.a, 7u)]), _wgslsmith_sub_i32(-u_input.d, arg_0.b.x));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(arg_1))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(283f, 359f)))))))));
    global0 = array<i32, 7>();
    return -23574i < (~8140i << (arg_1.a % 32u));
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: u32, arg_3: Struct_4) -> vec2<bool> {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, -392f), vec2<f32>(global1.x, global1.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1904f, 427f))))) * vec2<f32>(695f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(max(global1.x, -2128f))))))));
    global0 = array<i32, 7>();
    let var_0 = vec4<bool>(true, true, !arg_0.x | (!arg_0.x & arg_0.x), arg_3.b.x);
    let var_1 = _wgslsmith_mult_vec3_i32(min(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(25808i, 46500i, 35488i), vec3<i32>(global0[_wgslsmith_index_u32(101120u, 7u)], 2147483647i, u_input.a.x)), u_input.d), -_wgslsmith_mod_vec3_i32(arg_3.c.a.zzx, vec3<i32>(arg_3.e.x, arg_3.e.x, u_input.a.x))), u_input.a.wwy), vec3<i32>(func_2(arg_3.c, arg_3.d.yxx).b.x, -31316i, _wgslsmith_div_i32(1i, max(firstLeadingBit(-2147483647i), ~42152i))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-global1.x), -767f);
    return !vec2<bool>(arg_3.c.c.x, true);
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = arg_0.a;
    let var_1 = var_0.b.x;
    var var_2 = func_5(vec3<bool>(false, true, true != func_4(var_0, func_2(Struct_3(vec4<i32>(u_input.e, u_input.b.x, 14939i, 2147483647i), vec3<bool>(true, true, false), vec4<bool>(false, false, true, false), false), vec3<i32>(arg_0.a.b.x, 19106i, -1i)))), var_0.b.x, 0u, Struct_4(vec4<bool>(false, select(true, any(vec4<bool>(false, false, true, false)), true), any(vec4<bool>(false, false, false, false)), _wgslsmith_add_u32(95262u, 1u) == arg_0.a.a), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true), Struct_3(-vec4<i32>(23224i, -27551i, 0i, u_input.e), vec3<bool>(true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false))), !(global0[_wgslsmith_index_u32(4294967295u, 7u)] >= -38638i)), vec4<i32>(_wgslsmith_sub_i32(max(var_1, -26118i), u_input.b.x), 31475i, ~min(u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(~38464u, 7u)]), vec2<i32>(-45011i, abs(var_0.b.x))));
    var_2 = vec2<bool>(true, true);
    var var_3 = _wgslsmith_mod_i32(var_0.b.x, global0[_wgslsmith_index_u32(0u, 7u)]);
    return !vec2<bool>(!select(false, !var_2.x, true), false);
}

fn func_6(arg_0: Struct_4, arg_1: bool, arg_2: vec4<u32>, arg_3: vec3<i32>) -> vec4<bool> {
    global1 = vec2<f32>(-590f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-344f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(ceil(global1.x)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(u_input.c.x, vec4<i32>(2147483647i, u_input.b.x, 0i, -13246i))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * vec2<f32>(global1.x, global1.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, -1965f), vec2<f32>(global1.x, -516f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1110f))))));
    var var_0 = arg_0;
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1491f, 1370f) - vec2<f32>(_wgslsmith_f_op_f32(trunc(377f)), _wgslsmith_f_op_f32(f32(-1f) * -1318f)));
    let var_1 = var_0.c.c.x;
    return vec4<bool>(true, !(all(var_0.c.c) != (var_0.a.x || true)), !var_0.c.c.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + vec2<f32>(global1.x, -992f))))))));
    let var_1 = select(func_6(Struct_4(vec4<bool>(all(vec2<bool>(true, true)), true, any(vec2<bool>(true, false)), true), select(func_1(Struct_2(Struct_1(u_input.c.x, u_input.a))), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)), Struct_3(~vec4<i32>(global0[_wgslsmith_index_u32(0u, 7u)], u_input.a.x, 3901i, u_input.d), vec3<bool>(false, false, true), vec4<bool>(true, true, true, true), true), _wgslsmith_mult_vec4_i32(u_input.a, u_input.a) | (u_input.a >> (vec4<u32>(4294967295u, u_input.c.x, 19853u, u_input.c.x) % vec4<u32>(32u))), vec2<i32>(u_input.e, -1i)), all(vec3<bool>(false, true, any(vec3<bool>(false, true, false)))), ~max(min(vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, u_input.c.x), vec4<u32>(46236u, u_input.c.x, u_input.c.x, 25383u)), vec4<u32>(4294967295u, 0u, u_input.c.x, 11905u)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2870i, 1i, global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), ~u_input.a.wzy, -u_input.a.zyw), vec3<i32>(global0[_wgslsmith_index_u32(~u_input.c.x, 7u)], _wgslsmith_mult_i32(u_input.e, global0[_wgslsmith_index_u32(87214u, 7u)]), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], -1i)), vec3<bool>(true, true, true))), vec4<bool>(true, false, true, !any(vec2<bool>(true, true))), !(!vec4<bool>(all(vec3<bool>(true, true, false)), false, func_5(vec3<bool>(false, true, false), -28241i, u_input.c.x, Struct_4(vec4<bool>(true, true, true, false), vec2<bool>(false, true), Struct_3(vec4<i32>(u_input.d, 17387i, -1i, global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), vec3<bool>(true, false, false), vec4<bool>(true, true, true, false), true), u_input.a, u_input.b.xy)).x, true)));
    let var_2 = !select(!(!vec4<bool>(var_1.x, false, true, var_1.x)), !var_1, true);
    var var_3 = global1.x;
    var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-379f + _wgslsmith_f_op_f32(612f - var_0.x))), -720f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(reverseBits(reverseBits(u_input.a.xw)), max(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, -2376i), vec2<i32>(-9152i, 2147483647i)), vec2<i32>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(1207u, 7u)])), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-29354i, 1i), vec2<i32>(33857i, global0[_wgslsmith_index_u32(u_input.c.x, 7u)]))) >> (~(~u_input.c) % vec2<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), abs(vec4<u32>(0u, u_input.c.x, u_input.c.x, 1u))) | ~(~(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) << (vec4<u32>(u_input.c.x, u_input.c.x, 14779u, 111706u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(590f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + -1110f)));
}

