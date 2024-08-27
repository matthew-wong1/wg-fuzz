struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, -1i, -1i, 27933i);

var<private> global1: Struct_3 = Struct_3(vec4<bool>(false, false, false, false), 12093u, Struct_1(vec2<f32>(1508f, 1022f), -1393f, 0i, false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    let var_0 = Struct_2(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.b.x, global1.c.c, -2147483647i), vec3<i32>(global0.x, global1.c.c, -40047i), global1.a.wzw) & _wgslsmith_add_vec3_i32(abs(vec3<i32>(2147483647i, -1i, 14179i)), -vec3<i32>(0i, global0.x, 2147483647i)), arg_0 | vec3<i32>(u_input.b.x, ~arg_0.x, abs(global0.x)), vec3<i32>(_wgslsmith_sub_i32(~3529i, 1i), -34654i, -20601i)), _wgslsmith_mod_i32(~(-1i), _wgslsmith_mult_i32(~(~10311i), _wgslsmith_add_i32(u_input.b.x, -2147483647i))));
    var var_1 = abs(~(~(vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(1u, 0u, 32295u) % vec3<u32>(32u))) & ((vec3<u32>(4294967295u, global1.b, 15034u) ^ vec3<u32>(84217u, 27491u, u_input.a)) | ~vec3<u32>(u_input.a, 47383u, u_input.a))));
    var var_2 = global1.c;
    let var_3 = global1.b;
    var var_4 = var_0;
    return abs(select(2147483647i & _wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, -6854i, 14515i)), select(vec3<i32>(-12085i, u_input.b.x, arg_0.x), global0.yxw, global1.a.zxx)), _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, var_2.c), 1i), any(vec3<bool>(any(vec3<bool>(var_2.d, var_2.d, var_2.d)), false, false))));
}

