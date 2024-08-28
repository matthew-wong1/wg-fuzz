struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 26>;

var<private> global2: Struct_1;

var<private> global3: i32 = 2147483647i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(global0.c.x)), global2.b, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1123f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, 774f)), _wgslsmith_f_op_f32(-2313f + global0.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-596f, 448f), global2.c.x))))));
    return var_0;
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_sub_vec3_i32(min(firstLeadingBit(min(u_input.e.yzx >> (vec3<u32>(8298u, 30572u, 0u) % vec3<u32>(32u)), abs(u_input.e.wyy))), ~(~vec3<i32>(u_input.e.x, -25507i, 2147483647i))), max(firstTrailingBit(~u_input.e.xwz) >> (u_input.a.xxy % vec3<u32>(32u)), u_input.e.wwz & vec3<i32>(-6266i, u_input.e.x ^ u_input.e.x, select(u_input.d, 5959i, true))));
    let var_1 = func_1(_wgslsmith_sub_vec3_i32(u_input.e.zzy, u_input.e.yyw), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, 865f, _wgslsmith_div_f32(-1101f, _wgslsmith_div_f32(1000f, 1409f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -307f, global2.c.x) - _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(0u, 26u)] * vec3<f32>(arg_0.x, 972f, 387f))))));
    var var_2 = var_1;
    var var_3 = func_1(vec3<i32>(var_0.x, reverseBits(~(-10914i)) & _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 1i), var_0.zz), 2147483647i), -1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2430f * -591f)), _wgslsmith_f_op_f32(f32(-1f) * -1996f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.x, var_1.a) - -1890f))));
    var_0 = vec3<i32>(38557i, ~(2147483647i >> (global0.b.x % 32u)), -_wgslsmith_clamp_i32(-29738i, -2147483647i, u_input.d));
    return ~1u;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: vec3<i32>) -> vec2<u32> {
    global1 = array<vec3<f32>, 26>();
    global1 = array<vec3<f32>, 26>();
    var var_0 = max(select(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, 34142u), u_input.a << (u_input.a % vec4<u32>(32u))), u_input.a.x, func_3(global2.c), global2.b.x >> ((113253u & global2.b.x) % 32u)), vec4<u32>(abs(9295u) & arg_0.b.x, global2.b.x, _wgslsmith_clamp_u32(arg_0.b.x & 4294967295u, ~global0.b.x, ~4896u), _wgslsmith_mod_u32(64419u, global0.b.x) << (~4294967295u % 32u)), vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), all(vec4<bool>(true, true, true, true)), true, true)), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a));
    var var_1 = min(-_wgslsmith_add_vec3_i32(u_input.e.wyz, vec3<i32>(arg_3.x & -40461i, arg_3.x >> (arg_0.b.x % 32u), arg_3.x)), _wgslsmith_mult_vec3_i32(-vec3<i32>(~59564i, u_input.e.x, -1i | arg_3.x), u_input.e.wzx));
    let var_2 = select(u_input.a.xxx << (vec3<u32>(reverseBits(~arg_0.b.x), 4294967295u, abs(global0.b.x)) % vec3<u32>(32u)), var_0.wyx, true);
    return vec2<u32>(var_2.x, ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.e.wwx, vec3<f32>(_wgslsmith_f_op_f32(global0.c.x + global2.c.x), _wgslsmith_f_op_f32(469f + global2.a), 1292f));
    global3 = u_input.e.x;
    global2 = Struct_1(global2.c.x, _wgslsmith_sub_vec2_u32(firstLeadingBit(abs(max(vec2<u32>(1u, global2.b.x), u_input.a.wz))), func_2(var_0, var_0.c.wyy, global2.c.xx, u_input.e.zyw)), vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.a)), 537f, _wgslsmith_div_f32(-403f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-730f)))));
    var var_1 = !select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, any(vec2<bool>(true, false))), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), false), select(true, true, false)), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false)));
    global0 = func_1(vec3<i32>(-11371i, 2712i, max(_wgslsmith_sub_i32(u_input.d, i32(-1i) * -10682i), 2147483647i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(55768u, 26u)], global1[_wgslsmith_index_u32(var_0.b.x, 26u)])) - func_1(vec3<i32>(-14055i, u_input.e.x, 1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -1021f, global2.c.x) + global1[_wgslsmith_index_u32(33438u, 26u)])).c.yxz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.c.x * 350f), _wgslsmith_f_op_f32(sign(-569f)), _wgslsmith_f_op_f32(-global0.a))), !(!vec3<bool>(var_1.x, var_1.x, true)))));
    global2 = Struct_1(542f, ~vec2<u32>(~var_0.b.x, ~_wgslsmith_add_u32(global2.b.x, 75120u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.c.x, -308f, global2.c.x) - global2.c)), vec4<f32>(-500f, global2.c.x, _wgslsmith_f_op_f32(-global2.a), -387f), false)));
    global0 = func_1(select(~select(_wgslsmith_mod_vec3_i32(u_input.e.wyy, u_input.e.zyz), ~vec3<i32>(0i, u_input.e.x, -2147483647i), var_1.x), firstTrailingBit(u_input.e.yyy), any(select(vec4<bool>(var_1.x, var_1.x, false, false), !vec4<bool>(var_1.x, true, var_1.x, true), false))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-840f, -960f, global0.a) * _wgslsmith_f_op_vec3_f32(global0.c.xzx * vec3<f32>(var_0.a, global0.a, var_0.a))) + vec3<f32>(-338f, _wgslsmith_div_f32(global0.c.x, global2.a), global0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(select(vec4<u32>(global2.b.x, global2.b.x, global0.b.x, u_input.b), firstLeadingBit(u_input.a), vec4<bool>(true, var_1.x, true, var_1.x)) ^ ~(~u_input.a), u_input.a & ((vec4<u32>(u_input.b, var_0.b.x, global0.b.x, 31310u) << (u_input.a % vec4<u32>(32u))) >> (vec4<u32>(4294967295u, 27525u, 0u, var_0.b.x) % vec4<u32>(32u)))), global0.b.x, ~_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.b, 0u, global0.b.x, global0.b.x), vec4<u32>(global0.b.x, var_0.b.x, 23204u, 0u)), ~u_input.a));
}

