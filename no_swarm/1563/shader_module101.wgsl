struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<i32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(1u, 4294967295u), vec2<u32>(4366u, 51489u), vec2<u32>(4294967295u, 0u), vec2<u32>(1269u, 41878u), vec2<u32>(39268u, 4294967295u), vec2<u32>(60746u, 21146u), vec2<u32>(4294967295u, 6333u), vec2<u32>(5990u, 1u), vec2<u32>(4294967295u, 26368u));

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 48797u), vec3<i32>(-11683i, i32(-2147483648), -1i), 1u, 239f)), Struct_2(Struct_1(vec4<u32>(0u, 1u, 4294967295u, 1u), vec3<i32>(1i, 1i, -43278i), 97810u, 574f)), Struct_2(Struct_1(vec4<u32>(19162u, 4294967295u, 51586u, 1u), vec3<i32>(21579i, 0i, -29282i), 1u, 507f)), Struct_2(Struct_1(vec4<u32>(33323u, 1u, 0u, 12156u), vec3<i32>(-52749i, i32(-2147483648), -1460i), 4294967295u, -136f)), Struct_2(Struct_1(vec4<u32>(45033u, 48418u, 1u, 0u), vec3<i32>(14017i, 10226i, i32(-2147483648)), 4294967295u, 442f)), Struct_2(Struct_1(vec4<u32>(52382u, 4294967295u, 4294967295u, 4294967295u), vec3<i32>(-19488i, -1i, i32(-2147483648)), 0u, -234f)), Struct_2(Struct_1(vec4<u32>(45352u, 4608u, 61601u, 20635u), vec3<i32>(1i, 0i, -28107i), 1u, -170f)), Struct_2(Struct_1(vec4<u32>(28339u, 59961u, 4294967295u, 35204u), vec3<i32>(i32(-2147483648), 0i, 1i), 0u, 604f)), Struct_2(Struct_1(vec4<u32>(55288u, 20318u, 0u, 4294967295u), vec3<i32>(-42285i, -1i, 4654i), 0u, -377f)), Struct_2(Struct_1(vec4<u32>(0u, 37468u, 46834u, 114114u), vec3<i32>(1i, -1253i, 2147483647i), 22633u, -493f)), Struct_2(Struct_1(vec4<u32>(0u, 0u, 4294967295u, 73813u), vec3<i32>(2147483647i, 22040i, -1195i), 0u, 1433f)), Struct_2(Struct_1(vec4<u32>(1u, 64636u, 214u, 869u), vec3<i32>(31336i, 0i, -1010i), 9366u, -1175f)), Struct_2(Struct_1(vec4<u32>(1u, 8599u, 24092u, 34849u), vec3<i32>(i32(-2147483648), -23076i, -7842i), 5155u, 677f)));

