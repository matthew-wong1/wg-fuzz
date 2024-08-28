struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(-1i, -8750i, -22188i), vec3<i32>(12921i, 17640i, 1i), vec3<i32>(-1i, -23920i, 34658i), vec3<i32>(17514i, -1221i, 1i));

var<private> global2: u32 = 1u;

var<private> global3: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(381f, Struct_1(22985i, vec2<f32>(-859f, -1084f), vec3<u32>(11316u, 1u, 4294967295u)), vec3<u32>(19374u, 68736u, 101038u), 54868i), Struct_2(-1158f, Struct_1(-64731i, vec2<f32>(-383f, 1000f), vec3<u32>(4294967295u, 82425u, 16098u)), vec3<u32>(4294967295u, 15236u, 4294967295u), 1i), Struct_2(1000f, Struct_1(-1i, vec2<f32>(1000f, -621f), vec3<u32>(4294967295u, 80414u, 44947u)), vec3<u32>(1u, 22258u, 13491u), 1i), Struct_2(836f, Struct_1(2147483647i, vec2<f32>(-343f, -122f), vec3<u32>(51777u, 1u, 0u)), vec3<u32>(35579u, 1u, 0u), -1i), Struct_2(879f, Struct_1(i32(-2147483648), vec2<f32>(-1000f, 252f), vec3<u32>(0u, 52872u, 1u)), vec3<u32>(36878u, 4294967295u, 19076u), 2147483647i), Struct_2(-1648f, Struct_1(29518i, vec2<f32>(302f, -2208f), vec3<u32>(35542u, 2680u, 0u)), vec3<u32>(4294967295u, 4294967295u, 0u), 32966i), Struct_2(-181f, Struct_1(-10191i, vec2<f32>(-904f, -1451f), vec3<u32>(41531u, 10763u, 4294967295u)), vec3<u32>(1u, 23659u, 44375u), -7711i), Struct_2(151f, Struct_1(1i, vec2<f32>(800f, -303f), vec3<u32>(1u, 0u, 45559u)), vec3<u32>(32739u, 0u, 41981u), 1i), Struct_2(384f, Struct_1(1i, vec2<f32>(824f, -1306f), vec3<u32>(4294967295u, 1u, 42091u)), vec3<u32>(41805u, 3012u, 3057u), 2147483647i), Struct_2(-975f, Struct_1(7425i, vec2<f32>(-481f, 2076f), vec3<u32>(27132u, 39351u, 1u)), vec3<u32>(49074u, 29219u, 12756u), -2101i), Struct_2(-1234f, Struct_1(23218i, vec2<f32>(419f, 856f), vec3<u32>(5427u, 1u, 21408u)), vec3<u32>(4294967295u, 43011u, 0u), -392i), Struct_2(-1248f, Struct_1(-1i, vec2<f32>(-667f, -1033f), vec3<u32>(1148u, 14743u, 1u)), vec3<u32>(1u, 53758u, 0u), -40376i), Struct_2(458f, Struct_1(-1i, vec2<f32>(-1313f, -431f), vec3<u32>(0u, 31675u, 0u)), vec3<u32>(15241u, 5104u, 39297u), i32(-2147483648)), Struct_2(647f, Struct_1(57572i, vec2<f32>(811f, 789f), vec3<u32>(17373u, 4294967295u, 0u)), vec3<u32>(1u, 45270u, 0u), 21958i), Struct_2(556f, Struct_1(0i, vec2<f32>(-704f, -472f), vec3<u32>(11110u, 41581u, 68840u)), vec3<u32>(13781u, 27362u, 41406u), 42116i), Struct_2(-2671f, Struct_1(25487i, vec2<f32>(1000f, 1549f), vec3<u32>(68326u, 0u, 26537u)), vec3<u32>(0u, 0u, 4294967295u), 0i), Struct_2(516f, Struct_1(1i, vec2<f32>(-724f, 1000f), vec3<u32>(1u, 4294967295u, 35821u)), vec3<u32>(1u, 12254u, 53178u), -1i), Struct_2(-108f, Struct_1(29479i, vec2<f32>(150f, 757f), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec3<u32>(40340u, 4294967295u, 50265u), -18289i), Struct_2(1038f, Struct_1(0i, vec2<f32>(717f, 186f), vec3<u32>(1u, 4294967295u, 18313u)), vec3<u32>(4901u, 1u, 0u), 1i), Struct_2(1768f, Struct_1(2147483647i, vec2<f32>(1394f, 1350f), vec3<u32>(4294967295u, 4294967295u, 30610u)), vec3<u32>(4294967295u, 29992u, 0u), -18792i), Struct_2(1983f, Struct_1(-50016i, vec2<f32>(293f, 525f), vec3<u32>(0u, 1u, 9200u)), vec3<u32>(30008u, 4294967295u, 0u), -17218i), Struct_2(-965f, Struct_1(-34314i, vec2<f32>(395f, -126f), vec3<u32>(21137u, 4294967295u, 25352u)), vec3<u32>(34962u, 1u, 0u), 16061i), Struct_2(-1157f, Struct_1(1i, vec2<f32>(407f, 1224f), vec3<u32>(4294967295u, 33370u, 0u)), vec3<u32>(0u, 50722u, 27613u), 0i));

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    global0 = global4.b;
    global1 = array<vec3<i32>, 4>();
    global3 = array<Struct_2, 23>();
    let var_0 = vec2<i32>(7588i, global4.d);
    let var_1 = global4.b;
    return _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global0.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global0.b.x)))))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(global0.b.x - global4.b.b.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4.b.b.x, global0.b.x), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(416f + -2591f), -103f), vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(416f, 1000f)))), true)));
    global4 = Struct_2(-115f, Struct_1(9207i, global0.b, ~max(~global4.c, global4.c)), vec3<u32>(~global4.c.x >> (24106u % 32u), 4294967295u, global0.c.x) & _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(global0.c, global0.c) & _wgslsmith_sub_vec3_u32(global0.c, global4.c), ~(vec3<u32>(4294967295u, global4.c.x, global0.c.x) >> (vec3<u32>(global4.c.x, 39689u, global0.c.x) % vec3<u32>(32u)))), 1i);
    var var_2 = -1297f;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -500f))), var_1.x)), global4.b, _wgslsmith_div_vec3_u32(global4.c ^ ~_wgslsmith_add_vec3_u32(vec3<u32>(11557u, u_input.a, global0.c.x), global4.c), firstLeadingBit(reverseBits(global4.c))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global4.b.a, u_input.b.x), vec2<i32>(u_input.b.x, 3375i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(global4.d, global0.a) & vec2<i32>(60618i, 43153i), u_input.b >> (global4.b.c.zz % vec2<u32>(32u))), u_input.b));
    return global4.b;
}

