struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<vec2<u32>, 27>;

var<private> global2: vec2<bool>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>) -> bool {
    var var_0 = 0u;
    global1 = array<vec2<u32>, 27>();
    global0 = array<Struct_1, 6>();
    var var_1 = Struct_1(_wgslsmith_mod_u32(11198u, 4294967295u), 1u, -1099f, select(arg_1.wyy, !vec3<bool>(all(vec4<bool>(arg_1.x, global2.x, true, false)), select(global2.x, true, true), any(vec2<bool>(arg_1.x, arg_1.x))), !arg_1.zww), _wgslsmith_sub_vec2_i32(~u_input.c, _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, ~u_input.d), u_input.c & _wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(-1586i, u_input.d)), u_input.c)));
    let var_2 = Struct_1(~max(_wgslsmith_clamp_u32(abs(1u), ~u_input.b, firstTrailingBit(1u)), var_1.a), 0u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(279f * var_1.c)), _wgslsmith_f_op_f32(arg_0.x - 482f))), select(arg_1.xwz, select(arg_1.xzy, select(var_1.d, select(vec3<bool>(false, global2.x, false), arg_1.zxz, var_1.d), true), true), select(var_1.c >= 1000f, !any(arg_1), 1u < ~u_input.b)), reverseBits(-(~vec2<i32>(var_1.e.x, u_input.d) << ((vec2<u32>(var_1.b, 11684u) & vec2<u32>(var_1.b, var_1.b)) % vec2<u32>(32u)))));
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<i32> {
    var var_0 = -firstTrailingBit(~(_wgslsmith_clamp_vec2_i32(u_input.c, arg_0.e, arg_0.e) << ((vec2<u32>(arg_0.a, u_input.b) << (global1[_wgslsmith_index_u32(arg_0.b, 27u)] % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_1 = vec4<u32>(firstLeadingBit(max(~1u, 37216u | arg_0.a)) ^ max(1u, 0u), ~firstLeadingBit(0u), firstTrailingBit(1u) >> (1u % 32u), max(arg_0.a, 18739u));
    var var_2 = Struct_1(countOneBits(0u) << (u_input.a % 32u), firstTrailingBit(20675u ^ ~_wgslsmith_sub_u32(arg_0.b, var_1.x)), _wgslsmith_f_op_f32(-arg_1.x), arg_0.d, vec2<i32>(~var_0.x, _wgslsmith_mult_i32(u_input.c.x, -1i)));
    return _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_0.x, _wgslsmith_mult_i32(var_2.e.x, 65309i)), arg_0.e.x), u_input.c & _wgslsmith_div_vec2_i32(-(vec2<i32>(u_input.c.x, 8452i) | vec2<i32>(55476i, var_2.e.x)), u_input.c));
}

fn func_2() -> u32 {
    global2 = !select(!vec2<bool>(false != global2.x, false), !(!select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, true), vec2<bool>(global2.x, true))), vec2<bool>((0u < u_input.b) && false, true));
    var var_0 = Struct_1(0u, u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -105f), vec3<bool>(!(_wgslsmith_mod_i32(51071i, 17179i) >= firstLeadingBit(u_input.d)), true, true), func_4(Struct_1(1u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u), ~u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -944f)), vec3<bool>(!global2.x, any(vec3<bool>(global2.x, false, global2.x)), func_3(vec4<f32>(1000f, -424f, 456f, -428f), vec4<bool>(false, global2.x, global2.x, global2.x))), (u_input.c | u_input.c) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, -11018i), u_input.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1106f, 395f, 623f, 643f) * vec4<f32>(1533f, -1593f, 1561f, -110f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c));
    var var_2 = vec4<bool>(all(!(!vec4<bool>(true, false, var_0.d.x, true))) && any(select(!var_0.d, vec3<bool>(global2.x, true, false), global2.x)), (global2.x & global2.x) & all(select(!vec4<bool>(false, global2.x, false, true), vec4<bool>(global2.x, true, true, var_0.d.x), true)), u_input.c.x >= firstTrailingBit(firstTrailingBit(~15239i)), true);
    var var_3 = Struct_1(u_input.b, 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c, -1734f, global2.x)))), select(select(!var_2.xzy, !select(vec3<bool>(true, var_2.x, global2.x), var_0.d, true), all(var_0.d.xx) || true), var_0.d, select(vec3<bool>(any(var_2.zz), var_2.x, var_2.x), vec3<bool>(false, true, var_0.d.x), var_0.d.x)), select(vec2<i32>(~firstTrailingBit(16603i), _wgslsmith_add_i32(var_0.e.x, var_0.e.x)), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(var_0.e.x, -21113i)), reverseBits(vec2<i32>(u_input.d, u_input.c.x))), !(var_0.d.x && (true != var_2.x))));
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(((global1[_wgslsmith_index_u32(var_3.a, 27u)] | global1[_wgslsmith_index_u32(21314u, 27u)]) << (~global1[_wgslsmith_index_u32(1u, 27u)] % vec2<u32>(32u))) << (global1[_wgslsmith_index_u32(u_input.b, 27u)] % vec2<u32>(32u)), ~global1[_wgslsmith_index_u32(var_0.a, 27u)]), 54839u);
}

fn func_1(arg_0: i32, arg_1: i32) -> bool {
    let var_0 = (arg_1 << (~abs(_wgslsmith_mult_u32(69149u, 53694u)) % 32u)) << (func_2() % 32u);
    global0 = array<Struct_1, 6>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(732f - _wgslsmith_f_op_f32(select(531f, 562f, global2.x))))))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~59606u, 6525u << ((~(~0u) << (func_2() % 32u)) % 32u)), 6u)];
    global1 = array<vec2<u32>, 27>();
    return !((var_2.d.x == ((var_2.c == -347f) != global2.x)) && (!(global2.x & true) != all(vec4<bool>(global2.x, global2.x, false, var_2.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(global2.x, global2.x), vec2<bool>(false, global2.x))), select(!(!vec2<bool>(global2.x, global2.x)), !vec2<bool>(true, false && global2.x), vec2<bool>(global2.x, u_input.a > ~3397u)), select(select(!(!vec2<bool>(global2.x, false)), vec2<bool>(true, global2.x != false), true), vec2<bool>(true, true), true));
    let var_1 = vec4<bool>(var_0.x, true, true, var_0.x);
    var var_2 = vec2<bool>(any(select(vec3<bool>(true, false || var_1.x, global2.x), var_1.yxw, !select(var_1.zzy, vec3<bool>(global2.x, var_1.x, var_1.x), false))), !any(var_1));
    var var_3 = ~1u;
    var var_4 = global0[_wgslsmith_index_u32(~firstLeadingBit(~1624u), 6u)];
    global2 = select(var_1.wy, select(vec2<bool>(var_1.x, _wgslsmith_f_op_f32(var_4.c + var_4.c) >= _wgslsmith_f_op_f32(min(-1000f, 1152f))), vec2<bool>(func_1(0i, 18196i), true), vec2<bool>(all(!var_1), var_1.x)), !(!var_4.d.yx));
    var_3 = var_4.a;
    var var_5 = u_input.c.x;
    global2 = vec2<bool>(false, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(227f);
}

