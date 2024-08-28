struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 19>;

var<private> global1: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global2: array<vec4<bool>, 18>;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(2738f, 517f, 378f), 332f);

var<private> global4: vec4<i32> = vec4<i32>(-1i, -1i, 33042i, 19650i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool) -> vec4<i32> {
    global0 = array<vec4<bool>, 19>();
    global1 = array<vec2<bool>, 13>();
    global1 = array<vec2<bool>, 13>();
    global0 = array<vec4<bool>, 19>();
    return select(-_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -7240i, -1i, arg_1.x), vec4<i32>(arg_0.a.x, -2147483647i, arg_0.b.x, 0i)), vec4<i32>(-2655i, 0i, -35506i, arg_1.x)) << (_wgslsmith_add_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(42530u, 1u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 27636u, 58913u)), ~vec4<u32>(29597u, 49215u, 0u, 49602u), !arg_2), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(1u, 4294967295u, u_input.a, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 6083u, u_input.a, 18044u), vec4<u32>(1u, 0u, 0u, 21929u)), abs(vec4<u32>(1u, 2931u, u_input.a, u_input.a)))) % vec4<u32>(32u)), vec4<i32>(arg_1.x, _wgslsmith_sub_i32(-2147483647i, -arg_0.b.x) << (4294967295u % 32u), _wgslsmith_dot_vec3_i32(arg_1, select(arg_1 & arg_1, global4.zwz, any(vec3<bool>(false, false, true)))), _wgslsmith_sub_i32(arg_0.b.x, arg_1.x)), !global0[_wgslsmith_index_u32(~39984u, 19u)]);
}

fn func_2() -> Struct_1 {
    global2 = array<vec4<bool>, 18>();
    var var_0 = !any(global2[_wgslsmith_index_u32(22830u | abs(u_input.a << (u_input.a % 32u)), 18u)]);
    global4 = firstLeadingBit(-func_3(Struct_2(global4.xy, vec2<i32>(global4.x, global4.x), global4.x), ~global4.wxw, true) ^ ((vec4<i32>(global4.x, 2147483647i, -1i, 996i) ^ firstTrailingBit(vec4<i32>(-1i, global4.x, global4.x, 1i))) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(3246u, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, 0u)), countOneBits(vec4<u32>(1u, u_input.a, 1u, 0u))) % vec4<u32>(32u))));
    let var_1 = func_3(Struct_2(vec2<i32>(global4.x, global4.x & 0i) ^ _wgslsmith_mult_vec2_i32(abs(vec2<i32>(-65468i, global4.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(global4.x, -50766i), vec2<i32>(-1i, -1i))), vec2<i32>(_wgslsmith_sub_i32(1i, 0i), _wgslsmith_add_i32(-16636i, 1i)), -46242i), vec3<i32>(global4.x, -37165i << (1u % 32u), 2147483647i) << (~select(~vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(u_input.a, u_input.a, 25447u) ^ vec3<u32>(4294967295u, u_input.a, 27309u), true) % vec3<u32>(32u)), select(all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), all(vec3<bool>(true, false, false)))), true, false)).wxz;
    let var_2 = Struct_4(vec4<i32>(_wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(global4.x, 5603i, global4.x, var_1.x), vec4<i32>(global4.x, global4.x, global4.x, var_1.x))), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(global4.x, -1i, global4.x, 42810i)), ~vec4<i32>(global4.x, 0i, var_1.x, var_1.x))), 1i, global4.x, 0i), Struct_2(~select(vec2<i32>(2147483647i, -30495i), func_3(Struct_2(vec2<i32>(18909i, -13674i), var_1.xx, var_1.x), global4.yzz, true).zy, true), vec2<i32>(_wgslsmith_mult_i32(var_1.x, var_1.x), -(i32(-1i) * -48062i)), max(firstLeadingBit(-57121i), ~1i)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, u_input.a), select(vec2<u32>(6803u, 6768u), vec2<u32>(1u, u_input.a), true), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(0u, 25700u))), ~(~vec2<u32>(4294967295u, 17101u))), vec2<u32>(_wgslsmith_add_u32(102690u, u_input.a >> (31616u % 32u)), ~4294967295u | u_input.a)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-1669f)), global3.b, _wgslsmith_f_op_f32(-133f - -205f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(801f, -1590f, global3.a.x), _wgslsmith_f_op_vec3_f32(-global3.a), vec3<bool>(true, false, false)))) + _wgslsmith_div_vec3_f32(global3.a, vec3<f32>(_wgslsmith_f_op_f32(select(-205f, global3.a.x, false)), -463f, _wgslsmith_f_op_f32(exp2(global3.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-966f * _wgslsmith_f_op_f32(global3.a.x - -1033f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) - 996f))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> Struct_2 {
    global0 = array<vec4<bool>, 19>();
    let var_0 = -14788i;
    global3 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-332f)), func_2().b), _wgslsmith_f_op_f32(select(-125f, global3.a.x, true)))) + _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-global3.a.x))), func_2().a.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-220f * arg_0.b));
    return Struct_2(global4.xy | (global4.zw >> (~(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u))), global4.yw, global4.x);
}

