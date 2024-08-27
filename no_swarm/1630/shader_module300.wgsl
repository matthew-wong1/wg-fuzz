struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, vec3<bool>(false, true, false), 850f, Struct_1(vec3<u32>(1u, 3855u, 11456u), 0u, false, vec3<f32>(1212f, -1476f, -653f)), vec3<i32>(i32(-2147483648), 5006i, -23956i));

var<private> global1: Struct_2 = Struct_2(21886u, vec2<f32>(105f, -371f), Struct_1(vec3<u32>(27792u, 0u, 9224u), 0u, true, vec3<f32>(533f, -1000f, -220f)), vec3<u32>(46065u, 25062u, 50689u));

var<private> global2: array<u32, 16>;

var<private> global3: Struct_2;

var<private> global4: array<u32, 32> = array<u32, 32>(11364u, 23721u, 4294967295u, 6795u, 6047u, 0u, 1u, 4294967295u, 8253u, 61295u, 1u, 0u, 0u, 1u, 4294967295u, 1u, 9498u, 0u, 89392u, 0u, 1u, 4294967295u, 29325u, 0u, 18443u, 0u, 2467u, 18686u, 15261u, 27905u, 8898u, 77651u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> f32 {
    global4 = array<u32, 32>();
    let var_0 = vec2<u32>(_wgslsmith_clamp_u32(u_input.a, ~(~u_input.c.x ^ 14576u), ~37489u), 1u);
    let var_1 = global0.d.b;
    let var_2 = select(select(arg_1.b.yx, arg_0.b.xx, 29162i > arg_0.e.x), !vec2<bool>((-9574i >> (global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_1.d.b, 32u)], 16u)] % 32u)) > _wgslsmith_mult_i32(-1i, 8004i), global0.b.x), select(select(!(!vec2<bool>(arg_1.d.c, false)), arg_1.b.yz, vec2<bool>(arg_3, !arg_1.a)), !select(select(vec2<bool>(global3.c.c, arg_0.b.x), vec2<bool>(arg_1.b.x, true), false), select(vec2<bool>(global1.c.c, arg_0.b.x), arg_1.b.xy, vec2<bool>(global0.a, false)), global0.b.x), !arg_1.a & !(!global1.c.c)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.d.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0.d.d.x, global0.c), global1.c.d.x))));
    return _wgslsmith_f_op_f32(-240f - _wgslsmith_f_op_f32(2105f * global1.b.x));
}

