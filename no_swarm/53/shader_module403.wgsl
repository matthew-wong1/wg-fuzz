struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global1: array<vec2<bool>, 19>;

var<private> global2: f32;

var<private> global3: array<Struct_2, 16>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> vec2<u32> {
    global1 = array<vec2<bool>, 19>();
    let var_0 = Struct_2(arg_1, vec4<i32>(19501i, reverseBits(~_wgslsmith_dot_vec3_i32(arg_2.b.yyx, arg_2.b.xyz)), ~(-_wgslsmith_div_i32(-1i, arg_1.a)), 52678i));
    let var_1 = u_input.a.x;
    var var_2 = Struct_1(reverseBits(abs(arg_1.a)), true);
    var var_3 = -8033i;
    return _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~select(vec2<u32>(90204u, u_input.b.x), vec2<u32>(4294967295u, 59067u), global1[_wgslsmith_index_u32(14040u, 19u)]), firstTrailingBit(vec2<u32>(u_input.b.x, 93945u) & vec2<u32>(55406u, 1u))), abs(~countOneBits(vec2<u32>(var_1, var_1)))) << ((~firstLeadingBit(u_input.a) | (vec2<u32>(_wgslsmith_sub_u32(4294967295u, var_1), 1u) ^ u_input.a)) % vec2<u32>(32u));
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    global3 = array<Struct_2, 16>();
    var var_0 = !(!global0.x);
    var var_1 = ~arg_0.x;
    var var_2 = ~func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(983f - _wgslsmith_f_op_f32(ceil(-450f))) + _wgslsmith_f_op_f32(-1298f - 709f)), Struct_1((0i & u_input.c) ^ _wgslsmith_mult_i32(2147483647i, 0i), true), Struct_2(Struct_1(-42466i, true), vec4<i32>(-u_input.c, 1i, _wgslsmith_sub_i32(u_input.c, 0i), ~1i)));
    global0 = select(!select(vec4<bool>(true, global0.x, !global0.x, any(vec3<bool>(global0.x, global0.x, global0.x))), select(select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(false, global0.x, global0.x, false), global0.x), select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x)), vec4<bool>(true, true, true, global0.x)), !global0.x), select(!(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x))), select(!select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), select(!vec4<bool>(true, true, global0.x, global0.x), !vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), vec4<bool>(global0.x | false, false, any(global0.xy), any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), vec4<bool>(global0.x, any(select(global1[_wgslsmith_index_u32(3763u, 19u)], vec2<bool>(false, false), global0.x)), true, 1i <= -u_input.c)), !global0.x);
    return countOneBits(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-17732i, -1i & u_input.c), u_input.c) & u_input.c);
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = Struct_2(Struct_1(72464i, any(global0.zzx)), firstTrailingBit(~abs(select(vec4<i32>(arg_2.a, arg_2.a, -17853i, arg_2.a), vec4<i32>(-1i, arg_2.a, var_0.a, var_0.a), false))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, arg_1.x)) - -317f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -971f))))))));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(7918u, ~u_input.a.x ^ ~u_input.a.x, u_input.a.x), countOneBits(max(~u_input.d.wyx, ~u_input.b))), u_input.a.x), 16u)];
    var var_4 = Struct_1(_wgslsmith_add_i32(-_wgslsmith_clamp_i32(-var_3.b.x, -var_1.b.x, -16177i), var_3.b.x), all(select(select(vec2<bool>(true, var_3.a.b), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 19u)], false), vec2<bool>(false, true), select(select(global1[_wgslsmith_index_u32(u_input.d.x, 19u)], vec2<bool>(global0.x, var_3.a.b), vec2<bool>(global0.x, true)), global1[_wgslsmith_index_u32(4294967295u, 19u)], -14351i > var_1.a.a))));
    return Struct_1(-var_0.a, var_3.a.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_2(func_4(-1000f, vec2<f32>(_wgslsmith_f_op_f32(-549f * _wgslsmith_f_op_f32(-937f - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(873f * -302f))), Struct_1(func_2(arg_1 & u_input.b.yy), true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-2527f, _wgslsmith_f_op_f32(trunc(-1542f)))), _wgslsmith_f_op_f32(f32(-1f) * -310f)))), abs(_wgslsmith_mult_vec4_i32(max(abs(vec4<i32>(0i, 48351i, 0i, -56633i)), select(vec4<i32>(u_input.c, -2147483647i, 0i, -1i), vec4<i32>(u_input.c, 0i, 2147483647i, u_input.c), vec4<bool>(true, global0.x, global0.x, true))), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.c, -2147483647i, 1i), vec4<i32>(47i, u_input.c, 8876i, u_input.c) << (vec4<u32>(4294967295u, 4294967295u, 84742u, arg_0.x) % vec4<u32>(32u))))));
    global3 = array<Struct_2, 16>();
    var var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.d.www, firstTrailingBit(max(vec3<u32>(55569u, 1u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, arg_0.x, 14970u), u_input.b)))), arg_1.x ^ _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(_wgslsmith_div_u32(arg_1.x, arg_1.x), _wgslsmith_sub_u32(arg_0.x, 4294967295u))));
    global1 = array<vec2<bool>, 19>();
    var_0 = global3[_wgslsmith_index_u32(~(~max(~11699u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 1u), u_input.b.zx)) ^ 0u), 16u)];
    return func_4(_wgslsmith_f_op_f32(-122f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1571f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-451f))), _wgslsmith_f_op_f32(step(1000f, 559f)) < -187f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1586f)), -1313f))), _wgslsmith_f_op_f32(f32(-1f) * -1182f)), Struct_1(_wgslsmith_mod_i32(var_0.a.a, ~firstLeadingBit(u_input.c)), false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f * -374f))));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_2) -> i32 {
    let var_0 = arg_3.a;
    var var_1 = false;
    var var_2 = true;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -110f))));
    var_1 = _wgslsmith_f_op_f32(ceil(1482f)) > -2241f;
    return -5894i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_5(global3[_wgslsmith_index_u32(u_input.d.x, 16u)], u_input.c, max(-_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.c, u_input.c), vec3<i32>(u_input.c, 0i, u_input.c)), -vec3<i32>(1i, 1i, 1i)), Struct_2(func_1(_wgslsmith_add_vec2_u32(u_input.b.xy, vec2<u32>(u_input.a.x, 0u)), vec2<u32>(u_input.a.x, u_input.d.x)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, -3665i, u_input.c), vec4<i32>(15597i, u_input.c, u_input.c, u_input.c)))), func_1(func_3(-1760f, func_1(vec2<u32>(43892u, u_input.d.x), vec2<u32>(66085u, 0u)), global3[_wgslsmith_index_u32(~u_input.d.x, 16u)]) | ~(~vec2<u32>(u_input.a.x, u_input.d.x)), u_input.b.xz).b);
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -421f)), _wgslsmith_f_op_f32(step(1667f, _wgslsmith_f_op_f32(f32(-1f) * -1482f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1006f, -524f)))) + vec2<f32>(-1769f, _wgslsmith_f_op_f32(trunc(-169f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 1737f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(var_1.x, var_1.x, var_1.x)))))), u_input.b.x, u_input.d.zyx, vec3<i32>(-14003i, 1i, 0i));
}

