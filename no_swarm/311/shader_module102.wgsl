struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: u32,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> i32 {
    let var_0 = 66644u;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(762f, 337f) - vec2<f32>(-660f, -414f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-509f, 469f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(727f + 482f), _wgslsmith_f_op_f32(-454f - -2155f)))))), Struct_1(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, true, false, false))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1629f - 1217f), 1099f)), -128f, _wgslsmith_f_op_f32(floor(1000f)), -1000f), 1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-698f, 369f, 972f, 496f) + vec4<f32>(445f, 1349f, 1464f, 1622f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-925f, -1000f, 757f, 501f) - vec4<f32>(1000f, -871f, -534f, -624f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(276f, -838f, 118f, -1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-576f, 248f, -629f, -198f) * vec4<f32>(1365f, -566f, 501f, -312f)))), ~(~firstTrailingBit(vec4<i32>(-2147483647i, u_input.a, -2147483647i, 1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(631f, -865f))) - _wgslsmith_f_op_f32(round(1000f))), false, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(218f + _wgslsmith_f_op_f32(1000f * 962f)))), 763f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1811f * 2726f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(713f)), _wgslsmith_f_op_f32(-2133f + 1949f)))), 781f));
    var var_2 = Struct_3(var_1.b);
    let var_3 = ~(~vec4<u32>(~(var_2.a.c | 3969u), 31372u, var_2.a.c, 51101u));
    var_2 = Struct_3(Struct_1(select(!(!var_1.b.a), !(!var_1.b.a), select(!var_2.a.a, select(var_2.a.a, vec3<bool>(true, true, var_1.b.a.x), vec3<bool>(var_1.d, var_1.b.a.x, var_2.a.a.x)), var_1.b.a)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-686f, var_1.b.d.x, _wgslsmith_f_op_f32(f32(-1f) * -673f), _wgslsmith_f_op_f32(-var_2.a.b.x)))), var_0, var_2.a.d, vec4<i32>(reverseBits(global0.x), var_1.b.e.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_1.b.e.yw, var_1.b.e.zy), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, global0.x), var_1.b.e.xw)), -var_2.a.e.x)));
    return _wgslsmith_mult_i32(1i, 1i);
}

fn func_2(arg_0: bool) -> i32 {
    return _wgslsmith_mult_i32(max(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, u_input.a, -23163i) >> (vec3<u32>(1u, 4294967295u, 39540u) % vec3<u32>(32u)), -vec3<i32>(global0.x, global0.x, 0i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 1i), vec2<i32>(-12448i, 70412i)), u_input.a, -1i)), ~(-34288i)), _wgslsmith_mod_i32(func_3(), global0.x));
}

fn func_1(arg_0: u32) -> vec2<i32> {
    global0 = -select(select(abs(vec2<i32>(global0.x, -2147483647i)), vec2<i32>(func_2(true), abs(-2147483647i)), true), vec2<i32>(-22805i, -1i), select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), u_input.a == global0.x), vec2<bool>(true, select(false, true, false))));
    global0 = max(~vec2<i32>(39969i, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(-func_3(), ~func_2(false)), countOneBits(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(15773i, 2147483647i)), ~vec2<i32>(4008i, global0.x))), vec2<i32>(u_input.a, 0i)));
    let var_0 = true && (firstLeadingBit(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(4294967295u, arg_0, arg_0)))) < arg_0);
    global0 = ~(_wgslsmith_clamp_vec2_i32(vec2<i32>(27088i, min(global0.x, 2147483647i)), vec2<i32>(u_input.a, _wgslsmith_div_i32(global0.x, -10361i)), vec2<i32>(global0.x, firstLeadingBit(global0.x))) << (((select(vec2<u32>(arg_0, 4294967295u), vec2<u32>(23629u, 81736u), vec2<bool>(var_0, var_0)) >> (max(vec2<u32>(0u, arg_0), vec2<u32>(arg_0, arg_0)) % vec2<u32>(32u))) >> (((vec2<u32>(arg_0, 12164u) | vec2<u32>(arg_0, 4294967295u)) ^ (vec2<u32>(arg_0, 0u) ^ vec2<u32>(arg_0, 11613u))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = all(!(!(!select(vec2<bool>(true, var_0), vec2<bool>(var_0, true), vec2<bool>(true, var_0)))));
    return _wgslsmith_sub_vec2_i32(vec2<i32>(25161i ^ (2147483647i | (-1i >> (arg_0 % 32u))), abs(-countOneBits(-1i))), max(firstLeadingBit(firstTrailingBit(countOneBits(vec2<i32>(-6656i, 2147483647i)))), select(vec2<i32>(1i, 0i), vec2<i32>(1i, 1i), true || (global0.x > global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_vec2_i32(func_1(~(~0u)), -vec2<i32>(global0.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1877i, global0.x, 27975i, 2750i), vec4<i32>(global0.x, -43101i, u_input.a, global0.x) >> (vec4<u32>(41555u, 57561u, 1u, 0u) % vec4<u32>(32u)))));
    global0 = _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a, 0i) & func_1(0u), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 1i) & vec2<i32>(-11834i, 1275i), ~vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, u_input.a))), vec2<i32>(-2147483647i, -2147483647i)) ^ ~vec2<i32>(global0.x, u_input.a);
    global0 = -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -9896i), min(vec2<i32>(-14381i, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, u_input.a), vec2<i32>(1i, 1i))));
    global0 = select(vec2<i32>(-_wgslsmith_mod_i32(select(u_input.a, global0.x, false), _wgslsmith_add_i32(2147483647i, global0.x)), u_input.a), -abs(-vec2<i32>(global0.x, global0.x) ^ vec2<i32>(1i, 48165i)), true);
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 24521u, 4294967295u, 37918u), vec4<u32>(1u, 1u, 1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, reverseBits(vec4<i32>(u_input.a, ~(-2147483647i), ~(-1i), 1i)), 0u & (var_0.x | var_0.x), (~_wgslsmith_add_vec4_u32(vec4<u32>(12603u, 1u, var_0.x, var_0.x), vec4<u32>(var_0.x, 121557u, 0u, 60936u)) ^ vec4<u32>(min(1u, var_0.x), var_0.x << (var_0.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 18237u), vec4<u32>(57105u, var_0.x, 37270u, var_0.x)), var_0.x)) | ~(~vec4<u32>(0u, var_0.x, 52665u, var_0.x) ^ vec4<u32>(var_0.x, var_0.x, 1u, 1u)));
}

