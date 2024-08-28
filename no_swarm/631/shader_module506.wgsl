struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-910f, -868f, -228f, 1820f);

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 15>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>) -> vec3<u32> {
    let var_0 = Struct_3(Struct_2(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(u_input.a.x >= global1.x, true, all(vec3<bool>(false, true, false)), true)), global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)], select(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, select(false, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), global0.x != global0.x), global0.x));
    global1 = vec3<u32>(u_input.b, u_input.a.x, ~(~global1.x));
    let var_1 = firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(countOneBits(_wgslsmith_clamp_i32(63542i, u_input.d.x, u_input.c)), ~(-23530i)), abs(var_0.a.b.b), ~_wgslsmith_mult_i32(var_0.a.c.b, 2147483647i), ~(-52415i)));
    let var_2 = global0.x;
    var var_3 = vec2<i32>(u_input.c, -var_1.x);
    return _wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(min(vec3<u32>(0u, u_input.b, 827u), vec3<u32>(0u, global1.x, global1.x)), countOneBits(vec3<u32>(92640u, global1.x, global1.x))) & ~vec3<u32>(~1u, global1.x, 1u), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(_wgslsmith_add_u32(global1.x, 4294967295u), 1u, ~global1.x)), ~(~(~vec3<u32>(0u, global1.x, global1.x)))));
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: bool) -> vec4<f32> {
    let var_0 = Struct_3(Struct_2(!(!vec4<bool>(arg_3, arg_3, arg_3, false)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)), 31482i, vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(1231f, global0.x)))), Struct_1(539f, ~reverseBits(2147483647i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1247f, global0.x))), _wgslsmith_f_op_vec2_f32(global0.xy + global0.zx)))), vec4<bool>(true, true, true, true), -315f));
    let var_1 = var_0.a;
    let var_2 = Struct_2(vec4<bool>(any(select(!vec2<bool>(var_0.a.a.x, false), vec2<bool>(var_0.a.d.x, var_0.a.d.x), global1.x > 26275u)), true, !any(var_1.a.yyx), ~global1.x == 98746u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1163f + var_1.e))), -(~abs(u_input.c)), _wgslsmith_f_op_vec2_f32(sign(var_1.b.c))), Struct_1(352f, 1i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.b.c - vec2<f32>(var_0.a.c.c.x, global0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1959f, 239f))))), !select(!vec4<bool>(arg_3, true, false, var_0.a.a.x), var_0.a.d, any(vec2<bool>(true, var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), -281f)));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.b.a)))))), var_1.b.c.x, _wgslsmith_f_op_f32(-var_2.c.c.x)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(455f, -584f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1361f, global0.x))) + -156f), -110f));
    let var_4 = select(vec3<i32>(6645i, ~_wgslsmith_add_i32(arg_0 & -21380i, -18576i & var_1.b.b), -abs(_wgslsmith_dot_vec3_i32(u_input.d, u_input.d))), vec3<i32>(34592i, ~arg_0, u_input.c), (var_1.b.b >> (arg_1.x % 32u)) != -var_0.a.c.b);
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.b.c.x, 219f, -120f, var_3.x), vec4<f32>(var_3.x, var_3.x, -386f, 154f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1553f, 1524f, var_0.a.e, 2335f) * vec4<f32>(-321f, var_0.a.b.c.x, 1517f, -1480f))))))));
}

fn func_2(arg_0: i32) -> vec4<i32> {
    global1 = ~vec3<u32>(abs(~global1.x) >> (0u % 32u), u_input.a.x, reverseBits(firstLeadingBit(0u)));
    let var_0 = vec3<bool>(true, true, true);
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(180f, global0.x, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(sign(global0.x))), 632f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(8981i, func_3(vec4<i32>(1i, u_input.c, u_input.c, 3677i)), vec4<u32>(28960u, 1u, 0u, global1.x) << (vec4<u32>(4294967295u, 12368u, u_input.a.x, u_input.b) % vec4<u32>(32u)), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) * vec4<f32>(1552f, global0.x, -795f, 1411f)))), vec4<bool>(false, var_0.x, true, var_0.x))));
    var var_1 = arg_0 == _wgslsmith_clamp_i32(-1i, -1i, -reverseBits(-1i));
    global2 = array<Struct_1, 15>();
    return abs(~_wgslsmith_clamp_vec4_i32(reverseBits(~vec4<i32>(arg_0, arg_0, u_input.d.x, arg_0)), vec4<i32>(u_input.d.x, -arg_0, i32(-1i) * -1i, _wgslsmith_clamp_i32(u_input.d.x, -15337i, u_input.c)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -21304i, -27515i, u_input.d.x), vec4<i32>(arg_0, arg_0, -72632i, arg_0)))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_i32(abs(-vec4<i32>(1i, u_input.c, u_input.d.x, u_input.c)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 1i, u_input.c, u_input.d.x) << (vec4<u32>(u_input.a.x, 4294967295u, 51523u, global1.x) % vec4<u32>(32u)), reverseBits(vec4<i32>(-6780i, -2147483647i, u_input.c, u_input.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.c, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.c))), _wgslsmith_add_vec4_i32(-func_2(-2147483647i), ~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.d.x) ^ select(vec4<i32>(u_input.c, 2147483647i, u_input.d.x, u_input.c), vec4<i32>(u_input.c, u_input.d.x, -51349i, u_input.c), false)), vec4<i32>(29276i, 1i, u_input.d.x & u_input.d.x, _wgslsmith_dot_vec2_i32(u_input.d.zx, u_input.d.zx)) ^ vec4<i32>(firstLeadingBit(u_input.c), ~u_input.d.x, 18318i, 2147483647i)) ^ ~(~func_2(_wgslsmith_clamp_i32(1i, u_input.c, u_input.c)));
    var var_1 = ~_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(57117u, global1.x)), ~(~u_input.a));
    let var_2 = -vec3<i32>(countOneBits(_wgslsmith_mod_i32(1i, var_0.x)), ~var_0.x, u_input.c);
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(482f, global0.x)), global0.x));
    let var_4 = vec3<bool>(!any(vec3<bool>(true, true, true)), ~(~26703u) > ~func_3(select(var_0, vec4<i32>(47915i, u_input.d.x, var_0.x, -1578i), vec4<bool>(false, false, false, true))).x, true);
    return global2[_wgslsmith_index_u32(global1.x, 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 15>();
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 294f) * global0.x))), global0.x), u_input.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.ww), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(-2564f, 513f))))));
    let var_1 = func_1();
    global1 = vec3<u32>(u_input.b, abs(_wgslsmith_div_u32(global1.x, _wgslsmith_mult_u32(4294967295u, global1.x)) | func_3(abs(vec4<i32>(7252i, var_0.b, var_0.b, -1i))).x), u_input.a.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.c + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(global0.zx))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + 893f))) - vec2<f32>(var_0.c.x, 216f)), !(!vec2<bool>(true, any(vec4<bool>(false, false, true, false))))));
    global2 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.d.yx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-974f, global0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x) * 921f))), u_input.b | abs(~(~global1.x)), abs(vec3<i32>(min(var_0.b, -1i), _wgslsmith_clamp_i32(-59248i, ~u_input.c, func_1().b), 23519i)), global1.x ^ 4294967295u);
}