fn func_2(arg_0: f32, arg_1: bool) -> vec3<bool> {
    let var_0 = Struct_4(-1102f, global0.xw, false, _wgslsmith_f_op_f32(global1.c.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.a.x) - _wgslsmith_f_op_f32(abs(arg_0))) * arg_0)), firstTrailingBit(max(~vec2<u32>(global1.b, global1.b), vec2<u32>(4294967295u, 24916u)) | reverseBits(vec2<u32>(4294967295u, 0u))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1408f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global1.c.a))))), !(!(var_0.d != arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(531f, -371f))), _wgslsmith_div_i32(abs(~firstLeadingBit(u_input.b.x)), global0.x), true);
    global0 = _wgslsmith_div_vec4_i32(~(_wgslsmith_clamp_vec4_i32(~u_input.b, u_input.b, ~u_input.b) | vec4<i32>(0i & var_0.b.x, abs(var_1.c), func_3(u_input.b.wxy), global0.x)), u_input.b);
    let var_2 = _wgslsmith_dot_vec4_u32(abs(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 21763u, 0u, global1.b), vec4<u32>(u_input.a, 0u, 0u, var_0.e.x)))), vec4<u32>(4294967295u, ~_wgslsmith_mod_u32(4294967295u ^ global1.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global1.b), var_0.e)), 1u, global1.b));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c.a - vec2<f32>(var_1.b, var_1.b)), _wgslsmith_f_op_vec2_f32(abs(global1.c.a))) + var_1.a), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_f_op_f32(f32(-1f) * -957f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1.a.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.b, 1758f) - vec2<f32>(var_0.a, var_1.b)))))), 402f, -5895i, true);
    return !select(!global1.a.zwz, select(global1.a.wxw, vec3<bool>(false, select(var_1.d, true, var_1.d), true), var_3.d), vec3<bool>(!var_0.c, false, !(!global1.a.x)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool) -> Struct_3 {
    let var_0 = _wgslsmith_add_vec4_u32(select(select(~vec4<u32>(arg_1.e.x, 17984u, arg_1.e.x, u_input.a), ~vec4<u32>(arg_1.e.x, u_input.a, u_input.a, u_input.a), global1.a) | ~select(vec4<u32>(4294967295u, 0u, 4957u, u_input.a), vec4<u32>(arg_1.e.x, global1.b, 68282u, arg_1.e.x), true), (vec4<u32>(38511u, 4294967295u, 19102u, 8131u) & vec4<u32>(global1.b, 19420u, global1.b, 38356u)) | _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 21087u, 1u, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 1u, arg_1.e.x, 0u), vec4<u32>(48274u, 29888u, 5867u, 69524u), vec4<u32>(1u, 1u, 18077u, global1.b))), true), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 12255u, 4294967295u, 4294967295u), (~vec4<u32>(global1.b, u_input.a, 10246u, 1u) << (firstLeadingBit(vec4<u32>(arg_1.e.x, 29395u, global1.b, global1.b)) % vec4<u32>(32u))) & vec4<u32>(abs(global1.b), arg_1.e.x, arg_1.e.x, u_input.a | 77143u), vec4<u32>(4294967295u, _wgslsmith_sub_u32(~0u, _wgslsmith_mod_u32(global1.b, 58179u)), global1.b, ~4294967295u)));
    var var_1 = !func_2(arg_1.d, arg_2);
    var var_2 = global1.c;
    global1 = Struct_3(!vec4<bool>(false, var_2.d, arg_1.c, _wgslsmith_sub_i32(2147483647i, 1i) >= global1.c.c), ~(~firstTrailingBit(~4294967295u)), global1.c);
    var var_3 = Struct_2(select(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b, firstTrailingBit(arg_0.a.x), -14603i), vec3<i32>(36666i, -1985i, reverseBits(-56538i))), vec3<i32>(_wgslsmith_mod_i32(var_2.c, _wgslsmith_sub_i32(var_2.c, 32380i)), arg_0.a.x, _wgslsmith_div_i32(global1.c.c & 2147483647i, _wgslsmith_mult_i32(arg_0.b, arg_0.a.x))), !global1.a.yyy), _wgslsmith_add_i32(_wgslsmith_mult_i32(global0.x, func_3(global0.zwy)), 2147483647i));
    return Struct_3(vec4<bool>(true, false, !all(global1.a.zyw), false), ~var_0.x, global1.c);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: bool) -> i32 {
    return -36652i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(min(~(-16431i), _wgslsmith_mod_i32(i32(-1i) * -global1.c.c, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.b, 485f, global1.c.a.x, -807f)), func_1(Struct_2(vec3<i32>(u_input.b.x, -30186i, 2147483647i), global1.c.c), Struct_4(global1.c.b, global0.wy, global1.c.d, global1.c.a.x, vec2<u32>(1u, 1u)), false), true))), -_wgslsmith_clamp_i32(6129i, global0.x, 0i), -1i, _wgslsmith_add_i32(-23717i, i32(-1i) * -global1.c.c));
    let var_0 = Struct_2(vec3<i32>(_wgslsmith_div_i32(max(func_3(global0.xxx), ~global1.c.c), 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, global1.c.c, ~global0.x), _wgslsmith_sub_vec4_i32(u_input.b, u_input.b)), global0.x), ~u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.c.b, global1.c.b, 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-586f, -595f, 314f))), false))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.b, global1.c.b, global1.c.b)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.c.a.x, global1.c.b, 926f), vec3<f32>(444f, global1.c.b, 1032f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(102f, global1.c.a.x, 1689f)) + vec3<f32>(global1.c.a.x, global1.c.b, global1.c.b)))));
    global0 = _wgslsmith_mod_vec4_i32(u_input.b, _wgslsmith_sub_vec4_i32(u_input.b, abs(vec4<i32>(reverseBits(global1.c.c), _wgslsmith_add_i32(u_input.b.x, u_input.b.x), ~(-2147483647i), u_input.b.x))));
    var var_2 = countOneBits(~(~(-32336i)));
    global0 = abs(vec4<i32>(u_input.b.x << (firstLeadingBit(reverseBits(global1.b)) % 32u), (var_0.a.x << (select(global1.b, global1.b, false) % 32u)) & -global0.x, -_wgslsmith_dot_vec4_i32(max(u_input.b, u_input.b), abs(vec4<i32>(-2147483647i, -2348i, var_0.a.x, u_input.b.x))), _wgslsmith_div_i32(_wgslsmith_mod_i32(31761i, -30793i >> (u_input.a % 32u)), ~_wgslsmith_mod_i32(-1i, global0.x))));
    var var_3 = vec3<i32>(_wgslsmith_div_i32(~_wgslsmith_mod_i32(u_input.b.x, var_0.b), ~u_input.b.x) & ~global0.x, (~global0.x | _wgslsmith_div_i32(reverseBits(global0.x), func_1(var_0, Struct_4(var_1.x, u_input.b.zx, global1.c.d, var_1.x, vec2<u32>(global1.b, 4294967295u)), global1.a.x).c.c)) ^ _wgslsmith_sub_i32(~global1.c.c, 78582i), ~5182i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yy, ~select(vec2<i32>(-u_input.b.x, -1i), vec2<i32>(_wgslsmith_mod_i32(-31110i, global0.x), _wgslsmith_clamp_i32(-18043i, -44223i, u_input.b.x)), global1.a.zw), var_3.yz, firstLeadingBit(global1.b), ~abs(global1.b));
}