fn func_2(arg_0: vec2<i32>) -> vec2<u32> {
    global1 = Struct_2(_wgslsmith_mod_u32(~1u, ~1u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global1.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c.d.x, global0.c) + global0.d.d.xz))))), global1.c, vec3<u32>(32146u, 71196u, global3.c.a.x));
    var var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(global0.d.a, ~select(global1.c.a, vec3<u32>(20090u, u_input.c.x, global4[_wgslsmith_index_u32(global1.c.a.x, 32u)]), global0.b)), abs(vec3<u32>(global0.d.a.x, 18285u, 49236u)) | ~(~u_input.c)), ~vec3<u32>(~global2[_wgslsmith_index_u32(~17839u, 16u)], 1u, (global4[_wgslsmith_index_u32(global0.d.b, 32u)] >> (global0.d.b % 32u)) << (~4294967295u % 32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(false, global0.b, global1.c.d.x, Struct_1(global1.d, global3.d.x, true, vec3<f32>(global1.b.x, -115f, global3.c.d.x)), global0.e), Struct_3(false, vec3<bool>(global1.c.c, global1.c.c, global1.c.c), -362f, global3.c, vec3<i32>(-2147483647i, 0i, u_input.d)), -36467i, false))), _wgslsmith_f_op_f32(-259f - global1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)), global1.c.d.x)));
    global3 = Struct_2(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(31150u, 74503u, 1u), global3.c.a), global0.d.a.x), 32u)], global3.c.b >> (11255u % 32u)) << (firstTrailingBit(1u | firstTrailingBit(global1.c.b)) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global0.d.d.xy))), global3.b)), global0.d, ~((vec3<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], 0u, u_input.b) & u_input.c) | global1.d));
    global0 = Struct_3(any(vec4<bool>(any(vec3<bool>(global3.c.c, global0.b.x, true)), true, min(0u, 59441u) < global2[_wgslsmith_index_u32(global1.a >> (var_0.x % 32u), 16u)], 526f < _wgslsmith_f_op_f32(-global3.b.x))), select(global0.b, global0.b, vec3<bool>(global3.c.c, false, false)), _wgslsmith_f_op_f32(step(global3.c.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -372f)))), Struct_1(~(~global1.d >> (max(global1.d, global0.d.a) % vec3<u32>(32u))), abs(4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -1696f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, 315f, global1.c.d.x) + _wgslsmith_f_op_vec3_f32(step(global1.c.d, global0.d.d))))), -global0.e);
    return min(vec2<u32>(global3.c.a.x, _wgslsmith_add_u32(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.c.a.x, global1.c.b), 32u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c.b, global3.d.x, global4[_wgslsmith_index_u32(global0.d.a.x, 32u)]), global0.d.a)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(49153u, 0u), global3.d.xy), 1u))), ~vec2<u32>(35099u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global1.d.yy, global3.c.a.yx), ~vec2<u32>(global0.d.a.x, 51532u))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> vec4<bool> {
    global4 = array<u32, 32>();
    var var_0 = func_2(min(vec2<i32>(countOneBits(2147483647i) | -u_input.e, arg_1.e.x), arg_1.e.zx));
    let var_1 = any(select(select(vec2<bool>(false, false), !select(global0.b.zx, arg_1.b.xy, global3.c.c), select(select(vec2<bool>(false, arg_1.b.x), global0.b.xy, global0.b.zx), vec2<bool>(true, false), global0.b.xx)), select(select(vec2<bool>(false, false), !vec2<bool>(arg_1.b.x, global3.c.c), select(global0.b.yx, arg_1.b.yy, arg_0.c)), !select(arg_1.b.zx, arg_1.b.xy, arg_1.b.xx), select(!global0.b.zx, global0.b.zy, global0.b.zy)), vec2<bool>(all(select(arg_1.b.xz, global0.b.xy, global0.b.yx)), true)));
    let var_2 = Struct_2(arg_0.a.x, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(arg_1.d.d.x - -933f), _wgslsmith_f_op_f32(f32(-1f) * -738f)))), arg_0, select(arg_0.a ^ abs(vec3<u32>(arg_1.d.a.x, global0.d.a.x, 1u)), vec3<u32>(_wgslsmith_add_u32(47506u, 27980u) << (~var_0.x % 32u), 30102u >> (1u % 32u), 43475u), select(vec3<bool>(var_1, any(vec4<bool>(true, true, global0.b.x, true)), false), vec3<bool>(true, true, -34120i >= arg_1.e.x), !vec3<bool>(var_1, true, true))));
    var var_3 = global2[_wgslsmith_index_u32(func_2((global0.e.yz ^ global0.e.zz) ^ abs(arg_1.e.yz)).x, 16u)];
    return !(!vec4<bool>(-613f != _wgslsmith_f_op_f32(-1000f + arg_0.d.x), global1.c.c, true, var_2.c.c));
}

