struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

var<private> global1: vec4<i32>;

var<private> global2: vec4<i32> = vec4<i32>(-1i, 0i, 0i, i32(-2147483648));

var<private> global3: array<u32, 2>;

var<private> global4: Struct_2 = Struct_2(i32(-2147483648), -565f, 2534i, Struct_1(-717i, vec2<f32>(-847f, -179f)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: i32) -> vec4<i32> {
    global1 = -firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-4980i, 1i, global4.c, ~global4.d.a), vec4<i32>(1i, _wgslsmith_div_i32(global2.x, arg_2), _wgslsmith_clamp_i32(global1.x, arg_2, 25964i), arg_2 | global2.x)));
    let var_0 = _wgslsmith_div_vec2_u32(~vec2<u32>(abs(firstLeadingBit(80820u)), _wgslsmith_mod_u32(max(23160u, u_input.a), reverseBits(u_input.a))), ~vec2<u32>(~u_input.a, ~(~90904u)));
    let var_1 = _wgslsmith_sub_i32(global4.d.a, -2147483647i);
    let var_2 = _wgslsmith_sub_i32(-26756i, ~(~_wgslsmith_mult_i32(12603i, -5689i)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), 449f)));
    return vec4<i32>(global1.x, -(~(~global1.x)), -1516i, ~firstLeadingBit(_wgslsmith_mult_i32(arg_2, global4.c))) << (max(countOneBits(select(vec4<u32>(16229u, 49235u, 0u, global3[_wgslsmith_index_u32(u_input.a, 2u)]) >> (vec4<u32>(global3[_wgslsmith_index_u32(76223u, 2u)], var_0.x, u_input.a, 76663u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, 0u, var_0.x), vec4<u32>(global3[_wgslsmith_index_u32(var_0.x, 2u)], u_input.a, 36903u, u_input.a)), vec4<bool>(true, true, true, true))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(107547u, 38198u, 13338u, 1u), select(vec4<u32>(global3[_wgslsmith_index_u32(u_input.a, 2u)], 0u, 1u, 15738u), vec4<u32>(var_0.x, global3[_wgslsmith_index_u32(4294967295u, 2u)], 78192u, 12610u), vec4<bool>(false, true, true, false)))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    global1 = select(_wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(14254i), -16020i, _wgslsmith_add_i32(-1813i, _wgslsmith_add_i32(-8823i, arg_0.x)), 24977i | _wgslsmith_mult_i32(global4.d.a, -45148i)), -func_3(vec3<f32>(-1844f, global4.b, -2091f), 508f, global4.d.a) >> (reverseBits(vec4<u32>(0u, 4276u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11775u, 2u)], 2u)], 4294967295u)) % vec4<u32>(32u)), min(vec4<i32>(min(-48245i, 1i), firstTrailingBit(3473i), ~2147483647i, ~16176i), _wgslsmith_add_vec4_i32(-vec4<i32>(32635i, 1i, -1i, -17294i), -vec4<i32>(2147483647i, -2147483647i, global1.x, 2147483647i)))), select(select(vec4<i32>(-32521i, 38793i, global1.x, arg_0.x) << (min(vec4<u32>(u_input.a, u_input.a, 1u, 0u), vec4<u32>(u_input.a, 1u, global3[_wgslsmith_index_u32(18820u, 2u)], 0u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(~vec4<i32>(global4.c, -1i, global1.x, 14726i), firstLeadingBit(vec4<i32>(-1i, 10515i, -791i, 1i))), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false))), vec4<i32>(-countOneBits(global1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, global4.a, global4.d.a), vec4<i32>(1i, arg_0.x, global4.d.a, 2147483647i)), arg_0.x, abs(arg_0.x ^ -24738i)), _wgslsmith_f_op_f32(min(global4.b, global4.b)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1044f)))), select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), true)), true));
    let var_0 = _wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(u_input.a, 2u)], u_input.a);
    var var_1 = Struct_4(Struct_3(Struct_2(arg_0.x, _wgslsmith_f_op_f32(sign(-544f)), _wgslsmith_clamp_i32(firstTrailingBit(global1.x), ~(-2147483647i), _wgslsmith_div_i32(arg_0.x, global2.x)), global4.d), ~select(var_0, var_0, true), Struct_2(_wgslsmith_div_i32(arg_0.x ^ arg_0.x, global4.d.a), _wgslsmith_f_op_f32(global4.b * 1728f), _wgslsmith_sub_i32(-2147483647i, -1i & global4.d.a), global4.d), Struct_2(_wgslsmith_mult_i32(1i, global4.d.a), _wgslsmith_f_op_f32(-global4.b), _wgslsmith_sub_i32(-2838i, -73644i) & min(arg_0.x, -5521i), Struct_1(global1.x, _wgslsmith_f_op_vec2_f32(global4.d.b * vec2<f32>(-912f, -236f))))), _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global2.wx, vec2<i32>(arg_0.x, 16400i)), global2.x ^ global4.d.a), global4.c | _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 105361i, 2147483647i), vec3<i32>(arg_0.x, 0i, -2147483647i))) > arg_0.x, false, Struct_1(-2147483647i, _wgslsmith_f_op_vec2_f32(sign(global4.d.b))), all(!vec2<bool>(any(vec2<bool>(true, false)), all(vec3<bool>(false, false, false)))));
    var_1 = Struct_4(Struct_3(Struct_2(_wgslsmith_mult_i32(global4.d.a | 0i, abs(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.b, var_1.a.d.b))), max(global4.c, 1i), var_1.a.a.d), 1u, Struct_2(-2147483647i, 204f, global1.x, Struct_1(~global4.d.a, global4.d.b)), var_1.a.c), all(select(select(!vec4<bool>(true, true, false, var_1.b), !vec4<bool>(true, false, var_1.c, false), var_1.b), !(!vec4<bool>(var_1.b, var_1.b, var_1.e, true)), select(select(vec4<bool>(true, var_1.e, true, var_1.b), vec4<bool>(var_1.b, var_1.b, false, false), true), select(vec4<bool>(false, true, var_1.e, true), vec4<bool>(true, var_1.e, var_1.e, var_1.c), vec4<bool>(var_1.c, var_1.b, false, var_1.e)), select(vec4<bool>(var_1.b, var_1.e, var_1.c, var_1.c), vec4<bool>(true, var_1.e, true, true), true)))), true, global4.d, var_1.c);
    let var_2 = abs(~(~(select(vec4<i32>(-1i, global4.a, 7363i, 19020i), vec4<i32>(-2147483647i, 2147483647i, -43732i, 2147483647i), vec4<bool>(var_1.e, false, var_1.e, var_1.e)) & min(vec4<i32>(27365i, -54722i, 21304i, arg_0.x), vec4<i32>(6689i, global4.d.a, 2147483647i, arg_0.x)))));
    return Struct_2(firstLeadingBit(abs(_wgslsmith_clamp_i32(abs(global2.x), 0i, select(1i, var_2.x, var_1.e)))), var_1.d.b.x, -reverseBits(_wgslsmith_mult_i32(-96293i, global4.c)) ^ (min(-global1.x, -12749i) ^ _wgslsmith_div_i32(-global4.c, abs(var_1.a.d.a))), Struct_1(_wgslsmith_mod_i32(~var_1.d.a, var_1.d.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.a.d.b.x, var_1.a.c.b))), 157f)));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global4 = func_2(abs(firstTrailingBit(max(global2.zzy, global1.yyx))) ^ global2.zwx);
    let var_0 = -abs(-global2.x);
    global0 = array<Struct_3, 27>();
    let var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_0, global1.x, var_0) | ~vec4<i32>(var_0, 1i, -93785i, -2147483647i), -(vec4<i32>(-25155i, var_0, -13457i, 0i) | vec4<i32>(global2.x, 1i, global4.a, global4.a))) ^ vec4<i32>(~1i, -global4.a, global4.d.a, 1i), ~firstLeadingBit(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(2198f, -477f, global4.d.b.x) * vec3<f32>(-528f, 913f, global4.d.b.x)), global4.b, -2147483647i)));
    let var_2 = (select(1u, 0u, any(vec3<bool>(true, true, true))) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(global3[_wgslsmith_index_u32(56119u, 2u)], 14095u) | max(vec2<u32>(70748u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24613u, 2u)], 2u)]), vec2<u32>(1u, 1u)), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(arg_0, 1u))) % 32u)) < 52784u;
    return Struct_2(_wgslsmith_mod_i32(-var_1.x, global4.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1659f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1692f, -555f) * _wgslsmith_div_f32(478f, -1174f))))), abs(global1.x), func_2(~global2.zww >> (~vec3<u32>(global3[_wgslsmith_index_u32(0u, 2u)], 0u, arg_0) % vec3<u32>(32u))).d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.d;
    var var_1 = Struct_3(func_1(_wgslsmith_add_u32(2247u, global3[_wgslsmith_index_u32(0u, 2u)] ^ global3[_wgslsmith_index_u32(22853u, 2u)]) << (_wgslsmith_mult_u32(0u, 74208u) % 32u)), 1u, Struct_2(_wgslsmith_sub_i32(global2.x, 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(742f)) + _wgslsmith_f_op_f32(-global4.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(-4556i, global2.x), reverseBits(vec2<i32>(-2367i, 2147483647i))) & -var_0.a, Struct_1(1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) - _wgslsmith_f_op_vec2_f32(sign(var_0.b))))), func_2(global2.yzw));
    global3 = array<u32, 2>();
    var var_2 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(30992u, u_input.a), vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(var_1.b, 2u)]), ~vec2<u32>(var_1.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(61404u, 2u)], 2u)], 2u)], 2u)])), ~(~vec2<u32>(u_input.a, 44164u))), abs(vec2<u32>(157975u, global3[_wgslsmith_index_u32(1u, 2u)]) & ~vec2<u32>(1u, var_1.b)), vec2<u32>(global3[_wgslsmith_index_u32(62498u, 2u)], _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(24715u, 2u)], 4294967295u), max(vec3<u32>(26499u, global3[_wgslsmith_index_u32(u_input.a, 2u)], 4294967295u), vec3<u32>(u_input.a, 5993u, 58984u))))), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(9558u, global3[_wgslsmith_index_u32(var_1.b, 2u)]) << (countOneBits(vec2<u32>(var_1.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(26418u, 2u)], 2u)])) % vec2<u32>(32u)), vec2<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12823u, 2u)], 2u)], 2u)], 2u)], _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(4294967295u, 2u)], u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 4294967295u, 1u)))), _wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(1u, 2u)], u_input.a), vec2<u32>(4294967295u, 0u)), reverseBits(vec2<u32>(1u, 4294967295u) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))), firstTrailingBit(vec2<u32>(u_input.a, u_input.a)))));
    global4 = var_1.d;
    let var_3 = !all(vec4<bool>(true, 40464i < select(1i, 3691i, true), all(vec2<bool>(true, true)), true));
    let var_4 = global4.d.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1097f, global4.d.b.x, var_1.c.d.b.x))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1402f, 415f, 2714f), vec3<f32>(var_1.a.b, var_0.b.x, global4.d.b.x), vec3<bool>(var_3, true, true)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global4.b, 375f, global4.d.b.x))))))) - vec3<f32>(728f, var_0.b.x, -465f)), select(vec3<u32>(global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(13147u, var_1.b, var_2.x), 2u)], _wgslsmith_clamp_u32(var_2.x | var_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 0u, var_1.b, global3[_wgslsmith_index_u32(u_input.a, 2u)]), vec4<u32>(4294967295u, u_input.a, 64939u, 4294967295u)), var_1.b), ~global3[_wgslsmith_index_u32(1u, 2u)] | _wgslsmith_sub_u32(var_1.b, 0u)), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(68415u, global3[_wgslsmith_index_u32(33547u, 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(70107u, 2u)], 2u)]), vec3<u32>(var_1.b, global3[_wgslsmith_index_u32(var_2.x, 2u)], 50811u))), true), var_2.x, vec2<u32>(var_1.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)]));
}

