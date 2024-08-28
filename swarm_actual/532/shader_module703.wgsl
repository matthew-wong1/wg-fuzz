struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true));

var<private> global1: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(4294967295u, 28155u, 0u, 0u), vec4<u32>(1u, 48717u, 52412u, 1u), vec4<u32>(52492u, 1u, 0u, 0u), vec4<u32>(66890u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, 7709u, 0u, 72825u), vec4<u32>(28852u, 37121u, 4294967295u, 105562u), vec4<u32>(0u, 28811u, 8628u, 1u), vec4<u32>(47141u, 1u, 23736u, 4331u), vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 8507u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 4294967295u, 58135u), vec4<u32>(26270u, 4294967295u, 17995u, 58841u), vec4<u32>(38259u, 1u, 18110u, 1u), vec4<u32>(28027u, 0u, 4294967295u, 79764u), vec4<u32>(18329u, 11483u, 1u, 1u), vec4<u32>(0u, 68904u, 32473u, 29713u), vec4<u32>(19719u, 65518u, 1u, 76915u), vec4<u32>(1u, 4294967295u, 40171u, 0u), vec4<u32>(0u, 1794u, 4294967295u, 7774u), vec4<u32>(4294967295u, 452u, 1u, 10238u), vec4<u32>(37343u, 1u, 117685u, 1u), vec4<u32>(0u, 39324u, 1597u, 4294967295u), vec4<u32>(1u, 69181u, 174101u, 1u), vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 33187u, 0u, 1u), vec4<u32>(1u, 45833u, 1u, 0u), vec4<u32>(0u, 1u, 0u, 48667u), vec4<u32>(5860u, 5663u, 44968u, 0u), vec4<u32>(77039u, 60540u, 10228u, 76999u), vec4<u32>(20575u, 0u, 1u, 0u), vec4<u32>(35098u, 103420u, 0u, 11219u));

var<private> global2: vec4<f32> = vec4<f32>(512f, -546f, 839f, 275f);

var<private> global3: array<bool, 14> = array<bool, 14>(false, false, false, false, false, false, true, false, false, false, false, false, false, true);

var<private> global4: vec2<u32> = vec2<u32>(7520u, 1u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>) -> f32 {
    var var_0 = 0u;
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(~u_input.c, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c, -22650i, u_input.c)) ^ vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(_wgslsmith_div_i32(u_input.c, u_input.c), u_input.c, _wgslsmith_mod_i32(u_input.c, u_input.c)))), 32260i);
    var var_2 = vec3<u32>(64762u, ~_wgslsmith_div_u32(global4.x, arg_0.x), 26952u);
    global3 = array<bool, 14>();
    var var_3 = Struct_1(abs(vec3<i32>(u_input.c, 0i | u_input.c, -18398i) | vec3<i32>(~u_input.c, -u_input.c, u_input.c)), vec3<i32>(u_input.c, 48743i, u_input.c) ^ _wgslsmith_clamp_vec3_i32(min(select(vec3<i32>(0i, 6968i, 2147483647i), vec3<i32>(u_input.c, 36921i, u_input.c), vec3<bool>(true, global3[_wgslsmith_index_u32(48109u, 14u)], true)), -vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<i32>(u_input.c, 1i, u_input.c) >> (arg_0.xxx % vec3<u32>(32u)), -vec3<i32>(0i, 0i, u_input.c)));
    return global2.x;
}

