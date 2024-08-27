struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<f32>,
    e: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<bool, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    var var_0 = ~vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(47929i, 23529i, -2147483647i), vec3<i32>(21484i, u_input.c.x, 0i)), ~0i) << (_wgslsmith_add_u32(1u, reverseBits(u_input.e.x)) % 32u), u_input.c.x, u_input.c.x, firstTrailingBit(u_input.c.x));
    global0 = !arg_0.b;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x)));
    global0 = !(!arg_0.b);
    global0 = !vec2<bool>(select(!global1[_wgslsmith_index_u32(u_input.e.x, 24u)], arg_0.a, any(!vec4<bool>(true, arg_0.d, false, arg_0.d))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, arg_1.x), _wgslsmith_f_op_f32(var_1 * 1333f))) < _wgslsmith_f_op_f32(158f * arg_1.x));
    return var_0.x;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: i32) -> vec4<u32> {
    var var_0 = Struct_5(vec4<i32>(u_input.c.x, countOneBits(arg_2), -countOneBits(-1i), func_3(Struct_1(!global0.x, select(vec2<bool>(global0.x, global1[_wgslsmith_index_u32(0u, 24u)]), vec2<bool>(global0.x, false), global0.x), ~25122u, global0.x), vec4<f32>(_wgslsmith_f_op_f32(-303f + arg_0), _wgslsmith_f_op_f32(-arg_1.x), arg_0, arg_0))), max(~_wgslsmith_add_u32(20966u, 39805u | u_input.e.x), 1u));
    var var_1 = firstTrailingBit(reverseBits(u_input.e));
    var var_2 = _wgslsmith_f_op_vec3_f32(-arg_1.zyw);
    var_1 = vec2<u32>(_wgslsmith_div_u32(~u_input.a, 1u), ~(~var_0.b)) | select(~u_input.b.zx, vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b, var_1.x, var_0.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_0.b, 69598u), vec3<u32>(u_input.a, var_0.b, var_1.x), u_input.d)), 1u), false);
    var var_3 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_1.x, ~22752u), ~firstLeadingBit(70179u)), u_input.a), ~u_input.a);
    return _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_3.x, var_1.x, 4294967295u, 0u) & vec4<u32>(25767u, var_0.b, var_3.x, 154745u), ~u_input.b, _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 4294967295u, var_1.x, 4294967295u), countOneBits(vec4<u32>(79270u, 48044u, var_1.x, 15662u)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5, arg_2: f32) -> Struct_4 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 40333u, 55525u, u_input.e.x)), func_2(_wgslsmith_f_op_f32(-774f - 996f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1153f, -1039f, -802f, arg_2))), _wgslsmith_div_i32(u_input.c.x, u_input.c.x)) | (reverseBits(vec4<u32>(arg_0.c, u_input.e.x, 38397u, arg_1.b)) << ((vec4<u32>(arg_0.c, u_input.a, arg_1.b, arg_1.b) >> (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u)))), 1u, u_input.e.x);
    var var_1 = arg_0;
    global1 = array<bool, 24>();
    let var_2 = _wgslsmith_div_u32(arg_0.c & ~(~min(var_1.c, var_1.c)), _wgslsmith_clamp_u32(~firstTrailingBit(abs(u_input.d.x)), _wgslsmith_dot_vec3_u32(firstTrailingBit(var_0), vec3<u32>(~var_0.x, 50079u, 14040u)), arg_1.b));
    var var_3 = vec3<bool>(false, global0.x, true);
    return Struct_4(select(vec4<bool>(true, true, firstLeadingBit(36564u) < arg_1.b, false), !(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 24u)], false, false), vec4<bool>(var_1.a, arg_0.d, true, global0.x), vec4<bool>(var_3.x, true, true, true))), true), _wgslsmith_mult_u32(var_1.c, 1u));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: bool) -> u32 {
    let var_0 = arg_1;
    let var_1 = false;
    var var_2 = all(select(!arg_1.a.yx, vec2<bool>(false, false), select(var_0.a.xx, vec2<bool>(var_1 || true, global1[_wgslsmith_index_u32(var_0.b, 24u)] & true), select(arg_1.a.xy, arg_1.a.xz, true))));
    var var_3 = u_input.c.x;
    var_2 = any(select(arg_1.a.zx, arg_1.a.zz, !vec2<bool>(var_0.a.x, u_input.c.x != -21130i)));
    return func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-687f)), 299f)) + 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(719f, -3346f, -1000f, -1633f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-819f, -1031f, -325f, 1018f))))))), 0i).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(any(vec3<bool>(global0.x, global0.x, global1[_wgslsmith_index_u32(u_input.e.x, 24u)])), select(select(select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 24u)], false), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], true), u_input.c.x > u_input.c.x), select(!vec2<bool>(global0.x, global1[_wgslsmith_index_u32(0u, 24u)]), select(vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 24u)]), vec2<bool>(false, true)), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global1[_wgslsmith_index_u32(53008u, 24u)]))), false), select(select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 24u)], global0.x), false)), vec2<bool>(true, true), any(select(vec2<bool>(global0.x, global1[_wgslsmith_index_u32(u_input.b.x, 24u)]), vec2<bool>(global0.x, true), vec2<bool>(global1[_wgslsmith_index_u32(0u, 24u)], false)))), vec2<bool>(true, false)), reverseBits(1u), true);
    var var_1 = Struct_3(~(var_0.c & firstTrailingBit(~u_input.e.x)), _wgslsmith_mod_vec4_u32(~(~(vec4<u32>(u_input.a, u_input.e.x, 1u, var_0.c) << (u_input.b % vec4<u32>(32u)))), vec4<u32>(~u_input.d.x, var_0.c, select(var_0.c, ~1u, false), 1u)), Struct_1(firstTrailingBit(33686u) == 24382u, var_0.b, func_4(~reverseBits(var_0.c), func_1(var_0, Struct_5(vec4<i32>(u_input.c.x, -5690i, u_input.c.x, 1i), u_input.a), _wgslsmith_f_op_f32(558f - -1369f)), select(true, any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 24u)], global1[_wgslsmith_index_u32(var_0.c, 24u)], global1[_wgslsmith_index_u32(22543u, 24u)])), !global0.x)), true), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-997f, 624f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-294f, 450f)))), vec2<f32>(1286f, _wgslsmith_f_op_f32(f32(-1f) * -929f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1023f, -1101f)) + vec2<f32>(2105f, 1116f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(491f, -920f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(2248f, -232f), vec2<f32>(2133f, -1185f))))))), _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, u_input.c.x)));
    let var_2 = Struct_4(select(select(vec4<bool>(true, false, var_0.b.x, true), select(select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b.x, 24u)], false), vec4<bool>(var_1.c.b.x, true, var_0.a, false), vec4<bool>(false, var_0.b.x, global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(var_1.a, 24u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(23184u, 24u)], var_0.a, false, true), vec4<bool>(true, var_0.d, var_1.c.a, global0.x), vec4<bool>(global0.x, global1[_wgslsmith_index_u32(var_1.c.c, 24u)], var_1.c.a, global1[_wgslsmith_index_u32(var_0.c, 24u)])), !vec4<bool>(false, var_1.c.d, true, false)), global0.x & false), !select(vec4<bool>(false, true, true, global0.x), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], var_0.d, var_0.d, false), global0.x), func_1(var_1.c, Struct_5(vec4<i32>(var_1.e, -9508i, -2147483647i, var_1.e), var_0.c), 913f).a.x), 4888u);
    let var_3 = Struct_5(select(reverseBits(reverseBits(vec4<i32>(u_input.c.x, 0i, u_input.c.x, -19617i))), firstLeadingBit(vec4<i32>(var_1.e, 21761i, -8636i, -2147483647i)) ^ firstLeadingBit(vec4<i32>(var_1.e, var_1.e, var_1.e, 0i)), true) & (_wgslsmith_mult_vec4_i32(abs(vec4<i32>(8462i, var_1.e, var_1.e, 1i)), firstLeadingBit(vec4<i32>(1i, 82077i, u_input.c.x, 0i))) | (vec4<i32>(var_1.e, u_input.c.x, 29361i, 1i) << (u_input.b % vec4<u32>(32u)))), 60860u);
    let var_4 = vec2<bool>(!global1[_wgslsmith_index_u32(4294967295u, 24u)], any(vec4<bool>(var_2.a.x, true, false, ~var_0.c == _wgslsmith_mod_u32(var_2.b, 1u))));
    var var_5 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, ~0i), vec2<i32>(var_1.e, _wgslsmith_sub_i32(var_1.e, -2147483647i))) | (i32(-1i) * -_wgslsmith_add_i32(u_input.c.x, 0i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_3.a.x, var_1.e), var_1.e), ~(_wgslsmith_div_i32(-1i, 39106i) >> (1u % 32u)) << (countOneBits(var_3.b) % 32u));
    global0 = var_2.a.xx;
    var_1 = Struct_3(4294967295u, _wgslsmith_mult_vec4_u32(~(~var_1.b), var_1.b), var_1.c, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.d))))))), var_5.x);
    let var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(var_1.b, _wgslsmith_mult_vec4_u32(~(var_1.b ^ var_1.b), ~abs(var_1.b)), ~max(vec4<u32>(var_3.b, 4294967295u, 0u, 1u), ~var_1.b)), u_input.d.x, vec4<i32>(countOneBits(2147483647i), var_5.x, var_1.e, var_6.a.x), -var_6.a.x);
}

