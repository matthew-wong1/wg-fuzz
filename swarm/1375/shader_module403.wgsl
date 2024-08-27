struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 23136u;

var<private> global1: bool = false;

var<private> global2: array<vec2<i32>, 19>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<u32>) -> bool {
    var var_0 = Struct_2(Struct_1(min(~max(arg_2, vec2<u32>(arg_2.x, arg_2.x)), _wgslsmith_sub_vec2_u32(abs(arg_0.a), vec2<u32>(arg_2.x, arg_0.a.x))), arg_0.b, firstLeadingBit(_wgslsmith_add_i32(abs(17320i), countOneBits(-15108i))), ~(~(~arg_0.d)), arg_0.e), countOneBits(reverseBits(min(vec4<i32>(arg_0.c, 1i, 37467i, 1i), vec4<i32>(u_input.a.x, 1i, arg_0.c, u_input.a.x)))) ^ max(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -25270i) >> (arg_0.d % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(arg_0.c, arg_0.c, -38233i, u_input.a.x)), vec4<i32>(u_input.a.x, -1i, 25478i, u_input.a.x) | vec4<i32>(9194i, -2147483647i, arg_0.c, arg_0.c)), ~(~vec4<i32>(-2147483647i, -10970i, u_input.a.x, -2778i))), arg_1, u_input.a.x);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-151f, var_0.a.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))), -485f, arg_1.x, arg_0.b.x);
    var var_2 = arg_0;
    let var_3 = Struct_3(Struct_1(_wgslsmith_mod_vec2_u32(abs(firstTrailingBit(var_2.a)), reverseBits(var_0.a.a >> (vec2<u32>(3944u, u_input.b) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(var_1.zzz * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1), var_0.a.b, select(vec3<bool>(var_2.e, false, false), vec3<bool>(arg_0.e, false, arg_0.e), false)))), 1i, ~vec4<u32>(4294967295u, 4294967295u, 104219u ^ var_2.a.x, 88828u), !(arg_0.e | false) || all(select(vec3<bool>(arg_0.e, var_0.a.e, var_0.a.e), vec3<bool>(arg_0.e, var_0.a.e, false), var_2.e))), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_2.b.x)))), var_2.b.x)) + _wgslsmith_f_op_f32(-var_1.x)));
    global0 = firstTrailingBit(_wgslsmith_sub_u32(~u_input.b, 0u));
    return !all(select(vec2<bool>(true, var_2.e), vec2<bool>(var_3.a.e, all(vec3<bool>(arg_0.e, arg_0.e, true))), any(!vec4<bool>(false, true, true, var_0.a.e))));
}

