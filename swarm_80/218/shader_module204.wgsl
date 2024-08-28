struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(32341i, 0i, -1i, -3246i), 32252i, vec3<u32>(0u, 1u, 1u), 852f);

var<private> global1: Struct_1 = Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 15919i, 1i), 14605i, vec3<u32>(0u, 0u, 1u), -963f);

var<private> global2: array<vec3<f32>, 26>;

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

var<private> global4: array<bool, 19>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.d)) * global0.d);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    global2 = array<vec3<f32>, 26>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1893f, arg_1.d, arg_1.d, 277f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-373f, 1000f, global1.d, -556f)), !vec4<bool>(arg_0.x, true, global4[_wgslsmith_index_u32(38611u, 19u)], false)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, -221f, global1.d, global0.d)) * vec4<f32>(global1.d, 346f, -537f, arg_1.d)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(752f, arg_1.d, 955f, 442f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(583f, global0.d, -455f, -1909f))))))));
    let var_1 = firstLeadingBit(select(vec2<i32>(0i, global0.b), _wgslsmith_add_vec2_i32(countOneBits(global1.a.yw), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c, arg_2.xz), 23246i)), vec2<bool>(all(vec2<bool>(global4[_wgslsmith_index_u32(global0.c.x, 19u)], false)), ~arg_1.a.x <= _wgslsmith_sub_i32(0i, global0.a.x))));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))));
    global0 = arg_1;
    return firstTrailingBit(reverseBits(~u_input.a));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(-vec4<i32>(global0.b, func_3(vec2<bool>(true, true), Struct_1(global1.a, 23375i, global0.c, 870f), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, -1i), global1.a)), _wgslsmith_mod_i32(global1.b, max(u_input.a, u_input.c.x)), global1.b), _wgslsmith_add_i32(~func_3(select(vec2<bool>(global4[_wgslsmith_index_u32(global0.c.x, 19u)], global4[_wgslsmith_index_u32(22385u, 19u)]), vec2<bool>(true, false), false), Struct_1(vec4<i32>(global0.a.x, global1.b, -1i, u_input.c.x), -1i, global0.c, global1.d), vec4<i32>(u_input.c.x, arg_0, 1i, global0.a.x) & vec4<i32>(u_input.c.x, -28513i, global0.a.x, arg_0)), u_input.a), ~(global1.c >> (global1.c % vec3<u32>(32u))), _wgslsmith_f_op_f32(ceil(1230f)));
    var var_1 = global0.a;
    var var_2 = select(vec4<bool>(false, false, ~abs(91254u) >= abs(global1.c.x), true), vec4<bool>(true, (16091i >= global0.a.x) & (0i < u_input.c.x), !(!(!global4[_wgslsmith_index_u32(0u, 19u)])), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~global1.c.x, _wgslsmith_mult_u32(max(37548u, 4294967295u), var_0.c.x | 106805u)), 19u)]), (4000i == -arg_0) & ((global0.c.x | u_input.e) >= firstTrailingBit(4294967295u)));
    var var_3 = Struct_3(vec2<bool>(true, all(vec3<bool>(!global4[_wgslsmith_index_u32(0u, 19u)], true, !global4[_wgslsmith_index_u32(global0.c.x, 19u)]))), vec4<bool>(any(vec2<bool>(any(vec3<bool>(var_2.x, false, var_2.x)), true)), _wgslsmith_mult_u32(~var_0.c.x, ~global3.x) == (~u_input.e | 21093u), !var_2.x, select(true, false, true)), countOneBits(_wgslsmith_dot_vec3_i32(global0.a.yyx, -vec3<i32>(global1.a.x, 42165i, global1.b))), -global1.a.x, select(_wgslsmith_div_vec2_u32(min(vec2<u32>(u_input.e, 61465u), ~vec2<u32>(4294967295u, 61360u)), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(global0.c.x, 15075u), vec2<u32>(var_0.c.x, 3956u)))), vec2<u32>(32773u, ~(~36420u)), (true | select(false, global4[_wgslsmith_index_u32(u_input.e, 19u)], global4[_wgslsmith_index_u32(u_input.e, 19u)])) || global4[_wgslsmith_index_u32(90678u, 19u)]));
    let var_4 = vec3<i32>(6273i, -2147483647i, global0.a.x);
    return var_0;
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    global0 = func_2(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -428f)) - global1.d) * _wgslsmith_f_op_f32(547f * global0.d)));
    let var_0 = reverseBits(~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 32252u, 30064u) ^ vec4<u32>(u_input.d.x, global1.c.x, 41642u, 4294967295u), vec4<u32>(0u, 1u, 1363u, 19820u) << (vec4<u32>(global1.c.x, global3.x, arg_0.c.x, 9242u) % vec4<u32>(32u)))));
    let var_1 = Struct_1(~(vec4<i32>(firstLeadingBit(u_input.c.x), u_input.a, -2147483647i, 1i) >> (vec4<u32>(~13981u, ~81108u, global1.c.x, arg_0.c.x) % vec4<u32>(32u))), -arg_0.b, vec3<u32>(_wgslsmith_clamp_u32(59162u, abs(u_input.e), 5922u), reverseBits(4294967295u), 4294967295u) ^ countOneBits(vec3<u32>(_wgslsmith_sub_u32(global0.c.x, 2640u), _wgslsmith_mult_u32(0u, 0u), ~global3.x)), 113f);
    var var_2 = 191f;
    global0 = Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(select(-global0.a, vec4<i32>(u_input.a, u_input.a, u_input.a, -513i), !global4[_wgslsmith_index_u32(global0.c.x, 19u)]), vec4<i32>(2147483647i, 12865i, min(arg_0.b, 0i), _wgslsmith_add_i32(var_1.b, 51280i))), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -14820i, -2147483647i, -24248i), -vec4<i32>(-33249i, -2147483647i, global0.b, 57730i)), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(global1.a, vec4<i32>(-50891i, 23794i, arg_0.b, 22781i)), ~vec4<i32>(u_input.a, global0.b, global0.a.x, var_1.a.x)))), global0.a.x, vec3<u32>(~4294967295u, _wgslsmith_mult_u32(firstTrailingBit(47509u), abs(69001u)) & 0u, var_1.c.x), arg_0.d);
    return -(~u_input.c);
}

