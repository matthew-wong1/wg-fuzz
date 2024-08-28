struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: Struct_4;

var<private> global2: array<Struct_5, 31>;

var<private> global3: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(Struct_1(true, vec4<bool>(true, true, false, false), true, false), Struct_1(false, vec4<bool>(false, true, false, true), true, true)), Struct_3(Struct_1(true, vec4<bool>(true, false, false, true), true, false), Struct_1(true, vec4<bool>(false, true, false, false), false, true)), Struct_3(Struct_1(true, vec4<bool>(true, false, true, true), true, false), Struct_1(false, vec4<bool>(false, false, false, false), false, true)), Struct_3(Struct_1(true, vec4<bool>(false, false, false, false), false, false), Struct_1(true, vec4<bool>(true, true, true, true), true, false)), Struct_3(Struct_1(false, vec4<bool>(false, false, true, true), true, false), Struct_1(true, vec4<bool>(false, false, false, false), true, true)), Struct_3(Struct_1(false, vec4<bool>(false, true, false, true), true, true), Struct_1(false, vec4<bool>(false, true, true, true), false, true)), Struct_3(Struct_1(true, vec4<bool>(true, false, true, true), true, true), Struct_1(true, vec4<bool>(false, true, false, false), true, false)), Struct_3(Struct_1(true, vec4<bool>(false, true, true, true), false, true), Struct_1(true, vec4<bool>(false, true, true, true), true, true)), Struct_3(Struct_1(false, vec4<bool>(false, true, false, false), false, false), Struct_1(false, vec4<bool>(false, true, false, true), false, true)), Struct_3(Struct_1(false, vec4<bool>(false, false, true, true), false, false), Struct_1(true, vec4<bool>(true, true, false, true), true, true)), Struct_3(Struct_1(false, vec4<bool>(false, false, false, false), true, true), Struct_1(false, vec4<bool>(false, false, false, false), false, false)), Struct_3(Struct_1(true, vec4<bool>(false, false, true, false), true, false), Struct_1(false, vec4<bool>(false, false, true, true), true, true)), Struct_3(Struct_1(true, vec4<bool>(true, false, false, false), false, false), Struct_1(true, vec4<bool>(true, false, false, false), false, false)), Struct_3(Struct_1(false, vec4<bool>(true, false, false, true), false, true), Struct_1(false, vec4<bool>(false, false, false, true), true, false)), Struct_3(Struct_1(false, vec4<bool>(false, true, false, true), true, false), Struct_1(true, vec4<bool>(true, false, true, true), false, true)), Struct_3(Struct_1(false, vec4<bool>(true, true, true, false), true, true), Struct_1(true, vec4<bool>(true, true, false, true), true, true)), Struct_3(Struct_1(false, vec4<bool>(false, false, false, false), false, false), Struct_1(true, vec4<bool>(true, true, false, false), false, true)), Struct_3(Struct_1(false, vec4<bool>(false, false, true, false), true, true), Struct_1(false, vec4<bool>(true, false, true, true), true, false)), Struct_3(Struct_1(false, vec4<bool>(true, true, true, true), true, true), Struct_1(false, vec4<bool>(false, true, true, true), false, false)), Struct_3(Struct_1(true, vec4<bool>(true, true, false, false), true, false), Struct_1(true, vec4<bool>(true, false, true, true), true, false)), Struct_3(Struct_1(true, vec4<bool>(true, false, false, true), false, false), Struct_1(true, vec4<bool>(false, false, true, false), false, false)), Struct_3(Struct_1(false, vec4<bool>(true, false, true, true), true, false), Struct_1(false, vec4<bool>(false, false, true, false), false, false)), Struct_3(Struct_1(true, vec4<bool>(true, false, false, true), true, true), Struct_1(true, vec4<bool>(true, false, true, true), false, true)), Struct_3(Struct_1(true, vec4<bool>(false, true, true, true), false, true), Struct_1(true, vec4<bool>(true, true, false, false), true, false)), Struct_3(Struct_1(false, vec4<bool>(true, false, false, true), true, false), Struct_1(false, vec4<bool>(false, true, false, false), false, false)), Struct_3(Struct_1(true, vec4<bool>(true, true, true, true), false, false), Struct_1(false, vec4<bool>(false, false, true, false), false, false)), Struct_3(Struct_1(false, vec4<bool>(true, false, true, false), true, false), Struct_1(false, vec4<bool>(true, false, false, true), false, true)), Struct_3(Struct_1(false, vec4<bool>(true, false, true, true), false, true), Struct_1(true, vec4<bool>(true, true, false, false), false, false)), Struct_3(Struct_1(true, vec4<bool>(false, true, true, false), true, true), Struct_1(false, vec4<bool>(false, true, true, false), false, false)));

