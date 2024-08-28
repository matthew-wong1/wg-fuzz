struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(-1528f, -846f, -183f, -494f, 227f, 885f, -523f, -707f, -701f, 1721f, 120f, 371f, -1519f, -522f, -161f, 1142f, -112f, -225f, 1000f, 1000f, -135f, -778f, -607f, 1000f, 834f, -1352f, -675f, -417f, -365f, 1228f, 131f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(true);
    let var_1 = Struct_1(false);
    var var_2 = _wgslsmith_mult_vec3_u32(~(~(~vec3<u32>(u_input.a, u_input.a, 1u) | (vec3<u32>(u_input.b, 1u, 46768u) | vec3<u32>(u_input.a, 1u, 37520u)))), vec3<u32>(~4294967295u, 1u, min(0u, u_input.b & reverseBits(63018u))));
    var var_3 = Struct_2(Struct_1(var_0.a), Struct_1(var_1.a), ~vec4<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(57159u, 34186u, var_2.x), vec3<u32>(4294967295u, 9559u, 4294967295u)), 0u, any(vec2<bool>(var_1.a, var_0.a))), ~reverseBits(29307u), var_2.x, min(0u, u_input.a) >> (var_2.x % 32u)), vec4<i32>(1i, ~(~15405i), i32(-1i) * -(-1i << (u_input.b % 32u)), ~countOneBits(6708i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(var_2.x, 31u)], -149f), vec2<f32>(-511f, -957f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-261f, 1050f))))));
    var var_4 = 43524u;
    return vec4<bool>(any(vec2<bool>(var_1.a, any(!vec3<bool>(var_0.a, var_1.a, var_1.a)))), true, !(!(!var_1.a)), var_3.a.a);
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(max(u_input.a, firstTrailingBit(u_input.b)), 31u)], _wgslsmith_f_op_f32(-2902f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 31u)])))) <= global0[_wgslsmith_index_u32(u_input.b, 31u)], all(func_3()) && func_3().x, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false);
    let var_1 = vec4<i32>(~abs(~(-2147483647i)), max(63643i, 0i), _wgslsmith_add_i32(_wgslsmith_mult_i32(firstTrailingBit(-20817i), 0i), -39315i), select(_wgslsmith_clamp_i32(-589i, _wgslsmith_div_i32(i32(-1i) * -1i, i32(-1i) * -2147483647i), abs(-2147483647i)), -24788i, var_0.x));
    var var_2 = all(!func_3());
    let var_3 = vec4<bool>((firstTrailingBit(-23819i) < var_1.x) | any(vec3<bool>(var_0.x, true, true)), func_3().x, false, true);
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 31u)] + global0[_wgslsmith_index_u32(u_input.a, 31u)])), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(42444u, u_input.b, var_0.x), u_input.a), 31u)]) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(u_input.b, 31u)]), global0[_wgslsmith_index_u32(u_input.b, 31u)]) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1675f, global0[_wgslsmith_index_u32(u_input.a, 31u)]) * vec2<f32>(244f, -2176f))))));
    return Struct_2(Struct_1(!any(func_3())), Struct_1((false && !var_3.x) | any(!var_0.ywz)), vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(63128u, u_input.b, 75696u), vec3<u32>(4294967295u, 16552u, u_input.a)), abs(vec3<u32>(u_input.b, 4294967295u, u_input.b))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, u_input.b, 1u) & vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 28069u, u_input.b, 53922u), vec4<u32>(0u, u_input.a, u_input.b, u_input.b))), ~(~vec4<u32>(19044u, u_input.a, 94933u, u_input.b))), max(abs(~u_input.a), ~firstLeadingBit(8325u))), _wgslsmith_add_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -56417i, var_1.x, var_1.x), vec4<i32>(var_1.x, 91299i, -711i, 0i)) ^ vec4<i32>(-33440i, var_1.x, 0i, -2147483647i)), ~(~(~vec4<i32>(-49591i, 2147483647i, 24939i, 0i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-508f, 136f))), vec2<f32>(_wgslsmith_f_op_f32(floor(-366f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(19776u, 31u)]))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1126f, var_4.x)))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    let var_0 = func_2().a;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.e.x, -297f)) * func_2().e.x)))) + -204f);
    return Struct_1(arg_1.b.a);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>) -> StorageBuffer {
    global0 = array<f32, 31>();
    let var_0 = func_4(func_2(), func_2());
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    var var_1 = vec4<i32>(arg_1.x, arg_1.x, -(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 21103i, 69690i), vec3<i32>(0i, arg_1.x, arg_1.x)), _wgslsmith_mult_i32(-2147483647i, arg_1.x)) << (~_wgslsmith_sub_u32(0u, u_input.a) % 32u)), 10172i | arg_1.x);
    return StorageBuffer(~_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(0u, u_input.a) << (vec2<u32>(14303u, 1u) % vec2<u32>(32u))) | ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(24114u, arg_0.x, 17076u)), vec3<u32>(arg_0.x, 1u, 13606u) & vec3<u32>(1u, 25706u, u_input.a)), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    var var_0 = Struct_1((true && !all(vec3<bool>(true, false, true))) & true);
    var_0 = Struct_1(all(vec4<bool>(true, true, true, true)));
    let var_1 = vec2<i32>(1i, 15404i);
    let x = u_input.a;
    s_output = func_1(vec2<u32>(_wgslsmith_div_u32(u_input.b, ~23266u) ^ 13594u, ~_wgslsmith_add_u32(~u_input.a, ~1u)), vec2<i32>(var_1.x, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-2147483647i, var_1.x, -16839i, var_1.x)), vec4<i32>(21752i, -1i, -2147483647i, var_1.x) & -vec4<i32>(1i, -47921i, var_1.x, var_1.x))));
}

