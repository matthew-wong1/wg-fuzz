struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: Struct_3;

var<private> global2: i32;

var<private> global3: array<vec3<i32>, 23>;

var<private> global4: array<Struct_1, 2>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<i32>) -> f32 {
    var var_0 = Struct_3(-_wgslsmith_sub_vec2_i32(arg_1.zy, -select(global1.a, global1.a, vec2<bool>(false, true))), global1.c, Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -1i, -10297i, ~global1.b.a), vec3<i32>(-36282i, arg_1.x, reverseBits(1i)))), Struct_1(global1.c.a), 1i);
    var var_1 = !(!vec2<bool>(any(vec3<bool>(true, true, true)), !(u_input.d >= u_input.e)));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-568f, -261f, arg_0.x, -373f), vec4<f32>(1005f, 2059f, -1042f, -1462f), var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 630f, arg_0.x, -671f) * vec4<f32>(arg_0.x, 856f, 370f, 1132f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(294f, arg_0.x, -986f, arg_0.x), vec4<f32>(-891f, 354f, arg_0.x, arg_0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 937f, arg_0.x, 1091f), vec4<f32>(-1698f, arg_0.x, -524f, arg_0.x)))))))));
    var var_3 = vec3<u32>(30283u, 10119u, 13480u);
    let var_4 = var_3.x > _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.d, var_3.x) << ((var_3.x ^ u_input.e) % 32u), 54352u ^ _wgslsmith_dot_vec2_u32(u_input.a.wy, vec2<u32>(1u, 86788u)), ~0u, 24273u), min(u_input.a, vec4<u32>(4294967295u, var_3.x, u_input.a.x, var_3.x)) | u_input.a);
    return var_2.x;
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(221f, -1775f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-269f * 510f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1164f - -1073f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(196f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(189f, -745f))), _wgslsmith_f_op_f32(sign(-291f)), (1u >> (~u_input.b.x % 32u)) > firstLeadingBit(_wgslsmith_mod_u32(u_input.e, u_input.c.x)))));
    var var_1 = false | (select(abs(global0[_wgslsmith_index_u32(u_input.b.x, 21u)]), 26745i, arg_1.a.a <= -1478i) <= firstTrailingBit(select(1313i, ~(-28636i), true)));
    let var_2 = Struct_3(abs(-vec2<i32>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(29484u, 21u)], global1.c.a), max(10351i, -1i))), Struct_1(-35548i & global1.a.x), arg_1.a, Struct_1(firstLeadingBit(~(-2147483647i))), firstTrailingBit((global1.b.a << (~u_input.a.x % 32u)) >> (_wgslsmith_div_u32(u_input.d, u_input.b.x) % 32u)));
    global2 = -30942i;
    var var_3 = reverseBits(u_input.a & _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(min(u_input.a, vec4<u32>(1u, u_input.d, u_input.e, u_input.a.x)), vec4<u32>(4294967295u, 1u, 63610u, 72221u)), vec4<u32>(u_input.c.x, 2457u, 0u, u_input.b.x) & ~vec4<u32>(u_input.b.x, u_input.d, 112874u, 4294967295u)));
    return var_3.x;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_3(global1.a, global1.b, global4[_wgslsmith_index_u32(4294967295u, 2u)], Struct_1(min(-firstLeadingBit(-1i), select(26333i, firstTrailingBit(15948i), all(vec3<bool>(arg_2, arg_2, true))))), -6099i);
    let var_1 = arg_1;
    var_0 = Struct_3(firstTrailingBit(var_0.a), Struct_1(-28968i), Struct_1(~(firstTrailingBit(2147483647i) | _wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(7735u, 23u)]))), var_0.d, -5253i);
    var var_2 = Struct_3(var_0.a, global4[_wgslsmith_index_u32(7751u, 2u)], global4[_wgslsmith_index_u32(reverseBits(abs(_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(4294967295u, 0u, 13143u, u_input.c.x) | u_input.a))), 2u)], Struct_1(abs(arg_1.a.a)), _wgslsmith_mult_i32(-arg_1.a.a, 2147483647i));
    let var_3 = firstLeadingBit(~vec4<u32>(61818u, 1u, 478u, 1u));
    return 1i;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-302f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -237f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(353f - 236f) * _wgslsmith_f_op_f32(f32(-1f) * -105f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1000f, -218f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1000f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-541f, 2015f, -590f)), global3[_wgslsmith_index_u32(u_input.d, 23u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1152f, 554f, 758f, 698f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(381f, 411f, 422f, 808f) + vec4<f32>(414f, -171f, -1428f, 759f))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(774f)) * -773f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-623f * 1000f)), _wgslsmith_f_op_f32(181f - _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(f32(-1f) * -485f))));
    let var_1 = Struct_3(vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~_wgslsmith_mod_u32(arg_1.x, arg_1.x)), 21u)], func_4(false, Struct_2(global4[_wgslsmith_index_u32(func_3(arg_2, Struct_2(global4[_wgslsmith_index_u32(41698u, 2u)])), 2u)]), false, Struct_1(global1.b.a))), global4[_wgslsmith_index_u32(u_input.c.x, 2u)], global4[_wgslsmith_index_u32(52953u, 2u)], global1.b, global0[_wgslsmith_index_u32(abs(75811u) | _wgslsmith_sub_u32(1u, u_input.e), 21u)]);
    global3 = array<vec3<i32>, 23>();
    let var_2 = var_1.b;
    var var_3 = ~(~firstTrailingBit(~(~u_input.b.xy)));
    return var_2;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    let var_0 = arg_2;
    return Struct_1(-35203i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 21>();
    let var_0 = func_5(~_wgslsmith_add_vec3_i32(vec3<i32>(-16234i, _wgslsmith_div_i32(1i, 2147483647i), -global1.a.x), global3[_wgslsmith_index_u32(u_input.a.x, 23u)]), Struct_3(vec2<i32>(global0[_wgslsmith_index_u32(u_input.d, 21u)] << (u_input.d % 32u), -_wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(u_input.c.x, 23u)], global3[_wgslsmith_index_u32(u_input.e, 23u)])), global4[_wgslsmith_index_u32(~(~reverseBits(0u)), 2u)], func_1(_wgslsmith_add_u32(u_input.b.x, u_input.e) == ~4047u, _wgslsmith_sub_vec4_u32(vec4<u32>(22606u, u_input.d, u_input.d, 4311u) >> (u_input.a % vec4<u32>(32u)), ~u_input.a), true), global4[_wgslsmith_index_u32(~u_input.b.x, 2u)], 0i), Struct_3(~global1.a, global4[_wgslsmith_index_u32((_wgslsmith_add_u32(u_input.a.x, 10252u) ^ _wgslsmith_mod_u32(12405u, u_input.b.x)) | (u_input.d ^ 4294967295u), 2u)], Struct_1(countOneBits(~(-2147483647i))), Struct_1(func_1(true, ~u_input.a, true).a), global1.e), -2147483647i);
    let var_1 = Struct_3(~(~global1.a), var_0, func_5(abs(vec3<i32>(-18947i, var_0.a, 0i) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 0u, 1u), u_input.a.wzx) % vec3<u32>(32u))), Struct_3(_wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.e, 21u)], global1.b.a), vec2<i32>(var_0.a, -37958i)), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, global0[_wgslsmith_index_u32(24313u, 21u)], var_0.a, -1i), vec4<i32>(55026i, -55948i, 2147483647i, 21219i))), Struct_1(global1.d.a), Struct_1(-2147483647i), ~0i), Struct_3(global1.a, func_5(_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d, 21u)], 2147483647i, global0[_wgslsmith_index_u32(1u, 21u)]), vec3<i32>(-1i, var_0.a, global1.d.a)), Struct_3(vec2<i32>(global1.e, var_0.a), global1.d, global4[_wgslsmith_index_u32(u_input.e, 2u)], Struct_1(var_0.a), global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), Struct_3(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], 2147483647i), Struct_1(2147483647i), var_0, var_0, global0[_wgslsmith_index_u32(2213u, 21u)]), -global0[_wgslsmith_index_u32(u_input.b.x, 21u)]), Struct_1(var_0.a), global1.b, global0[_wgslsmith_index_u32(~abs(u_input.c.x), 21u)]), global0[_wgslsmith_index_u32(~u_input.c.x, 21u)]), var_0, var_0.a);
    let var_2 = abs(_wgslsmith_add_vec3_i32(-vec3<i32>(global0[_wgslsmith_index_u32(1u, 21u)], -1i, 1i) >> (select(~vec3<u32>(16335u, u_input.a.x, u_input.b.x), min(u_input.b, vec3<u32>(1u, u_input.a.x, 4294967295u)), vec3<bool>(true, true, true)) % vec3<u32>(32u)), abs(vec3<i32>(-global0[_wgslsmith_index_u32(u_input.e, 21u)], -4840i | global1.c.a, var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(max(57923u ^ ~(u_input.d | u_input.b.x), u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-248f - 2212f), _wgslsmith_f_op_f32(floor(836f)), true)) * _wgslsmith_f_op_f32(-808f + _wgslsmith_f_op_f32(1128f * 1450f)))));
}

