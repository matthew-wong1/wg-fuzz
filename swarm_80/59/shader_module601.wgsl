struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 5>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1122f))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), -790f);
    let var_2 = Struct_2(global0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(457f, var_0, var_0) + vec3<f32>(var_0, global0.c.x, -637f)))), global0.b), global0.b, global0.a, ~5522u);
    var var_3 = var_2;
    var var_4 = var_2;
    return -888f;
}

fn func_3(arg_0: f32) -> vec3<f32> {
    var var_0 = Struct_2(Struct_1(~firstTrailingBit(global0.d.a) << ((_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.b.x, global0.d.b.x, 65605u)) << (_wgslsmith_mult_u32(770u, 27268u) % 32u)) % 32u), u_input.c.zy, -2147483647i, global0.a.d, (select(4294967295u, 1u, global0.d.d.x) & ~u_input.b.x) & 28057u), global0.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, global0.b.x, -1123f), vec3<f32>(-280f, global0.c.x, 1316f))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(-840f)), _wgslsmith_f_op_f32(round(arg_0)), -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.c))), true))), Struct_1(1u, vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.a, 0u, 4294967295u, 32791u) & vec4<u32>(0u, global0.a.e, global0.a.e, global0.e), vec4<u32>(0u, 4294967295u, global0.e, 4843u))), ~global0.a.c, select(global0.a.d, vec4<bool>(false, select(global0.a.d.x, global0.a.d.x, true), global0.d.d.x, all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 5u)], global0.d.d.x, true, global0.a.d.x))), select(global0.a.d.x, all(vec3<bool>(false, global1[_wgslsmith_index_u32(13842u, 5u)], true)), true)), 11255u), _wgslsmith_dot_vec3_u32(abs(u_input.c & select(vec3<u32>(4294967295u, 4296u, 0u), vec3<u32>(4294967295u, 13285u, 1u), vec3<bool>(true, true, global0.a.d.x))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, global0.d.a, u_input.b.x), u_input.c, u_input.c) ^ vec3<u32>(0u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.e, u_input.c.x, 0u, 4294967295u), vec4<u32>(global0.e, global0.a.b.x, 945u, 4294967295u)))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1106f)))), arg_0, arg_0);
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = Struct_2(global0.a, vec3<f32>(_wgslsmith_f_op_f32(min(arg_0, 1000f)), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(func_2())), arg_0), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c))))), global0.a, ~(~min(23964u, 1u)) >> (~max(58270u, _wgslsmith_sub_u32(u_input.b.x, 0u)) % 32u));
    global0 = Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, var_0.b.x, 887f), _wgslsmith_div_vec3_f32(var_0.c, global0.c)) - vec3<f32>(385f, 1f, -221f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, global0.c.x, global0.c.x), var_0.b)), var_0.b) * _wgslsmith_f_op_vec3_f32(-var_0.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 - global0.c.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), arg_0, _wgslsmith_f_op_f32(-arg_0)))), Struct_1(u_input.b.x, u_input.b, global0.a.c, var_0.a.d, global0.d.b.x), u_input.c.x);
    global1 = array<bool, 5>();
    var var_1 = -419f;
    let var_2 = select(u_input.c, u_input.c, !(!all(vec3<bool>(true, global0.d.d.x, false)))) >> (_wgslsmith_mod_vec3_u32(min(_wgslsmith_mod_vec3_u32(vec3<u32>(15607u, global0.e, u_input.b.x), vec3<u32>(12892u, var_0.e, 50342u)) ^ u_input.c, ~u_input.c), _wgslsmith_add_vec3_u32(u_input.c, _wgslsmith_mult_vec3_u32(max(u_input.c, u_input.c), select(u_input.c, u_input.c, global1[_wgslsmith_index_u32(var_0.e, 5u)])))) % vec3<u32>(32u));
    return Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b * vec3<f32>(arg_0, arg_0, -1229f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(706f)))))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(213f)))), _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_div_f32(1000f, 1000f)), -1162f), global0.d, _wgslsmith_dot_vec2_u32(var_2.yy, u_input.b));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_1(arg_1.e, select(firstTrailingBit(abs(vec2<u32>(0u, arg_0.e))) >> (vec2<u32>(arg_0.d.a, arg_1.d.b.x) % vec2<u32>(32u)), ~global0.d.b, true), arg_0.d.c, select(func_1(_wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(767f + global0.b.x))).a.d, vec4<bool>(true, any(!vec4<bool>(true, global0.a.d.x, arg_0.d.d.x, arg_1.d.d.x)), global0.d.d.x, arg_0.a.d.x), !global0.a.d.x), ~abs(0u));
    let var_1 = Struct_3(select(select(vec2<bool>(all(vec4<bool>(var_0.d.x, arg_0.a.d.x, true, false)), all(var_0.d.zw)), select(select(vec2<bool>(arg_0.a.d.x, global1[_wgslsmith_index_u32(0u, 5u)]), global0.d.d.yz, global1[_wgslsmith_index_u32(59919u, 5u)]), vec2<bool>(true, true), -1i == global0.d.c), true), vec2<bool>(true | any(vec4<bool>(var_0.d.x, true, arg_0.a.d.x, arg_0.d.d.x)), true), arg_0.a.d.yz), ~(~vec3<u32>(49131u, var_0.e, 1u)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(-1i, 2147483647i, global0.a.c)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c, -2147483647i, 15113i), vec3<i32>(-13706i, arg_1.a.c, arg_0.a.c))), arg_1.a.c), arg_0.d, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.c, _wgslsmith_div_i32(arg_1.d.c, -1i), ~var_0.c, _wgslsmith_sub_i32(arg_1.d.c, var_0.c)) >> ((reverseBits(vec4<u32>(var_0.b.x, 1u, 22574u, 0u)) & vec4<u32>(17255u, 0u, 79761u, arg_1.a.e)) % vec4<u32>(32u)), ~(~vec4<i32>(arg_1.d.c, var_0.c, arg_1.a.c, 8205i) | firstTrailingBit(vec4<i32>(arg_0.a.c, 2147483647i, arg_1.d.c, -18561i))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.d.c, 41211i, var_0.c), -vec3<i32>(global0.a.c, -16976i, global0.a.c)), -_wgslsmith_mod_i32(global0.a.c, arg_1.a.c), max(min(arg_0.a.c, arg_0.a.c), _wgslsmith_clamp_i32(var_0.c, arg_0.a.c, -1i)), _wgslsmith_add_i32(global0.d.c ^ -2147483647i, abs(-24649i)))));
    global1 = array<bool, 5>();
    global1 = array<bool, 5>();
    let var_2 = vec4<u32>(abs(68751u), u_input.c.x, 69921u, _wgslsmith_add_u32(~0u, ~min(var_0.b.x, u_input.a))) >> (vec4<u32>(var_0.e, ~reverseBits(~0u), ~(~1u), 8338u) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - -111f)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = global0.d;
    var var_1 = abs(min(min(vec4<i32>(~(-1667i), ~global0.a.c, func_1(global0.c.x).a.c, -global0.a.c), vec4<i32>(global0.a.c, -var_0.c, select(var_0.c, 2147483647i, arg_1.a.d.x), -2147483647i)), select(reverseBits(vec4<i32>(0i, arg_1.d.c, arg_1.a.c, 1i)), -vec4<i32>(arg_1.a.c, 28000i, -30054i, arg_1.a.c), arg_1.d.d)));
    global0 = Struct_2(global0.d, global0.b, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) * vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), 1816f, _wgslsmith_f_op_f32(func_4(arg_1, arg_1)))))), global0.a, _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(6751u, 0u, 26591u), u_input.c) ^ ~max(vec3<u32>(10496u, 23007u, var_0.a), vec3<u32>(1u, u_input.b.x, 0u)), u_input.c));
    var var_2 = global0.a;
    let var_3 = select(var_2.d, var_0.d, all(var_2.d.xw));
    return Struct_2(Struct_1(~func_1(arg_1.c.x).e >> (4294967295u % 32u), ~firstTrailingBit(max(var_2.b, global0.d.b)), var_1.x, vec4<bool>(func_1(arg_0.x).a.d.x, !any(global0.d.d), true, arg_1.d.d.x), u_input.b.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b + vec3<f32>(416f, global0.c.x, global0.c.x)) * _wgslsmith_f_op_vec3_f32(-global0.c))), true && var_3.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.c.x * _wgslsmith_f_op_f32(-632f + arg_0.x)), -1505f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x + -1072f))) - arg_1.b), global0.d, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    let var_1 = func_5(global0.b.yy, Struct_2(global0.a, vec3<f32>(_wgslsmith_f_op_f32(func_4(func_1(global0.b.x), func_1(306f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b.x - global0.b.x))), -470f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - _wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(914u, vec2<u32>(var_0.e, u_input.b.x), global0.a.c, var_0.d, 49888u), global0.c, vec3<f32>(global0.c.x, global0.c.x, global0.b.x), Struct_1(9379u, vec2<u32>(var_0.b.x, 0u), global0.a.c, vec4<bool>(false, true, false, false), u_input.c.x), 30664u), func_1(439f)))), global0.a, _wgslsmith_dot_vec2_u32(global0.a.b, vec2<u32>(max(46195u, 3762u), _wgslsmith_mult_u32(55963u, 0u)))));
    let var_2 = vec2<f32>(-861f, global0.c.x);
    let var_3 = func_5(global0.b.xz, var_1).d;
    var var_4 = var_1.a;
    var var_5 = _wgslsmith_sub_vec4_u32(min(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(77116u, 127619u, 4294967295u, var_4.a), vec4<u32>(var_4.e, global0.a.e, var_3.e, 1u)), vec4<u32>(var_3.e, var_1.d.a, var_3.e, var_1.d.a), vec4<u32>(53980u, 4294967295u, var_4.b.x, u_input.c.x)), select(min(vec4<u32>(4294967295u, 4294967295u, var_1.a.b.x, var_1.d.e), vec4<u32>(global0.a.e, 100810u, var_3.e, var_0.a)), vec4<u32>(var_0.a, var_4.b.x, var_4.b.x, var_1.a.a), func_5(vec2<f32>(-782f, 292f), Struct_2(Struct_1(0u, var_0.b, var_1.d.c, vec4<bool>(global0.d.d.x, global0.a.d.x, true, false), 1u), vec3<f32>(451f, var_1.c.x, 308f), var_1.b, Struct_1(0u, vec2<u32>(0u, var_1.d.a), var_0.c, global0.a.d, 4294967295u), 0u)).d.d)), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(26846u, 4294967295u, 20640u, 37220u), vec4<u32>(var_4.a, var_0.e, var_3.b.x, 40978u)) << (min(vec4<u32>(u_input.a, var_0.e, var_4.b.x, global0.a.a), vec4<u32>(var_1.d.a, var_4.e, var_0.e, 4294967295u)) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(firstTrailingBit(~(vec4<u32>(var_0.a, u_input.a, 1u, 18083u) & vec4<u32>(0u, var_0.b.x, var_3.b.x, 0u))), vec4<u32>(~4200u, abs(u_input.b.x), 1u, ~_wgslsmith_mod_u32(57287u, 4294967295u))));
    let var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.c), var_0.b | reverseBits(vec2<u32>(~1u, 483u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(817f * var_1.b.x), 156f)));
}