fn func_1(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = any(select(vec2<bool>(!(global4.a < arg_0.b.b.x), !any(vec4<bool>(false, true, true, false))), vec2<bool>(true, true), true));
    let var_1 = func_2();
    var var_2 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(~59252u, max(0u & global4.c.x, global4.c.x & 24677u), ~(~101554u)), global4.c);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, var_1.b.x, 1000f, var_1.b.x) + vec4<f32>(-2356f, var_1.b.x, arg_0.b.b.x, -1860f)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-182f, 1351f, 1000f, -555f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, arg_0.a)), 677f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1522f))), _wgslsmith_div_f32(-403f, 1700f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1216f, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(trunc(global4.a)), _wgslsmith_f_op_f32(f32(-1f) * -455f)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(abs(arg_0.b.b.x)), -129f))))));
    var var_4 = arg_0;
    return var_4.c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 23>();
    let var_0 = global4.b.b;
    let var_1 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-global4.a)));
    var var_2 = false;
    var var_3 = abs(~(~_wgslsmith_mod_u32(global0.c.x, global4.c.x)) & global4.b.c.x);
    global2 = 82466u;
    global2 = 0u;
    let var_4 = -29135i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -820f) * _wgslsmith_f_op_f32(-global4.b.b.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.a - -247f), _wgslsmith_f_op_f32(-601f - 496f)), -317f)), countOneBits(select(u_input.b.x, ~global4.d, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), -971f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(423f)) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(149f, global4.a)) - _wgslsmith_f_op_f32(global0.b.x + 154f)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(42656u, _wgslsmith_dot_vec3_u32(vec3<u32>(global4.b.c.x, 6250u, 0u), func_1(global3[_wgslsmith_index_u32(global0.c.x, 23u)])), ~11494u, 0u), firstLeadingBit(vec4<u32>(1u, 85827u, u_input.a, ~global4.b.c.x)), vec4<u32>(~abs(40283u), 1u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global4.b.c.x, global4.b.c.x, u_input.a), global0.c.x, global4.c.x), reverseBits(~0u))), vec4<f32>(561f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(1495f + -517f)))), _wgslsmith_f_op_f32(-var_0.x), 1f));
}

