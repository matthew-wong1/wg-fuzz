struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(0u, 52862u, 58825u), vec3<u32>(2840u, 0u, 1u), vec3<u32>(660u, 1984u, 3772u), vec3<u32>(4294967295u, 4294967295u, 12557u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 37103u, 1u), vec3<u32>(0u, 4294967295u, 22723u), vec3<u32>(19065u, 0u, 1u), vec3<u32>(84879u, 4294967295u, 4294967295u), vec3<u32>(43736u, 4294967295u, 1u), vec3<u32>(1u, 45299u, 4489u), vec3<u32>(4294967295u, 53394u, 47839u), vec3<u32>(62369u, 79893u, 59370u), vec3<u32>(58638u, 29290u, 0u), vec3<u32>(1u, 24163u, 58208u), vec3<u32>(5205u, 37199u, 4294967295u), vec3<u32>(0u, 1u, 78347u), vec3<u32>(1u, 0u, 8681u), vec3<u32>(28786u, 4294967295u, 0u), vec3<u32>(83738u, 20950u, 0u), vec3<u32>(77459u, 4294967295u, 17402u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(17897u, 66858u, 4294967295u), vec3<u32>(53294u, 15295u, 17912u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 0u, 0u));

var<private> global1: vec3<u32>;

var<private> global2: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(4294967295u, 0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = -(~(-26610i));
    let var_1 = -2147483647i;
    var var_2 = ~select(vec4<u32>(~_wgslsmith_mult_u32(22571u, 1u), global1.x, firstTrailingBit(~27324u), ~1u), select(firstLeadingBit(~vec4<u32>(1u, global1.x, global1.x, 4294967295u)), vec4<u32>(~global1.x, 7189u, 0u, global1.x), !select(vec4<bool>(false, arg_0.c.x, arg_0.b, true), vec4<bool>(arg_0.c.x, arg_0.a.c.x, true, arg_0.c.x), arg_0.b)), any(select(select(vec2<bool>(arg_0.b, true), vec2<bool>(true, arg_0.e.c.x), arg_0.e.c.x), vec2<bool>(arg_0.b, true), select(true, false, arg_0.b))));
    var var_3 = Struct_3(Struct_1(~_wgslsmith_sub_i32(arg_0.e.e, u_input.a.x), arg_0.a.b, select(!arg_0.a.c, select(arg_0.e.c, !arg_0.a.c, select(false, arg_0.b, arg_0.a.c.x)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -700f) * -1799f), arg_0.d), all(vec3<bool>(true, true, false)), select(!select(!arg_0.e.c.xz, !vec2<bool>(arg_0.a.c.x, false), any(arg_0.e.c)), vec2<bool>(any(!vec2<bool>(arg_0.e.c.x, arg_0.b)), true), true), ~reverseBits(abs(arg_0.e.e)), arg_0.e);
    var var_4 = global2[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(48361u, 328u, 16235u), _wgslsmith_add_vec3_u32(vec3<u32>(global1.x, var_2.x, 36434u), global0[_wgslsmith_index_u32(var_2.x, 26u)]), vec3<bool>(false, false, var_3.c.x)), max(firstTrailingBit(var_2.wzw), var_2.xwx))), 1u)];
    return min(firstTrailingBit(2147483647i), firstTrailingBit(arg_0.d));
}

fn func_2() -> bool {
    var var_0 = Struct_2(vec2<i32>(func_3(Struct_3(Struct_1(-2147483647i, vec4<f32>(969f, -2752f, -563f, -121f), vec3<bool>(false, false, true), -1000f, -1i), false, vec2<bool>(true, true), u_input.b | u_input.b, Struct_1(-33720i, vec4<f32>(-178f, -149f, -883f, -1267f), vec3<bool>(true, false, true), -937f, 30310i))), _wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec3_i32(u_input.a.zwx << (global0[_wgslsmith_index_u32(29055u, 26u)] % vec3<u32>(32u)), u_input.a.wyx))));
    let var_1 = 101428u;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-431f + -1529f), 2077f, _wgslsmith_f_op_f32(select(256f, 617f, true)))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(-269f)), 1f, _wgslsmith_f_op_f32(step(1212f, -1000f))), vec3<f32>(_wgslsmith_f_op_f32(663f - 1023f), _wgslsmith_f_op_f32(319f - 826f), -643f)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(413f, -1438f, -904f) - vec3<f32>(-271f, -193f, 677f)), vec3<f32>(-481f, -392f, 724f), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1282f, -698f, -1192f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1301f, -876f, 1047f), vec3<f32>(1000f, -991f, 1557f)))))));
    global2 = array<vec2<u32>, 1>();
    let var_3 = Struct_3(Struct_1(0i << (_wgslsmith_mult_u32(global1.x, _wgslsmith_clamp_u32(4294967295u, 59927u, global1.x)) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-460f, 565f, var_2.x, var_2.x))), vec3<bool>(true || (var_0.a.x == -34565i), false, select(var_1, 66273u, false) >= _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(global1.x, 26u)], vec3<u32>(var_1, global1.x, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) + -616f)), ~u_input.a.x), true, vec2<bool>(true, true), abs(var_0.a.x), Struct_1(u_input.a.x & (u_input.b | -u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -335f, var_2.x, 302f) - vec4<f32>(959f, var_2.x, var_2.x, 280f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1701f, var_2.x, var_2.x))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(197f, -571f, 1464f, var_2.x)))))), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1024f)))), var_0.a.x));
    return select(var_3.e.c.x != var_3.b, true, !all(vec2<bool>(var_3.a.c.x, all(vec2<bool>(var_3.a.c.x, var_3.e.c.x)))));
}

