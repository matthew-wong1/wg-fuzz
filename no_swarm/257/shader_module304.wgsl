struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(20773u, 49250u), vec2<u32>(1u, 1u), vec2<u32>(17654u, 4294967295u), vec2<u32>(117985u, 8625u), vec2<u32>(53786u, 1u), vec2<u32>(641u, 4294967295u), vec2<u32>(12115u, 0u), vec2<u32>(1u, 13558u), vec2<u32>(2358u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(42555u, 0u), vec2<u32>(1u, 1u), vec2<u32>(86504u, 48768u), vec2<u32>(0u, 76069u), vec2<u32>(20222u, 4294967295u), vec2<u32>(47702u, 32906u), vec2<u32>(21665u, 53382u), vec2<u32>(2719u, 0u), vec2<u32>(16342u, 53231u), vec2<u32>(54729u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(41347u, 18767u), vec2<u32>(40033u, 0u), vec2<u32>(85353u, 4294967295u), vec2<u32>(117918u, 54859u), vec2<u32>(4294967295u, 57479u), vec2<u32>(1u, 17803u), vec2<u32>(35262u, 0u), vec2<u32>(20419u, 0u), vec2<u32>(100587u, 1u), vec2<u32>(30085u, 15835u), vec2<u32>(6678u, 4294967295u));

var<private> global1: array<i32, 1> = array<i32, 1>(0i);

var<private> global2: array<bool, 32> = array<bool, 32>(true, true, false, true, false, false, true, false, true, false, false, true, false, false, true, false, true, true, true, true, false, true, false, false, true, true, true, false, true, true, true, true);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    global0 = array<vec2<u32>, 32>();
    let var_0 = ~u_input.a.xxx;
    global2 = array<bool, 32>();
    global1 = array<i32, 1>();
    let var_1 = 1064f;
    return global2[_wgslsmith_index_u32(~19274u, 32u)];
}

