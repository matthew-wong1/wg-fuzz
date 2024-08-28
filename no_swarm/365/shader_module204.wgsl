struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: bool = true;

var<private> global2: Struct_3;

var<private> global3: Struct_1 = Struct_1(vec4<i32>(-3560i, -12629i, 7746i, i32(-2147483648)), 0i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: u32) -> vec2<bool> {
    let var_0 = abs(firstTrailingBit(_wgslsmith_mod_u32(0u, arg_2)));
    global2 = Struct_3((global0.x && (true | all(vec3<bool>(false, true, false)))) || global0.x, Struct_1(vec4<i32>(-70734i, 0i, -global3.b, ~u_input.b) >> (~vec4<u32>(6194u, 1u, u_input.a, arg_2) % vec4<u32>(32u)), -13151i));
    global1 = !global2.a;
    let var_1 = global2.b;
    let var_2 = vec4<bool>(u_input.b >= _wgslsmith_mod_i32(reverseBits(var_1.b) | reverseBits(global3.b), ~global3.a.x), true, false, true);
    return select(select(vec2<bool>(false, global2.a), var_2.ww, false), !var_2.wx, !vec2<bool>(!global0.x, any(var_2.yxx)));
}

fn func_2() -> Struct_3 {
    let var_0 = !vec4<bool>(select(true, all(!vec2<bool>(global0.x, true)), global0.x), global0.x & any(vec2<bool>(global2.a, false)), !global2.a, true);
    global0 = func_3(global2.b.a.yxy, _wgslsmith_div_i32(-global2.b.b, global3.a.x), ((u_input.a << (u_input.a % 32u)) | _wgslsmith_add_u32(u_input.a, ~u_input.a)) >> (~_wgslsmith_mult_u32(~4294967295u, ~0u) % 32u));
    global1 = global2.a;
    let var_1 = _wgslsmith_div_f32(-889f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-403f, -1199f)))));
    var var_2 = Struct_4(!global2.a);
    return Struct_3(969f >= var_1, global2.b);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = vec4<u32>(u_input.a, u_input.a, ~(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, 58491u), vec2<u32>(4294967295u, u_input.a), global2.a), vec2<u32>(1u, 0u)) ^ u_input.a), 64788u | u_input.a);
    global2 = Struct_3(global2.a, Struct_1(vec4<i32>(~0i | (arg_1.x >> (55139u % 32u)), 34230i, -71036i, max(~2147483647i, 2147483647i)), _wgslsmith_sub_i32(-global2.b.a.x & arg_1.x, global2.b.b)));
    global3 = Struct_1(_wgslsmith_sub_vec4_i32(~abs(global3.a), -_wgslsmith_sub_vec4_i32(global3.a, global3.a)) << (max(~vec4<u32>(50679u, 1u, u_input.a, var_0.x), abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, u_input.a, 4294967295u, 4294967295u), vec4<u32>(u_input.a, u_input.a, var_0.x, u_input.a)))) % vec4<u32>(32u)), -2147483647i);
    global0 = func_3(arg_0.b.a.zyz, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(arg_0.b.a, countOneBits(global2.b.a)), _wgslsmith_mod_i32(24588i, global3.a.x)), u_input.a);
    var var_1 = func_2();
    return func_2();
}

