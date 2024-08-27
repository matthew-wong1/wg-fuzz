struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

var<private> global2: array<u32, 7> = array<u32, 7>(1u, 4294967295u, 1u, 4294967295u, 53986u, 14614u, 92178u);

var<private> global3: vec3<i32>;

var<private> global4: array<vec3<u32>, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32) -> vec2<f32> {
    let var_0 = -54610i << (arg_1.x % 32u);
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, ~15562u, _wgslsmith_mult_u32(~u_input.e.x, abs(arg_1.x))), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 97273u, 0u), vec3<u32>(0u, global0.a.x, global0.a.x), vec3<u32>(arg_0.b, 0u, global0.c)) ^ _wgslsmith_sub_vec3_u32(arg_1.yww, global4[_wgslsmith_index_u32(arg_1.x, 28u)]))), global4[_wgslsmith_index_u32(arg_1.x, 28u)]);
    var var_2 = vec2<u32>(45606u, 307u);
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1455f + arg_2))), -996f), _wgslsmith_f_op_vec2_f32(vec2<f32>(192f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-844f, -573f))) - vec2<f32>(_wgslsmith_f_op_f32(round(arg_2)), -728f))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> vec3<f32> {
    global1 = global0.b.x;
    var var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(arg_1, select(~vec4<u32>(4294967295u, u_input.c.x, arg_2, 93607u), vec4<u32>(arg_1.b, global2[_wgslsmith_index_u32(20164u, 7u)], global0.a.x, 62248u), arg_3.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * _wgslsmith_f_op_f32(max(-1374f, 2691f))))) - vec2<f32>(1795f, _wgslsmith_f_op_f32(trunc(-296f)))), u_input.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(290f, arg_1.a.x)), _wgslsmith_f_op_vec2_f32(-var_0.c), arg_0)))));
    let var_2 = arg_0;
    let var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(-34806i, _wgslsmith_dot_vec2_i32(vec2<i32>(-3044i, u_input.a) >> (vec2<u32>(arg_2, 34225u) % vec2<u32>(32u)), global3.yx), -19610i), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -2147483647i, 2147483647i), vec3<i32>(u_input.a, -54937i, 1i)) & -vec3<i32>(global3.x, -8217i, global3.x), min(vec3<i32>(global3.x, global3.x, -2147483647i), vec3<i32>(global3.x, -13500i, global3.x)) << ((global4[_wgslsmith_index_u32(u_input.c.x, 28u)] ^ u_input.e.wxx) % vec3<u32>(32u))) | -_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global3.x, 46665i, 15985i), vec3<i32>(u_input.b, global3.x, u_input.b)), vec3<i32>(-1i, 0i, u_input.b), vec3<i32>(u_input.a, u_input.a, 1i)));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_0.a.x, var_0.c.x)), -862f)), _wgslsmith_f_op_f32(min(var_0.a.x, arg_1.c.x)))), -1974f, _wgslsmith_f_op_f32(-var_1.c.x)));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global3 = vec3<i32>(reverseBits(-min(~global3.x, -1i)), min(24586i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(global3.x, 56443i, global3.x), vec3<i32>(14588i, 0i, 0i), arg_3), ~vec3<i32>(0i, global3.x, u_input.a)) ^ (u_input.a << (global0.c % 32u))), max(global3.x, -2147483647i) << (_wgslsmith_mult_u32(global0.c, arg_2.b) % 32u));
    global2 = array<u32, 7>();
    let var_0 = Struct_2(max(u_input.c, ~(~(vec2<u32>(u_input.c.x, 1u) >> (u_input.d.yz % vec2<u32>(32u))))), !(!global0.b), ~abs(4294967295u));
    global1 = false;
    global3 = _wgslsmith_div_vec3_i32(abs(vec3<i32>(abs(select(-30165i, u_input.b, global0.b.x)), _wgslsmith_sub_i32(reverseBits(-1i), u_input.a), _wgslsmith_dot_vec2_i32(-global3.zy, max(global3.xz, global3.yx)))), _wgslsmith_mod_vec3_i32(vec3<i32>(global3.x, abs(0i), 1i) >> (u_input.d.wzy % vec3<u32>(32u)), -(~vec3<i32>(1i, u_input.a, -2147483647i)) & abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 12779i, u_input.b), vec3<i32>(-8455i, global3.x, u_input.b)))));
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: u32) -> f32 {
    var var_0 = -881f;
    let var_1 = func_4(~(~(~(~arg_0))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_2(true, Struct_1(vec2<f32>(-1178f, 949f), select(24326u, 1u, true), _wgslsmith_div_vec2_f32(vec2<f32>(1248f, -390f), vec2<f32>(-359f, -556f))), 43097u, Struct_2(vec2<u32>(18218u, 76169u), !vec4<bool>(false, global0.b.x, true, true), ~global2[_wgslsmith_index_u32(35541u, 7u)]))))), Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(trunc(1000f))), ~(~4294967295u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-997f, -389f), vec2<f32>(374f, -1000f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(614f, 1933f) - vec2<f32>(1301f, -211f)))))), global0.b.x);
    var var_2 = _wgslsmith_mod_vec4_u32(~select(u_input.d & u_input.e, firstLeadingBit(vec4<u32>(u_input.e.x, var_1.b, u_input.e.x, 5052u)), false), vec4<u32>(~max(21114u, 0u), 4294967295u, 0u << (min(1u, global0.c) % 32u), abs(4294967295u))) & (~(~(vec4<u32>(48779u, global0.a.x, global0.c, 83197u) >> (u_input.d % vec4<u32>(32u)))) & (u_input.e >> (((u_input.d | u_input.e) & vec4<u32>(0u, global0.a.x, 28254u, 23649u)) % vec4<u32>(32u))));
    let var_3 = 763f == _wgslsmith_f_op_f32(max(var_1.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1800f, var_1.a.x, true)))), _wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(exp2(var_1.a.x))), 96105u <= ~arg_2))));
    let var_4 = Struct_2(min(u_input.e.xy, global0.a), select(global0.b, !select(select(global0.b, vec4<bool>(global0.b.x, true, global0.b.x, true), true), global0.b, global0.b), select(all(vec2<bool>(true, global0.b.x)), true, !(!var_3))), var_2.x);
    return 1000f;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(466f, arg_1.c.x)) + 236f), -464f, arg_1.a.x))));
    let var_1 = Struct_2(global0.a, global0.b, global0.a.x);
    global1 = any(select(select(var_1.b.wxz, var_1.b.zyx, global0.b.x & false), select(select(!var_1.b.zzz, !vec3<bool>(false, var_1.b.x, var_1.b.x), var_1.b.wyx), select(select(vec3<bool>(var_1.b.x, var_1.b.x, false), var_1.b.wyz, global0.b.wyy), vec3<bool>(false, true, global0.b.x), vec3<bool>(true, global0.b.x, true)), false), select(!(!vec3<bool>(var_1.b.x, false, global0.b.x)), select(vec3<bool>(var_1.b.x, global0.b.x, true), !global0.b.xyx, !var_1.b.yxw), select(vec3<bool>(var_1.b.x, true, global0.b.x), vec3<bool>(var_1.b.x, false, var_1.b.x), vec3<bool>(false, false, var_1.b.x)))));
    var var_2 = var_1;
    let var_3 = func_4(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(~arg_1.b, arg_1.b << (var_1.a.x % 32u), arg_1.b) & global0.a.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(func_4(95994u, vec3<f32>(arg_3, var_0.x, -1000f), arg_1, true).c.x * _wgslsmith_f_op_f32(max(var_0.x, 876f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, arg_0.x) - arg_3)))), func_4(_wgslsmith_mod_u32(~(~u_input.e.x), ~0u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1301f, _wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(sign(602f))) * var_0), func_4(~var_1.c, var_0, Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 324f), var_0.yy, global0.b.x)), firstLeadingBit(31832u), _wgslsmith_f_op_vec2_f32(floor(arg_0))), true), true), !(arg_3 > 292f));
    return Struct_2(vec2<u32>(firstTrailingBit(select(u_input.d.x, global0.c, true)), reverseBits(_wgslsmith_div_u32(var_2.c, 1u) >> (_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(1u, 1u, 22648u, 50019u)) % 32u))), vec4<bool>(global0.b.x, all(!select(global0.b.yyw, vec3<bool>(global0.b.x, var_2.b.x, global0.b.x), var_2.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(var_3.c.x)))) > -141f, var_1.b.x), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(17098i == _wgslsmith_div_i32(global3.x, -2147483647i), !(!global0.b.x), global0.b.x));
    let var_1 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(abs(14155u), ~vec3<i32>(u_input.b, u_input.b, 2147483647i), ~30166u)), -345f)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(787f)), 1f)), ~(~4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2019f, _wgslsmith_f_op_f32(491f * 910f)))), countOneBits(~(~vec2<i32>(1i, 1i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(196f, 1734f) - _wgslsmith_f_op_f32(-1407f - -1000f)), -154f)), -1982f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(257f - -316f))) != _wgslsmith_f_op_f32(func_1(global0.a.x, firstLeadingBit(vec3<i32>(u_input.b, 22331i, 49899i)), 1u)))));
    global0 = func_5(vec2<f32>(_wgslsmith_f_op_f32(func_1(u_input.d.x, reverseBits(abs(vec3<i32>(u_input.b, global3.x, 0i))), reverseBits(_wgslsmith_div_u32(22393u, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1398f + -535f), _wgslsmith_f_op_f32(f32(-1f) * -568f)))), func_4(44692u | _wgslsmith_sub_u32(1u, ~u_input.d.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2170f, -817f, -685f))))), _wgslsmith_div_vec3_f32(vec3<f32>(-435f, 1533f, 676f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1178f, 1612f, 1275f) - vec3<f32>(1563f, -2333f, -767f))), var_1.b.yxz)), func_4(func_5(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1813f, -246f))), Struct_1(vec2<f32>(-567f, -518f), var_1.c, vec2<f32>(-1064f, 220f)), vec2<i32>(-2147483647i, -2147483647i), -1029f).a.x, vec3<f32>(1f, 1f, 1f), func_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e.xww, global4[_wgslsmith_index_u32(56221u, 28u)]), 7u)], vec3<f32>(-953f, -149f, -1093f), Struct_1(vec2<f32>(-901f, 1735f), u_input.c.x, vec2<f32>(-1109f, 1000f)), !var_1.b.x), var_1.b.x), true), vec2<i32>(global3.x, ~(global3.x ^ select(1i, global3.x, false))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(109f - _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<f32>(-1000f, -722f), u_input.c.x, vec2<f32>(711f, 415f)), u_input.d, -1394f)).x), _wgslsmith_f_op_f32(f32(-1f) * -568f)))));
    global0 = var_1;
    global3 = _wgslsmith_mult_vec3_i32(reverseBits(~_wgslsmith_add_vec3_i32(-vec3<i32>(-1i, u_input.b, global3.x), vec3<i32>(2147483647i, u_input.a, -1i))), -select(reverseBits(vec3<i32>(1i, global3.x, -56902i)), ~(-vec3<i32>(u_input.a, u_input.a, 2147483647i)), _wgslsmith_clamp_u32(var_1.a.x, var_1.c, u_input.c.x) <= 1u));
    global4 = array<vec3<u32>, 28>();
    global1 = all(vec2<bool>(!(!global0.b.x), !all(!global0.b.yy)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(_wgslsmith_sub_i32(firstTrailingBit(0i), _wgslsmith_sub_i32(-43866i, 0i)), 14981i), 3653i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2209f, -617f, -682f)))))));
}