fn func_2(arg_0: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_mult_u32(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(103562u, u_input.c, u_input.d.x) | _wgslsmith_mult_u32(u_input.a.x, 0u), u_input.d.x), 0u);
    return func_3();
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = -_wgslsmith_add_i32(i32(-1i) * -abs(0i), abs(arg_0.c.a));
    let var_1 = select(vec3<bool>(true, func_2(_wgslsmith_mod_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(0u, 1u)], 17192i, global1[_wgslsmith_index_u32(35927u, 1u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(32874u, 1u)], 1i, 2147483647i), vec3<i32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.c, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)])))), global2[_wgslsmith_index_u32(71423u, 32u)]), !vec3<bool>(global2[_wgslsmith_index_u32(~(~arg_0.d), 32u)], true & global2[_wgslsmith_index_u32(4294967295u, 32u)], true), all(select(select(select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(u_input.d.x, 32u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(arg_0.c.b, 32u)])), select(vec2<bool>(false, true), vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 32u)]), global2[_wgslsmith_index_u32(0u, 32u)]), global2[_wgslsmith_index_u32(reverseBits(u_input.e), 32u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 32u)], false), select(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.a.c, 32u)], global2[_wgslsmith_index_u32(69604u, 32u)]), vec2<bool>(global2[_wgslsmith_index_u32(15805u, 32u)], false), global2[_wgslsmith_index_u32(0u, 32u)]), global2[_wgslsmith_index_u32(u_input.d.x, 32u)]), func_3() || true)));
    var var_2 = arg_0.c;
    var_2 = arg_0.e;
    let var_3 = Struct_2(arg_0.c, vec4<i32>(reverseBits(2147483647i), arg_0.b.x, -(~arg_0.b.x), reverseBits(_wgslsmith_mod_i32(arg_0.a.a, -41630i)) & _wgslsmith_add_i32(var_2.a, -46937i)), arg_0.a, _wgslsmith_mod_u32(4294967295u, _wgslsmith_clamp_u32(arg_0.a.b << (var_2.b % 32u), 8410u & (u_input.c >> (u_input.d.x % 32u)), _wgslsmith_mod_u32(~0u, ~var_2.b))), arg_0.a);
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec4_u32(abs(~firstTrailingBit(u_input.a)) ^ (select(~vec4<u32>(arg_1.b, arg_1.c, u_input.c, u_input.a.x), max(u_input.a, vec4<u32>(u_input.d.x, 26859u, u_input.d.x, 1u)), !arg_0.x) << (reverseBits(~vec4<u32>(0u, arg_1.c, 0u, arg_1.b)) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(abs(vec4<u32>(abs(92427u), countOneBits(u_input.d.x), abs(1u), 67573u | u_input.e)), ~((u_input.a | u_input.a) << (vec4<u32>(u_input.d.x, 1u, arg_1.b, 296u) % vec4<u32>(32u)))));
    let var_1 = Struct_1(_wgslsmith_mod_i32(1i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32((u_input.a.x | 5507u) >> (4294967295u % 32u), 1u)], -(~(-2147483647i)))), _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_div_u32(1u, ~arg_1.c)), min(13313u, 20925u)), ~u_input.a.x, arg_1.d);
    let var_2 = Struct_2(Struct_1(firstTrailingBit(var_1.a), ~(~u_input.c) | _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(52004u, 4294967295u, arg_1.c, 44467u), vec4<u32>(arg_1.c, 19785u, 9395u, 84346u)), 50963u), ~(min(var_0.x, 15412u) & firstLeadingBit(109912u)), arg_1.d), vec4<i32>(min(-1i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_1.a, -57306i), ~(-2147483647i), _wgslsmith_mult_i32(arg_1.a, 21273i))), 2147483647i, u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.yx, countOneBits(min(u_input.b.ww, vec2<i32>(18895i, 2147483647i))))), arg_1, var_1.c, Struct_1(u_input.b.x, var_0.x, ~(~var_1.b), arg_1.d));
    global1 = array<i32, 1>();
    global2 = array<bool, 32>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!vec4<bool>(true & global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(1u, 32u)], !func_1(Struct_2(Struct_1(11261i, u_input.a.x, u_input.d.x, 334f), vec4<i32>(global1[_wgslsmith_index_u32(u_input.e, 1u)], global1[_wgslsmith_index_u32(u_input.e, 1u)], u_input.b.x, u_input.b.x), Struct_1(2147483647i, 1u, 25134u, -774f), u_input.a.x, Struct_1(global1[_wgslsmith_index_u32(u_input.d.x, 1u)], 9821u, 593u, -1081f))), true), Struct_1(select(_wgslsmith_dot_vec4_i32(~vec4<i32>(-34581i, 27460i, u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 1u)]), vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.d.x, 1u)], 0i, -72367i)), u_input.b.x << (u_input.c % 32u), !global2[_wgslsmith_index_u32(1u, 32u)] || true), 4294967295u, min(41707u, u_input.e), _wgslsmith_f_op_f32(-1f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.d) * 264f), _wgslsmith_f_op_f32(f32(-1f) * -738f), _wgslsmith_f_op_f32(1323f + _wgslsmith_f_op_f32(-var_0.a.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-602f, var_0.e.d, false)), _wgslsmith_f_op_f32(f32(-1f) * -1090f)))));
    let var_2 = 25327u;
    var_0 = func_4(select(!vec4<bool>(any(vec2<bool>(false, global2[_wgslsmith_index_u32(52251u, 32u)])), func_1(Struct_2(Struct_1(-25423i, 0u, u_input.e, var_1.x), var_0.b, Struct_1(1i, var_0.e.c, var_0.a.b, var_1.x), 1u, var_0.c)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, var_0.a.c), 32u)], any(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 32u)], false, global2[_wgslsmith_index_u32(7153u, 32u)]))), !(!(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], false, global2[_wgslsmith_index_u32(44013u, 32u)], true))), true), var_0.c);
    var var_3 = select(!select(vec3<bool>(true, true, true), !select(vec3<bool>(global2[_wgslsmith_index_u32(91724u, 32u)], global2[_wgslsmith_index_u32(0u, 32u)], false), vec3<bool>(global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(1u, 32u)]), vec3<bool>(false, false, global2[_wgslsmith_index_u32(var_2, 32u)])), global2[_wgslsmith_index_u32(1u, 32u)]), vec3<bool>(false, !any(vec4<bool>(global2[_wgslsmith_index_u32(1u, 32u)], true, global2[_wgslsmith_index_u32(var_0.e.b, 32u)], global2[_wgslsmith_index_u32(var_2, 32u)])), !(var_0.a.c <= var_2) | global2[_wgslsmith_index_u32((var_2 >> (var_2 % 32u)) << (_wgslsmith_add_u32(var_2, var_2) % 32u), 32u)]), func_2(var_0.b.zwz));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2, firstTrailingBit(1u) >> (1u % 32u), ~_wgslsmith_add_u32(~4294967295u, 4294967295u >> (u_input.d.x % 32u))));
}

