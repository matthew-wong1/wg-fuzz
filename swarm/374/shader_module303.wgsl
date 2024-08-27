struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = _wgslsmith_div_f32(-1184f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0)))), arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-211f, _wgslsmith_f_op_f32(sign(arg_0))))), !any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)))));
    let var_1 = 18580u | max(1u, u_input.c.x);
    var var_2 = ~firstLeadingBit(u_input.c | abs(~vec4<u32>(24070u, u_input.c.x, 16707u, 1u)));
    let var_3 = Struct_1(~(vec2<u32>(u_input.c.x, ~1u) & (~var_2.zx ^ vec2<u32>(var_2.x, 557u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1869f, arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1601f, arg_0)))), vec2<bool>(true, all(vec3<bool>(false, true, true))))) * vec2<f32>(-332f, var_0)), vec2<bool>(!select(true, false, select(false, true, false)), 2147483647i > u_input.b.x));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, arg_0, var_3.b.x, 907f));
    return 1i;
}

fn func_4(arg_0: f32, arg_1: i32) -> vec2<u32> {
    let var_0 = Struct_1(u_input.c.zw, vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-1f)), vec2<bool>(!all(vec2<bool>(true, false)) || true, any(vec4<bool>(true, true, true, true))));
    let var_1 = var_0;
    let var_2 = ~17117u;
    let var_3 = var_1;
    var var_4 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.b)))));
    return ~vec2<u32>(_wgslsmith_mult_u32(abs(~4294967295u), 8160u), var_1.a.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-275f, _wgslsmith_f_op_f32(-var_0.b.x)))) * var_0.b);
    let var_2 = Struct_1(func_4(var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(func_3(1050f), 0i, 9601i), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 36896i, arg_1.x), min(vec3<i32>(u_input.a.x, -2147483647i, 36565i), vec3<i32>(14693i, 0i, u_input.d))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_2)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, arg_2.x)) * _wgslsmith_f_op_vec2_f32(sign(arg_2))), vec2<f32>(1541f, _wgslsmith_f_op_f32(-var_1.x))))), arg_3.c);
    var var_3 = u_input.c.wyw;
    var_3 = max(_wgslsmith_add_vec3_u32(u_input.c.xzz, _wgslsmith_div_vec3_u32(u_input.c.wxz, u_input.c.yxz)) | firstLeadingBit(vec3<u32>(~4294967295u, var_2.a.x, _wgslsmith_mod_u32(arg_3.a.x, arg_3.a.x))), ~(u_input.c.wwz >> (vec3<u32>(27279u, select(arg_3.a.x, 5723u, var_2.c.x), ~1u) % vec3<u32>(32u))));
    return arg_1.x;
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: i32) -> i32 {
    return -2147483647i;
}

fn func_6(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<u32>) -> Struct_1 {
    return Struct_1(firstLeadingBit(vec2<u32>(u_input.c.x ^ 1066u, firstTrailingBit(27868u)) >> (func_4(_wgslsmith_f_op_f32(f32(-1f) * -338f), arg_1.x) % vec2<u32>(32u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-316f, -582f) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(999f, -293f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-800f, -266f))))), vec2<bool>(any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), true)), true && all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = u_input.c;
    let var_1 = func_6(func_5(_wgslsmith_add_i32(_wgslsmith_mod_i32(arg_1, -47715i) ^ u_input.e.x, arg_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_3.b.x + arg_2.b.x), arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-614f, arg_0.b.x, 171f)))), reverseBits(u_input.b.yz), func_2(-vec3<i32>(-23306i, -17677i, 39340i), vec3<i32>(-1i, 56450i, u_input.a.x), _wgslsmith_f_op_vec2_f32(sign(arg_3.b)), Struct_1(vec2<u32>(u_input.c.x, arg_2.a.x), vec2<f32>(334f, arg_3.b.x), vec2<bool>(false, arg_2.c.x))) ^ _wgslsmith_mult_i32(_wgslsmith_add_i32(0i, arg_1), u_input.a.x)), u_input.b << (vec4<u32>(max(arg_2.a.x & u_input.c.x, ~arg_2.a.x), 4294967295u, reverseBits(1u), abs(1u)) % vec4<u32>(32u)), abs(vec3<u32>(arg_3.a.x, 67314u, _wgslsmith_mod_u32(arg_0.a.x, arg_0.a.x))) << (vec3<u32>(0u, var_0.x, 0u) % vec3<u32>(32u)));
    var var_2 = true;
    let var_3 = arg_3;
    let var_4 = !(!arg_2.c);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(func_6(func_2(-u_input.b.zyz, abs(u_input.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1026f, 391f)), var_3), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 2147483647i, u_input.b.x, 51646i), -u_input.b), ~var_0.zwz).b.x, _wgslsmith_div_f32(arg_2.b.x, var_3.b.x), arg_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<u32>(2012u, u_input.c.x), vec2<f32>(2824f, 346f), vec2<bool>(true, true)), 10321i, Struct_1(vec2<u32>(u_input.c.x, u_input.c.x), vec2<f32>(-2399f, -1088f), vec2<bool>(false, true)), Struct_1(u_input.c.yy, vec2<f32>(117f, -383f), vec2<bool>(false, true)))) - func_6(u_input.e.x, vec4<i32>(u_input.b.x, 21344i, u_input.b.x, u_input.b.x), u_input.c.yxz).b.x), -1606f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(445f, -1945f))))), func_6(func_3(_wgslsmith_f_op_f32(f32(-1f) * -453f)), select(vec4<i32>(-1i, u_input.b.x, 2147483647i, u_input.e.x), vec4<i32>(-58207i, -2147483647i, u_input.e.x, -346i), true), ~(~u_input.c.xxw)).b.x));
    let var_1 = _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_sub_u32(~(~(~1u)), u_input.c.x));
    var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1504f, _wgslsmith_f_op_f32(f32(-1f) * -269f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-718f, var_0.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(var_0.x, -1332f))) * vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), 1000f)) + vec2<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, 606f, ~vec3<u32>(~var_1, _wgslsmith_mult_u32(var_1, 1592u), 75809u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1938f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-726f, var_0.x))))));
}