fn func_1(arg_0: vec2<i32>) -> vec3<f32> {
    let var_0 = func_4(func_2(), select(_wgslsmith_div_vec2_i32(global3.a.xw, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -52733i), abs(vec2<i32>(1i, u_input.b)), -vec2<i32>(-11938i, global2.b.b))), countOneBits(global2.b.a.xz) << (((vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) & _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u)), true));
    let var_1 = true;
    global3 = Struct_1(min(var_0.b.a, global2.b.a), _wgslsmith_div_i32(func_4(Struct_3(var_1 | global0.x, Struct_1(vec4<i32>(u_input.b, global3.a.x, 20989i, -5938i), 14368i)), var_0.b.a.zz).b.a.x, max(9484i, _wgslsmith_mod_i32(-1i, ~(-24559i)))));
    var var_2 = Struct_1(-vec4<i32>(abs(2147483647i), select(select(0i, 43087i, global0.x), u_input.b, var_0.a), -31414i, ~_wgslsmith_sub_i32(-64621i, 13074i)), _wgslsmith_sub_i32(~(-24801i), _wgslsmith_sub_i32(-global3.a.x ^ u_input.b, -arg_0.x)));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-359f, _wgslsmith_f_op_f32(-524f * -1958f)))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(150f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -276f) * -2220f), _wgslsmith_f_op_f32(-175f * 1f))));
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_4, arg_3: Struct_3) -> vec3<f32> {
    let var_0 = !vec4<bool>(!(!select(global0.x, true, arg_3.a)), any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, arg_3.a), true), select(vec3<bool>(false, false, global2.a), vec3<bool>(true, arg_2.a, false), arg_3.a), !vec3<bool>(arg_3.a, arg_2.a, false))), global0.x, global0.x | false);
    var var_1 = var_0.x;
    return vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 * arg_0.x), -628f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))))), arg_0.x);
}

fn func_6(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = Struct_3(true, Struct_1((~vec4<i32>(u_input.b, global2.b.b, 0i, global2.b.b) >> (~vec4<u32>(var_0, u_input.a, 4294967295u, var_0) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, 1u, 2476u, var_0)), select(vec4<u32>(var_0, var_0, 4294967295u, u_input.a), vec4<u32>(20956u, u_input.a, 49294u, 0u), vec4<bool>(global2.a, false, global2.a, false))) % vec4<u32>(32u)), -14544i));
    global3 = global2.b;
    var var_2 = ~5838i;
    global1 = any(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, var_1.a, all(!vec4<bool>(false, false, global0.x, true))), vec3<bool>(!var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -511f) <= _wgslsmith_f_op_f32(min(-381f, arg_0.x)), !global0.x)));
    return Struct_1(global2.b.a ^ _wgslsmith_mult_vec4_i32(-func_4(var_1, global3.a.wy).b.a, ~global2.b.a << (firstLeadingBit(vec4<u32>(56329u, u_input.a, u_input.a, var_0)) % vec4<u32>(32u))), global3.b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_6(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(-vec2<i32>(32096i, 2147483647i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2351f, -243f, 755f) - vec3<f32>(742f, -1580f, 630f)), !global2.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-220f + -291f))), Struct_4(!(!global2.a)), func_2())));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -426f, 719f, 568f), vec4<f32>(-530f, 423f, -547f, -2086f))), vec4<f32>(-1260f, _wgslsmith_f_op_f32(1000f * -1728f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1207f))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(593f + 2662f), -164f, _wgslsmith_f_op_f32(f32(-1f) * -1414f), _wgslsmith_f_op_f32(round(-437f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -521f), 1073f, -1681f, -1000f))))));
    global0 = !vec2<bool>(true, !(global2.a | select(global2.a, global2.a, false)));
    var var_1 = global2.b;
    var var_2 = vec3<u32>(~abs(21291u), ~4294967295u, firstTrailingBit(abs(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~_wgslsmith_dot_vec4_i32(min(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_1.a.x, global2.b.a.x, -12930i), global2.b.a), vec4<i32>(-2147483647i, 2147483647i, u_input.b, global3.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(global2.b.a.x, -1i, u_input.b, u_input.b), global2.b.a)), ~firstTrailingBit(~max(vec3<u32>(u_input.a, var_2.x, 27170u), vec3<u32>(u_input.a, 4294967295u, 615u))), 1130f, _wgslsmith_mod_vec4_u32(~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, 4294967295u, 1u), vec4<u32>(u_input.a, 24956u, 0u, u_input.a), vec4<u32>(u_input.a, 15598u, var_2.x, u_input.a))), ~vec4<u32>(~33278u, 29863u, u_input.a, ~0u)));
}

