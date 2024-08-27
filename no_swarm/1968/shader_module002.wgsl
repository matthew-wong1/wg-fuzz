struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<u32, 10> = array<u32, 10>(0u, 22855u, 4287u, 40000u, 0u, 47795u, 0u, 4294967295u, 4294967295u, 17847u);

var<private> global2: bool = true;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1147f)) * _wgslsmith_f_op_f32(f32(-1f) * -817f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.c.x))));
    var var_1 = vec4<i32>(u_input.a >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(global3.a.x, min(7573u, global3.a.x)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.a.x, 10u)], 10u)]), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(80718u, 10u)], 10u)])) % 32u), -64728i, global3.d, _wgslsmith_div_i32(~(~u_input.a), 13479i) << (_wgslsmith_add_u32(global3.b.x, ~(~31836u)) % 32u));
    global2 = !(!(!any(vec4<bool>(true, false, true, false)))) || false;
    global0 = array<Struct_1, 10>();
    global3 = Struct_1(vec2<u32>(global3.a.x, global1[_wgslsmith_index_u32(67766u, 10u)]), max(~global3.b ^ global3.b, ~(~(vec4<u32>(global3.a.x, 5380u, global3.a.x, global1[_wgslsmith_index_u32(26775u, 10u)]) | global3.b))), _wgslsmith_f_op_vec2_f32(-global3.c), -1i << (~((24522u & global3.b.x) ^ (60097u ^ global1[_wgslsmith_index_u32(global3.a.x, 10u)])) % 32u));
    return ~global3.b;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> vec4<bool> {
    let var_0 = global3.a.x;
    let var_1 = global0[_wgslsmith_index_u32(global3.a.x, 10u)];
    var var_2 = select(-1i, abs(arg_0.d), arg_0.c.x > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1853f)))));
    var var_3 = ~((-vec4<i32>(53394i, -55232i, arg_0.d, var_1.d) << (vec4<u32>(global3.a.x, arg_1, 4294967295u, global3.b.x) % vec4<u32>(32u))) | (abs(vec4<i32>(arg_0.d, 1i, var_1.d, -38407i)) | abs(vec4<i32>(4576i, 1i, 43127i, 25861i)))) >> (countOneBits(func_3()) % vec4<u32>(32u));
    var var_4 = false;
    return vec4<bool>(!(1619f == global3.c.x), all(select(!select(vec2<bool>(true, false), vec2<bool>(arg_2, false), arg_2), vec2<bool>(true, false == arg_2), select(vec2<bool>(arg_2, arg_2), select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, false), true), vec2<bool>(arg_2, arg_2)))), (1u | global1[_wgslsmith_index_u32(1u, 10u)]) == abs(36576u), false);
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<u32>) -> Struct_1 {
    global2 = !(all(func_2(Struct_1(global3.a, global3.b, global3.c, arg_1), 1u, true)) && false);
    global1 = array<u32, 10>();
    var var_0 = vec3<i32>(arg_1, 37408i, ~(-13649i)) >> (vec3<u32>(_wgslsmith_sub_u32(~global3.a.x, _wgslsmith_div_u32(~global1[_wgslsmith_index_u32(global3.a.x, 10u)], arg_2.x)), global1[_wgslsmith_index_u32(11458u, 10u)], _wgslsmith_sub_u32(_wgslsmith_div_u32(~63347u, ~25355u), _wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(4294967295u, 10u)], 0u))) % vec3<u32>(32u));
    global1 = array<u32, 10>();
    var var_1 = _wgslsmith_f_op_f32(round(221f));
    return Struct_1(~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(arg_2.zy >> (global3.b.zz % vec2<u32>(32u)), global3.a), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), ~vec2<u32>(4294967295u, 2225u))), select(~vec4<u32>(16359u, global3.b.x, 4294967295u, 0u), ~vec4<u32>(global1[_wgslsmith_index_u32(11495u, 10u)], 29084u, 11789u, 2868u), true) << (vec4<u32>(_wgslsmith_mult_u32(global3.b.x, 1u) | ~global3.a.x, ~firstTrailingBit(global3.b.x), global3.a.x, ~(global1[_wgslsmith_index_u32(78258u, 10u)] | global3.a.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(global3.c - global3.c), ~arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b.www;
    global1 = array<u32, 10>();
    global0 = array<Struct_1, 10>();
    global1 = array<u32, 10>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, 1093f, global3.c.x, 844f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.c.x, global3.c.x))), 573f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-186f, global3.c.x), _wgslsmith_f_op_f32(-232f - -1914f))), _wgslsmith_f_op_f32(-1071f * _wgslsmith_div_f32(-1651f, -1000f)))));
    let var_2 = func_1(vec3<bool>(false, false, true), -firstTrailingBit(u_input.a), _wgslsmith_mult_vec3_u32(abs(~global3.b.zyy), vec3<u32>(abs(~43080u), var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.a.x, 1u), vec2<u32>(4294967295u, var_0.x)))));
    var var_3 = Struct_1(vec2<u32>(var_2.a.x, abs(~var_2.b.x)), ~(~(~vec4<u32>(var_0.x, var_0.x, 55288u, global3.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(global3.c)), _wgslsmith_f_op_vec2_f32(var_2.c - global3.c))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.c.x, 1000f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(global3.c, global3.c)), var_2.c, true)), select(all(vec3<bool>(false, true, false)), true, true)))), ~(-5765i));
    let var_4 = firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(43295i, 0i, _wgslsmith_sub_i32(-24424i, -24695i)), u_input.a, -7113i) << (_wgslsmith_add_u32(var_2.a.x, ~var_3.a.x) % 32u));
    let var_5 = countOneBits(1u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xzx, _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(global3.d, global3.d, 67052i), -vec3<i32>(global3.d, 1i, var_3.d)), firstTrailingBit(-5669i) | 1i), global3.d), _wgslsmith_f_op_vec2_f32(-global3.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(700f, var_3.c.x, false))), vec4<u32>(var_0.x, ~select(abs(36169u), _wgslsmith_sub_u32(var_5, global3.a.x), func_2(var_2, 20026u, false).x), var_5, global3.b.x));
}

