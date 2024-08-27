struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(1u, vec4<i32>(3482i, 0i, 64351i, -1i), vec4<bool>(false, false, true, true), vec2<u32>(4294967295u, 35719u)), Struct_1(4294967295u, vec4<i32>(0i, -7733i, 2147483647i, 0i), vec4<bool>(false, true, true, false), vec2<u32>(77539u, 1u)), Struct_1(0u, vec4<i32>(i32(-2147483648), 2147483647i, 1i, 2147483647i), vec4<bool>(false, true, true, true), vec2<u32>(43950u, 43169u)), Struct_1(12891u, vec4<i32>(2147483647i, -18349i, 45272i, 0i), vec4<bool>(true, true, false, false), vec2<u32>(24402u, 1u)), Struct_1(36680u, vec4<i32>(18463i, 11345i, 14753i, -1i), vec4<bool>(true, true, false, false), vec2<u32>(40076u, 1u)), Struct_1(22054u, vec4<i32>(-6488i, i32(-2147483648), i32(-2147483648), -28213i), vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 27828u)), Struct_1(4294967295u, vec4<i32>(0i, -1565i, -18792i, 65736i), vec4<bool>(false, false, true, true), vec2<u32>(89331u, 0u)), Struct_1(280u, vec4<i32>(i32(-2147483648), 0i, 1i, 1i), vec4<bool>(true, false, true, true), vec2<u32>(0u, 0u)), Struct_1(1u, vec4<i32>(i32(-2147483648), 165i, -10601i, i32(-2147483648)), vec4<bool>(true, false, false, true), vec2<u32>(4294967295u, 4294967295u)), Struct_1(1u, vec4<i32>(12153i, 0i, i32(-2147483648), -1i), vec4<bool>(true, false, false, false), vec2<u32>(40398u, 0u)), Struct_1(71618u, vec4<i32>(1i, 0i, -21871i, 1i), vec4<bool>(true, false, false, true), vec2<u32>(12539u, 41426u)), Struct_1(0u, vec4<i32>(44142i, i32(-2147483648), -1i, 0i), vec4<bool>(false, false, true, true), vec2<u32>(26677u, 45433u)), Struct_1(4294967295u, vec4<i32>(-48556i, 2147483647i, -1i, -53836i), vec4<bool>(true, false, false, true), vec2<u32>(1574u, 59871u)), Struct_1(4294967295u, vec4<i32>(0i, 1i, i32(-2147483648), 41411i), vec4<bool>(true, true, false, false), vec2<u32>(10121u, 31695u)), Struct_1(14787u, vec4<i32>(-12757i, -1i, 17520i, 37814i), vec4<bool>(false, true, true, true), vec2<u32>(72874u, 44516u)), Struct_1(31705u, vec4<i32>(-51346i, 17568i, 26010i, 0i), vec4<bool>(false, true, true, false), vec2<u32>(4294967295u, 43124u)), Struct_1(4294967295u, vec4<i32>(1i, -54498i, -8997i, -1i), vec4<bool>(true, false, false, true), vec2<u32>(18187u, 7726u)), Struct_1(1282u, vec4<i32>(-21408i, 15116i, 10559i, -7097i), vec4<bool>(false, false, false, true), vec2<u32>(48233u, 98970u)), Struct_1(14240u, vec4<i32>(28285i, 27029i, 19702i, -1223i), vec4<bool>(false, true, false, true), vec2<u32>(27355u, 37218u)), Struct_1(15766u, vec4<i32>(-1i, 45776i, 21595i, 37i), vec4<bool>(false, false, false, false), vec2<u32>(1u, 1u)), Struct_1(0u, vec4<i32>(729i, 0i, -66323i, -1i), vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 18603u)), Struct_1(84632u, vec4<i32>(i32(-2147483648), 1393i, -15272i, 55679i), vec4<bool>(false, true, true, true), vec2<u32>(20731u, 4294967295u)), Struct_1(1u, vec4<i32>(-1i, -20899i, 1i, 11569i), vec4<bool>(true, false, false, true), vec2<u32>(42988u, 1u)), Struct_1(36897u, vec4<i32>(0i, 45388i, -37108i, 32628i), vec4<bool>(false, false, true, true), vec2<u32>(1582u, 2520u)), Struct_1(0u, vec4<i32>(-117i, -22808i, i32(-2147483648), 4245i), vec4<bool>(false, true, true, false), vec2<u32>(4294967295u, 0u)), Struct_1(4294967295u, vec4<i32>(0i, i32(-2147483648), -1i, 70267i), vec4<bool>(false, true, false, false), vec2<u32>(44310u, 48326u)));

