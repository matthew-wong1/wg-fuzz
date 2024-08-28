struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(25533i, 0i, -37141i), vec4<f32>(1526f, -922f, -863f, 787f), vec3<f32>(-1000f, 1856f, -119f));

var<private> global1: array<i32, 31> = array<i32, 31>(-1i, -6989i, 47493i, -5135i, i32(-2147483648), -1i, 22468i, 0i, -1i, 11952i, 0i, 49292i, 19552i, 2147483647i, 1i, 2147483647i, 0i, 0i, -57447i, -26572i, 12683i, 1i, -44903i, i32(-2147483648), -66208i, i32(-2147483648), 1i, 52452i, 2147483647i, -26655i, 36170i);

var<private> global2: bool = false;

var<private> global3: array<i32, 14>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    global2 = any(vec2<bool>(!(!any(vec3<bool>(false, false, true))), true));
    var var_0 = true;
    global2 = all(!select(vec4<bool>(true, all(vec3<bool>(true, true, false)), false, all(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))));
    global0 = arg_1;
    let var_1 = Struct_1(arg_1.a, _wgslsmith_f_op_vec4_f32(arg_0.b - arg_0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1.c)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c))));
    return vec3<i32>(abs(2643i), abs(_wgslsmith_mod_i32(min(global3[_wgslsmith_index_u32(1u, 14u)], ~(-14589i)), abs(0i))), global1[_wgslsmith_index_u32(u_input.c.x, 31u)]);
}

fn func_2() -> i32 {
    global0 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(abs(~15064i), _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(17997u, 14u)], ~global0.a.x, -global3[_wgslsmith_index_u32(1u, 14u)]), ~(~global3[_wgslsmith_index_u32(4294967295u, 14u)])), _wgslsmith_add_vec3_i32(func_3(Struct_1(global0.a, global0.b, vec3<f32>(-338f, global0.c.x, global0.b.x)), Struct_1(vec3<i32>(u_input.b.x, -39324i, global1[_wgslsmith_index_u32(u_input.c.x, 31u)]), global0.b, global0.b.wwy)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-8498i, -1i, -37163i), vec3<i32>(u_input.a, global3[_wgslsmith_index_u32(u_input.c.x, 14u)], global1[_wgslsmith_index_u32(0u, 31u)])), _wgslsmith_sub_vec3_i32(global0.a, vec3<i32>(u_input.b.x, -25107i, global3[_wgslsmith_index_u32(23796u, 14u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.c.x, global0.c.x, global0.b.x, 1066f))) + vec4<f32>(520f, 1000f, global0.b.x, 1000f)), vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(trunc(144f)), global0.c.x, 496f))) * _wgslsmith_f_op_vec4_f32(-global0.b)), vec3<f32>(239f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1698f), _wgslsmith_f_op_f32(-global0.b.x)))), 602f));
    global1 = array<i32, 31>();
    global0 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(1i | abs(u_input.a), global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.c.x, 74066u)), 14u)]), global0.a.x, u_input.a), vec4<f32>(global0.c.x, global0.c.x, 430f, _wgslsmith_div_f32(global0.c.x, global0.c.x)), _wgslsmith_f_op_vec3_f32(global0.b.ywy + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.c.x, global0.c.x, global0.c.x))), _wgslsmith_f_op_vec3_f32(-global0.c))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c.x, -300f, _wgslsmith_f_op_f32(global0.b.x - 572f)), global0.b.zxx, vec3<bool>(true, true, true)))));
    var var_1 = 4294967295u;
    return firstTrailingBit(41051i);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: i32) -> bool {
    let var_0 = vec3<i32>(arg_2, 2147483647i, _wgslsmith_sub_i32(arg_2 << (1u % 32u), func_2() | select(1i, 0i, arg_0.x))) >> (firstLeadingBit(vec3<u32>(countOneBits(u_input.c.x), 1u, ~u_input.c.x) >> (vec3<u32>(~u_input.c.x, ~4294967295u, u_input.c.x) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_1 = vec4<bool>(-abs(var_0.x) != _wgslsmith_mult_i32(u_input.b.x, -global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, arg_1.x), 14u)]), !any(select(vec2<bool>(true, arg_0.x), !arg_0, !arg_0.x)), select(false, false, true), all(vec2<bool>(all(vec3<bool>(arg_0.x, arg_0.x, false)), false)));
    var var_2 = Struct_1(~reverseBits(var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0.b))))), _wgslsmith_f_op_vec3_f32(global0.b.wwz * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b.xyz)) + vec3<f32>(global0.b.x, -1005f, _wgslsmith_f_op_f32(-global0.b.x)))));
    var var_3 = vec3<bool>(true, var_1.x, false);
    var var_4 = _wgslsmith_mod_vec4_u32(~firstTrailingBit(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, u_input.c.x, 32028u, arg_1.x), vec4<u32>(1u, 23174u, arg_1.x, u_input.c.x)), vec4<u32>(1u, 21288u, 4294967295u, u_input.c.x) << (vec4<u32>(18829u, u_input.c.x, 24333u, 33774u) % vec4<u32>(32u)))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(55588u), u_input.c.x << (4294967295u % 32u), 39902u, 1u), ~max(vec4<u32>(47971u, 46051u, 38207u, arg_1.x), vec4<u32>(arg_1.x, 1u, u_input.c.x, 4034u))));
    return var_1.x;
}

