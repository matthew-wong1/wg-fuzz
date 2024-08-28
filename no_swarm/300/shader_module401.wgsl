struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 25>;

var<private> global2: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(-1000f, 810f), vec2<f32>(-583f, -238f), vec2<f32>(633f, -1176f), vec2<f32>(1566f, -154f), vec2<f32>(340f, 853f), vec2<f32>(-287f, 1153f), vec2<f32>(795f, -1462f), vec2<f32>(542f, -2134f), vec2<f32>(1110f, 1999f), vec2<f32>(504f, 285f), vec2<f32>(239f, 386f), vec2<f32>(1261f, -2020f), vec2<f32>(-2662f, -778f), vec2<f32>(-722f, -378f), vec2<f32>(-389f, 1000f), vec2<f32>(-111f, -163f), vec2<f32>(-244f, 532f), vec2<f32>(957f, -552f), vec2<f32>(-1000f, -735f), vec2<f32>(-1102f, 429f), vec2<f32>(-1000f, 963f));

var<private> global3: Struct_1;

var<private> global4: array<u32, 22>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(countOneBits(global4[_wgslsmith_index_u32(50364u, 22u)]), 25u)];
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 25u)];
    let var_2 = all(vec3<bool>(any(vec4<bool>(true, 0i > arg_0, all(vec2<bool>(false, true)), any(vec3<bool>(true, true, true)))), true, _wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0, u_input.a, u_input.a), vec4<i32>(-38154i, arg_0, u_input.a, -28920i))) != ~(-32825i)));
    global0 = Struct_1(vec3<u32>(1u, ~1900u, 16365u) << (~abs(vec3<u32>(4294967295u, u_input.b, 0u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -130f), 1785f)), max(~firstLeadingBit(global0.c), firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.x, 1u, 81889u), vec3<u32>(1u, u_input.c.x, var_0.a.x))) ^ var_1.c), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(~u_input.c.x, 4294967295u | u_input.c.x, min(var_1.a.x, 2054u))), vec3<u32>(39533u, u_input.c.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(0u, 22u)], 27147u, 29328u, global4[_wgslsmith_index_u32(0u, 22u)]), vec4<u32>(17252u, 17826u, global0.d.x, u_input.b)))));
    var var_3 = 2147483647i;
    return abs(u_input.a);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: i32) -> u32 {
    var var_0 = (_wgslsmith_dot_vec3_i32(arg_2.yzy, vec3<i32>(arg_2.x, u_input.a, u_input.a)) >> (u_input.c.x % 32u)) < abs(_wgslsmith_clamp_i32(select(arg_2.x ^ arg_2.x, firstLeadingBit(-1i), true), _wgslsmith_sub_i32(select(-42238i, 0i, true), firstTrailingBit(-67916i)), u_input.a));
    global4 = array<u32, 22>();
    var var_1 = select(select(vec3<bool>(true, false, false), vec3<bool>(_wgslsmith_mod_i32(-2765i, u_input.a) > arg_2.x, true, all(vec3<bool>(true, true, true))), vec3<bool>(true, true, true)), vec3<bool>(true, select(~u_input.a < -1i, any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))), any(vec3<bool>(true, true, true))), !all(vec4<bool>(false, true, false, true)));
    let var_2 = 2147483647i;
    global2 = array<vec2<f32>, 21>();
    return max(global3.a.x, firstTrailingBit(0u));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: f32) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_4(global0.c.zz, Struct_1(~global3.c, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -2447f)), _wgslsmith_f_op_vec2_f32(-global3.b))), (global3.c | vec3<u32>(22868u, global0.d.x, 17001u)) & global0.d, global3.d), _wgslsmith_sub_vec4_i32(~abs(vec4<i32>(arg_0.x, arg_0.x, u_input.a, arg_0.x)), ~vec4<i32>(49350i, u_input.a, u_input.a, 2147483647i) >> (~vec4<u32>(38257u, global3.c.x, global3.d.x, 1u) % vec4<u32>(32u))), func_3(countOneBits(0i & arg_0.x))), global4[_wgslsmith_index_u32(~(~abs(1u)), 22u)]), 25u)];
    global2 = array<vec2<f32>, 21>();
    let var_1 = global1[_wgslsmith_index_u32(9330u, 25u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + var_1.b.x))));
    let var_3 = Struct_1(firstLeadingBit(select((vec3<u32>(57235u, global0.a.x, global3.c.x) >> (global3.d % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_u32(vec3<u32>(var_0.c.x, var_0.a.x, var_1.c.x), global3.c), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(1u, 4294967295u, global3.d.x)), vec3<u32>(2740u, var_1.c.x, 31857u) ^ global0.d), true)), _wgslsmith_f_op_vec2_f32(floor(var_0.b)), ~vec3<u32>(min(4294967295u, ~global3.c.x), var_0.d.x, ~(~global0.a.x)), vec3<u32>(11601u, reverseBits(~0u), ~38059u));
    return false;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = true;
    let var_2 = min(~select(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, global0.c.x, 81141u, 11815u)), vec4<u32>(4294967295u, 10499u, 60577u, u_input.b)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.c.x, u_input.c.x, 11686u, 604u), ~vec4<u32>(43107u, 0u, global3.c.x, global0.d.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, global3.c.x, var_0.d.x, global4[_wgslsmith_index_u32(global0.d.x, 22u)]), vec4<u32>(global3.a.x, global3.d.x, 1u, 9476u))), func_2(abs(vec3<i32>(-1i, 1i, -983i)), vec2<bool>(true, true), arg_3)), ~abs(~abs(vec4<u32>(arg_2.c.x, 0u, var_0.c.x, u_input.c.x))));
    let var_3 = i32(-1i) * -6132i;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -981f), -1000f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(2027f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3 + arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1671f), arg_1)))));
    return Struct_1(global0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1183f, global0.b.x))))) * global3.b), vec3<u32>(0u, countOneBits(arg_2.d.x), _wgslsmith_mult_u32(var_0.a.x, func_4(vec2<u32>(19838u, 1u), global1[_wgslsmith_index_u32(u_input.c.x, 25u)], vec4<i32>(13202i, var_3, 2147483647i, 2147483647i), u_input.a) | _wgslsmith_clamp_u32(4294967295u, global4[_wgslsmith_index_u32(1u, 22u)], var_0.d.x))), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~49229u, ~1u, ~16137u), ~var_0.c), ~(~reverseBits(var_0.c))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> Struct_1 {
    global2 = array<vec2<f32>, 21>();
    var var_0 = global0.d.x;
    global4 = array<u32, 22>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global0.b.x, 1256f, false)), _wgslsmith_f_op_f32(ceil(-267f)), -1033f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(147f, global3.b.x, 1397f)))))));
    global4 = array<u32, 22>();
    return func_1(_wgslsmith_f_op_vec3_f32(-var_1), true, global1[_wgslsmith_index_u32(4294967295u, 25u)], -707f);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 22>();
    let var_0 = func_5(any(vec4<bool>(true, true, true, true)), func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b.x, global3.b.x, global3.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, -685f, global0.b.x))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))), !(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(21519u, 22u)], global0.a.x) == global3.d.x), global1[_wgslsmith_index_u32(u_input.b, 25u)], 475f), false && any(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, true, false), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), false))));
    global4 = array<u32, 22>();
    global2 = array<vec2<f32>, 21>();
    var var_1 = ~vec3<i32>(u_input.a, 2147483647i, abs(0i));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, ~_wgslsmith_div_i32(u_input.a, -11188i));
}

