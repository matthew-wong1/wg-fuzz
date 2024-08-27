struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 23> = array<i32, 23>(11676i, 8498i, 2147483647i, 0i, 17525i, -41043i, -8980i, 0i, 0i, 2678i, -80715i, i32(-2147483648), -1i, 59888i, 21965i, -1i, 2147483647i, 2147483647i, 50687i, i32(-2147483648), 0i, -1i, 21660i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    return global1[_wgslsmith_index_u32(firstLeadingBit(24040u), 23u)];
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<f32>) -> vec2<i32> {
    global1 = array<i32, 23>();
    var var_0 = Struct_1(~_wgslsmith_clamp_vec2_u32(vec2<u32>(51917u, u_input.a.x | 53694u), ~_wgslsmith_add_vec2_u32(arg_0.xy, u_input.a.yz), reverseBits(u_input.a.zx | arg_0.zx)), ~select(min(vec4<i32>(global0.e, 1i, -2147483647i, -14811i), ~vec4<i32>(38720i, 0i, global0.a.x, arg_1.e)), vec4<i32>(~2147483647i, max(u_input.b, global1[_wgslsmith_index_u32(65176u, 23u)]), firstLeadingBit(global0.e), global1[_wgslsmith_index_u32(0u, 23u)] >> (arg_0.x % 32u)), vec4<bool>(true, true, true, true)), arg_0.xx);
    global0 = Struct_2(global0.a, vec4<f32>(794f, arg_1.d, arg_1.b.x, _wgslsmith_f_op_f32(-arg_2.x)), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + global0.c.x)), 243f)), countOneBits(~2147483647i));
    var var_1 = Struct_1(~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, 44640u), reverseBits(arg_0.yx), max(vec2<u32>(64620u, 3740u), vec2<u32>(5713u, 1u))), u_input.a.xx, true), abs(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 0i, -10850i, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), var_0.b))), u_input.a.xx);
    let var_2 = select(vec3<bool>(!(!select(false, true, true)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), false), vec3<bool>(all(vec4<bool>(true, true, any(vec4<bool>(true, false, false, true)), all(vec2<bool>(false, true)))), true, !any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true))), any(vec4<bool>(true, ~u_input.a.x <= var_1.c.x, all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)))));
    return global0.a;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(global1[_wgslsmith_index_u32(0u, 23u)], firstLeadingBit(global0.e), 14321i)), ~max(vec3<i32>(select(u_input.b, -26200i, arg_0), global1[_wgslsmith_index_u32(29030u, 23u)], i32(-1i) * -6717i), ~vec3<i32>(-1i, 32254i, -2147483647i) >> (~u_input.a % vec3<u32>(32u))));
    global0 = arg_1;
    global0 = Struct_2(global0.a, global0.b, global0.b, global0.d, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, 110257u, u_input.a.x), vec4<u32>(1u, 4294967295u, 4294967295u, 31114u)), ~countOneBits(vec4<u32>(59658u, u_input.a.x, 1u, u_input.a.x))), ~vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_clamp_u32(52613u, u_input.a.x, 0u), _wgslsmith_mod_u32(50517u, u_input.a.x))), 23u)]);
    var_0 = u_input.b;
    var var_1 = Struct_3(vec3<f32>(arg_1.b.x, 810f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)) - 1255f)), countOneBits(vec3<i32>(arg_1.a.x, global0.e, -45530i)) & vec3<i32>(abs(abs(51061i)), ~global0.e >> (12440u % 32u), -29814i));
    return vec2<u32>(u_input.a.x, 46089u);
}

