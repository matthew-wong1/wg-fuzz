struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(332f, -1102f, 864f), vec2<bool>(false, true), true);

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-430f, -1501f, -1000f), vec2<bool>(true, false), true);

var<private> global2: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true));

var<private> global3: vec2<f32> = vec2<f32>(565f, -473f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = 1i;
    let var_1 = arg_1;
    global3 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1605f, arg_1.a.x)));
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(countOneBits(select(u_input.a, u_input.a, true) | ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), firstTrailingBit(select(vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x), ~vec4<u32>(u_input.a.x, 8030u, 4294967295u, u_input.a.x), global2[_wgslsmith_index_u32(~u_input.a.x, 14u)]))), u_input.a.x);
    global2 = array<vec4<bool>, 14>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1852f, -1000f) + arg_1.a.x));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-221f, -960f, 532f))) * vec3<f32>(_wgslsmith_f_op_f32(floor(global1.a.x)), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(round(-572f))))), global0.b, !(((u_input.e >> (4294967295u % 32u)) & ~(-1i)) > _wgslsmith_add_i32(-u_input.e, u_input.e)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, 687f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, global1.a.x) + global0.a.yy)), vec2<f32>(global0.a.x, global1.a.x))), vec2<f32>(_wgslsmith_f_op_f32(select(var_0.a.x, -190f, global1.c)), 2235f), select(select(vec2<bool>(global0.b.x, true), vec2<bool>(global1.b.x, false), global0.b.x), select(select(vec2<bool>(var_0.b.x, true), var_0.b, false), vec2<bool>(false, false), select(global0.b, global0.b, true)), vec2<bool>(true, true)))));
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.a.x, var_1.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1299f, -737f) * vec2<f32>(-1000f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.a.xz)), vec2<f32>(global3.x, global1.a.x)))));
    var var_2 = !(!global0.b.x) && global1.c;
    var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1298f + -1318f), global3.x), 334f);
    return vec4<u32>(reverseBits(_wgslsmith_div_u32(0u, 1u)), u_input.a.x, ~(~u_input.a.x), ~(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, 4294967295u), ~16375u)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = min(vec4<i32>(u_input.e, ~2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.e) << (vec3<u32>(106803u, 78300u, arg_3) % vec3<u32>(32u)), -vec3<i32>(2147483647i, 867i, 1i)), -_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -1i), vec3<i32>(u_input.b, -15850i, u_input.e))), -8395i | ((-6917i & u_input.b) & u_input.e)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.c, abs(u_input.b), firstLeadingBit(u_input.b)), vec4<i32>(-1i, -2774i, ~(-2147483647i), u_input.b)));
    global2 = array<vec4<bool>, 14>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a), arg_2.a);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(global3.x)), 340f, arg_0.x, global3.x);
    let var_3 = -(~_wgslsmith_add_vec4_i32(-vec4<i32>(var_0.x, -1i, u_input.b, var_0.x) ^ (vec4<i32>(-1i, 2147483647i, u_input.d, 37867i) << (arg_1 % vec4<u32>(32u))), ~(-vec4<i32>(u_input.c, 25563i, 1i, u_input.e))));
    return -15758i;
}

fn func_1(arg_0: i32, arg_1: i32) -> vec2<f32> {
    var var_0 = global0.a.x;
    var var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(arg_0, u_input.d, 0i)), _wgslsmith_add_vec3_i32(vec3<i32>(min(u_input.c, 2147483647i), -arg_0, -arg_1), abs(vec3<i32>(0i, -25195i, 0i) | vec3<i32>(2147483647i, 2147483647i, u_input.c)))), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(arg_0, Struct_1(global1.a, global1.b, global1.b.x))), 1000f)), func_3(), Struct_1(global0.a, vec2<bool>(true, true), arg_1 > _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0, -1i), vec3<i32>(0i, arg_0, u_input.c))), u_input.a.x));
    var var_2 = ~(~(~(u_input.a.x << (u_input.a.x % 32u))) << (max(firstLeadingBit(~u_input.a.x), select(~u_input.a.x, 4294967295u, global0.c)) % 32u));
    var var_3 = Struct_1(global1.a, select(vec2<bool>(false, true), global0.b, vec2<bool>(true, any(vec3<bool>(true, false, true)))), !global0.b.x);
    var var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-672f, -1778f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-680f + -916f), var_3.a.x))), 503f), select(global1.b, !select(vec2<bool>(true, false), global1.b, vec2<bool>(global1.b.x, var_3.c)), select(select(!global1.b, global1.b, vec2<bool>(var_3.c, global1.c)), select(select(global0.b, global0.b, true), select(vec2<bool>(var_3.b.x, global0.b.x), vec2<bool>(true, true), false), true), !(global0.b.x & global1.b.x))), false || (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.x)) - -545f) > -297f));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_4.a.yz), vec2<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(1640u, 14u)];
    global3 = _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_mod_i32(~(~(~u_input.c)), ~1i), u_input.c));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(func_2(-34073i, Struct_1(vec3<f32>(global1.a.x, -792f, 641f), global0.b, true))), _wgslsmith_f_op_f32(global0.a.x + global0.a.x), _wgslsmith_f_op_f32(global3.x + -982f)))) * vec3<f32>(global3.x, global0.a.x, global0.a.x)), global1.b, true);
    var var_1 = ~_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(u_input.b, 52289i, -27145i, -1i)), vec4<i32>(u_input.e, 2147483647i, u_input.d, 69078i) ^ vec4<i32>(37599i, 1i, -24175i, -10960i)) << (vec4<u32>(64012u | u_input.a.x, countOneBits(82246u), u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(-18393i, min(u_input.c, firstLeadingBit(u_input.d)), u_input.e, u_input.d));
    let var_2 = firstTrailingBit(vec3<i32>(-1i, var_1.x, var_1.x));
    global2 = array<vec4<bool>, 14>();
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.xz)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-414f, global0.a.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.xx)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(366f, 339f, 518f) - vec3<f32>(global3.x, -601f, 1990f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(655f, -1304f, global0.a.x) * vec3<f32>(-1505f, -916f, global1.a.x)), vec3<f32>(global3.x, 177f, -555f)))) + vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global1.a.x)))), global0.a.x, _wgslsmith_f_op_f32(-global0.a.x))));
}

