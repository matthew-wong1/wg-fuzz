struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(-59097i, Struct_1(i32(-2147483648), vec2<u32>(0u, 26906u), false, vec4<f32>(-2732f, -1763f, -858f, -232f)), Struct_1(-1i, vec2<u32>(58749u, 17229u), false, vec4<f32>(-912f, 1317f, 467f, 262f)), 0u, vec2<u32>(4294967295u, 8486u)), Struct_3(0i, Struct_1(2147483647i, vec2<u32>(4294967295u, 4294967295u), false, vec4<f32>(-771f, 228f, 577f, 380f)), Struct_1(-24850i, vec2<u32>(1u, 4294967295u), true, vec4<f32>(222f, 1708f, 1174f, -1230f)), 0u, vec2<u32>(54264u, 54395u)), Struct_3(-1i, Struct_1(0i, vec2<u32>(0u, 6156u), true, vec4<f32>(-810f, -261f, 496f, -2311f)), Struct_1(i32(-2147483648), vec2<u32>(28814u, 0u), true, vec4<f32>(1000f, 973f, 1476f, -702f)), 4294967295u, vec2<u32>(43679u, 1u)), Struct_3(1i, Struct_1(2147483647i, vec2<u32>(9662u, 10367u), false, vec4<f32>(-3706f, 1848f, -1777f, -1958f)), Struct_1(-1684i, vec2<u32>(7444u, 1u), true, vec4<f32>(1200f, -352f, -389f, 1000f)), 0u, vec2<u32>(1u, 4294967295u)), Struct_3(2147483647i, Struct_1(33007i, vec2<u32>(1u, 588u), true, vec4<f32>(1978f, 214f, -156f, 1062f)), Struct_1(-43488i, vec2<u32>(30007u, 23425u), true, vec4<f32>(-439f, -1448f, -506f, -811f)), 8529u, vec2<u32>(0u, 84298u)), Struct_3(-16384i, Struct_1(i32(-2147483648), vec2<u32>(1u, 1u), false, vec4<f32>(-2200f, 1000f, 149f, 778f)), Struct_1(1i, vec2<u32>(1552u, 15412u), false, vec4<f32>(-2378f, 737f, -723f, -1893f)), 28555u, vec2<u32>(4294967295u, 34521u)), Struct_3(-12041i, Struct_1(0i, vec2<u32>(18621u, 40493u), false, vec4<f32>(-1446f, 936f, -213f, -196f)), Struct_1(-8893i, vec2<u32>(4793u, 81211u), true, vec4<f32>(-192f, -752f, 281f, -492f)), 6150u, vec2<u32>(4294967295u, 37883u)), Struct_3(54758i, Struct_1(-20509i, vec2<u32>(1u, 12744u), true, vec4<f32>(-151f, -398f, -516f, 2506f)), Struct_1(-44634i, vec2<u32>(4294967295u, 90481u), true, vec4<f32>(-890f, -540f, -1689f, -1413f)), 44827u, vec2<u32>(1032u, 1u)), Struct_3(1i, Struct_1(-1i, vec2<u32>(4294967295u, 4294967295u), false, vec4<f32>(1265f, -1000f, 520f, 202f)), Struct_1(2147483647i, vec2<u32>(0u, 1252u), true, vec4<f32>(689f, 1462f, 888f, 1172f)), 4294967295u, vec2<u32>(4294967295u, 1u)));

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 14>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    let var_0 = ~(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(i32(-1i) * -23790i, firstLeadingBit(global1.a.a))) ^ 1775i);
    global1 = Struct_2(global2[_wgslsmith_index_u32(4294967295u, 14u)], vec3<bool>(global1.a.c, true, !(global1.a.c | true)));
    var var_1 = Struct_3(select(-1i, -abs(global1.a.a), all(vec2<bool>(!global1.b.x, true))), global2[_wgslsmith_index_u32(reverseBits(4294967295u) ^ (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(39376u, global1.a.b.x, global1.a.b.x, 4294967295u), vec4<u32>(61550u, global1.a.b.x, 4294967295u, global1.a.b.x)), abs(vec4<u32>(global1.a.b.x, global1.a.b.x, 53101u, 28082u))) & _wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, 0u, global1.a.b.x, global1.a.b.x), vec4<u32>(0u, 4294967295u, 19513u, global1.a.b.x)), ~vec4<u32>(0u, global1.a.b.x, global1.a.b.x, global1.a.b.x))), 14u)], Struct_1(max(abs(-2147483647i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, global1.a.a, -2147483647i), vec3<i32>(u_input.a.x, var_0, var_0))), _wgslsmith_div_vec2_u32(vec2<u32>(79028u, global1.a.b.x), ~firstTrailingBit(global1.a.b)), global1.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, global1.a.d.x, 307f, 823f), global1.a.d, vec4<bool>(false, false, global1.a.c, true))))), countOneBits(~min(1746u, global1.a.b.x) >> (global1.a.b.x % 32u)), global1.a.b);
    var_1 = Struct_3(-1i, Struct_1(-21011i, var_1.b.b, false, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.a.d.x, 1627f, 124f, 898f))))))), var_1.b, 2284u, ~(~vec2<u32>(var_1.e.x, 1u) << (vec2<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), 1u) % vec2<u32>(32u))));
    global2 = array<Struct_1, 14>();
    return -var_0;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~4294967295u, 9u)];
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(19160u, var_0.b.b.x, _wgslsmith_sub_u32(global1.a.b.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(46630u, 5246u, 4294967295u, 33676u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.c.b.x, var_0.b.b.x, global1.a.b.x), vec4<u32>(4294967295u, var_0.e.x, var_0.d, 12073u)))), 1u), min(vec4<u32>(69952u, arg_1, abs(1u), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(31974u, 1u, var_0.e.x, arg_1), vec4<u32>(2339u, 1u, global1.a.b.x, 15450u)))), vec4<u32>(4294967295u, ~(arg_1 << (55197u % 32u)), global1.a.b.x, ~_wgslsmith_div_u32(var_0.b.b.x, arg_1))));
    global0 = array<Struct_3, 9>();
    var var_2 = global1.a.a;
    var var_3 = max(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(1i, global1.a.a), _wgslsmith_mult_i32(1i, 76305i), ~(-1i), 1i), vec4<i32>(countOneBits(global1.a.a), 19566i, ~global1.a.a, global1.a.a)) & -(select(vec4<i32>(684i, global1.a.a, global1.a.a, u_input.a.x), vec4<i32>(global1.a.a, 21549i, 2147483647i, 26691i), vec4<bool>(false, arg_0.x, true, false)) ^ vec4<i32>(u_input.a.x, u_input.b, -34379i, 0i)), vec4<i32>(_wgslsmith_div_i32(func_3(), var_0.a), 2147483647i, var_0.a, ~_wgslsmith_clamp_i32(-2147483647i, 457i, ~(-52221i))));
    return Struct_1(-(firstLeadingBit(var_0.c.a) >> (arg_1 % 32u)), ~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(var_1.zx >> (var_1.zz % vec2<u32>(32u)), vec2<u32>(var_1.x, var_1.x)), _wgslsmith_sub_vec2_u32(~vec2<u32>(19554u, arg_1), vec2<u32>(0u, var_0.b.b.x))), true, var_0.c.d);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> f32 {
    let var_0 = func_2(select(global1.b, vec3<bool>(global1.b.x, true, !(arg_0.x < 0u)), !(!vec3<bool>(false, global1.b.x, global1.b.x))), ~(~19341u >> (global1.a.b.x % 32u)));
    global1 = Struct_2(Struct_1(-6079i, abs(func_2(select(vec3<bool>(global1.a.c, false, true), vec3<bool>(false, true, var_0.c), global1.b), ~0u).b), (global1.a.b.x >> ((arg_0.x >> (global1.a.b.x % 32u)) % 32u)) >= _wgslsmith_mod_u32(global1.a.b.x | 11019u, ~arg_1), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-860f, var_0.d.x, -2354f, -177f), vec4<f32>(global1.a.d.x, -682f, 122f, 401f))))), _wgslsmith_f_op_vec4_f32(-global1.a.d))), select(select(!select(global1.b, global1.b, global1.b), global1.b, global1.b), !select(!vec3<bool>(true, false, global1.a.c), global1.b, select(vec3<bool>(true, var_0.c, global1.a.c), vec3<bool>(global1.a.c, false, var_0.c), true)), -7898i <= _wgslsmith_sub_i32(~global1.a.a, -u_input.e)));
    global1 = Struct_2(global1.a, !(!global1.b));
    return -501f;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>) -> u32 {
    var var_0 = Struct_1(u_input.c, select(~vec2<u32>(func_2(vec3<bool>(global1.b.x, true, global1.a.c), global1.a.b.x).b.x, global1.a.b.x), global1.a.b, global1.a.c | true), true, global1.a.d);
    let var_1 = Struct_3(~countOneBits(i32(-1i) * -global1.a.a), Struct_1(_wgslsmith_add_i32(arg_0.x, arg_0.x), _wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(global1.a.b, var_0.b), ~min(var_0.b, vec2<u32>(var_0.b.x, var_0.b.x)), vec2<u32>(0u, 0u)), false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-716f, global1.a.d.x, _wgslsmith_f_op_f32(-899f * -156f), _wgslsmith_f_op_f32(round(622f))))), global1.a, countOneBits(abs(global1.a.b.x)), firstTrailingBit(vec2<u32>(7114u, ~(~15352u))));
    global0 = array<Struct_3, 9>();
    let var_2 = !(!var_1.c.c);
    var_0 = func_2(select(select(vec3<bool>(var_0.c, true, true), !global1.b, any(global1.b)), global1.b, !var_0.c), var_1.b.b.x);
    return reverseBits(_wgslsmith_mult_u32(global1.a.b.x, select(var_1.b.b.x, _wgslsmith_sub_u32(reverseBits(1u), 36658u | global1.a.b.x), var_1.c.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4304u;
    var_0 = func_4(vec4<i32>(u_input.b, -18145i, u_input.a.x, countOneBits(1i)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.d.x))), _wgslsmith_f_op_f32(func_1(_wgslsmith_sub_vec2_u32(global1.a.b, vec2<u32>(0u, global1.a.b.x)), global1.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-311f, global1.a.d.x))), vec3<f32>(global1.a.d.x, _wgslsmith_f_op_f32(sign(global1.a.d.x)), _wgslsmith_f_op_f32(func_1(_wgslsmith_add_vec2_u32(vec2<u32>(global1.a.b.x, 1u), vec2<u32>(global1.a.b.x, global1.a.b.x)), 69408u))))));
    var var_1 = _wgslsmith_f_op_f32(ceil(164f));
    global0 = array<Struct_3, 9>();
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(2147483647i, 0i), u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(reverseBits(firstTrailingBit(vec4<i32>(-2147483647i, -2147483647i, global1.a.a, 1i))))));
}