fn func_2() -> i32 {
    global1 = false;
    global0 = _wgslsmith_clamp_u32(~35400u, ~100586u ^ (~(4294967295u ^ u_input.b) ^ u_input.b), firstTrailingBit(8665u << (1u % 32u)));
    let var_0 = select(select(vec3<bool>(func_3(Struct_1(vec2<u32>(u_input.b, u_input.b), vec3<f32>(137f, -611f, 634f), u_input.a.x, vec4<u32>(1u, 4294967295u, u_input.b, u_input.b), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-802f, 1025f, 1000f)), ~vec2<u32>(0u, u_input.b)), !all(vec3<bool>(true, true, true)), all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))), vec3<bool>(select(all(vec4<bool>(false, true, false, false)), any(vec2<bool>(false, false)), true), true, true), true), vec3<bool>(false, any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true)))), true), true);
    global0 = _wgslsmith_dot_vec3_u32(select(vec3<u32>(firstTrailingBit(u_input.b), ~u_input.b, min(u_input.b, u_input.b)), ~vec3<u32>(u_input.b, u_input.b, u_input.b), true), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(u_input.b, 12464u, 32442u)) << (_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(5516u, u_input.b, 8395u), vec3<u32>(4294967295u, u_input.b, 11122u)), vec3<u32>(1u, u_input.b, u_input.b)) % vec3<u32>(32u))) ^ (~u_input.b ^ ((u_input.b | u_input.b) << (13130u % 32u)));
    global0 = ~_wgslsmith_div_u32(u_input.b, 428u) & select(min(~1u, ~21623u), u_input.b, false);
    return _wgslsmith_clamp_i32(firstLeadingBit(~(~11080i)), u_input.a.x, i32(-1i) * -firstLeadingBit(firstLeadingBit(u_input.a.x)));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> bool {
    global1 = !(4281u >= ~(~u_input.b));
    var var_0 = -func_2() << (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, arg_1.x), arg_1.xx), ~arg_1.xy), ~(~arg_1.xw)), _wgslsmith_mult_u32(~27494u | _wgslsmith_sub_u32(arg_1.x, 1u), _wgslsmith_dot_vec3_u32(firstTrailingBit(arg_1.wzw), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_1.x, 18890u), vec3<u32>(22846u, u_input.b, arg_1.x))))) % 32u);
    let var_1 = Struct_3(Struct_1(~vec2<u32>(0u, arg_1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1709f, -875f, -1065f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(463f, -1000f, 204f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-145f, 339f, 623f)))), u_input.a.x, abs(_wgslsmith_add_vec4_u32(firstLeadingBit(arg_1), arg_1)), select(~38821u >= reverseBits(u_input.b), false, select(true, true, all(vec3<bool>(false, true, false))))), Struct_1(~arg_1.zw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-522f, -182f, -157f))))), arg_0, _wgslsmith_mod_vec4_u32(~(~arg_1), vec4<u32>(4294967295u, 0u, arg_1.x ^ 0u, _wgslsmith_dot_vec2_u32(arg_1.yx, arg_1.xw))), any(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true))), 361f);
    global1 = var_1.b.e;
    var var_2 = Struct_1(~_wgslsmith_div_vec2_u32(reverseBits(~vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(var_1.b.a.x, 60788u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.b.b), var_1.b.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a.b + vec3<f32>(-1000f, -234f, 626f))), var_1.b.e)), abs(func_2()), select(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, arg_1.x, u_input.b), var_1.b.d), firstLeadingBit(arg_1), true != var_1.b.e), 58324u != u_input.b);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(_wgslsmith_add_u32(u_input.b, 32197u << (u_input.b % 32u))) >> (u_input.b % 32u);
    let var_0 = select(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), all(vec2<bool>(false, true)))), select(select(vec3<bool>(u_input.b >= u_input.b, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true), vec3<bool>(~u_input.b >= 4294967295u, true, func_1(1i, vec4<u32>(2742u, 1u, u_input.b, u_input.b))), vec3<bool>(false, func_3(Struct_1(vec2<u32>(56393u, 33789u), vec3<f32>(1000f, -1455f, -2056f), u_input.a.x, vec4<u32>(1u, 4294967295u, u_input.b, 25500u), false), vec3<f32>(383f, -844f, -493f), firstTrailingBit(vec2<u32>(u_input.b, u_input.b))), false)), !select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    global2 = array<vec2<i32>, 19>();
    let var_1 = _wgslsmith_div_i32(u_input.a.x, abs(func_2()));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b, u_input.b), 19u)];
    let var_3 = var_0.x;
    var_2 = select(select(-u_input.a, vec2<i32>(var_1, _wgslsmith_sub_i32(var_1, 4585i) & ~u_input.a.x), !vec2<bool>(true, u_input.b > u_input.b)), countOneBits(~((vec2<i32>(1i, var_2.x) ^ u_input.a) ^ ~u_input.a)), !var_0.xz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(266f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(477f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-727f)) * _wgslsmith_f_op_f32(ceil(-2301f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1493f, 161f), vec2<f32>(-538f, -616f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1164f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -2478f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(766f, -119f))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(179f - 230f), _wgslsmith_div_f32(1060f, 233f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1294f, -179f)), _wgslsmith_f_op_f32(ceil(108f)))))), _wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(2147483647i, 2147483647i, var_2.x)), firstLeadingBit(vec3<i32>(2147483647i, u_input.a.x, -2147483647i)))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(11051i, var_2.x), reverseBits(var_2.x), var_1), -vec3<i32>(var_1, 28608i, var_2.x) << (abs(vec3<u32>(21877u, 4294967295u, u_input.b)) % vec3<u32>(32u)))));
}

