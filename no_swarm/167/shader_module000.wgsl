struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_3,
    d: vec4<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: vec3<u32> = vec3<u32>(28628u, 56384u, 4294967295u);

var<private> global2: array<vec2<bool>, 13>;

var<private> global3: vec4<u32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec2<u32> {
    let var_0 = ~vec4<i32>(u_input.b.x, 23461i, u_input.b.x, 44388i);
    global0 = array<Struct_1, 30>();
    global1 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 28364u, 78865u), global3.yzx), countOneBits(global3.yyx)) ^ global3.wwz;
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(global3.x, 0u, global1.x)) & reverseBits(vec3<u32>(global1.x, 28980u, 17940u)), ~(global3.yyy ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, global3.x), vec3<u32>(u_input.a, global1.x, global3.x)))), global3.wzy);
    let var_2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(146f * _wgslsmith_f_op_f32(round(1737f)))), -834f, -102f), ~vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 17884u, var_1, 38642u), vec4<u32>(u_input.c, global1.x, 94096u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1, 4294967295u, global1.x, 28268u), vec4<u32>(46812u, 17178u, 3494u, var_1))), 0u, max(31197u, global1.x), _wgslsmith_div_u32(reverseBits(1u), _wgslsmith_sub_u32(17213u, u_input.a))), Struct_3(vec3<i32>(2147483647i, ~var_0.x, var_0.x), global3.x, _wgslsmith_add_u32(firstTrailingBit(20972u), _wgslsmith_sub_u32(~0u, min(4294967295u, 0u))), _wgslsmith_add_vec3_u32(~(global3.wzx & vec3<u32>(global1.x, 1u, global1.x)), ~global3.ywz | ~vec3<u32>(43052u, var_1, 43827u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1902f)) * -1090f))), vec4<i32>(var_0.x, -2147483647i, _wgslsmith_clamp_i32(u_input.b.x, ~u_input.b.x & u_input.b.x, u_input.b.x), _wgslsmith_clamp_i32(u_input.b.x, 1i, var_0.x) & u_input.b.x), Struct_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, ~(-180i), u_input.b.x), vec3<i32>(var_0.x, 18879i, u_input.b.x) >> (global3.zzx % vec3<u32>(32u)), var_0.yzy), global3.x, 1u >> (0u % 32u), vec3<u32>(select(global3.x, 1u, true) >> (~14807u % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(43180u, var_1, var_1, 138405u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global3.x, u_input.a, global3.x), vec4<u32>(4294967295u, 4294967295u, 60662u, 44316u))), 1u), _wgslsmith_f_op_f32(-819f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-270f - -1000f)))));
    return vec2<u32>(global1.x >> (_wgslsmith_sub_u32(min(_wgslsmith_mult_u32(u_input.c, global1.x), var_1), ~1u) % 32u), global3.x);
}

