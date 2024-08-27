struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: vec3<i32> = vec3<i32>(44057i, 0i, -41373i);

var<private> global2: i32;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(11903u, 51227u, 28036u, 78560u), 34630u, false);

var<private> global4: vec4<i32> = vec4<i32>(2829i, 14776i, -8952i, -1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<f32>) -> f32 {
    let var_0 = 65813u;
    var var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(64463u, 4294967295u, u_input.b, arg_0.a.x) << (vec4<u32>(global3.a.x, 26392u, var_0, global3.b) % vec4<u32>(32u)), vec4<u32>(~57248u, arg_0.b, ~var_0, _wgslsmith_sub_u32(14180u, 1u))), ~_wgslsmith_mult_u32(var_0, arg_0.b), true), _wgslsmith_div_f32(arg_1.x, -574f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_1.x)), -156f)), Struct_1(vec4<u32>(u_input.b, ~firstLeadingBit(4294967295u), arg_0.a.x, 4896u), _wgslsmith_sub_u32(var_0, 0u), arg_0.c));
    global4 = ~(~vec4<i32>(u_input.a, ~_wgslsmith_mult_i32(u_input.a, global1.x), ~0i, -2147483647i));
    global4 = _wgslsmith_mult_vec4_i32(firstTrailingBit(abs(_wgslsmith_add_vec4_i32(~vec4<i32>(-17633i, global1.x, 2147483647i, global1.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, global1.x, -772i, 2147483647i), vec4<i32>(global4.x, global1.x, u_input.a, -14088i))))), -vec4<i32>(-8296i, -50891i, -(~0i), i32(-1i) * -1i));
    let var_2 = abs(_wgslsmith_sub_u32(global3.b, ~global3.a.x));
    return _wgslsmith_f_op_f32(-550f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_1.x))))) - 1488f));
}

fn func_4(arg_0: vec4<f32>) -> u32 {
    global1 = abs(_wgslsmith_mult_vec3_i32(abs(~vec3<i32>(-3540i, global4.x, global1.x)), vec3<i32>(select(u_input.a, ~2147483647i, true), firstTrailingBit(45241i), (global4.x | global4.x) << (4294967295u % 32u))));
    var var_0 = Struct_1(~min(firstTrailingBit(vec4<u32>(global3.b, 4623u, global3.b, 76706u) << (global3.a % vec4<u32>(32u))), vec4<u32>(u_input.b, global3.a.x, 11468u & global3.a.x, ~u_input.b)), select(~(~global3.a.x), 8777u, true), global3.c);
    var_0 = Struct_1(var_0.a, min(var_0.b, global3.b) << (1u % 32u), any(vec2<bool>(false, global3.c | global3.c)));
    let var_1 = 2147483647i;
    var var_2 = vec3<bool>(var_0.c, false, true);
    return ~global3.a.x;
}

fn func_2() -> Struct_2 {
    var var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1053f) - _wgslsmith_f_op_f32(f32(-1f) * -2229f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1200f + -395f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(978f + _wgslsmith_div_f32(1393f, 1000f))), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(~(1u << (u_input.b % 32u)), 17u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(106f, -404f, -1481f, -845f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1002f, 1134f, -1513f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1595f, 895f) + vec3<f32>(-1000f, 735f, 512f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -139f), _wgslsmith_f_op_f32(floor(-1000f)))))));
    let var_1 = vec2<bool>(global3.c, global1.x <= 0i);
    global0 = array<Struct_1, 17>();
    let var_2 = global4.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(333f, -967f), vec2<f32>(478f, -947f), false)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2192f, 986f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2376f, -755f) + vec2<f32>(-788f, 340f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(313f, -1212f))))), vec2<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -818f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1217f, -826f)))))), var_1));
    return Struct_2(Struct_1(vec4<u32>(select(u_input.b, ~u_input.b, true), 20119u, ~u_input.b & abs(3830u), ~(~u_input.b)), global3.a.x, !global3.c), var_3.x, _wgslsmith_f_op_f32(var_3.x + -459f), global0[_wgslsmith_index_u32(global3.b, 17u)]);
}

fn func_1() -> bool {
    global3 = global0[_wgslsmith_index_u32(u_input.b, 17u)];
    let var_0 = -1000f;
    var var_1 = func_2();
    global1 = _wgslsmith_add_vec3_i32(~countOneBits(_wgslsmith_div_vec3_i32(~vec3<i32>(-1i, -32197i, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(global4.x, global4.x, global4.x), vec3<i32>(global1.x, global4.x, u_input.a)))), global4.wwz);
    let var_2 = vec4<bool>(false, var_1.a.c, select(true, false, var_1.d.c), all(select(select(!vec3<bool>(global3.c, global3.c, false), select(vec3<bool>(global3.c, global3.c, false), vec3<bool>(false, false, false), false), vec3<bool>(false, var_1.a.c, false)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), var_1.a.c), !vec3<bool>(true, false, global3.c), !vec3<bool>(global3.c, false, true)), !select(vec3<bool>(global3.c, false, true), vec3<bool>(var_1.a.c, var_1.a.c, var_1.d.c), vec3<bool>(false, false, true)))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global3.b;
    global1 = vec3<i32>(~max(~(-34135i), _wgslsmith_div_i32(~global4.x, global4.x)), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_add_i32(u_input.a, global1.x), ~global1.x, 1i), ~_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, 15116i, global1.x, -21268i), vec4<i32>(global4.x, -19125i, u_input.a, 0i))), max(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -22429i, u_input.a, 2147483647i) | ~vec4<i32>(0i, global1.x, u_input.a, -24420i), vec4<i32>(3473i, -2147483647i, u_input.a, 22399i) >> (vec4<u32>(4294967295u, u_input.b, 0u, global3.a.x) % vec4<u32>(32u))), global4.x & u_input.a));
    let var_1 = !func_1();
    var var_2 = global3.b;
    var var_3 = func_2().a;
    var var_4 = 1141f;
    var_3 = Struct_1(vec4<u32>(var_3.a.x | u_input.b, u_input.b | var_3.a.x, ~3328u, reverseBits(select(var_3.a.x, 0u, true))), _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1784f, 368f, -370f, 859f))), ~(var_0 << (58998u % 32u)))), !(!(!var_1)));
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_3.a.x, 43041u, var_0, var_5.a.b), var_5.d.a), (var_3.b | 71457u) ^ _wgslsmith_sub_u32(u_input.b, 2936u)), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(firstLeadingBit(var_3.a.zz), ~var_5.d.a.yy), ~vec2<u32>(global3.b, 35364u)), true), _wgslsmith_mult_u32(global3.b | ~42381u, ~_wgslsmith_clamp_u32(1u, 1u, _wgslsmith_div_u32(1u, 98652u))));
}

