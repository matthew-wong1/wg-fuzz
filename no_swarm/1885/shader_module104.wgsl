struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17>;

var<private> global1: array<bool, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> f32 {
    var var_0 = Struct_1(vec4<u32>(53076u, 78933u, firstTrailingBit(1u), _wgslsmith_div_u32(1u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 9496u), vec2<u32>(4294967295u, 20579u)), 1u))), global0[_wgslsmith_index_u32(38155u, 17u)], reverseBits(vec4<u32>(1u, 1u, 1u, 1u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    global1 = array<bool, 16>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1118f);
    let var_2 = Struct_3(var_0.c.xw);
    var_0 = Struct_1(var_0.a, _wgslsmith_mod_vec4_i32(vec4<i32>(39423i, reverseBits(_wgslsmith_mult_i32(u_input.b, u_input.a.x)), reverseBits(~(-2147483647i)), arg_0), -firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b.x, u_input.a.x, -2147483647i, -68377i), vec4<i32>(-2147483647i, arg_0, arg_0, arg_0)))), ~countOneBits(vec4<u32>(var_2.a.x, 11826u, 40085u, var_2.a.x) | vec4<u32>(var_2.a.x, 1u, 34082u, 19386u)));
    return 155f;
}

fn func_2() -> Struct_2 {
    global0 = array<vec4<i32>, 17>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -841f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(38137i, vec3<f32>(-1000f, 1797f, 1226f))), _wgslsmith_f_op_f32(round(376f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(559f, -890f), 723f)))), _wgslsmith_f_op_f32(round(-795f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(342f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-748f - -291f))), 1f)), 621f);
    let var_1 = !vec3<bool>(!global1[_wgslsmith_index_u32(~firstTrailingBit(12159u), 16u)], !any(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(27641u, 16u)], global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(27423u, 16u)]), vec4<bool>(global1[_wgslsmith_index_u32(78899u, 16u)], true, global1[_wgslsmith_index_u32(12297u, 16u)], false), vec4<bool>(global1[_wgslsmith_index_u32(7468u, 16u)], global1[_wgslsmith_index_u32(2496u, 16u)], false, false))), select(-37178i, countOneBits(u_input.b), !global1[_wgslsmith_index_u32(1u, 16u)]) != _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, u_input.b), _wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.zy), ~u_input.b));
    global0 = array<vec4<i32>, 17>();
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(162f, 308f)), 691f) + 849f)), Struct_1(~vec4<u32>(~1u, 1u, ~39525u, ~1u), -_wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, u_input.b, -2147483647i, u_input.a.x), abs(vec4<i32>(-16004i, -2147483647i, -2147483647i, u_input.a.x)), vec4<i32>(u_input.b, 17931i, u_input.b, u_input.b)), ~max(vec4<u32>(14542u, 17780u, 4294967295u, 0u), firstTrailingBit(vec4<u32>(79741u, 4294967295u, 97364u, 4294967295u)))), abs(_wgslsmith_div_u32(_wgslsmith_clamp_u32(5317u, 11009u, 42703u), _wgslsmith_mult_u32(31126u, 1u)) << (~1u % 32u)), 1188f);
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -427f))) + _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(func_3(0i, var_2.a)))), var_2.a.x, var_2.d), Struct_1(var_2.b.a ^ countOneBits(abs(vec4<u32>(4294967295u, var_2.b.c.x, var_2.c, 9681u))), global0[_wgslsmith_index_u32((select(var_2.c, var_2.b.a.x, var_1.x) << (var_2.c % 32u)) >> (~abs(47723u) % 32u), 17u)], ~firstTrailingBit(reverseBits(var_2.b.a))), firstLeadingBit(~(~(~var_2.c))), -1794f);
}

fn func_1() -> Struct_2 {
    global1 = array<bool, 16>();
    let var_0 = func_2();
    let var_1 = select(select(vec2<bool>(15885i >= abs(u_input.b), !global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.b.a.x, 4294967295u, 15161u), 16u)]), vec2<bool>(global1[_wgslsmith_index_u32(countOneBits(5160u), 16u)] & true, true), select(vec2<bool>(true, true), select(!vec2<bool>(global1[_wgslsmith_index_u32(var_0.c, 16u)], false), !vec2<bool>(global1[_wgslsmith_index_u32(var_0.c, 16u)], global1[_wgslsmith_index_u32(var_0.c, 16u)]), !global1[_wgslsmith_index_u32(var_0.c, 16u)]), !vec2<bool>(global1[_wgslsmith_index_u32(var_0.c, 16u)], false))), !(!select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(var_0.c, 16u)]), select(vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.c, 16u)]), vec2<bool>(global1[_wgslsmith_index_u32(var_0.b.a.x, 16u)], global1[_wgslsmith_index_u32(var_0.c, 16u)]), vec2<bool>(false, true)), var_0.c > 1u)), global1[_wgslsmith_index_u32(var_0.c, 16u)]);
    var var_2 = ~func_2().b.b.x;
    var_2 = -u_input.b;
    return Struct_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1058f + var_0.d), _wgslsmith_f_op_f32(ceil(277f)), var_0.c > var_0.c)), _wgslsmith_f_op_f32(abs(var_0.d)), _wgslsmith_f_op_f32(min(1000f, -798f))))), Struct_1(abs(vec4<u32>(var_0.b.c.x, var_0.c, var_0.b.c.x, var_0.b.a.x)) ^ var_0.b.c, global0[_wgslsmith_index_u32(~4294967295u, 17u)], vec4<u32>(1u, ~1u, var_0.b.c.x << (100652u % 32u), var_0.c ^ _wgslsmith_sub_u32(var_0.b.a.x, var_0.c))), var_0.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(i32(-1i) * -1i, vec3<f32>(-706f, -1277f, _wgslsmith_f_op_f32(f32(-1f) * -960f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_mult_u32(~(~var_0.b.a.x), _wgslsmith_div_u32(_wgslsmith_add_u32(~1u, var_0.c), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.b.a, vec4<u32>(var_0.b.a.x, var_0.c, 0u, 2812u)) ^ var_0.b.a, vec4<u32>(4294967295u << (var_0.b.a.x % 32u), var_0.c, var_0.c, ~0u))));
    global0 = array<vec4<i32>, 17>();
    var var_2 = !vec3<bool>(true, true | all(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(1u, 16u)] & (global1[_wgslsmith_index_u32(~var_0.c, 16u)] & all(vec3<bool>(true, false, true))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.x, -901f, abs(0u) <= _wgslsmith_dot_vec3_u32(vec3<u32>(5888u, 0u, 38855u), var_0.b.c.wxz))));
    let var_4 = 1i;
    let var_5 = firstLeadingBit(12276u);
    let var_6 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(-748f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1125f - _wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(sign(1624f)))), ~select(~_wgslsmith_div_i32(var_0.b.b.x, -57729i), ~9544i, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(max(var_5, 0u), ~var_0.c), 16u)]), vec4<f32>(-501f, -825f, _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec2_i32(~vec2<i32>(50137i, var_6.b.x), vec2<i32>(0i, var_0.b.b.x)), var_0.a)), var_0.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a.x, 680f), var_0.a.xz)), var_0.a.xy))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
}

