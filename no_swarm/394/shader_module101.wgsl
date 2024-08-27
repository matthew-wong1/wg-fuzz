struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(0u, 7334u), vec2<u32>(1u, 0u), vec2<u32>(31932u, 0u), vec2<u32>(25138u, 0u), vec2<u32>(27354u, 1u), vec2<u32>(1u, 58657u));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(0u, 4294967295u, 0u, 1u), 1u, -30660i, 2147483647i, vec2<i32>(1i, i32(-2147483648)));

var<private> global2: vec2<f32> = vec2<f32>(754f, 1363f);

var<private> global3: array<vec3<bool>, 12>;

var<private> global4: array<u32, 31> = array<u32, 31>(37037u, 1u, 0u, 28057u, 1u, 0u, 76322u, 32796u, 1u, 4294967295u, 16680u, 1u, 0u, 1u, 7589u, 0u, 4294967295u, 15994u, 3761u, 76365u, 0u, 39491u, 29617u, 12279u, 52495u, 4294967295u, 0u, 0u, 18000u, 0u, 4294967295u);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-834f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x + arg_1), _wgslsmith_f_op_f32(step(472f, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x))), _wgslsmith_mod_i32(global1.d, u_input.d) >= _wgslsmith_add_i32(arg_2.e.x, arg_2.c))))), arg_1, true && (4294967295u <= select(~global4[_wgslsmith_index_u32(39203u, 31u)], global1.b, any(vec4<bool>(true, true, false, true))))));
    var var_1 = _wgslsmith_dot_vec4_i32(u_input.b, u_input.b);
    let var_2 = all(select(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), min(arg_2.a.x, 4294967295u) <= countOneBits(15393u)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(true, true, false)), vec2<bool>(true, true), u_input.a <= (arg_0.b >> (global1.b % 32u))), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), !select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, any(global3[_wgslsmith_index_u32(44171u, 12u)])))));
    var var_3 = arg_2;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1576f, -1795f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-354f, -1281f))), vec2<f32>(global2.x, arg_1))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 757f))))));
    return !select(vec2<bool>(true, all(!vec2<bool>(false, var_2))), vec2<bool>(!var_2, select(false, var_2, var_2) || true), select(!vec2<bool>(true, var_2), select(!vec2<bool>(var_2, var_2), !vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2)), false));
}

fn func_2() -> i32 {
    var var_0 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(reverseBits(-17062i), 1i, u_input.c), vec3<i32>(~0i, i32(-1i) * -20868i, -997i)) << ((abs(~(~global1.a.xyy)) >> ((firstTrailingBit(vec3<u32>(34153u, global1.a.x, 1u)) & _wgslsmith_sub_vec3_u32(vec3<u32>(23774u, global4[_wgslsmith_index_u32(8191u, 31u)], u_input.e.x), vec3<u32>(global4[_wgslsmith_index_u32(global1.b, 31u)], 4294967295u, 0u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = 0u;
    let var_2 = select(!select(!func_3(Struct_1(vec4<u32>(4294967295u, u_input.e.x, 48353u, global4[_wgslsmith_index_u32(0u, 31u)]), 29236u, -17643i, var_0.x, u_input.b.xz), -1154f, Struct_1(global1.a, global4[_wgslsmith_index_u32(7044u, 31u)], u_input.d, 0i, vec2<i32>(global1.c, var_0.x))), !func_3(Struct_1(global1.a, 0u, global1.c, 35821i, vec2<i32>(44674i, global1.c)), 1000f, Struct_1(vec4<u32>(global1.b, 4294967295u, 153779u, global1.a.x), 42333u, var_0.x, global1.e.x, vec2<i32>(var_0.x, -1i))), vec2<bool>(true, true)), select(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), func_3(Struct_1(vec4<u32>(u_input.a, 48105u, 63321u, 52553u), 28730u, -23018i, var_0.x, global1.e), _wgslsmith_f_op_f32(f32(-1f) * -922f), Struct_1(reverseBits(global1.a), ~global1.a.x, 2147483647i, 53084i, -vec2<i32>(0i, 13957i))), vec2<bool>(true, true)), !any(vec2<bool>(true, true)));
    let var_3 = global1.e.x;
    var var_4 = func_3(Struct_1(~(~(~vec4<u32>(113212u, 0u, 4294967295u, 4294967295u))), u_input.e.x, _wgslsmith_mod_i32(~(~u_input.c), ~_wgslsmith_mult_i32(var_0.x, var_0.x)), -2147483647i, _wgslsmith_clamp_vec2_i32(abs(reverseBits(global1.e)), global1.e, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_0.x), vec2<i32>(23383i, global1.c)) & vec2<i32>(global1.d, -900i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(-global2.x)), Struct_1(~(~global1.a), global4[_wgslsmith_index_u32(reverseBits(countOneBits(countOneBits(4294967295u))), 31u)], _wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_mod_vec4_i32(vec4<i32>(global1.e.x, u_input.d, var_0.x, u_input.c), u_input.b)), u_input.c, abs(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, 11795i), vec2<i32>(var_0.x, u_input.b.x) >> (global1.a.wx % vec2<u32>(32u)))))).x;
    return -1i;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = array<vec2<u32>, 6>();
    let var_0 = u_input.a;
    let var_1 = Struct_1(~(~(~global1.a)), var_0 & (min(1u, 4790u) << (global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0, 31u)] ^ 20006u, 31u)], 31u)] % 32u)), global1.e.x, 1i, vec2<i32>(-(func_2() & abs(global1.d)), global1.c));
    return Struct_1(_wgslsmith_add_vec4_u32(select(~global1.a, _wgslsmith_div_vec4_u32(select(global1.a, var_1.a, false), vec4<u32>(30510u, var_1.b, var_0, arg_0)), vec4<bool>(true, true, true, true)), abs(_wgslsmith_add_vec4_u32(~vec4<u32>(18320u, arg_0, 4294967295u, global1.a.x), var_1.a))), 61966u, 2147483647i >> (_wgslsmith_div_u32(84098u, ~(~var_1.b)) % 32u), firstTrailingBit(global1.c), var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(global1.a.x);
    var var_0 = func_1(_wgslsmith_clamp_u32(86923u, global1.a.x, global4[_wgslsmith_index_u32(~(~global1.b), 31u)]));
    var var_1 = func_3(func_1(reverseBits(~u_input.a << (_wgslsmith_sub_u32(0u, var_0.a.x) % 32u))), _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(312f + global2.x))))), Struct_1(~(~(~vec4<u32>(var_0.a.x, 62318u, 34966u, 1u))), 10187u, global1.d, 64i, var_0.e)).x;
    let var_2 = func_1(select(~(~(~14075u)), 1u, !any(vec3<bool>(false, true, false))));
    global0 = array<vec2<u32>, 6>();
    let var_3 = var_2;
    var var_4 = ~27432u;
    var var_5 = vec4<i32>(-_wgslsmith_div_i32(-firstTrailingBit(var_2.d), firstTrailingBit(5594i)), _wgslsmith_add_i32(-1i, u_input.b.x), -39794i, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1648f, 2464f, -767f) - vec4<f32>(271f, -1000f, -964f, global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-906f, global2.x, 205f, 1169f)))) * vec4<f32>(global2.x, global2.x, 1519f, 335f)), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global2.x, global2.x, true)))), global2.x, -170f, 501f))), 124891u >> (0u % 32u));
}

