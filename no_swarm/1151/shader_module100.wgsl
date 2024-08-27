struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool, arg_3: bool) -> vec3<i32> {
    global0 = array<Struct_1, 7>();
    var var_0 = arg_0;
    var var_1 = 4294967295u;
    var var_2 = Struct_2(_wgslsmith_add_i32(-27616i, _wgslsmith_clamp_i32(~global1.a, abs(9310i << (u_input.c % 32u)), _wgslsmith_add_i32(13611i, -u_input.a))));
    global0 = array<Struct_1, 7>();
    return vec3<i32>(~_wgslsmith_sub_i32(global1.a, 0i), u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, -1i), vec3<i32>(-2147483647i, 0i, arg_1.x) & vec3<i32>(12121i, arg_1.x, global1.a)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -2147483647i), vec3<i32>(u_input.b, 18634i, var_2.a), vec3<i32>(global1.a, -26165i, arg_1.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.a, 30378i, u_input.b), vec3<i32>(u_input.a, global1.a, 1i))))) | ((-(vec3<i32>(1i, arg_1.x, arg_1.x) << (vec3<u32>(57817u, u_input.c, u_input.c) % vec3<u32>(32u))) << (firstTrailingBit(~vec3<u32>(4874u, u_input.c, 4294967295u)) % vec3<u32>(32u))) & -select(reverseBits(vec3<i32>(arg_1.x, 33420i, 0i)), ~vec3<i32>(arg_1.x, 32599i, 2147483647i), all(vec2<bool>(arg_2, arg_2))));
}

fn func_2(arg_0: vec4<bool>) -> vec2<u32> {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.a, 0i, u_input.b) ^ func_3(global0[_wgslsmith_index_u32(u_input.c, 7u)], vec2<i32>(1i, -13206i), false, false), vec3<i32>(abs(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, -1i, u_input.b), vec4<i32>(-6322i, global1.a, 58675i, -42829i)), abs(-1i))), -_wgslsmith_add_vec3_i32(vec3<i32>(28280i, -2147483647i, global1.a), vec3<i32>(8967i, global1.a, 20006i)) ^ min(vec3<i32>(1i, u_input.b, u_input.a) ^ vec3<i32>(global1.a, 16938i, u_input.a), vec3<i32>(global1.a, 2147483647i, 1i) & vec3<i32>(1i, global1.a, 1i))), ~(vec3<i32>(-7252i, func_3(global0[_wgslsmith_index_u32(4294967295u, 7u)], vec2<i32>(u_input.a, -2102i), true, true).x, global1.a) ^ vec3<i32>(23923i | global1.a, -1i, ~u_input.a)));
    var var_2 = !(!var_0.zxz);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1596f * 1973f) - _wgslsmith_f_op_f32(select(298f, -1291f, var_0.x)))))));
    var var_4 = select(arg_0.wwy, var_0.zxy, !vec3<bool>(var_0.x, arg_0.x, 359f < _wgslsmith_f_op_f32(-var_3.a)));
    return _wgslsmith_div_vec2_u32(countOneBits(~vec2<u32>(~u_input.c, u_input.c)), vec2<u32>(4294967295u, select(~reverseBits(14833u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(32090u, 1u), vec2<u32>(u_input.c, 24603u)), ~u_input.c), var_2.x)));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: i32) -> Struct_1 {
    var var_0 = min(max(select(_wgslsmith_div_vec2_i32(select(vec2<i32>(-26555i, global1.a), vec2<i32>(1i, global1.a), vec2<bool>(true, true)), vec2<i32>(40656i, global1.a)), -_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(global1.a, 34422i)), vec2<bool>(true, true)), _wgslsmith_add_vec2_i32(~(vec2<i32>(u_input.b, global1.a) >> (arg_2 % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, -44036i) >> (arg_2 % vec2<u32>(32u)), ~vec2<i32>(arg_0, global1.a)))), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, global1.a >> (u_input.c % 32u)), _wgslsmith_div_vec2_i32(vec2<i32>(global1.a, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(-53739i, arg_3), vec2<i32>(20087i, arg_0)))) >> (_wgslsmith_sub_vec2_u32(arg_2, ~vec2<u32>(1u, u_input.c)) % vec2<u32>(32u)));
    let var_1 = Struct_2(firstTrailingBit(-2147483647i));
    global1 = Struct_2(_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(global1.a, var_0.x, 3610i, 37015i)) << (~(vec4<u32>(0u, arg_2.x, arg_2.x, 0u) | vec4<u32>(arg_2.x, 78968u, u_input.c, u_input.c)) % vec4<u32>(32u)), min(reverseBits(vec4<i32>(arg_0, u_input.b, -1i, 33283i) | vec4<i32>(var_0.x, var_0.x, global1.a, 27560i)), abs(vec4<i32>(0i, -19036i, u_input.a, arg_0)))));
    let var_2 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(13353u, 15753u, _wgslsmith_add_u32(~u_input.c, abs(72552u))), (vec3<u32>(9621u, 1u, 1u) << (~vec3<u32>(arg_2.x, 4294967295u, 15978u) % vec3<u32>(32u))) << (vec3<u32>(1u, 1u, select(u_input.c, 95908u, false)) % vec3<u32>(32u)));
    var var_3 = ~arg_2;
    return global0[_wgslsmith_index_u32(~1u & _wgslsmith_div_u32(u_input.c, var_2.x), 7u)];
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(-321f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(248f)) - _wgslsmith_div_f32(750f, 539f)))));
    var var_1 = Struct_2(select(0i, abs(1i), true));
    var var_2 = Struct_1(var_0);
    let var_3 = func_4(_wgslsmith_div_i32(2147483647i, min(-20067i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, var_1.a, -1i, 12125i), vec4<i32>(global1.a, 42844i, var_1.a, 30296i)), abs(var_1.a)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(416f, -1116f))), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(24366u, 4294967295u), vec2<u32>(u_input.c, u_input.c)), ~vec2<u32>(u_input.c, 87032u)), vec2<u32>(~1583u, 36827u), ~func_2(vec4<bool>(false, true, true, true))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.a | -76582i), ~_wgslsmith_add_i32(var_1.a, global1.a), 2147483647i, _wgslsmith_mod_i32(global1.a, 3838i) >> (~0u % 32u)), countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, global1.a, u_input.b, 2147483647i), vec4<i32>(u_input.b, u_input.b, global1.a, 1i)))));
    var_1 = Struct_2(-(((i32(-1i) * -7719i) << (reverseBits(u_input.c) % 32u)) << (1u % 32u)));
    return Struct_2(~var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-54988i, -u_input.b, u_input.b | u_input.a), min(vec3<i32>(2147483647i, -36002i, global1.a), vec3<i32>(global1.a, u_input.a, 1i) & vec3<i32>(global1.a, 2147483647i, -1i))), firstTrailingBit(-vec3<i32>(u_input.b, global1.a, global1.a))));
    global1 = Struct_2(_wgslsmith_mult_i32(u_input.a, 2147483647i) ^ _wgslsmith_add_i32(~(i32(-1i) * -13183i), _wgslsmith_sub_i32(countOneBits(global1.a), _wgslsmith_div_i32(-55716i, -2147483647i))));
    global1 = func_1();
    let var_0 = global0[_wgslsmith_index_u32(u_input.c, 7u)];
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(vec2<u32>(u_input.c, u_input.c))) | vec2<u32>(8746u, u_input.c & (1u | u_input.c)), u_input.c, -5791i, 1i);
}

