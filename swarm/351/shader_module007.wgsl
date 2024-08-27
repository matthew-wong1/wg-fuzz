struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
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

var<private> global0: array<Struct_2, 4>;

var<private> global1: Struct_4 = Struct_4(Struct_1(vec3<i32>(27381i, 10139i, 1i), i32(-2147483648), 0i, -1112f), Struct_1(vec3<i32>(-8101i, i32(-2147483648), 1i), 0i, i32(-2147483648), -1525f), Struct_3(Struct_2(430f, -423f, vec2<u32>(28070u, 4294967295u), vec4<f32>(-1544f, -1651f, -763f, 177f)), 742f));

var<private> global2: array<u32, 3>;

var<private> global3: u32;

var<private> global4: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global1 = Struct_4(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-13682i, 0i, 34315i), -select(vec3<i32>(44814i, global1.a.b, 1i), vec3<i32>(-2147483647i, 38345i, global1.a.c), vec3<bool>(true, true, false))), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.c, global1.a.a.x) & vec2<i32>(global1.a.a.x, -45617i), select(vec2<i32>(global1.b.a.x, -1i), vec2<i32>(-2147483647i, 8740i), true)), global1.b.b), global1.b.c, _wgslsmith_f_op_f32(min(global1.c.b, -184f))), Struct_1(vec3<i32>(global1.a.c, _wgslsmith_dot_vec4_i32(min(vec4<i32>(-14019i, global1.b.a.x, 0i, -3774i), vec4<i32>(global1.b.c, -2147483647i, global1.b.a.x, -5488i)), max(vec4<i32>(15155i, global1.b.b, 1i, global1.a.a.x), vec4<i32>(-1701i, global1.a.c, 11421i, 10643i))), -countOneBits(global1.b.b)), -select(0i, _wgslsmith_dot_vec3_i32(global1.a.a, global1.a.a), true), _wgslsmith_sub_i32(-2147483647i, ~(~global1.b.c)), 102f), global1.c);
    global0 = array<Struct_2, 4>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.b.d - global1.c.a.b), global1.a.d, -1437f)))));
    let var_1 = select(!vec3<bool>(!any(vec2<bool>(false, true)), true || any(vec3<bool>(false, false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false)), true, !any(vec2<bool>(false, false)))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true))));
    var var_2 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(~(-41071i), 1i, _wgslsmith_mult_i32(reverseBits(1i), global1.a.a.x)), _wgslsmith_add_vec3_i32(-(global1.a.a << (vec3<u32>(48680u, global2[_wgslsmith_index_u32(4294967295u, 3u)], 1u) % vec3<u32>(32u))), min(_wgslsmith_add_vec3_i32(vec3<i32>(global1.b.b, 2147483647i, global1.a.b), vec3<i32>(global1.a.b, 2147483647i, global1.a.c)), abs(vec3<i32>(global1.b.c, 2147483647i, 0i))))), global1.a.a);
    return _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(global1.b.d * 467f)) <= global1.b.d;
}

fn func_2() -> Struct_1 {
    let var_0 = global1.c.a;
    let var_1 = !func_3();
    global3 = _wgslsmith_mult_u32(~(~global2[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 3u)]), 65468u);
    var var_2 = global1.c;
    var var_3 = Struct_1(countOneBits(-vec3<i32>(global1.a.c >> (1u % 32u), -2147483647i, ~global1.b.a.x)), -39218i, firstTrailingBit(_wgslsmith_sub_i32(19391i, 1i)), _wgslsmith_f_op_f32(-var_0.d.x));
    return Struct_1(-vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.a.x, var_3.a.x, -70731i), var_3.a) << (~global1.c.a.c.x % 32u), abs(var_3.b), ~(~var_3.b)), global1.b.c, -global1.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b))) * -2104f));
}

