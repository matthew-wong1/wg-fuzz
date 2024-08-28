struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 458f;

var<private> global1: i32;

var<private> global2: array<Struct_2, 20>;

var<private> global3: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> f32 {
    global1 = -26263i;
    global0 = -176f;
    global1 = _wgslsmith_div_i32(-2722i, -17497i);
    let var_0 = i32(-1i) * -8188i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-344f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -900f), -1025f))));
    return var_1;
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = vec4<bool>(all(!vec3<bool>(false, any(vec2<bool>(true, false)), any(vec3<bool>(true, false, false)))), any(select(vec3<bool>(true, false, all(vec2<bool>(true, true))), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, false), true), vec3<bool>(false, true, false))), true, !(u_input.c.x == (arg_0.a.x ^ 4294967295u)));
    var var_1 = Struct_2(select(vec3<bool>(!select(var_0.x, true, var_0.x), select(var_0.x, true, true), _wgslsmith_add_i32(arg_0.d, 26831i) > countOneBits(arg_0.c)), !vec3<bool>(any(vec4<bool>(var_0.x, true, var_0.x, true)), var_0.x, true), var_0.xwy), false, Struct_1(vec4<u32>(select(arg_0.a.x & u_input.c.x, _wgslsmith_clamp_u32(arg_0.a.x, arg_0.a.x, arg_0.a.x), true), ~(~22081u), ~(~arg_0.a.x), ~4294967295u), 1089f, u_input.b, -1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, -282f, arg_0.e.x)))))), ~firstLeadingBit(~vec3<u32>(9441u, arg_0.a.x, arg_0.a.x)));
    global0 = _wgslsmith_f_op_f32(-arg_0.b);
    let var_2 = Struct_3(~vec3<i32>(~(-1i << (arg_0.a.x % 32u)), countOneBits(-27219i), arg_0.d));
    var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, var_1.d.x >> (countOneBits(_wgslsmith_add_u32(~0u, u_input.c.x)) % 32u)), 20u)];
    return i32(-1i) * -2147483647i;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<f32>) -> vec3<i32> {
    global2 = array<Struct_2, 20>();
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(arg_2));
    let var_1 = abs(func_3(Struct_1(_wgslsmith_div_vec4_u32(arg_0, _wgslsmith_clamp_vec4_u32(arg_0, arg_0, vec4<u32>(27818u, 0u, 23653u, 1051u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - 1f), arg_1, ~max(2147483647i, 2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 634f, 644f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 391f, var_0.x) - vec3<f32>(-171f, arg_2.x, arg_2.x))))));
    var var_2 = select(reverseBits(arg_0), vec4<u32>(29362u, 0u, u_input.c.x, arg_0.x) & arg_0, false);
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-383f, var_0.x, 698f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-364f))))));
    return reverseBits(vec3<i32>(-(-28977i | u_input.d.x), -abs(arg_1), _wgslsmith_mult_i32(arg_1, ~(-43585i))) << (firstTrailingBit(~u_input.a) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = global2[_wgslsmith_index_u32(arg_1.a.x, 20u)];
    return !var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-789f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))));
    var var_0 = select(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), u_input.a.x < u_input.a.x), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))), vec3<bool>(any(vec3<bool>(true, any(vec2<bool>(false, true)), u_input.e < 48268i)), false, false), !(!(~0u <= u_input.a.x)));
    global0 = 791f;
    var_0 = !func_4(func_2(~vec4<u32>(u_input.c.x, 1u, u_input.a.x, 21234u) ^ ~vec4<u32>(u_input.c.x, 57942u, 8394u, 1u), u_input.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(950f, 580f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-464f, 415f)))), Struct_1(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4294967295u) & select(vec4<u32>(0u, 21326u, 28993u, u_input.a.x), vec4<u32>(2214u, u_input.c.x, u_input.a.x, 59516u), true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1144f, 623f) * 2026f), reverseBits(2147483647i), ~_wgslsmith_clamp_i32(-18396i, 2147483647i, u_input.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(259f, 1000f, -245f)))));
    let var_1 = _wgslsmith_mod_i32(countOneBits(-1i), u_input.b);
    var_0 = func_4(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(select(vec3<i32>(-756i, 2147483647i, -24086i), vec3<i32>(18676i, -1i, 2147483647i), vec3<bool>(var_0.x, var_0.x, false)), vec3<i32>(-15793i, u_input.d.x, var_1) | vec3<i32>(var_1, var_1, 4109i), firstLeadingBit(vec3<i32>(u_input.d.x, u_input.b, u_input.b))), Struct_1(vec4<u32>(96723u, 53172u, 50015u, ~4294967295u), -1080f, _wgslsmith_sub_i32(~firstTrailingBit(u_input.d.x), -u_input.e), u_input.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1352f, -1027f, 422f) + vec3<f32>(-641f, 790f, 1054f))))));
    let var_2 = Struct_1(min(~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(91093u, 38307u, u_input.c.x, u_input.a.x), vec4<u32>(u_input.c.x, 0u, u_input.c.x, 67774u), vec4<u32>(85771u, u_input.c.x, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, 1u, u_input.c.x, u_input.a.x) ^ vec4<u32>(1u, u_input.a.x, 1u, 2734u)), vec4<u32>(u_input.a.x, ~0u, u_input.a.x, firstLeadingBit(u_input.a.x)) | ((vec4<u32>(u_input.c.x, 0u, 4294967295u, 4294967295u) >> (vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))) << (max(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 104833u), vec4<u32>(1u, u_input.a.x, u_input.c.x, 1u)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1617f + -527f) * 630f)), ~u_input.e, -_wgslsmith_mult_i32(u_input.d.x >> (~u_input.c.x % 32u), var_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-667f, 478f, 385f)))));
    let x = u_input.a;
    s_output = StorageBuffer(569f);
}

