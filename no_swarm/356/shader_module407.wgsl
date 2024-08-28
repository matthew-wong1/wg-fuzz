struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec4<u32>(88325u, 4294967295u, 0u, 95999u)), Struct_3(vec4<u32>(10082u, 1u, 58246u, 35198u)), Struct_3(vec4<u32>(1u, 60432u, 11892u, 4294967295u)), Struct_3(vec4<u32>(1u, 4747u, 31603u, 1u)), Struct_3(vec4<u32>(59448u, 60146u, 43819u, 44547u)), Struct_3(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u)), Struct_3(vec4<u32>(24730u, 1u, 4294967295u, 100510u)));

var<private> global2: Struct_1;

var<private> global3: vec4<f32>;

var<private> global4: array<vec3<u32>, 21>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> vec3<bool> {
    var var_0 = u_input.a;
    let var_1 = max(_wgslsmith_mod_vec2_i32(countOneBits(select(countOneBits(vec2<i32>(u_input.c, u_input.c)), countOneBits(vec2<i32>(-37534i, u_input.c)), true)), vec2<i32>(2147483647i, i32(-1i) * -1i) ^ max(vec2<i32>(-38381i, u_input.c) & vec2<i32>(-41018i, -2147483647i), ~vec2<i32>(-2147483647i, 36557i))), vec2<i32>(~u_input.c << ((_wgslsmith_mult_u32(58678u, u_input.b.x) << (global2.a % 32u)) % 32u), u_input.c));
    var var_2 = 6384i;
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(320f))), 2065f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -250f) + _wgslsmith_f_op_f32(f32(-1f) * -1118f)), _wgslsmith_f_op_f32(-global2.c.x))));
    return vec3<bool>(!(!arg_1.d.e.x), !(arg_1.c.e.x | ((true | var_3) != arg_1.d.e.x)), false);
}

fn func_2(arg_0: vec4<bool>) -> bool {
    let var_0 = min(vec2<i32>(u_input.c, 1i), -reverseBits(select(vec2<i32>(-44280i, u_input.c), vec2<i32>(9270i, u_input.c), true)) >> (u_input.b.zx % vec2<u32>(32u)));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, global2.c.x, -289f, global2.c.x) + vec4<f32>(-791f, 316f, global2.c.x, -374f))))));
    var var_1 = Struct_1(global2.a & global2.d, arg_0, _wgslsmith_f_op_vec2_f32(global3.ww + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(920f * -295f), 173f) - _wgslsmith_f_op_vec2_f32(global3.yy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-551f, global3.x))))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 38788u, 0u, u_input.a), vec4<u32>(1u, global2.d, global2.d, u_input.b.x)), ~vec4<u32>(0u, u_input.b.x, 75206u, 4294967295u)) ^ global2.d, !func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(664f * global3.x), _wgslsmith_div_f32(1526f, -1037f)), Struct_4(~vec4<u32>(4294967295u, global2.a, 0u, 69475u), global2.d, Struct_1(global2.a, global2.b, global2.c, u_input.a, vec3<bool>(global2.e.x, arg_0.x, arg_0.x)), Struct_1(1u, arg_0, vec2<f32>(1192f, global2.c.x), 4294967295u, vec3<bool>(false, global2.e.x, false)))));
    let var_2 = (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(4294967295u, var_1.d)), _wgslsmith_clamp_u32(var_1.a, countOneBits(10895u), ~u_input.b.x)) | 9452u) << (~(~firstLeadingBit(u_input.b.x) >> (u_input.b.x % 32u)) % 32u);
    let var_3 = _wgslsmith_f_op_f32(ceil(444f));
    return var_1.b.x;
}

fn func_1(arg_0: bool, arg_1: i32) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(511f - -972f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(243f * global2.c.x)))), func_2(global2.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -353f) - -222f));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<u32>, 21>();
    let var_0 = abs(_wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-13714i, u_input.c, u_input.c), ~(-vec3<i32>(u_input.c, u_input.c, 2147483647i)))) >> (u_input.b % vec3<u32>(32u));
    let var_1 = vec3<bool>(all(!select(select(global2.b, vec4<bool>(global2.b.x, true, false, global2.e.x), false), select(global2.b, global2.b, global2.e.x), any(global2.b))), false, false);
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(12026u, ~firstTrailingBit(7562u), global2.d), ~u_input.b), u_input.a);
    let var_3 = global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec2<u32>(_wgslsmith_add_u32(global2.d | u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, var_2), ~vec4<u32>(23788u, var_2, 31043u, 8568u))), 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(637f, -272f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x - -1537f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(-548f, global3.x), _wgslsmith_div_f32(266f, -182f), _wgslsmith_f_op_f32(func_1(false, u_input.c))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(817f, 628f, -510f) - global3.ywy)))))), vec4<i32>(-(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, -6512i, 1i), vec4<i32>(u_input.c, -16804i, -19963i, var_0.x)) << (~0u % 32u)), _wgslsmith_mult_i32(firstTrailingBit(var_0.x << (0u % 32u)), _wgslsmith_clamp_i32(-10729i, 1i, _wgslsmith_div_i32(2147483647i, 2147483647i))), -45237i, reverseBits(min(_wgslsmith_sub_i32(57949i, -1i), 1821i))));
}

