struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 26> = array<i32, 26>(43856i, 41919i, 2147483647i, 0i, i32(-2147483648), -25533i, 1i, i32(-2147483648), i32(-2147483648), -1i, -12245i, 1i, 1i, 27567i, i32(-2147483648), -14983i, 0i, 2147483647i, 943i, -1i, 1i, 2147483647i, 43142i, 69566i, 0i, i32(-2147483648));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    var var_0 = Struct_2(Struct_1(-1613f, false, vec2<bool>(true, 12141i > u_input.a)), Struct_1(2050f, true, select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), false), select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(false, true)))), abs(vec3<i32>(u_input.a, arg_0, ~global1[_wgslsmith_index_u32(1u, 26u)]) >> (vec3<u32>(~4698u, 1u, 4294967295u) % vec3<u32>(32u))), u_input.b, firstLeadingBit(~reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(60830u, 26u)], -1i, -1i, u_input.c.x), vec4<i32>(-2595i, 23344i, global1[_wgslsmith_index_u32(0u, 26u)], u_input.c.x)))));
    let var_1 = 0u;
    var var_2 = var_0.a;
    let var_3 = var_2.a;
    let var_4 = global1[_wgslsmith_index_u32(22822u, 26u)];
    return vec4<i32>(u_input.c.x, max(~arg_0 << (~70868u % 32u), min(abs(global1[_wgslsmith_index_u32(min(var_1, 1u), 26u)]), ~(i32(-1i) * -7795i))), 0i, var_0.c.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: bool) -> vec4<i32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + -260f));
    return -vec4<i32>(_wgslsmith_dot_vec4_i32(func_3(global1[_wgslsmith_index_u32(firstTrailingBit(65620u), 26u)]), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, arg_1.x, u_input.b.x, 1i), vec4<i32>(0i, arg_1.x, -2147483647i, arg_1.x)), max(vec4<i32>(-18227i, u_input.b.x, -1766i, arg_1.x), vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(0u, 26u)], 3006i, arg_1.x)))), arg_1.x, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(55797u, 47750u, 25041u), _wgslsmith_add_vec3_u32(vec3<u32>(71793u, 2346u, 87256u), vec3<u32>(45692u, 0u, 1u))), 26u)], global1[_wgslsmith_index_u32(0u, 26u)] ^ ~(u_input.a >> (4294967295u % 32u)));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_clamp_vec4_i32(reverseBits(~func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(296f, -545f, 1000f)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.c.x), u_input.c.yy, u_input.b), true)), ~vec4<i32>(_wgslsmith_mod_i32(-62928i, 2147483647i), -346i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-30197i, -1i, -2147483647i), u_input.c), u_input.b.x), ((vec4<i32>(-1i) * -vec4<i32>(u_input.a, 3883i, global1[_wgslsmith_index_u32(31728u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)])) << (~max(vec4<u32>(1u, 4294967295u, 49273u, 58773u), vec4<u32>(0u, 1u, 35236u, 83856u)) % vec4<u32>(32u))) & _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(4510u, 26u)], u_input.c.x, 30362i, u_input.c.x)), (vec4<i32>(-1i, -2147483647i, global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)]) & vec4<i32>(global1[_wgslsmith_index_u32(2220u, 26u)], u_input.a, u_input.a, 1i)) | (vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], -28187i, -2147483647i, 0i) ^ vec4<i32>(global1[_wgslsmith_index_u32(40148u, 26u)], -9380i, 39746i, u_input.a))));
    let var_1 = _wgslsmith_div_i32(global1[_wgslsmith_index_u32(reverseBits(1u), 26u)] << (~firstLeadingBit(6591u) % 32u), countOneBits(global1[_wgslsmith_index_u32(firstLeadingBit(1u) >> (abs(1u) % 32u), 26u)]));
    var_0 = select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1, ~u_input.c.x, var_1, firstTrailingBit(countOneBits(var_1))), -vec4<i32>(-u_input.c.x, u_input.a, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.c.x, global1[_wgslsmith_index_u32(1u, 26u)])), ~53729i), vec4<i32>(_wgslsmith_div_i32(~(-4453i), _wgslsmith_div_i32(15516i, -14624i)), -14496i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2788i, var_0.x, -4088i), vec4<i32>(-1i, var_0.x, 13589i, -29328i)), -39302i), var_0.x << (_wgslsmith_mod_u32(1u, 215u) % 32u))), min(countOneBits(select(vec4<i32>(var_0.x, 1i, 65950i, -13605i), vec4<i32>(global1[_wgslsmith_index_u32(18269u, 26u)], var_0.x, -43540i, 23668i), true) ^ (vec4<i32>(var_1, var_1, -1i, var_0.x) << (vec4<u32>(27294u, 1u, 16190u, 0u) % vec4<u32>(32u)))), abs(select(vec4<i32>(u_input.b.x, 2532i, var_1, var_0.x), vec4<i32>(2147483647i, 1i, -2147483647i, -1i), vec4<bool>(false, true, false, true)) << (vec4<u32>(4294967295u, 31039u, 4294967295u, 9447u) % vec4<u32>(32u)))), select(!vec4<bool>(false, true, any(vec3<bool>(false, false, false)), any(vec3<bool>(true, true, false))), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true)), true));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1363f, 872f)) - _wgslsmith_f_op_f32(min(1167f, -506f))))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-982f, -514f)), _wgslsmith_f_op_f32(f32(-1f) * -115f)))))), true, select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 26>();
    global1 = array<i32, 26>();
    global0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(821f)));
    global0 = _wgslsmith_f_op_f32(max(307f, _wgslsmith_f_op_f32(-1378f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -577f) + -236f))))));
    var var_0 = -(vec4<i32>(_wgslsmith_mod_i32(59069i, 2147483647i | u_input.c.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(47113u, 65459u, 71471u)), ~vec3<u32>(0u, 1u, 4294967295u)), 26u)], countOneBits(1i), ~8706i) & reverseBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b.x, -2147483647i, global1[_wgslsmith_index_u32(1u, 26u)], -9925i), ~vec4<i32>(u_input.a, u_input.a, -66307i, global1[_wgslsmith_index_u32(4294967295u, 26u)]))));
    var var_1 = Struct_3(true, func_1());
    var var_2 = select(!(!select(!vec4<bool>(var_1.a, var_1.a, false, true), vec4<bool>(var_1.a, false, var_1.b, true), true)), !(!(!vec4<bool>(var_1.b, true, var_1.a, var_1.a))), !select(vec4<bool>(true, false, false, true), select(!vec4<bool>(var_1.b, var_1.a, false, false), !vec4<bool>(var_1.a, true, false, true), select(vec4<bool>(var_1.b, false, true, false), vec4<bool>(var_1.a, false, var_1.a, var_1.b), true)), (var_0.x ^ -4607i) == var_0.x));
    let var_3 = !vec3<bool>(func_1(), false, select(!any(vec2<bool>(var_2.x, var_2.x)), 2799f > _wgslsmith_f_op_f32(trunc(1029f)), !var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1552f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1517f))), -1i == (global1[_wgslsmith_index_u32(0u, 26u)] ^ var_0.x))))), _wgslsmith_f_op_f32(trunc(-1000f)));
}

