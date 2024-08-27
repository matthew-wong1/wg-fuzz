struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: array<bool, 14>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = -559f;
    let var_1 = Struct_3(Struct_2(arg_0.d.a));
    var var_2 = Struct_4(Struct_3(Struct_2(Struct_1(arg_0.d.a.a, true, vec2<i32>(-2147483647i, -1i), reverseBits(vec4<u32>(arg_1, var_1.a.a.a.x, 4294967295u, 4294967295u)), vec2<u32>(arg_2.a.a.e.x, var_1.a.a.a.x) ^ arg_3.a.e))), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~4294967295u, 15u)])), ~vec3<u32>(~countOneBits(15302u), arg_1, arg_0.e.a.a.e.x ^ arg_2.a.a.a.x), Struct_2(Struct_1(max(vec4<u32>(33853u, 32979u, 4294967295u, 24563u), vec4<u32>(70175u, 28854u, arg_1, arg_0.a.a.a.a.x)), global1[_wgslsmith_index_u32(arg_2.a.a.e.x, 14u)], ~(-arg_2.a.a.c), ~vec4<u32>(0u, arg_1, 0u, arg_1), _wgslsmith_mult_vec2_u32(arg_2.a.a.e, vec2<u32>(37729u, arg_1)))), Struct_3(Struct_2(arg_0.d.a)));
    let var_3 = arg_2;
    let var_4 = Struct_4(Struct_3(Struct_2(var_2.d.a)), _wgslsmith_f_op_f32(-var_0), var_1.a.a.a.yzx, var_2.e.a, Struct_3(var_3.a));
    return var_2.e.a.a.a.zx;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = vec3<i32>(arg_1, u_input.b.x ^ _wgslsmith_mod_i32(u_input.a, _wgslsmith_add_i32(_wgslsmith_div_i32(arg_2, -12133i), _wgslsmith_mult_i32(-1i, -2147483647i))), 32540i);
    var var_1 = true;
    global0 = array<f32, 15>();
    var var_2 = Struct_4(Struct_3(Struct_2(Struct_1(~vec4<u32>(60406u, 31357u, 7999u, 14365u), !global1[_wgslsmith_index_u32(20001u, 14u)], _wgslsmith_mult_vec2_i32(vec2<i32>(1i, arg_2), vec2<i32>(1i, -1i)), vec4<u32>(66394u, 55795u, 45932u, 0u), min(vec2<u32>(0u, 51923u), vec2<u32>(4294967295u, 41549u))))), 688f, ~firstLeadingBit(vec3<u32>(4294967295u, 1u, _wgslsmith_clamp_u32(24741u, 111458u, 101446u))), Struct_2(Struct_1(abs(vec4<u32>(1u, 1u, 1u, 1u)), true, reverseBits(u_input.b), vec4<u32>(~4294967295u, _wgslsmith_add_u32(34727u, 0u), _wgslsmith_mult_u32(18017u, 41861u), 0u), func_3(Struct_4(Struct_3(Struct_2(Struct_1(vec4<u32>(56001u, 55735u, 1u, 19629u), false, vec2<i32>(arg_2, 0i), vec4<u32>(4238u, 45502u, 26043u, 1u), vec2<u32>(1u, 6636u)))), global0[_wgslsmith_index_u32(4294967295u, 15u)], vec3<u32>(4294967295u, 8428u, 1u), Struct_2(Struct_1(vec4<u32>(35150u, 4294967295u, 4294967295u, 1u), true, var_0.xz, vec4<u32>(1u, 15073u, 0u, 4294967295u), vec2<u32>(0u, 45042u))), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 1u, 2912u, 61u), false, vec2<i32>(46554i, u_input.b.x), vec4<u32>(145002u, 27531u, 10365u, 65686u), vec2<u32>(0u, 12816u))))), 69249u, Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 1u, 1u), true, u_input.b, vec4<u32>(10572u, 39592u, 1u, 66105u), vec2<u32>(14376u, 4294967295u)))), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 1u, 0u), true, u_input.b, vec4<u32>(39859u, 0u, 1u, 17276u), vec2<u32>(9609u, 60345u)))))), Struct_3(Struct_2(Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 11860u, 62127u), vec4<u32>(1u, 4294967295u, 1u, 5393u)), arg_0.x, vec2<i32>(arg_2, var_0.x), ~vec4<u32>(0u, 0u, 0u, 4294967295u), ~vec2<u32>(4294967295u, 4294967295u)))));
    var var_3 = select(~select(var_2.e.a.a.d.x, ~(var_2.c.x >> (0u % 32u)), true | var_2.a.a.a.b), _wgslsmith_add_u32(min(26957u, 44056u), 24080u), var_2.d.a.b);
    return var_2.d.a;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_4(Struct_3(Struct_2(func_2(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], arg_1.b, arg_1.b), _wgslsmith_mult_i32(6738i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -4748i, 2755i, -1i), vec4<i32>(-12852i, 17705i, 33901i, u_input.b.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 15u)] * 633f))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(min(reverseBits(arg_1.d.xyy), reverseBits(arg_1.a.wzx)), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(arg_1.a.ywy, arg_1.a.yyy), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.d.x, arg_1.a.x), vec3<u32>(arg_1.e.x, 0u, arg_1.a.x), vec3<u32>(49826u, arg_1.e.x, 0u)))), arg_1.a.wwz), Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_1.d.x, arg_1.e.x, 4294967295u), ~arg_1.a), global1[_wgslsmith_index_u32(arg_1.d.x, 14u)], _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, 50365i), u_input.b), arg_1.a, vec2<u32>(arg_1.d.x, arg_1.a.x))), Struct_3(Struct_2(arg_1)));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2323f * 261f))) - 1420f))), _wgslsmith_f_op_f32(var_0.b * global0[_wgslsmith_index_u32(1u, 15u)])));
    global0 = array<f32, 15>();
    let var_2 = _wgslsmith_mult_vec2_u32(~var_0.d.a.a.yz, vec2<u32>(~(4676u << (~arg_1.d.x % 32u)), 1u));
    let var_3 = select(vec4<bool>(all(!select(vec2<bool>(var_0.a.a.a.b, true), vec2<bool>(false, false), false)), !(true & any(vec4<bool>(var_0.a.a.a.b, var_0.e.a.a.b, true, true))), any(select(!vec4<bool>(false, arg_1.b, global1[_wgslsmith_index_u32(arg_1.d.x, 14u)], true), select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.d.a.a.x, 14u)], arg_1.b, arg_1.b, false), vec4<bool>(true, false, true, arg_1.b), global1[_wgslsmith_index_u32(arg_1.d.x, 14u)]), true)), var_1 >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(var_2.x, 15u)]))), vec4<bool>(!var_0.d.a.b, global1[_wgslsmith_index_u32(~abs(~arg_1.a.x), 14u)], !(arg_1.c.x < max(-10440i, -7106i)), arg_1.b), 7029u < ~_wgslsmith_div_u32(0u, var_2.x));
    return firstLeadingBit(~arg_1.a.x);
}

