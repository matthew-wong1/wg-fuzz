struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = all(select(!vec2<bool>(false, any(vec2<bool>(false, arg_0))), !vec2<bool>(any(vec4<bool>(arg_0, arg_0, false, arg_0)), !arg_0), false));
    let var_1 = Struct_1(true, vec4<f32>(_wgslsmith_div_f32(214f, _wgslsmith_f_op_f32(f32(-1f) * -221f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -332f) + 1271f)), _wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(148f - 130f)) * _wgslsmith_f_op_f32(ceil(-276f)))));
    global0 = _wgslsmith_f_op_f32(ceil(var_1.b.x));
    return arg_0;
}

fn func_2() -> i32 {
    var var_0 = Struct_2(func_3(all(vec4<bool>(true, true, true, true))) || true, Struct_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(floor(-1650f)), -881f, _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(abs(243f)))))), Struct_1(all(vec4<bool>(true, true, true, false)) | true, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2088f, 716f, 123f, -2193f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-492f, 387f, 507f, 1558f))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.b.x, 1235f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b.x) + _wgslsmith_f_op_f32(-2377f - var_0.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(663f, -626f) * _wgslsmith_f_op_f32(-454f + var_0.b.b.x))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
    var var_3 = Struct_2(true, Struct_1(all(vec2<bool>(var_0.a, var_0.a)), _wgslsmith_f_op_vec4_f32(var_0.b.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 892f, -1400f, var_0.b.b.x), var_0.b.b) - var_0.b.b))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + 1000f), 467f)) != _wgslsmith_f_op_f32(-var_0.b.b.x), vec4<f32>(var_0.b.b.x, var_1.x, 1280f, var_1.x)));
    return abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(1i, 1i, 1i), reverseBits(select(~vec3<i32>(-1i, -2147483647i, 0i), abs(vec3<i32>(-1i, 391i, -9310i)), 0u <= u_input.a.x))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(~vec3<u32>(~(13780u ^ u_input.a.x), u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 20585u)), abs(u_input.a.xx), _wgslsmith_div_i32(_wgslsmith_sub_i32(countOneBits(~195i), func_2() << (17090u % 32u)), 1i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -181f), -1028f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1630f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-618f, 1195f))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(712f, -1234f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1889f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-372f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-461f + 897f))), true)), abs(abs(u_input.a.yx)));
    var var_1 = countOneBits(abs(vec2<i32>(-reverseBits(var_0.c), 2147483647i)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482f * _wgslsmith_f_op_f32(-var_0.d.x))) - var_0.d.x);
    let var_3 = var_0.d.x;
    var var_4 = !select(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, var_3 < var_0.d.x, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, false, var_0.e.x > 4294967295u), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<bool>(true, var_0.d.x < var_0.d.x, true));
    return Struct_1(false, vec4<f32>(var_0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3)) - _wgslsmith_f_op_f32(floor(224f))), _wgslsmith_f_op_f32(f32(-1f) * -159f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * _wgslsmith_div_f32(var_3, var_0.d.x))), _wgslsmith_f_op_f32(min(var_3, var_0.d.x))));
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-616f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1119f)) - 103f))) + 1450f);
    let var_0 = Struct_3(_wgslsmith_sub_vec3_u32(~u_input.a, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(61810u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)) >> (~u_input.a.x % 32u), 4294967295u, u_input.a.x)), _wgslsmith_mod_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 0u), max(vec2<u32>(u_input.a.x, 0u), vec2<u32>(1u, 1u)))), vec2<u32>(abs(max(41889u, 19804u)), 27341u)), ~(~0i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b.x, _wgslsmith_f_op_f32(step(1502f, arg_0.b.x)), 191f)), vec2<u32>(1u, 30913u));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-213f * _wgslsmith_f_op_f32(366f - -662f)) - arg_0.b.x);
    return StorageBuffer(firstTrailingBit(reverseBits(vec3<i32>(countOneBits(var_0.c), var_0.c ^ var_0.c, 2147483647i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(334f)))), ~var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1());
}

