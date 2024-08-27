struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(15219u, vec3<i32>(2147483647i, 42247i, -1i));

var<private> global1: array<vec3<i32>, 21>;

var<private> global2: Struct_3 = Struct_3(4294967295u, vec3<i32>(26360i, 0i, -9545i));

var<private> global3: Struct_2 = Struct_2(49604i, Struct_1(vec4<bool>(true, true, false, true)), 851f);

var<private> global4: array<f32, 11>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: Struct_4) -> vec3<i32> {
    var var_0 = abs(select(_wgslsmith_add_i32(-37286i, arg_1.b.x >> (~arg_1.a % 32u)), global3.a, firstLeadingBit(_wgslsmith_add_u32(global0.a, arg_0.a)) > _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, global2.a), ~vec3<u32>(91956u, 1u, 1u))));
    var var_1 = global3.b;
    let var_2 = vec4<bool>(true, !(!all(select(arg_3.e.a.yz, vec2<bool>(false, arg_3.e.a.x), var_1.a.x))), arg_3.e.a.x, firstLeadingBit(_wgslsmith_add_i32(~0i, arg_2)) < (-(~arg_2) >> ((_wgslsmith_div_u32(arg_3.b.x, global2.a) | 1u) % 32u)));
    var var_3 = 1000f;
    let var_4 = Struct_3(global0.a << (u_input.a.x % 32u), arg_1.b & vec3<i32>(31848i, 1i, max(firstLeadingBit(arg_2), global0.b.x)));
    return global2.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    global0 = Struct_3(_wgslsmith_dot_vec2_u32(firstTrailingBit(~u_input.a.xy), vec2<u32>(1u, 0u)) & 21315u, vec3<i32>(_wgslsmith_dot_vec4_i32(abs(abs(vec4<i32>(-62346i, -26119i, arg_0.b.x, -1i))), -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b.x, -2147483647i, 40558i, arg_0.b.x), vec4<i32>(global3.a, arg_0.b.x, global0.b.x, global2.b.x))), -2147483647i, abs(global2.b.x)));
    var var_0 = 1u;
    global1 = array<vec3<i32>, 21>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-948f - global4[_wgslsmith_index_u32(8730u, 11u)]), _wgslsmith_f_op_f32(-global3.c), global3.b.a.x | true)))))), _wgslsmith_f_op_f32(-367f + 724f), global4[_wgslsmith_index_u32(max(1u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), 11u)], global4[_wgslsmith_index_u32(arg_0.a, 11u)]);
    let var_2 = min(min(58547u, select(u_input.a.x, 26840u, true)), ~(~1u));
    return arg_0.a;
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    global4 = array<f32, 11>();
    let var_0 = Struct_1(select(global3.b.a, !global3.b.a, global3.b.a.x));
    global0 = Struct_3(func_4(Struct_3(121970u, func_3(Struct_3(global0.a, vec3<i32>(1i, 15422i, arg_1)), Struct_3(u_input.a.x, vec3<i32>(arg_0, -2444i, -1i)), _wgslsmith_div_i32(-7911i, -70680i), Struct_4(u_input.a.zx, vec3<u32>(46926u, 4294967295u, global0.a), global0.a, u_input.a.yz, Struct_1(vec4<bool>(false, false, false, global3.b.a.x))))), global3.b), _wgslsmith_sub_vec3_i32(max(vec3<i32>(-57878i, arg_1, -2147483647i), global2.b), reverseBits(firstTrailingBit(max(global2.b, vec3<i32>(1i, -1i, global3.a))))));
    global2 = Struct_3((global2.a >> (_wgslsmith_add_u32(52514u, 31251u) % 32u)) ^ u_input.a.x, max(firstTrailingBit(_wgslsmith_add_vec3_i32(-global2.b, global2.b)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(0i, global2.b.x, global3.a), global0.b, global1[_wgslsmith_index_u32(0u, 21u)])));
    global1 = array<vec3<i32>, 21>();
    return Struct_1(var_0.a);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_i32(~vec4<i32>(~(-global3.a), reverseBits(1i), countOneBits(_wgslsmith_mult_i32(-1i, arg_2.b.x)), 4411i), ~firstTrailingBit(-_wgslsmith_add_vec4_i32(vec4<i32>(global0.b.x, global2.b.x, global2.b.x, -1i), vec4<i32>(arg_1.a, -1i, arg_1.a, -44256i))));
    var_0 = 1i;
    var var_1 = ~_wgslsmith_clamp_u32(~0u, global2.a, 0u | abs(global2.a));
    let var_2 = arg_1.b;
    let var_3 = func_2(global3.a, 15697i << (global0.a % 32u)).a.x;
    return 33730u;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_3) -> u32 {
    let var_0 = arg_0;
    var var_1 = ~(~(~(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, global3.a, -1i, global0.b.x), vec4<i32>(-1i, -93415i, global3.a, global2.b.x)) ^ vec4<i32>(16132i, global3.a, 26655i, 0i))));
    var var_2 = -437f;
    let var_3 = _wgslsmith_f_op_f32(arg_1.x + arg_1.x);
    var var_4 = global0.a;
    return func_5(vec2<u32>(min(u_input.a.x >> (1u % 32u), ~(u_input.a.x | global0.a)), 4294967295u), Struct_2(~(1i | _wgslsmith_dot_vec3_i32(arg_2.b, global0.b)), func_2(-1i, _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_2.b.x, arg_2.b.x), _wgslsmith_add_i32(-23465i, global0.b.x))), 1026f), arg_2);
}

