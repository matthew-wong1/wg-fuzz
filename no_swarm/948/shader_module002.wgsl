struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: bool;

var<private> global2: array<bool, 18> = array<bool, 18>(true, true, true, false, true, true, false, true, true, false, false, true, true, false, false, true, false, false);

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-690f), Struct_1(1000f), Struct_1(323f), Struct_1(1642f), Struct_1(149f), Struct_1(347f), Struct_1(1000f));

var<private> global4: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<i32> {
    global2 = array<bool, 18>();
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1681f, 291f, global0.x, 700f), vec4<f32>(-237f, -194f, global0.x, global0.x), vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], false)))))));
    var var_1 = global3[_wgslsmith_index_u32(0u, 7u)];
    return firstTrailingBit(-abs(min(abs(vec3<i32>(41831i, u_input.c.x, u_input.c.x)), -vec3<i32>(1i, 2819i, u_input.c.x))));
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = abs(75558i);
    global3 = array<Struct_1, 7>();
    let var_1 = abs(~u_input.c) ^ countOneBits(vec2<i32>(-1i) * -u_input.c);
    var var_2 = ~19015i;
    var var_3 = Struct_2(all(global4[_wgslsmith_index_u32(~u_input.d, 3u)]), 2147483647i, vec2<u32>(_wgslsmith_add_u32((0u >> (u_input.a.x % 32u)) << (~arg_0 % 32u), firstTrailingBit(29619u)), arg_0 >> (26892u % 32u)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, 56255u), 7u)], select(-u_input.c.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(func_3(), -vec3<i32>(u_input.c.x, var_1.x, var_1.x), select(vec3<i32>(37166i, var_0, -32292i), vec3<i32>(44120i, -63338i, var_1.x), vec3<bool>(global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(arg_0, 18u)], global2[_wgslsmith_index_u32(15717u, 18u)]))), min(_wgslsmith_mod_vec3_i32(vec3<i32>(-30515i, var_0, -2147483647i), vec3<i32>(-2147483647i, u_input.c.x, 0i)), vec3<i32>(var_1.x, 2147483647i, 1i) ^ vec3<i32>(-2147483647i, var_0, var_1.x))), true));
    return Struct_1(1264f);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.d.yy)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, arg_1.d.a)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_3.d.x, arg_3.a), arg_3.d.xy)))))));
    let var_1 = _wgslsmith_add_i32(arg_3.b.x | firstLeadingBit(~(-u_input.c.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(~2147483647i, u_input.c.x >> (u_input.d % 32u), ~arg_3.b.x), _wgslsmith_mult_vec3_i32(max(vec3<i32>(-23667i, arg_3.b.x, 2147483647i), vec3<i32>(arg_1.e, 2147483647i, arg_3.b.x)), vec3<i32>(arg_3.b.x, 2147483647i, arg_1.e))), firstLeadingBit(~vec3<i32>(16181i, 5911i, u_input.c.x)) | _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.b, 50764i, u_input.c.x) << (u_input.b % vec3<u32>(32u)), vec3<i32>(-1i, -2147483647i, 2147483647i) & vec3<i32>(arg_3.b.x, -2147483647i, -1i))));
    var var_2 = -251f;
    let var_3 = -vec3<i32>(1i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-2147483647i, 2147483647i, -2147483647i) << ((arg_0 << (1u % 32u)) % 32u), 29636i), -2147483647i);
    var var_4 = any(vec3<bool>(true, any(select(arg_3.c.zyz, arg_3.c.wzy, true)) & !global2[_wgslsmith_index_u32(u_input.a.x, 18u)], (_wgslsmith_f_op_f32(-1008f * arg_1.d.a) > _wgslsmith_f_op_f32(f32(-1f) * -852f)) || true));
    return reverseBits(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(select(u_input.b, u_input.b, false), u_input.b), firstTrailingBit(reverseBits(vec3<u32>(40738u, 16778u, arg_1.c.x))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> vec2<bool> {
    global1 = global2[_wgslsmith_index_u32(30207u, 18u)];
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(min(16228u, func_4(u_input.d, Struct_2(global0.x >= global0.x, u_input.c.x, ~vec2<u32>(0u, u_input.d), func_2(u_input.b.x, Struct_3(false)), ~8399i), vec2<bool>(select(false, false, arg_1), false), Struct_4(-648f, vec2<i32>(1i, -1i), global4[_wgslsmith_index_u32(0u >> (0u % 32u), 3u)], global0.zyx))), 18u)]);
    var_0 = Struct_3(false);
    var var_1 = global0.x;
    var var_2 = func_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.b.zy), vec2<u32>(~u_input.d, ~u_input.a.x)), (abs(u_input.b.yy) & abs(vec2<u32>(20503u, u_input.a.x))) & vec2<u32>(u_input.d, u_input.a.x)), Struct_3(global2[_wgslsmith_index_u32(0u, 18u)]));
    return vec2<bool>(false, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(func_1(-vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), 1u < u_input.b.x), vec2<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(15912u, 18u)], false, true)), global2[_wgslsmith_index_u32(13262u, 18u)]), select(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 18u)], global2[_wgslsmith_index_u32(27136u, 18u)]), !vec2<bool>(global2[_wgslsmith_index_u32(8874u, 18u)], true), global2[_wgslsmith_index_u32(1664u, 18u)])), select(vec2<bool>(global2[_wgslsmith_index_u32(~(u_input.a.x & u_input.b.x), 18u)], u_input.b.x >= select(u_input.b.x, 4294967295u, global2[_wgslsmith_index_u32(1u, 18u)])), !select(select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec2<bool>(true, false), vec2<bool>(false, global2[_wgslsmith_index_u32(19849u, 18u)])), vec2<bool>(true, true), true), !vec2<bool>(false || global2[_wgslsmith_index_u32(u_input.a.x, 18u)], any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 18u)], global2[_wgslsmith_index_u32(u_input.d, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)])))), !(!func_1(~vec4<i32>(-20224i, -34003i, -51672i, u_input.c.x), 1469f != global0.x)));
    let var_1 = !var_0;
    var var_2 = ~_wgslsmith_add_u32(~0u, u_input.d);
    let var_3 = select(reverseBits(countOneBits(countOneBits(vec4<i32>(u_input.c.x, -1i, -1i, u_input.c.x)) & min(vec4<i32>(-57995i, -31440i, 29637i, u_input.c.x), vec4<i32>(58709i, u_input.c.x, u_input.c.x, -55352i)))), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x | -7251i, u_input.c.x, -u_input.c.x, countOneBits(u_input.c.x)), vec4<i32>(u_input.c.x, ~2147483647i, i32(-1i) * -45622i, -1i)), (var_1.x & !any(global4[_wgslsmith_index_u32(1u, 3u)])) | func_1(-vec4<i32>(-58694i, -10863i, u_input.c.x, -18572i), false).x);
    var_2 = 3658u;
    var var_4 = Struct_1(global0.x);
    var_2 = ~abs(u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-100f, global0.x, global0.x) - vec3<f32>(var_4.a, -1032f, -1152f)) * vec3<f32>(_wgslsmith_f_op_f32(select(-137f, 1658f, var_0.x)), _wgslsmith_f_op_f32(-1043f - 1836f), _wgslsmith_f_op_f32(global0.x + global0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a, global0.x, var_4.a) + vec3<f32>(577f, 590f, global0.x)) + _wgslsmith_f_op_vec3_f32(-global0.yyw)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(633f * var_4.a))), var_4.a)));
}

