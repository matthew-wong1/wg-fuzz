struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(-587f, 924f), vec2<f32>(1197f, 238f), vec2<f32>(-444f, 306f), vec2<f32>(-520f, -231f), vec2<f32>(316f, -1005f), vec2<f32>(1000f, 1452f), vec2<f32>(829f, 475f), vec2<f32>(1000f, 628f), vec2<f32>(149f, -440f), vec2<f32>(-1000f, -390f), vec2<f32>(-623f, -1123f));

var<private> global1: array<vec2<f32>, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    return 1u;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), -1882f);
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-352f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = array<vec2<f32>, 11>();
    let var_1 = ~_wgslsmith_clamp_vec4_i32(firstLeadingBit((vec4<i32>(-1i, arg_3.c, arg_3.c, arg_2.c) << (vec4<u32>(33418u, 0u, arg_2.a.x, 45563u) % vec4<u32>(32u))) | -vec4<i32>(arg_3.c, -6474i, -5021i, -2147483647i)), vec4<i32>(u_input.e.x, u_input.e.x, 0i, 1i) | min(vec4<i32>(15633i, arg_3.c, arg_2.c, 6109i) | vec4<i32>(-1i, arg_2.c, -1i, arg_3.c), vec4<i32>(0i, -37281i, -11508i, -1i) >> (vec4<u32>(u_input.c.x, 38516u, 24163u, 1u) % vec4<u32>(32u))), vec4<i32>(-2147483647i, firstLeadingBit(_wgslsmith_add_i32(-2147483647i, u_input.e.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, arg_3.c, -17212i, u_input.e.x), max(vec4<i32>(arg_2.c, u_input.e.x, arg_2.c, 22335i), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, -26579i))), -12320i));
    let var_2 = vec2<bool>(true, true);
    return var_2.x;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>) -> vec4<bool> {
    global1 = array<vec2<f32>, 1>();
    global1 = array<vec2<f32>, 1>();
    let var_0 = u_input.e.x;
    global0 = array<vec2<f32>, 11>();
    var var_1 = Struct_1(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.a.x, u_input.d.x, 0u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(abs(u_input.b.ywz), _wgslsmith_mult_vec3_u32(u_input.c.zxy, vec3<u32>(51976u, 2909u, u_input.d.x))), ~(~u_input.b.zxz), vec3<u32>(u_input.b.x, _wgslsmith_sub_u32(u_input.c.x, 35243u), ~u_input.d.x))), func_3(vec4<u32>(_wgslsmith_clamp_u32(2419u, 61638u, u_input.b.x), reverseBits(0u), select(u_input.b.x, 0u, arg_0), ~4294967295u) ^ u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-832f, 701f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x)))), Struct_1(abs(firstTrailingBit(vec3<u32>(44311u, u_input.a.x, u_input.c.x))), select(true, true, true), -1i), Struct_1(~vec3<u32>(36965u, 0u, 16466u), !arg_0, var_0 & firstTrailingBit(1i))), _wgslsmith_mod_i32(abs(countOneBits(-7484i) | var_0), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, var_0, u_input.e.x, 19992i), vec4<i32>(u_input.e.x, 1i, u_input.e.x, u_input.e.x)) & (i32(-1i) * -27823i)));
    return vec4<bool>(!(((arg_0 | true) || true) && var_1.b), all(select(vec2<bool>(true, true), select(!vec2<bool>(var_1.b, false), vec2<bool>(var_1.b, arg_0), select(vec2<bool>(false, var_1.b), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false))), select(var_1.b, arg_0, true) | !var_1.b)), any(!vec3<bool>(all(vec2<bool>(true, arg_0)), -910f < arg_1.x, arg_0)), !(1145f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(133f, -195f)) - 694f)));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    var var_0 = select(select(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true))), vec4<bool>(true, func_2(u_input.e.x, Struct_1(u_input.c.wyw, true, -1i), Struct_1(vec3<u32>(u_input.d.x, 1u, 53275u), false, u_input.e.x)) < ~12924u, false, false), vec4<bool>(all(vec3<bool>(false, true, true)) | any(vec2<bool>(false, true)), true, (u_input.e.x != -1i) & true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true))))), func_4(!func_3(u_input.b, _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(765u, 11u)]), Struct_1(u_input.b.zzx, false, u_input.e.x), Struct_1(u_input.c.wyy, true, u_input.e.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-718f, -1416f, -558f)))))), any(vec3<bool>(true, true, true)) || true);
    var var_1 = Struct_1(vec3<u32>(u_input.b.x, select(min(1294u, 0u), u_input.b.x | u_input.d.x, true && var_0.x) | 1u, 1u >> ((u_input.d.x << (~u_input.c.x % 32u)) % 32u)), !all(var_0.zw), 31650i);
    global1 = array<vec2<f32>, 1>();
    let var_2 = Struct_1(select(~u_input.c.wwx, vec3<u32>(1u, u_input.c.x, min(~var_1.a.x, _wgslsmith_div_u32(u_input.b.x, var_1.a.x))), func_4(var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) - vec3<f32>(arg_0, arg_0, arg_0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))).x), true, _wgslsmith_sub_i32(abs(~u_input.e.x << (~4294967295u % 32u)), u_input.e.x));
    let var_3 = Struct_1(var_1.a, true, _wgslsmith_add_i32(u_input.e.x, u_input.e.x));
    return StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, ~1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(37796u, var_2.a.x), countOneBits(0u)), min(vec2<u32>(4294967295u, var_3.a.x), select(u_input.a, u_input.a, vec2<bool>(var_1.b, true))), vec2<u32>(~u_input.c.x, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 1>();
    global0 = array<vec2<f32>, 11>();
    global0 = array<vec2<f32>, 11>();
    global1 = array<vec2<f32>, 1>();
    global1 = array<vec2<f32>, 1>();
    let x = u_input.a;
    s_output = func_1(-1662f);
}

