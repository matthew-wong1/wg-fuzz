struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    global0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(global0.a.x * -661f), 1000f, -1000f));
    let var_0 = _wgslsmith_f_op_vec2_f32(-global0.a.xz);
    global0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(328f + -1415f), global0.a.x), global0.a.x, select(true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1830f) + _wgslsmith_f_op_f32(f32(-1f) * -1666f)) + _wgslsmith_f_op_f32(trunc(139f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a.x - -129f)))))));
    global0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-284f, var_0.x, _wgslsmith_f_op_f32(814f - 737f)) - global0.a), _wgslsmith_f_op_vec3_f32(-global0.a)));
    global0 = Struct_2(global0.a);
    return -1809f;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> vec4<f32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1432f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), 946f)) + _wgslsmith_f_op_f32(max(global0.a.x, 2483f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1100f, 230f)), _wgslsmith_f_op_f32(f32(-1f) * -893f))) * _wgslsmith_div_f32(487f, _wgslsmith_f_op_f32(sign(-1367f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - 807f)), 1f)));
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(~(-arg_1), ~(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(arg_1, 1i, u_input.c.x)) << (u_input.b % 32u))), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.a, 0i, 28354i)), -21333i), -(i32(-1i) * -1i)));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0, 755f))), true && all(vec4<bool>(false, false, false, true))))));
    let var_3 = !(!(~12286u > abs(u_input.b)) | false);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-266f))) - _wgslsmith_f_op_f32(-var_0)), arg_0.x, _wgslsmith_f_op_f32(1452f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - 664f))), _wgslsmith_f_op_f32(step(1995f, _wgslsmith_f_op_f32(sign(arg_0.x)))));
}

fn func_1() -> vec2<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0.a)))))));
    var var_1 = !(true == (1000f >= _wgslsmith_f_op_f32(sign(global0.a.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_div_vec3_f32(global0.a, var_0.a), _wgslsmith_add_i32(-1i, firstLeadingBit(u_input.c.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -1299f, global0.a.x, -1598f) + vec4<f32>(-964f, 1502f, var_0.a.x, var_0.a.x)), vec4<f32>(332f, 243f, 731f, 458f)) - vec4<f32>(_wgslsmith_f_op_f32(global0.a.x - -166f), _wgslsmith_f_op_f32(abs(299f)), _wgslsmith_f_op_f32(floor(-400f)), -1000f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -498f), _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(-130f + 477f)), 196f, _wgslsmith_f_op_f32(-global0.a.x))))));
    let var_3 = Struct_3(-392f, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(global0.a.x * global0.a.x)))), var_2.wx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global0.a.x))))), u_input.c.zz, true));
    var var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec4_f32(func_2(global0.a, _wgslsmith_dot_vec2_i32(var_3.b.d, u_input.c.xy))).ywz)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.a.x)), -1086f, _wgslsmith_f_op_f32(global0.a.x - -456f))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1748f), 527f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.a.x)), var_0.a.x)), _wgslsmith_f_op_vec3_f32(-global0.a))), select(vec3<bool>(true, var_3.b.e, any(select(vec2<bool>(var_3.b.e, false), vec2<bool>(var_3.b.e, false), true))), select(select(select(vec3<bool>(true, var_3.b.e, var_3.b.e), vec3<bool>(true, true, true), var_3.b.e), vec3<bool>(true, var_3.b.e, false), true), vec3<bool>(var_3.b.e || true, var_3.b.e, !var_3.b.e), !(!vec3<bool>(true, var_3.b.e, true))), vec3<bool>(true, _wgslsmith_f_op_f32(min(840f, global0.a.x)) < var_3.b.c, all(select(vec2<bool>(false, false), vec2<bool>(var_3.b.e, true), true))))));
    return var_2.zw;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(869f, global0.a.x, global0.a.x)))))));
    let var_0 = u_input.b & _wgslsmith_div_u32(abs(3685u), ~u_input.b);
    var var_1 = countOneBits(u_input.a);
    let var_2 = _wgslsmith_clamp_vec2_i32(-reverseBits(u_input.c.zz), ~countOneBits(~vec2<i32>(2147483647i, 0i)), u_input.c.xz);
    var_1 = i32(-1i) * -(min(-2147483647i, firstTrailingBit(var_2.x)) << (1u % 32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.yx) - _wgslsmith_f_op_vec2_f32(func_1()));
    var_1 = 14000i;
    var_3 = global0.a.zx;
    var_1 = -(i32(-1i) * -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(var_2.x, 24788i, -45181i, var_2.x), vec4<i32>(1i, max(-1i, -10127i), -8277i, ~(-2147483647i))), max(vec4<i32>(-1830i, 20899i, var_2.x, var_2.x) << (vec4<u32>(0u, u_input.b, u_input.b, var_0) % vec4<u32>(32u)), vec4<i32>(-1i, var_2.x, -8023i, 2147483647i) >> (vec4<u32>(var_0, var_0, var_0, 24453u) % vec4<u32>(32u))) ^ vec4<i32>(~1i, 1i, ~var_2.x, 1i), ~(~(vec4<i32>(u_input.c.x, u_input.a, var_2.x, var_2.x) | vec4<i32>(-1i, -728i, 2147483647i, u_input.c.x)))), abs(-countOneBits(u_input.c.xz)), select(-42317i, _wgslsmith_add_i32(u_input.a & ~u_input.a, 0i), select(true, false, true)), vec4<i32>(-2147483647i, abs(max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 0i, 1i, var_2.x), vec4<i32>(18930i, var_2.x, 5154i, var_2.x)), var_2.x)), var_2.x, var_2.x << (1u % 32u)));
}

