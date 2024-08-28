struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(Struct_1(4294967295u, vec3<u32>(0u, 1u, 4294967295u), vec3<i32>(2147483647i, 0i, 52095i), 32970i), Struct_1(1u, vec3<u32>(82192u, 0u, 11823u), vec3<i32>(-1i, 1i, -29956i), 1i)), Struct_3(Struct_1(4294967295u, vec3<u32>(1812u, 109172u, 45373u), vec3<i32>(-5399i, i32(-2147483648), -1i), 0i), Struct_1(13059u, vec3<u32>(15760u, 39695u, 4294967295u), vec3<i32>(-41495i, 1i, -1i), -30646i)), Struct_3(Struct_1(0u, vec3<u32>(19192u, 6331u, 29884u), vec3<i32>(34094i, -212i, 1987i), -2181i), Struct_1(1u, vec3<u32>(76902u, 4294967295u, 5876u), vec3<i32>(-30809i, -45528i, 2147483647i), 0i)), Struct_3(Struct_1(4294967295u, vec3<u32>(19494u, 4294967295u, 45144u), vec3<i32>(-34855i, 33651i, 57974i), 1i), Struct_1(27946u, vec3<u32>(1u, 0u, 37117u), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), i32(-2147483648))), Struct_3(Struct_1(4294967295u, vec3<u32>(6332u, 11626u, 4294967295u), vec3<i32>(17410i, 2147483647i, -41226i), -60313i), Struct_1(52290u, vec3<u32>(1u, 12640u, 0u), vec3<i32>(1i, -27417i, -7017i), 65128i)), Struct_3(Struct_1(4294967295u, vec3<u32>(0u, 0u, 4294967295u), vec3<i32>(-58921i, -14186i, -14757i), -46348i), Struct_1(0u, vec3<u32>(4294967295u, 0u, 1u), vec3<i32>(52254i, 2147483647i, -10069i), -33186i)), Struct_3(Struct_1(4294967295u, vec3<u32>(1u, 18655u, 22125u), vec3<i32>(-1i, 0i, i32(-2147483648)), -1i), Struct_1(0u, vec3<u32>(77889u, 0u, 32574u), vec3<i32>(0i, 2147483647i, i32(-2147483648)), 0i)), Struct_3(Struct_1(69190u, vec3<u32>(11407u, 1u, 4294967295u), vec3<i32>(16478i, 2147483647i, i32(-2147483648)), 0i), Struct_1(1u, vec3<u32>(0u, 1u, 1u), vec3<i32>(11904i, 24863i, i32(-2147483648)), -4224i)), Struct_3(Struct_1(22834u, vec3<u32>(31577u, 4294967295u, 30120u), vec3<i32>(0i, -10748i, -79877i), 1i), Struct_1(4294967295u, vec3<u32>(4294967295u, 48668u, 30194u), vec3<i32>(-21636i, 1i, i32(-2147483648)), -28672i)), Struct_3(Struct_1(43415u, vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<i32>(55399i, 1i, i32(-2147483648)), 1i), Struct_1(0u, vec3<u32>(0u, 4294967295u, 4294967295u), vec3<i32>(-48812i, 18620i, 2147483647i), -19444i)), Struct_3(Struct_1(1u, vec3<u32>(1u, 0u, 4294967295u), vec3<i32>(-33186i, i32(-2147483648), i32(-2147483648)), -5445i), Struct_1(32887u, vec3<u32>(4294967295u, 4294967295u, 0u), vec3<i32>(-39169i, 2147483647i, 27647i), 17844i)), Struct_3(Struct_1(62648u, vec3<u32>(1u, 24545u, 4294967295u), vec3<i32>(26080i, 0i, 2147483647i), i32(-2147483648)), Struct_1(10974u, vec3<u32>(0u, 31349u, 0u), vec3<i32>(2147483647i, -1i, 1483i), -1i)), Struct_3(Struct_1(9149u, vec3<u32>(0u, 46249u, 4294967295u), vec3<i32>(2179i, -1i, -20444i), 1i), Struct_1(1296u, vec3<u32>(1u, 22335u, 4294967295u), vec3<i32>(2603i, 0i, -1i), i32(-2147483648))), Struct_3(Struct_1(0u, vec3<u32>(4294967295u, 10580u, 4294967295u), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), i32(-2147483648)), Struct_1(1u, vec3<u32>(14243u, 1u, 37957u), vec3<i32>(1i, i32(-2147483648), -1i), -41966i)), Struct_3(Struct_1(32197u, vec3<u32>(0u, 0u, 5617u), vec3<i32>(1i, 1i, 15594i), 17535i), Struct_1(0u, vec3<u32>(0u, 13694u, 0u), vec3<i32>(7989i, 43850i, 0i), 53290i)), Struct_3(Struct_1(35171u, vec3<u32>(21466u, 1u, 28718u), vec3<i32>(-1i, -37717i, 1i), -32428i), Struct_1(15938u, vec3<u32>(4294967295u, 35279u, 16606u), vec3<i32>(1i, -34875i, 16104i), -1i)), Struct_3(Struct_1(1u, vec3<u32>(4294967295u, 1u, 0u), vec3<i32>(1i, 0i, -16035i), 1461i), Struct_1(69089u, vec3<u32>(57283u, 4294967295u, 11631u), vec3<i32>(-1i, i32(-2147483648), -14391i), -1i)));

