struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21>;

var<private> global1: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(1u, 78089u, 10813u, 1u), vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(0u, 4294967295u, 1u, 0u));

var<private> global2: array<Struct_2, 5>;

var<private> global3: vec2<bool>;

var<private> global4: bool = true;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1324f)), _wgslsmith_f_op_f32(f32(-1f) * -140f)), !any(!vec2<bool>(global3.x, true)) && !all(select(vec2<bool>(global3.x, false), vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, true))), ~u_input.a, select(u_input.c, _wgslsmith_mod_vec2_i32(u_input.c, u_input.c), true), _wgslsmith_add_u32(u_input.a >> (((u_input.b & u_input.b) >> (~30168u % 32u)) % 32u), u_input.a));
    global3 = vec2<bool>(~_wgslsmith_mod_i32(-u_input.c.x, var_0.d.x) > reverseBits(-(~u_input.c.x)), global3.x);
    let var_1 = select(~(~(~(global0[_wgslsmith_index_u32(var_0.e, 21u)] | global0[_wgslsmith_index_u32(u_input.b, 21u)]))), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(91199u, u_input.b), max(var_0.c, u_input.a)), 38444u), 21u)], var_0.b);
    let var_2 = Struct_2(select(select(!select(vec2<bool>(var_0.b, true), vec2<bool>(true, true), global3.x), !(!vec2<bool>(global3.x, var_0.b)), !vec2<bool>(var_0.b, var_0.b)), !vec2<bool>(false, global3.x || true), vec2<bool>(global3.x, !all(vec4<bool>(false, true, global3.x, global3.x)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, 337f))), ~(~u_input.c.x) < var_0.d.x, 0u, var_0.d, var_0.c));
    let var_3 = _wgslsmith_div_u32(_wgslsmith_mult_u32(max(~var_0.c, ~var_2.b.e) << (_wgslsmith_mod_u32(u_input.b, ~u_input.a) % 32u), ~4294967295u), var_0.c);
    return _wgslsmith_f_op_f32(-var_2.b.a);
}

fn func_2(arg_0: f32) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), -1214f, true)), (_wgslsmith_f_op_f32(-1f) >= _wgslsmith_f_op_f32(arg_0 * arg_0)) || !global3.x, ~(~_wgslsmith_dot_vec4_u32(min(global1[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(0u, 21u)]), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u), 4u)])), u_input.c & firstTrailingBit(-u_input.c), 34968u);
    global2 = array<Struct_2, 5>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(385f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-394f * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1015f)))), true)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(trunc(arg_0))), arg_0)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + 621f), min((abs(20422u) | (u_input.a << (70349u % 32u))) & _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, 0u), ~4294967295u, var_0.c), abs(u_input.b)), reverseBits(~(~vec2<i32>(u_input.c.x, u_input.c.x))), firstLeadingBit(_wgslsmith_dot_vec4_u32(select(global1[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(abs(4294967295u), 21u)], !vec4<bool>(global3.x, false, var_0.b, global3.x)), vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e, 0u, 27270u), vec3<u32>(u_input.b, var_0.e, var_0.e)), abs(var_0.c), ~39619u))));
    var var_2 = var_0.d.x | _wgslsmith_mult_i32(firstTrailingBit(u_input.c.x), _wgslsmith_dot_vec2_i32(-var_0.d, vec2<i32>(-25871i, -1i)) ^ 0i);
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~(~u_input.a), ~1423u), 4u)], vec4<u32>(1u, reverseBits(countOneBits(reverseBits(1u))), _wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(47005u, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(77427u, 0u), vec2<u32>(var_0.e, 4294967295u))), 34366u)), 5u)];
    return _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(519f, _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(708f + _wgslsmith_f_op_f32(1375f + var_3.b.a))))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-279f, -2213f)), _wgslsmith_div_vec2_f32(vec2<f32>(261f, 2499f), _wgslsmith_f_op_vec2_f32(vec2<f32>(2192f, -1000f) - vec2<f32>(863f, -366f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), vec2<f32>(149f, -479f)))), !vec2<bool>(arg_0.x > arg_0.x, global3.x && true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1581f)))));
    var var_1 = global3.x;
    var var_2 = vec2<bool>((u_input.c.x >> (~_wgslsmith_dot_vec3_u32(arg_0.yzz, arg_0.wyx) % 32u)) == (u_input.c.x & ~u_input.c.x), ~firstLeadingBit(80602i) >= max(u_input.c.x, u_input.c.x));
    var_2 = select(select(!select(!vec2<bool>(false, var_2.x), select(vec2<bool>(false, true), vec2<bool>(global3.x, var_2.x), vec2<bool>(global3.x, var_2.x)), var_2.x), !select(select(vec2<bool>(false, var_2.x), vec2<bool>(false, false), vec2<bool>(global3.x, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(global3.x, var_2.x), false)), !(!select(vec2<bool>(global3.x, var_2.x), vec2<bool>(false, false), vec2<bool>(false, global3.x)))), select(!select(select(vec2<bool>(global3.x, var_2.x), vec2<bool>(var_2.x, var_2.x), vec2<bool>(false, global3.x)), select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, true), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(false, global3.x), all(vec4<bool>(global3.x, true, false, var_2.x)) || select(all(vec4<bool>(true, true, var_2.x, var_2.x)), false, u_input.a < arg_0.x)), true);
    var var_3 = vec3<i32>(39905i, _wgslsmith_add_i32(u_input.c.x, 0i), _wgslsmith_mult_i32(reverseBits(countOneBits(abs(-3131i))), u_input.c.x));
    return Struct_1(var_0.x, true && var_2.x, 4294967295u, u_input.c, ~abs(33110u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-587f * _wgslsmith_f_op_f32(-1f)) * -1541f));
    var var_1 = _wgslsmith_sub_i32(abs(u_input.c.x), u_input.c.x) & u_input.c.x;
    var var_2 = func_1(vec4<u32>(_wgslsmith_mod_u32(~(~4294967295u), _wgslsmith_add_u32(~u_input.a, _wgslsmith_mod_u32(1u, 1u))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(9167u, 9078u, 4294967295u), vec3<u32>(u_input.a, u_input.b, u_input.a)), ~vec3<u32>(1u, u_input.b, 0u)), ~countOneBits(4294967295u), ~_wgslsmith_mod_u32(u_input.b, u_input.b)), ~u_input.a, (u_input.b & ~17551u) & u_input.b));
    let var_3 = ~u_input.b;
    var var_4 = Struct_2(!select(!select(vec2<bool>(true, false), vec2<bool>(global3.x, global3.x), false), vec2<bool>(true, true), false), Struct_1(var_0, any(vec3<bool>(any(vec3<bool>(true, false, false)), true, true)), ~(~min(1u, var_3)), _wgslsmith_mod_vec2_i32(u_input.c, _wgslsmith_add_vec2_i32(vec2<i32>(25018i, var_2.d.x), var_2.d)), var_3));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -1251f), _wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(min(var_2.a, var_4.b.a))))));
}