fn func_3(arg_0: vec2<u32>) -> vec4<u32> {
    let var_0 = vec4<i32>(-1i) * -vec4<i32>(select(_wgslsmith_sub_i32(-20361i, u_input.b.x), _wgslsmith_sub_i32(u_input.b.x, 1i), true), max(firstTrailingBit(-29827i), u_input.b.x), -26154i >> (1u % 32u), u_input.b.x);
    global2 = array<vec2<bool>, 13>();
    global1 = vec3<u32>(22403u, func_2().x, ~(~6200u) >> (_wgslsmith_dot_vec2_u32(global3.xw, vec2<u32>(reverseBits(global3.x), ~global1.x)) % 32u));
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    return _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, global3.x, global3.x, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, 0u, 6491u, global3.x), vec4<u32>(global1.x, global1.x, global3.x, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(65u, 1010u, global1.x, 4294967295u), vec4<u32>(arg_0.x, 1u, arg_0.x, global3.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.c, arg_0.x), global1.x, ~0u, func_2().x), vec4<u32>(1u, 4294967295u, abs(4294967295u), u_input.c))), _wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(global1.x) | 4294967295u, countOneBits(~arg_0.x), global3.x, 4294967295u), select(countOneBits(vec4<u32>(0u, 31070u, u_input.c, arg_0.x) & vec4<u32>(11644u, 4294967295u, arg_0.x, global3.x)), ~vec4<u32>(global1.x, global3.x, 1u, 67058u), vec4<bool>(true, true, true, true)), ~countOneBits(vec4<u32>(u_input.c, arg_0.x, 4294967295u, 40484u))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec2<u32>) -> u32 {
    let var_0 = ~func_2();
    global3 = select(vec4<u32>(reverseBits(_wgslsmith_clamp_u32(arg_1, global1.x, arg_1)) >> (~(~u_input.a) % 32u), global1.x | ~arg_2.x, global3.x, ~func_2().x), ~(~func_3(global3.zw)), true);
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.x, ~(_wgslsmith_sub_u32(global3.x, 10743u) & 16827u)), 30u)], u_input.b.x, arg_0, global0[_wgslsmith_index_u32(~(~abs(var_0.x)), 30u)], select(select(u_input.b.zy, _wgslsmith_clamp_vec2_i32(vec2<i32>(-25490i, u_input.b.x), u_input.b.xx, vec2<i32>(u_input.b.x, u_input.b.x)), !any(vec3<bool>(false, true, false))), u_input.b.zx, any(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(59272u, 4294967295u), 4294967295u, arg_1), 13u)])));
    global3 = vec4<u32>(~(~global1.x) >> (abs(arg_1) % 32u), ~1u ^ _wgslsmith_div_u32(4294967295u, ~global1.x), firstLeadingBit(global1.x), min(~var_0.x, 1u)) ^ max(vec4<u32>(~u_input.c, 103191u, arg_2.x, global1.x), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, ~arg_2.x, _wgslsmith_div_u32(0u, 55261u), arg_2.x | 4294967295u), ~min(vec4<u32>(global3.x, 67537u, u_input.a, arg_1), vec4<u32>(57407u, 61925u, var_1.d.c, global1.x))));
    global0 = array<Struct_1, 30>();
    return _wgslsmith_dot_vec2_u32(~(~_wgslsmith_sub_vec2_u32(reverseBits(var_0), vec2<u32>(global1.x, 0u))), ~func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.c, 30135u), 30u)];
    let var_1 = _wgslsmith_div_vec3_u32(~(~global3.wzw), global3.xxw);
    var var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(max(~(vec3<u32>(4369u, global1.x, global3.x) & global3.wyy), ~vec3<u32>(4294967295u, 6480u, 60690u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.c, 56613u, _wgslsmith_add_u32(0u, var_1.x)), abs(_wgslsmith_mod_vec3_u32(var_1, global3.xyw)), ~(vec3<u32>(var_0.c, 37364u, var_1.x) & var_1))), firstTrailingBit(_wgslsmith_div_vec3_u32(select(vec3<u32>(4294967295u, var_0.c, global3.x) | var_1, min(vec3<u32>(global3.x, 0u, global3.x), vec3<u32>(4294967295u, 43528u, 20286u)), !vec3<bool>(var_0.a, var_0.a, true)), vec3<u32>(_wgslsmith_mod_u32(var_1.x, global1.x), ~global1.x, global3.x))));
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-501f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b))), var_0.d.x)), vec4<u32>(~countOneBits(1u), var_1.x, ~max(var_1.x, 73821u), func_1(-1920f, u_input.a, global3.yw) >> (1u % 32u)) << (abs(vec4<u32>(~var_0.c, global1.x, ~4294967295u, ~global3.x)) % vec4<u32>(32u)), Struct_3(vec3<i32>(abs(1i), u_input.b.x, reverseBits(abs(39271i))), u_input.c, _wgslsmith_dot_vec3_u32(var_1, ~vec3<u32>(var_0.c, var_1.x, u_input.a) ^ (global3.zwy >> (vec3<u32>(39955u, global3.x, global1.x) % vec3<u32>(32u)))), ~(~vec3<u32>(4294967295u, global1.x, var_2.x)), _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(-var_0.b))), ~max(vec4<i32>(2147483647i, u_input.b.x, 2147483647i, u_input.b.x) ^ vec4<i32>(u_input.b.x, 37028i, u_input.b.x, u_input.b.x), vec4<i32>(-22632i, u_input.b.x, 1i, -2147483647i) >> (vec4<u32>(1u, global1.x, var_0.c, 4294967295u) % vec4<u32>(32u))) & vec4<i32>((41367i << (u_input.c % 32u)) & -34017i, u_input.b.x, _wgslsmith_add_i32(firstLeadingBit(2147483647i), 23225i), 1i), Struct_3(u_input.b, var_1.x, func_3(firstTrailingBit(vec2<u32>(var_1.x, 44324u) << (var_1.yy % vec2<u32>(32u)))).x, var_1, -1494f));
    var var_4 = all(select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, var_0.a, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(false, true, true)), false), vec3<bool>(var_3.a.x > 163f, var_0.a, true), false), !select(vec3<bool>(true, true, true), vec3<bool>(var_0.a, var_0.a, var_0.a), var_3.c.e >= var_3.a.x), vec3<bool>(all(select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<bool>(true, false, var_0.a, var_0.a))), var_0.a, var_0.a)));
    let var_5 = 1321f;
    let var_6 = Struct_2(Struct_1(var_3.c.e > 977f, 258f, var_0.c >> (33336u % 32u), var_0.d), var_3.e.a.x, _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1037f, 654f, var_0.a)))))), global0[_wgslsmith_index_u32(0u, 30u)], vec2<i32>(~_wgslsmith_div_i32(27415i, var_3.d.x), -u_input.b.x));
    global2 = array<vec2<bool>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(var_1, ~_wgslsmith_mult_vec3_u32(var_3.b.yyz, var_1)) >> (~vec3<u32>(u_input.c, ~u_input.c, var_1.x) % vec3<u32>(32u)), var_6.a.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_5, _wgslsmith_f_op_f32(-var_5)))), var_0.b, var_5));
}