fn func_1() -> bool {
    var var_0 = max(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.x, global1.x) ^ (vec3<u32>(global1.x, 1u, global1.x) >> (vec3<u32>(global1.x, global1.x, 1u) % vec3<u32>(32u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(19686u, 22953u, global1.x))), 26u)], select(~_wgslsmith_clamp_vec3_u32(global0[_wgslsmith_index_u32(global1.x, 26u)], _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 76456u), vec3<u32>(global1.x, 1u, 4294967295u)), ~global0[_wgslsmith_index_u32(global1.x, 26u)]), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, global1.x, global1.x), ~vec4<u32>(global1.x, global1.x, global1.x, 0u))), 26u)], select(false, !func_2(), true)));
    global1 = _wgslsmith_clamp_vec3_u32(global0[_wgslsmith_index_u32(firstLeadingBit(~61669u >> (_wgslsmith_add_u32(47262u, var_0.x) % 32u)), 26u)] << (firstLeadingBit(vec3<u32>(~0u, 1u, global1.x & 1u)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(select(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_0.x, global1.x), 26u)], vec3<u32>(var_0.x, _wgslsmith_mult_u32(var_0.x, 4294967295u), 0u), vec3<bool>(true, any(vec2<bool>(false, true)), func_2())), reverseBits(select(vec3<u32>(global1.x, 0u, var_0.x), vec3<u32>(var_0.x, global1.x, global1.x), vec3<bool>(false, false, false)) << ((vec3<u32>(32535u, 0u, 0u) | vec3<u32>(31456u, 54922u, var_0.x)) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(global0[_wgslsmith_index_u32(~19775u << (~var_0.x % 32u), 26u)], vec3<u32>(~4294967295u, ~14469u, ~global1.x))), ~global0[_wgslsmith_index_u32(1u, 26u)]);
    var var_1 = !select(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, false))), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)));
    let var_2 = vec2<bool>(func_2(), !(!(-5150i > u_input.a.x) & true));
    var var_3 = -(u_input.b ^ u_input.a.x);
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_3(arg_1, func_1(), select(vec2<bool>(arg_0.x | arg_1.c.x, !any(arg_0)), vec2<bool>(false, false), !arg_1.c.zx), u_input.b, arg_1);
    global1 = vec3<u32>(~(countOneBits(58119u) & arg_2.x), abs(min(_wgslsmith_sub_u32(global1.x, ~arg_2.x), arg_2.x)), ~global1.x);
    var var_1 = !vec4<bool>(!func_1(), true, select(any(select(vec3<bool>(arg_1.c.x, false, false), arg_1.c, vec3<bool>(true, arg_0.x, true))), true | select(var_0.b, true, var_0.c.x), true), true);
    var var_2 = firstLeadingBit(global1.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(627f))), _wgslsmith_f_op_f32(round(var_0.e.b.x))));
    return Struct_1(i32(-1i) * -arg_3.x, arg_1.b, vec3<bool>(all(vec4<bool>(0i < arg_3.x, true, true, 11169u > global1.x)), global1.x == _wgslsmith_add_u32(~4294967295u, ~arg_2.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-588f - 454f)), -(~_wgslsmith_div_i32(arg_1.a, arg_3.x)) | -(~_wgslsmith_mult_i32(-2147483647i, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec3<bool>(select(all(vec4<bool>(true, true, true, false)), func_1(), all(vec3<bool>(true, false, false))), false, !(~3887u < global1.x)), Struct_1(min(i32(-1i) * -34156i, u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-275f, -334f, -345f, -225f), vec4<f32>(1199f, -318f, 1000f, 319f), false)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-761f, -157f, -1388f, -171f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-636f, -1000f, -167f, -208f) + vec4<f32>(-660f, -207f, 2593f, 368f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2392f, -934f, -444f, 480f)))), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(250f - -1273f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-285f, 926f))), 6253i), countOneBits(~global0[_wgslsmith_index_u32(9742u, 26u)]), u_input.a.zy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.b.x)))), ~4294967295u, u_input.a, _wgslsmith_add_vec2_i32(min(~u_input.a.xy ^ select(u_input.a.wz, u_input.a.yx, true), u_input.a.zx), vec2<i32>(_wgslsmith_mod_i32(0i, -var_0.e), func_4(vec3<bool>(true, false, false), Struct_1(636i, var_0.b, var_0.c, -1414f, var_0.a), global0[_wgslsmith_index_u32(23909u, 26u)], u_input.a.wy).a >> (~global1.x % 32u))));
}