fn func_2() -> u32 {
    let var_0 = firstLeadingBit(vec2<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c, ~28709i, u_input.c >> (33029u % 32u)), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.c, 0i, u_input.c, 1i), firstTrailingBit(vec4<i32>(u_input.c, -1i, u_input.c, u_input.c))))));
    global1 = array<vec4<u32>, 31>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global2.wzx)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.b, 31u)], vec4<f32>(global2.x, -2482f, global2.x, global2.x))), _wgslsmith_f_op_f32(global2.x + global2.x), -392f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global2.xwy * _wgslsmith_f_op_vec3_f32(vec3<f32>(-694f, -115f, global2.x) * _wgslsmith_f_op_vec3_f32(-global2.yyy))))), -abs(var_0.x) < 1i));
    var var_2 = 2147483647i;
    var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, ~var_0.x & 41987i, 1i), vec3<i32>(-firstLeadingBit(-2147483647i | var_0.x), ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-14659i, u_input.c, var_0.x)), vec3<i32>(2147483647i, -1i, -2147483647i)), ~u_input.c));
    return u_input.b;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<bool>) -> f32 {
    global1 = array<vec4<u32>, 31>();
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2536f, _wgslsmith_f_op_f32(-global2.x), -416f, 792f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1374f + global2.x), _wgslsmith_f_op_f32(trunc(arg_0.x)))), _wgslsmith_f_op_f32(-203f - _wgslsmith_f_op_f32(arg_0.x * arg_0.x)), _wgslsmith_div_f32(-570f, _wgslsmith_f_op_f32(-global2.x)), global2.x)), arg_1.x));
    global3 = array<bool, 14>();
    global0 = array<vec4<bool>, 13>();
    let var_1 = ((_wgslsmith_div_u32(u_input.b, 1u) | ~2802u) & 4294967295u) | firstTrailingBit(~(~_wgslsmith_div_u32(u_input.b, u_input.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~global1[_wgslsmith_index_u32(u_input.a, 31u)], var_0)), var_0.x));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    global1 = array<vec4<u32>, 31>();
    var var_0 = arg_0;
    global2 = vec4<f32>(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-1330f + -1384f)) - _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(global2.x - global2.x)))), -1957f, 2330f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.yxy), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(969f, 2043f, -535f))), !vec3<bool>(global3[_wgslsmith_index_u32(23520u, 14u)], global3[_wgslsmith_index_u32(11181u, 14u)], false))), _wgslsmith_f_op_vec3_f32(select(global2.wzz, global2.yyz, vec3<bool>(true, true, true))))), vec2<bool>(_wgslsmith_f_op_f32(ceil(global2.x)) <= _wgslsmith_f_op_f32(-global2.x), any(global0[_wgslsmith_index_u32(func_2(), 13u)])))));
    global3 = array<bool, 14>();
    let var_1 = Struct_1(firstLeadingBit(vec3<i32>(~arg_0.b.x, 1i, abs(-arg_0.b.x))), reverseBits(firstLeadingBit(vec3<i32>(-16568i, 0i, max(u_input.c, arg_0.b.x)))));
    return vec2<u32>(~1u, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x;
    global4 = _wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(func_1(Struct_1(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, 0i))), vec2<u32>(94907u, 1u) << (vec2<u32>(90u, global4.x) % vec2<u32>(32u))), abs(~vec2<u32>(38187u, 49471u)), vec2<u32>(min(12355u, 90275u), 15181u)), countOneBits(~(~vec2<u32>(global4.x, u_input.b))));
    global1 = array<vec4<u32>, 31>();
    var var_1 = 1i;
    global4 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(47475u, u_input.a), vec2<u32>(global4.x, 4294967295u) ^ vec2<u32>(4294967295u, u_input.a), vec2<bool>(false, global3[_wgslsmith_index_u32(34350u, 14u)])), ~vec2<u32>(global4.x, 18866u)), (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 18666u), vec2<u32>(global4.x, 2088u)) ^ ~vec2<u32>(0u, 1u)) ^ (vec2<u32>(0u, u_input.a) & ~vec2<u32>(8863u, 7987u))), ~(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, u_input.b)), countOneBits(vec2<u32>(u_input.a, u_input.b))) << (~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, global4.x), vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_clamp_u32(~global4.x, _wgslsmith_div_u32(2929u, ~u_input.b), 95591u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(global4.x, 39462u, 50964u)), ~vec3<u32>(global4.x, 1u, global4.x)), ~(~vec3<u32>(1u, 5414u, 14086u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_clamp_i32(u_input.c, u_input.c, ~firstLeadingBit(0i)), 179i, u_input.c), 708f, -365f);
}

