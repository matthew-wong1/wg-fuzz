struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: array<Struct_2, 29>;

var<private> global2: f32;

var<private> global3: vec4<f32> = vec4<f32>(-492f, -466f, -969f, 1652f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_5) -> u32 {
    let var_0 = _wgslsmith_mod_i32(1i, arg_1);
    var var_1 = global1[_wgslsmith_index_u32(1u, 29u)];
    global1 = array<Struct_2, 29>();
    let var_2 = Struct_3(arg_2.a.x, arg_0, _wgslsmith_f_op_f32(-977f * 1000f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_2.a.zw), _wgslsmith_f_op_vec2_f32(arg_2.a.xx + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(global3.xw, global3.ww)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1167f, global3.x)))))))), Struct_1(u_input.a, select(arg_0.b | abs(42065u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(74060u, 0u), vec2<u32>(u_input.a, 64003u)), true)));
    var var_3 = reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.e.b, var_2.b.a, 0u), ~vec3<u32>(0u, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, ~arg_0.a, ~0u) % vec3<u32>(32u))));
    return u_input.a;
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> vec4<u32> {
    global2 = global3.x;
    let var_0 = abs(-(vec3<i32>(abs(-17608i), u_input.c, arg_1) & _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-1i, u_input.b, arg_1)), vec3<i32>(-2147483647i, arg_1, 33126i))));
    let var_1 = _wgslsmith_div_vec3_i32(select(~select(-vec3<i32>(-33112i, arg_1, arg_1), ~vec3<i32>(u_input.b, -1i, var_0.x), select(vec3<bool>(global0.x, global0.x, global0.x), global0.wwx, global0.zxz)), var_0, !any(select(global0.yw, vec2<bool>(global0.x, false), global0.x))), vec3<i32>(-(i32(-1i) * -2147483647i) & _wgslsmith_dot_vec4_i32(select(vec4<i32>(38567i, u_input.c, 16268i, arg_1), vec4<i32>(u_input.c, var_0.x, arg_1, arg_1), global0.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, arg_1, arg_1, var_0.x), vec4<i32>(var_0.x, var_0.x, -250i, 2147483647i))), abs(~_wgslsmith_div_i32(u_input.c, var_0.x)), -1i));
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(138f, _wgslsmith_f_op_f32(arg_0.d.x + -462f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-301f - -677f) + _wgslsmith_div_f32(-420f, _wgslsmith_f_op_f32(max(global3.x, arg_0.d.x)))), -137f));
    let var_2 = u_input.a;
    return (~vec4<u32>(arg_0.b.a, func_2(Struct_1(var_2, u_input.a), -1i, Struct_5(vec4<f32>(237f, arg_0.d.x, 1317f, 1568f), global0.x)), ~4294967295u, _wgslsmith_mult_u32(arg_0.b.b, 57918u)) | vec4<u32>(u_input.a, reverseBits(~70778u), countOneBits(arg_0.b.a), countOneBits(19682u))) & select(vec4<u32>(~(~arg_0.b.b), (0u << (u_input.a % 32u)) >> ((6142u >> (arg_0.e.a % 32u)) % 32u), abs(110468u) | arg_0.e.a, arg_0.e.a), firstTrailingBit(~vec4<u32>(u_input.a, 21138u, 114671u, u_input.a)), vec4<bool>(!global0.x, true, !(global0.x & global0.x), any(global0.zyz)));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1u & u_input.a, abs(u_input.a), reverseBits(u_input.a), func_2(Struct_1(u_input.a, u_input.a), u_input.c, Struct_5(vec4<f32>(global3.x, global3.x, -322f, 1120f), false))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 86323u, 4294967295u, u_input.a), vec4<u32>(53138u, 1u, u_input.a, 1u)), func_3(Struct_3(1133f, Struct_1(0u, 0u), global3.x, global3.xx, Struct_1(u_input.a, 18065u)), u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(46832u, u_input.a, u_input.a, 4294967295u), vec4<u32>(49498u, 1u, u_input.a, 36541u))))), vec4<u32>(1u, _wgslsmith_clamp_u32(u_input.a, u_input.a, 0u), u_input.a, _wgslsmith_div_u32(u_input.a, reverseBits(103872u))), ~max(~(~vec4<u32>(55467u, 21052u, 0u, u_input.a)), ~(vec4<u32>(0u, u_input.a, u_input.a, 1u) << (vec4<u32>(u_input.a, 0u, 0u, u_input.a) % vec4<u32>(32u)))));
    var var_1 = Struct_1(var_0.x, func_3(Struct_3(_wgslsmith_f_op_f32(-global3.x), Struct_1(abs(var_0.x), 1u), _wgslsmith_f_op_f32(global3.x - global3.x), global3.zy, Struct_1(~0u, 1u)), u_input.c).x);
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1748f, global3.x, global3.x, -1341f))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1146f, global3.x, -457f, global3.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, global3.x, global3.x, -2054f))), arg_0)))), all(select(vec4<bool>(true, var_0.x == var_1.a, arg_2.x, all(vec4<bool>(true, global0.x, arg_0.x, global0.x))), !arg_0, false)));
    var_1 = Struct_1(_wgslsmith_add_u32(~countOneBits(_wgslsmith_mod_u32(u_input.a, 1u)), _wgslsmith_div_u32(~(~25609u), var_1.b)), 1u);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(585f + _wgslsmith_f_op_f32(trunc(var_2.a.x)))))), 429f);
    return _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -u_input.c), max(vec2<i32>(u_input.c, 2147483647i), abs(vec2<i32>(u_input.b, u_input.b) << (_wgslsmith_mod_vec2_u32(var_0.wz, var_0.xz) % vec2<u32>(32u)))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_5, arg_3: f32) -> f32 {
    global1 = array<Struct_2, 29>();
    global0 = !select(vec4<bool>(arg_2.a.x < -1000f, true, false, true), select(vec4<bool>(!arg_2.b, !global0.x, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(global0.x, arg_2.b, false, arg_2.b), vec4<bool>(false, false, arg_2.b, global0.x)), !vec4<bool>(true, false, true, arg_2.b), !arg_2.b), !select(vec4<bool>(arg_2.b, true, global0.x, false), vec4<bool>(arg_2.b, global0.x, true, arg_2.b), false)), vec4<bool>(true, any(!vec2<bool>(true, global0.x)), true, false));
    var var_0 = Struct_2(vec3<bool>((-794f <= _wgslsmith_f_op_f32(ceil(-771f))) & any(!vec3<bool>(global0.x, false, arg_2.b)), u_input.a == (u_input.a << (u_input.a % 32u)), !(!global0.x) && all(!vec4<bool>(arg_2.b, true, false, arg_2.b))), u_input.b, true);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(158f, 401f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-933f, 1000f)), _wgslsmith_f_op_f32(-arg_3)));
    global3 = arg_2.a;
    return arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1953f * _wgslsmith_f_op_f32(func_4(u_input.b, _wgslsmith_mult_i32(func_1(vec4<bool>(global0.x, true, true, global0.x), global0.x, vec3<bool>(global0.x, global0.x, false)), reverseBits(u_input.c)) >> (~1u % 32u), Struct_5(vec4<f32>(_wgslsmith_f_op_f32(global3.x * -498f), _wgslsmith_f_op_f32(min(global3.x, global3.x)), global3.x, global3.x), all(vec3<bool>(true, true, true))), global3.x)));
    var var_1 = u_input.b;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-global3.x), Struct_1(reverseBits(u_input.a), 40224u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - _wgslsmith_div_f32(global3.x, 494f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(147f, global3.x)), global3.zx)))), Struct_1(_wgslsmith_mult_u32(u_input.a, u_input.a), ~39004u));
    var var_3 = max(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 18226i, ~34272i, u_input.c), vec4<i32>(u_input.c, -29661i, ~u_input.c, ~u_input.c)), abs(vec4<i32>(-2147483647i, 1i, ~1007i, u_input.b)));
    let var_4 = _wgslsmith_f_op_f32(func_4(select(~(-var_3.x), 10393i, true) | -2147483647i, abs(_wgslsmith_mult_i32(-2147483647i, var_3.x ^ -1i)), Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(354f, var_2.d.x, global3.x, global3.x))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-254f, var_2.d.x, global3.x, 1211f), vec4<f32>(101f, var_2.c, global3.x, 959f)))))), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(-100f + _wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(-var_2.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(global3.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-501f, var_2.a)), vec2<f32>(_wgslsmith_f_op_f32(-220f + var_4), _wgslsmith_f_op_f32(1579f + global3.x)))), ~((vec4<i32>(-28699i, 5957i, -23436i, u_input.b) ^ ~vec4<i32>(u_input.c, -1i, var_3.x, u_input.b)) | firstTrailingBit(firstLeadingBit(vec4<i32>(0i, u_input.b, u_input.c, 1i)))));
}

