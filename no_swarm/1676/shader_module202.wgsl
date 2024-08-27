struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16>;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(2147483647i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = Struct_2(~((_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(u_input.b.x, 59401u, 34755u, u_input.b.x)) ^ ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) & ~countOneBits(vec4<u32>(1u, u_input.b.x, u_input.b.x, 132210u))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -425f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-321f, 290f)) * -706f)), -411f);
    var var_2 = min(8058u, 14722u);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 131f, -1000f, -1000f) - vec4<f32>(var_1.x, var_1.x, 624f, var_1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -602f, var_1.x, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, 191f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-881f, var_1.x, var_1.x, -1837f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1656f, var_1.x, -1000f, -395f), vec4<f32>(-396f, -686f, var_1.x, 576f), vec4<bool>(true, arg_0, true, arg_0)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) + _wgslsmith_div_f32(var_1.x, var_1.x)), _wgslsmith_f_op_f32(-449f + var_1.x)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1339f, -110f, 336f, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 2478f, -1663f, -215f) * vec4<f32>(var_1.x, var_1.x, 403f, var_1.x)))))), ~abs(_wgslsmith_mult_i32(-30687i, u_input.d)) < 0i));
    global0 = array<vec3<bool>, 16>();
    return -12156i;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_1) -> i32 {
    var var_0 = u_input.b.x;
    let var_1 = Struct_2(~(~(~vec4<u32>(114944u, 4294967295u, 4294967295u, u_input.b.x)) >> (vec4<u32>(u_input.b.x, u_input.b.x ^ u_input.b.x, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(6209u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(23643u, u_input.b.x, 1u, u_input.b.x))) % vec4<u32>(32u))));
    global0 = array<vec3<bool>, 16>();
    var var_2 = Struct_1(-func_3(all(!arg_0.xy)));
    global1 = array<Struct_1, 1>();
    return 2147483647i;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_2(vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b, ~(~vec2<u32>(4294967295u, u_input.b.x))), 17943u, select(~_wgslsmith_clamp_u32(u_input.b.x, 1u, u_input.b.x), ~u_input.b.x ^ (u_input.b.x ^ u_input.b.x), all(vec2<bool>(true, true)))));
    var_0 = Struct_2(select(vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.b.x ^ u_input.b.x, ~23924u), u_input.b.x, _wgslsmith_sub_u32(max(1u, 0u), u_input.b.x | 4294967295u), abs(var_0.a.x & u_input.b.x)), var_0.a, vec4<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false)), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false)), false, ~u_input.b.x >= u_input.b.x)));
    var_0 = Struct_2(~abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.x, 4294967295u, u_input.b.x, 1u), vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x))));
    let var_1 = Struct_2(vec4<u32>(var_0.a.x, var_0.a.x, 14579u, u_input.b.x));
    var var_2 = false;
    return _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_div_u32(var_0.a.x, ~(~_wgslsmith_sub_u32(var_0.a.x, 30770u))), var_1.a.x);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2390f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(974f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(964f - 877f) * -1649f)))));
    return global1[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1002f - _wgslsmith_f_op_f32(floor(462f))), _wgslsmith_f_op_f32(f32(-1f) * -101f))), Struct_1(func_2(global0[_wgslsmith_index_u32(abs(4294967295u), 16u)], ~u_input.a.yy, global1[_wgslsmith_index_u32(26133u, 1u)]))) >> (_wgslsmith_mod_u32(u_input.b.x | (u_input.b.x << (reverseBits(u_input.b.x) % 32u)), u_input.b.x) % 32u), 1u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<i32>) -> Struct_1 {
    global0 = array<vec3<bool>, 16>();
    let var_0 = (countOneBits(vec4<u32>(33397u & u_input.b.x, u_input.b.x, 26717u, 45481u)) << (~(countOneBits(vec4<u32>(13686u, u_input.b.x, 76108u, 110789u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 0u, 0u, 32958u), vec4<u32>(10643u, 0u, 0u, u_input.b.x))) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(0u, 35631u, 113776u, u_input.b.x) | vec4<u32>(u_input.b.x, 0u, 66092u, u_input.b.x), vec4<u32>(89723u, 0u, u_input.b.x, 0u), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 9058u, 27758u, u_input.b.x), vec4<u32>(1712u, u_input.b.x, 87906u, u_input.b.x))), ~(max(vec4<u32>(66559u, 1u, 4294967295u, 4294967295u), vec4<u32>(u_input.b.x, 11303u, u_input.b.x, 74846u)) & reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, 8391u, u_input.b.x))), reverseBits(~vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.b.x)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 61046u), vec4<u32>(62601u, 3070u, 4294967295u, 70161u)));
    let var_1 = Struct_2(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, firstTrailingBit(var_0.x), 18330u), vec4<u32>(var_0.x, 35952u, u_input.b.x, u_input.b.x) >> (~var_0 % vec4<u32>(32u))), ~(~(~u_input.b.x)), 16854u, 23602u));
    var var_2 = func_1();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1404f, 1365f))))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1794f;
    let var_1 = func_5(func_1(), select(global0[_wgslsmith_index_u32(select(~18868u, u_input.b.x, any(vec4<bool>(false, false, false, false))) ^ firstTrailingBit(5569u), 16u)], global0[_wgslsmith_index_u32(u_input.b.x, 16u)], select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(85184u, 16u)]), global0[_wgslsmith_index_u32(u_input.b.x, 16u)], global0[_wgslsmith_index_u32(abs(4294967295u), 16u)]), vec3<bool>(any(vec4<bool>(true, false, false, false)), true, true), true)), -vec4<i32>(u_input.c, ~(-30649i), u_input.c, ~u_input.c << (reverseBits(u_input.b.x) % 32u)));
    var var_2 = _wgslsmith_sub_i32(var_1.a, var_1.a);
    let var_3 = var_0;
    global1 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec4<i32>(func_5(func_1(), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(14246u, 51411u)), ~vec2<u32>(u_input.b.x, 0u)), 16u)], vec4<i32>(var_1.a << (4294967295u % 32u), u_input.d, var_1.a << (u_input.b.x % 32u), ~var_1.a)).a, u_input.d, u_input.c, min(abs(select(u_input.d, var_1.a, true)), reverseBits(-4326i))));
}