fn func_4(arg_0: Struct_4) -> f32 {
    let var_0 = vec2<f32>(global1.c.b, arg_0.a.d);
    global4 = select(min(_wgslsmith_add_i32(_wgslsmith_clamp_i32(0i, 0i, arg_0.b.c), global1.a.b), -1i) >> (1u % 32u), ~_wgslsmith_mod_i32(-2147483647i, func_2().b), func_3());
    let var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.d) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.d))), -277f), var_0.x, arg_0.c.a.c, _wgslsmith_f_op_vec4_f32(-arg_0.c.a.d));
    var var_2 = ~(~min(vec2<i32>(arg_0.a.a.x ^ arg_0.a.c, global1.b.a.x), min(vec2<i32>(37809i, global1.a.a.x) & vec2<i32>(3419i, -2147483647i), arg_0.b.a.zy)));
    let var_3 = Struct_1(vec3<i32>(arg_0.a.b, ~1i, ~(~arg_0.a.c)), -(1i & global1.a.a.x), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.b, 0i, ~2147483647i), global1.a.a), -1230f);
    return 628f;
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: i32) -> Struct_4 {
    var var_0 = abs(_wgslsmith_sub_u32(28513u, min(23053u, u_input.a.x)));
    var var_1 = Struct_1(select(max(global1.b.a, global1.b.a), firstLeadingBit(global1.b.a), false), ~min(_wgslsmith_add_i32(global1.a.c, -1i | global1.a.b), arg_2), 0i, _wgslsmith_f_op_f32(func_4(Struct_4(Struct_1(global1.a.a, _wgslsmith_add_i32(arg_2, global1.b.b), 40535i, 1431f), func_2(), Struct_3(global0[_wgslsmith_index_u32(u_input.b, 4u)], _wgslsmith_f_op_f32(round(-263f)))))));
    let var_2 = !vec3<bool>(false, func_3() & !arg_1.x, !arg_1.x);
    var var_3 = 0i;
    var var_4 = select(false, all(select(!vec3<bool>(false, arg_1.x, arg_1.x), select(!var_2, !arg_1, select(var_2, arg_1, arg_1)), arg_2 == 5763i)), (arg_1.x && arg_1.x) != arg_1.x);
    return Struct_4(global1.a, Struct_1(vec3<i32>(~0i, -arg_2, var_1.a.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(-8736i, 32375i, global1.b.a.x, arg_2) >> (vec4<u32>(41218u, 1466u, 43505u, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(arg_2, -1i, arg_2, -2147483647i)), select(22344i, 1i, all(select(arg_1.yx, vec2<bool>(var_2.x, false), false))), var_1.d), global1.c);
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: f32) -> vec2<i32> {
    global2 = array<u32, 3>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(arg_0.c.a.b * 320f))));
    var var_1 = !(!all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_2 = true;
    global4 = _wgslsmith_div_i32(arg_0.b.b, countOneBits(0i));
    return max(vec2<i32>(arg_0.b.b, -_wgslsmith_mult_i32(-2147483647i, _wgslsmith_clamp_i32(global1.a.a.x, arg_0.b.c, arg_0.b.b))), _wgslsmith_add_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a.b, global1.a.a.x) >> (global1.c.a.c % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(global1.b.b, global1.b.c), arg_0.a.a.zx)), abs(func_2().a.xy | global1.a.a.xx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(func_5(func_1(~(~u_input.b), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), global1.a.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1573f, 1308f)), _wgslsmith_div_f32(global1.b.d, global1.c.a.a))))), _wgslsmith_f_op_f32(f32(-1f) * -235f)), abs(~global1.b.a.yx));
    var var_1 = global1.a.c;
    global4 = -select(abs(abs(_wgslsmith_mult_i32(2147483647i, global1.a.a.x))), -66487i, true);
    global4 = _wgslsmith_mult_i32(6642i >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 4294967295u, global1.c.a.c.x), max(vec4<u32>(4294967295u, global1.c.a.c.x, u_input.a.x, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.b, 3u)], global2[_wgslsmith_index_u32(u_input.b, 3u)], 20989u, u_input.b), vec4<u32>(global2[_wgslsmith_index_u32(0u, 3u)], global1.c.a.c.x, global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(70049u, 3u)], 3u)], 3u)])))) % 32u), _wgslsmith_mod_i32(global1.a.a.x, ~global1.b.b));
    global4 = _wgslsmith_mod_i32(firstLeadingBit(~var_0), var_0);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1153f, -779f)), _wgslsmith_f_op_f32(func_4(func_1(abs(global1.c.a.c.x), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(2147483647i, var_0, 19152i)), countOneBits(vec3<i32>(-2555i, global1.a.a.x, global1.a.b)))))), global1.a.d);
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(769f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-882f, var_2.x))), var_2.x)));
    let var_3 = Struct_4(func_2(), func_2(), global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(3588u, 4294967295u, var_3.c.a.c.x), _wgslsmith_mult_vec3_u32(vec3<u32>(66890u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)]), vec3<u32>(4294967295u, 7134u, 14973u))), vec3<u32>(_wgslsmith_mult_u32(global1.c.a.c.x, global2[_wgslsmith_index_u32(0u, 3u)]), var_3.c.a.c.x, abs(1u))), min(vec3<u32>(var_3.c.a.c.x, 71527u, _wgslsmith_clamp_u32(0u, u_input.b, global1.c.a.c.x)), ~(~vec3<u32>(0u, 56106u, global1.c.a.c.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-942f + _wgslsmith_f_op_f32(1117f * -506f)), -253f, false)), _wgslsmith_f_op_f32(var_3.b.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.d) + func_1(16290u, vec3<bool>(true, false, true), var_0).a.d))));
}

