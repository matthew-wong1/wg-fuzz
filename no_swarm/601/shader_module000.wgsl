struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(16114u, 4294967295u, 68646u), vec3<u32>(58774u, 1u, 19158u), vec3<u32>(43635u, 55332u, 1u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(23841u, 13483u, 0u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 12482u), vec3<u32>(1u, 80492u, 1709u), vec3<u32>(38867u, 4294967295u, 23571u), vec3<u32>(26881u, 3886u, 0u), vec3<u32>(0u, 26447u, 38802u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 65309u, 47234u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(63276u, 9304u, 1u), vec3<u32>(76064u, 4294967295u, 0u), vec3<u32>(39384u, 0u, 62913u), vec3<u32>(4294967295u, 3450u, 1u), vec3<u32>(0u, 63335u, 0u), vec3<u32>(0u, 96867u, 18106u), vec3<u32>(4294967295u, 1u, 26812u));

var<private> global1: Struct_2;

var<private> global2: Struct_1;

var<private> global3: array<f32, 3> = array<f32, 3>(-1492f, -230f, 1069f);

var<private> global4: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-542f, 33553i), Struct_1(-1000f, 65855i), Struct_1(250f, 0i), Struct_1(-182f, -68121i), Struct_1(-607f, -11141i), Struct_1(-340f, 1i), Struct_1(-713f, 0i), Struct_1(-1013f, 41134i), Struct_1(-1600f, 42730i), Struct_1(-1191f, 2147483647i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(global1.a.x, 19420u, 0u, global1.a.x)), ~(~vec4<u32>(0u, u_input.c, 1u, 7475u))), ~99392u), _wgslsmith_add_u32(firstLeadingBit(abs(u_input.c)), _wgslsmith_dot_vec3_u32(~(~global0[_wgslsmith_index_u32(u_input.c, 21u)]), global0[_wgslsmith_index_u32(u_input.c, 21u)])), ~0u, max(global1.a.x << ((0u << (firstLeadingBit(12452u) % 32u)) % 32u), 54359u));
    let var_1 = ~global1.d.x;
    global2 = global1.e;
    let var_2 = reverseBits(max(firstLeadingBit(vec3<i32>(global2.b, 97774i, global1.c.b)), _wgslsmith_clamp_vec3_i32(u_input.a | vec3<i32>(-2147483647i, 48938i, 0i), countOneBits(u_input.d), u_input.d))) | u_input.d;
    var var_3 = vec4<i32>(countOneBits(~_wgslsmith_dot_vec3_i32(var_2, max(vec3<i32>(var_2.x, 39210i, var_2.x), var_2))), global1.e.b, u_input.d.x, abs(2147483647i));
    return _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(global1.a.x & var_0.x, var_0.x)), 3u)]));
}

fn func_2() -> Struct_3 {
    var var_0 = global1.c;
    var var_1 = global1.c.a;
    let var_2 = ~global1.a.yy;
    let var_3 = Struct_1(2302f, -(~firstLeadingBit(~20414i)));
    global0 = array<vec3<u32>, 21>();
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-137f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 3u)]))) - -657f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1054f, _wgslsmith_f_op_f32(func_3(!vec3<bool>(true, true, global1.b.x)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-363f, 1902f, true))), -29278i << (~global1.a.x % 32u)), vec3<bool>(select(true, global1.b.x, false), all(select(!vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x), vec4<bool>(global1.b.x, false, global1.b.x, global1.b.x), vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x))), -var_3.b != -(var_3.b | 2147483647i)), all(vec4<bool>(true, true, !any(vec4<bool>(true, global1.b.x, false, global1.b.x)), select(global1.b.x, global1.b.x, global1.b.x) || false)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    global0 = array<vec3<u32>, 21>();
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, arg_2.c.b), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.b, 0i), ~vec2<i32>(global1.e.b, global1.e.b)), 26802i, ~(-_wgslsmith_mult_i32(1i, arg_0.c.b))), vec4<i32>(global1.e.b, arg_2.c.b, 2147483647i, -global1.e.b));
    global2 = Struct_1(global1.e.a, ~(~((76805i >> (global1.a.x % 32u)) & (i32(-1i) * -19590i))));
    global0 = array<vec3<u32>, 21>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-249f + global1.c.a)), global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(5787u, 3u)] + global3[_wgslsmith_index_u32(0u, 3u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().a * global1.c.a)));
    return func_2().c;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = vec4<i32>(49465i, 2147483647i, ~1i, arg_0.b);
    let var_1 = 4294967295u;
    global2 = func_4(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), arg_0.a), 396f, Struct_1(-1000f, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b, u_input.b, global1.e.b), vec3<i32>(arg_1.x, var_0.x, arg_0.b)), ~u_input.a)), select(select(vec3<bool>(global1.b.x, false, true), !vec3<bool>(false, global1.b.x, global1.b.x), vec3<bool>(global1.b.x, true, true)), vec3<bool>(global1.b.x || global1.b.x, global1.b.x, true), !(var_1 < 0u)), (var_1 != (global1.a.x << (0u % 32u))) && false), !global1.b, func_2(), Struct_2(global1.a | countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.c, global1.a.x), vec3<u32>(37768u, 4294967295u, 1u))), !vec2<bool>(all(vec3<bool>(global1.b.x, global1.b.x, global1.b.x)), func_2().e), arg_0, countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(99184u, 70955u, u_input.c), select(global0[_wgslsmith_index_u32(global1.a.x, 21u)], vec3<u32>(1u, global1.a.x, 9797u), vec3<bool>(global1.b.x, global1.b.x, true)))), func_2().c));
    global3 = array<f32, 3>();
    var var_2 = Struct_1(-1077f, min(-global1.c.b, -2147483647i));
    return Struct_2(vec3<u32>(56502u, 6471u, 1u), vec2<bool>(!global1.b.x, global1.b.x), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(4294967295u), global1.d.x), 10u)], global1.d, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(global4[_wgslsmith_index_u32(u_input.c, 10u)], vec2<i32>(i32(-1i) * -(~(-45946i)), 21839i));
    let var_0 = global1.d.x;
    let var_1 = func_1(func_2().c, vec2<i32>(-2147483647i, 2147483647i));
    let var_2 = select(!(true || (_wgslsmith_f_op_f32(-1148f - 316f) < global2.a)), global1.b.x, !all(select(vec4<bool>(var_1.b.x, true, true, global1.b.x), !vec4<bool>(false, global1.b.x, true, true), !var_1.b.x)));
    global0 = array<vec3<u32>, 21>();
    let var_3 = _wgslsmith_sub_i32(abs(_wgslsmith_sub_i32(var_1.c.b, reverseBits(u_input.d.x))), -var_1.e.b);
    let x = u_input.a;
    s_output = StorageBuffer(~26144u, abs(firstLeadingBit(max(select(u_input.a, vec3<i32>(var_1.c.b, -2147483647i, 19773i), vec3<bool>(false, true, true)), min(vec3<i32>(2147483647i, global2.b, var_1.e.b), u_input.d)))), u_input.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(922f, global1.e.a) + vec2<f32>(714f, global2.a))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(338f, global1.c.a), vec2<f32>(global1.c.a, 975f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.a, var_1.c.a) - vec2<f32>(-1000f, global1.c.a))))));
}

