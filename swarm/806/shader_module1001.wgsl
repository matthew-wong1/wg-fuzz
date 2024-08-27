struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_3, 24>;

var<private> global2: vec2<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_mult_i32(global2.x, 2147483647i)) | 16589i, firstTrailingBit(~(-2147483647i))));
    var var_1 = Struct_2(true & (!(!arg_0.x) & (_wgslsmith_f_op_f32(trunc(global0.x)) > _wgslsmith_div_f32(global0.x, 1000f))), var_0, 245f, ~(_wgslsmith_div_vec4_i32(~vec4<i32>(1i, 0i, var_0.a, 2147483647i), ~vec4<i32>(2147483647i, 0i, 0i, -1i)) >> (_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, u_input.a), vec4<u32>(19820u, 25567u, 26910u, u_input.a.x) & u_input.a) % vec4<u32>(32u))));
    global2 = var_1.d.wz;
    var var_2 = reverseBits(min(~1i, global2.x));
    global2 = countOneBits(vec2<i32>(_wgslsmith_sub_i32(max(-4014i, -1i), -44687i), (global2.x >> (1u % 32u)) | ~global2.x) ^ vec2<i32>(-4530i, countOneBits(select(global2.x, 1i, false))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -416f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-616f, 1324f)) + -1952f)), var_1.c)));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1267f)))) * -922f);
    global2 = -(vec2<i32>(9698i, firstLeadingBit(~global2.x)) >> (~countOneBits(countOneBits(u_input.a.zx)) % vec2<u32>(32u)));
    var var_1 = vec4<i32>(0i, ~(-9406i), ~1i, ~global2.x);
    let var_2 = Struct_2(true, Struct_1(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, var_1.x, global2.x, 59287i) >> (u_input.a % vec4<u32>(32u))), firstLeadingBit(abs(vec4<i32>(0i, -1i, -2147483647i, 1i))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-788f - global0.x))), ~var_1.x <= 7080i)), vec4<i32>(var_1.x, _wgslsmith_dot_vec2_i32(var_1.zz, _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(global2.x, var_1.x))), _wgslsmith_add_i32(abs(53679i), firstLeadingBit(19291i)), _wgslsmith_div_i32(~global2.x, var_1.x)) << (vec4<u32>(select(u_input.a.x, 1145u, all(vec3<bool>(true, false, true))), abs(u_input.a.x), 1u >> (~u_input.a.x % 32u), 41718u) % vec4<u32>(32u)));
    var var_3 = var_2;
    return !(!select(!var_2.a, var_2.a, var_2.a));
}

fn func_1() -> bool {
    let var_0 = func_2();
    global1 = array<Struct_3, 24>();
    global2 = abs(vec2<i32>(firstTrailingBit(max(-2147483647i, 0i)) & ~global2.x, global2.x));
    global1 = array<Struct_3, 24>();
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(300f, global0.x), vec2<f32>(136f, global0.x))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1457f, global0.x))))))))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(func_1(), func_1());
    global1 = array<Struct_3, 24>();
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(186f, global0.x), _wgslsmith_f_op_f32(global0.x * 1980f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(-1000f, global0.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-750f, -454f), vec2<f32>(global0.x, global0.x))))))));
    var var_1 = Struct_1(2289i);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_f32(trunc(global0.x)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * 566f), -720f)), _wgslsmith_f_op_f32(global0.x - -843f), _wgslsmith_f_op_f32(min(-443f, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(round(global0.x))))), _wgslsmith_f_op_f32(f32(-1f) * -1516f)) - vec4<f32>(-193f, _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, true, var_0.x))) * -123f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(round(1000f))))));
    let var_3 = min(-_wgslsmith_mod_i32(-min(global2.x, -32248i), _wgslsmith_mod_i32(-21080i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, 2147483647i, global2.x), vec3<i32>(-2147483647i, var_1.a, -2320i)))), var_1.a);
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1054f, var_2.x, var_2.x, var_2.x) - vec4<f32>(var_2.x, 348f, global0.x, 350f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 381f, 205f) * vec4<f32>(373f, var_2.x, -836f, var_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, global0.x, -376f, global0.x), vec4<f32>(var_2.x, var_2.x, -1623f, 565f), true)))))));
    var var_4 = Struct_2(false, Struct_1(((var_3 | 36065i) | var_3) & ~countOneBits(19090i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(190f))))), -countOneBits(select(~vec4<i32>(0i, -2147483647i, -6670i, 0i), vec4<i32>(-44775i, var_3, -28400i, 1i), true)));
    var_1 = Struct_1(abs(~var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.zx, u_input.a.wy >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(u_input.a.yy, u_input.a.zy)) & vec2<u32>(abs(12250u), ~4399u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), global0.x, var_2.x))), _wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 0u), u_input.a.x | u_input.a.x), u_input.a.yw));
}