fn func_5(arg_0: f32, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = (~((global0.c.zz & vec2<u32>(global1.c.x, global0.c.x)) ^ global1.c.zy) ^ global0.c.xx) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(global3.x, global1.c.x)), ~vec2<u32>(global1.c.x, 4294967295u)), ~vec2<u32>(27482u, 1u)), vec2<u32>(0u >> ((4294967295u ^ global3.x) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(44037u, global0.c.x, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.e), global0.c)))) % vec2<u32>(32u));
    var var_1 = countOneBits(abs(~(~var_0 >> (u_input.b % vec2<u32>(32u)))));
    return Struct_2(~49240u, vec2<u32>(global3.x, var_1.x), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -1822f))), _wgslsmith_add_vec2_i32(u_input.c, func_4(func_2(53508i, _wgslsmith_f_op_f32(floor(global1.d))))));
    global0 = func_2(firstTrailingBit(global1.a.x), global0.d);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(671f + 806f)));
    global3 = max(var_0.b, u_input.b);
    let var_2 = Struct_3(vec2<bool>(!all(select(vec3<bool>(global4[_wgslsmith_index_u32(16610u, 19u)], false, false), vec3<bool>(global4[_wgslsmith_index_u32(3640u, 19u)], global4[_wgslsmith_index_u32(global3.x, 19u)], true), vec3<bool>(global4[_wgslsmith_index_u32(global0.c.x, 19u)], global4[_wgslsmith_index_u32(u_input.b.x, 19u)], false))), !all(select(vec3<bool>(global4[_wgslsmith_index_u32(73257u, 19u)], false, global4[_wgslsmith_index_u32(27975u, 19u)]), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 19u)], false, true), vec3<bool>(false, global4[_wgslsmith_index_u32(var_0.a, 19u)], true)))), !vec4<bool>(all(vec2<bool>(true, true)), !select(global4[_wgslsmith_index_u32(var_0.c, 19u)], global4[_wgslsmith_index_u32(global3.x, 19u)], true), true, true), ~(-1i) << ((12888u ^ ~_wgslsmith_clamp_u32(20327u, 34718u, 4294967295u)) % 32u), -2147483647i, _wgslsmith_mult_vec2_u32(~vec2<u32>(~1u, 19666u), ~global1.c.yx));
    let var_3 = !(global1.a.x == func_4(func_2(func_4(Struct_1(global1.a, global1.a.x, vec3<u32>(0u, 45393u, global3.x), var_1)).x, var_1)).x);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec2<u32>(1u, ~1u)), -42666i, _wgslsmith_div_i32(-2147483647i, ~_wgslsmith_div_i32(_wgslsmith_add_i32(var_2.d, global0.b), i32(-1i) * -1i)), global0.c.x, global0.a.x);
}

