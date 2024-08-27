struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = false;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: i32) -> vec2<u32> {
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(global0.a.x - -713f), _wgslsmith_f_op_f32(1000f + global0.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-585f * global0.a.x) - global0.a.x))), global0.a.x));
    let var_0 = arg_3;
    let var_1 = 1u;
    var var_2 = firstLeadingBit(vec4<i32>(38125i, u_input.a.x, 0i, u_input.a.x));
    var var_3 = true;
    return ~(~arg_2.xz);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3) -> f32 {
    global1 = arg_1.c.d.x | arg_1.c.d.x;
    let var_0 = select(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, arg_1.a), vec2<i32>(firstLeadingBit(countOneBits(25606i)), ~u_input.a.x)), arg_1.a, all(!select(arg_1.c.d, vec3<bool>(false, arg_1.c.d.x, true), arg_1.c.d.x)) | (1362f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-933f - global0.a.x))));
    global1 = arg_1.c.d.x;
    var var_1 = Struct_4(vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(58582u, 12667u, 4294967295u, 54082u)), ~vec4<u32>(48573u, 4294967295u, 18890u, 1u)), ~1u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 74668u, 67665u), max(vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(16167u, 80717u, 4294967295u, 4294967295u))), 15665u)), ~firstTrailingBit(vec2<u32>(1u, 1u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(~_wgslsmith_add_u32(0u, 46120u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 24516u, 0u), vec4<u32>(31627u, 1u, 60533u, 0u)), _wgslsmith_mult_u32(173573u, 0u))), 1u), countOneBits(-firstTrailingBit(reverseBits(vec4<i32>(3790i, -1i, -1i, 1i)))));
    let var_2 = ~(~(~(~(vec4<u32>(var_1.b.x, var_1.a.x, 55104u, var_1.a.x) << (var_1.a % vec4<u32>(32u))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -223f)) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.x, 168f), arg_1.d, false))), _wgslsmith_f_op_f32(-global0.a.x))));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> vec4<f32> {
    var var_0 = 792f;
    var_0 = _wgslsmith_f_op_f32(round(global0.a.x));
    var var_1 = ~_wgslsmith_clamp_u32(~_wgslsmith_add_u32(49828u, 10769u), ~(~24102u), ~1u) << (abs(func_2(true, ~(~vec2<u32>(12958u, 74274u)), max(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 16178u, 18105u, 69219u), vec4<u32>(1u, 13649u, 36006u, 1u)), ~vec4<u32>(37361u, 776u, 70179u, 3082u)), u_input.a.x).x) % 32u);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-778f + global0.a.x))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1)))))));
    var var_2 = arg_0.c;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, global0.a.x, -329f))) + arg_0.c.b.a.wxy), arg_0)) * _wgslsmith_f_op_f32(trunc(arg_1))), _wgslsmith_f_op_f32(ceil(572f)), arg_1, -800f);
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = ~(~func_2(arg_0, abs(vec2<u32>(75312u, 4294967295u)), ~vec4<u32>(57095u, 0u, 1367u, 7618u), ~u_input.a.x) >> (_wgslsmith_mod_vec2_u32(abs(vec2<u32>(4294967295u, 66934u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(85974u, 4294967295u), vec2<u32>(38088u, 81378u), reverseBits(vec2<u32>(4294967295u, 0u)))) % vec2<u32>(32u)));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(u_input.a ^ -u_input.a, Struct_1(_wgslsmith_div_vec4_f32(global0.a, global0.a)), Struct_2(arg_1.x, Struct_1(vec4<f32>(global0.a.x, global0.a.x, arg_1.x, 1590f)), Struct_1(vec4<f32>(arg_1.x, -555f, arg_1.x, arg_1.x)), !vec3<bool>(true, arg_0, false)), _wgslsmith_f_op_f32(func_3(global0.a.xzy, Struct_3(u_input.a, Struct_1(vec4<f32>(global0.a.x, 1932f, global0.a.x, global0.a.x)), Struct_2(838f, Struct_1(vec4<f32>(arg_1.x, arg_1.x, global0.a.x, -785f)), Struct_1(global0.a), vec3<bool>(false, arg_0, arg_0)), arg_1.x, global0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(965f, 1336f, global0.a.x, global0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1189f * _wgslsmith_f_op_f32(trunc(arg_1.x))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x + 266f), global0.a.x))))));
    global0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global0.a)))), global0.a));
    let var_1 = Struct_2(157f, Struct_1(_wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(min(global0.a, _wgslsmith_f_op_vec4_f32(select(global0.a, global0.a, false)))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global0.a)) * vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(select(-1316f, arg_1.x, arg_0)), _wgslsmith_f_op_f32(816f * -134f), _wgslsmith_div_f32(arg_1.x, -243f)))), vec3<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), any(vec2<bool>(arg_0, arg_0)))), true, true));
    global1 = select(arg_0, !(select(false, all(var_1.d), arg_0) & arg_0), all(vec4<bool>(!all(vec2<bool>(true, true)), _wgslsmith_mult_i32(2147483647i, u_input.a.x) < -19020i, true, true)));
    return Struct_3(-abs((vec2<i32>(17110i, -10885i) | u_input.a) & vec2<i32>(8356i, 2147483647i)), var_1.c, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a.x) * global0.a.x))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_1.x, 378f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 1191f)) + _wgslsmith_f_op_f32(abs(-741f))), all(var_1.d.xz))), _wgslsmith_f_op_f32(trunc(global0.a.x)), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a.x + _wgslsmith_f_op_f32(-var_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1((1000f >= global0.a.x) | true, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -155f), global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(-861f, 314f)), _wgslsmith_f_op_f32(func_3(global0.a.xwy, Struct_3(vec2<i32>(-50785i, -3952i), Struct_1(vec4<f32>(782f, var_0.e.x, global0.a.x, var_0.d)), var_0.c, var_0.b.a.x, global0.a))), _wgslsmith_f_op_f32(global0.a.x + 1275f), global0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.e)), select(select(vec4<bool>(var_0.c.d.x, true, var_0.c.d.x, false), vec4<bool>(false, true, true, false), vec4<bool>(var_0.c.d.x, var_0.c.d.x, false, var_0.c.d.x)), vec4<bool>(true, true, true, true), !vec4<bool>(false, false, true, var_0.c.d.x))))), var_0.e.x);
}

