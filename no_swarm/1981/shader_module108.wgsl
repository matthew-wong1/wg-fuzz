struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: bool;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1439f)), arg_0.a.x) * _wgslsmith_f_op_vec2_f32(-arg_0.a.ww));
    var var_1 = Struct_3(2147483647i, 1i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -149f))), all(!select(vec3<bool>(arg_1.d, arg_1.d, true), vec3<bool>(arg_1.d, arg_1.d, arg_1.d), vec3<bool>(arg_1.d, true, false))) || arg_1.d);
    let var_2 = 10806i;
    var var_3 = arg_1;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1520f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(258f + _wgslsmith_f_op_f32(f32(-1f) * -1723f)))));
    return 54817u;
}

fn func_2(arg_0: vec2<f32>) -> vec4<f32> {
    global1 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, select(u_input.a, global0.x, all(vec3<bool>(true, false, true))), 59600u), u_input.a) == _wgslsmith_add_u32(~_wgslsmith_div_u32(13717u, u_input.a), _wgslsmith_dot_vec2_u32(~global0.yx, vec2<u32>(~global0.x, 35253u)));
    global0 = firstTrailingBit(_wgslsmith_add_vec3_u32(~(vec3<u32>(3386u, global0.x, 48965u) ^ ~vec3<u32>(0u, 1u, 4294967295u)), vec3<u32>(u_input.a, ~func_3(Struct_1(vec4<f32>(-251f, -310f, arg_0.x, arg_0.x)), Struct_3(u_input.b, u_input.b, arg_0.x, true)), _wgslsmith_div_u32(14451u ^ u_input.a, u_input.a))));
    var var_0 = Struct_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(8568i, -1i, u_input.b), ~vec3<i32>(u_input.b, u_input.b, -1i)), max(1i, u_input.b)), vec2<i32>(~u_input.b, u_input.b), ~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, u_input.b)) << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(13348u, 67612u, 21253u, 51999u), vec4<u32>(1u, 1u, u_input.a, u_input.a)), global0.x) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x)));
    var var_1 = select(~abs(~u_input.a), ~62531u, select(all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), _wgslsmith_mod_u32(1723u, u_input.a) <= ~1u, true)) | ~(~global0.x);
    var var_2 = Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(var_0.b, _wgslsmith_f_op_vec3_f32(sign(var_0.b)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1695f, arg_0.x, var_0.b.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2426f, var_0.b.x, arg_0.x))), -108f >= _wgslsmith_f_op_f32(-arg_0.x))))));
    return vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(var_2.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x - -344f))))), _wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(round(var_0.b.x))));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    var var_0 = firstTrailingBit(firstLeadingBit(arg_2.a));
    global1 = arg_2.d;
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.c, 746f), vec2<f32>(arg_2.c, arg_2.c)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1492f, arg_2.c, _wgslsmith_f_op_f32(494f + arg_2.c), _wgslsmith_f_op_f32(max(arg_2.c, 1809f))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> vec3<u32> {
    global1 = u_input.a != (~(~global0.x | ~u_input.a) & ~global0.x);
    var var_0 = Struct_2(_wgslsmith_clamp_vec2_i32(~vec2<i32>(i32(-1i) * -1i, ~u_input.b), countOneBits(vec2<i32>(abs(u_input.b), arg_1.x)), arg_1), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1578f)) * _wgslsmith_f_op_f32(arg_0.a.x * -920f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(max(510f, arg_0.a.x))));
    var var_1 = Struct_2(vec2<i32>(arg_1.x, firstTrailingBit(var_0.a.x >> (4294967295u % 32u))) ^ select(vec2<i32>(-1i) * -vec2<i32>(var_0.a.x, var_0.a.x), select(~vec2<i32>(var_0.a.x, -18579i), select(vec2<i32>(arg_1.x, arg_1.x), vec2<i32>(-1i, 2147483647i), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), any(vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -490f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-1000f - func_1(false, global0.zy, Struct_3(u_input.b, -34385i, arg_0.a.x, false), false).a.x))));
    let var_2 = Struct_2(vec2<i32>(-1i) * -arg_1, vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * var_1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-733f)) - var_0.b.x), _wgslsmith_f_op_vec4_f32(func_2(vec2<f32>(-803f, var_1.b.x))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b.x, -176f)))));
    let var_3 = vec4<u32>(1u, 1u, global0.x, _wgslsmith_mod_u32(~(~4294967295u), global0.x)) >> (vec4<u32>(max(_wgslsmith_div_u32(~global0.x, 4294967295u), 64510u), ~(~69380u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), vec2<u32>(~u_input.a, global0.x)), global0.x) % vec4<u32>(32u));
    return countOneBits(var_3.yxw << (var_3.wxx % vec3<u32>(32u)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    var var_0 = select(vec3<bool>(true, false, arg_2), vec3<bool>(select(arg_2, arg_2, u_input.a != ~u_input.a), arg_2, all(select(!vec2<bool>(arg_2, true), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), true), !vec2<bool>(arg_2, arg_2)))), !(!select(vec3<bool>(arg_2, true, arg_2), !vec3<bool>(arg_2, arg_2, true), true)));
    var var_1 = _wgslsmith_add_u32(global0.x, ~_wgslsmith_sub_u32(136409u, 1u)) == abs(_wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.a, 119837u), 26664u));
    var_1 = true;
    var var_2 = arg_1;
    var var_3 = arg_0;
    return arg_1;
}

