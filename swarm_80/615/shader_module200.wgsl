struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24>;

var<private> global1: vec2<i32>;

var<private> global2: bool = true;

var<private> global3: vec3<bool>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<bool> {
    return vec2<bool>(true, select(any(vec4<bool>(true, false, any(vec2<bool>(false, true)), global3.x)), !(all(vec3<bool>(global3.x, true, global3.x)) && true), global3.x));
}

fn func_4(arg_0: vec3<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-622f)), _wgslsmith_f_op_f32(f32(-1f) * -732f), true)), _wgslsmith_f_op_f32(abs(-349f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1583f - 906f) + _wgslsmith_f_op_f32(1135f + -360f))))));
    let var_1 = select(!select(select(vec4<bool>(true, global3.x, global3.x, false), select(vec4<bool>(global3.x, true, false, true), vec4<bool>(global3.x, false, false, true), true), arg_0.x), vec4<bool>(arg_0.x, false != global3.x, arg_0.x, arg_0.x), true), select(!(!select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), true)), select(vec4<bool>(arg_0.x && false, arg_0.x || arg_0.x, true, var_0.x == -1352f), select(vec4<bool>(false, global3.x, false, false), select(vec4<bool>(false, false, global3.x, false), vec4<bool>(global3.x, global3.x, true, global3.x), false), !arg_0.x), !vec4<bool>(false, arg_0.x, false, false)), select(!(!vec4<bool>(arg_0.x, arg_0.x, global3.x, false)), select(!vec4<bool>(global3.x, global3.x, arg_0.x, true), select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, false, arg_0.x, true), arg_0.x), vec4<bool>(false, false, global3.x, global3.x)), select(!vec4<bool>(global3.x, arg_0.x, true, global3.x), !vec4<bool>(arg_0.x, true, global3.x, global3.x), arg_0.x))), true);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x + var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 139f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(var_0.x * var_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(133f, -1460f, var_0.x, var_0.x))) - vec4<f32>(var_0.x, var_0.x, 965f, 1f))));
    global2 = arg_0.x;
    let var_3 = ~(max(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x), firstLeadingBit(vec4<u32>(64553u, 1u, 31428u, 1u))) << (vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(90989u, u_input.a.x, u_input.a.x, 47559u), ~vec4<u32>(u_input.b, 4294967295u, u_input.a.x, 3314u)), u_input.a.x, _wgslsmith_clamp_u32(19203u, 79710u ^ u_input.b, ~u_input.a.x)) % vec4<u32>(32u)));
    return func_3();
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = ~69838u;
    var var_1 = all(!select(select(!vec3<bool>(global3.x, false, true), select(vec3<bool>(false, true, global3.x), vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(false, global3.x, true)), !vec3<bool>(global3.x, false, global3.x)), vec3<bool>(global3.x, !global3.x, true), false));
    var var_2 = true;
    var var_3 = func_4(vec3<bool>((global3.x || global3.x) | all(vec2<bool>(global3.x, true)), all(!func_3()), !(!global3.x & true)));
    let var_4 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~(~firstLeadingBit(u_input.a.yx)), (vec2<u32>(0u, 1u) >> (u_input.a.xz % vec2<u32>(32u))) << (select(u_input.a.yy, _wgslsmith_add_vec2_u32(vec2<u32>(arg_1, arg_3.e), u_input.a.xx), global3.zz) % vec2<u32>(32u))), u_input.a.yy);
    return _wgslsmith_f_op_vec2_f32(arg_2.a.xx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1733f, arg_0)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_2.a.xy + vec2<f32>(1236f, arg_0)), _wgslsmith_f_op_vec2_f32(-arg_2.a.zy), global1.x != 2147483647i))))));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: bool, arg_3: u32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-968f * -2563f), _wgslsmith_div_f32(1475f, -309f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-922f + var_0.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1000f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(224f, 1u, Struct_2(vec3<f32>(var_0.x, 491f, -562f), var_0.x, 427f), Struct_1(u_input.c.xxw, -21531i, var_0.x, u_input.c.zx, u_input.b))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, -560f))))))));
    let var_2 = true;
    var var_3 = arg_0;
    let var_4 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(365f)), _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, -922f, var_1.x), vec3<f32>(1234f, 1986f, var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 166f, -248f) * vec3<f32>(1331f, var_0.x, var_0.x)), true))), 677f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0.x)))) - 2131f)), Struct_1(vec3<i32>(reverseBits(reverseBits(u_input.c.x)), global1.x, ~(-1i)), 17202i, 1382f, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, -72613i), ~vec2<i32>(global1.x, arg_1.x)), -vec2<i32>(1i, u_input.c.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~u_input.a, ~vec3<u32>(4294967295u, arg_0, 4294967295u)), vec3<u32>(u_input.b, 4294967295u, arg_3))), _wgslsmith_sub_vec4_i32(max(-vec4<i32>(arg_1.x, 2147483647i, global1.x, global1.x), _wgslsmith_mod_vec4_i32(u_input.c, u_input.c)) << (~(~vec4<u32>(u_input.b, 0u, 0u, 1u)) % vec4<u32>(32u)), vec4<i32>(reverseBits(-226i), 0i, -8218i, abs(_wgslsmith_add_i32(u_input.c.x, u_input.c.x)))), Struct_1(u_input.c.wyx, arg_1.x, _wgslsmith_div_f32(var_0.x, var_0.x), reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, global1.x), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.x, 1i), arg_1.zy), vec2<i32>(u_input.c.x, arg_1.x))), ~(select(4294967295u, 1u, true) & (arg_3 | 18328u))));
    return vec3<f32>(var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-249f * var_0.x) - -746f), -1004f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(733f)) - _wgslsmith_div_f32(var_0.x, -235f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(func_1(u_input.b, u_input.c.yzw, global3.x, ~u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(349f * 861f) * _wgslsmith_f_op_f32(select(-349f, 1508f, false))) + -128f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-738f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1272f), -197f)));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-532f, var_0.a.x, _wgslsmith_f_op_vec3_f32(func_1(~u_input.b, vec3<i32>(global1.x, 463i, -2147483647i), any(vec2<bool>(global3.x, global3.x)), 26822u)).x)), var_0.c, -247f);
    var var_1 = all(vec4<bool>(!global3.x, true, !((global1.x ^ 1i) < -2147483647i), func_3().x));
    let var_2 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-var_0.c));
    let var_3 = true;
    var var_4 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(floor(var_0.b)))), _wgslsmith_f_op_f32(ceil(-1508f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -195f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1505f) + -134f))), Struct_1(u_input.c.zzw, -19808i, _wgslsmith_f_op_f32(-var_0.a.x), max(-u_input.c.xy, select(vec2<i32>(u_input.c.x, -2147483647i), countOneBits(vec2<i32>(u_input.c.x, 16531i)), all(vec4<bool>(false, global3.x, global3.x, var_3)))), _wgslsmith_dot_vec2_u32(u_input.a.yx | vec2<u32>(9047u, 22798u), firstLeadingBit(~u_input.a.yz))), min(max(~u_input.c, u_input.c), vec4<i32>(-26192i, 2530i, 1i, -global1.x)), Struct_1(u_input.c.yxy, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 17283i, 42094i, u_input.c.x), vec4<i32>(1i, 2147483647i, 2568i, global1.x)) ^ 2147483647i, -1i), var_0.a.x, vec2<i32>(49087i, _wgslsmith_add_i32(u_input.c.x, abs(31716i))), u_input.b));
    var var_5 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32((u_input.b >> (firstLeadingBit(u_input.b) % 32u)) << (~min(abs(1u), u_input.a.x << (4294967295u % 32u)) % 32u), 89035u), 24u)];
    var var_6 = _wgslsmith_mult_vec3_u32(u_input.a, abs(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_1(var_4.d.e, var_4.c.zyy, !(global3.x != (var_5.c.d.e != 1u)), var_6.x | 1u)).x);
}

