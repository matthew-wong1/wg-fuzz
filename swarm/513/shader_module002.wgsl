struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(744f, -727f);

var<private> global1: Struct_2 = Struct_2(4836u, vec4<f32>(-394f, -521f, -480f, 114f), vec4<u32>(121174u, 47392u, 75469u, 1u), 2734u, -512f);

var<private> global2: array<bool, 32> = array<bool, 32>(false, true, true, true, true, true, false, true, false, false, false, true, false, true, true, false, false, true, true, true, true, false, true, false, false, true, false, true, true, true, false, false);

var<private> global3: array<Struct_3, 7>;

var<private> global4: vec3<i32> = vec3<i32>(1i, 11109i, -1i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_5 {
    var var_0 = global1.c.yxz;
    var var_1 = ~(~(~_wgslsmith_sub_i32(~1i, _wgslsmith_div_i32(2147483647i, 64403i))));
    let var_2 = _wgslsmith_add_u32(var_0.x, u_input.d) << (firstLeadingBit(~33097u) % 32u);
    let var_3 = global3[_wgslsmith_index_u32(reverseBits(0u), 7u)];
    return Struct_5(-(~_wgslsmith_mod_i32(_wgslsmith_add_i32(1i, global4.x), global4.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(122f + -256f) + -616f)))), _wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(-26377i, global4.x, global4.x), vec3<i32>(global4.x, 0i, -45766i)), -u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(2193f, 875f, global1.b.x) - global1.b.zwy))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global0.x, -674f) + global1.b.wzz))));
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: Struct_1, arg_3: bool) -> i32 {
    let var_0 = !(!(!vec4<bool>(any(vec3<bool>(arg_2.c, true, false)), arg_2.e.x, arg_2.c && global2[_wgslsmith_index_u32(arg_2.b, 32u)], false)));
    let var_1 = min(_wgslsmith_add_u32(43848u, ~u_input.d), ~_wgslsmith_mod_u32(arg_2.b >> (u_input.d % 32u), _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, 0u), 62011u)));
    global2 = array<bool, 32>();
    return global4.x;
}

fn func_1() -> vec3<i32> {
    var var_0 = -2147483647i;
    var var_1 = global1.c;
    var var_2 = global1.c.xww;
    let var_3 = ~u_input.a;
    var_0 = _wgslsmith_clamp_i32(select(-1i, func_3(true, func_2(), Struct_1(var_1.yw, 5271u, false, var_3, vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 32u)], false, true)), var_1.x < u_input.d) << (1u % 32u), any(vec2<bool>(true, true))), u_input.a, max(abs(_wgslsmith_mod_i32(u_input.c.x, global4.x)), 0i));
    return firstTrailingBit(-(select(vec3<i32>(-11072i, global4.x, u_input.b), vec3<i32>(-1i, 0i, -35219i), vec3<bool>(true, global2[_wgslsmith_index_u32(19043u, 32u)], global2[_wgslsmith_index_u32(0u, 32u)])) << (~vec3<u32>(23389u, 1u, var_1.x) % vec3<u32>(32u)))) & ~vec3<i32>(-u_input.c.x, i32(-1i) * -31778i, global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 7>();
    var var_0 = ~func_1();
    var var_1 = func_2();
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1603f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x)))))), _wgslsmith_f_op_vec2_f32(var_1.d.xy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.b)), _wgslsmith_f_op_f32(floor(var_1.b))))));
    global3 = array<Struct_3, 7>();
    global4 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(firstTrailingBit(~1i), func_1().x, ~(-var_1.c)), ~firstTrailingBit(countOneBits(vec3<i32>(62247i, 28508i, u_input.b)))), _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(-1i, u_input.a ^ var_0.x, ~var_0.x)), func_1()));
    let var_2 = all(vec4<bool>(!global2[_wgslsmith_index_u32(max(u_input.d, u_input.d >> (4294967295u % 32u)), 32u)], !global2[_wgslsmith_index_u32(global1.c.x, 32u)], all(vec3<bool>(true, false, false)), false));
    let var_3 = Struct_2(countOneBits(0u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global1.b.x)), _wgslsmith_f_op_f32(global1.e * 1102f), -457f, _wgslsmith_f_op_f32(global1.e - -477f))), global2[_wgslsmith_index_u32(u_input.d, 32u)])), abs(global1.c), _wgslsmith_div_u32(83448u << (max(~global1.a, 27370u | u_input.d) % 32u), u_input.d), 1177f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), global1.b.x, 1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, var_1.d.x, _wgslsmith_f_op_f32(var_3.e * global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(409f * -405f) - _wgslsmith_f_op_f32(731f - var_1.d.x))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -140f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1106f + global0.x))), _wgslsmith_f_op_f32(var_1.d.x - global1.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -773f), _wgslsmith_f_op_f32(ceil(global0.x))))), _wgslsmith_sub_vec2_i32(func_1().yx, select(max(~vec2<i32>(24681i, -63724i), ~vec2<i32>(-43866i, u_input.c.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a, -2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(47692i, 2147483647i), vec2<i32>(1i, 1i)), vec2<i32>(var_0.x, 26802i)), true)));
}