fn func_6(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = Struct_3(arg_0.a.x, arg_0.a.x, 875f, true);
    let var_1 = arg_0.b.xy;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1046f, var_0.c, -311f, -904f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 2012f, var_0.c, -937f))))), vec4<f32>(arg_0.b.x, var_0.c, var_1.x, 1370f))));
    let var_3 = !var_0.d;
    var var_4 = ~(-(countOneBits(-vec4<i32>(arg_0.a.x, -1i, 1i, -1i)) & (vec4<i32>(var_0.a, var_0.a, -10674i, -1i) | (vec4<i32>(var_0.a, var_0.a, 2147483647i, arg_0.a.x) >> (vec4<u32>(u_input.a, 33094u, 4294967295u, 71341u) % vec4<u32>(32u))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-674f)), _wgslsmith_f_op_f32(arg_0.b.x * -805f), _wgslsmith_f_op_f32(step(arg_0.b.x, var_0.c)), _wgslsmith_f_op_f32(var_2.a.x - 1676f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_2.a * vec4<f32>(arg_0.b.x, -1480f, var_0.c, 1118f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_6(func_5(_wgslsmith_add_vec3_u32(~(vec3<u32>(0u, global0.x, 0u) << (vec3<u32>(14322u, global0.x, 110526u) % vec3<u32>(32u))), func_4(func_1(false, global0.yx, Struct_3(u_input.b, u_input.b, -1168f, false), false), max(vec2<i32>(u_input.b, -21869i), vec2<i32>(u_input.b, u_input.b)))), Struct_2(vec2<i32>(7174i, u_input.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))))));
    global0 = _wgslsmith_add_vec3_u32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0, var_0))), select(vec2<i32>(_wgslsmith_clamp_i32(u_input.b, 0i, 0i), ~(-2147483647i)), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, -25016i)), vec2<i32>(u_input.b, u_input.b), all(vec4<bool>(true, true, true, true))), !(0i == u_input.b))), ~(~select(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 32569u, global0.x), vec3<u32>(1u, 0u, 24286u)), ~vec3<u32>(0u, 36374u, u_input.a), vec3<bool>(true, true, false))));
    var var_1 = false;
    let var_2 = Struct_3(u_input.b, func_5(~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(2912u, u_input.a, u_input.a), vec3<u32>(global0.x, u_input.a, 1u)), ~vec3<u32>(global0.x, u_input.a, 121198u), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(4294967295u, 41064u, u_input.a))), Struct_2(-firstTrailingBit(vec2<i32>(u_input.b, 17467i)), _wgslsmith_f_op_vec3_f32(-var_0.wwx)), true).a.x, _wgslsmith_f_op_f32(round(-234f)), !any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), var_0.x < var_0.x)));
    var var_3 = var_2.d;
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_1(all(vec4<bool>(false, false, var_2.d, var_4.d)), global0.xx, Struct_3(var_2.a, u_input.b, 431f, var_2.d), !var_4.d).a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 335f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1059f + var_4.c) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-574f, var_4.c) - var_4.c)) - _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_2.c))))), u_input.a, -60501i);
}

