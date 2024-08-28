struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-21338i, 0i), false, vec4<bool>(false, false, true, false), vec2<i32>(1i, 2147483647i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_3(vec4<u32>(global0[_wgslsmith_index_u32(0u, 16u)], _wgslsmith_div_u32(global0[_wgslsmith_index_u32(16309u | global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 14255u) & 11146u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(121770u, 4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 60792u), vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]))), min(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37449u, 16u)], 16u)], 16u)]), vec2<u32>(global0[_wgslsmith_index_u32(22735u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)])), _wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 1u), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], 17810u)))), 16u)], abs(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13105u, 16u)], 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]), 16u)], ~0u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20181u, 16u)], 16u)], 16u)], 0u)))), true, global1.c.x, Struct_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)], 47152u), vec4<u32>(4294967295u, 45733u, global0[_wgslsmith_index_u32(1u, 16u)], 4294967295u)), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45995u, 16u)], 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]) ^ vec4<u32>(49868u, global0[_wgslsmith_index_u32(3258u, 16u)], 0u, 1u), vec4<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(0u, 16u)], 24541u) >> (vec4<u32>(global0[_wgslsmith_index_u32(73672u, 16u)], global0[_wgslsmith_index_u32(63298u, 16u)], 53287u, 0u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(57668u, global0[_wgslsmith_index_u32(26300u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31179u, 16u)], 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51937u, 16u)], 16u)], 16u)]), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)], 60088u)), vec4<u32>(~4294967295u, 17176u, ~17139u, global0[_wgslsmith_index_u32(4294967295u, 16u)] & 20533u)), Struct_1(global1.a, !any(global1.c), select(global1.c, vec4<bool>(false, global1.b, false, false), global1.c), global1.a), Struct_1(vec2<i32>(u_input.b, _wgslsmith_mult_i32(-31245i, global1.d.x)), global1.b, vec4<bool>(true, global1.b != global1.b, any(global1.c), false), reverseBits(-vec2<i32>(global1.d.x, 12762i)))), max(~(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)]), vec2<u32>(62598u, 4294967295u)) | (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13586u, 16u)], 16u)], 81079u) << (vec2<u32>(global0[_wgslsmith_index_u32(32373u, 16u)], 13433u) % vec2<u32>(32u)))), vec2<u32>(67178u, ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)]))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -244f), 992f));
    var var_2 = vec3<u32>(var_0.e.x, 1u, _wgslsmith_dot_vec3_u32(~var_0.a.yxw, vec3<u32>(global0[_wgslsmith_index_u32(var_0.d.a.x, 16u)], 1u, 0u)) << (87775u % 32u)) << (vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(4294967295u, ~var_0.e.x, true), 12669u), 16u)], 32736u, reverseBits(var_0.e.x)) % vec3<u32>(32u));
    var var_3 = Struct_1(_wgslsmith_sub_vec2_i32(~vec2<i32>(_wgslsmith_mult_i32(u_input.b, -48375i), 24486i), -countOneBits(global1.d)), !any(vec2<bool>(!global1.b, u_input.b == 1i)), vec4<bool>(var_0.b, (~global0[_wgslsmith_index_u32(0u, 16u)] ^ var_2.x) != 0u, any(select(select(vec2<bool>(true, false), var_0.d.c.c.ww, true), select(vec2<bool>(var_0.b, true), vec2<bool>(var_0.d.b.c.x, true), global1.c.xx), true)), true), var_0.d.c.d);
    let var_4 = _wgslsmith_mod_vec4_u32(~var_0.d.a, ~vec4<u32>(~var_0.a.x, var_0.d.a.x >> (abs(30178u) % 32u), global0[_wgslsmith_index_u32(var_2.x, 16u)], var_2.x));
    return ~var_4.zz;
}

