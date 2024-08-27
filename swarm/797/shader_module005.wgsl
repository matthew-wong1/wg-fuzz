struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(-13432i, -1i, 34621i, -57130i), vec4<i32>(16759i, -44530i, -26172i, 0i), vec4<i32>(41132i, 0i, i32(-2147483648), 1i), vec4<i32>(-59726i, -1i, -1i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), -1i, 41802i), vec4<i32>(-1414i, 2147483647i, -1i, 15513i), vec4<i32>(5862i, -70063i, -21953i, 1i), vec4<i32>(45980i, -1i, 13260i, -1i), vec4<i32>(-43793i, -15526i, -21007i, -1i), vec4<i32>(21644i, 0i, 930i, 76400i), vec4<i32>(4483i, -21238i, 1i, 1i), vec4<i32>(-1i, -1i, i32(-2147483648), 11018i));

var<private> global2: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(0i, -1i, 7233i, i32(-2147483648)), vec4<i32>(-6170i, 0i, -1i, 27072i), vec4<i32>(-27513i, 1i, -15651i, -8089i), vec4<i32>(14204i, -41806i, 36218i, 0i), vec4<i32>(11250i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-6128i, -20900i, -16816i, 1i), vec4<i32>(-17381i, -6879i, -1i, 2147483647i), vec4<i32>(1i, 1i, 4887i, 10101i), vec4<i32>(i32(-2147483648), 28994i, 1i, 0i), vec4<i32>(19300i, -24444i, i32(-2147483648), -1i), vec4<i32>(0i, -9811i, 2147483647i, 28642i), vec4<i32>(2147483647i, -11492i, 2147483647i, -5887i), vec4<i32>(-19514i, 2147483647i, -25843i, -6785i), vec4<i32>(i32(-2147483648), 11315i, 1i, 4033i), vec4<i32>(-59975i, 2147483647i, -1i, -1i), vec4<i32>(i32(-2147483648), 11180i, 1i, -1i), vec4<i32>(1i, 1i, 2147483647i, -19502i), vec4<i32>(-28373i, 1i, -23567i, 0i), vec4<i32>(i32(-2147483648), -10839i, -27933i, -1i), vec4<i32>(-21331i, -28442i, -12430i, -7154i), vec4<i32>(2147483647i, 1i, i32(-2147483648), 1i), vec4<i32>(-1525i, -1i, 2147483647i, 41508i), vec4<i32>(0i, 1i, i32(-2147483648), 20033i), vec4<i32>(i32(-2147483648), 2147483647i, 1i, 0i), vec4<i32>(0i, -26343i, -9314i, 29869i), vec4<i32>(-1i, -15575i, i32(-2147483648), 14987i), vec4<i32>(55651i, 0i, 33021i, 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), -55726i, -16270i), vec4<i32>(2147483647i, -1i, -6744i, 0i));

var<private> global3: Struct_1 = Struct_1(false, -1220f, true, vec3<i32>(1i, i32(-2147483648), -1i), vec4<bool>(false, true, true, false));

var<private> global4: array<Struct_2, 30>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: u32, arg_3: vec3<f32>) -> vec2<u32> {
    let var_0 = vec4<bool>(all(global3.e.xzy), true, any(select(vec2<bool>(arg_1, global3.e.x), vec2<bool>(true | global3.c, false), !global3.e.yz)), _wgslsmith_add_u32(select(arg_2, arg_2, global3.e.x) & ~arg_0.x, arg_2) == ~4294967295u);
    global3 = Struct_1(all(var_0.yxy), _wgslsmith_f_op_f32(-arg_3.x), any(vec4<bool>(all(global3.e.wzy), var_0.x, false, all(!var_0.zyz))), firstLeadingBit(vec3<i32>(-_wgslsmith_div_i32(global3.d.x, global3.d.x), _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.d, global3.d.x), _wgslsmith_sub_i32(global3.d.x, u_input.d)), -37022i)), global3.e);
    global4 = array<Struct_2, 30>();
    global3 = Struct_1(false, -381f, false, countOneBits(firstTrailingBit(global3.d)) | vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global3.d, global3.d), -2147483647i ^ global3.d.x), u_input.d, -1i), global3.e);
    global3 = Struct_1(var_0.x, -1472f, false, -vec3<i32>(-47667i, _wgslsmith_sub_i32(36710i, 57844i), 28375i), vec4<bool>(false, true, any(select(global3.e, select(vec4<bool>(false, arg_1, true, arg_1), var_0, arg_1), global3.c)), arg_1));
    return _wgslsmith_sub_vec2_u32(countOneBits(u_input.c.yy), arg_0.zy);
}

