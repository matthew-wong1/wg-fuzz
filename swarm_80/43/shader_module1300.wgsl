struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(-683f, 587f, -1274f, 1000f, 705f, -1000f, -399f, 107f, -1000f, -1248f, 447f, -1067f, -2182f, 1472f, -147f, -834f);

var<private> global1: vec2<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(-23024i, 1i);
    var var_1 = Struct_2(-1i);
    var var_2 = ~arg_1.x;
    global0 = array<f32, 16>();
    var_2 = arg_0.x;
    return Struct_1(arg_1.x);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> u32 {
    let var_0 = min(-select(select(-vec2<i32>(u_input.a, u_input.b), -vec2<i32>(2147483647i, u_input.b), true), vec2<i32>(_wgslsmith_div_i32(u_input.a, u_input.b), u_input.b), !(!vec2<bool>(global1.x, false))), select(vec2<i32>(min(_wgslsmith_mult_i32(-27455i, -1i), firstTrailingBit(-5377i)), 8603i), _wgslsmith_mod_vec2_i32(vec2<i32>(~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -14521i), vec2<i32>(u_input.a, -1i))), vec2<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, 11692i))), !select(select(vec2<bool>(global1.x, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(global1.x, false))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 16u)] - global0[_wgslsmith_index_u32(arg_2, 16u)]), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(16962u, 16u)] * 1820f), global0[_wgslsmith_index_u32(~8673u, 16u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.b.a, 16u)])))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.yx, u_input.c.yz), 16u)], -643f) - vec4<f32>(global0[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_mult_u32(1u, 1u)), 16u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(33943u, 16u)]))))), global0[_wgslsmith_index_u32(~(~4294967295u | arg_1.b.a), 16u)], -434f));
    let var_2 = !(!vec3<bool>(true, all(vec4<bool>(false, global1.x, false, true)), all(vec2<bool>(global1.x, true)) && true));
    global0 = array<f32, 16>();
    var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2, 16u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1115f * global0[_wgslsmith_index_u32(arg_0.a.a, 16u)]) - -2025f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) + -162f)), var_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 16u)]), _wgslsmith_f_op_f32(max(-1026f, -275f)), _wgslsmith_f_op_f32(-var_1.x), global0[_wgslsmith_index_u32(~arg_1.a.a, 16u)]) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1623f, global0[_wgslsmith_index_u32(4294967295u, 16u)], -176f, -2324f) + vec4<f32>(global0[_wgslsmith_index_u32(arg_2, 16u)], -330f, var_1.x, var_1.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1238f, global0[_wgslsmith_index_u32(4294967295u, 16u)], 551f, var_1.x), vec4<f32>(2407f, global0[_wgslsmith_index_u32(7304u, 16u)], global0[_wgslsmith_index_u32(arg_2, 16u)], var_1.x), vec4<bool>(var_2.x, var_2.x, var_2.x, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], var_1.x, global0[_wgslsmith_index_u32(arg_1.a.a, 16u)])))))));
    return _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.c, select(max(u_input.c, vec3<u32>(0u, u_input.c.x, arg_1.b.a)), u_input.c | vec3<u32>(1u, arg_2, 4294967295u), true)), _wgslsmith_div_u32(_wgslsmith_mod_u32(~u_input.c.x, 1u), 72296u)) >> (~reverseBits(_wgslsmith_add_u32(39129u, u_input.c.x) ^ (arg_0.b.a >> (arg_0.a.a % 32u))) % 32u);
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(-1i, u_input.a), abs(firstLeadingBit(1i)), u_input.a);
    let var_1 = Struct_1(func_3(Struct_3(Struct_1(31071u), func_2(select(vec4<u32>(1u, u_input.c.x, u_input.c.x, 11286u), vec4<u32>(4294967295u, u_input.c.x, 0u, u_input.c.x), vec4<bool>(true, global1.x, true, global1.x)), countOneBits(vec4<u32>(54844u, u_input.c.x, 0u, 82382u)), vec2<bool>(true, false), vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], 1431f, -621f))), Struct_3(Struct_1(~u_input.c.x), Struct_1(abs(u_input.c.x))), _wgslsmith_mult_u32(1u, u_input.c.x)));
    var var_2 = Struct_3(func_2(vec4<u32>(~51550u, select(u_input.c.x, 8187u, global1.x), 0u, 1u) >> (~select(vec4<u32>(u_input.c.x, 0u, var_1.a, var_1.a), vec4<u32>(var_1.a, var_1.a, u_input.c.x, u_input.c.x), false) % vec4<u32>(32u)), vec4<u32>(~_wgslsmith_mod_u32(var_1.a, 40178u), 5828u, _wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(32858u, var_1.a)), ~41154u), vec2<bool>(true, !global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1174f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], 2507f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], -1000f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)]) - vec3<f32>(-1000f, -1401f, -1853f))))), var_1);
    var var_3 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.x, abs(-38266i)), 2147483647i));
    var_3 = Struct_2(-2147483647i << (u_input.c.x % 32u));
    return func_2(~vec4<u32>(abs(_wgslsmith_mod_u32(u_input.c.x, 0u)), ~(~u_input.c.x), 13112u, abs(~u_input.c.x)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_1.a, 5015u, 1u, 0u)), firstLeadingBit(~vec4<u32>(var_2.b.a, var_1.a, 1u, 47293u) & vec4<u32>(var_2.b.a, 13852u, var_1.a, 4294967295u))), vec2<bool>(global1.x, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(var_2.b.a, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], -558f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    let var_0 = Struct_3(func_1(), func_2(~reverseBits(vec4<u32>(17693u, 33988u, 1u, 0u)) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 47040u, u_input.c.x) | vec4<u32>(1u, 404u, u_input.c.x, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 36706u, 1u, 79169u), vec4<u32>(65229u, u_input.c.x, 54048u, 0u))), ~(~(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 5877u))), vec2<bool>(global1.x, false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(350f, 622f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)]))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 16u)], 709f, 1115f) - vec3<f32>(1134f, 2390f, -500f))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1632f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]), vec3<f32>(global0[_wgslsmith_index_u32(3586u, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1813f, -845f, -1118f) - vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)])))))));
    global1 = select(select(vec2<bool>(!all(vec4<bool>(global1.x, global1.x, true, false)), global1.x), vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2841f) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 16u)])) == global0[_wgslsmith_index_u32(select(~var_0.a.a, 1u, !global1.x), 16u)]), select(!vec2<bool>(global1.x, false), select(select(select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x)), select(vec2<bool>(true, true), vec2<bool>(global1.x, false), vec2<bool>(false, true)), vec2<bool>(false, true)), !vec2<bool>(global1.x, true), true), true), false);
    let var_1 = _wgslsmith_mod_vec2_i32(-firstLeadingBit(~vec2<i32>(u_input.b, -2147483647i)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 0i), reverseBits(vec2<i32>(u_input.a, 33142i)), abs(vec2<i32>(22142i, -2147483647i)))) >> (_wgslsmith_add_vec2_u32(max(~_wgslsmith_mult_vec2_u32(u_input.c.zx, vec2<u32>(u_input.c.x, var_0.b.a)), u_input.c.xx), select(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.a, 15104u), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(var_0.b.a, var_0.b.a)), ~reverseBits(u_input.c.yy), true)) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1331f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], -341f, global0[_wgslsmith_index_u32(4294967295u, 16u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0[_wgslsmith_index_u32(1u, 16u)], 1423f, -1150f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, var_1.x);
}

