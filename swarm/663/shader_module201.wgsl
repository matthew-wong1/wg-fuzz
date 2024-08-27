struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(false, true, false, false, false, true, true, false, false, false, true, true, false, true, false, true, true, false, true, true, false, false, false, false, false, false, true, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_2) -> u32 {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a.x, -arg_0, arg_0) >> (vec4<u32>(1u, ~1u, 1u, ~1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(firstLeadingBit(abs(-vec4<i32>(-1i, 0i, -18679i, -9813i))), select(firstTrailingBit(~vec4<i32>(-8368i, u_input.a.x, -1i, -2147483647i)), vec4<i32>(arg_0, min(2147483647i, 20203i), firstLeadingBit(arg_0), firstTrailingBit(24706i)), true)));
    global0 = array<bool, 28>();
    let var_1 = Struct_1(!arg_2.a.a, !any(select(vec4<bool>(false, arg_2.a.d, true, false), select(vec4<bool>(true, arg_2.a.b, false, global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec4<bool>(arg_2.a.a.x, true, false, false), global0[_wgslsmith_index_u32(5671u, 28u)]), !vec4<bool>(global0[_wgslsmith_index_u32(49079u, 28u)], false, global0[_wgslsmith_index_u32(25462u, 28u)], true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, -630f)))), global0[_wgslsmith_index_u32(~(~abs(~28699u)), 28u)], !all(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(30972u, 1u), 28u)], !global0[_wgslsmith_index_u32(17226u, 28u)], true)));
    global0 = array<bool, 28>();
    let var_2 = vec3<bool>(true, -2147483647i == abs(_wgslsmith_add_i32(countOneBits(var_0.x), -var_0.x)), !(281f == arg_2.a.c));
    return 2343u >> (~select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(25949u, 53306u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(11004u, 1u, 1u), vec3<u32>(0u, 1u, 74251u)), false) % 32u);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = select(vec3<bool>(any(!(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 28u)], false, global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(arg_0.x, 28u)]))), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(33104u, func_3(-1i, vec3<f32>(-1078f, -404f, 2691f), Struct_2(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 28u)], true), global0[_wgslsmith_index_u32(arg_2.x, 28u)], -279f, global0[_wgslsmith_index_u32(arg_2.x, 28u)], true)))), 28u)], true), !select(select(!vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(arg_2.x, 28u)]), !vec3<bool>(false, false, global0[_wgslsmith_index_u32(arg_0.x, 28u)]), false), !select(vec3<bool>(global0[_wgslsmith_index_u32(19487u, 28u)], global0[_wgslsmith_index_u32(27183u, 28u)], global0[_wgslsmith_index_u32(arg_0.x, 28u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(arg_2.x, 28u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 28u)], true, global0[_wgslsmith_index_u32(arg_0.x, 28u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], true, global0[_wgslsmith_index_u32(arg_2.x, 28u)]), vec3<bool>(true, true, true), false)), select(select(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(arg_2.x, 28u)], false)), vec3<bool>(true, global0[_wgslsmith_index_u32(~68806u, 28u)], any(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_2.x, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]))), false), !vec3<bool>(all(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 28u)], true, true)), global0[_wgslsmith_index_u32(~79879u, 28u)], global0[_wgslsmith_index_u32(~26100u, 28u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(78660u, 28u)], true)));
    let var_1 = ~arg_2.x;
    let var_2 = 5495u;
    let var_3 = vec2<bool>(false, true);
    let var_4 = Struct_5(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1020f)) * 534f)), Struct_3(Struct_2(Struct_1(vec2<bool>(var_3.x, false), global0[_wgslsmith_index_u32(var_2, 28u)], -375f, var_0.x, var_3.x))), Struct_1(var_3, var_3.x || var_0.x, _wgslsmith_f_op_f32(-813f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), all(!vec2<bool>(var_0.x, true)), true), Struct_3(Struct_2(Struct_1(var_3, true, 736f, true, var_3.x))), !vec2<bool>(all(vec2<bool>(true, false)), any(vec4<bool>(false, true, true, false)))), select(~(4294967295u & firstTrailingBit(arg_0.x)), ~max(~34105u, abs(arg_2.x)), !var_3.x), false);
    return var_4.a.b.a.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_5) -> Struct_2 {
    var var_0 = u_input.a.x;
    var var_1 = vec4<i32>(arg_1, 0i, abs(_wgslsmith_add_i32(max(9985i, u_input.a.x), reverseBits(0i)) >> (abs(arg_0.x) % 32u)), max(arg_1, 24857i));
    global0 = array<bool, 28>();
    let var_2 = 62277i;
    global0 = array<bool, 28>();
    return Struct_2(func_2(arg_0, vec3<i32>(53621i, -22247i, 1i), ~min(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.b, arg_2.b, arg_2.b, 1u), vec4<u32>(arg_2.b, 28751u, 4294967295u, 0u)), vec4<u32>(arg_0.x, 0u, arg_2.b, arg_0.x))));
}