fn func_1() -> vec4<bool> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(65470u, 15u)])), -151f))) + 576f), -1588f);
    let var_1 = Struct_1(vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(21153u, 1u, 30729u), vec3<u32>(1u, 1u, 1u))), ~(firstTrailingBit(0u) << (1u % 32u)), ~countOneBits(select(4294967295u, 4294967295u, global1[_wgslsmith_index_u32(51833u, 14u)])), select(firstTrailingBit(28928u), ~1u, any(!vec3<bool>(global1[_wgslsmith_index_u32(112486u, 14u)], global1[_wgslsmith_index_u32(45690u, 14u)], true)))), any(!vec3<bool>(u_input.a != u_input.a, global1[_wgslsmith_index_u32(1u, 14u)], true)), ~(-_wgslsmith_mod_vec2_i32(u_input.b, ~u_input.b)), ~vec4<u32>(51952u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 82975u), reverseBits(vec2<u32>(11828u, 11076u))), func_4(min(u_input.b.x, u_input.b.x), func_2(vec3<bool>(false, true, global1[_wgslsmith_index_u32(45692u, 14u)]), u_input.b.x, u_input.a)), max(_wgslsmith_mult_u32(37214u, 24013u), func_4(60130i, Struct_1(vec4<u32>(1423u, 0u, 25491u, 1u), false, vec2<i32>(-2147483647i, u_input.b.x), vec4<u32>(159815u, 0u, 830u, 31271u), vec2<u32>(4294967295u, 0u))))), ~vec2<u32>(func_2(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 14u)], true), 45366i, countOneBits(u_input.b.x)).d.x, ~_wgslsmith_add_u32(20225u, 0u)));
    let var_2 = select(vec2<bool>(!(all(vec2<bool>(global1[_wgslsmith_index_u32(var_1.d.x, 14u)], var_1.b)) && true), var_1.e.x < var_1.a.x), !select(!vec2<bool>(global1[_wgslsmith_index_u32(var_1.d.x, 14u)], true), vec2<bool>(0i <= u_input.b.x, select(var_1.b, global1[_wgslsmith_index_u32(32326u, 14u)], var_1.b)), select(vec2<bool>(var_1.b, global1[_wgslsmith_index_u32(var_1.d.x, 14u)]), vec2<bool>(false, var_1.b), any(vec3<bool>(global1[_wgslsmith_index_u32(29442u, 14u)], var_1.b, false)))), !select(vec2<bool>(var_1.b, 381f == var_0.x), vec2<bool>(var_1.b, true), var_1.b));
    let var_3 = !vec3<bool>(true, all(select(vec4<bool>(var_2.x, global1[_wgslsmith_index_u32(57266u, 14u)], global1[_wgslsmith_index_u32(var_1.e.x, 14u)], var_1.b), !vec4<bool>(global1[_wgslsmith_index_u32(29390u, 14u)], global1[_wgslsmith_index_u32(var_1.a.x, 14u)], false, var_2.x), !vec4<bool>(false, global1[_wgslsmith_index_u32(57865u, 14u)], global1[_wgslsmith_index_u32(var_1.a.x, 14u)], false))), false);
    var var_4 = -2147483647i;
    return vec4<bool>(var_1.b & global1[_wgslsmith_index_u32(var_1.a.x, 14u)], true, false, var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!func_1()));
    global0 = array<f32, 15>();
    let var_1 = Struct_3(Struct_2(Struct_1(countOneBits(vec4<u32>(48060u, 10542u, 47530u, 1u)), false, -vec2<i32>(38519i, 41831i), ~min(vec4<u32>(0u, 0u, 96992u, 1u), vec4<u32>(4294967295u, 23436u, 42743u, 0u)), min(vec2<u32>(1u, 7565u), vec2<u32>(0u, 1u)) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)))));
    var var_2 = Struct_4(var_1, global0[_wgslsmith_index_u32(~firstLeadingBit(~_wgslsmith_mult_u32(var_1.a.a.a.x, var_1.a.a.d.x)), 15u)], _wgslsmith_div_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(firstTrailingBit(var_1.a.a.d.yww), _wgslsmith_add_vec3_u32(var_1.a.a.a.yzw, var_1.a.a.a.zyz))), vec3<u32>(var_1.a.a.a.x, 4294967295u, 4294967295u)), var_1.a, var_1);
    var var_3 = var_2.e.a.a.e.x;
    var var_4 = Struct_2(var_1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(var_1.a.a.a.x, 15u)])))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, 789f)), global0[_wgslsmith_index_u32(var_1.a.a.a.x & var_2.c.x, 15u)]) + _wgslsmith_f_op_f32(-488f - 458f))), -vec3<i32>(~u_input.b.x, -26655i, ~1i));
}

