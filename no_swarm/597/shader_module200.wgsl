struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
    c: Struct_4,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(true, vec4<u32>(4294967295u, 38718u, 4294967295u, 64593u), Struct_4(Struct_1(true, 48042u, vec4<f32>(1366f, -976f, -2415f, 1681f), vec3<bool>(false, false, false), 5082u), vec3<bool>(false, false, false), Struct_1(true, 30094u, vec4<f32>(419f, 937f, -1189f, -1000f), vec3<bool>(false, true, false), 87499u), Struct_3(Struct_2(16749u, vec2<i32>(42890i, 15221i)), 38025u)), Struct_2(1u, vec2<i32>(-1i, -1563i)));

var<private> global1: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(-493f, 547f), vec2<f32>(-343f, -1935f), vec2<f32>(958f, 877f), vec2<f32>(-2247f, 689f), vec2<f32>(1938f, 552f), vec2<f32>(-1546f, 1519f), vec2<f32>(154f, 1000f), vec2<f32>(1782f, -1263f), vec2<f32>(158f, -1103f), vec2<f32>(-974f, 862f), vec2<f32>(-244f, 388f), vec2<f32>(699f, 257f), vec2<f32>(-910f, -468f), vec2<f32>(257f, -203f), vec2<f32>(862f, 410f), vec2<f32>(-789f, -212f), vec2<f32>(-1251f, 789f), vec2<f32>(-1202f, 717f), vec2<f32>(-837f, -555f), vec2<f32>(265f, -746f), vec2<f32>(-907f, -196f), vec2<f32>(2213f, -1000f), vec2<f32>(903f, 1702f), vec2<f32>(259f, -1000f), vec2<f32>(979f, 615f), vec2<f32>(-660f, 421f));

var<private> global2: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(-27150i, 1i, 0i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(0i, -1i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, -31735i), vec3<i32>(-25108i, -54227i, -8357i), vec3<i32>(-16063i, -36503i, i32(-2147483648)), vec3<i32>(2147483647i, -1i, -17457i), vec3<i32>(-1i, 3413i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 49394i, 14728i), vec3<i32>(38073i, -8986i, -1i), vec3<i32>(0i, 31616i, -49895i), vec3<i32>(1i, 75395i, 26256i), vec3<i32>(41903i, -1i, i32(-2147483648)), vec3<i32>(47973i, -1i, -29256i), vec3<i32>(0i, 62563i, 1i), vec3<i32>(-56415i, 0i, 7563i), vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(1i, 18557i, -1i), vec3<i32>(1i, 2147483647i, -10249i), vec3<i32>(-3262i, -1i, 17176i), vec3<i32>(39685i, i32(-2147483648), 37960i), vec3<i32>(1i, i32(-2147483648), -14593i), vec3<i32>(-1438i, -40171i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, 20916i), vec3<i32>(-22976i, i32(-2147483648), -13811i), vec3<i32>(1i, 153i, -46656i), vec3<i32>(19554i, i32(-2147483648), -31717i), vec3<i32>(54542i, 45339i, i32(-2147483648)), vec3<i32>(1i, 58699i, -25772i), vec3<i32>(38616i, -9647i, -2709i), vec3<i32>(11493i, 0i, 408i), vec3<i32>(1i, 640i, i32(-2147483648)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_2) -> f32 {
    global2 = array<vec3<i32>, 32>();
    let var_0 = !global0.c.b.x;
    global0 = Struct_5(true, ~(~global0.b), global0.c, Struct_2(0u >> (_wgslsmith_mult_u32(firstLeadingBit(arg_2.a), reverseBits(1u)) % 32u), vec2<i32>(max(-global0.d.b.x, 1i), firstTrailingBit(_wgslsmith_mult_i32(8932i, arg_2.b.x)))));
    var var_1 = Struct_2(u_input.a.x, -countOneBits(-(~global0.d.b)));
    var var_2 = select(vec4<bool>(!all(vec3<bool>(true, true, true)), arg_0.x, true, arg_0.x), select(select(!vec4<bool>(var_0, true, arg_0.x, false), vec4<bool>(true, all(arg_0), all(vec4<bool>(true, var_0, arg_0.x, var_0)), arg_0.x), true), arg_0, select(!vec4<bool>(global0.c.b.x, var_0, arg_0.x, var_0), vec4<bool>(16012u < u_input.a.x, true, global0.a, false), vec4<bool>(global0.c.a.d.x, any(vec3<bool>(false, global0.a, true)), any(vec2<bool>(arg_0.x, true)), false))), _wgslsmith_dot_vec4_u32(global0.b, vec4<u32>(abs(global0.c.a.b), global0.d.a, 23066u, 1u)) >= 0u);
    return global0.c.c.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    var var_0 = global0.d.b.x;
    global1 = array<vec2<f32>, 26>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(select(vec4<bool>(arg_0.a, arg_0.d.x, global0.a, true), vec4<bool>(true, arg_0.a, global0.c.b.x, false), global0.a), _wgslsmith_clamp_vec2_i32(global0.d.b, global0.c.d.a.b, vec2<i32>(global0.d.b.x, 2868i)), global0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1031f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global0.c.a.c.x)), -837f)), arg_1.x, global0.c.a.c.x);
    global1 = array<vec2<f32>, 26>();
    global1 = array<vec2<f32>, 26>();
    return 1u;
}