fn func_1() -> vec4<u32> {
    let var_0 = func_4(vec3<u32>(1u, 1u, 1u), u_input.a.x, Struct_5(Struct_4(_wgslsmith_f_op_f32(abs(-1354f)), Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), global0[_wgslsmith_index_u32(58778u, 28u)], -1013f, global0[_wgslsmith_index_u32(45806u, 28u)], false))), func_2(select(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(40113u, 0u, 0u), global0[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-11245i, u_input.a.x, 35489i)), ~vec4<u32>(73829u, 1u, 57637u, 1u)), Struct_3(Struct_2(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(52948u, 28u)]), false, 2302f, false, true))), vec2<bool>(true, !global0[_wgslsmith_index_u32(0u, 28u)])), ~1u, select(global0[_wgslsmith_index_u32(~min(39269u, 60115u), 28u)], true, true)));
    global0 = array<bool, 28>();
    let var_1 = Struct_5(Struct_4(_wgslsmith_f_op_f32(max(var_0.a.c, _wgslsmith_f_op_f32(sign(var_0.a.c)))), Struct_3(func_4(vec3<u32>(1u, 1u, 1u), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), u_input.a), Struct_5(Struct_4(var_0.a.c, Struct_3(Struct_2(var_0.a)), Struct_1(var_0.a.a, true, var_0.a.c, true, var_0.a.b), Struct_3(var_0), var_0.a.a), 1u, global0[_wgslsmith_index_u32(29263u, 28u)]))), func_2(~select(vec3<u32>(38207u, 1u, 1u), vec3<u32>(0u, 27345u, 31452u), true), vec3<i32>(1i, 1i, 1i), ~vec4<u32>(4294967295u, 4294967295u, 1u, 16039u)), Struct_3(Struct_2(Struct_1(var_0.a.a, var_0.a.a.x, var_0.a.c, var_0.a.e, var_0.a.d))), vec2<bool>(true, any(vec4<bool>(true, global0[_wgslsmith_index_u32(19346u, 28u)], true, false)))), ~(~1u), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(max(abs(vec2<u32>(4294967295u, 0u)), vec2<u32>(1u, 38350u)), select(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 28467u), vec2<bool>(true, var_0.a.b)) << (min(vec2<u32>(4294967295u, 0u), vec2<u32>(12351u, 4294967295u)) % vec2<u32>(32u)))), 28u)]);
    let var_2 = firstLeadingBit(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, i32(-1i) * -10508i), -u_input.a), _wgslsmith_sub_vec2_i32(u_input.a, -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a))));
    global0 = array<bool, 28>();
    return ~(~(vec4<u32>(~var_1.b, 4294967295u, var_1.b, ~0u) >> (~(~vec4<u32>(0u, var_1.b, var_1.b, 31373u)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(select(min(~vec4<u32>(10964u, 4294967295u, 13054u, 36194u), select(vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 13097u, 25904u, 0u), global0[_wgslsmith_index_u32(100682u, 28u)])), vec4<u32>(1u, 1u, 1u, 1u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 72719u, 0u), ~vec3<u32>(1u, 12372u, 10295u)), 28u)]) | abs(vec4<u32>(1u, 4294967295u, ~88603u, reverseBits(47532u))), _wgslsmith_mod_vec4_u32(func_1(), vec4<u32>(1u, 1u, 1u, 1u)));
    global0 = array<bool, 28>();
    var var_1 = vec3<i32>(-1i, (_wgslsmith_dot_vec4_i32(vec4<i32>(-14577i, u_input.a.x, 4009i, u_input.a.x) | vec4<i32>(-5731i, u_input.a.x, -58441i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) ^ (u_input.a.x | (i32(-1i) * -23139i))) ^ countOneBits(_wgslsmith_sub_i32(u_input.a.x | 1i, _wgslsmith_clamp_i32(-1i, u_input.a.x, -1i))), -21002i);
    var_0 = 58919u;
    var_1 = select(vec3<i32>(min(-u_input.a.x, u_input.a.x) ^ -var_1.x, -u_input.a.x, var_1.x), _wgslsmith_div_vec3_i32(-countOneBits(firstTrailingBit(vec3<i32>(0i, var_1.x, 999i))), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-33113i, u_input.a.x, 19164i) | vec3<i32>(u_input.a.x, var_1.x, 20798i)), (vec3<i32>(-17601i, 3422i, 1i) | vec3<i32>(0i, var_1.x, u_input.a.x)) >> (vec3<u32>(4294967295u, 4294967295u, 4294967295u) % vec3<u32>(32u)))), select(vec3<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(52206u, 28u)], true, global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(14255u, 28u)])), 2147483647i <= ~var_1.x), vec3<bool>(true, !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(867u, 1u), 28u)], false), true));
    var_1 = abs(vec3<i32>(-_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a.x, var_1.x), var_1.x), var_1.x, 35307i));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().zxz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1468f))))));
}

