struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(39330u, 42448u, 4294967295u, 28315u, 14713u, 10660u, 0u, 0u, 31993u, 82460u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec3<i32>) -> vec2<i32> {
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(121f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(124f - 490f), -313f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(-466f, -577f), all(vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -741f)))), arg_0.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(arg_0.b.x, arg_1) | ~19977u, _wgslsmith_mult_u32(firstLeadingBit(u_input.c.x), 1u), reverseBits(0u & u_input.d)), _wgslsmith_mod_vec3_u32(u_input.c, u_input.c), ~vec3<u32>(arg_1, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.xz, vec2<u32>(40730u, arg_0.b.x)), 10u)], min(97654u, u_input.d))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-618f, var_0.a) * vec2<f32>(-788f, var_0.a)), vec2<f32>(-781f, var_0.a))), vec2<f32>(_wgslsmith_div_f32(var_0.a, 1371f), var_0.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_0.a, -131f)), _wgslsmith_f_op_f32(var_0.a * 391f))), vec2<bool>(all(!arg_0.a.a.zx), all(arg_0.a.a)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 685f) + vec2<f32>(var_0.a, 1075f)))))));
    global0 = array<u32, 10>();
    return vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(countOneBits(2147483647i), _wgslsmith_mod_i32(-2147483647i, -22589i)) & ~arg_2.x, _wgslsmith_clamp_i32(u_input.a, _wgslsmith_mult_i32(14181i, u_input.b), 1i) >> (4294967295u % 32u)), abs(-1i) | reverseBits(_wgslsmith_clamp_i32(27821i, arg_0.a.c, 2147483647i) >> (max(arg_0.a.d.x, arg_0.a.d.x) % 32u)));
}

fn func_2() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(round(340f)), Struct_1(select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), all(vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true), _wgslsmith_add_i32(firstLeadingBit(firstLeadingBit(u_input.a)), abs(0i & u_input.a)), u_input.c.xy), ~select(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, global0[_wgslsmith_index_u32(36335u, 10u)], 1u), u_input.c, vec3<u32>(u_input.d, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], u_input.c.x)), ~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 1u, 0u)), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(7996u, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], 1u), vec3<u32>(global0[_wgslsmith_index_u32(50240u, 10u)], 99967u, u_input.c.x))), vec3<bool>(true, true, true)));
    let var_1 = Struct_4(~(select(~vec4<u32>(41685u, var_0.c.x, 4294967295u, 37261u), vec4<u32>(var_0.b.d.x, 1u, 0u, u_input.c.x), any(var_0.b.a.xx)) >> (abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.d, 90970u, global0[_wgslsmith_index_u32(1u, 10u)]), vec4<u32>(4294967295u, u_input.c.x, var_0.c.x, 20113u))) % vec4<u32>(32u))), Struct_1(var_0.b.b.yxw, !var_0.b.b, firstLeadingBit(2147483647i), firstTrailingBit(~(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b.d.x, 10u)], 10u)], 4294967295u)))), 4294967295u | _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(29869u, 10u)], select(1u, ~0u, 595u == var_0.c.x)));
    let var_2 = var_0.b;
    global0 = array<u32, 10>();
    var var_3 = _wgslsmith_clamp_vec2_i32(select(~vec2<i32>(u_input.a, 1i), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(62921i, var_0.b.c), vec2<i32>(u_input.b, var_0.b.c)), func_3(Struct_3(Struct_1(vec3<bool>(true, var_1.b.a.x, var_2.b.x), var_1.b.b, var_2.c, vec2<u32>(4294967295u, 27438u)), vec2<u32>(var_1.c, 1u)), var_2.d.x, vec3<i32>(u_input.b, var_2.c, 2147483647i))), !var_1.b.a.x), vec2<i32>(var_2.c, ~(~u_input.a)), ~vec2<i32>(-u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-28325i, u_input.b), vec2<i32>(-2147483647i, 20013i)))) >> (~vec2<u32>(global0[_wgslsmith_index_u32(var_1.a.x, 10u)], 1u) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a)) - 1690f);
}

fn func_1() -> Struct_2 {
    var var_0 = -1i;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -719f)));
    var var_2 = Struct_4(abs(~(vec4<u32>(20543u, global0[_wgslsmith_index_u32(42360u, 10u)], 8005u, global0[_wgslsmith_index_u32(42786u, 10u)]) >> (vec4<u32>(24893u, global0[_wgslsmith_index_u32(11484u, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(33517u, 10u)]) % vec4<u32>(32u))) ^ abs(vec4<u32>(8851u, u_input.d, 4294967295u, u_input.c.x) | vec4<u32>(global0[_wgslsmith_index_u32(u_input.d, 10u)], 50377u, 1u, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]))), Struct_1(vec3<bool>(any(vec3<bool>(true, true, true)), true, any(vec4<bool>(true, true, false, true))), vec4<bool>(all(vec4<bool>(true, true, true, true)), false, true, true), u_input.b, ~min(min(u_input.c.zz, u_input.c.yz), countOneBits(vec2<u32>(42920u, u_input.c.x)))), 0u);
    let var_3 = var_2.b.b;
    var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-828f)), _wgslsmith_f_op_f32(round(-605f)))), _wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(select(-719f, var_1.x, var_3.x)))), var_1.x)));
    return Struct_2(_wgslsmith_f_op_f32(-742f - var_1.x), Struct_1(!select(var_2.b.b.xwx, vec3<bool>(true, var_3.x, true), var_2.b.a.x || true), select(var_2.b.b, var_2.b.b, var_2.b.b), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, -41297i), vec2<u32>(~reverseBits(var_2.c), abs(u_input.c.x))), vec3<u32>(~u_input.d, 4294967295u, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.d, 54843u), global0[_wgslsmith_index_u32(33098u, 10u)])));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: f32) -> bool {
    var var_0 = arg_2;
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    var var_1 = ~reverseBits(~firstLeadingBit(max(vec4<u32>(1u, 118483u, arg_2.b.x, 4294967295u), vec4<u32>(u_input.d, u_input.d, var_0.b.x, var_0.b.x))));
    global0 = array<u32, 10>();
    return var_0.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = true;
    global0 = array<u32, 10>();
    var var_1 = 1362f;
    global0 = array<u32, 10>();
    var var_2 = vec2<bool>(true || func_4(func_1(), ~u_input.b & u_input.a, Struct_3(Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, false, true, true), u_input.b, vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(57616u, 10u)])), vec2<u32>(4294967295u, 46302u)), 807f), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(61461i, -1i, u_input.a, u_input.a), vec4<i32>(0i, u_input.a, -7246i, u_input.b)) ^ vec4<i32>(u_input.a, -1i, u_input.a, u_input.b), select(vec4<i32>(-37522i, 29919i, -1i, 1i), vec4<i32>(-9233i, 2147483647i, 2147483647i, u_input.a), var_2.x))), 0u, vec3<u32>(((u_input.d ^ u_input.c.x) >> (~4294967295u % 32u)) ^ _wgslsmith_mult_u32(u_input.d, firstTrailingBit(u_input.d)), u_input.d, _wgslsmith_mult_u32(1u, reverseBits(u_input.c.x << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)] % 32u)))), _wgslsmith_f_op_f32(f32(-1f) * -868f));
}