var<private> global4: vec4<u32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_4, arg_3: vec3<u32>) -> i32 {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-2904f + _wgslsmith_f_op_f32(round(-266f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2195f))), true, all(select(select(vec4<bool>(true, true, true, true), arg_2.a.b.b, arg_2.a.d.b.x), !select(global1.a.c, vec4<bool>(global1.a.b.d, global0[_wgslsmith_index_u32(arg_2.a.a, 26u)], false, global1.a.c.x), arg_2.a.c), !any(arg_2.a.c.xxz))));
    var var_1 = ~(~vec4<i32>(_wgslsmith_mult_i32(1i ^ u_input.a.x, min(2622i, -1i)), arg_0.x, arg_2.b.x, _wgslsmith_clamp_i32(-31340i, ~(-6199i), 4833i)));
    var var_2 = Struct_2(~_wgslsmith_mult_u32(~_wgslsmith_mult_u32(arg_3.x, 12786u), global4.x), Struct_1(any(arg_2.a.c), vec4<bool>((global1.a.a <= arg_2.c.x) && all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 26u)], arg_2.a.d.b.x, true)), false, true, global0[_wgslsmith_index_u32(max(_wgslsmith_div_u32(global4.x, global1.a.a), ~global4.x), 26u)]), all(select(!arg_2.a.b.b, select(arg_2.a.c, vec4<bool>(var_0.x, false, arg_2.a.c.x, false), vec4<bool>(arg_2.a.b.a, true, global1.a.c.x, false)), true)), var_0.x | all(vec3<bool>(arg_2.a.d.d, true, var_0.x))), global1.a.d.b, arg_2.a.d, -(~(vec4<i32>(1i, 1i, 1i, 1i) ^ vec4<i32>(-18428i, arg_0.x, -2147483647i, 0i))));
    var var_3 = global2[_wgslsmith_index_u32(~4294967295u, 31u)];
    global0 = array<bool, 26>();
    return arg_2.d;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> Struct_2 {
    global0 = array<bool, 26>();
    var var_0 = -(~func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, global1.d, -1i), global1.a.e.wxx, u_input.b.wwz) >> (~global4.xxy % vec3<u32>(32u)), u_input.c, Struct_4(Struct_2(global1.c.x, Struct_1(true, vec4<bool>(global0[_wgslsmith_index_u32(1u, 26u)], true, arg_1.x, global1.a.b.a), global0[_wgslsmith_index_u32(global4.x, 26u)], false), global1.a.b.b, global1.a.d, u_input.b), -vec3<i32>(global1.a.e.x, u_input.e.x, global1.d), firstLeadingBit(global1.c), -1i), vec3<u32>(_wgslsmith_add_u32(global1.a.a, global1.a.a), ~1u, global1.a.a)));
    var_0 = reverseBits(1i);
    var var_1 = select(global1.a.b.b.x, !(!(~global1.c.x <= ~1u)), false);
    var var_2 = Struct_2(global1.a.a, global1.a.d, select(select(global1.a.c, select(!global1.a.b.b, vec4<bool>(arg_1.x, arg_0, true, global1.a.b.b.x), arg_1.x), arg_0), !vec4<bool>(true, true, arg_1.x, any(vec2<bool>(true, false))), vec4<bool>(!all(vec3<bool>(true, arg_1.x, false)), global1.a.d.c | false, false, false)), global1.a.d, firstTrailingBit(~abs(reverseBits(global1.a.e))));
    return global1.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.x * arg_2.x))))), 938f);
    global1 = Struct_4(func_2(!all(select(vec2<bool>(arg_1.c.x, arg_1.c.x), vec2<bool>(arg_1.c.x, arg_1.b.d), arg_1.c.zz)), !global1.a.c.xyx), ~_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(global1.a.e.yww, func_2(true, vec3<bool>(true, true, arg_1.b.a)).e.xwz), abs(countOneBits(u_input.b.zwy))), ~select(firstTrailingBit(global1.c), ~firstLeadingBit(vec4<u32>(10417u, global4.x, 0u, global4.x)), true), ~firstLeadingBit(~_wgslsmith_add_i32(-1i, arg_1.e.x)));
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x));
    return vec4<u32>(global4.x | global1.a.a, 62288u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.x, global1.c.x), firstTrailingBit(vec2<u32>(arg_1.a, global1.a.a))) ^ ~abs(0u), 0u), 11586u >> (~arg_1.a % 32u));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    global4 = abs(min(vec4<u32>(_wgslsmith_mult_u32(13290u, global4.x) >> (_wgslsmith_mult_u32(global1.c.x, 4294967295u) % 32u), ~abs(global4.x), 4012u, _wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, 1u, 10476u, global1.a.a), global1.c)), global1.c));
    global4 = global1.c;
    global4 = min(~select(vec4<u32>(4294967295u, min(75235u, global1.a.a), reverseBits(1u), ~global4.x), global1.c, true), abs(func_4(-abs(vec3<i32>(-2147483647i, 18474i, 0i)), func_2(global0[_wgslsmith_index_u32(~arg_2, 26u)], global1.a.b.b.xyx), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-467f, -1732f, 1136f, arg_1.x))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(503f, arg_1.x, -156f, 853f), vec4<f32>(-848f, 305f, arg_1.x, -740f)))))));
    var var_0 = ~func_4(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-23219i, 8291i, u_input.e.x), vec3<i32>(u_input.c, 2147483647i, u_input.c)), _wgslsmith_mod_i32(u_input.a.x, 16212i), global1.a.e.x >> (global4.x % 32u)), func_2(any(vec4<bool>(true, arg_0.x, global0[_wgslsmith_index_u32(1u, 26u)], true)) || !global0[_wgslsmith_index_u32(47845u, 26u)], !(!vec3<bool>(global1.a.d.c, true, arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -252f, -1000f, -110f) - vec4<f32>(1568f, arg_1.x, 480f, arg_1.x)), vec4<f32>(arg_1.x, -877f, arg_1.x, -272f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-715f, 1509f, -1083f, 800f), vec4<f32>(132f, -807f, -1145f, arg_1.x)))))).yz;
    return Struct_1(global1.a.c.x, !vec4<bool>(true, _wgslsmith_f_op_f32(select(-1024f, 478f, true)) <= _wgslsmith_f_op_f32(1049f - 433f), true, false), global0[_wgslsmith_index_u32(var_0.x, 26u)], arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = array<bool, 26>();
    global1 = Struct_4(Struct_2(0u, func_1(vec3<bool>(true, false, !global0[_wgslsmith_index_u32(6072u, 26u)]), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(349f, 1236f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-754f, 398f)))), ~global1.a.a), vec4<bool>(true, global1.d != abs(u_input.d.x), _wgslsmith_add_i32(u_input.d.x, 8844i) <= global1.a.e.x, !(false || global1.a.d.d)), global1.a.d, reverseBits(global1.a.e)), _wgslsmith_mult_vec3_i32(reverseBits(u_input.b.xzz), ~(~vec3<i32>(u_input.d.x, u_input.b.x, global1.b.x))), ~vec4<u32>(~min(global4.x, 0u), reverseBits(1u), global4.x, ~1u), u_input.d.x << (0u % 32u));
    let var_1 = firstTrailingBit(countOneBits(-41542i));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1040f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1603f)), _wgslsmith_f_op_f32(step(-711f, -333f))))) - -844f));
    let var_3 = func_1(!vec3<bool>(-global1.a.e.x >= func_2(global0[_wgslsmith_index_u32(global1.c.x, 26u)], global1.a.b.b.yzw).e.x, false, any(global1.a.b.b.zz)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(var_2, -697f), vec2<f32>(var_2, var_2))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(640f, var_2), vec2<f32>(288f, var_2))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 893f) - vec2<f32>(var_2, var_2))))))), reverseBits(_wgslsmith_clamp_u32(global1.c.x ^ 4294967295u, global4.x, _wgslsmith_add_u32(countOneBits(global4.x), ~0u)))).b.zw;
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<u32>(reverseBits(select(firstLeadingBit(85027u), ~20188u, false)), global4.x, ~4294967295u, _wgslsmith_dot_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(4245u, 4294967295u, 0u, global4.x), vec4<u32>(38908u, global4.x, global1.c.x, 11856u)), ~global1.c), ~_wgslsmith_div_vec4_u32(global1.c, global1.c))), global1.c.yx, _wgslsmith_div_u32(25045u, countOneBits(firstTrailingBit(firstTrailingBit(global1.a.a)))), 0i);
}