fn func_1() -> bool {
    let var_0 = global0.d;
    var var_1 = all(vec4<bool>(true, !all(vec4<bool>(false, false, global0.a, false)) != !(!global0.c.b.x), _wgslsmith_mod_i32(abs(-2147483647i), 2348i) <= global0.c.d.a.b.x, all(global0.c.a.d)));
    var var_2 = max(vec4<u32>(~(4294967295u >> (min(u_input.a.x, var_0.a) % 32u)), _wgslsmith_mult_u32(0u, func_2(Struct_1(false, 41308u, global0.c.c.c, global0.c.b, var_0.a), _wgslsmith_f_op_vec4_f32(-global0.c.c.c))), _wgslsmith_div_u32(u_input.a.x, firstLeadingBit(1u)), ~(0u & reverseBits(u_input.a.x))), ~global0.b);
    var_1 = !((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-234f - 1148f)) >= _wgslsmith_f_op_f32(global0.c.c.c.x * _wgslsmith_f_op_f32(f32(-1f) * -2242f))) & select(true, all(select(vec4<bool>(true, global0.c.a.a, true, true), vec4<bool>(true, global0.c.a.d.x, true, global0.c.b.x), vec4<bool>(global0.a, global0.a, false, global0.c.c.a))), !(!global0.a)));
    var_1 = global0.a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(any(vec3<bool>(false, func_1(), true)), global0.b, Struct_4(global0.c.a, select(vec3<bool>(global0.c.c.d.x | global0.a, global0.c.a.d.x, !global0.a), select(!global0.c.a.d, global0.c.a.d, true), global0.c.b), Struct_1(all(vec3<bool>(true, global0.a, false)), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c.a.c * vec4<f32>(global0.c.a.c.x, global0.c.a.c.x, global0.c.a.c.x, global0.c.c.c.x))), select(!vec3<bool>(global0.a, true, global0.c.b.x), vec3<bool>(global0.a, false, false), select(vec3<bool>(true, true, global0.c.c.a), global0.c.a.d, true)), ~_wgslsmith_mod_u32(u_input.a.x, global0.d.a)), Struct_3(Struct_2(4294967295u & global0.c.a.e, vec2<i32>(-9543i, global0.c.d.a.b.x)), ~31865u)), global0.c.d.a);
    let var_0 = Struct_4(global0.c.c, global0.c.b, Struct_1(!global0.a, ~49922u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(952f, 621f, -1947f, global0.c.c.c.x)))), global0.c.c.c)), !(!global0.c.c.d), _wgslsmith_dot_vec4_u32(global0.b, abs(vec4<u32>(1u, 4294967295u, 66053u, 0u)))), global0.c.d);
    let var_1 = -1i != countOneBits(countOneBits(var_0.d.a.b.x));
    var var_2 = abs(u_input.a);
    var var_3 = ~global0.b;
    var var_4 = !(!(var_0.d.a.b.x < var_0.d.a.b.x));
    global1 = array<vec2<f32>, 26>();
    let var_5 = Struct_5(global0.c.a.a, vec4<u32>(var_2.x, countOneBits(var_0.d.a.a), u_input.a.x, firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(30231u, u_input.a.x, u_input.a.x), vec3<u32>(1u, 1u, var_3.x)))), global0.c, Struct_2(4294967295u ^ _wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.a.e, var_2.x), 1u & var_0.a.e), vec2<i32>(-1i) * -var_0.d.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(1699i, vec4<f32>(global0.c.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.c.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-836f, global0.c.c.c.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_5.c.c.c.x, var_0.c.c.x)), _wgslsmith_f_op_f32(global0.c.a.c.x + 175f))), -521f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1012f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(var_5.a, true, true, var_0.b.x), var_5.d.b, var_5.c.d.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(369f - -1263f))), _wgslsmith_f_op_f32(round(var_0.a.c.x))), 0u ^ firstLeadingBit(_wgslsmith_sub_u32(~var_0.d.a.a, _wgslsmith_add_u32(var_2.x, 75594u))), ~countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-26106i, var_0.d.a.b.x, 34343i), _wgslsmith_mult_vec3_i32(global2[_wgslsmith_index_u32(93052u, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)]))));
}

