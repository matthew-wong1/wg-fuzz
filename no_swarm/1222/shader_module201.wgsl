struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<i32>(14078i, 50634i, -38496i)), Struct_1(vec3<i32>(2147483647i, 3397i, 1i)), Struct_1(vec3<i32>(31366i, -1i, -190i)), Struct_1(vec3<i32>(2147483647i, -63087i, 672i)), Struct_1(vec3<i32>(-5332i, 0i, 1i)), Struct_1(vec3<i32>(-62482i, 28465i, 12685i)), Struct_1(vec3<i32>(-32937i, -1i, i32(-2147483648))), Struct_1(vec3<i32>(0i, 2147483647i, 30519i)), Struct_1(vec3<i32>(i32(-2147483648), 21699i, 2147483647i)), Struct_1(vec3<i32>(-8508i, 0i, i32(-2147483648))), Struct_1(vec3<i32>(1i, 1i, -1i)));

var<private> global1: vec4<u32>;

var<private> global2: Struct_3 = Struct_3(156f, vec3<u32>(60172u, 17258u, 1u), vec3<i32>(-1i, -1i, -1i));

var<private> global3: array<bool, 25>;

var<private> global4: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(Struct_2(1i, vec2<f32>(-1000f, -722f), Struct_1(vec3<i32>(0i, i32(-2147483648), -5583i)))), Struct_4(Struct_2(-1i, vec2<f32>(806f, 1796f), Struct_1(vec3<i32>(1i, 4254i, 0i)))), Struct_4(Struct_2(-46572i, vec2<f32>(-1018f, 1132f), Struct_1(vec3<i32>(1i, -25583i, -11917i)))), Struct_4(Struct_2(2147483647i, vec2<f32>(-2060f, 1000f), Struct_1(vec3<i32>(0i, -1i, 11967i)))));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> Struct_4 {
    return Struct_4(Struct_2(u_input.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(2622f + global2.a), -1548f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 445f) * vec2<f32>(global2.a, global2.a)))), Struct_1(select(global2.c, -vec3<i32>(32900i, -1396i, 2147483647i), !vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 25u)], true)))));
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 11>();
    let var_0 = min(_wgslsmith_sub_vec2_u32(~u_input.b.zw, ~u_input.b.ww), vec2<u32>(~4294967295u, ~global1.x));
    let var_1 = ~_wgslsmith_div_u32(_wgslsmith_add_u32(~1u, global1.x), 0u);
    global0 = array<Struct_1, 11>();
    let var_2 = Struct_1(global2.c);
    return ~19246u | global1.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: vec4<u32>) -> vec2<bool> {
    return vec2<bool>((_wgslsmith_mod_i32(~15663i, _wgslsmith_dot_vec2_i32(vec2<i32>(2212i, -49812i), vec2<i32>(arg_0.a.x, 23722i))) < arg_1.a.c.a.x) | true, !arg_2.x);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> u32 {
    let var_0 = select(func_4(Struct_1(abs(vec3<i32>(-2147483647i, 1i, u_input.a) & arg_0.c.a)), func_2(), vec3<bool>(_wgslsmith_f_op_f32(floor(global2.a)) > _wgslsmith_f_op_f32(ceil(global2.a)), false, all(select(vec3<bool>(false, global3[_wgslsmith_index_u32(global2.b.x, 25u)], global3[_wgslsmith_index_u32(13740u, 25u)]), vec3<bool>(true, true, global3[_wgslsmith_index_u32(u_input.b.x, 25u)]), global3[_wgslsmith_index_u32(1u, 25u)]))), _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(func_3(), ~global1.x, ~56917u, global1.x))), func_4(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], func_2(), vec3<bool>(true, select(true, false, global3[_wgslsmith_index_u32(global2.b.x, 25u)] & global3[_wgslsmith_index_u32(0u, 25u)]), all(select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(42652u, 25u)]), vec2<bool>(true, false), global3[_wgslsmith_index_u32(global1.x, 25u)]))), u_input.b), _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(f32(-1f) * -575f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), true))));
    let var_1 = func_2();
    global3 = array<bool, 25>();
    var var_2 = Struct_3(844f, ~vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.b, abs(vec4<u32>(1795u, 96394u, 55570u, 55205u))), 23263u, u_input.b.x), vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -66001i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, var_1.a.a), vec2<i32>(-2147483647i, 1i))), 8758i, _wgslsmith_sub_i32(global2.c.x, -arg_2)));
    global4 = array<Struct_4, 4>();
    return 46100u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(_wgslsmith_f_op_f32(-global2.a), abs(reverseBits(vec3<u32>(func_1(Struct_2(-46287i, vec2<f32>(170f, global2.a), global0[_wgslsmith_index_u32(global1.x, 11u)]), global2.a, u_input.a), global2.b.x << (20642u % 32u), global1.x << (global1.x % 32u)))), vec3<i32>(u_input.d, _wgslsmith_clamp_i32(~u_input.a, global2.c.x, global2.c.x), u_input.d & 8037i));
    let var_0 = _wgslsmith_mult_vec4_i32(min(-_wgslsmith_add_vec4_i32(vec4<i32>(-11952i, global2.c.x, 1i, 34839i), vec4<i32>(38155i, -1i, global2.c.x, -51761i)), vec4<i32>(-48481i, ~global2.c.x, ~(-2147483647i), u_input.d) & vec4<i32>(global2.c.x, 0i, -2813i, u_input.a)), ~vec4<i32>(global2.c.x, u_input.d, u_input.c, ~u_input.d) ^ -max(countOneBits(vec4<i32>(-1i, -2147483647i, 0i, 30583i)), -vec4<i32>(u_input.c, 71170i, u_input.a, global2.c.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1405f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global2.a)))), 791f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global2.a)))));
    global2 = Struct_3(var_1, _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~4294967295u, global2.b.x), firstLeadingBit(abs(18140u)), global1.x), _wgslsmith_div_vec3_u32(~u_input.b.wxy, _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), global1.xxy))), global2.c ^ (vec3<i32>(i32(-1i) * -9589i, -var_0.x, global2.c.x) << (~(~vec3<u32>(1u, 1u, global1.x)) % vec3<u32>(32u))));
    global1 = vec4<u32>(4294967295u, ~_wgslsmith_mult_u32(0u, global2.b.x) ^ _wgslsmith_sub_u32(global1.x, firstTrailingBit(u_input.b.x)), ~(~(~global1.x)), u_input.b.x ^ 10753u) >> (vec4<u32>(global1.x, firstTrailingBit(1u), global1.x, 37919u) % vec4<u32>(32u));
    var var_2 = 1i;
    let var_3 = Struct_2(reverseBits(2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-486f, var_1) - vec2<f32>(var_1, 2625f)))) - vec2<f32>(_wgslsmith_div_f32(395f, 854f), global2.a))), Struct_1(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, -2147483647i, var_0.x), vec3<i32>(1i, u_input.d, 103449i)))));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-197f, var_1) * -659f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.b.x + -902f), _wgslsmith_f_op_f32(-global2.a))) + _wgslsmith_f_op_f32(select(301f, _wgslsmith_f_op_f32(f32(-1f) * -360f), _wgslsmith_f_op_f32(sign(var_1)) <= _wgslsmith_f_op_f32(ceil(-1346f))))), vec3<u32>(104989u, abs(~(~2886u)), ~4294967295u), firstTrailingBit(vec3<i32>(firstTrailingBit(-1i), ~_wgslsmith_mod_i32(u_input.a, -33468i), u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, u_input.c << (1u % 32u), -31751i, _wgslsmith_f_op_vec2_f32(-var_3.b), ~var_0);
}