fn func_2() -> i32 {
    global0 = array<u32, 16>();
    var var_0 = ~func_3();
    let var_1 = Struct_1(global1.d, true, global1.c, firstLeadingBit(global1.d) ^ _wgslsmith_add_vec2_i32((vec2<i32>(-13613i, -1i) >> (vec2<u32>(global0[_wgslsmith_index_u32(var_0.x, 16u)], 0u) % vec2<u32>(32u))) & vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.b >> (var_0.x % 32u), ~u_input.b)));
    var var_2 = vec2<u32>(abs(0u), abs(global0[_wgslsmith_index_u32(~21106u, 16u)])) | vec2<u32>(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(reverseBits(var_0.x), 16u)], _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(30063u, 16u)], 0u), vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(var_0.x, 16u)], 36135u)), vec3<u32>(4294967295u, var_0.x, var_0.x))), _wgslsmith_mod_u32(~(~global0[_wgslsmith_index_u32(21592u, 16u)]), 36180u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1568f)))), any(select(vec3<bool>(true, var_1.b, false), var_1.c.yxx, true))))));
    return ~_wgslsmith_sub_i32(-(~(-20511i) >> (var_2.x % 32u)), _wgslsmith_dot_vec4_i32(~vec4<i32>(global1.d.x, 1i, var_1.a.x, global1.d.x) ^ select(vec4<i32>(12382i, -1i, global1.a.x, global1.a.x), vec4<i32>(13486i, -2147483647i, global1.a.x, 1i), global1.c), vec4<i32>(39679i, global1.d.x, u_input.b, -1i) | (vec4<i32>(-2147483647i, global1.a.x, -37979i, u_input.a) << (vec4<u32>(101978u, var_0.x, 0u, 1u) % vec4<u32>(32u)))));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    let var_0 = vec3<i32>(func_2(), i32(-1i) * -2147483647i, global1.a.x);
    global0 = array<u32, 16>();
    var var_1 = global1.a.x;
    let var_2 = reverseBits(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-select(vec4<i32>(4595i, 0i, -1i, 0i), vec4<i32>(arg_3.d.b.d.x, arg_1.d.c.a.x, arg_1.d.c.a.x, u_input.b), arg_1.c), ~(vec4<i32>(2147483647i, arg_1.d.c.a.x, u_input.a, 28981i) ^ vec4<i32>(-1i, var_0.x, arg_1.d.b.a.x, 1i))), -(~vec4<i32>(arg_3.d.b.d.x, -1i, 20067i, global1.a.x)) << (_wgslsmith_mult_vec4_u32(arg_1.a, arg_3.d.a) % vec4<u32>(32u))));
    var var_3 = countOneBits(vec4<u32>(arg_1.e.x ^ 0u, 67262u, 83581u, abs(select(4294967295u, abs(72991u), global1.b))));
    return Struct_1(abs(arg_3.d.c.d), !arg_3.c && arg_3.c, select(arg_1.d.c.c, vec4<bool>(global1.b, global1.b || arg_3.b, false, false), vec4<bool>(select(10257u > arg_1.d.a.x, true, false & arg_3.b), any(vec4<bool>(true, false, false, arg_1.c)), !(!arg_2), arg_2)), ~(~(select(vec2<i32>(-2147483647i, arg_1.d.b.a.x), arg_3.d.b.a, arg_3.d.b.c.x) >> (vec2<u32>(43894u, arg_1.a.x) % vec2<u32>(32u)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.d.x, ~arg_1.a.x, func_1(countOneBits(arg_0.x), Struct_3(vec4<u32>(43475u, global0[_wgslsmith_index_u32(arg_0.x, 16u)], arg_0.x, arg_0.x), false, global1.c.x, Struct_2(vec4<u32>(arg_0.x, 4294967295u, global0[_wgslsmith_index_u32(27431u, 16u)], 91558u), arg_1, arg_1), max(arg_0, arg_0)), !all(vec3<bool>(arg_1.c.x, arg_1.b, true)), Struct_3(~vec4<u32>(16799u, 140630u, arg_0.x, arg_0.x), false, true, Struct_2(vec4<u32>(72172u, 24499u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 100840u), arg_1, Struct_1(vec2<i32>(u_input.a, -2147483647i), false, arg_1.c, global1.a)), ~vec2<u32>(global0[_wgslsmith_index_u32(1u, 16u)], 4294967295u))).a.x), _wgslsmith_clamp_vec3_i32(~(~(vec3<i32>(1i, 2147483647i, -1i) << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], arg_0.x, arg_0.x) % vec3<u32>(32u)))), vec3<i32>(~_wgslsmith_sub_i32(-39248i, -11653i), select(u_input.a, ~2147483647i, true), 50320i), select(vec3<i32>(~(-6811i), -19965i, global1.d.x), vec3<i32>(-1i) * -vec3<i32>(global1.a.x, 40406i, 0i), func_1(~global0[_wgslsmith_index_u32(1u, 16u)], Struct_3(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], global0[_wgslsmith_index_u32(arg_0.x, 16u)], 0u, arg_0.x), true, arg_1.c.x, Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41094u, 16u)], 16u)], 0u, 4294967295u, global0[_wgslsmith_index_u32(38168u, 16u)]), Struct_1(global1.a, arg_1.c.x, global1.c, arg_1.a), Struct_1(arg_1.d, false, vec4<bool>(true, global1.c.x, global1.b, global1.b), vec2<i32>(0i, 0i))), vec2<u32>(arg_0.x, arg_0.x)), false, Struct_3(vec4<u32>(arg_0.x, 36791u, global0[_wgslsmith_index_u32(43244u, 16u)], 34201u), arg_1.b, global1.c.x, Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27354u, 16u)], 16u)], 0u, arg_0.x, arg_0.x), Struct_1(arg_1.d, arg_1.c.x, arg_1.c, vec2<i32>(arg_1.d.x, 0i)), Struct_1(vec2<i32>(1i, -2147483647i), arg_1.c.x, vec4<bool>(false, global1.c.x, false, true), vec2<i32>(u_input.b, global1.d.x))), vec2<u32>(1u, arg_0.x))).c.zzx)));
    let var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~arg_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_3().x, 16u)], 16u)]), (vec2<u32>(arg_0.x, 17731u) << (arg_0 % vec2<u32>(32u))) ^ vec2<u32>(global0[_wgslsmith_index_u32(1u, 16u)], 43232u)) << (vec2<u32>(~abs(38929u), arg_0.x) % vec2<u32>(32u)), arg_0);
    var var_2 = firstLeadingBit(select(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 13434u, var_1.x) ^ vec3<u32>(arg_0.x, 21794u, 24805u), select(vec3<u32>(40591u, global0[_wgslsmith_index_u32(arg_0.x, 16u)], arg_0.x), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 16u)], 16u)], 4294967295u, 4294967295u), arg_1.b))), ~vec3<u32>(~4294967295u, global0[_wgslsmith_index_u32(1u, 16u)] >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 16u)], 16u)] % 32u), ~34318u), !global1.c.zwx));
    var_2 = vec3<u32>(countOneBits(_wgslsmith_mult_u32(1u, ~global0[_wgslsmith_index_u32(arg_0.x, 16u)]) | global0[_wgslsmith_index_u32(1u, 16u)]), 0u, abs(10853u));
    global0 = array<u32, 16>();
    return firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1.x, abs(abs(var_2.x)), var_2.x), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(27867u, 16u)], 6814u, arg_0.x, 0u), vec4<u32>(var_2.x, var_2.x, var_2.x, 1u), vec4<u32>(1u, 4294967295u, arg_0.x, 4294967295u)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    var var_0 = arg_0.d.b.d.x;
    var var_1 = vec3<i32>(countOneBits(i32(-1i) * -67756i), arg_0.d.c.d.x, ~u_input.a);
    let var_2 = global0[_wgslsmith_index_u32(~(~34092u), 16u)];
    let var_3 = arg_1.d;
    let var_4 = arg_1.d;
    return arg_0.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_dot_vec3_u32(vec3<u32>(~72040u, _wgslsmith_dot_vec4_u32(vec4<u32>(34425u, 44088u, 0u, 0u), vec4<u32>(60222u, global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39511u, 16u)], 16u)], 16u)])), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(20669u, 16u)])), select(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75346u, 16u)], 16u)]) | vec3<u32>(30737u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18203u, 16u)], 16u)], 850u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 39014u, global0[_wgslsmith_index_u32(4294967295u, 16u)]), global1.c.x)) & 45787u);
    var var_1 = ~countOneBits(~(~1u));
    global1 = func_5(Struct_3(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29946u, 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], var_0, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0, global0[_wgslsmith_index_u32(48885u, 16u)], 4294967295u, 16749u), vec4<u32>(36467u, 1u, global0[_wgslsmith_index_u32(44379u, 16u)], 0u))), func_4(vec2<u32>(var_0, 4294967295u), func_1(global0[_wgslsmith_index_u32(4294967295u, 16u)], Struct_3(vec4<u32>(19500u, var_0, 1u, 0u), global1.b, global1.b, Struct_2(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(82261u, 16u)], 16u)], global0[_wgslsmith_index_u32(var_0, 16u)], 1u), Struct_1(vec2<i32>(global1.d.x, -14779i), global1.c.x, vec4<bool>(global1.b, global1.c.x, false, true), global1.d), Struct_1(vec2<i32>(u_input.b, global1.a.x), true, vec4<bool>(global1.c.x, true, global1.b, false), vec2<i32>(31169i, u_input.b))), vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8498u, 16u)], 16u)])), global1.b, Struct_3(vec4<u32>(global0[_wgslsmith_index_u32(var_0, 16u)], var_0, 4294967295u, 1u), true, true, Struct_2(vec4<u32>(5905u, var_0, var_0, 1u), Struct_1(global1.a, global1.b, global1.c, global1.d), Struct_1(global1.d, global1.c.x, vec4<bool>(true, false, global1.c.x, global1.b), global1.d)), vec2<u32>(var_0, 24887u))))), all(func_1(77529u, Struct_3(vec4<u32>(38819u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53090u, 16u)], 16u)], 37217u, var_0), global1.c.x, global1.c.x, Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34229u, 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 48740u, 43654u), Struct_1(vec2<i32>(13983i, global1.d.x), global1.c.x, vec4<bool>(global1.b, global1.c.x, false, global1.b), vec2<i32>(2147483647i, global1.d.x)), Struct_1(global1.d, global1.b, global1.c, global1.d)), vec2<u32>(global0[_wgslsmith_index_u32(1u, 16u)], 1u)), global1.b, Struct_3(vec4<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(0u, 16u)], 0u), global1.c.x, global1.c.x, Struct_2(vec4<u32>(var_0, 105895u, var_0, 4294967295u), Struct_1(global1.d, global1.b, vec4<bool>(global1.c.x, global1.b, global1.b, global1.b), global1.a), Struct_1(global1.a, false, global1.c, vec2<i32>(u_input.b, global1.a.x))), vec2<u32>(0u, var_0))).c.zy), true, Struct_2(abs(countOneBits(vec4<u32>(var_0, var_0, 1u, var_0))), func_1(select(0u, var_0, false), Struct_3(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10456u, 16u)], 16u)], 16u)], 16u)], var_0, 25229u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]), true, global1.c.x, Struct_2(vec4<u32>(32628u, 23697u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)]), Struct_1(vec2<i32>(44413i, global1.d.x), global1.b, global1.c, vec2<i32>(global1.a.x, -66656i)), Struct_1(vec2<i32>(-27573i, -6080i), global1.c.x, vec4<bool>(true, global1.b, global1.b, false), global1.a)), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16220u)), true, Struct_3(vec4<u32>(1u, var_0, var_0, 1u), global1.b, global1.b, Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70925u, 16u)], 16u)], 28145u, global0[_wgslsmith_index_u32(0u, 16u)], var_0), Struct_1(vec2<i32>(global1.d.x, 26368i), global1.b, vec4<bool>(false, true, global1.b, global1.b), vec2<i32>(u_input.a, 23756i)), Struct_1(vec2<i32>(global1.a.x, 2147483647i), false, vec4<bool>(global1.b, global1.c.x, true, global1.c.x), vec2<i32>(global1.d.x, u_input.a))), vec2<u32>(0u, 32044u))), Struct_1(-vec2<i32>(u_input.a, 2147483647i), !global1.c.x, !vec4<bool>(true, global1.b, global1.b, global1.b), ~global1.d)), abs(vec2<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(41583u, 16u)]), select(4982u, 12673u, false)))), Struct_3(select(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3381u, 16u)], 16u)], 1u, 7790u, var_0)), ~vec4<u32>(18061u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14111u, 16u)], 16u)], var_0, global0[_wgslsmith_index_u32(8160u, 16u)])), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(var_0, 16u)], global0[_wgslsmith_index_u32(45292u, 16u)], 0u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], 0u, 41022u, 1u)), select(vec4<u32>(7567u, global0[_wgslsmith_index_u32(var_0, 16u)], var_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55036u, 16u)], 16u)]), vec4<u32>(var_0, 1u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26907u, 16u)], 16u)]), global1.c.x)), global1.b), all(global1.c), !any(func_1(74856u, Struct_3(vec4<u32>(51604u, 53015u, global0[_wgslsmith_index_u32(18639u, 16u)], 1u), global1.b, true, Struct_2(vec4<u32>(4294967295u, var_0, 1u, var_0), Struct_1(vec2<i32>(u_input.a, global1.a.x), global1.b, global1.c, vec2<i32>(u_input.b, u_input.a)), Struct_1(global1.a, global1.b, vec4<bool>(global1.c.x, global1.b, false, global1.c.x), vec2<i32>(u_input.a, u_input.b))), vec2<u32>(var_0, 0u)), global1.c.x, Struct_3(vec4<u32>(var_0, 2195u, 16578u, global0[_wgslsmith_index_u32(1u, 16u)]), global1.b, global1.c.x, Struct_2(vec4<u32>(var_0, global0[_wgslsmith_index_u32(var_0, 16u)], var_0, 2970u), Struct_1(vec2<i32>(global1.a.x, u_input.a), true, global1.c, vec2<i32>(global1.d.x, global1.a.x)), Struct_1(vec2<i32>(-1i, u_input.a), true, vec4<bool>(global1.b, false, false, global1.b), vec2<i32>(-22975i, -1i))), vec2<u32>(73453u, 73596u))).c.ww), Struct_2(~vec4<u32>(31610u, 0u, 971u, 40752u), func_1(min(0u, global0[_wgslsmith_index_u32(0u, 16u)]), Struct_3(vec4<u32>(var_0, global0[_wgslsmith_index_u32(var_0, 16u)], 82080u, 1u), true, true, Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(var_0, 16u)], global0[_wgslsmith_index_u32(57105u, 16u)], var_0, 24097u), Struct_1(global1.a, global1.b, vec4<bool>(true, global1.c.x, true, global1.c.x), vec2<i32>(76149i, 1i)), Struct_1(global1.d, global1.c.x, vec4<bool>(global1.b, false, global1.b, global1.c.x), vec2<i32>(46517i, global1.d.x))), vec2<u32>(0u, 4433u)), false && global1.b, Struct_3(vec4<u32>(0u, global0[_wgslsmith_index_u32(var_0, 16u)], 12413u, var_0), true, true, Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(var_0, 16u)], 1u, 26104u), Struct_1(global1.a, false, vec4<bool>(global1.c.x, true, global1.c.x, false), global1.a), Struct_1(vec2<i32>(u_input.b, global1.a.x), global1.b, vec4<bool>(global1.b, false, global1.b, global1.c.x), vec2<i32>(0i, global1.a.x))), vec2<u32>(var_0, 101302u))), func_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(34266u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]), 16u)], Struct_3(vec4<u32>(7073u, 5969u, var_0, 2584u), global1.b, false, Struct_2(vec4<u32>(var_0, global0[_wgslsmith_index_u32(61474u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 16u)], 16u)], var_0), Struct_1(global1.a, false, vec4<bool>(global1.b, true, true, global1.c.x), global1.d), Struct_1(global1.d, false, global1.c, vec2<i32>(-1i, 2147483647i))), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 15906u)), false, Struct_3(vec4<u32>(1u, 31934u, 55893u, 0u), true, global1.b, Struct_2(vec4<u32>(1392u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(79178u, 16u)], 16u)], 38633u, var_0), Struct_1(global1.a, false, vec4<bool>(true, true, false, false), vec2<i32>(2147483647i, 43988i)), Struct_1(global1.a, false, vec4<bool>(true, true, true, false), global1.a)), vec2<u32>(0u, 1u)))), ~(vec2<u32>(global0[_wgslsmith_index_u32(5700u, 16u)], 1u) >> ((vec2<u32>(var_0, 49399u) | vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)])) % vec2<u32>(32u)))));
    global1 = func_5(Struct_3(vec4<u32>(~countOneBits(4294967295u), var_0, func_3().x, 4294967295u), true, global1.c.x, Struct_2(~(vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 16u)], 11924u, 34892u) ^ vec4<u32>(0u, 48096u, var_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)])), Struct_1(global1.a, false, func_5(Struct_3(vec4<u32>(var_0, var_0, var_0, 0u), global1.b, false, Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(var_0, 16u)], global0[_wgslsmith_index_u32(var_0, 16u)], global0[_wgslsmith_index_u32(var_0, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 16u)], 16u)]), Struct_1(global1.a, false, global1.c, vec2<i32>(global1.a.x, global1.a.x)), Struct_1(global1.a, global1.c.x, global1.c, global1.d)), vec2<u32>(2495u, global0[_wgslsmith_index_u32(6639u, 16u)])), Struct_3(vec4<u32>(5689u, 0u, var_0, var_0), global1.b, global1.b, Struct_2(vec4<u32>(4294967295u, var_0, var_0, 61770u), Struct_1(vec2<i32>(u_input.b, global1.d.x), global1.b, vec4<bool>(global1.c.x, true, true, global1.c.x), global1.a), Struct_1(vec2<i32>(7770i, 67195i), global1.b, vec4<bool>(global1.b, false, global1.b, global1.c.x), global1.a)), vec2<u32>(var_0, 0u))).c, ~global1.a), Struct_1(func_5(Struct_3(vec4<u32>(var_0, 4294967295u, 0u, 0u), global1.c.x, global1.c.x, Struct_2(vec4<u32>(5973u, 0u, 15672u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 16u)], 16u)]), Struct_1(vec2<i32>(u_input.b, global1.d.x), global1.b, global1.c, global1.d), Struct_1(vec2<i32>(91021i, 2147483647i), false, vec4<bool>(global1.b, global1.c.x, global1.b, true), vec2<i32>(-1i, u_input.a))), vec2<u32>(0u, 81068u)), Struct_3(vec4<u32>(56731u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 16u)], 16u)], 4294967295u), global1.b, global1.b, Struct_2(vec4<u32>(85676u, 28998u, global0[_wgslsmith_index_u32(var_0, 16u)], 0u), Struct_1(global1.a, false, vec4<bool>(false, global1.b, global1.b, global1.c.x), global1.a), Struct_1(global1.a, global1.c.x, global1.c, global1.a)), vec2<u32>(0u, var_0))).a, global1.b, select(vec4<bool>(false, global1.b, global1.b, true), global1.c, vec4<bool>(global1.b, global1.c.x, global1.c.x, false)), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(global1.d.x, global1.a.x)))), vec2<u32>(min(68007u, ~599u), ~464u << (global0[_wgslsmith_index_u32(~var_0, 16u)] % 32u))), Struct_3(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 16u)], 16u)], var_0, 1u) ^ vec4<u32>(var_0, 0u, 44034u, global0[_wgslsmith_index_u32(var_0, 16u)]), vec4<u32>(global0[_wgslsmith_index_u32(var_0, 16u)], 20078u, var_0, var_0)) >> (vec4<u32>(16065u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u << (var_0 % 32u), 16u)], 16u)], func_3().x, var_0 ^ var_0) % vec4<u32>(32u)), any(vec4<bool>(false, true, global1.b, !global1.c.x)), true, Struct_2(~vec4<u32>(global0[_wgslsmith_index_u32(15222u, 16u)], 4294967295u, 1u, global0[_wgslsmith_index_u32(48682u, 16u)]), func_5(Struct_3(vec4<u32>(var_0, var_0, var_0, var_0), global1.b, global1.b, Struct_2(vec4<u32>(var_0, global0[_wgslsmith_index_u32(1u, 16u)], var_0, 0u), Struct_1(global1.a, global1.b, vec4<bool>(true, global1.b, global1.c.x, global1.b), vec2<i32>(2147483647i, u_input.a)), Struct_1(global1.a, false, vec4<bool>(global1.b, global1.b, global1.b, false), vec2<i32>(u_input.b, u_input.a))), vec2<u32>(global0[_wgslsmith_index_u32(56721u, 16u)], 23776u)), Struct_3(vec4<u32>(1u, var_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(80585u, 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(1u, 16u)]), false, true, Struct_2(vec4<u32>(var_0, global0[_wgslsmith_index_u32(4294967295u, 16u)], 0u, var_0), Struct_1(global1.d, false, global1.c, global1.d), Struct_1(vec2<i32>(2147483647i, global1.a.x), global1.b, vec4<bool>(global1.b, global1.c.x, false, global1.b), global1.d)), vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(957u, 16u)], 16u)]))), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 29096i), vec2<i32>(0i, u_input.b)), global1.c.x & true, !global1.c, global1.a)), vec2<u32>(_wgslsmith_sub_u32(4294967295u, 27290u), global0[_wgslsmith_index_u32(55868u, 16u)] >> (global0[_wgslsmith_index_u32(0u, 16u)] % 32u)) << (~_wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 16u)], 16u)], 16u)], 44159u), vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u))));
    var_1 = ~var_0;
    var var_2 = 22133i;
    var var_3 = Struct_2(~reverseBits(~vec4<u32>(var_0, 20471u, global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14686u, 16u)], 16u)])), func_5(Struct_3(~vec4<u32>(global0[_wgslsmith_index_u32(57318u, 16u)], var_0, 0u, 29175u) | abs(vec4<u32>(68860u, var_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(23116u, 16u)])), func_5(Struct_3(vec4<u32>(var_0, var_0, global0[_wgslsmith_index_u32(93117u, 16u)], 71132u), true, global1.c.x, Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(87039u, 16u)], 0u, var_0, global0[_wgslsmith_index_u32(4294967295u, 16u)]), Struct_1(global1.d, false, global1.c, global1.d), Struct_1(global1.d, global1.b, vec4<bool>(global1.c.x, true, true, true), vec2<i32>(18242i, global1.d.x))), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64182u, 16u)], 16u)], 24898u)), Struct_3(vec4<u32>(4294967295u, 1987u, global0[_wgslsmith_index_u32(1u, 16u)], 4294967295u), false, false, Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 0u, var_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]), Struct_1(global1.a, global1.c.x, global1.c, vec2<i32>(31925i, 41055i)), Struct_1(global1.a, global1.c.x, vec4<bool>(global1.c.x, true, false, false), vec2<i32>(-16880i, global1.a.x))), vec2<u32>(4294967295u, 1u))).c.x, false & global1.b, Struct_2(vec4<u32>(1u, 1u, 1u, var_0), func_5(Struct_3(vec4<u32>(var_0, 3486u, global0[_wgslsmith_index_u32(1u, 16u)], var_0), global1.c.x, false, Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(var_0, 16u)], var_0, global0[_wgslsmith_index_u32(var_0, 16u)], 1u), Struct_1(global1.d, false, vec4<bool>(global1.c.x, true, true, true), global1.a), Struct_1(vec2<i32>(global1.d.x, 46704i), true, vec4<bool>(true, false, false, true), global1.a)), vec2<u32>(var_0, 60991u)), Struct_3(vec4<u32>(49971u, var_0, var_0, 26955u), global1.c.x, false, Struct_2(vec4<u32>(80187u, global0[_wgslsmith_index_u32(4294967295u, 16u)], var_0, 0u), Struct_1(vec2<i32>(1i, 0i), global1.b, global1.c, vec2<i32>(-1i, -2371i)), Struct_1(vec2<i32>(-1i, u_input.a), false, global1.c, vec2<i32>(-57760i, u_input.b))), vec2<u32>(var_0, var_0))), func_1(4640u, Struct_3(vec4<u32>(var_0, global0[_wgslsmith_index_u32(4294967295u, 16u)], 56087u, 51393u), false, global1.c.x, Struct_2(vec4<u32>(var_0, global0[_wgslsmith_index_u32(1u, 16u)], var_0, 60299u), Struct_1(global1.d, false, global1.c, global1.a), Struct_1(vec2<i32>(-1i, -1i), true, global1.c, vec2<i32>(global1.d.x, u_input.a))), vec2<u32>(1u, var_0)), false, Struct_3(vec4<u32>(global0[_wgslsmith_index_u32(77178u, 16u)], var_0, 173u, 39462u), true, true, Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 16u)], 16u)], 16u)], 9573u, 36343u, 4294967295u), Struct_1(vec2<i32>(1i, global1.d.x), global1.c.x, global1.c, global1.a), Struct_1(global1.d, false, vec4<bool>(global1.b, global1.c.x, false, global1.b), vec2<i32>(u_input.a, u_input.b))), vec2<u32>(global0[_wgslsmith_index_u32(44408u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)])))), abs(vec2<u32>(var_0, 13606u)) | select(vec2<u32>(var_0, global0[_wgslsmith_index_u32(1u, 16u)]), vec2<u32>(var_0, 71320u), global1.c.x)), Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(var_0, 99824u, 72059u, var_0), ~vec4<u32>(18746u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], global0[_wgslsmith_index_u32(61030u, 16u)])), !global1.b, (var_0 != var_0) && true, Struct_2(vec4<u32>(37780u, 40423u, 48343u, var_0) ^ vec4<u32>(63578u, global0[_wgslsmith_index_u32(var_0, 16u)], 38084u, 45863u), Struct_1(vec2<i32>(u_input.a, global1.d.x), false, vec4<bool>(true, global1.b, false, false), global1.d), func_1(global0[_wgslsmith_index_u32(var_0, 16u)], Struct_3(vec4<u32>(global0[_wgslsmith_index_u32(var_0, 16u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 20872u), global1.c.x, false, Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 16u)], 16u)], 0u, 123757u, 33182u), Struct_1(global1.a, global1.c.x, vec4<bool>(global1.c.x, false, global1.b, false), vec2<i32>(-2147483647i, -28358i)), Struct_1(global1.d, global1.c.x, global1.c, global1.d)), vec2<u32>(var_0, 11993u)), false, Struct_3(vec4<u32>(global0[_wgslsmith_index_u32(var_0, 16u)], global0[_wgslsmith_index_u32(var_0, 16u)], 23552u, 1u), false, false, Struct_2(vec4<u32>(31218u, var_0, 1u, var_0), Struct_1(global1.a, global1.c.x, global1.c, global1.a), Struct_1(global1.d, global1.b, vec4<bool>(true, false, true, false), global1.d)), vec2<u32>(var_0, global0[_wgslsmith_index_u32(var_0, 16u)])))), select(vec2<u32>(var_0, 59136u), countOneBits(vec2<u32>(1u, 22683u)), true))), func_1(var_0, Struct_3(vec4<u32>(abs(var_0), 3637u, ~global0[_wgslsmith_index_u32(var_0, 16u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1125u, 16u)], global0[_wgslsmith_index_u32(24721u, 16u)])), true, true, Struct_2(abs(vec4<u32>(var_0, 29498u, global0[_wgslsmith_index_u32(1u, 16u)], 0u)), Struct_1(vec2<i32>(u_input.a, global1.a.x), global1.b, global1.c, global1.d), func_5(Struct_3(vec4<u32>(69118u, global0[_wgslsmith_index_u32(4294967295u, 16u)], 0u, global0[_wgslsmith_index_u32(var_0, 16u)]), global1.c.x, false, Struct_2(vec4<u32>(0u, 21099u, 4294967295u, 64913u), Struct_1(global1.d, true, global1.c, vec2<i32>(u_input.b, -27812i)), Struct_1(vec2<i32>(1i, -143i), global1.b, vec4<bool>(global1.b, global1.c.x, true, global1.b), global1.d)), vec2<u32>(global0[_wgslsmith_index_u32(var_0, 16u)], global0[_wgslsmith_index_u32(var_0, 16u)])), Struct_3(vec4<u32>(62933u, 74709u, 34012u, 4294967295u), global1.c.x, global1.b, Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(73189u, 16u)], global0[_wgslsmith_index_u32(15487u, 16u)], global0[_wgslsmith_index_u32(var_0, 16u)], var_0), Struct_1(vec2<i32>(u_input.a, -24953i), global1.c.x, global1.c, global1.d), Struct_1(global1.d, true, vec4<bool>(false, true, global1.c.x, global1.b), vec2<i32>(global1.d.x, u_input.b))), vec2<u32>(11391u, global0[_wgslsmith_index_u32(var_0, 16u)])))), vec2<u32>(16298u >> (var_0 % 32u), 5936u)), global1.c.x && any(!global1.c.zyw), Struct_3(vec4<u32>(_wgslsmith_add_u32(55859u, 0u), func_4(vec2<u32>(58015u, global0[_wgslsmith_index_u32(var_0, 16u)]), Struct_1(vec2<i32>(20380i, 1i), false, vec4<bool>(true, false, global1.c.x, global1.c.x), global1.d)).x, global0[_wgslsmith_index_u32(0u, 16u)], ~var_0), var_0 >= ~4294967295u, !global1.c.x, Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], 1u, 4294967295u, global0[_wgslsmith_index_u32(var_0, 16u)]), func_5(Struct_3(vec4<u32>(global0[_wgslsmith_index_u32(1u, 16u)], var_0, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)]), false, global1.c.x, Struct_2(vec4<u32>(1u, var_0, var_0, 1u), Struct_1(vec2<i32>(global1.d.x, 1i), global1.c.x, global1.c, vec2<i32>(global1.a.x, 4182i)), Struct_1(vec2<i32>(u_input.b, -25521i), global1.c.x, global1.c, vec2<i32>(29302i, -2147483647i))), vec2<u32>(global0[_wgslsmith_index_u32(var_0, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 16u)], 16u)])), Struct_3(vec4<u32>(47660u, 15863u, 4294967295u, 4294967295u), false, global1.c.x, Struct_2(vec4<u32>(4294967295u, 3943u, 8335u, var_0), Struct_1(global1.d, global1.c.x, global1.c, vec2<i32>(41538i, 1i)), Struct_1(vec2<i32>(u_input.a, -2147483647i), global1.b, global1.c, global1.d)), vec2<u32>(var_0, 4294967295u))), func_1(var_0, Struct_3(vec4<u32>(var_0, global0[_wgslsmith_index_u32(var_0, 16u)], 1u, 0u), false, false, Struct_2(vec4<u32>(var_0, var_0, var_0, 4294967295u), Struct_1(global1.d, false, vec4<bool>(global1.c.x, false, global1.c.x, true), global1.d), Struct_1(vec2<i32>(global1.d.x, 1i), false, global1.c, global1.d)), vec2<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 16u)])), global1.b, Struct_3(vec4<u32>(var_0, 4294967295u, 4294967295u, 1u), global1.b, global1.b, Struct_2(vec4<u32>(0u, var_0, var_0, 66708u), Struct_1(vec2<i32>(u_input.b, -9685i), false, vec4<bool>(global1.c.x, false, true, global1.b), vec2<i32>(0i, 17411i)), Struct_1(vec2<i32>(1i, global1.d.x), true, global1.c, vec2<i32>(0i, -2147483647i))), vec2<u32>(12948u, 0u)))), _wgslsmith_add_vec2_u32(vec2<u32>(var_0, var_0), _wgslsmith_mult_vec2_u32(vec2<u32>(19891u, 1u), vec2<u32>(24143u, 66119u))))));
    var var_4 = abs(global1.a & _wgslsmith_sub_vec2_i32(vec2<i32>(abs(var_3.c.d.x), global1.d.x & 2147483647i), var_3.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(select(-1i, 0i, false));
}