fn func_4(arg_0: vec3<bool>) -> f32 {
    var var_0 = Struct_1(-_wgslsmith_mult_vec3_i32(global0.a, -global0.a), global0.b, vec3<f32>(-710f, _wgslsmith_div_f32(-658f, -1815f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-523f, 240f, !arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1199f))))));
    global0 = Struct_1(_wgslsmith_add_vec3_i32(reverseBits(var_0.a), select(select(_wgslsmith_sub_vec3_i32(var_0.a, global0.a), var_0.a, false), var_0.a, !select(arg_0, arg_0, arg_0.x))), vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(-var_0.b.x), -415f, var_0.b.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_0.b.x, global0.b.x) + global0.b.xxw)))), _wgslsmith_f_op_vec3_f32(-var_0.b.wyy))));
    let var_1 = global3[_wgslsmith_index_u32(4294967295u, 14u)];
    let var_2 = 74671u;
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.x, 410f, var_0.c.x, var_0.b.x))), _wgslsmith_f_op_vec4_f32(global0.b - var_0.b), arg_0.x)), var_0.b)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global0.b * global0.b), var_0.b)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-218f, 580f, var_0.c.x)) + vec3<f32>(global0.c.x, var_0.c.x, 1114f))), vec3<f32>(-1062f, _wgslsmith_div_f32(144f, 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.x))))));
    return _wgslsmith_f_op_f32(-global0.c.x);
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = vec2<u32>(~(~_wgslsmith_div_u32(_wgslsmith_mod_u32(37864u, arg_0), _wgslsmith_add_u32(u_input.c.x, u_input.c.x))), ~(~select(31814u, 71903u, true)) << (~u_input.c.x % 32u));
    let var_1 = Struct_1(~_wgslsmith_div_vec3_i32(-arg_2.a & arg_2.a, abs(arg_2.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2.b.x - arg_2.b.x), _wgslsmith_f_op_f32(min(global0.b.x, 224f)), _wgslsmith_f_op_f32(-arg_1), global0.c.x) + arg_2.b), _wgslsmith_f_op_vec4_f32(-global0.b), !all(vec2<bool>(false, true)))), global0.b.yyw);
    var var_2 = 11221i;
    var var_3 = true;
    var var_4 = !select(vec3<bool>(all(vec2<bool>(false, false)), global0.a.x < ~global1[_wgslsmith_index_u32(71631u, 31u)], true), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), global3[_wgslsmith_index_u32(0u, 14u)] < global0.a.x), vec3<bool>(true, true, true), select(true, true, true)), all(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(global0.a.x < firstLeadingBit(~_wgslsmith_div_i32(u_input.a, 2147483647i)), func_5(~_wgslsmith_dot_vec2_u32(u_input.c, countOneBits(vec2<u32>(u_input.c.x, u_input.c.x))), _wgslsmith_f_op_f32(func_4(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), func_1(vec2<bool>(false, false), u_input.c, -1i)))), Struct_1(vec3<i32>(_wgslsmith_add_i32(-40817i, global0.a.x), 10142i, global1[_wgslsmith_index_u32(0u, 31u)] ^ global1[_wgslsmith_index_u32(u_input.c.x, 31u)]), vec4<f32>(-1166f, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(trunc(-904f)), global0.c.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(880f, -1107f, global0.b.x), _wgslsmith_f_op_vec3_f32(-global0.b.ywy), vec3<bool>(true, true, true)))), 18153i), false, !(!any(vec3<bool>(true, false, true))));
    let var_1 = 55652u < u_input.c.x;
    global2 = var_1;
    global3 = array<i32, 14>();
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-787f, 144f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.b.x, -399f), vec2<f32>(-318f, 269f)))), vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), 408f)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-global0.b.x))));
    let var_3 = select(vec4<u32>(_wgslsmith_add_u32(u_input.c.x, ~42760u), max(44304u, 0u), u_input.c.x, u_input.c.x), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 35422u, u_input.c.x, u_input.c.x), vec4<u32>(0u, 1u, u_input.c.x, u_input.c.x)) >> (min(vec4<u32>(u_input.c.x, 61064u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u)) % vec4<u32>(32u))), var_1) >> (_wgslsmith_div_vec4_u32(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 0u, 78391u), vec4<u32>(4294967295u, 1u, 80103u, 1u), firstLeadingBit(vec4<u32>(u_input.c.x, 23143u, 14664u, 44032u))), select(~vec4<u32>(89629u, u_input.c.x, 43119u, u_input.c.x), vec4<u32>(71318u, u_input.c.x, u_input.c.x, 0u) ^ vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), var_1 == false)), ~(~firstLeadingBit(vec4<u32>(1u, 1u, 4294967295u, u_input.c.x)))) % vec4<u32>(32u));
    global1 = array<i32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(abs(-523f)), _wgslsmith_f_op_f32(var_2.x + 542f), -923f, _wgslsmith_f_op_f32(-var_2.x)), vec4<f32>(global0.c.x, -2139f, global0.c.x, global0.c.x)))), 4294967295u);
}

