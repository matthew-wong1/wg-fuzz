struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(-26952i, -1i, -18895i), vec3<i32>(0i, 54554i, 0i), vec3<i32>(-8512i, 0i, 10795i), vec3<i32>(1612i, -2653i, 0i), vec3<i32>(-18502i, 22899i, 2147483647i), vec3<i32>(-28876i, 15417i, 39252i), vec3<i32>(i32(-2147483648), -16565i, 48601i), vec3<i32>(i32(-2147483648), 49401i, -25404i));

var<private> global1: vec4<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_4(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.b.x), u_input.b.x, u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -25411i), u_input.b) >> (~u_input.a.x % 32u)), _wgslsmith_sub_vec4_i32(max(vec4<i32>(2147483647i, 1i, -15244i, u_input.b.x), vec4<i32>(u_input.b.x, 2147483647i, -19393i, 49430i)), reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, -10719i, -1i))) & vec4<i32>(u_input.b.x, -258i, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 47847i, 1i, -1i), vec4<i32>(-39107i, -11122i, 1i, u_input.b.x)))));
    global0 = array<vec3<i32>, 8>();
    let var_1 = vec3<bool>(false, false, global1.x);
    global0 = array<vec3<i32>, 8>();
    var var_2 = ~countOneBits(u_input.a);
    return vec4<bool>(global1.x, var_1.x, global1.x, true);
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> vec4<u32> {
    global0 = array<vec3<i32>, 8>();
    let var_0 = all(!func_1().wzy);
    global1 = func_1();
    global0 = array<vec3<i32>, 8>();
    var var_1 = Struct_3(Struct_2(min(~countOneBits(vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, 23476u)), ~abs(vec4<u32>(34084u, 0u, 4545u, 4294967295u))), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 25475u, 1u), vec3<u32>(u_input.c, u_input.c, 0u)) & ~vec3<u32>(u_input.a.x, u_input.a.x, 0u), all(global1.xzw), _wgslsmith_mult_u32(u_input.c, u_input.c)), -vec3<i32>(abs(countOneBits(arg_1.x)), _wgslsmith_mod_i32(i32(-1i) * -1i, 4776i), countOneBits(arg_1.x)));
    return (vec4<u32>(~var_1.a.b.x, 73620u & u_input.c, ~(~4294967295u), 4294967295u) >> ((max(~vec4<u32>(u_input.c, 0u, var_1.a.a.x, 46417u), var_1.a.a >> (var_1.a.a % vec4<u32>(32u))) ^ var_1.a.a) % vec4<u32>(32u))) | vec4<u32>(62489u, firstLeadingBit(_wgslsmith_clamp_u32(firstLeadingBit(4294967295u), _wgslsmith_add_u32(var_1.a.b.x, 99515u), firstLeadingBit(8648u))), ~(~86872u), 89243u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_5) -> bool {
    var var_0 = _wgslsmith_mult_i32(-1i, _wgslsmith_sub_i32(firstLeadingBit(max(u_input.b.x, -47126i)), -13456i) | _wgslsmith_mult_i32(-1i, arg_3.e.a));
    global1 = vec4<bool>(true, true, true, true);
    var var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.a), 1508f) + arg_3.a), arg_3.b, Struct_2(~countOneBits(vec4<u32>(1u, 4294967295u, u_input.c, arg_1.d)), arg_3.c.a.yxw, all(!vec4<bool>(true, false, arg_3.c.c, arg_1.c)), 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_3.d)))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_0);
    global0 = array<vec3<i32>, 8>();
    let var_2 = Struct_2(vec4<u32>(countOneBits(~(arg_3.c.a.x & 4294967295u)), arg_3.c.a.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.a.x, var_1.c.b.x), vec2<u32>(1978u, arg_1.a.x)), 16990u), arg_1.a.xwy | _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.c, 4294967295u, 4294967295u), 0u, ~arg_1.a.x), vec3<u32>(1u, _wgslsmith_div_u32(u_input.c, 4294967295u), u_input.a.x)), arg_3.e.b, firstLeadingBit(var_1.c.d));
    return var_2.c;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> Struct_4 {
    global1 = select(vec4<bool>(true, arg_0, all(!func_1()), true), select(vec4<bool>(all(!vec2<bool>(global1.x, arg_0)), all(vec3<bool>(arg_1.x, true, arg_1.x)), true & !arg_0, global1.x), !vec4<bool>(true, global1.x || arg_0, true, true & arg_0), global1.x), !all(vec4<bool>(u_input.c <= u_input.a.x, true, arg_0 | true, select(global1.x, true, false))));
    var var_0 = vec4<bool>(true, func_4(Struct_1(abs(u_input.b.x) >> (_wgslsmith_mult_u32(u_input.a.x, u_input.c) % 32u), arg_1.x, -vec2<i32>(-870i, 0i)), Struct_2(abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, 32688u) >> (vec4<u32>(4294967295u, u_input.c, 4294967295u, 1u) % vec4<u32>(32u))), ~(~vec3<u32>(u_input.a.x, 1u, 9518u)), -1224f == _wgslsmith_f_op_f32(select(659f, -209f, true)), abs(u_input.a.x)), ~(~(-global0[_wgslsmith_index_u32(1u, 8u)])), Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(951f * 1000f), 212f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-773f, -783f, -866f)))), Struct_2(func_3(-138f, vec3<i32>(-1i, u_input.b.x, u_input.b.x)), ~vec3<u32>(1u, u_input.a.x, u_input.a.x), true, ~u_input.a.x), 1048f, Struct_1(u_input.b.x, !global1.x, ~vec2<i32>(44519i, u_input.b.x)))), false, false);
    let var_1 = vec3<bool>(all(select(var_0.xxw, vec3<bool>(arg_1.x, arg_1.x, global1.x), arg_0)) && arg_0, func_4(Struct_1(2147483647i, any(vec4<bool>(true, arg_1.x, arg_0, arg_1.x)), u_input.b >> (u_input.a % vec2<u32>(32u))), Struct_2(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.c, u_input.c, u_input.c, 45593u), vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x), true), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, 51670u))), abs(~vec3<u32>(u_input.a.x, 52938u, u_input.a.x)), !arg_0 | true, ~(~u_input.c)), ~global0[_wgslsmith_index_u32(u_input.a.x, 8u)], Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1015f)) - -1000f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-555f, -1090f, 173f))))), Struct_2(countOneBits(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.a.x)), vec3<u32>(54923u, u_input.c, 0u) >> (vec3<u32>(50512u, u_input.a.x, u_input.c) % vec3<u32>(32u)), true, 15051u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1226f) + 105f), Struct_1(-u_input.b.x, func_1().x, u_input.b << (u_input.a % vec2<u32>(32u))))), false);
    var var_2 = select(_wgslsmith_clamp_u32(u_input.a.x, func_3(827f, vec3<i32>(u_input.b.x, -2147483647i, 0i)).x | _wgslsmith_sub_u32(u_input.a.x, 5839u), ~4294967295u), u_input.a.x, all(!vec4<bool>(false, true, true, arg_0)) || true) << (~_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 31394u, u_input.a.x), vec3<u32>(u_input.c, 0u, u_input.c)), select(~vec3<u32>(0u, 0u, u_input.a.x), ~vec3<u32>(u_input.c, 1u, 4294967295u), func_1().xwy)) % 32u);
    var var_3 = u_input.c <= (min(u_input.c, firstTrailingBit(4294967295u)) << (_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 55356u), vec3<u32>(1u, 4294967295u, u_input.c)), u_input.c), u_input.c, reverseBits(countOneBits(4294967295u))) % 32u));
    return Struct_4(u_input.c, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-34407i, -30821i), i32(-1i) * -26291i, ~(-21098i), u_input.b.x), vec4<i32>(u_input.b.x, select(-9742i, u_input.b.x, true), u_input.b.x, u_input.b.x)), vec4<i32>(~_wgslsmith_div_i32(-2297i, u_input.b.x), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -3217i), vec2<i32>(-2147483647i, -2147483647i))), ~u_input.b.x, (i32(-1i) * -3307i) & ~u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(func_1(), vec4<bool>(u_input.b.x < 0i, global1.x, global1.x, true), global1.x);
    var var_0 = vec2<i32>(-1i) * -u_input.b;
    var var_1 = vec2<f32>(-675f, 1000f);
    let var_2 = 2651f;
    let var_3 = func_2(false, vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~(~var_3.a), ~min(var_3.a, select(u_input.a.x, var_3.a, global1.x))), u_input.b.x, 1504f, _wgslsmith_add_i32(firstLeadingBit(countOneBits(~(-11734i))), 52189i));
}

