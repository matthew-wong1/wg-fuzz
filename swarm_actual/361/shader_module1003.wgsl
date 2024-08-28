struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
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

var<private> global0: f32 = 149f;

var<private> global1: array<vec3<i32>, 12>;

var<private> global2: array<Struct_1, 12>;

var<private> global3: array<bool, 4>;

var<private> global4: vec2<u32> = vec2<u32>(49083u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = select(arg_3.a, arg_3.a, false);
    global2 = array<Struct_1, 12>();
    let var_1 = arg_1.x;
    var_0 = arg_3.a;
    let var_2 = any(!(!select(vec4<bool>(arg_3.c.x, false, false, true), vec4<bool>(true, arg_3.c.x, false, arg_3.c.x), 420f == arg_2.x)));
    return arg_3.a.x;
}

fn func_3(arg_0: u32, arg_1: bool) -> u32 {
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>, arg_3: vec2<f32>) -> vec4<bool> {
    var var_0 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(arg_1, 71732u), _wgslsmith_add_u32(16788u, _wgslsmith_add_u32(countOneBits(0u), _wgslsmith_add_u32(29051u, arg_0.e.x))), arg_1, 0u), countOneBits(vec3<i32>(select(_wgslsmith_sub_i32(-68526i, arg_0.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -5354i, -2147483647i, 1i), vec4<i32>(arg_0.d, 0i, 2147483647i, 1i)), all(arg_0.c)), ~u_input.d, ~arg_0.d)), !arg_0.c, abs(~(-2147483647i)), vec3<u32>(~arg_1, ~2044u, _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_1, ~arg_1), ~func_3(0u, arg_0.c.x))));
    var var_1 = Struct_1(arg_0.a, (vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 45293i), vec2<i32>(91447i, -47899i)), -16197i) & ~(~arg_2)) << (var_0.e % vec3<u32>(32u)), vec3<bool>(false, true, var_0.c.x), _wgslsmith_mult_i32(0i, u_input.d) ^ -17565i, vec3<u32>(var_0.a.x, ~(~u_input.e), _wgslsmith_mult_u32(4294967295u & u_input.e, arg_1)));
    let var_2 = _wgslsmith_dot_vec4_u32(arg_0.a, min(firstLeadingBit(~arg_0.a & vec4<u32>(u_input.e, var_1.e.x, global4.x, 42016u)), vec4<u32>(~20614u, ~0u, select(~1283u, max(global4.x, var_1.a.x), !arg_0.c.x), ~(~var_1.a.x))));
    var var_3 = vec3<u32>(var_0.e.x, 61807u, _wgslsmith_sub_u32(_wgslsmith_add_u32(0u, ~14608u) | ~(67391u | var_1.a.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u) ^ arg_0.e.xx, vec2<u32>(u_input.e, 1u))));
    return select(select(vec4<bool>(!all(arg_0.c.zz), global3[_wgslsmith_index_u32(0u, 4u)], all(vec2<bool>(true, true)), true), !(!vec4<bool>(var_1.c.x, true, global3[_wgslsmith_index_u32(arg_1, 4u)], false)), !global3[_wgslsmith_index_u32(41384u, 4u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.e, 4u)], true, true, true && select(var_3.x >= 0u, false, any(var_0.c))), select(!(!select(vec4<bool>(true, false, var_1.c.x, true), vec4<bool>(var_1.c.x, true, var_1.c.x, arg_0.c.x), vec4<bool>(var_0.c.x, true, true, global3[_wgslsmith_index_u32(arg_1, 4u)]))), vec4<bool>(all(!vec3<bool>(true, var_0.c.x, true)), true || all(vec4<bool>(false, false, false, global3[_wgslsmith_index_u32(var_2, 4u)])), !(!arg_0.c.x), var_0.c.x), select(select(vec4<bool>(true, false, var_0.c.x, true), !vec4<bool>(true, false, arg_0.c.x, false), !vec4<bool>(arg_0.c.x, var_1.c.x, global3[_wgslsmith_index_u32(51661u, 4u)], true)), select(select(vec4<bool>(var_0.c.x, var_1.c.x, false, true), vec4<bool>(false, false, var_1.c.x, false), arg_0.c.x), select(vec4<bool>(global3[_wgslsmith_index_u32(arg_1, 4u)], global3[_wgslsmith_index_u32(arg_1, 4u)], var_0.c.x, arg_0.c.x), vec4<bool>(var_1.c.x, global3[_wgslsmith_index_u32(7671u, 4u)], true, var_0.c.x), vec4<bool>(var_1.c.x, var_0.c.x, var_0.c.x, global3[_wgslsmith_index_u32(73462u, 4u)])), any(vec4<bool>(global3[_wgslsmith_index_u32(global4.x, 4u)], false, global3[_wgslsmith_index_u32(6901u, 4u)], var_1.c.x))), !select(vec4<bool>(global3[_wgslsmith_index_u32(var_2, 4u)], true, global3[_wgslsmith_index_u32(var_2, 4u)], arg_0.c.x), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 4u)], var_1.c.x, true, var_1.c.x), vec4<bool>(arg_0.c.x, var_1.c.x, arg_0.c.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(true, true, true, true), select(vec4<bool>(!global3[_wgslsmith_index_u32(global4.x, 4u)], global3[_wgslsmith_index_u32(firstLeadingBit(1u), 4u)], true, false), !vec4<bool>(!global3[_wgslsmith_index_u32(global4.x, 4u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, 20809u, u_input.e, global4.x), vec4<u32>(global4.x, u_input.e, global4.x, 129002u)), 4u)], true, global3[_wgslsmith_index_u32(4294967295u, 4u)] && global3[_wgslsmith_index_u32(u_input.e, 4u)]), vec4<bool>(all(!vec2<bool>(global3[_wgslsmith_index_u32(1u, 4u)], global3[_wgslsmith_index_u32(global4.x, 4u)])), global3[_wgslsmith_index_u32(~0u, 4u)], true & global3[_wgslsmith_index_u32(64401u, 4u)], global3[_wgslsmith_index_u32(func_1(-4443i, vec2<i32>(0i, 4060i) | vec2<i32>(u_input.c, u_input.d), vec3<f32>(-318f, -2207f, -819f), global2[_wgslsmith_index_u32(u_input.e, 12u)]), 4u)])), !select(func_2(global2[_wgslsmith_index_u32(min(u_input.e, u_input.e), 12u)], 0u, ~vec3<i32>(u_input.d, u_input.a.x, u_input.c), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-191f, -1185f)))), !vec4<bool>(global3[_wgslsmith_index_u32(global4.x, 4u)], global3[_wgslsmith_index_u32(global4.x, 4u)], true, global3[_wgslsmith_index_u32(global4.x, 4u)]), select(!vec4<bool>(false, true, global3[_wgslsmith_index_u32(global4.x, 4u)], global3[_wgslsmith_index_u32(global4.x, 4u)]), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, global3[_wgslsmith_index_u32(global4.x, 4u)], false), vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 4u)], true, global3[_wgslsmith_index_u32(621u, 4u)])), true)));
    let var_1 = firstTrailingBit(~max(_wgslsmith_mult_u32(~1u, func_3(1u, true)), select(u_input.e, ~u_input.e, true)));
    var var_2 = Struct_1(~vec4<u32>(~global4.x, ~1u, 17042u, ~_wgslsmith_clamp_u32(88201u, 4294967295u, 1u)), abs(global1[_wgslsmith_index_u32(u_input.e, 12u)] << (vec3<u32>(50050u, 9563u, func_1(48452i, vec2<i32>(-21107i, 23534i), vec3<f32>(-191f, -493f, 675f), global2[_wgslsmith_index_u32(30473u, 12u)])) % vec3<u32>(32u))), !vec3<bool>(global3[_wgslsmith_index_u32(~u_input.e, 4u)], true, true), -_wgslsmith_add_i32(-_wgslsmith_mod_i32(-2147483647i, u_input.b.x), min(u_input.d, _wgslsmith_add_i32(u_input.b.x, u_input.d))), vec3<u32>(reverseBits(global4.x), ~(~4294967295u), (1u | (global4.x >> (55552u % 32u))) | _wgslsmith_sub_u32(global4.x, 18331u)));
    var_0 = func_2(global2[_wgslsmith_index_u32(select(global4.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e, var_2.a.x, 521u), var_2.e), _wgslsmith_mult_u32(min(51004u, 0u), 59522u)), true), 12u)], _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~u_input.e, var_1, abs(var_2.a.x)), u_input.e, var_2.a.x), abs(select(vec3<u32>(0u, 40517u, 1526u), ~vec3<u32>(u_input.e, global4.x, global4.x), select(vec3<bool>(var_2.c.x, true, true), var_0.wzy, true)))), var_2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(989f, 220f) * vec2<f32>(412f, 1734f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(652f, 618f), vec2<f32>(-592f, -395f), var_0.x)) + vec2<f32>(1000f, 1847f)))));
    let var_3 = -_wgslsmith_mod_vec2_i32(firstLeadingBit(firstLeadingBit(var_2.b.xy) | var_2.b.xz), ~(u_input.b.zz << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, 1u), vec2<u32>(var_2.a.x, global4.x)) % vec2<u32>(32u))));
    var_2 = Struct_1(max(select(vec4<u32>(var_1 ^ var_1, u_input.e, min(1u, 4294967295u), ~var_1), ~(~vec4<u32>(var_2.a.x, 0u, global4.x, 4294967295u)), func_2(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(46859u, var_1), 12u)], min(14318u, 48526u), vec3<i32>(1i, -29117i, 0i) << (var_2.a.xzw % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-495f, -295f) - vec2<f32>(-489f, -787f)))), vec4<u32>(1u, firstLeadingBit(_wgslsmith_mod_u32(53439u, var_1)), ~8036u, var_1 ^ 20543u)), ~u_input.b, var_2.c, reverseBits(~(~u_input.d >> (1u % 32u))), vec3<u32>(~_wgslsmith_add_u32(9563u, 1u), 7998u, ~var_1));
    let var_4 = 179f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(reverseBits(_wgslsmith_add_i32(firstLeadingBit(var_2.b.x), countOneBits(2637i))), -2147483647i));
}