fn func_1() -> vec2<f32> {
    let var_0 = Struct_2(vec2<i32>(-2147483647i, global4.x >> (u_input.a % 32u)) ^ vec2<i32>(global4.x, -(~47737i)), vec2<i32>(firstLeadingBit(-2147483647i), -2147483647i), -2147483647i);
    var var_1 = Struct_3(func_4(func_2(), !(!all(vec4<bool>(false, false, false, false))), false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.x, _wgslsmith_div_f32(-180f, global3.b)) + _wgslsmith_f_op_f32(ceil(920f))), -476f)), vec4<bool>(all(vec3<bool>(all(global2[_wgslsmith_index_u32(u_input.a, 18u)]), true, true)), true, !(global4.x == _wgslsmith_sub_i32(global4.x, global4.x)), false), func_4(func_2(), !select(select(true, false, true), var_0.c != var_0.b.x, true), true));
    var var_2 = _wgslsmith_sub_i32(global4.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(var_1.d.b.x, 2603i), global4.x));
    global1 = array<vec2<bool>, 13>();
    let var_3 = 78668u;
    return global3.a.xz;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = func_4(func_2(), all(select(select(vec3<bool>(arg_2.x, arg_2.x, true), select(arg_2.xww, vec3<bool>(false, arg_2.x, true), true), true | arg_2.x), select(vec3<bool>(arg_2.x, false, false), select(vec3<bool>(true, false, arg_2.x), arg_2.yzz, true), !arg_2.x), arg_2.x)), false);
    var var_1 = _wgslsmith_sub_u32((u_input.a << (39624u % 32u)) ^ 8862u, ~0u);
    global3 = func_2();
    global1 = array<vec2<bool>, 13>();
    var var_2 = true;
    return Struct_2(vec2<i32>(12585i, ~var_0.b.x), _wgslsmith_add_vec2_i32(global4.wy, vec2<i32>(var_0.b.x, -2147483647i)), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)), _wgslsmith_div_f32(390f, -715f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(477f, -1684f), global3.a.yy)) * _wgslsmith_f_op_vec2_f32(func_1())))), vec4<f32>(_wgslsmith_f_op_f32(-global3.a.x), global3.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2207f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.b))))), vec4<bool>(any(vec4<bool>(true, all(vec3<bool>(true, false, false)), true, any(vec4<bool>(true, true, true, true)))), true, !(true && any(global2[_wgslsmith_index_u32(u_input.a, 18u)])), false));
    let var_1 = -global4.x;
    var var_2 = func_2();
    let var_3 = func_2();
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(986f, -1000f, global3.b, -1255f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, 618f, var_2.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, var_3.b, 990f, -2160f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, -1471f, var_2.b, var_2.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(667f, -583f, global3.b, 212f))))), true || all(vec3<bool>(false, true, false)))) * vec4<f32>(_wgslsmith_f_op_f32(sign(var_3.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.b, var_2.b)) - 1569f) + -1284f), var_3.a.x, -2120f));
    let var_5 = Struct_4(~_wgslsmith_clamp_vec4_i32((vec4<i32>(var_0.c, global4.x, var_1, 0i) << (vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_i32(vec4<i32>(0i, var_0.c, var_1, 1i), vec4<i32>(45466i, global4.x, global4.x, var_0.a.x)), firstTrailingBit(vec4<i32>(var_1, -56835i, 2147483647i, var_0.a.x) & vec4<i32>(9253i, 2147483647i, -2147483647i, 2147483647i)), -abs(vec4<i32>(-8513i, -15169i, global4.x, global4.x))), Struct_2(_wgslsmith_mult_vec2_i32(global4.wx, _wgslsmith_mult_vec2_i32(abs(global4.ww), vec2<i32>(global4.x, -1525i))), -firstLeadingBit(var_0.b), ~var_1), ~_wgslsmith_mod_u32(~66844u, 36045u));
    global3 = func_2();
    global4 = ~var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(global4.x, 2147483647i), func_4(var_3, any(vec4<bool>(false, false, all(vec4<bool>(true, false, true, true)), true)), false).c, abs(abs(vec3<u32>(u_input.a, 4294967295u, 29274u) >> (vec3<u32>(1254u, 0u, var_5.c) % vec3<u32>(32u))) | ~vec3<u32>(37481u, 4294967295u, var_5.c)), var_5.a);
}

