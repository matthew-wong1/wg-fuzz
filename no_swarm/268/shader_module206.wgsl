struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: Struct_3;

var<private> global2: array<vec3<u32>, 10>;

var<private> global3: array<vec2<u32>, 4>;

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(-358f, vec3<u32>(64694u, 4294967295u, 4294967295u), vec2<i32>(0i, -1i)), Struct_1(1080f, vec3<u32>(6178u, 0u, 63837u), vec2<i32>(-20565i, 9683i)), Struct_1(-1594f, vec3<u32>(32414u, 4294967295u, 1041u), vec2<i32>(10730i, -1i)), Struct_1(-116f, vec3<u32>(0u, 28301u, 0u), vec2<i32>(2147483647i, 2147483647i)), Struct_1(-1513f, vec3<u32>(1u, 92932u, 47924u), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(115f, vec3<u32>(46672u, 101767u, 1u), vec2<i32>(i32(-2147483648), -47380i)), Struct_1(198f, vec3<u32>(46367u, 0u, 9576u), vec2<i32>(-16902i, -45649i)), Struct_1(1000f, vec3<u32>(4294967295u, 1u, 16543u), vec2<i32>(4077i, -9792i)), Struct_1(-215f, vec3<u32>(1u, 112851u, 46976u), vec2<i32>(0i, -1i)), Struct_1(847f, vec3<u32>(1u, 21068u, 48774u), vec2<i32>(1i, -1i)), Struct_1(754f, vec3<u32>(7919u, 58106u, 0u), vec2<i32>(2147483647i, -37090i)), Struct_1(-504f, vec3<u32>(1u, 0u, 4294967295u), vec2<i32>(-45234i, 2147483647i)), Struct_1(-849f, vec3<u32>(45859u, 1u, 1u), vec2<i32>(19531i, -1i)), Struct_1(-350f, vec3<u32>(65716u, 1u, 1u), vec2<i32>(i32(-2147483648), -36225i)), Struct_1(486f, vec3<u32>(65136u, 21100u, 6095u), vec2<i32>(-12846i, -1i)), Struct_1(-1365f, vec3<u32>(90562u, 1531u, 66574u), vec2<i32>(-30737i, 3203i)), Struct_1(110f, vec3<u32>(4294967295u, 0u, 4294967295u), vec2<i32>(-37419i, -41629i)), Struct_1(-821f, vec3<u32>(0u, 10941u, 1u), vec2<i32>(72550i, 39772i)), Struct_1(-803f, vec3<u32>(110976u, 24841u, 53735u), vec2<i32>(1i, 2147483647i)), Struct_1(1000f, vec3<u32>(4294967295u, 0u, 61521u), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(-1208f, vec3<u32>(29963u, 1u, 0u), vec2<i32>(8979i, 37509i)), Struct_1(322f, vec3<u32>(0u, 5733u, 35030u), vec2<i32>(-25171i, 12091i)), Struct_1(2214f, vec3<u32>(8577u, 4294967295u, 79960u), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(-907f, vec3<u32>(1u, 1u, 0u), vec2<i32>(22928i, 20776i)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    let var_0 = select(select(arg_0.a, select(!(!vec3<bool>(false, arg_0.a.x, global1.a.x)), !arg_0.a, select(select(vec3<bool>(arg_0.a.x, true, false), vec3<bool>(global0[_wgslsmith_index_u32(37516u, 10u)], arg_0.a.x, global0[_wgslsmith_index_u32(u_input.b, 10u)]), vec3<bool>(arg_0.a.x, false, arg_0.a.x)), select(vec3<bool>(arg_0.a.x, false, true), arg_0.a, global1.a.x), vec3<bool>(true, arg_0.a.x, global1.a.x))), !(!select(global1.a, global1.a, vec3<bool>(global1.a.x, false, global1.a.x)))), arg_0.a, select(vec3<bool>(select(global0[_wgslsmith_index_u32(firstLeadingBit(51624u), 10u)], any(vec4<bool>(true, arg_0.a.x, true, false)), global1.b < u_input.a), any(vec4<bool>(true, global1.a.x, global1.a.x, false)), -547f >= _wgslsmith_f_op_f32(select(-1229f, 268f, arg_0.a.x))), vec3<bool>(!(global1.a.x & arg_0.a.x), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(14760u, global1.c, global1.c), u_input.c), 10u)], all(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.c, 10u)], true, true))), !(_wgslsmith_div_f32(519f, -778f) == _wgslsmith_f_op_f32(ceil(776f)))));
    let var_1 = Struct_4(global4[_wgslsmith_index_u32(arg_0.c, 24u)], Struct_3(select(!(!vec3<bool>(arg_0.a.x, true, false)), vec3<bool>(false, false, false), var_0.x), -7853i, _wgslsmith_div_u32(reverseBits(~global1.c), ~_wgslsmith_mult_u32(u_input.d, 4294967295u))));
    let var_2 = Struct_2(_wgslsmith_div_f32(var_1.a.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a.a + _wgslsmith_f_op_f32(-1524f - var_1.a.a))))));
    global4 = array<Struct_1, 24>();
    var var_3 = !any(!vec3<bool>(global1.a.x, var_0.x | false, true));
    return _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(min(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global1.b, -29044i, global1.b), ~vec4<i32>(global1.b, -2147483647i, -87950i, 0i)), vec4<i32>(u_input.a, -1i, countOneBits(2147483647i), firstTrailingBit(-2147483647i))), vec4<i32>(-1i) * -vec4<i32>(arg_0.b, -2147483647i, u_input.a, var_1.a.c.x)), vec4<i32>(min(_wgslsmith_mod_i32(var_1.a.c.x, ~3573i), _wgslsmith_clamp_i32(u_input.a, arg_0.b << (4294967295u % 32u), i32(-1i) * -1i)), -_wgslsmith_div_i32(-arg_0.b, global1.b), select(_wgslsmith_add_i32(var_1.b.b, _wgslsmith_div_i32(u_input.a, -8311i)), var_1.b.b ^ ~(-26621i), global0[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_clamp_i32(var_1.a.c.x, arg_0.b, -1i) | ~(i32(-1i) * -47014i)));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-min(vec4<i32>(u_input.a, u_input.a, global1.b, 1i), vec4<i32>(1i, global1.b, 2147483647i, u_input.a)), vec4<i32>(abs(-42324i), global1.b, -30734i, u_input.a), vec4<i32>(7513i, u_input.a, u_input.a, global1.b) << (firstLeadingBit(vec4<u32>(78444u, u_input.c.x, 0u, global1.c)) % vec4<u32>(32u))) & func_3(Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(23747u, 10u)], global1.a.x, false), ~9848i, _wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(0u, u_input.d)))), min(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.b, global1.b, u_input.a, -1i) ^ ~vec4<i32>(-9258i, u_input.a, 2147483647i, 18111i), -vec4<i32>(39825i, u_input.a, -34800i, u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, ~u_input.a, u_input.a, -u_input.a), countOneBits(-vec4<i32>(global1.b, -7723i, -35940i, u_input.a)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(203f * -2097f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-303f, -1754f)), _wgslsmith_div_f32(-102f, -622f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1826f, -1836f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1953f - -792f)), _wgslsmith_f_op_f32(min(-339f, _wgslsmith_f_op_f32(step(-1386f, 1133f))))))));
    return _wgslsmith_mult_i32(-1i, 0i >> (global1.c % 32u));
}

