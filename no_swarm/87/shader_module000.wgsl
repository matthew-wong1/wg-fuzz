struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>((u_input.b.x ^ u_input.a.x) | -2147483647i, -u_input.d.x ^ _wgslsmith_mult_i32(u_input.d.x, u_input.e), u_input.b.x, countOneBits(u_input.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(43864i, -30833i, 2147483647i, -2147483647i) & u_input.b, firstLeadingBit(u_input.d) | vec4<i32>(-13456i, u_input.d.x, u_input.a.x, u_input.e))), ~(-vec4<i32>(u_input.a.x, i32(-1i) * -8312i, u_input.e, u_input.d.x)), u_input.d);
    var_0 = vec4<i32>(-1i, -4414i, var_0.x, var_0.x);
    var var_1 = vec2<bool>(true, 13097u > (arg_0.b.a.x & _wgslsmith_sub_u32(min(37839u, arg_3.a.x), abs(u_input.c.x))));
    var_1 = !select(!(!(!vec2<bool>(var_1.x, var_1.x))), vec2<bool>(false, true), !var_1.x);
    var_1 = !select(!(!select(vec2<bool>(arg_1, false), vec2<bool>(true, arg_1), false)), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(arg_1, arg_1)), !vec2<bool>(arg_1, false), vec2<bool>(any(vec4<bool>(var_1.x, true, false, var_1.x)), false)), !(!select(vec2<bool>(arg_1, var_1.x), vec2<bool>(true, true), vec2<bool>(var_1.x, false))));
    return false;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: u32) -> f32 {
    let var_0 = -(vec3<i32>(u_input.b.x, 2147483647i, abs(-20133i << (arg_2 % 32u))) >> (abs(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(0u, arg_2, u_input.c.x), u_input.c), vec3<u32>(37074u, arg_2, arg_2), u_input.c | vec3<u32>(44663u, u_input.c.x, 0u))) % vec3<u32>(32u)));
    let var_1 = Struct_1(~u_input.c.zy, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(703f - arg_0), _wgslsmith_f_op_f32(-arg_0), arg_0)))));
    let var_2 = !(!vec4<bool>(arg_1.x, true, false, arg_1.x));
    var var_3 = all(vec2<bool>(func_3(Struct_2(var_1, var_1, select(u_input.c.xx, u_input.c.xx, false), Struct_1(vec2<u32>(u_input.c.x, arg_2), vec4<f32>(arg_0, -967f, arg_0, 1665f))), arg_1.x, _wgslsmith_div_vec3_f32(var_1.b.yxy, vec3<f32>(1428f, -651f, -766f)), var_1), false | (true && var_2.x)));
    var var_4 = !(((1i & ~u_input.b.x) >> (1u % 32u)) <= (_wgslsmith_clamp_i32(u_input.b.x, -27259i, firstLeadingBit(-34658i)) | _wgslsmith_mult_i32(-2147483647i | u_input.b.x, abs(1i))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(797f, _wgslsmith_f_op_f32(f32(-1f) * -149f))), -444f, false));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = -2147483647i;
    var var_1 = arg_1.a.b.xwz;
    var var_2 = _wgslsmith_mult_u32(u_input.c.x, 6845u & firstTrailingBit(u_input.c.x));
    var_1 = arg_0.yxw;
    var_2 = 1u;
    return Struct_2(arg_1.a, arg_1.a, _wgslsmith_add_vec2_u32(u_input.c.yz, u_input.c.yx), arg_1.a);
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -892f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    var var_2 = func_4(vec4<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(var_0 - var_0)), !select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), arg_0), 4294967295u)), -1052f), Struct_3(Struct_1(~(u_input.c.zx & u_input.c.xy), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -1256f, 2705f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -194f, -1000f, 167f) * vec4<f32>(var_0, var_0, 2431f, var_0))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(511f, var_0) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1407f, -495f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, var_0)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-243f, -488f)))));
    return func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.b.x, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -391f), -574f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.b.b.x, 810f, var_0)) + vec4<f32>(var_0, var_0, -324f, var_0))) - var_2.b.b), Struct_3(func_4(vec4<f32>(var_2.b.b.x, var_2.b.b.x, -516f, _wgslsmith_f_op_f32(trunc(-350f))), Struct_3(var_2.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.d.b.x, var_0))))).b), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(ceil(-214f)), !vec2<bool>(false, arg_0), ~u_input.c.x)) + _wgslsmith_div_f32(1340f, _wgslsmith_f_op_f32(round(var_2.a.b.x)))), 2175f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, ~((select(vec4<i32>(-34349i, 19855i, 0i, -1i), vec4<i32>(-2147483647i, 719i, u_input.a.x, u_input.a.x), vec4<bool>(false, true, true, true)) >> (select(vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(32465u, u_input.c.x, 1u, u_input.c.x), true) % vec4<u32>(32u))) << (~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u))));
    var var_1 = ~(13265u >> (~(~func_4(var_0.b.b, Struct_3(var_0.a), var_0.d.b.yx).d.a.x) % 32u));
    var var_2 = vec2<bool>(false, true);
    let var_3 = _wgslsmith_sub_vec3_i32(countOneBits(firstLeadingBit(u_input.a)) >> (vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.b.a.x, 4294967295u), ~0u), var_0.b.a.x, firstLeadingBit(20703u)) % vec3<u32>(32u)), reverseBits(u_input.b.wwz));
    var var_4 = Struct_4(any(vec4<bool>(var_2.x, (var_3.x == 13636i) | all(vec2<bool>(true, var_2.x)), true, !(!var_2.x))));
    var_0 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-455f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.b.x) - _wgslsmith_f_op_f32(var_0.d.b.x - 1875f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(601f + var_0.d.b.x) + _wgslsmith_f_op_f32(round(var_0.b.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(trunc(var_0.a.b.x))))), Struct_3(var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.b.wx * vec2<f32>(-124f, 451f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(64124u, 4294967295u), abs(vec3<i32>(-2147483647i, _wgslsmith_div_i32(u_input.b.x, var_3.x) << (u_input.c.x % 32u), -countOneBits(u_input.a.x))), _wgslsmith_f_op_f32(min(var_0.d.b.x, var_0.b.b.x)), abs(u_input.e));
}

