struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global1: array<Struct_3, 27>;

var<private> global2: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_2(-2387f, true), Struct_2(1730f, true), true));

var<private> global3: f32;

var<private> global4: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(551f, false), Struct_2(265f, true), Struct_2(483f, false), Struct_2(-248f, false), Struct_2(228f, false), Struct_2(1204f, true), Struct_2(-677f, true), Struct_2(-1050f, false), Struct_2(-958f, true), Struct_2(-1613f, false), Struct_2(1126f, false), Struct_2(-265f, false), Struct_2(1599f, false), Struct_2(772f, false), Struct_2(-973f, true));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    global2 = array<Struct_4, 1>();
    let var_0 = Struct_4(global4[_wgslsmith_index_u32(5411u, 15u)], global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~firstLeadingBit(countOneBits(53683u)), 0u), 15u)], true);
    var var_1 = firstTrailingBit(1u | ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u), ~64528u, 1u));
    global3 = _wgslsmith_f_op_f32(floor(1000f));
    var_1 = 34441u;
    return _wgslsmith_f_op_f32(var_0.a.a * var_0.a.a);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: Struct_4) -> f32 {
    var var_0 = _wgslsmith_sub_i32(min(~(-1i), arg_0), ~abs(min(u_input.a.x, -1i)));
    let var_1 = -338f;
    var var_2 = ~vec2<u32>(4294967295u, max(min(0u, 25374u), 4294967295u)) & vec2<u32>(_wgslsmith_mult_u32(1u, ~4294967295u) >> (firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, 26966u, 87693u)) % 32u), 16260u);
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(-23714i), _wgslsmith_div_i32(u_input.b.x, arg_0), u_input.b.x, _wgslsmith_mod_i32(arg_0, -22251i)), vec4<i32>(1i, -1i, firstLeadingBit(u_input.b.x), _wgslsmith_dot_vec3_i32(-abs(u_input.a), u_input.a)));
    let var_3 = all(!vec2<bool>(arg_3.b.b, !arg_3.a.b));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(318f, -1114f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)));
}

fn func_2(arg_0: vec2<u32>) -> vec3<bool> {
    global4 = array<Struct_2, 15>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(-30812i, !(!vec4<bool>(true, true, global0.x, true)), select(vec3<bool>(true, true, false), global0.ywx, vec3<bool>(true, false, global0.x)), global2[_wgslsmith_index_u32(~(~arg_0.x), 1u)])))), 17583i << (0u % 32u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -527f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(351f * 686f)), -1560f) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0.yzw))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-304f)))), 1365f)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(arg_0.x, arg_0.x, arg_0.x) & vec3<u32>(21344u, 84595u, 48803u)), ~_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, arg_0.x, 8535u)), max(vec3<u32>(arg_0.x, 0u, arg_0.x), vec3<u32>(8357u, arg_0.x, 4294967295u)))), reverseBits((u_input.b << (~arg_0 % vec2<u32>(32u))) >> (abs(vec2<u32>(arg_0.x, 20969u)) % vec2<u32>(32u))));
    var var_1 = Struct_5(select(vec2<u32>(arg_0.x, ~20846u), max(vec2<u32>(arg_0.x, 0u), arg_0) << (vec2<u32>(arg_0.x, var_0.d) % vec2<u32>(32u)), (global0.x != true) || false) | _wgslsmith_clamp_vec2_u32(arg_0, max(vec2<u32>(0u, arg_0.x), _wgslsmith_mod_vec2_u32(arg_0, vec2<u32>(var_0.d, var_0.d))), vec2<u32>(firstTrailingBit(1927u), 4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(433f, _wgslsmith_div_f32(var_0.c.x, var_0.c.x), _wgslsmith_f_op_f32(-1000f * var_0.c.x), 1f)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(var_0.c.x * -1000f)), var_0.a, var_0.c.x)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-var_1.b.x), var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0.a, 356f), _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x), var_0.c.x)) + _wgslsmith_f_op_vec3_f32(var_0.c * vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x), var_1.b.x))), var_0.d, max(vec2<i32>(~15118i, ~0i) | _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-2147483647i, var_0.e.x)), vec2<i32>(var_0.e.x & ~(-54559i), ~u_input.b.x)));
    return vec3<bool>(true, any(select(global0.zz, vec2<bool>(global0.x, !global0.x), true)), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~(~_wgslsmith_div_u32(~42375u, _wgslsmith_mod_u32(4294967295u, 94623u))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1192f, -725f), _wgslsmith_div_f32(-1000f, -1961f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(global0.xww)))), select(func_2(vec2<u32>(53859u, _wgslsmith_clamp_u32(1u, 81599u, 6630u))), select(func_2(vec2<u32>(1u, 1u)), select(!global0.xww, !vec3<bool>(global0.x, global0.x, true), global0.x || global0.x), true), vec3<bool>(!global0.x && any(vec2<bool>(global0.x, global0.x)), true, !(false | global0.x))));
    let var_1 = ~(~u_input.a);
    let var_2 = -655f;
    let var_3 = -2147483647i << (var_0.a % 32u);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -649f)))), ~(-(-u_input.b.x ^ ~var_1.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(func_3(var_0.b.x, vec4<bool>(true, true, var_0.e.x, var_0.e.x), global0.xxz, global2[_wgslsmith_index_u32(~1u, 1u)])), var_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - var_2), 864f))))), ~var_0.a << (87030u % 32u), vec2<i32>(max(~(~84003i), u_input.a.x), _wgslsmith_mult_i32(19133i, -29920i)));
    var var_5 = global2[_wgslsmith_index_u32(var_4.d, 1u)];
    let var_6 = Struct_3(min(86611u, _wgslsmith_mod_u32(4294967295u << (var_4.d % 32u), firstTrailingBit(_wgslsmith_clamp_u32(4723u, var_4.d, 0u)))), -var_1, 150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1233f))), select(vec3<bool>(!any(var_0.e.yy), true, var_5.a.b), !func_2(vec2<u32>(var_4.d, var_4.d) & vec2<u32>(0u, 0u)), var_0.e));
    global4 = array<Struct_2, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(abs(vec2<u32>(~0u, abs(var_6.a))), ~firstLeadingBit(vec2<u32>(var_0.a, 1u))));
}

