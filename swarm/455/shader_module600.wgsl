struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(1252f, 1000f), vec2<bool>(false, false), vec3<bool>(false, false, false), vec2<f32>(1000f, 790f), vec4<f32>(-411f, -364f, 183f, 478f));

var<private> global1: vec3<f32> = vec3<f32>(-1188f, 1030f, -505f);

var<private> global2: array<vec4<i32>, 6>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-524f * global1.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-625f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), 455f);
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(117f, arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, -158f)) + arg_0.x)), vec2<bool>(global0.b.x, global0.b.x), !select(vec3<bool>(true, true, !global0.b.x), vec3<bool>(true, all(global0.c), global0.b.x), global0.b.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - var_0.x)))), var_0.zy, !(!global0.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, -166f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1349f))))));
    var var_1 = Struct_4(u_input.b ^ vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(11304u, 0u, 56281u, u_input.b.x), vec4<u32>(30976u, u_input.b.x, 4294967295u, u_input.b.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 1u)), vec2<u32>(15495u, 4294967295u))), _wgslsmith_div_vec4_i32(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(49331u, ~19942u, 0u), 6u)], vec4<i32>(~(u_input.a.x & 1i), u_input.a.x, 3311i, ~2147483647i)), Struct_3(global0.e.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, global0.d.x)) + 1082f)) * _wgslsmith_f_op_f32(max(arg_0.x, -1318f))));
    var_1 = Struct_4(_wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, u_input.b.x), max(_wgslsmith_div_vec2_u32(vec2<u32>(43285u, 25971u), vec2<u32>(u_input.b.x, var_1.a.x)), abs(vec2<u32>(u_input.b.x, 383u))) & abs(u_input.b ^ vec2<u32>(u_input.b.x, 4294967295u))), ~u_input.a | (var_1.b | -var_1.b), Struct_3(590f));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-795f - 1381f), _wgslsmith_f_op_f32(floor(-995f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1907f)))))), global1.x));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = Struct_1(global0.e.zx, global0.b, vec3<bool>(arg_0, global0.c.x, true), global1.xy, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.d.x, global1.x, global1.x, global1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x * -1115f)), -1000f, -1049f))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global1.zz), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, 1158f)))))), vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), vec2<bool>(true, arg_0))), select(global0.b, global0.c.xy, vec2<bool>(arg_0, global0.b.x & true)), vec3<bool>(false | arg_0, arg_0, !global0.b.x), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a.x - -547f), global1.x)), 534f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.e) + _wgslsmith_f_op_vec4_f32(-global0.e))), global0.e, false)));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global0.e.wzw)) + vec3<f32>(global1.x, 2096f, global0.e.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, -1076f, 188f), vec3<f32>(1278f, global1.x, global0.e.x)) - _wgslsmith_f_op_vec3_f32(-global0.e.yxy)))));
    var var_0 = _wgslsmith_dot_vec2_u32(~select(_wgslsmith_add_vec2_u32(vec2<u32>(26123u, 51825u), u_input.b), u_input.b, !(u_input.a.x >= u_input.a.x)), firstTrailingBit(firstLeadingBit(u_input.b)));
    let var_1 = Struct_4(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 43860u, 0u) | vec3<u32>(u_input.b.x, 54902u, 21274u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 0u, u_input.b.x))), ~u_input.b.x), -_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(1i, 0i, -35288i, u_input.a.x)), _wgslsmith_mult_vec4_i32(u_input.a, u_input.a))), Struct_3(global1.x));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.e.x, global0.a.x)))))), global0.b, vec3<bool>(true && select(!arg_0, false, true), select(global0.b.x, !(!arg_0), true && !global0.b.x), !((26875u | u_input.b.x) > _wgslsmith_sub_u32(var_1.a.x, 22393u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.a, _wgslsmith_f_op_f32(-193f - global1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.a)), global1.x, ~var_1.b.x != ~2147483647i))), global0.e);
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = !select(global0.c, vec3<bool>(true, !global0.b.x, firstLeadingBit(u_input.a.x) < -u_input.a.x), !arg_0.c);
    var var_1 = Struct_2(!global0.b.x, func_2(false), _wgslsmith_add_vec4_i32((u_input.a | vec4<i32>(u_input.a.x, u_input.a.x, -114449i, u_input.a.x)) & ~u_input.a, -global2[_wgslsmith_index_u32(u_input.b.x, 6u)] ^ (u_input.a << (vec4<u32>(96565u, u_input.b.x, u_input.b.x, 4294967295u) % vec4<u32>(32u)))) | global2[_wgslsmith_index_u32(u_input.b.x, 6u)], Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global0.e.wx))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, -168f))), !select(!vec2<bool>(global0.c.x, false), !arg_0.c.xz, var_0.yz), select(var_0, arg_0.c, arg_0.c), _wgslsmith_f_op_vec2_f32(-func_2(all(global0.c)).d), vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_f_op_f32(abs(1849f)), _wgslsmith_f_op_f32(-238f + _wgslsmith_f_op_f32(global0.a.x * -1000f)))), func_2(global0.b.x).b.x);
    let var_2 = !(~u_input.b.x > 0u);
    var var_3 = -(select(abs(reverseBits(vec2<i32>(15188i, u_input.a.x))), max(u_input.a.zw, vec2<i32>(-1i, var_1.c.x)) & -u_input.a.zx, global0.c.zx) << (u_input.b % vec2<u32>(32u)));
    var_3 = u_input.a.xy;
    return ~select(abs(firstTrailingBit(~u_input.b)), countOneBits(firstTrailingBit(u_input.b)), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), global0.c.x), func_2(var_2).b, true));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec3<bool>) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.e.zzw) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.e.yyw + global0.e.xxy) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-271f, -433f, 736f) + global0.e.yzz)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.d.x))), 1000f, -663f) + global0.e.yyx));
    let var_0 = ~func_4(func_2(all(global0.b)));
    global0 = Struct_1(global1.zz, vec2<bool>(_wgslsmith_mod_i32(-4204i, u_input.a.x) >= u_input.a.x, false), vec3<bool>(true, global0.c.x, true), _wgslsmith_f_op_vec2_f32(global0.e.zz - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-728f, 1f))), global0.e);
    global2 = array<vec4<i32>, 6>();
    var var_1 = var_0.x ^ ~arg_1.x;
    return func_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(abs(global1.x)))) == global1.x, func_1(-(u_input.a.yyz ^ ~u_input.a.xyz), vec2<u32>(10137u, ~u_input.b.x), global0.c), max(u_input.a, vec4<i32>(abs(u_input.a.x), 69157i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(1i, -6873i, 56293i)), _wgslsmith_mult_vec3_i32(u_input.a.zzx, u_input.a.xyz)), firstLeadingBit(~2147483647i))), func_2(all(vec2<bool>(func_2(false).b.x, true))), true);
    global2 = array<vec4<i32>, 6>();
    let var_2 = global0.d.x;
    let var_3 = select(vec4<bool>(true, var_1.a, global0.c.x, !any(var_1.b.b)), select(select(select(vec4<bool>(global0.b.x, var_1.e, true, false), vec4<bool>(false, global0.c.x, global0.c.x, false), vec4<bool>(false, true, var_1.b.c.x, global0.b.x)), !(!vec4<bool>(false, false, true, global0.b.x)), !vec4<bool>(false, var_1.d.b.x, false, false)), vec4<bool>(true, var_1.b.b.x, all(select(vec4<bool>(true, false, true, global0.b.x), vec4<bool>(global0.b.x, true, global0.b.x, true), vec4<bool>(var_1.d.c.x, global0.c.x, false, true))), true && func_2(true).b.x), global0.b.x), vec4<bool>(false, global0.b.x, var_1.b.c.x, global0.c.x || any(select(vec4<bool>(true, var_1.a, false, true), vec4<bool>(var_1.d.b.x, false, global0.c.x, global0.b.x), vec4<bool>(false, global0.c.x, global0.b.x, global0.c.x)))));
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_1.d.e)))))));
    let var_5 = var_3;
    var var_6 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(select(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 10393u, 11002u), select(vec4<u32>(1936u, 57405u, 45197u, 46299u), vec4<u32>(39144u, 13377u, 1u, u_input.b.x), vec4<bool>(var_5.x, true, true, global0.c.x))), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 60019u), !var_5), ~max(vec4<u32>(4228u, 13271u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u)) ^ (vec4<u32>(6010u, u_input.b.x, 4294967295u, 25292u) << (vec4<u32>(u_input.b.x, 48357u, u_input.b.x, 1u) % vec4<u32>(32u)))), select(vec3<u32>(25814u, _wgslsmith_div_u32(0u, u_input.b.x << (16252u % 32u)), 472u), vec3<u32>(firstTrailingBit(4294967295u), 32028u, ~u_input.b.x), all(select(!vec4<bool>(global0.c.x, var_6.b.x, false, false), vec4<bool>(false, false, true, var_6.c.x), true))), var_1.c.yyz, ~firstTrailingBit(abs(var_1.c.x >> (u_input.b.x % 32u))), -select(max(u_input.a.xzy, vec3<i32>(-1549i, var_1.c.x, -1i)), vec3<i32>(0i, 2147483647i, 0i) >> (~vec3<u32>(u_input.b.x, 72129u, u_input.b.x) % vec3<u32>(32u)), global0.c));
}