var<private> global3: vec2<i32> = vec2<i32>(-35462i, -1i);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> i32 {
    global1 = array<Struct_1, 18>();
    global2 = array<Struct_2, 13>();
    var var_0 = Struct_3(arg_1.c & (u_input.a.x & _wgslsmith_mult_u32(4294967295u, u_input.d.x)), global2[_wgslsmith_index_u32(u_input.c, 13u)], ~(-(~vec4<i32>(global3.x, 1i, arg_1.b.x, arg_1.b.x)) << (vec4<u32>(u_input.d.x, _wgslsmith_mod_u32(4294967295u, 43119u), select(u_input.b, 29870u, arg_0), ~arg_1.c) % vec4<u32>(32u))), _wgslsmith_f_op_f32(min(arg_1.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d * arg_1.d), arg_1.d) * _wgslsmith_f_op_f32(-arg_1.d)))), vec3<i32>(_wgslsmith_add_i32(global3.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.x, -2147483647i, 3804i, arg_1.b.x), vec4<i32>(2147483647i, 0i, global3.x, -30154i)))), countOneBits(arg_1.b.x), select(_wgslsmith_div_i32(-76042i, _wgslsmith_mod_i32(global3.x, global3.x)), -1i, select(arg_0, !arg_0, arg_0))));
    var var_1 = arg_1.a;
    global3 = arg_1.b.zx;
    return arg_1.b.x;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec4<i32>) -> vec3<f32> {
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = var_0.x;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.d * _wgslsmith_f_op_f32(-arg_1.d)), -661f)), -1229f, 333f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -743f) + _wgslsmith_f_op_f32(min(-719f, arg_1.d))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(419f * arg_1.d))), 856f)));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: u32) -> Struct_3 {
    global1 = array<Struct_1, 18>();
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(698f, arg_1.d, arg_1.d) * vec3<f32>(-2616f, 295f, 795f))), vec3<f32>(_wgslsmith_div_f32(arg_1.d, -733f), -1059f, _wgslsmith_f_op_f32(-arg_1.b.a.d))))), _wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(~9419i, firstTrailingBit(2147483647i)), arg_1.b.a, arg_1.b.a.a, ~arg_1.c))));
    var var_1 = Struct_4(arg_1.c.zzx);
    var var_2 = _wgslsmith_div_vec3_u32(reverseBits(arg_1.b.a.a.zwx | vec3<u32>(arg_1.b.a.c, abs(arg_0), _wgslsmith_sub_u32(67875u, 0u))), arg_1.b.a.a.yyz);
    return Struct_3(~29672u, global2[_wgslsmith_index_u32(1u, 13u)], -_wgslsmith_mod_vec4_i32(arg_1.c, select(arg_1.c & vec4<i32>(-76142i, arg_1.e.x, 2147483647i, -20826i), vec4<i32>(var_1.a.x, -20883i, arg_1.c.x, -36748i), vec4<bool>(true, false, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(1000f * var_0.x)), arg_1.d)) - _wgslsmith_f_op_f32(f32(-1f) * -248f)), ~(~vec3<i32>(_wgslsmith_div_i32(12006i, -12213i), min(2147483647i, var_1.a.x), var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(~abs(-global3.x), ~(~firstTrailingBit(select(-33414i, global3.x, false))));
    global1 = array<Struct_1, 18>();
    global0 = array<vec2<u32>, 9>();
    var var_1 = func_2(firstTrailingBit(~u_input.d.x), Struct_3(abs(~u_input.a.x), global2[_wgslsmith_index_u32(0u, 13u)], vec4<i32>(-_wgslsmith_sub_i32(-1i, -1i), -16700i, _wgslsmith_div_i32(-45420i, -2147483647i), ~func_1(true, Struct_1(vec4<u32>(u_input.c, u_input.a.x, 4294967295u, 4294967295u), vec3<i32>(var_0, var_0, global3.x), u_input.d.x, -586f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(567f)))), ~vec3<i32>(i32(-1i) * -2147483647i, global3.x, var_0)), _wgslsmith_div_u32(~(~7530u), u_input.c) >> (u_input.a.x % 32u));
    var_1 = func_2(var_1.b.a.a.x, Struct_3(25348u, func_2(1u, func_2(var_1.b.a.a.x, Struct_3(u_input.b, Struct_2(Struct_1(vec4<u32>(var_1.b.a.c, 4294967295u, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, 7430i, var_1.c.x), 1u, var_1.d)), vec4<i32>(var_1.e.x, -1i, global3.x, -19450i), 1212f, vec3<i32>(global3.x, var_1.c.x, global3.x)), ~var_1.a), u_input.c).b, var_1.c, var_1.d, var_1.b.a.b), _wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.b.a.c | 19857u, ~var_1.a), ~65748u) >> (firstLeadingBit(_wgslsmith_add_u32(u_input.d.x, 4294967295u)) % 32u));
    var var_2 = var_0;
    var var_3 = func_2(u_input.c, Struct_3(var_1.b.a.a.x, func_2(27062u, Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(114399u, 4294967295u, 4294967295u, u_input.b), vec4<u32>(var_1.b.a.c, 5657u, u_input.b, var_1.b.a.a.x)), global2[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.e.x, 2147483647i, var_0, var_1.c.x), var_1.c), -2084f, -var_1.e), var_1.b.a.c).b, var_1.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(8977i, -1i), global1[_wgslsmith_index_u32(abs(var_1.a), 18u)], vec4<u32>(u_input.a.x, u_input.a.x, var_1.b.a.c, var_1.a), var_1.c ^ var_1.c)).x)), vec3<i32>(2147483647i, -1392i, _wgslsmith_sub_i32(~(-55723i), _wgslsmith_mod_i32(6577i, -16302i)))), 83261u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-68309i, -1i, var_1.c.x), _wgslsmith_dot_vec4_i32(var_1.c, var_1.c)), min(_wgslsmith_clamp_i32(var_3.e.x, var_3.b.a.b.x, -var_1.b.a.b.x), _wgslsmith_dot_vec2_i32(~var_1.b.a.b.zz, vec2<i32>(global3.x, 539i)))), -var_1.b.a.b.xz, _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(-2147483647i, -2147483647i, var_0, 1260i)) >> (~vec4<u32>(6669u, 9011u, var_1.b.a.a.x, var_1.a) % vec4<u32>(32u)), max(var_1.c, var_3.c | var_3.c)), -firstLeadingBit(-vec4<i32>(-2147483647i, var_1.b.a.b.x, var_3.c.x, var_1.e.x))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.b.a.d, _wgslsmith_f_op_f32(f32(-1f) * -384f))), _wgslsmith_f_op_f32(func_2(var_3.a, Struct_3(1u, var_1.b, var_3.c, var_3.d, vec3<i32>(var_3.e.x, var_1.b.a.b.x, var_1.e.x)), 4294967295u).d - -1029f)), 1238f, func_2(20209u | _wgslsmith_sub_u32(u_input.d.x, 18530u), func_2(var_3.a, Struct_3(var_1.a, Struct_2(global1[_wgslsmith_index_u32(17946u, 18u)]), var_3.c, var_3.b.a.d, var_1.e), var_1.a), 0u).d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-var_3.d), 124f)))));
}