fn func_1() -> vec3<bool> {
    var var_0 = vec3<i32>(func_2(), global1.b, u_input.a);
    var var_1 = Struct_3(vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(~u_input.d, 10u)], !global0[_wgslsmith_index_u32(19356u, 10u)], !global1.a.x)), global1.a.x, all(select(vec3<bool>(false, global1.a.x, global1.a.x), select(vec3<bool>(true, true, true), vec3<bool>(global1.a.x, global0[_wgslsmith_index_u32(u_input.b, 10u)], global1.a.x), true), var_0.x < u_input.a))), max(~global1.b, -_wgslsmith_add_i32(global1.b, _wgslsmith_add_i32(var_0.x, -26896i))), countOneBits(reverseBits(u_input.b) ^ abs(~global1.c)));
    global2 = array<vec3<u32>, 10>();
    var var_2 = Struct_2(1495f);
    var_0 = vec3<i32>(-u_input.a, -16314i, -50037i);
    return !(!select(select(vec3<bool>(true, true, true), global1.a, vec3<bool>(false, var_1.a.x, true)), select(vec3<bool>(false, true, var_1.a.x), vec3<bool>(false, false, var_1.a.x), vec3<bool>(global1.a.x, true, true)), !(!var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(global4[_wgslsmith_index_u32(1u | global1.c, 24u)], Struct_3(select(vec3<bool>(false, false, select(global0[_wgslsmith_index_u32(23261u, 10u)], global0[_wgslsmith_index_u32(global1.c, 10u)], false)), func_1(), vec3<bool>(true, true, all(vec3<bool>(global1.a.x, global0[_wgslsmith_index_u32(0u, 10u)], true)))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(67214i, u_input.a, global1.b, -2147483647i), ~vec4<i32>(0i, 48473i, 5262i, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, global1.b, global1.b, 1i), vec4<i32>(-2147483647i, -2147483647i, 26694i, -2147483647i))), ~countOneBits(vec4<i32>(u_input.a, 16338i, global1.b, u_input.a))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, u_input.d) << ((vec2<u32>(18547u, u_input.b) & u_input.c.xz) % vec2<u32>(32u)), ~vec2<u32>(global1.c, global1.c))));
    global3 = array<vec2<u32>, 4>();
    var var_1 = false;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(var_0.a.a - -347f));
    var var_3 = var_0.a;
    var_3 = Struct_1(var_3.a, vec3<u32>(_wgslsmith_mult_u32(~3450u << (firstLeadingBit(var_3.b.x) % 32u), 61091u), (var_0.a.b.x ^ u_input.c.x) | _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 4294967295u, 57790u), var_0.a.b.x), ~var_0.b.c), reverseBits(var_3.c));
    let var_4 = countOneBits(var_3.b.x);
    var var_5 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-2020f, 1099f, global1.a.x)), var_0.a.a)) - vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, var_0.a.a)) * _wgslsmith_f_op_f32(-1446f - 1000f)))), ~min(u_input.c, vec3<u32>(var_0.b.c, var_3.b.x, _wgslsmith_mod_u32(u_input.b, 0u))), _wgslsmith_f_op_f32(-var_2.a));
}