fn func_2() -> Struct_3 {
    global1 = array<vec4<i32>, 12>();
    let var_0 = _wgslsmith_sub_vec2_u32(select(vec2<u32>(abs(53679u), _wgslsmith_add_u32(reverseBits(u_input.c.x), _wgslsmith_div_u32(45264u, u_input.b))), vec2<u32>(u_input.c.x, ~16990u), !all(vec4<bool>(global3.a, global3.c, false, global3.c))), _wgslsmith_mult_vec2_u32(~(~u_input.c.yx), func_3((vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.a) ^ vec4<u32>(12114u, 4294967295u, u_input.b, u_input.b)) >> (firstLeadingBit(vec4<u32>(104097u, 106357u, u_input.a, u_input.b)) % vec4<u32>(32u)), true, (u_input.c.x << (u_input.a % 32u)) ^ select(4294967295u, 16901u, global3.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(704f, 754f, 1083f), vec3<f32>(1254f, -465f, global0[_wgslsmith_index_u32(87795u, 26u)])))))));
    let var_1 = max(_wgslsmith_div_i32(~((-2147483647i >> (u_input.a % 32u)) | global3.d.x), u_input.d), -u_input.d);
    global2 = array<vec4<i32>, 29>();
    var var_2 = Struct_1(global3.e.x, _wgslsmith_f_op_f32(f32(-1f) * -950f), global3.e.x, firstLeadingBit(global3.d), vec4<bool>(global3.a, global3.a, any(vec3<bool>(true, true, true)), global3.a));
    return Struct_3(func_3(~(vec4<u32>(33387u, 0u, 54045u, var_0.x) >> (vec4<u32>(22617u, u_input.c.x, var_0.x, u_input.a) % vec4<u32>(32u))), !all(select(vec3<bool>(global3.c, true, false), var_2.e.wwx, global3.e.x)), _wgslsmith_mult_u32(func_3(~vec4<u32>(4294967295u, u_input.c.x, 1u, 13504u), true, u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], global3.b, 451f) - vec3<f32>(global0[_wgslsmith_index_u32(19365u, 26u)], 240f, var_2.b))).x, _wgslsmith_div_u32(var_0.x, abs(var_0.x))), vec3<f32>(-759f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.b)), _wgslsmith_f_op_f32(var_2.b * 1921f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(4294967295u, 26u)], -1332f, true))))).x, Struct_2(~abs(_wgslsmith_add_u32(0u, 4294967295u)), _wgslsmith_div_f32(463f, _wgslsmith_f_op_f32(round(259f))), Struct_1(global3.a, _wgslsmith_f_op_f32(floor(var_2.b)), true, vec3<i32>(1i, global3.d.x, u_input.d), !select(var_2.e, var_2.e, vec4<bool>(false, var_2.a, false, false)))), Struct_2(~_wgslsmith_mult_u32(29028u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, var_0.x, var_0.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, var_0.x))), var_2.b, Struct_1(904f > _wgslsmith_f_op_f32(floor(var_2.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(172f, 1185f)), -1560f)), any(vec2<bool>(true, true)), global3.d, select(vec4<bool>(false, true, global3.a, false), global3.e, global3.c))), ~(~vec3<u32>(u_input.b, 4294967295u, 123036u) << (((vec3<u32>(66761u, 1u, u_input.b) | u_input.c) << (~vec3<u32>(u_input.a, u_input.c.x, 44488u) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    return Struct_1(true, _wgslsmith_f_op_f32(step(742f, _wgslsmith_f_op_f32(trunc(-1000f)))), false, ~(~select(_wgslsmith_mult_vec3_i32(vec3<i32>(global3.d.x, 22525i, global3.d.x), vec3<i32>(-32575i, u_input.d, -40635i)), _wgslsmith_div_vec3_i32(global3.d, vec3<i32>(u_input.d, u_input.d, 2147483647i)), any(global3.e.xy))), select(!global3.e, select(!(!vec4<bool>(true, global3.e.x, global3.e.x, global3.a)), select(vec4<bool>(false, global3.a, false, global3.c), vec4<bool>(arg_0.b.c.c, global3.c, false, false), select(vec4<bool>(true, global3.c, arg_0.c.c.c, false), arg_0.b.c.e, arg_0.b.c.e.x)), arg_0.c.c.e.x), vec4<bool>(false, true, !select(false, global3.a, global3.a), arg_0.c.c.c & any(vec2<bool>(global3.c, global3.e.x)))));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: f32, arg_3: bool) -> StorageBuffer {
    global3 = func_4(func_2());
    var var_0 = 0u;
    return StorageBuffer(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, 38713u, 4294967295u), countOneBits(vec3<u32>(1u ^ arg_0, 1u << (u_input.b % 32u), _wgslsmith_clamp_u32(1u, u_input.c.x, arg_0)))), 29u)], _wgslsmith_mult_i32(0i, ~(~(~u_input.d))), ~(-firstTrailingBit(vec4<i32>(0i, u_input.d, u_input.d, u_input.d) | vec4<i32>(u_input.d, 0i, global3.d.x, -2147483647i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 26u)], -1513f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 26u)], 156f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b, global0[_wgslsmith_index_u32(arg_0, 26u)]) * vec2<f32>(global3.b, 1256f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(67969u, 26u)], global3.b, -2477f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(0u, 26u)], 1000f, global3.b), vec3<f32>(global0[_wgslsmith_index_u32(arg_0, 26u)], 191f, global0[_wgslsmith_index_u32(1u, 26u)]), arg_1.wzz)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~global3.d.xx);
    let x = u_input.a;
    s_output = func_1(u_input.c.x, vec4<bool>(global3.a, true, global3.c, (_wgslsmith_dot_vec3_i32(vec3<i32>(global3.d.x, var_0.x, -2147483647i), global3.d) | abs(2147483647i)) > u_input.d), -312f, all(vec3<bool>(global3.b < _wgslsmith_f_op_f32(327f - global0[_wgslsmith_index_u32(u_input.c.x, 26u)]), true, true | all(global3.e))));
}

