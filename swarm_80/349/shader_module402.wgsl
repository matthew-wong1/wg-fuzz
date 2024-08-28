struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global1: vec3<i32>;

var<private> global2: f32 = 764f;

var<private> global3: array<bool, 3>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global1 = vec3<i32>(-1i, u_input.c.x, u_input.c.x & u_input.a.x);
    let var_0 = Struct_4(Struct_3(Struct_1(1u)), Struct_1(~firstLeadingBit(1u ^ u_input.b.x)), global0.x);
    let var_1 = _wgslsmith_f_op_f32(select(-306f, -1434f, true));
    var var_2 = var_0.a.a;
    var var_3 = select(global0.x, any(vec4<bool>(true, global0.x, global1.x <= u_input.c.x, all(vec4<bool>(global0.x, true, var_0.c, global0.x)))), ~reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 8429i, 21910i, u_input.c.x), vec4<i32>(global1.x, u_input.a.x, global1.x, -535i))) > -(~(-2147483647i)));
    return 955f;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = u_input.b.zy;
    var var_2 = Struct_5(~_wgslsmith_clamp_vec3_u32(countOneBits(~vec3<u32>(0u, var_1.x, 0u)), vec3<u32>(u_input.b.x, _wgslsmith_sub_u32(u_input.d.x, 4703u), 17240u), ~vec3<u32>(27745u, arg_1.x, u_input.b.x) & (u_input.b.wzy >> (vec3<u32>(1u, 1u, 4294967295u) % vec3<u32>(32u)))), vec4<bool>(true, true, true, true), 1u);
    let var_3 = var_0;
    var var_4 = u_input.a;
    return Struct_2(-2147483647i);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: u32) -> Struct_4 {
    var var_0 = firstLeadingBit(_wgslsmith_sub_vec4_i32(-(~min(vec4<i32>(arg_1.a, -20558i, arg_1.a, arg_1.a), vec4<i32>(25641i, -25610i, -6295i, 17703i))), ~_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a.x, -7746i, arg_1.a, u_input.a.x), vec4<i32>(arg_1.a, -1i, u_input.a.x, u_input.a.x), reverseBits(vec4<i32>(-1i, arg_1.a, arg_1.a, 54020i)))));
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-arg_0.x)))) + 179f)));
    var_0 = abs(min(vec4<i32>(_wgslsmith_clamp_i32(0i, select(-45883i, -37475i, arg_2.x), u_input.a.x << (u_input.b.x % 32u)), u_input.c.x, ~arg_1.a, firstLeadingBit(global1.x)), abs(vec4<i32>(1i, var_0.x, global1.x >> (u_input.d.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.c.x, -2147483647i), vec4<i32>(0i, arg_1.a, arg_1.a, -12265i))))));
    var var_1 = true;
    global1 = vec3<i32>(arg_1.a, -2147483647i, -(u_input.a.x ^ abs(abs(0i))));
    return Struct_4(Struct_3(Struct_1(_wgslsmith_mod_u32(~arg_3, 1u))), Struct_1(_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.d.x, arg_3, arg_3), vec3<u32>(arg_3, 7478u, arg_3)), max(~vec3<u32>(4294967295u, u_input.d.x, arg_3), ~vec3<u32>(39559u, 17105u, arg_3)))), (i32(-1i) * -min(1i, global1.x)) > var_0.x);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<i32>) -> i32 {
    global2 = arg_1;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -194f));
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(290f, 1187f, 646f, arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 872f, -1498f, -322f))))))), func_2(!vec3<bool>(u_input.b.x >= u_input.d.x, true, global3[_wgslsmith_index_u32(u_input.d.x, 3u)] && global0.x), vec3<u32>(_wgslsmith_div_u32(~1u, u_input.b.x), ~(~0u), firstLeadingBit(_wgslsmith_add_u32(u_input.d.x, u_input.d.x))), false), vec4<bool>(true, false, true, global3[_wgslsmith_index_u32(~1u, 3u)]), ~4294967295u);
    global0 = vec4<bool>(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) + -507f) >= arg_1, (any(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 3u)], global0.x, false, global3[_wgslsmith_index_u32(0u, 3u)])) & true) && global0.x, global3[_wgslsmith_index_u32(35626u, 3u)]), global0.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-global1.x, ~(-43579i), -1i), -func_2(vec3<bool>(false, false, false), vec3<u32>(u_input.d.x, 1u, u_input.d.x), global3[_wgslsmith_index_u32(u_input.b.x, 3u)]).a, u_input.c.x) <= u_input.c.x, false);
    var var_1 = _wgslsmith_f_op_f32(arg_1 + arg_1);
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-1290f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(760f)) * -1631f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(185f)) * 276f)))));
    var var_0 = firstTrailingBit(vec4<i32>(firstTrailingBit(func_1(u_input.c.x, -376f, vec2<i32>(47895i, u_input.a.x))), -2417i, 12562i, global1.x));
    let var_1 = firstTrailingBit(~(_wgslsmith_add_i32(u_input.c.x, u_input.c.x) >> (_wgslsmith_mult_u32(u_input.b.x, 68058u) % 32u))) << (func_4(vec4<f32>(-320f, _wgslsmith_f_op_f32(f32(-1f) * -349f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(200f - -609f), _wgslsmith_div_f32(-593f, 688f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-120f, -1115f)))), Struct_2(var_0.x), vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(u_input.d.x), 0u), 3u)], false, false, all(global0.zw)), 1u).b.a % 32u);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -381f);
    let var_3 = Struct_2(global1.x | _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, u_input.a.x), vec2<i32>(var_0.x, 0i) & u_input.c), -countOneBits(var_1)));
    var_0 = vec4<i32>(reverseBits(-firstTrailingBit(var_1)) | 2147483647i, u_input.a.x ^ abs(reverseBits(_wgslsmith_mult_i32(-1i, -2147483647i))), _wgslsmith_mod_i32(var_1, firstLeadingBit(reverseBits(var_0.x << (u_input.d.x % 32u)))), -1i);
    global1 = select(firstLeadingBit(_wgslsmith_mod_vec3_i32(firstTrailingBit(u_input.a), vec3<i32>(39615i, var_3.a, var_1))) >> (~u_input.b.xyw % vec3<u32>(32u)), countOneBits(reverseBits(vec3<i32>(56394i, var_3.a, 56820i)) | var_0.zwy), !(!(!global0.ywy)));
    var_0 = -vec4<i32>(_wgslsmith_div_i32(var_3.a | _wgslsmith_mod_i32(-2147483647i, 1i), _wgslsmith_clamp_i32(~u_input.c.x, ~u_input.c.x, ~(-12371i))), reverseBits(-33906i), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(var_3.a, u_input.c.x), ~u_input.c), -1i);
    let var_4 = func_1(1i, var_2, global1.xy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_2 - 1f), var_2, 543f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_2, 322f))))))), ~max(~_wgslsmith_div_vec2_u32(u_input.d, vec2<u32>(u_input.d.x, u_input.d.x)), reverseBits(~vec2<u32>(u_input.d.x, 41618u))));
}