fn func_1() -> vec2<u32> {
    var var_0 = (~(~(~22299u)) >> (select(u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1625u), vec4<u32>(33566u, 1u, 0u, 0u)), false) % 32u)) & 19408u;
    var var_1 = select(vec4<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(588f - global0.d), -108f) != _wgslsmith_f_op_f32(-1f), ~(~4294967295u) != ~u_input.a.x, !any(vec2<bool>(false, true))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true)), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 23u)] != -48724i, select(true, false, false), false)));
    var var_2 = Struct_2(max(reverseBits(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 23u)])) & min(~vec2<i32>(u_input.b, 0i), vec2<i32>(23480i, u_input.b)), global0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-839f, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.c.x, 466f), _wgslsmith_div_f32(global0.d, global0.b.x))), global0.d) + global0.b), global0.c, _wgslsmith_f_op_f32(f32(-1f) * -1140f), -19016i);
    let var_3 = var_1.x;
    var var_4 = vec3<i32>(_wgslsmith_add_i32(-_wgslsmith_add_i32(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(116714u, 23u)], u_input.b), -1i), _wgslsmith_div_i32(u_input.b | 1i, min(_wgslsmith_div_i32(19987i, u_input.b), i32(-1i) * -2147483647i))), -(~func_2(vec4<i32>(u_input.b, global0.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], -38499i) | vec4<i32>(global0.a.x, -1i, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 65956i))), -2147483647i);
    return func_4(false, Struct_2(_wgslsmith_mult_vec2_i32(max(vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.b, -47227i)), vec2<i32>(var_2.a.x, -5081i) | vec2<i32>(u_input.b, -13527i)) | func_3(~vec4<u32>(44612u, u_input.a.x, 78194u, u_input.a.x), Struct_2(global0.a, global0.c, vec4<f32>(-367f, 848f, 804f, global0.b.x), global0.d, global0.a.x), _wgslsmith_f_op_vec3_f32(var_2.c.xxz * vec3<f32>(var_2.b.x, var_2.b.x, -701f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global0.c))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.b, vec4<f32>(global0.d, var_2.b.x, -238f, var_2.d)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b.x, 1312f, var_2.b.x, var_2.d)))))), _wgslsmith_div_f32(global0.d, global0.d), abs(i32(-1i) * -16511i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(firstLeadingBit(abs(vec2<i32>(2147483647i, -8037i)) >> (func_1() % vec2<u32>(32u))), global0.c, _wgslsmith_f_op_vec4_f32(global0.c * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1902f, global0.c.x, global0.b.x, -381f) * global0.c), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.c.x, -1503f, 1000f, 799f)))), global0.b)), global0.c.x, _wgslsmith_add_i32(func_2(abs(vec4<i32>(-4612i, global0.e, global1[_wgslsmith_index_u32(21008u, 23u)], u_input.b))), ~(-func_2(vec4<i32>(-38249i, 5190i, u_input.b, -16955i)))));
    global1 = array<i32, 23>();
    global0 = Struct_2(~min(_wgslsmith_div_vec2_i32(global0.a, -global0.a), ~vec2<i32>(-4113i, -10719i)), global0.b, global0.b, _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(-global0.c.x)), global1[_wgslsmith_index_u32(min(max(~_wgslsmith_mult_u32(4294967295u, u_input.a.x), u_input.a.x), u_input.a.x), 23u)]);
    var var_0 = select(select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(false, true, true), any(vec4<bool>(true, true, true, true))), vec3<bool>(0u >= ~u_input.a.x, true, true), (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, 59575u)) <= _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a.yy)) != any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)))), select(vec3<bool>(_wgslsmith_f_op_f32(round(global0.b.x)) != global0.b.x, !any(vec4<bool>(false, false, true, true)), true), vec3<bool>(all(vec3<bool>(true, true, true)), select(all(vec4<bool>(true, true, false, false)), any(vec2<bool>(true, false)), false), (u_input.b >= -18811i) | true), !any(vec3<bool>(true, false, true))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))));
    var var_1 = 37817i;
    var var_2 = Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, -global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 23u)], global0.e, -(~global1[_wgslsmith_index_u32(~1119u, 23u)])), u_input.a.yz);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.x, ~u_input.a.x);
}