fn func_4(arg_0: vec4<bool>) -> bool {
    global0 = Struct_3(all(!func_1(global0.d, Struct_3(global3.c.c, vec3<bool>(global1.c.c, global3.c.c, global3.c.c), -1683f, global3.c, global0.e)).zw), select(vec3<bool>(!(global2[_wgslsmith_index_u32(37407u, 16u)] < global3.c.a.x), false, true), select(arg_0.wzw, select(vec3<bool>(true, false, false), func_1(global0.d, Struct_3(arg_0.x, arg_0.yxz, global0.c, global1.c, vec3<i32>(-1i, u_input.e, -9632i))).xwy, global0.b), arg_0.zyx), global3.c.c && global3.c.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) * -764f), global3.c, global0.e);
    let var_0 = u_input.c.xz ^ select(vec2<u32>(u_input.b, global2[_wgslsmith_index_u32(~(global1.a >> (u_input.c.x % 32u)), 16u)]), min(reverseBits(vec2<u32>(global3.d.x, global4[_wgslsmith_index_u32(1u, 32u)])), global0.d.a.yz) >> (global0.d.a.zx % vec2<u32>(32u)), arg_0.wy);
    var var_1 = Struct_2(firstLeadingBit((u_input.b & global3.d.x) << (u_input.c.x % 32u)) & global2[_wgslsmith_index_u32(4294967295u, 16u)], _wgslsmith_f_op_vec2_f32(exp2(global0.d.d.xx)), Struct_1(~_wgslsmith_add_vec3_u32(max(u_input.c, global0.d.a), vec3<u32>(3027u, 48709u, 4294967295u)), 0u, arg_0.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1390f, 1000f, global1.b.x)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-193f, -827f, 1127f), global3.c.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.d.x, -444f, global0.d.d.x) + vec3<f32>(-731f, -936f, 1607f))), func_1(Struct_1(vec3<u32>(var_0.x, 0u, 4294967295u), u_input.b, arg_0.x, global1.c.d), Struct_3(global0.b.x, vec3<bool>(true, global1.c.c, true), 1386f, Struct_1(u_input.c, 1u, true, vec3<f32>(global0.c, global3.b.x, global0.c)), vec3<i32>(global0.e.x, global0.e.x, u_input.d))).x))), vec3<u32>(~(~(~0u)), min(_wgslsmith_clamp_u32(global0.d.a.x, var_0.x, 1u) | global3.a, global1.c.a.x ^ (var_0.x << (u_input.c.x % 32u))), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(16675u, 32u)], 16u)], global0.d.a.x, global2[_wgslsmith_index_u32(24537u, 16u)], global3.a), vec4<u32>(36580u, 43483u, 69697u, global1.c.b)), func_2(global0.e.xx).x)));
    let var_2 = _wgslsmith_dot_vec2_i32(global0.e.xz, _wgslsmith_sub_vec2_i32(vec2<i32>(-17476i, _wgslsmith_clamp_i32(u_input.d, -70650i, -1132i) << (var_0.x % 32u)), global0.e.zz));
    var var_3 = firstTrailingBit(-17326i);
    return !var_1.c.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(35839u);
    var var_1 = countOneBits(global0.e.yy);
    let var_2 = Struct_1(~_wgslsmith_sub_vec3_u32(min(~vec3<u32>(global0.d.b, 80149u, global1.a), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global0.d.a.x, 112481u), vec3<u32>(1u, global3.d.x, global1.a))), _wgslsmith_div_vec3_u32(global1.c.a, ~vec3<u32>(global0.d.a.x, var_0, global2[_wgslsmith_index_u32(global0.d.a.x, 16u)]))), 4294967295u, true | func_4(select(!vec4<bool>(true, true, global0.d.c, global1.c.c), func_1(Struct_1(vec3<u32>(u_input.c.x, global0.d.a.x, 42283u), var_0, false, global1.c.d), Struct_3(false, vec3<bool>(global0.a, true, global1.c.c), global3.c.d.x, global1.c, global0.e)), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global3.c.d, vec3<f32>(global1.b.x, global0.c, global0.c), global3.c.c)) * global0.d.d) * _wgslsmith_f_op_vec3_f32(sign(global1.c.d))) + vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(global3.c.c, global0.b, -136f, Struct_1(vec3<u32>(global3.d.x, 1u, global3.d.x), 20832u, true, vec3<f32>(global3.c.d.x, global0.d.d.x, global0.d.d.x)), global0.e), Struct_3(false, global0.b, -1468f, global3.c, global0.e), i32(-1i) * -58761i, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1796f * 838f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * -1556f)))));
    global2 = array<u32, 16>();
    var var_3 = global0.e.x;
    let var_4 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(global0.e.yx, vec2<i32>(-15766i, min(2147483647i, 1i))), var_1.x, vec4<f32>(var_2.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global0.d.d.x, _wgslsmith_f_op_f32(-var_2.d.x))))), _wgslsmith_f_op_f32(max(global3.c.d.x, _wgslsmith_div_f32(738f, _wgslsmith_f_op_f32(-var_2.d.x)))), 1681f), global3.c.d);
}

