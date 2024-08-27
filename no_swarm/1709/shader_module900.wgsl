struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 128f;

var<private> global1: i32;

var<private> global2: array<vec4<f32>, 21>;

var<private> global3: f32;

var<private> global4: array<vec4<i32>, 6>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_1(max(vec3<i32>(-38853i, select(min(u_input.a.x, -16433i), -1932i, arg_1.c), (-13219i ^ arg_1.a.x) | 26855i), vec3<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x, select(1i, firstLeadingBit(arg_1.a.x), arg_1.c))), arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1507f, -1004f))), -2340f, any(vec2<bool>(arg_1.c, arg_1.c)))) != _wgslsmith_f_op_f32(trunc(330f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, 1000f, 626f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, 2023f, -320f), arg_1.d)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-630f, -451f, -1115f))))))));
    var_0 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(arg_1.a.x), 1i & u_input.a.x) & -8905i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(arg_1.a.x, 12536i), 11934i), u_input.a.x), -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.x, arg_0.x))))), var_0.c, _wgslsmith_f_op_vec3_f32(-arg_1.d));
    let var_1 = Struct_2(~1u, Struct_1(~var_0.a, vec2<f32>(arg_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-988f, 2655f)), -571f)), true != (-504f >= arg_1.b.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.d, vec3<f32>(arg_0.x, -457f, arg_0.x)) + vec3<f32>(-1388f, -1366f, 1107f))))));
    var var_2 = !select(!(!select(vec4<bool>(true, arg_1.c, false, false), vec4<bool>(var_1.b.c, arg_1.c, var_1.b.c, true), vec4<bool>(true, false, arg_1.c, false))), !select(select(vec4<bool>(true, arg_1.c, arg_1.c, true), vec4<bool>(var_0.c, false, var_0.c, var_0.c), true), vec4<bool>(false, var_0.c, true, var_1.b.c), true), !select(vec4<bool>(arg_1.c, var_1.b.c, true, true), vec4<bool>(true, var_0.c, false, true), !var_0.c));
    let var_3 = var_2.x;
    return ~2147483647i;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_sub_vec3_i32(firstTrailingBit(min(u_input.a.wzy, vec3<i32>(0i, -2147483647i, u_input.a.x))), reverseBits(countOneBits(vec3<i32>(-1136i, arg_2.x, arg_2.x)))), vec2<f32>(1110f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(386f + -1120f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-593f, 1000f)), _wgslsmith_f_op_f32(-1258f * 302f), 27214u > arg_0.x)))), true & (0u <= _wgslsmith_mod_u32(countOneBits(arg_0.x), ~arg_0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-669f, -188f, _wgslsmith_f_op_f32(-352f + 864f)) * vec3<f32>(783f, _wgslsmith_f_op_f32(-560f + 1475f), _wgslsmith_f_op_f32(f32(-1f) * -620f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2360f, 667f, 677f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1906f, 953f, -1000f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(104f, 1811f, -1491f))))))));
    let var_1 = all(!select(!vec2<bool>(arg_1, var_0.c), vec2<bool>(false, u_input.a.x >= var_0.a.x), vec2<bool>(var_0.c, !var_0.c)));
    var_0 = Struct_1(vec3<i32>(func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.d.xx * var_0.b), vec2<f32>(var_0.b.x, var_0.d.x))), Struct_1(vec3<i32>(u_input.a.x, arg_2.x, u_input.a.x) & vec3<i32>(arg_2.x, arg_2.x, 1i), var_0.b, arg_0.x > 0u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -367f, 518f) + vec3<f32>(var_0.b.x, var_0.d.x, -718f)))), 4032i, reverseBits(var_0.a.x) & -u_input.a.x), _wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1741f, 1247f), vec2<f32>(var_0.d.x, -554f)), _wgslsmith_f_op_vec2_f32(var_0.b - vec2<f32>(-583f, 742f))))), select(any(select(vec4<bool>(arg_1, arg_1, true, false), !vec4<bool>(var_1, false, false, arg_1), vec4<bool>(true, false, var_1, true))), var_1, false), var_0.d);
    var var_2 = var_0.a.x;
    global4 = array<vec4<i32>, 6>();
    return Struct_1(select(reverseBits(max(u_input.a.zzz & vec3<i32>(-2147483647i, arg_2.x, -15345i), _wgslsmith_clamp_vec3_i32(u_input.a.zwy, u_input.a.zww, vec3<i32>(-2147483647i, arg_2.x, arg_2.x)))), vec3<i32>(var_0.a.x, arg_2.x, i32(-1i) * -2147483647i), var_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.d.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d.zz - var_0.d.zz)), true)) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), var_0.d.x)), false, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-369f + _wgslsmith_div_f32(1183f, var_0.b.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(920f - 1379f) - var_0.d.x)))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(vec4<u32>(firstTrailingBit(max(0u, 0u)), 4294967295u, ~(~1u), ~1u) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(vec4<u32>(4294967295u, 4294967295u, 17668u, 1598u))) % vec4<u32>(32u)), false, u_input.a.yy);
    let var_1 = vec4<bool>(true, var_0.c, var_0.c, true);
    var var_2 = ~(~4294967295u);
    let var_3 = _wgslsmith_f_op_f32(-var_0.b.x);
    let var_4 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 910f;
    let var_0 = global2[_wgslsmith_index_u32(71251u, 21u)];
    global1 = u_input.a.x;
    var var_1 = Struct_2(~80732u, func_1());
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b.b.x))) * -1211f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