var<private> global1: vec3<i32> = vec3<i32>(-47715i, 17725i, -50655i);

var<private> global2: array<Struct_2, 18>;

var<private> global3: array<f32, 16> = array<f32, 16>(220f, -149f, -1408f, 198f, 1000f, -1000f, 1356f, 174f, 699f, -778f, -744f, 857f, 1974f, 403f, 959f, -749f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2) -> i32 {
    var var_0 = vec2<u32>(~25951u, u_input.b);
    global3 = array<f32, 16>();
    let var_1 = Struct_1(0u, firstLeadingBit(arg_0), !(!vec4<bool>(!arg_1, false, true, arg_2.a.c.x & arg_2.a.c.x)), ~abs(vec2<u32>(0u, 1u)));
    var var_2 = arg_2;
    let var_3 = false;
    return ~(-58000i);
}

fn func_2() -> vec3<i32> {
    global2 = array<Struct_2, 18>();
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.a, 26u)]);
    global0 = array<Struct_1, 26>();
    var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(34013u, u_input.a), 18u)];
    var var_1 = abs(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 0u, 63541u), vec3<u32>(55792u, var_0.a.d.x, 4294967295u) << (vec3<u32>(30732u, var_0.a.d.x, 42013u) % vec3<u32>(32u))) << (~(vec3<u32>(var_0.a.d.x, u_input.b, u_input.b) & vec3<u32>(var_0.a.d.x, u_input.b, var_0.a.a)) % vec3<u32>(32u)), vec3<u32>(20864u, var_0.a.d.x, ~max(u_input.b, 26535u))));
    return vec3<i32>(u_input.c, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(global1.zz, max(~vec2<i32>(-21182i, var_0.a.b.x), _wgslsmith_add_vec2_i32(global1.zz, vec2<i32>(var_0.a.b.x, u_input.d)))), global1.x), func_3(firstTrailingBit(var_0.a.b), all(vec3<bool>(var_0.a.c.x, false, var_0.a.c.x)), Struct_2(Struct_1(1u, vec4<i32>(var_0.a.b.x, u_input.c, 0i, -38869i), vec4<bool>(false, true, var_0.a.c.x, true), vec2<u32>(u_input.a, var_1.x)))) << (var_1.x % 32u));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-194f - _wgslsmith_f_op_f32(743f + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 16u)] * 1234f))));
    global0 = array<Struct_1, 26>();
    global1 = _wgslsmith_mod_vec3_i32(func_2(), -func_2());
    global3 = array<f32, 16>();
    let var_1 = false;
    return -select(max(~global1.x, ~(u_input.c & global1.x)), _wgslsmith_sub_i32(u_input.d, -2147483647i << ((53624u ^ u_input.b) % 32u)), any(vec3<bool>(true, true, true)) && var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.d;
    global2 = array<Struct_2, 18>();
    let var_1 = global0[_wgslsmith_index_u32(35466u, 26u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 16u)], global3[_wgslsmith_index_u32(u_input.a, 16u)], 1654f, 180f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(0u, 16u)], 672f, global3[_wgslsmith_index_u32(var_1.a, 16u)], global3[_wgslsmith_index_u32(var_1.a, 16u)]), vec4<f32>(global3[_wgslsmith_index_u32(0u, 16u)], -775f, 337f, 868f), vec4<bool>(var_1.c.x, true, var_1.c.x, var_1.c.x)))), vec4<f32>(global3[_wgslsmith_index_u32(u_input.b ^ 4294967295u, 16u)], _wgslsmith_f_op_f32(trunc(1066f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 16u)] * 1323f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 16u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_2, vec4<f32>(-528f, _wgslsmith_f_op_f32(max(1410f, var_2.x)), 594f, var_2.x))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(ceil(-1122f)), global3[_wgslsmith_index_u32(~var_1.d.x, 16u)], 1816f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -272f, 198f, -694f) - _wgslsmith_f_op_vec4_f32(var_2 + var_2)), !var_1.c.x == var_1.c.x))), ~_wgslsmith_add_i32(var_1.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, global1.x), vec2<i32>(var_1.b.x, global1.x) ^ vec2<i32>(global1.x, 0i))), _wgslsmith_mult_i32(func_1(), ~(~abs(4539i))));
}

