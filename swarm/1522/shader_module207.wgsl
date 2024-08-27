struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(2147483647i, 0i), vec2<u32>(26714u, 4294967295u), vec2<u32>(1u, 0u), vec3<bool>(true, false, true), 897f);

var<private> global2: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false));

var<private> global3: Struct_1 = Struct_1(vec2<i32>(-2411i, -1i), vec2<u32>(12849u, 4294967295u), vec2<u32>(10838u, 1u), vec3<bool>(true, true, false), 357f);

var<private> global4: f32 = -114f;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<f32> {
    global2 = array<vec4<bool>, 13>();
    let var_0 = arg_2;
    let var_1 = vec3<u32>(select(select(reverseBits(~0u), _wgslsmith_dot_vec3_u32(u_input.c.zyx, u_input.c.xyz >> (u_input.b % vec3<u32>(32u))), true), _wgslsmith_dot_vec2_u32(global0.c, countOneBits(global3.c)), !(!(-2147483647i == global1.a.x))), 0u, arg_2.c.x & 1u);
    let var_2 = arg_1;
    global3 = arg_2;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(632f, global1.e, -200f, arg_0), vec4<f32>(1000f, arg_1.x, arg_1.x, -953f), global2[_wgslsmith_index_u32(u_input.d, 13u)]))))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.e, arg_2.e, 1426f, -1139f)), vec4<f32>(1034f, -1000f, 409f, -829f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1375f, 350f, global3.e, -156f), vec4<f32>(-653f, arg_1.x, 792f, 308f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-361f, global0.e, -1000f, global1.e) + vec4<f32>(arg_0, global3.e, var_2.x, 1571f)))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(-1096f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.e, 406f, global3.e), vec3<f32>(1009f, -1630f, global0.e))), Struct_1(vec2<i32>(-56257i, global0.a.x) ^ global1.a, ~global0.c, global3.c, !vec3<bool>(global1.d.x, true, global1.d.x), global3.e)))), _wgslsmith_div_vec4_f32(vec4<f32>(-404f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e) - -1048f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-783f)))), _wgslsmith_f_op_f32(max(-909f, _wgslsmith_f_op_f32(-1000f - -578f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-939f + global3.e) - global1.e), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-154f)) * _wgslsmith_f_op_f32(floor(global3.e))), -1070f)));
    var var_1 = Struct_1(min(abs(min(countOneBits(vec2<i32>(31023i, global1.a.x)), abs(global3.a))), global3.a), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(~u_input.c.x, 1u)), ~min(vec2<u32>(global1.b.x, u_input.d), vec2<u32>(u_input.b.x, 4294967295u))), select(global0.c, vec2<u32>(4294967295u, firstLeadingBit(global3.b.x)), true), select(global3.d, vec3<bool>(_wgslsmith_clamp_i32(84636i, -1i, 0i) < min(global1.a.x, -2721i), false, select(false, false, false) == global0.d.x), global1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(236f * var_0.x))) - _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(123f, -475f)) * global0.e), _wgslsmith_div_vec3_f32(vec3<f32>(global1.e, global3.e, global1.e), _wgslsmith_f_op_vec4_f32(func_3(216f, vec3<f32>(-1000f, global0.e, -803f), Struct_1(vec2<i32>(1i, 1i), global3.b, u_input.c.wz, vec3<bool>(global3.d.x, false, false), -478f))).wwz), Struct_1(vec2<i32>(global3.a.x, global1.a.x) | global3.a, firstLeadingBit(vec2<u32>(14933u, global1.c.x)), firstTrailingBit(vec2<u32>(65189u, global0.b.x)), !vec3<bool>(true, true, global0.d.x), -275f))).x));
    var var_2 = global1.a.x >= 2147483647i;
    var var_3 = var_0.zw;
    var_1 = Struct_1(-(~_wgslsmith_clamp_vec2_i32(global1.a, firstLeadingBit(vec2<i32>(var_1.a.x, -21597i)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a.x, global0.a.x), global0.a))), select(vec2<u32>(_wgslsmith_add_u32(countOneBits(1u), 868u), countOneBits(var_1.b.x)), ~(~min(global3.b, global0.b)), all(!vec4<bool>(var_1.d.x, true, true, true)) & (select(global3.b.x, global3.c.x, var_1.d.x) < 0u)), max(~vec2<u32>(~11337u, _wgslsmith_clamp_u32(1u, 71699u, 1u)), min(var_1.c, _wgslsmith_add_vec2_u32(~vec2<u32>(1496u, 1u), ~var_1.b))), select(!select(!global3.d, vec3<bool>(false, false, global1.d.x), select(global3.d, vec3<bool>(global1.d.x, false, global0.d.x), global3.d)), global0.d, false), 637f);
    return max(~_wgslsmith_dot_vec3_i32(-(vec3<i32>(1i, 2147483647i, global0.a.x) | vec3<i32>(-26780i, global0.a.x, -2147483647i)), vec3<i32>(var_1.a.x, global1.a.x >> (global3.b.x % 32u), var_1.a.x & -1i)), _wgslsmith_mod_i32(1i ^ global0.a.x, 62496i));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    let var_0 = Struct_1(vec2<i32>(func_2(), ~7627i), max(select(_wgslsmith_div_vec2_u32(vec2<u32>(42118u, global3.c.x), global0.c), ~abs(global0.b), !select(vec2<bool>(true, true), global3.d.zz, global1.d.x)), ~vec2<u32>(0u, u_input.c.x)), global0.c, global3.d, global3.e);
    let var_1 = ~(18881u & ~_wgslsmith_mult_u32(19434u, global0.c.x)) < 0u;
    global0 = Struct_1(global0.a, global1.b, global1.b << (countOneBits(~(~vec2<u32>(var_0.c.x, 1u))) % vec2<u32>(32u)), global0.d, _wgslsmith_div_f32(1500f, -1000f));
    var var_2 = global1.a;
    let var_3 = 6527u;
    return var_0.c.x << ((global3.b.x | _wgslsmith_mod_u32(firstTrailingBit(abs(u_input.a.x)), _wgslsmith_div_u32(var_0.c.x, 77479u) & global0.c.x)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(~func_1(u_input.c), ~1u);
    global2 = array<vec4<bool>, 13>();
    global1 = Struct_1(global1.a, vec2<u32>(~0u, u_input.d), vec2<u32>(1u, ~(~global1.c.x)), global3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(772f - global1.e) * -918f) + _wgslsmith_f_op_f32(-global3.e))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(global3.e, vec3<f32>(global1.e, 1301f, global3.e), Struct_1(global0.a, global1.c, u_input.a.zy, global3.d, 1216f))).x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-947f, global3.e)), vec2<f32>(global3.e, 691f), select(vec2<bool>(true, global3.d.x), vec2<bool>(global3.d.x, global3.d.x), true))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1777f), _wgslsmith_div_f32(global3.e, -1000f))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-335f + 966f), _wgslsmith_div_f32(global0.e, global0.e)), global0.e)));
    let var_2 = global0.d.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_1.x)))), -1955f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.e, 676f, global0.e))))), _wgslsmith_mult_vec4_i32(select(~vec4<i32>(2147483647i, global1.a.x, -20969i, -2147483647i) & -vec4<i32>(-1i, 11802i, global1.a.x, global3.a.x), abs(vec4<i32>(global3.a.x, 1i, global1.a.x, -4789i)), !(!global1.d.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global3.a.x, 0i, -8016i, global3.a.x) >> (vec4<u32>(global1.b.x, global3.b.x, var_0, 1u) % vec4<u32>(32u)), vec4<i32>(17174i, global3.a.x, global0.a.x, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(global3.a.x, 1i, 17145i, 33296i), vec4<i32>(0i, 9625i, -1i, global3.a.x)) ^ reverseBits(vec4<i32>(global1.a.x, global0.a.x, global0.a.x, -1i)))), global3.a.x, 3134u);
}

