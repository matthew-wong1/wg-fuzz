struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(1u, 4294967295u, 80606u), vec3<u32>(20835u, 4294967295u, 54771u), vec3<u32>(0u, 4294967295u, 15795u), vec3<u32>(0u, 0u, 1u), vec3<u32>(54969u, 15194u, 1u), vec3<u32>(0u, 6782u, 25676u), vec3<u32>(1807u, 1u, 10577u), vec3<u32>(23917u, 0u, 12423u), vec3<u32>(16721u, 1u, 22525u), vec3<u32>(80523u, 4294967295u, 39802u), vec3<u32>(0u, 4294967295u, 40122u), vec3<u32>(1u, 0u, 54330u), vec3<u32>(1u, 9867u, 17769u), vec3<u32>(1u, 1u, 24477u), vec3<u32>(1u, 568u, 0u), vec3<u32>(0u, 120807u, 4294967295u), vec3<u32>(4294967295u, 31856u, 28620u), vec3<u32>(36130u, 0u, 5440u), vec3<u32>(1u, 1u, 49401u), vec3<u32>(4294967295u, 63664u, 8354u), vec3<u32>(50207u, 0u, 51u), vec3<u32>(4294967295u, 3358u, 17992u), vec3<u32>(35266u, 22170u, 4294967295u), vec3<u32>(21572u, 29946u, 34268u), vec3<u32>(25803u, 1u, 35550u), vec3<u32>(63406u, 16727u, 14398u), vec3<u32>(0u, 31784u, 6272u), vec3<u32>(19175u, 20908u, 756u), vec3<u32>(1u, 679u, 0u));

var<private> global2: Struct_4 = Struct_4(Struct_1(1i, -983f, 1i, vec3<f32>(942f, -2037f, -1573f)), Struct_2(Struct_1(-1i, -1143f, 0i, vec3<f32>(-1450f, 562f, -1046f)), -1359i, vec3<u32>(25511u, 14267u, 66245u), Struct_1(53367i, 264f, -1i, vec3<f32>(-368f, -1147f, -961f))), vec2<f32>(472f, 354f));

var<private> global3: vec3<bool>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool) -> vec4<u32> {
    let var_0 = true;
    var var_1 = global2.c;
    global0 = array<bool, 28>();
    global1 = array<vec3<u32>, 29>();
    var var_2 = i32(-1i) * -abs(~(-6713i));
    return _wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, u_input.a.x, u_input.b, global2.b.c.x), vec4<u32>(1u, global2.b.c.x, global2.b.c.x, 4294967295u), vec4<u32>(17551u, global2.b.c.x, 4294967295u, 70956u) & ~vec4<u32>(0u, global2.b.c.x, 4294967295u, 42228u)), ~(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(52332u, 52469u, u_input.a.x, 0u), vec4<u32>(global2.b.c.x, 34148u, u_input.a.x, 1u)), vec4<u32>(52548u, u_input.b, global2.b.c.x, global2.b.c.x)) << (select(_wgslsmith_add_vec4_u32(vec4<u32>(66768u, 0u, 107266u, 34600u), vec4<u32>(global2.b.c.x, global2.b.c.x, 20028u, 18803u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.b.c.x, global2.b.c.x, 1u, 0u), vec4<u32>(0u, 22987u, global2.b.c.x, 4294967295u), vec4<u32>(30763u, 34252u, 94788u, global2.b.c.x)), !var_0) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_5) -> Struct_4 {
    let var_0 = u_input.c;
    global1 = array<vec3<u32>, 29>();
    var var_1 = Struct_4(Struct_1(~_wgslsmith_div_i32(2147483647i, _wgslsmith_mod_i32(arg_2.b.x, 1i)), _wgslsmith_f_op_f32(f32(-1f) * -433f), countOneBits(reverseBits(var_0.x & var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, -621f, 490f))))), global2.b, global2.a.d.xy);
    let var_2 = func_2(all(!vec2<bool>(!arg_2.c.x, true)));
    let var_3 = Struct_2(var_1.b.d, 26516i, global1[_wgslsmith_index_u32(1u, 29u)], Struct_1(var_1.a.c & _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1.a.a, arg_2.b.x, -2147483647i, -4672i), vec4<i32>(-5880i, 33065i, -2147483647i, arg_2.b.x), arg_2.c), vec4<i32>(-1i, 0i, 1i, -2147483647i)), -397f, _wgslsmith_add_i32(_wgslsmith_mult_i32(global2.a.c, _wgslsmith_dot_vec2_i32(vec2<i32>(2571i, -2147483647i), vec2<i32>(0i, 2147483647i))), 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d.x, -691f, var_1.b.d.d.x), global2.b.d.d), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-231f, global2.c.x, 296f)))))));
    return Struct_4(var_3.a, Struct_2(Struct_1(-2147483647i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.d.x + 1314f), -1000f)), max(i32(-1i) * -20722i, 2147483647i << (global2.b.c.x % 32u)), var_3.d.d), arg_2.b.x, abs(var_3.c | ~var_2.yzz), var_3.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), var_3.d.d.x));
}

fn func_3(arg_0: i32) -> bool {
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(global2.b.d, global2.b.c.x, Struct_5(-273f, u_input.c, vec4<bool>(false || (global2.a.d.x > global2.b.a.d.x), true, true, global3.x)));
    var var_0 = Struct_4(global2.a, global2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.d.x, _wgslsmith_f_op_f32(-534f + global2.b.d.d.x)))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -225f);
    var var_2 = 1u;
    var_2 = ~u_input.a.x >> (~func_2(func_3(u_input.c.x)).x % 32u);
    global3 = !vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_0.b.c.x, func_1(Struct_1(1i, var_0.b.a.b, 1i, global2.a.d), ~global2.b.c.x, Struct_5(834f, vec2<i32>(7932i, -17886i), vec4<bool>(global0[_wgslsmith_index_u32(global2.b.c.x, 28u)], false, global0[_wgslsmith_index_u32(global2.b.c.x, 28u)], false))).b.c.x), 28u)], !global0[_wgslsmith_index_u32(0u, 28u)], all(select(select(vec3<bool>(global3.x, global0[_wgslsmith_index_u32(4294967295u, 28u)], true), vec3<bool>(true, global3.x, false), global0[_wgslsmith_index_u32(var_0.b.c.x, 28u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 28u)], global3.x), true)));
    var var_3 = Struct_3(global2.b.a, reverseBits(~var_0.b.c.yy >> (var_0.b.c.xy % vec2<u32>(32u))));
    global1 = array<vec3<u32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, 4294967295u, 57704u, 62298u)), ~select(~vec4<u32>(7466u, var_3.b.x, var_0.b.c.x, var_3.b.x), ~vec4<u32>(8764u, 18192u, 0u, global2.b.c.x), all(global3.zz))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-874f, var_0.a.d.x, var_1, -431f))) * vec4<f32>(var_3.a.d.x, var_0.c.x, _wgslsmith_f_op_f32(step(-1402f, 1324f)), 708f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_3.a.d.x)), _wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(1494f + var_1)), 830f)), 2147483647i, ~(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.b.c.x, 40106u, u_input.a.x, 10416u), vec4<u32>(var_3.b.x, 1u, 1u, 4294967295u)), countOneBits(vec4<u32>(70291u, u_input.a.x, 11582u, 26453u)))));
}

