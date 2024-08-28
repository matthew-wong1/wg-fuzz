struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 18>;

var<private> global1: u32;

var<private> global2: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global3: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-1736i, 2064i, 26314i, -31154i), vec4<i32>(1i, 12375i, 0i, i32(-2147483648)), vec4<i32>(-1i, 39289i, 2147483647i, 6055i), vec4<i32>(2147483647i, 4270i, 2147483647i, 34323i), vec4<i32>(0i, 2147483647i, 53979i, 0i), vec4<i32>(2147483647i, 20393i, -41990i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, 1i, 12740i), vec4<i32>(-51339i, -1i, -101096i, -26737i), vec4<i32>(i32(-2147483648), 1i, -1i, 1i), vec4<i32>(5278i, -1i, 0i, 24397i), vec4<i32>(-35801i, 2147483647i, 1i, i32(-2147483648)), vec4<i32>(-29970i, 0i, 29267i, i32(-2147483648)), vec4<i32>(2147483647i, 39079i, 0i, 29246i), vec4<i32>(-23219i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<i32>(-11934i, 2147483647i, 13008i, 388i), vec4<i32>(53412i, 0i, i32(-2147483648), 38194i), vec4<i32>(0i, 0i, 2147483647i, -1i), vec4<i32>(-1i, 1i, i32(-2147483648), -1i), vec4<i32>(-1i, 5668i, 38512i, 1i), vec4<i32>(-3989i, 49444i, -13494i, -1i), vec4<i32>(-6713i, 1i, -1i, 27390i), vec4<i32>(i32(-2147483648), -25850i, 0i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, 32833i, -6958i), vec4<i32>(2147483647i, 7350i, -1i, 2147483647i), vec4<i32>(0i, 1i, -38316i, -1i), vec4<i32>(34613i, 0i, -1i, 37870i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(true, vec4<f32>(_wgslsmith_div_f32(-985f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1599f, -277f)), _wgslsmith_div_f32(519f, 379f))), 1149f, -198f, -339f), -select(~(u_input.e << (u_input.c % vec3<u32>(32u))), ~min(vec3<i32>(u_input.e.x, u_input.a, -1i), u_input.e), true), 24366u);
    global3 = array<vec4<i32>, 26>();
    global0 = array<vec2<i32>, 18>();
    let var_1 = -vec3<i32>(u_input.e.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(1i, var_0.c.x)), var_0.c.yy), var_0.c.x) | var_0.c;
    global1 = u_input.d;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.x)) + 1272f);
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<i32>) -> vec4<f32> {
    let var_0 = vec4<bool>(!(all(!global2[_wgslsmith_index_u32(58285u, 28u)]) || all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)))), (-u_input.e.x & 107886i) != arg_2.x, !(true != all(vec4<bool>(false, false, false, true))), true);
    global1 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u << ((0u >> (arg_1.x % 32u)) % 32u), 0u), _wgslsmith_div_u32(~(~u_input.d), ~1u)) | _wgslsmith_mod_u32(20298u, firstLeadingBit(~1u >> (_wgslsmith_mult_u32(arg_1.x, 58507u) % 32u)));
    global2 = array<vec2<bool>, 28>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(779f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1370f + 489f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 - -363f))))));
    let var_2 = var_0.x;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), 201f, _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(-arg_0));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    global2 = array<vec2<bool>, 28>();
    var var_1 = vec2<i32>(arg_1.x, -2147483647i);
    global1 = _wgslsmith_mult_u32(~var_0.d, u_input.c.x);
    return Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1228f - arg_2.b.x) + arg_2.b.x), ~vec4<u32>(var_0.d, var_0.d, 4280u, 15127u), abs(global3[_wgslsmith_index_u32(arg_2.d, 26u)] | global3[_wgslsmith_index_u32(1u, 26u)]))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_2.b.x, arg_2.b.x), _wgslsmith_f_op_f32(exp2(arg_2.b.x)), _wgslsmith_f_op_f32(arg_2.b.x + 2204f), -114f))), u_input.e, 4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~(~17889u);
    var var_1 = Struct_1(_wgslsmith_mod_u32(var_0, ~min(1u, 35545u)) < var_0, vec4<f32>(_wgslsmith_f_op_f32(arg_3.b.x - _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -375f))), _wgslsmith_f_op_f32(ceil(arg_1.b.x)), _wgslsmith_f_op_vec4_f32(func_2(306f, ~reverseBits(vec4<u32>(0u, 0u, 52161u, arg_2)), vec4<i32>(~1i, arg_3.c.x, ~(-10590i), arg_3.c.x))).x), vec3<i32>(-1i) * -vec3<i32>(0i, arg_0.c.x, -u_input.e.x), 2570u);
    global2 = array<vec2<bool>, 28>();
    let var_2 = ~_wgslsmith_mult_u32(~(~select(arg_0.d, 1u, true)), 57621u);
    var var_3 = _wgslsmith_f_op_f32(-var_1.b.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(firstTrailingBit(~select(vec3<u32>(u_input.c.x, 4294967295u, 1u), u_input.c, vec3<bool>(true, false, true))) & u_input.c);
    let var_1 = var_0.x;
    var var_2 = func_4(func_1(~global0[_wgslsmith_index_u32(~firstTrailingBit(4294967295u), 18u)], vec2<i32>(firstLeadingBit(_wgslsmith_clamp_i32(u_input.e.x, u_input.e.x, 0i)), u_input.a), Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(420f, 1015f, 276f, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(373f, 1200f, 339f, -151f) + vec4<f32>(-1225f, 2541f, -1368f, -507f))), -vec3<i32>(48848i, -12754i, u_input.e.x), (44256u | var_0.x) & ~u_input.d)), Struct_1((-1822f > _wgslsmith_f_op_f32(ceil(-1395f))) & true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), firstTrailingBit(func_1(vec2<i32>(u_input.e.x, u_input.e.x) | global0[_wgslsmith_index_u32(0u, 18u)], vec2<i32>(40820i, u_input.a), func_1(u_input.e.zz, u_input.e.zy, Struct_1(true, vec4<f32>(-1229f, 1347f, 635f, -1295f), vec3<i32>(-87052i, -1i, 1i), 1372u))).c), reverseBits(var_0.x)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c.x, ~var_0.x, u_input.d), func_1(vec2<i32>(min(-53795i, 25411i), firstLeadingBit(-1i)), vec2<i32>(-1i | u_input.a, u_input.e.x), Struct_1(all(vec3<bool>(false, false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2531f, -896f, 1350f, 1151f)), -vec3<i32>(u_input.e.x, u_input.e.x, 6898i), _wgslsmith_mult_u32(u_input.b, var_0.x))).d), Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1337f, -448f)), _wgslsmith_f_op_f32(f32(-1f) * -200f), _wgslsmith_f_op_vec4_f32(func_2(-841f, ~vec4<u32>(60150u, 14685u, u_input.c.x, 0u), global3[_wgslsmith_index_u32(countOneBits(var_0.x), 26u)])).x, _wgslsmith_f_op_f32(round(-1360f))), countOneBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(-1i, u_input.a, -54301i), _wgslsmith_div_vec3_i32(u_input.e, u_input.e))), ~(~(~u_input.c.x))));
    let var_3 = true;
    global1 = 50128u;
    var var_4 = _wgslsmith_f_op_f32(972f * -652f);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec4_i32(-global3[_wgslsmith_index_u32(var_0.x, 26u)], vec4<i32>(74630i, 2147483647i, -32341i, var_2.c.x))), u_input.a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(517f, _wgslsmith_f_op_f32(-var_2.b.x)), var_2.b.x, _wgslsmith_f_op_f32(func_3())))), _wgslsmith_mult_i32(20027i, min(min(-1i, -24578i), _wgslsmith_sub_i32(firstTrailingBit(var_2.c.x), 1i))));
}

