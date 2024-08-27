struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: u32;

var<private> global2: bool = true;

var<private> global3: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(1u, 30555u), vec2<u32>(0u, 4294967295u), vec2<u32>(6065u, 7043u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 23997u), vec2<u32>(35151u, 12340u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 16428u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u), vec2<u32>(49129u, 4294967295u), vec2<u32>(11385u, 14024u), vec2<u32>(14844u, 1u), vec2<u32>(4294967295u, 62934u), vec2<u32>(49891u, 0u), vec2<u32>(70906u, 31576u), vec2<u32>(1u, 19072u), vec2<u32>(38961u, 35740u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 104560u), vec2<u32>(25619u, 4294967295u), vec2<u32>(4928u, 0u), vec2<u32>(28827u, 14357u), vec2<u32>(10405u, 0u), vec2<u32>(71864u, 1u), vec2<u32>(57856u, 786u), vec2<u32>(26643u, 0u), vec2<u32>(4294967295u, 129579u), vec2<u32>(5294u, 14576u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = abs(abs(u_input.b.wzw) << (vec3<u32>(~(0u & arg_0.c), _wgslsmith_dot_vec2_u32(countOneBits(global3[_wgslsmith_index_u32(arg_0.c, 29u)]), max(vec2<u32>(11550u, arg_0.c), global3[_wgslsmith_index_u32(0u, 29u)])), arg_0.c) % vec3<u32>(32u)));
    let var_1 = true;
    global0 = 4294967295u;
    global1 = ~reverseBits(~(~u_input.d.x));
    var var_2 = vec3<u32>(select(countOneBits(u_input.d.x), 0u, select(true, false, var_1)), ~select(1u, 1u, !all(vec2<bool>(var_1, true))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u), vec2<bool>(arg_0.b, var_1)), ~vec2<u32>(1u, u_input.d.x)), u_input.d) << (max(u_input.d.x, u_input.d.x) % 32u));
    return -229f;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(func_3(Struct_1(-49084i, u_input.b.x < abs(u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 31532u, 16152u, u_input.d.x), vec4<u32>(43007u, 1u, u_input.d.x, 18427u)), _wgslsmith_div_i32(u_input.a, ~11360i)))), true, abs(firstTrailingBit(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 1u)), vec4<u32>(0u, 4294967295u, u_input.d.x, 1u)))), u_input.d.x);
    let var_1 = Struct_3(Struct_1(u_input.b.x, select(true != any(vec2<bool>(var_0.b, var_0.b)), false, true), 4294967295u, -u_input.b.x));
    let var_2 = Struct_3(var_1.a);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(sign(-1169f)), var_1.a.b, ~var_0.c, var_2.a.c);
    global2 = false;
    return var_1;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    let var_0 = all(!(!vec3<bool>(true, !arg_2.b, arg_1.d < 0i)));
    global3 = array<vec2<u32>, 29>();
    var var_1 = !select(select(vec4<bool>(select(var_0, false, var_0), any(vec2<bool>(arg_1.b, arg_0.a.b)), arg_0.a.c >= 4294967295u, false), !(!vec4<bool>(arg_1.b, arg_0.a.b, false, var_0)), !(arg_0.a.b | false)), vec4<bool>(!(!arg_1.b), !arg_0.a.b, !arg_0.a.b | true, arg_1.b || arg_1.b), true);
    global0 = 1u;
    let var_2 = var_1.yz;
    return func_2();
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_1 {
    global1 = 0u;
    let var_0 = vec2<bool>(arg_3.x, false);
    var var_1 = _wgslsmith_mult_i32(15471i, select(max(~_wgslsmith_dot_vec3_i32(u_input.b.xzx, vec3<i32>(arg_0.a.d, arg_0.a.a, -12658i)), -20530i), _wgslsmith_mod_i32(-(-38059i >> (arg_1.c % 32u)), 0i), true));
    let var_2 = func_2();
    let var_3 = arg_2.a.c;
    return func_4(arg_0, arg_0.a, var_2.a).a;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> Struct_3 {
    global1 = ~u_input.d.x;
    var var_0 = Struct_2(-252f, true, vec4<u32>(27103u, u_input.d.x & u_input.d.x, reverseBits(countOneBits(1u)), min(u_input.d.x, ~24765u) << (abs(_wgslsmith_add_u32(u_input.d.x, 2290u)) % 32u)), ~(~91984u));
    let var_1 = Struct_3(func_5(func_4(func_2(), func_2().a, Struct_1(arg_1.x, false, 1u, max(0i, 0i))), func_2().a, Struct_3(Struct_1(_wgslsmith_add_i32(-1i, arg_1.x), func_4(Struct_3(Struct_1(arg_1.x, true, 26564u, -2147483647i)), Struct_1(arg_1.x, var_0.b, var_0.d, arg_1.x), Struct_1(u_input.a, false, 1u, u_input.b.x)).a.b, ~u_input.d.x, _wgslsmith_dot_vec4_i32(arg_1, arg_1))), !(!select(vec2<bool>(var_0.b, true), vec2<bool>(true, var_0.b), vec2<bool>(true, false)))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-var_0.a), var_0.b, var_0.c, u_input.d.x);
    var var_2 = vec2<bool>(func_4(func_2(), var_1.a, func_5(var_1, Struct_1(~u_input.c, true, ~1u, _wgslsmith_add_i32(0i, 1i)), Struct_3(func_5(var_1, Struct_1(-28731i, var_1.a.b, 23726u, arg_1.x), Struct_3(var_1.a), vec2<bool>(var_0.b, var_1.a.b))), !vec2<bool>(false, var_0.b))).a.b, true);
    return Struct_3(func_5(Struct_3(func_5(var_1, func_4(var_1, var_1.a, Struct_1(u_input.c, var_2.x, 1u, 1i)).a, var_1, !vec2<bool>(var_2.x, false))), var_1.a, var_1, select(select(!vec2<bool>(var_2.x, true), vec2<bool>(var_1.a.b, var_2.x), var_2.x), !select(vec2<bool>(var_2.x, var_1.a.b), vec2<bool>(true, true), vec2<bool>(var_2.x, var_1.a.b)), !(var_1.a.d > 14752i))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 29>();
    var var_0 = func_1(_wgslsmith_f_op_f32(-1f), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(586f, 1000f)), -322f, -2273f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(499f)))))));
}

