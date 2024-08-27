struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(-1i, 34404i, 5478i), vec3<i32>(-46750i, -57777i, 2147483647i), vec3<i32>(41697i, -17457i, -1i), vec3<i32>(1i, 33854i, -1i), vec3<i32>(2147483647i, 19708i, 16901i), vec3<i32>(14775i, 23480i, 2147483647i));

var<private> global1: vec3<i32>;

var<private> global2: array<vec3<i32>, 32>;

var<private> global3: array<u32, 14> = array<u32, 14>(49339u, 4294967295u, 1u, 1u, 54011u, 0u, 9471u, 27935u, 4294967295u, 1u, 4294967295u, 1u, 0u, 4294967295u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: vec4<i32>) -> i32 {
    global2 = array<vec3<i32>, 32>();
    var var_0 = Struct_3(Struct_2(vec2<bool>(0u < u_input.a, true)), false, ~firstTrailingBit(_wgslsmith_sub_u32(19805u, ~u_input.a)));
    var var_1 = !(!vec4<bool>(false, arg_0.x, all(!vec4<bool>(true, var_0.a.a.x, true, arg_0.x)), arg_2.a.x));
    let var_2 = Struct_4(!select(!vec4<bool>(var_0.b, false, true, var_0.a.a.x), arg_2.a, _wgslsmith_f_op_f32(trunc(221f)) > 822f));
    global3 = array<u32, 14>();
    return arg_3.x;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: vec4<bool>) -> vec4<bool> {
    let var_0 = Struct_4(vec4<bool>(arg_2, !(!(global1.x == -53538i)), _wgslsmith_mod_i32(~(-1i), global1.x) <= ~func_3(arg_3.ww, vec3<u32>(arg_1, u_input.a, global3[_wgslsmith_index_u32(0u, 14u)]), Struct_4(arg_3), vec4<i32>(-2147483647i, global1.x, 1i, 0i)), arg_2));
    let var_1 = var_0.a.x;
    global2 = array<vec3<i32>, 32>();
    let var_2 = _wgslsmith_f_op_f32(select(-1296f, 325f, var_0.a.x || all(!var_0.a.yyx)));
    global2 = array<vec3<i32>, 32>();
    return !arg_3;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = select(!select(select(func_2(1546f, 5267u, false, vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, func_2(arg_0.x, 0u, false, vec4<bool>(true, false, false, false)).x, false)), vec4<bool>(any(vec3<bool>(true, true, true)), false, !(0u <= global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 14u)]) | (global1.x == 1i), any(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.x, func_2(arg_2.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 14u)], 14u)], true, vec4<bool>(true, true, false, false)).x, select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false)).wwz)), false);
    global1 = max(select(vec3<i32>(_wgslsmith_clamp_i32(min(-27897i, -44062i), 22872i, firstLeadingBit(global1.x)), -global1.x, global1.x), abs((global0[_wgslsmith_index_u32(arg_1.x, 6u)] | vec3<i32>(global1.x, global1.x, 0i)) >> (abs(vec3<u32>(4294967295u, 53390u, u_input.a)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(870f + _wgslsmith_div_f32(arg_0.x, arg_0.x)) < 1f), vec3<i32>(reverseBits(global1.x), -global1.x, ~global1.x));
    let var_1 = Struct_4(!select(vec4<bool>(true, all(vec3<bool>(true, false, false)), false, true), vec4<bool>(var_0.x, false | var_0.x, select(var_0.x, var_0.x, var_0.x), all(vec4<bool>(true, false, true, var_0.x))), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))));
    let var_2 = Struct_2(select(!var_0.xx, vec2<bool>(~12204u < arg_1.x, var_1.a.x), any(vec3<bool>(true, true, all(vec4<bool>(false, true, var_1.a.x, var_1.a.x))))));
    var var_3 = !var_1.a.x;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, -1413f, _wgslsmith_f_op_f32(-1363f - -816f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-142f, -724f, -1038f))))), ~_wgslsmith_mult_vec3_u32(min(vec3<u32>(0u, 46619u, u_input.a), vec3<u32>(0u, global3[_wgslsmith_index_u32(u_input.a, 14u)], 0u)), firstLeadingBit(vec3<u32>(u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 14u)], 14u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 14u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1744f, -131f) + vec2<f32>(-2481f, 1435f))))), true, select(abs(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, global3[_wgslsmith_index_u32(u_input.a, 14u)]), 14u)]), _wgslsmith_mod_u32(~abs(4294967295u), (u_input.a ^ global3[_wgslsmith_index_u32(68388u, 14u)]) >> (1u % 32u)), true));
    var var_1 = Struct_4(vec4<bool>(true, var_0.b, true, _wgslsmith_mult_u32(39913u, 11818u) == _wgslsmith_clamp_u32(u_input.a, var_0.c, ~global3[_wgslsmith_index_u32(24127u, 14u)])));
    global2 = array<vec3<i32>, 32>();
    global2 = array<vec3<i32>, 32>();
    var var_2 = Struct_3(Struct_2(var_1.a.yy), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -832f), 1f), abs(60030u), false, !(!vec4<bool>(true, var_1.a.x, true, var_1.a.x))).x, _wgslsmith_dot_vec2_u32(max(~(~vec2<u32>(global3[_wgslsmith_index_u32(39897u, 14u)], 4688u)), vec2<u32>(max(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.c, 14u)], 14u)]), var_0.c)), _wgslsmith_sub_vec2_u32(vec2<u32>(36071u, 1u), ~vec2<u32>(1158u, u_input.a)) >> (~abs(vec2<u32>(u_input.a, var_0.c)) % vec2<u32>(32u))));
    let var_3 = firstTrailingBit(min(abs(-(global1.xz << (vec2<u32>(9640u, 58313u) % vec2<u32>(32u)))), vec2<i32>(global1.x, global1.x)));
    global1 = vec3<i32>(_wgslsmith_mult_i32(countOneBits(firstLeadingBit(-1i)), _wgslsmith_div_i32(2147483647i, var_3.x)), -_wgslsmith_dot_vec2_i32(~global1.yx, vec2<i32>(var_3.x, var_3.x) << (vec2<u32>(2915u, var_0.c) % vec2<u32>(32u))), _wgslsmith_clamp_i32(global1.x, _wgslsmith_sub_i32(11068i, -5778i), abs(global1.x)) ^ 71732i) >> (vec3<u32>(reverseBits(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(44215u, 0u, global3[_wgslsmith_index_u32(u_input.a, 14u)]) & 39419u, 14u)]), _wgslsmith_mod_u32(var_2.c, _wgslsmith_mult_u32(~4294967295u, u_input.a)), abs(54393u)) % vec3<u32>(32u));
    let var_4 = select(var_1.a, vec4<bool>(!var_1.a.x, true, var_0.b, all(var_1.a)), !(!var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(447f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-742f + 490f))), 805f), vec3<u32>(0u, _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(min(u_input.a, 19836u), 14u)], ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 36363u, 4294967295u, global3[_wgslsmith_index_u32(1u, 14u)]), vec4<u32>(var_0.c, 62717u, 63850u, 1u)), var_0.c), u_input.a));
}

