struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-11056i, 41877i, 0i, -1i), vec2<u32>(105184u, 4294967295u));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2() -> i32 {
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    var var_0 = vec2<bool>(false, select(all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), false)), any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), 0i == (i32(-1i) * -global1.a.x)));
    global0 = array<Struct_2, 18>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(-319f, -381f)), -488f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1105f)))));
    return -2147483647i;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_1) -> i32 {
    global0 = array<Struct_2, 18>();
    var var_0 = ~(75479u | _wgslsmith_div_u32(~4294967295u, arg_2.b.x & global1.b.x)) & 0u;
    var var_1 = arg_2;
    var var_2 = Struct_1(_wgslsmith_mod_vec4_i32(-countOneBits(-global1.a), global1.a), max(u_input.a.zw, _wgslsmith_mod_vec2_u32(select(vec2<u32>(4291u, u_input.a.x) ^ vec2<u32>(1u, 69283u), arg_2.b, !arg_0.yz), vec2<u32>(60115u, 59856u))));
    let var_3 = arg_2;
    return 45963i;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    let var_0 = reverseBits(vec4<i32>(global1.a.x, -26637i, -2147483647i, ~(-func_2())));
    var var_1 = !(!vec2<bool>(arg_3.b.x, !any(vec4<bool>(true, true, arg_3.d, false))));
    let var_2 = abs(-global1.a.x);
    var var_3 = vec2<f32>(-564f, 201f);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-arg_2.a));
    return Struct_1(select(_wgslsmith_add_vec4_i32(vec4<i32>(abs(arg_0.x), _wgslsmith_add_i32(2147483647i, var_2), var_0.x, i32(-1i) * -1700i), vec4<i32>(abs(54987i), _wgslsmith_mod_i32(1i, -1i), arg_0.x, ~0i)), -abs(var_0), !vec4<bool>(var_1.x, !var_1.x, true, all(vec2<bool>(true, true)))), u_input.a.yz);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<f32>) -> i32 {
    global1 = func_4(min(firstTrailingBit(max(-global1.a.wzz, global1.a.yxy)), vec3<i32>(_wgslsmith_mod_i32(func_2(), func_2()), -func_3(vec3<bool>(arg_1.x, true, arg_1.x), Struct_4(vec3<i32>(-2147483647i, global1.a.x, global1.a.x), global1.a.x, 5572i, arg_0), Struct_1(global1.a, u_input.a.ww)), global1.a.x)), Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))), 1u), Struct_3(1869f, u_input.a.x), global0[_wgslsmith_index_u32(~(~27221u), 18u)]);
    global1 = func_4(global1.a.wyw, Struct_3(-1000f, ~(~(~global1.b.x))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.x))), ~_wgslsmith_dot_vec2_u32(u_input.a.yw | u_input.a.zz, vec2<u32>(global1.b.x, u_input.a.x))), global0[_wgslsmith_index_u32(~4294967295u << (_wgslsmith_clamp_u32(~(u_input.a.x ^ 57319u), u_input.a.x, func_4(countOneBits(global1.a.ywz), Struct_3(arg_2.x, u_input.a.x), Struct_3(arg_0, u_input.a.x), global0[_wgslsmith_index_u32(~u_input.a.x, 18u)]).b.x) % 32u), 18u)]);
    let var_0 = false;
    var var_1 = -445f;
    var var_2 = _wgslsmith_dot_vec3_u32(~(~(vec3<u32>(u_input.a.x, u_input.a.x, global1.b.x) | u_input.a.xwx) ^ (vec3<u32>(4294967295u, 1u, global1.b.x) << (u_input.a.ywy % vec3<u32>(32u)))), abs(u_input.a.wzw) >> (u_input.a.zyw % vec3<u32>(32u)));
    return reverseBits(-1017i);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec3_i32(arg_1.a, func_4(global1.a.xwz << (_wgslsmith_mod_vec3_u32(min(u_input.a.xxx, vec3<u32>(4294967295u, u_input.a.x, global1.b.x)), u_input.a.wzx) % vec3<u32>(32u)), Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(881f - -169f))), ~u_input.a.x >> (u_input.a.x % 32u)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-122f))), u_input.a.x), Struct_2(~(~u_input.a), !vec3<bool>(true, arg_2.x, false), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2019f, -242f, -1000f, arg_0.x))))), global1.a.x != _wgslsmith_clamp_i32(-2147483647i, arg_1.a.x, arg_1.c))).a.yxw, global1.a.zww);
    var_0 = ~vec3<i32>(arg_1.b, ~(-2147483647i), func_3(!arg_2, arg_1, Struct_1(global1.a, vec2<u32>(0u, 35787u))) << ((1u << (_wgslsmith_dot_vec3_u32(u_input.a.zwx, vec3<u32>(global1.b.x, u_input.a.x, global1.b.x)) % 32u)) % 32u));
    var_0 = vec3<i32>(~0i, ~(~(-var_0.x)), countOneBits(_wgslsmith_clamp_i32(-2147483647i, var_0.x, var_0.x) ^ ~arg_1.c)) >> (vec3<u32>(global1.b.x, ~global1.b.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(~25836u, _wgslsmith_add_u32(u_input.a.x, 12152u), ~global1.b.x), 53608u)) % vec3<u32>(32u));
    global1 = Struct_1(_wgslsmith_clamp_vec4_i32(min(-(global1.a ^ global1.a), ~_wgslsmith_mult_vec4_i32(global1.a, vec4<i32>(0i, var_0.x, arg_1.a.x, global1.a.x))), global1.a | _wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_1.a.x, global1.a.x, global1.a.x) >> (u_input.a % vec4<u32>(32u)), max(vec4<i32>(arg_1.c, arg_1.a.x, arg_1.b, var_0.x), vec4<i32>(2147483647i, -2147483647i, 30935i, arg_1.a.x))), vec4<i32>(global1.a.x, global1.a.x, global1.a.x, 1i ^ _wgslsmith_sub_i32(arg_1.b, 1i))), global1.b & _wgslsmith_clamp_vec2_u32(global1.b, select(~u_input.a.xw, global1.b, select(arg_2.zz, vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(false, false))), u_input.a.ww));
    let var_1 = arg_0.x;
    return Struct_2(u_input.a, arg_2, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-690f, arg_1.d, _wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(round(2032f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_1, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1056f, arg_1.d, arg_1.d, var_1) * vec4<f32>(arg_0.x, arg_0.x, -428f, arg_1.d)), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2151f, var_1, arg_1.d, arg_1.d)))))), !(~arg_1.c <= 1i) && all(vec4<bool>(var_1 >= arg_1.d, arg_2.x, true, arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-176f, -1000f, -1042f)))), vec3<f32>(_wgslsmith_f_op_f32(min(165f, -1001f)), 1f, -646f), vec3<bool>(true, true, true))), vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-285f)), _wgslsmith_f_op_f32(min(1000f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-257f, 1000f))), vec3<bool>(any(vec2<bool>(true, false)) | select(false, false, true), true, false))), Struct_4(select(vec3<i32>(abs(global1.a.x), global1.a.x << (u_input.a.x % 32u), ~(-2147483647i)), -_wgslsmith_mult_vec3_i32(global1.a.xzw, global1.a.wyz), any(vec4<bool>(true, true, false, false))), 42225i, _wgslsmith_sub_i32(global1.a.x ^ -2147483647i, func_1(-960f, vec3<bool>(true, true, true), vec3<f32>(-938f, -883f, -415f))) | -2147483647i, _wgslsmith_f_op_f32(select(-1338f, _wgslsmith_f_op_f32(f32(-1f) * -594f), all(vec2<bool>(false, false))))), select(vec3<bool>(true, true, true), !vec3<bool>(true, 1u != u_input.a.x, true), true));
    var var_2 = !(47887u < global1.b.x);
    var var_3 = !(true || (!all(vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.b.x)) || any(!var_1.b.zy)));
    global1 = func_4(~_wgslsmith_mod_vec3_i32(vec3<i32>(global1.a.x, ~(-1i), 1i), max(global1.a.yyx << (var_0.xzx % vec3<u32>(32u)), vec3<i32>(0i, 26713i, global1.a.x))), Struct_3(_wgslsmith_f_op_f32(min(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1734f * -870f)))), min((1u & var_1.a.x) ^ countOneBits(1u), u_input.a.x)), Struct_3(var_1.c.x, _wgslsmith_clamp_u32(~select(u_input.a.x, var_0.x, var_1.b.x), global1.b.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.a.x, var_0.x, 75980u), vec3<u32>(var_1.a.x, var_0.x, 0u)))), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.c.x, var_1.c.x, -2202f))) + _wgslsmith_f_op_vec3_f32(var_1.c.zzx + var_1.c.xxz))), Struct_4(_wgslsmith_mod_vec3_i32(global1.a.yzx, select(global1.a.wzx, global1.a.xxy, true)), ~global1.a.x ^ ~15025i, _wgslsmith_sub_i32(global1.a.x, global1.a.x), _wgslsmith_f_op_f32(-407f - _wgslsmith_f_op_f32(abs(-1363f)))), var_1.b));
    var var_4 = _wgslsmith_f_op_vec3_f32(var_1.c.yzy * vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(-1000f - -1183f), var_1.c.x));
    var var_5 = vec3<bool>(all(vec2<bool>(var_1.b.x, var_1.b.x)), true, any(!select(vec4<bool>(var_1.d, true, var_1.b.x, true), select(vec4<bool>(true, var_1.b.x, var_1.d, true), vec4<bool>(var_1.d, var_1.d, false, true), vec4<bool>(true, false, var_1.b.x, var_1.b.x)), all(var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(264f, ~_wgslsmith_div_vec2_u32(var_0.zz, ~(~vec2<u32>(16331u, var_0.x))), var_1.c.zyz, min(firstLeadingBit(global1.a.yzz), _wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(global1.a.x, 22950i, global1.a.x), vec3<i32>(global1.a.x, global1.a.x, global1.a.x)), vec3<i32>(func_3(var_1.b, Struct_4(vec3<i32>(global1.a.x, global1.a.x, -2147483647i), global1.a.x, 0i, 650f), Struct_1(vec4<i32>(global1.a.x, -2147483647i, 1i, -35701i), var_0.yx)), 1i, func_4(vec3<i32>(0i, -1i, global1.a.x), Struct_3(var_1.c.x, 33067u), Struct_3(var_4.x, var_1.a.x), Struct_2(u_input.a, vec3<bool>(var_5.x, true, true), vec4<f32>(325f, var_4.x, -1448f, 1780f), false)).a.x))), _wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(min(-654f, -335f))));
}

