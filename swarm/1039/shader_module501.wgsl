struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(842f, 1243f, -1522f, -1550f, -978f, 1293f, -159f);

var<private> global1: array<f32, 3>;

var<private> global2: Struct_1 = Struct_1(false, true, vec2<u32>(34621u, 66076u), 0u, 31964u);

var<private> global3: vec4<u32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_mod_u32(~u_input.a.x, ~(~min(~0u, _wgslsmith_mod_u32(1u, global2.c.x))));
    let var_1 = vec4<u32>(1u, global3.x, ~max(_wgslsmith_mod_u32(u_input.a.x, global2.e), firstTrailingBit(38548u)), u_input.a.x);
    var var_2 = arg_2;
    global0 = array<f32, 7>();
    var var_3 = select(vec2<bool>(var_2.b, select(_wgslsmith_mult_u32(29166u, arg_2.c.x), 0u >> (u_input.a.x % 32u), var_2.a && false) == ~(~1u)), select(vec2<bool>(_wgslsmith_div_u32(var_1.x, global3.x) >= 4294967295u, arg_1), !select(select(vec2<bool>(true, false), vec2<bool>(false, var_2.a), true), select(vec2<bool>(false, false), vec2<bool>(true, arg_2.a), vec2<bool>(true, var_2.a)), all(vec3<bool>(arg_2.b, true, false))), false), true);
    return !arg_1;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec3<f32>) -> i32 {
    let var_0 = firstTrailingBit(vec4<u32>(~max(_wgslsmith_mod_u32(1u, 36779u), _wgslsmith_mult_u32(4294967295u, global2.e)), global2.c.x, 1u, global3.x));
    global2 = Struct_1(any(!(!vec2<bool>(global2.a, true))), select(any(vec2<bool>(true, false)) | (arg_0 & false), any(vec2<bool>(false, global2.b)), func_3(arg_2.yx, global0[_wgslsmith_index_u32(global2.c.x, 7u)] <= 880f, Struct_1(global2.a, false, global2.c, 12619u, arg_1))) & any(vec4<bool>(true, !arg_0, true, arg_2.x == -1706f)), _wgslsmith_mult_vec2_u32(u_input.a, min(global3.xy, max(global3.yw, _wgslsmith_mod_vec2_u32(u_input.a, global3.zx)))), 251u << (global2.d % 32u), _wgslsmith_add_u32(17081u | var_0.x, ~var_0.x));
    var var_1 = ~(-1i);
    var var_2 = global2.d;
    var var_3 = Struct_1(global2.b, true, u_input.a & global3.zx, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~global3.xw, u_input.a), 1077u), ~firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global2.d, global3.x), var_0.x)));
    return _wgslsmith_clamp_i32(0i, -1i, _wgslsmith_clamp_i32(-firstTrailingBit(_wgslsmith_sub_i32(34766i, 39925i)), _wgslsmith_mult_i32(-20828i, 1i), ~(-countOneBits(1i))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global0 = array<f32, 7>();
    var var_0 = vec2<i32>(reverseBits(50394i), i32(-1i) * -select(func_2(arg_0.x, 0u, vec3<f32>(-761f, 1070f, 1536f)), abs(797i), global2.b));
    let var_1 = Struct_1(true & all(!(!vec2<bool>(global2.a, true))), all(vec2<bool>(any(!arg_0.yx), true)), ~firstLeadingBit(select(vec2<u32>(global2.c.x, global3.x), u_input.a, arg_0.zy)) >> (global3.ww % vec2<u32>(32u)), ~u_input.a.x, 1u);
    var var_2 = var_0.x;
    let var_3 = Struct_1(!(!all(arg_0)), all(arg_0.yy), countOneBits(vec2<u32>(global2.e, abs(firstTrailingBit(global3.x)))), global2.c.x, u_input.a.x);
    return Struct_1(var_1.a, !((var_3.a == !var_1.a) | true), _wgslsmith_add_vec2_u32(global3.wx, vec2<u32>(max(_wgslsmith_dot_vec3_u32(global3.wyw, vec3<u32>(17820u, global3.x, 15209u)), ~1u), global2.c.x)), reverseBits(4294967295u) & u_input.a.x, _wgslsmith_div_u32(1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<bool>(global1[_wgslsmith_index_u32(~countOneBits(global2.e), 3u)] <= global1[_wgslsmith_index_u32(1u, 3u)], global2.a, all(vec3<bool>(-602f < global1[_wgslsmith_index_u32(global3.x, 3u)], false, u_input.a.x <= 4294967295u))));
    var var_1 = func_1(select(vec3<bool>(true, true, all(select(vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, global2.b), true))), !(!vec3<bool>(false, global2.b, false)), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-321f, -752f, 629f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(global2.e, 7u)])), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(33821u, 3u)])), -3126f)))));
    global0 = array<f32, 7>();
    let var_3 = var_0;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_2.x), -254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1977f)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(7731u, _wgslsmith_mult_u32(157532u, 26348u)), 3u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(~(~vec4<u32>(4294967295u, 7838u, var_0.d, u_input.a.x)), vec4<u32>(~5893u, var_3.d, min(u_input.a.x, 17035u), 4294967295u)), countOneBits(~select(u_input.a.x, var_0.c.x, false)) & ~(~var_3.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.e, 3u)]), _wgslsmith_f_op_f32(max(452f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_4.x)), _wgslsmith_f_op_f32(floor(1014f))))))), ~1u, select(~(-vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(1i, 1i, 1i, 1i), any(!select(vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(false, global2.a, true), var_3.b))));
}