var<private> global2: f32;

var<private> global3: vec3<i32> = vec3<i32>(59392i, -36060i, -6560i);

var<private> global4: vec3<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: u32) -> f32 {
    let var_0 = global0.a.x & _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, 23700i)), -vec3<i32>(global0.a.x, u_input.b.x, global3.x)), vec3<i32>(~(-1i), ~global3.x, u_input.b.x)), u_input.b);
    global1 = array<Struct_3, 17>();
    global4 = vec3<u32>(45894u ^ _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(24260u, global4.x, global4.x, global4.x)), ~vec4<u32>(u_input.a, 1u, 1u, arg_2)), 0u, 4294967295u >> (global4.x % 32u));
    global0 = Struct_4(min(global3.zy, vec2<i32>(u_input.b.x << (~1u % 32u), _wgslsmith_clamp_i32(var_0, max(u_input.b.x, -44243i), global3.x))), global0.b);
    global1 = array<Struct_3, 17>();
    return 1634f;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_5 {
    let var_0 = 1i;
    global0 = Struct_4(vec2<i32>(-1i, global0.a.x), global0.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(655f)) + _wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), vec4<f32>(-2391f, 587f, 142f, 529f), arg_1.b.b.x))))));
    var var_2 = firstLeadingBit(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(arg_1.a.a, u_input.a)) & _wgslsmith_add_vec2_u32(global4.zx, vec2<u32>(arg_1.b.b.x, 0u)), firstTrailingBit(vec2<u32>(u_input.a, 0u) ^ arg_1.a.b.yx))) & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(14494u, u_input.a), u_input.c), 2594u, 1u), ~(vec4<u32>(u_input.a, 29575u, arg_1.b.b.x, 1u) << (vec4<u32>(17885u, global4.x, 1u, 156u) % vec4<u32>(32u)))), arg_1.b.a);
    let var_3 = -1i;
    return Struct_5(Struct_1(global4.x, vec3<u32>(_wgslsmith_add_u32(var_2.x, var_2.x), ~arg_1.b.b.x, 11123u) ^ firstTrailingBit(~vec3<u32>(1u, u_input.c.x, u_input.c.x)), _wgslsmith_div_vec3_i32(-vec3<i32>(global3.x, var_3, u_input.b.x), -vec3<i32>(u_input.b.x, -50545i, 0i) ^ (u_input.b << (vec3<u32>(4294967295u, 80749u, arg_1.a.b.x) % vec3<u32>(32u)))), 0i), arg_1.a, 380f);
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1633f, -1948f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.c, arg_0.c), vec2<f32>(arg_0.c, 1739f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.c, 1535f)))))));
    return _wgslsmith_f_op_f32(-arg_0.c);
}

fn func_1() -> StorageBuffer {
    var var_0 = !global0.b.a;
    global4 = ~abs(reverseBits(vec3<u32>(0u, 66803u, 9690u) >> (vec3<u32>(u_input.a, global4.x, u_input.a) % vec3<u32>(32u))) ^ ~select(vec3<u32>(global4.x, u_input.c.x, 0u), vec3<u32>(4294967295u, 91010u, u_input.a), vec3<bool>(global0.b.a, global0.b.a, true)));
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(func_2(select(select(vec3<bool>(global0.b.a, false, false), vec3<bool>(global0.b.a, global0.b.a, false), true), vec3<bool>(false, true, true), select(true, global0.b.a, true)), global1[_wgslsmith_index_u32(~(~global4.x), 17u)]), ~firstTrailingBit(~1u), vec2<bool>(true, true)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(719f * 1000f) - _wgslsmith_f_op_f32(1131f + 1000f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(592f, 1116f))))) - _wgslsmith_f_op_f32(ceil(-1561f))), _wgslsmith_div_f32(-1000f, -204f));
    let var_2 = Struct_4(vec2<i32>(func_2(!vec3<bool>(global0.b.a, global0.b.a, false), global1[_wgslsmith_index_u32(u_input.c.x, 17u)]).a.d, global0.a.x >> (reverseBits(~global4.x) % 32u)), global0.b);
    return StorageBuffer(1255f, ~(~vec3<u32>(38104u, 1u | u_input.c.x, ~26487u)), vec4<i32>(-21414i, _wgslsmith_dot_vec2_i32(~max(global3.yz, global0.a), min(-global0.a, u_input.b.yz)), _wgslsmith_clamp_i32(-2147483647i, global3.x, min(_wgslsmith_div_i32(-9173i, u_input.b.x), -global0.a.x)), _wgslsmith_mod_i32(-1i, 2147483647i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_5(Struct_1(global4.x, vec3<u32>(global4.x, 31938u, 13066u), u_input.b, 80339i), Struct_1(1u, vec3<u32>(global4.x, 130658u, u_input.c.x), u_input.b, global0.a.x), -903f), global4.x, vec2<bool>(var_2.b.a, true))) * -424f), var_1.x) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(866f, var_1.x, var_1.x, var_1.x) + vec4<f32>(var_1.x, -973f, var_1.x, 1703f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1220f, -1000f, 973f)), all(vec4<bool>(true, true, global0.b.a, true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 2384f, 277f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_1.x, var_1.x, 1742f), vec4<f32>(-541f, 1000f, var_1.x, var_1.x)))), vec4<bool>(global0.b.a, var_2.b.a, all(vec3<bool>(var_2.b.a, false, true)), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

