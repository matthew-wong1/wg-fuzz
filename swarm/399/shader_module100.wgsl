struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(18383i, -8210i, -19826i), vec4<bool>(true, true, false, false), vec2<i32>(21001i, -28266i), 0u, 58997i);

var<private> global1: Struct_1;

var<private> global2: i32 = 1i;

var<private> global3: Struct_1 = Struct_1(vec3<i32>(-24461i, 2147483647i, 42258i), vec4<bool>(false, false, true, true), vec2<i32>(1i, i32(-2147483648)), 34099u, -37319i);

var<private> global4: array<vec2<bool>, 12>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = ((~_wgslsmith_mod_i32(global3.a.x, arg_0) ^ global1.e) ^ -1i) | (max(global3.a.x, -_wgslsmith_div_i32(0i, 1i)) << (firstTrailingBit(~global1.d) % 32u));
    global4 = array<vec2<bool>, 12>();
    global4 = array<vec2<bool>, 12>();
    var var_1 = global3.b;
    var var_2 = vec3<i32>(i32(-1i) * -2147483647i, 1i, global1.a.x);
    return 1u;
}

fn func_3(arg_0: vec3<f32>, arg_1: bool) -> vec4<i32> {
    var var_0 = Struct_1(global0.a, select(select(!vec4<bool>(false, false, arg_1, global1.b.x), vec4<bool>(true, global0.b.x, any(vec4<bool>(false, arg_1, true, arg_1)), global0.b.x | false), vec4<bool>(true, global0.b.x, any(global3.b), global3.b.x)), vec4<bool>(false, true, global1.b.x, !(!global0.b.x)), select(global1.b, global1.b, global0.b.x)), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(-31008i, 7373i)), global0.a.xx), ~vec2<i32>(-1i, -21943i), global0.a.xz), _wgslsmith_dot_vec3_u32(vec3<u32>(36035u, ~(~10639u), ~global3.d ^ ~global1.d), ~_wgslsmith_clamp_vec3_u32(min(vec3<u32>(u_input.e.x, 4294967295u, 4294967295u), vec3<u32>(6718u, 0u, 4294967295u)), abs(vec3<u32>(1u, 6228u, global0.d)), abs(vec3<u32>(global1.d, global0.d, 1u)))), 1i);
    let var_1 = arg_0.x;
    let var_2 = select(global1.b.yx, !global3.b.xw, global3.b.yz);
    var var_3 = Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(~global1.c.x, _wgslsmith_add_i32(global3.c.x, global3.e), global3.c.x << (20305u % 32u)), -vec3<i32>(global1.a.x, global3.a.x, global1.c.x)), u_input.b, ~vec3<i32>(firstLeadingBit(global0.c.x), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), global3.c.x)), !(!select(vec4<bool>(global1.b.x, false, global3.b.x, false), select(global1.b, vec4<bool>(false, false, true, global1.b.x), vec4<bool>(var_0.b.x, global3.b.x, true, global3.b.x)), vec4<bool>(true, true, false, false))), ~(~(~vec2<i32>(global1.a.x, 61477i))) ^ vec2<i32>(-941i, global0.c.x), _wgslsmith_add_u32((1u & abs(global3.d)) & ~_wgslsmith_add_u32(0u, global0.d), global0.d), -2147483647i);
    var var_4 = Struct_1(global3.a, !vec4<bool>(!(!global0.b.x), any(var_0.b), ~1i <= -var_0.e, arg_1), _wgslsmith_mod_vec2_i32(~global1.a.xz, u_input.b.xz), 4294967295u, 2147483647i);
    return ~u_input.c >> (_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(~var_0.d, global3.d << (u_input.e.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.d, u_input.d.x, global0.d), vec3<u32>(global1.d, global3.d, 42668u)), _wgslsmith_sub_u32(global0.d, global3.d))), ~vec4<u32>(~1u, firstTrailingBit(1u), _wgslsmith_sub_u32(12145u, var_0.d), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.d, 0u, global3.d), vec4<u32>(var_4.d, 72190u, 1u, 6217u)))) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_mod_i32(-2147483647i, ~_wgslsmith_add_i32(~(-global1.c.x), 61928i));
    let var_1 = vec3<u32>(~_wgslsmith_add_u32(~0u, arg_0.d), _wgslsmith_mod_u32(1u ^ func_2(~global3.c.x), arg_0.d), ~global1.d);
    var var_2 = !vec2<bool>((~var_1.x & _wgslsmith_div_u32(43028u, 42964u)) <= 10320u, true);
    let var_3 = vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, u_input.c) | func_3(vec3<f32>(arg_1, -366f, -135f), global0.b.x), select(u_input.c, vec4<i32>(arg_3.x, arg_3.x, 0i, 52770i), arg_0.b) | -vec4<i32>(global1.e, -28571i, 0i, global0.c.x));
    let var_4 = select(-1i, _wgslsmith_add_i32(1i, _wgslsmith_add_i32(global1.a.x, 24500i)), true);
    return ~_wgslsmith_mod_u32(~max(global0.d, u_input.d.x), 14074u) | _wgslsmith_div_u32(global1.d, ~(~var_1.x) ^ _wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(14154u, arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(~u_input.d.x, abs(countOneBits(func_1(Struct_1(u_input.b, global0.b, global3.a.xz, 4294967295u, global3.e), -1000f, 1u, vec3<i32>(global0.c.x, 58221i, global0.a.x)) ^ 1u)), 24275u);
    global4 = array<vec2<bool>, 12>();
    let var_1 = Struct_1(vec3<i32>(-19893i, reverseBits(countOneBits(global0.e)), abs(global0.e)), select(select(select(!global1.b, global3.b, global0.b.x), global0.b, !global0.b), vec4<bool>(any(!global1.b.zw), true, !global3.b.x, global1.b.x), global1.b.x), global3.a.zx >> (countOneBits(vec2<u32>(1u, 1u)) % vec2<u32>(32u)), global0.d, ~_wgslsmith_dot_vec3_i32(u_input.c.xyy, global3.a));
    var var_2 = select(select(!select(vec2<bool>(global1.b.x, true), !vec2<bool>(global3.b.x, global3.b.x), vec2<bool>(global1.b.x, var_1.b.x)), vec2<bool>(global1.b.x != (false == global1.b.x), 0u >= min(u_input.a, global1.d)), vec2<bool>(false, any(!global0.b.wx))), select(global3.b.xz, global0.b.wz, any(select(global3.b.yxz, vec3<bool>(false, var_1.b.x, global3.b.x), false)) & true), select(select(vec2<bool>(global3.e == 2147483647i, !global3.b.x), !select(global1.b.yy, global1.b.yz, global3.b.x), global0.b.x), vec2<bool>(!(global3.b.x & true), select(true, true, select(false, true, global1.b.x))), vec2<bool>(!global1.b.x, global1.b.x)));
    var var_3 = all(select(vec4<bool>(!all(vec3<bool>(var_2.x, false, false)), !var_1.b.x, true, all(select(vec2<bool>(var_1.b.x, var_1.b.x), global4[_wgslsmith_index_u32(39276u, 12u)], false))), vec4<bool>(global3.b.x, !global3.b.x && true, !global0.b.x & true, !(17933u <= global0.d)), var_2.x | true));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1399f, _wgslsmith_f_op_f32(472f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(306f * -582f))), !global3.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(~firstLeadingBit(var_1.d), 70369u), 1079f, _wgslsmith_div_vec3_u32(~(vec3<u32>(4002u, u_input.e.x, global0.d) & vec3<u32>(3354u, 18480u, 12860u)) ^ (vec3<u32>(24686u, 4294967295u, var_1.d) << (_wgslsmith_sub_vec3_u32(vec3<u32>(39476u, global1.d, global0.d), vec3<u32>(55430u, u_input.a, 4294967295u)) % vec3<u32>(32u))), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(global1.d, global0.d, 0u), vec3<u32>(17202u, var_1.d, 1u)))), min(_wgslsmith_add_vec2_u32(u_input.d, ~_wgslsmith_clamp_vec2_u32(u_input.e, vec2<u32>(global3.d, global3.d), vec2<u32>(global1.d, global3.d))), u_input.e), global3.c.x);
}

