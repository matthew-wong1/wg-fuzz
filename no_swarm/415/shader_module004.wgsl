struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
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

var<private> global0: array<vec4<bool>, 16>;

var<private> global1: vec2<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec2<bool>) -> u32 {
    global1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.b)) + 927f))), arg_1.b), vec2<f32>(_wgslsmith_f_op_f32(-1173f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.b)) * _wgslsmith_f_op_f32(sign(global1.x)))), _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(401f + 101f), _wgslsmith_f_op_f32(sign(arg_1.b))))))));
    var var_0 = arg_1.d;
    let var_1 = countOneBits(2147483647i);
    global0 = array<vec4<bool>, 16>();
    let var_2 = !(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, arg_1.a.b), u_input.a) >= (_wgslsmith_sub_u32(16970u, u_input.a.x) ^ _wgslsmith_div_u32(94234u, 1u))) || true;
    return min(arg_1.c.b ^ firstTrailingBit(arg_1.c.b), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(22767u, ~1u), _wgslsmith_div_vec2_u32(u_input.a & vec2<u32>(arg_0.b, 39270u), ~u_input.a))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> i32 {
    let var_0 = Struct_1(min(~25988i, arg_1.a << (53966u % 32u)), u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1271f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global1.x)), global1.x))))));
    let var_2 = Struct_3(Struct_2(Struct_1(~(-2763i) & var_0.a, ~abs(0u)), 502f, Struct_1(5972i, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 41991u, arg_1.b, 4294967295u), vec4<u32>(0u, 17402u, arg_2.b, 33590u))), vec2<bool>(true, (arg_1.b << (arg_1.b % 32u)) > (arg_2.b >> (var_0.b % 32u)))), Struct_2(var_0, arg_3.x, Struct_1(arg_1.a, ~arg_1.b), vec2<bool>(arg_0, true)));
    var_1 = -664f;
    global1 = _wgslsmith_f_op_vec2_f32(arg_3.xy - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-429f, 1605f) + vec2<f32>(447f, global1.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.zz)), _wgslsmith_f_op_vec2_f32(-arg_3.zz)), all(!var_2.a.d))));
    return ~var_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> vec3<f32> {
    var var_0 = Struct_2(arg_1.a.a, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 820f) * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-872f + arg_1.b.b)))))), arg_2.a.c, select(!(!arg_2.a.d), arg_1.b.d, arg_2.a.d.x));
    let var_1 = Struct_2(var_0.c, var_0.b, Struct_1(11940i, ~(~_wgslsmith_sub_u32(1u, u_input.a.x))), select(arg_1.a.d, vec2<bool>(any(select(vec4<bool>(true, false, false, var_0.d.x), global0[_wgslsmith_index_u32(u_input.a.x, 16u)], arg_2.b.d.x)), arg_1.b.d.x), !select(arg_2.b.d, select(arg_2.b.d, vec2<bool>(arg_2.a.d.x, false), var_0.d), var_0.d.x)));
    var_0 = Struct_2(arg_1.a.c, 2651f, arg_1.a.a, arg_1.a.d);
    global1 = vec2<f32>(-239f, global1.x);
    global0 = array<vec4<bool>, 16>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.b, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.b, -510f) - _wgslsmith_f_op_f32(-794f * var_1.b)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1020f), _wgslsmith_f_op_f32(arg_1.a.b + 1513f), _wgslsmith_f_op_f32(f32(-1f) * -849f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(247f, global1.x, arg_2.b.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1355f, 522f) - vec3<f32>(arg_1.a.b, -739f, -854f))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec4<i32>) -> vec2<f32> {
    var var_0 = !(!(~52995u == _wgslsmith_dot_vec2_u32(u_input.a, reverseBits(u_input.a))));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_5(Struct_1(func_4(!arg_1.x | true, Struct_1(arg_3.x, ~4294967295u), Struct_1(abs(arg_3.x), func_3(Struct_1(0i, u_input.a.x), Struct_2(Struct_1(u_input.b, arg_2), -248f, Struct_1(arg_3.x, u_input.a.x), arg_1.xx), vec2<i32>(arg_3.x, -2218i), arg_1.xy)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1083f, 651f))))), u_input.a.x), Struct_3(Struct_2(Struct_1(_wgslsmith_mult_i32(arg_3.x, u_input.b), ~29301u), arg_0.x, Struct_1(2147483647i, u_input.a.x), !arg_1.zz), Struct_2(Struct_1(~arg_3.x, ~1u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x)), Struct_1(_wgslsmith_mod_i32(u_input.b, arg_3.x), firstTrailingBit(u_input.a.x)), select(select(arg_1.zz, vec2<bool>(arg_1.x, true), vec2<bool>(false, true)), select(arg_1.yy, arg_1.yx, arg_1.x), vec2<bool>(arg_1.x, false)))), Struct_3(Struct_2(Struct_1(u_input.b, max(7647u, u_input.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-561f)), arg_0.x)), Struct_1(abs(u_input.b), 18374u), select(!vec2<bool>(arg_1.x, arg_1.x), arg_1.zx, false && arg_1.x)), Struct_2(Struct_1(u_input.b, 0u), 639f, Struct_1(5024i, _wgslsmith_mult_u32(u_input.a.x, 4294967295u)), select(arg_1.xx, vec2<bool>(false, true), 0i > u_input.b)))));
    var var_2 = u_input.b;
    var_2 = ~(~(i32(-1i) * -4084i));
    var var_3 = reverseBits(_wgslsmith_add_u32(u_input.a.x, 4294967295u));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(arg_0, arg_0)), vec2<f32>(_wgslsmith_f_op_f32(961f + -1564f), _wgslsmith_f_op_f32(trunc(1491f))), !any(!arg_1.yx)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 78307u), abs(_wgslsmith_add_vec2_u32(max(u_input.a ^ vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_div_vec2_u32(vec2<u32>(52224u, 102064u), vec2<u32>(arg_0.b, u_input.a.x))), u_input.a)));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(global1.x, 3105f), vec3<bool>(false, true, false), 0u, vec4<i32>(u_input.b, arg_1.x, -6591i, -12423i))) * vec2<f32>(588f, 720f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.x + -415f), 967f))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-global1.x), all(vec2<bool>(false, false))))), _wgslsmith_f_op_f32(1343f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - -925f), 151f)))));
    var_0 = vec2<u32>(arg_0.b, var_0.x);
    let var_1 = select(vec3<bool>(all(vec2<bool>(true, true)), !all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), false), vec3<bool>(!(any(vec3<bool>(true, false, false)) || all(vec3<bool>(true, true, false))), !(_wgslsmith_f_op_f32(ceil(global1.x)) != global1.x), true), select(vec3<bool>(true, select(arg_1.x == arg_1.x, u_input.a.x != u_input.a.x, all(vec2<bool>(false, false))), false), vec3<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), true), false));
    let var_2 = Struct_3(Struct_2(arg_0, global1.x, arg_0, !select(vec2<bool>(true, true), vec2<bool>(var_1.x, true), var_1.x)), Struct_2(arg_0, global1.x, arg_0, select(select(!var_1.zz, select(var_1.yx, var_1.zy, var_1.x), !var_1.xz), !(!var_1.zy), var_1.x && var_1.x)));
    return var_2.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global1 = vec2<f32>(global1.x, 443f);
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)) + _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(func_1(Struct_1(-2147483647i, 0u), vec2<i32>(u_input.b, -1658i))))))));
    let var_2 = ~(~(~vec3<u32>(0u, 400u, var_0) >> (~countOneBits(vec3<u32>(5249u, 11337u, 0u)) % vec3<u32>(32u))));
    var var_3 = Struct_3(Struct_2(Struct_1(abs(u_input.b) << (abs(4939u) % 32u), _wgslsmith_sub_u32(var_0 ^ 46661u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), Struct_1(_wgslsmith_add_i32(-u_input.b, u_input.b), ~37620u), vec2<bool>(all(!global0[_wgslsmith_index_u32(var_2.x, 16u)]), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))))), Struct_2(Struct_1(u_input.b, ~abs(var_0)), global1.x, Struct_1(max(u_input.b, -u_input.b), _wgslsmith_mult_u32(func_3(Struct_1(-1i, 0u), Struct_2(Struct_1(u_input.b, u_input.a.x), 1564f, Struct_1(2147483647i, 52481u), vec2<bool>(true, true)), vec2<i32>(u_input.b, 2147483647i), vec2<bool>(true, true)), ~var_0)), select(vec2<bool>(true, true), vec2<bool>(true, true), -1824f == global1.x)));
    var var_4 = (_wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-1i, u_input.b), vec2<i32>(var_3.a.c.a, firstLeadingBit(-2147483647i))) ^ _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.b)), vec2<i32>(-2147483647i, -9131i)), ~(~vec2<i32>(var_3.a.a.a, 2147483647i)))) | ~vec2<i32>(-2708i, select(i32(-1i) * -4286i, _wgslsmith_dot_vec3_i32(vec3<i32>(7219i, var_3.a.a.a, -5761i), vec3<i32>(-51310i, 1i, var_3.b.c.a)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_5(var_3.b.c, Struct_3(Struct_2(var_3.a.c, global1.x, var_3.b.c, var_3.a.d), var_3.b), Struct_3(Struct_2(Struct_1(u_input.b, 0u), var_3.a.b, Struct_1(var_3.a.a.a, 1u), vec2<bool>(var_3.b.d.x, var_3.b.d.x)), Struct_2(var_3.b.c, 1138f, Struct_1(-31876i, var_3.b.c.b), vec2<bool>(true, var_3.a.d.x))))).x)));
}

