struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, true, false), -632f);

var<private> global1: u32 = 1672u;

var<private> global2: array<vec2<i32>, 6>;

var<private> global3: array<vec4<f32>, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> vec4<u32> {
    global3 = array<vec4<f32>, 16>();
    return vec4<u32>(u_input.a, max(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 54229u), max(vec2<u32>(u_input.a, 4413u), vec2<u32>(8474u, 0u))), ~reverseBits(u_input.a)), ~(~u_input.a)), ~(~1u), _wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(46065u, 19654u, u_input.a, u_input.a), ~(~vec4<u32>(u_input.a, 81759u, u_input.a, 4251u)))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(select(1u, ~u_input.a, !(global0.b > arg_0.b)), 5786u, 8598u, ~u_input.a), ~countOneBits(vec4<u32>(26138u, ~46927u, 28470u, 0u)), firstTrailingBit(~abs(func_3(arg_0, vec3<bool>(true, false, false)))));
    global1 = var_0.x | _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(2623u, 16313u), _wgslsmith_mod_u32(var_0.x, 0u)), reverseBits(~_wgslsmith_mult_vec2_u32(var_0.yy, vec2<u32>(4294967295u, u_input.a))));
    var var_1 = func_3(Struct_1(select(!select(arg_0.a, vec3<bool>(true, true, global0.a.x), global0.a), select(select(vec3<bool>(true, true, arg_0.a.x), vec3<bool>(arg_0.a.x, false, false), arg_0.a), vec3<bool>(true, arg_1, global0.a.x), true), vec3<bool>(false, arg_0.a.x || global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(-global0.b)), select(select(global0.a, vec3<bool>(true, all(arg_0.a), false && arg_1), !select(vec3<bool>(arg_1, arg_1, false), global0.a, arg_0.a.x)), arg_0.a, arg_0.a)).yyw;
    global2 = array<vec2<i32>, 6>();
    let var_2 = 2471u;
    return _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(10555i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(4630i, -17400i, -1i, 10642i), vec4<i32>(-1i, 2147483647i, -1852i, -1i))) | ~(-810i), abs(-2147483647i)), countOneBits(firstTrailingBit(-abs(-16198i))));
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(global0.a, global0.b);
    var var_1 = ~vec3<i32>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(26273i, -1i, arg_0.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-9373i, 29401i, -38951i), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, 2147483647i), vec3<i32>(arg_0.x, -2147483647i, arg_0.x)), vec3<i32>(-2147483647i, arg_0.x, arg_0.x) & vec3<i32>(1i, 45346i, -16607i))), -(0i << (u_input.a % 32u)), arg_0.x);
    var var_2 = Struct_1(!(!select(vec3<bool>(false, var_0.a.x, true), vec3<bool>(global0.a.x, global0.a.x, false), !vec3<bool>(true, false, global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * -728f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b)))));
    var var_3 = _wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(abs(u_input.a), _wgslsmith_mod_u32(55037u, 4294967295u)), reverseBits(vec2<u32>(u_input.a, u_input.a))), vec2<u32>(reverseBits(~abs(u_input.a)), u_input.a));
    let var_4 = Struct_1(vec3<bool>(min(var_3.x, var_3.x) < _wgslsmith_add_u32(u_input.a, u_input.a), any(!(!global0.a.yy)), global0.a.x), var_0.b);
    return Struct_1(vec3<bool>(global0.a.x, any(!vec4<bool>(true, false, false, global0.a.x)), all(var_4.a.yz)), _wgslsmith_f_op_f32(-global0.b));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>) -> vec3<u32> {
    global1 = u_input.a;
    global1 = ~(u_input.a ^ ~_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, 1u), reverseBits(6545u)));
    global3 = array<vec4<f32>, 16>();
    var var_0 = func_4(max(firstTrailingBit(reverseBits(vec2<i32>(arg_0.x, 47811i))), global2[_wgslsmith_index_u32(u_input.a, 6u)]) ^ (_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, 1i)), ~vec2<i32>(-665i, 2147483647i)) ^ vec2<i32>(arg_0.x, func_2(Struct_1(vec3<bool>(global0.a.x, true, global0.a.x), global0.b), true))));
    let var_1 = 19246u;
    return select(vec3<u32>(u_input.a, 5615u, ~var_1), min(select(firstLeadingBit(vec3<u32>(65094u, 69262u, 9613u)), ~vec3<u32>(1u, u_input.a, var_1), select(global0.a, var_0.a, true)), ~vec3<u32>(var_1, 37434u, 82761u) | vec3<u32>(u_input.a, 18190u, 27822u)) ^ ~vec3<u32>(firstTrailingBit(29063u), u_input.a, u_input.a), !func_4(arg_0.yy).a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 25225u;
    var var_0 = Struct_1(vec3<bool>(all(vec2<bool>(false, true)), global0.a.x, false), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(938f * 869f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global0.b, global0.b, true)), 2185f, select(false, true, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-282f, firstTrailingBit(select(28057i, _wgslsmith_mod_i32(-2147483647i, 4683i), var_0.a.x | false) >> (_wgslsmith_mult_u32(countOneBits(u_input.a), ~u_input.a) % 32u)), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b))) + -1081f), abs(~(~func_1(vec3<i32>(27248i, 71247i, 72831i), vec4<bool>(var_0.a.x, var_0.a.x, global0.a.x, var_0.a.x)))));
}

