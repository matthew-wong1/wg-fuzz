struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(82307u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(0u, 45609u));

var<private> global2: array<f32, 23>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> u32 {
    return u_input.a;
}

fn func_2(arg_0: u32) -> vec4<u32> {
    var var_0 = vec2<bool>(true, !(all(select(vec2<bool>(false, false), vec2<bool>(true, false), true)) && true));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(func_3(firstTrailingBit(vec3<i32>(1i, u_input.b.x, u_input.b.x)), 853f), 13u)]), _wgslsmith_f_op_f32(974f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global2[_wgslsmith_index_u32(u_input.a, 23u)]))))), global2[_wgslsmith_index_u32(4294967295u, 23u)], Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(0u, u_input.a) >> (global1[_wgslsmith_index_u32(1u, 3u)] % vec2<u32>(32u))), vec2<i32>(2147483647i, u_input.b.x), u_input.b.xx, ~firstTrailingBit(vec3<u32>(u_input.a, 22862u, u_input.a))), abs(countOneBits(abs(u_input.b.x))), Struct_1(~(arg_0 & 132090u), _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.xw), _wgslsmith_mult_vec2_i32(max(u_input.b.ww, u_input.b.yz), u_input.b.yz ^ vec2<i32>(u_input.b.x, 69513i)), select(max(vec3<u32>(4294967295u, arg_0, arg_0), vec3<u32>(21240u, 19906u, arg_0)), vec3<u32>(u_input.a, 30861u, u_input.a), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x), var_0.x)))), _wgslsmith_div_i32(~(-24772i), -22619i));
    var_1 = Struct_3(global0[_wgslsmith_index_u32(0u, 13u)], var_1.b, Struct_2(Struct_1(~u_input.a, ~u_input.b.xy, _wgslsmith_div_vec2_i32(var_1.c.a.c, ~vec2<i32>(u_input.b.x, var_1.d)), var_1.c.a.d), var_1.c.c.b.x, Struct_1(4294967295u | u_input.a, vec2<i32>(-var_1.c.c.b.x, u_input.b.x), -vec2<i32>(0i, -1i) ^ abs(vec2<i32>(1i, var_1.d)), var_1.c.a.d)), 1i);
    let var_2 = var_1.d;
    var var_3 = ~(-2147483647i);
    return _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(select(~(vec4<u32>(u_input.a, 55517u, 607u, 1u) & vec4<u32>(1u, 4294967295u, u_input.a, 32124u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, arg_0, var_1.c.a.d.x), vec4<u32>(u_input.a, 43869u, 4294967295u, 0u)), ~var_1.c.c.d.x, u_input.a, ~4294967295u), all(select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), true))), ~(countOneBits(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 13745u, var_1.c.a.a, 1u), vec4<u32>(u_input.a, u_input.a, var_1.c.a.d.x, 0u)) % vec4<u32>(32u)))), min(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, var_1.c.a.d.x, u_input.a, 35430u), vec4<u32>(4294967295u, 48160u, 4294967295u, u_input.a), vec4<u32>(1u, 45260u, var_1.c.a.a, 10193u)) | min(vec4<u32>(u_input.a, u_input.a, 19389u, 1u), vec4<u32>(arg_0, 4294967295u, 4294967295u, u_input.a)), (vec4<u32>(var_1.c.a.d.x, arg_0, 1u, var_1.c.a.d.x) << (vec4<u32>(var_1.c.c.a, arg_0, 109930u, 20128u) % vec4<u32>(32u))) >> ((vec4<u32>(46095u, 4294967295u, 1u, arg_0) | vec4<u32>(2045u, var_1.c.c.d.x, 1u, 4257u)) % vec4<u32>(32u))), ~(vec4<u32>(1u, var_1.c.a.a, 0u, 1u) >> (vec4<u32>(var_1.c.c.d.x, 4294967295u, var_1.c.c.d.x, 5512u) % vec4<u32>(32u)))));
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(~select(~_wgslsmith_mod_u32(~4294967295u, 4294967295u), ~arg_0, true), 23u)];
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(func_2(u_input.a), ~vec4<u32>(u_input.a, 0u, arg_0, u_input.a)), ~(~vec4<u32>(arg_0, 46977u, 34706u, 68866u)))), 13u)];
    global2 = array<f32, 23>();
    var var_2 = Struct_2(Struct_1(~(~(u_input.a >> (arg_0 % 32u))), vec2<i32>(2147483647i, 2147483647i), max(vec2<i32>(-arg_1, u_input.b.x), vec2<i32>(~(-47730i), abs(0i))), abs(firstTrailingBit(max(vec3<u32>(10476u, arg_0, 40963u), vec3<u32>(1u, arg_0, 5944u))))), -max(~(-2147483647i), (24325i << (arg_0 % 32u)) | abs(arg_1)), Struct_1(func_3(-u_input.b.yxx, _wgslsmith_div_f32(-195f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0, 23u)] * 533f))), u_input.b.yz, (u_input.b.zx >> (vec2<u32>(38615u, 35466u) % vec2<u32>(32u))) | vec2<i32>(abs(0i), 0i), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(43129u, arg_0, u_input.a, arg_0), vec4<u32>(77849u, 0u, u_input.a, u_input.a) | vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), arg_0, arg_0)));
    var var_3 = func_2(_wgslsmith_clamp_u32(32897u, _wgslsmith_add_u32(4294967295u, arg_0), arg_0) >> (_wgslsmith_clamp_u32(71505u, min(var_2.c.a, u_input.a) ^ 3616u, arg_0 >> ((58724u | u_input.a) % 32u)) % 32u)).x;
    return Struct_2(Struct_1(var_2.a.a, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(20127i, 0i, u_input.b.x, -36661i), select(vec4<i32>(var_2.b, 67150i, var_2.b, u_input.b.x), vec4<i32>(var_2.c.c.x, var_2.c.b.x, arg_1, 1i), false)), arg_1), -reverseBits(vec2<i32>(-1i, var_2.b)) << (global1[_wgslsmith_index_u32(countOneBits(4294967295u), 3u)] % vec2<u32>(32u)), _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(1u, 13851u, 17918u)), vec3<u32>(85749u, 1u, u_input.a)) << (min(countOneBits(var_2.c.d), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, 42213u), var_2.c.d)) % vec3<u32>(32u))), -_wgslsmith_mult_i32(-2147483647i, -1i), var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(4294967295u, u_input.b.x);
    var var_1 = _wgslsmith_mult_i32(u_input.b.x, min(_wgslsmith_div_i32(19911i, -35742i), -22725i));
    var var_2 = Struct_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(165f, global0[_wgslsmith_index_u32(4294967295u, 13u)])), global2[_wgslsmith_index_u32(var_0.c.d.x >> (u_input.a % 32u), 23u)], false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(4294967295u, 23u)])) + -1122f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 13u)]), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(46449u, 23u)], 1007f)))), func_1(~var_0.c.d.x, 1i), 2147483647i), -2147483647i, Struct_3(-1599f, 659f, Struct_2(var_0.a, -6007i, Struct_1(u_input.a ^ 47192u, var_0.a.c, ~vec2<i32>(var_0.a.c.x, u_input.b.x), ~vec3<u32>(4294967295u, u_input.a, 0u))), reverseBits(_wgslsmith_div_i32(-12370i, -u_input.b.x))), u_input.b);
    global2 = array<f32, 23>();
    let var_3 = Struct_4(var_2.c);
    let var_4 = Struct_3(373f, _wgslsmith_f_op_f32(max(var_2.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 13u)] + var_3.a.b)))), Struct_2(Struct_1(~u_input.a, firstLeadingBit(~vec2<i32>(var_3.a.c.b, 2147483647i)), var_3.a.c.a.c & firstTrailingBit(vec2<i32>(575i, var_3.a.c.c.b.x)), var_3.a.c.a.d), ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_0.a.b.x, 8382i), vec3<i32>(782i, u_input.b.x, 0i)), firstTrailingBit(2147483647i)), Struct_1(var_2.c.c.c.a, var_3.a.c.c.b, u_input.b.zz ^ ~vec2<i32>(0i, var_3.a.d), ~func_2(u_input.a).xwz)), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(var_4.b, _wgslsmith_f_op_f32(var_2.a.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4.b, 714f)))))), -18968i, countOneBits(0u));
}

