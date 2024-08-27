struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, true, false), vec2<u32>(1u, 1u));

var<private> global2: array<bool, 6>;

var<private> global3: bool = true;

var<private> global4: vec4<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec2<u32> {
    global0 = array<vec3<bool>, 26>();
    var var_0 = Struct_4(Struct_1(vec3<bool>(!all(global0[_wgslsmith_index_u32(69446u, 26u)]), true, select(!global1.a.x, any(vec2<bool>(global1.a.x, false)), global2[_wgslsmith_index_u32(u_input.b.x, 6u)])), vec2<u32>(~_wgslsmith_clamp_u32(global1.b.x, global1.b.x, u_input.b.x), 0u ^ global1.b.x)), Struct_2(reverseBits(reverseBits(global1.b.x)), Struct_1(vec3<bool>(all(global0[_wgslsmith_index_u32(44013u, 26u)]), true, true), ~_wgslsmith_sub_vec2_u32(vec2<u32>(2469u, 59475u), global1.b)), Struct_1(!(!global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), firstTrailingBit(vec2<u32>(40889u, 35432u) << (u_input.b.xx % vec2<u32>(32u)))), Struct_1(!(!global0[_wgslsmith_index_u32(4294967295u, 26u)]), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 77603u), u_input.b.yx, vec2<u32>(4294967295u, 1u)), ~vec2<u32>(global1.b.x, u_input.b.x))), global2[_wgslsmith_index_u32(~global1.b.x, 6u)]), i32(-1i) * -global4.x);
    var var_1 = _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -121f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -136f) - _wgslsmith_f_op_f32(ceil(672f)))))), true));
    let var_2 = select(u_input.a, -countOneBits(u_input.d), vec4<bool>(true, true, true, true));
    global0 = array<vec3<bool>, 26>();
    return _wgslsmith_sub_vec2_u32(max(max(vec2<u32>(global1.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, global1.b.x, global1.b.x), vec4<u32>(global1.b.x, global1.b.x, u_input.b.x, global1.b.x))), global1.b), _wgslsmith_clamp_vec2_u32(u_input.b.zy & vec2<u32>(0u, global1.b.x), abs(abs(vec2<u32>(1660u, 0u))), vec2<u32>(4585u >> (global1.b.x % 32u), u_input.b.x))), ~_wgslsmith_mod_vec2_u32(u_input.b.xz, global1.b));
}

fn func_2() -> f32 {
    global1 = Struct_1(global0[_wgslsmith_index_u32(abs(~abs(global1.b.x)), 26u)], func_3());
    var var_0 = -firstLeadingBit(-2147483647i) == _wgslsmith_mod_i32(u_input.c.x, 2147483647i);
    var var_1 = Struct_1(!select(global1.a, select(vec3<bool>(true, true, true), select(vec3<bool>(global2[_wgslsmith_index_u32(global1.b.x, 6u)], global2[_wgslsmith_index_u32(u_input.b.x, 6u)], false), global0[_wgslsmith_index_u32(6588u, 26u)], vec3<bool>(true, false, false)), global1.a), false), vec2<u32>(4294967295u, 1u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(497f, -525f, 1268f))))));
    var_0 = any(global0[_wgslsmith_index_u32(u_input.b.x, 26u)]);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -279f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(floor(-237f)), global2[_wgslsmith_index_u32(1u, 6u)]))), var_2.x))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    global4 = arg_0;
    var var_1 = Struct_1(!(!select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], false, true), select(global0[_wgslsmith_index_u32(1u, 26u)], global1.a, false), vec3<bool>(global1.a.x, global1.a.x, true))), vec2<u32>(83513u, _wgslsmith_mult_u32(global1.b.x << (0u % 32u), ~(0u & u_input.b.x))));
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(82788u, _wgslsmith_mult_u32(1u, ~(global1.b.x >> (var_1.b.x % 32u))), ~32817u << (_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.b.x, var_1.b.x), vec2<u32>(u_input.b.x, 1u)) % 32u), ~(~abs(global1.b.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(min(24027u, 4294967295u), select(u_input.b.x, global1.b.x, false), _wgslsmith_mod_u32(var_1.b.x, 1u), ~78678u), vec4<u32>(13765u, ~1u, abs(1u), 4294967295u)) & ~vec4<u32>(_wgslsmith_add_u32(u_input.b.x, 47820u), select(global1.b.x, 71639u, true), _wgslsmith_mod_u32(4606u, global1.b.x), ~43517u));
    var var_3 = ~55698u;
    return Struct_1(select(!vec3<bool>(true, arg_1 | true, true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(80857u, 0u), ~(vec2<u32>(1u, 20407u) | var_1.b)), 26u)], global1.a.x), firstLeadingBit(~vec2<u32>(1u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a, 98493i < u_input.a.x, 1853f);
    var var_1 = Struct_1(var_0.a, _wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_add_u32(var_0.b.x, 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(41503u, global1.b.x, var_0.b.x, 4294967295u), vec4<u32>(global1.b.x, var_0.b.x, 0u, 33271u))), firstLeadingBit(abs(reverseBits(vec2<u32>(u_input.b.x, var_0.b.x))))));
    var var_2 = vec2<bool>(false, max(1u, ~firstLeadingBit(var_0.b.x)) == 33364u);
    global3 = false;
    var var_3 = -u_input.a.x;
    global0 = array<vec3<bool>, 26>();
    global3 = true;
    var var_4 = func_1((~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, global4.x, global4.x, u_input.d.x), vec4<i32>(-17193i, u_input.c.x, u_input.c.x, global4.x)) >> ((~vec4<u32>(var_1.b.x, 21814u, global1.b.x, 4294967295u) >> ((vec4<u32>(global1.b.x, var_1.b.x, 0u, global1.b.x) >> (vec4<u32>(20697u, 1u, 1u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u))) & u_input.d, true, 2166f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(928f - 1180f), _wgslsmith_f_op_f32(f32(-1f) * -408f), u_input.a.x == global4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-874f * -2559f) - 1f))), ~max(1u, global1.b.x), u_input.c.x, vec4<i32>(-u_input.c.x, ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.d.wzx, vec3<i32>(global4.x, global4.x, global4.x)), -global4.x), -reverseBits(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(global4.x, 0i, 2147483647i, u_input.d.x))), ~abs(1i << (0u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(416f, -998f))), -906f)));
}