fn func_6(arg_0: Struct_4) -> Struct_2 {
    let var_0 = -10373i;
    global0 = Struct_3(arg_0.a.x, ~(~(global0.b << (vec3<u32>(4294967295u, 31700u, global2.a) % vec3<u32>(32u)))) | _wgslsmith_sub_vec3_i32(vec3<i32>(1i, global3.a, global2.b.x) & global2.b, func_3(Struct_3(global0.a, global2.b), Struct_3(u_input.a.x, global0.b), ~(-36658i), arg_0)));
    var var_1 = !(!(!(!global3.b.a.wx)));
    global4 = array<f32, 11>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c, -1000f, _wgslsmith_f_op_f32(trunc(1038f)))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(281f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-732f, -477f, true))), _wgslsmith_f_op_f32(step(-1000f, -610f)))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, global3.c, global3.c), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global0.a, 11u)] + -256f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(1u, 11u)], -731f, global3.b.a.x)) + _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global0.a, 11u)])), 208f))));
    return Struct_2(1i, global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(589f - _wgslsmith_f_op_f32(floor(1624f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(450f, 1029f)))));
}

fn func_7(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    var var_0 = -106f;
    var var_1 = Struct_4(vec2<u32>(1u, ~func_5(u_input.a.zz, arg_1, Struct_3(u_input.a.x, global1[_wgslsmith_index_u32(76397u, 21u)])) | u_input.a.x), _wgslsmith_add_vec3_u32(abs(vec3<u32>(~global0.a, u_input.a.x, global2.a)), vec3<u32>(1u, 4294967295u, 1u)), u_input.a.x, u_input.a.xy, Struct_1(vec4<bool>(!(!arg_1.b.a.x), true, arg_2.b.a.x || true, true)));
    let var_2 = Struct_3(0u, vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(func_6(Struct_4(var_1.d, var_1.b, 1u, vec2<u32>(21143u, global0.a), Struct_1(vec4<bool>(false, arg_2.b.a.x, var_1.e.a.x, arg_2.b.a.x)))).a, reverseBits(-6381i)), global0.b.x & 0i), arg_0, -44537i << ((var_1.d.x >> (u_input.a.x % 32u)) % 32u)));
    var var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(35432u >> (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global0.a, 0u), var_1.b)) % 32u), _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a.x | 66474u, 18271u), var_2.a, global0.a)), ~u_input.a.xz);
    var_1 = Struct_4(~_wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.a.x, var_2.a), var_1.a, vec2<u32>(min(28731u, 124054u), ~0u)), abs(var_1.b), 65807u, u_input.a.yy ^ reverseBits(~(vec2<u32>(var_3.x, 19536u) & var_1.b.zz)), arg_1.b);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(global0.b.x ^ -1171i, Struct_1(vec4<bool>(global3.b.a.x, any(vec3<bool>(global3.b.a.x, true, global3.b.a.x)), true, all(global3.b.a) | global3.b.a.x)), _wgslsmith_f_op_f32(abs(-550f)));
    global0 = func_7(countOneBits(-global0.b.x), func_6(Struct_4(u_input.a.xz, reverseBits(u_input.a), _wgslsmith_mod_u32(abs(global2.a), func_1(global3.b.a, vec2<f32>(-1006f, global3.c), Struct_3(39453u, vec3<i32>(-1i, -45080i, global3.a)))), ~(~u_input.a.xy), Struct_1(vec4<bool>(global3.b.a.x, global3.b.a.x, global3.b.a.x, global3.b.a.x)))), Struct_2(global3.a, Struct_1(vec4<bool>(func_6(Struct_4(vec2<u32>(global2.a, u_input.a.x), u_input.a, global0.a, vec2<u32>(global0.a, 1u), global3.b)).b.a.x, true, true, any(vec4<bool>(global3.b.a.x, false, false, global3.b.a.x)))), global3.c));
    var var_0 = u_input.a;
    let var_1 = global3.b.a;
    let var_2 = -807f;
    global3 = func_6(Struct_4(u_input.a.yy, vec3<u32>(_wgslsmith_div_u32(~0u, func_5(u_input.a.yz, Struct_2(2147483647i, global3.b, -1000f), Struct_3(global2.a, vec3<i32>(22843i, 18886i, -2147483647i)))), func_4(Struct_3(10203u, vec3<i32>(global2.b.x, global2.b.x, -1i)), global3.b) << (reverseBits(u_input.a.x) % 32u), u_input.a.x), _wgslsmith_sub_u32(~global0.a, ~firstTrailingBit(53871u)), var_0.xz, func_2(global3.a, ~select(global2.b.x, -5680i, false))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(global2.a, 1u, 59037u), vec3<u32>(18777u, func_4(Struct_3(global0.a, global0.b), func_6(Struct_4(u_input.a.yz, u_input.a, var_0.x, vec2<u32>(var_0.x, u_input.a.x), Struct_1(vec4<bool>(var_1.x, false, global3.b.a.x, global3.b.a.x)))).b), ~u_input.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2, global4[_wgslsmith_index_u32(u_input.a.x, 11u)], -1423f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_0.x, 11u)] * -1457f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1524f) * -1000f), _wgslsmith_f_op_f32(-global3.c))), select(select(~abs(u_input.a), vec3<u32>(var_0.x ^ global0.a, ~global0.a, u_input.a.x), !vec3<bool>(var_1.x, var_1.x, global3.b.a.x)), u_input.a, select(!var_1.xww, select(select(global3.b.a.yxx, var_1.xwx, global3.b.a.xyx), vec3<bool>(false, false, var_1.x), var_1.x), global3.b.a.x)), ~select(vec3<i32>(i32(-1i) * -23128i, ~2407i, abs(1i)), _wgslsmith_div_vec3_i32(reverseBits(global1[_wgslsmith_index_u32(global2.a, 21u)]), vec3<i32>(-9966i, -19030i, 2147483647i)), !(global3.b.a.x & false)));
}

