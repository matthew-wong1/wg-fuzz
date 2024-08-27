struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = Struct_3(~_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.e.x, abs(u_input.e.x), ~u_input.e.x, u_input.e.x), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.e.x, u_input.e.x, u_input.a) | vec4<u32>(u_input.a, u_input.a, 14548u, 38257u), ~vec4<u32>(1u, 31478u, 0u, u_input.e.x))), 1u >= u_input.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1371f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c.x, var_0.c.x)) - _wgslsmith_f_op_f32(105f - -891f)), -470f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c.x)) - -239f)), var_0.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x, 1110f) + vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.c.x)), var_0.c.x, var_0.c.x)))));
    var var_2 = ~(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 11411u), vec2<u32>(46727u, u_input.a)), u_input.a, var_0.a.x, ~reverseBits(20785u)));
    var_0 = Struct_3(select(firstLeadingBit(var_0.a), ~(var_0.a << (var_0.a % vec4<u32>(32u))), !(!vec4<bool>(false, var_0.b, var_0.b, var_0.b))), !all(vec4<bool>(true, !var_0.b, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yz)));
    let var_3 = select(!select(select(vec2<bool>(var_0.b, false), !vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, true), vec2<bool>(false, var_0.b))), !vec2<bool>(var_0.b, true), true), select(vec2<bool>(true, !all(vec2<bool>(true, false))), vec2<bool>(all(select(vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, true), true)), any(select(vec2<bool>(true, false), vec2<bool>(var_0.b, true), true))), true), select(select(vec2<bool>(all(vec2<bool>(var_0.b, true)), var_0.b || var_0.b), vec2<bool>(var_0.b, var_0.b), !vec2<bool>(var_0.b, var_0.b)), !vec2<bool>(true, var_0.b || var_0.b), select(vec2<bool>(true, true), select(vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, true), vec2<bool>(var_0.b, false)), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b))), vec2<bool>(true, true))));
    return ~(~_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.a.x, u_input.e.x), var_0.a.x)) & var_0.a.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: u32, arg_3: vec3<f32>) -> i32 {
    var var_0 = vec2<u32>(countOneBits(2981u) ^ u_input.e.x, func_3()) >> (firstTrailingBit(vec2<u32>(93215u, arg_0.x)) % vec2<u32>(32u));
    let var_1 = Struct_3(arg_0, arg_1.x, _wgslsmith_f_op_vec2_f32(arg_3.xx + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_3.yx)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, 817f) * arg_3.zx))));
    return u_input.c;
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: i32, arg_3: bool) -> i32 {
    var var_0 = arg_3;
    let var_1 = Struct_4(Struct_2(Struct_1(max(~vec4<u32>(23526u, 154u, 0u, u_input.e.x), vec4<u32>(arg_1, arg_1, u_input.a, 11360u)), ~(116237u >> (u_input.a % 32u)), _wgslsmith_mult_u32(u_input.e.x, arg_1)), Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 22077u, 51423u), vec4<u32>(u_input.e.x, 0u, arg_1, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, u_input.a, u_input.e.x, 47526u), vec4<u32>(arg_1, u_input.a, 4294967295u, 68070u))), ~arg_1 >> (~2699u % 32u), 1u), Struct_1(~vec4<u32>(18432u, u_input.e.x, 31934u, arg_1), u_input.a, 4294967295u), arg_1));
    var_0 = true;
    var var_2 = var_1.a;
    var_0 = all(vec4<bool>(true, arg_3, select(any(vec4<bool>(arg_3, arg_3, false, arg_3)), true, true), arg_3)) | false;
    return arg_0.x;
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: u32, arg_3: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_add_vec3_u32(select(vec3<u32>(arg_2, 1u, arg_1), min(arg_3.a.b.a.yyx, vec3<u32>(1u, abs(u_input.a), arg_3.a.b.a.x)), true | select(true, select(true, false, false), true)), u_input.e);
    var var_1 = ~arg_3.a.a.a.x;
    var var_2 = true;
    var var_3 = Struct_3((arg_3.a.b.a >> (_wgslsmith_add_vec4_u32(arg_3.a.c.a, vec4<u32>(var_0.x, 1u, u_input.e.x, arg_1)) % vec4<u32>(32u))) & select(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(arg_3.a.c.a, vec4<u32>(66038u, 1u, u_input.e.x, 0u)), abs(vec4<u32>(u_input.e.x, arg_2, arg_2, u_input.a))), _wgslsmith_add_vec4_u32(arg_3.a.c.a, ~vec4<u32>(arg_1, u_input.e.x, u_input.a, var_0.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), all(vec3<bool>(false, true, false)))), all(vec4<bool>(all(vec3<bool>(false, true, false)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), true, select(all(vec2<bool>(false, true)), false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-516f, 1952f)), _wgslsmith_f_op_f32(f32(-1f) * -514f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-315f, -1695f) + vec2<f32>(-2233f, 230f))))));
    let var_4 = var_3.c.x;
    return Struct_3(~firstTrailingBit(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, arg_2, 6840u, 1u), vec4<u32>(u_input.e.x, var_0.x, 34684u, 0u), vec4<u32>(arg_3.a.c.b, var_0.x, 11847u, u_input.e.x)), _wgslsmith_mult_vec4_u32(arg_3.a.b.a, vec4<u32>(arg_2, 0u, 4294967295u, var_3.a.x)))), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_3.c - vec2<f32>(var_3.c.x, 636f))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> StorageBuffer {
    let var_0 = func_5(_wgslsmith_mult_vec3_i32(u_input.b.yzx, vec3<i32>(-u_input.d.x, func_4(u_input.b, 1u, func_2(arg_1, vec4<bool>(true, false, false, false), u_input.a, arg_0), all(vec3<bool>(true, false, false))), abs(1i))), ~((_wgslsmith_mult_u32(4294967295u, u_input.a) ^ (58136u >> (arg_1.x % 32u))) << (abs(arg_1.x) % 32u)), 57919u, Struct_4(Struct_2(Struct_1(arg_1, _wgslsmith_dot_vec2_u32(u_input.e.zy, arg_1.zw), ~71966u), Struct_1(~vec4<u32>(arg_1.x, arg_1.x, arg_1.x, u_input.e.x), 73362u, firstLeadingBit(1u)), Struct_1(~vec4<u32>(39965u, u_input.e.x, u_input.a, arg_1.x), 0u, u_input.a), 31892u & ~u_input.e.x)));
    var var_1 = 941f;
    var var_2 = max(~u_input.d.xy, vec2<i32>(_wgslsmith_add_i32(u_input.b.x, u_input.d.x & (u_input.d.x | -2147483647i)), u_input.d.x));
    let var_3 = var_0;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -210f))))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) + _wgslsmith_f_op_vec3_f32(select(arg_0, arg_0, true))))), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(select(~var_3.a.wxz, u_input.e, !vec3<bool>(true, false, var_3.b)), ~vec3<u32>(1u, u_input.a, 4294967295u), abs(~var_0.a.wxx)), firstLeadingBit(arg_1.zzx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1239f))))) - 1875f);
    var_0 = 1295f;
    var var_1 = vec3<bool>(!any(vec3<bool>(true, true, true)), false, true);
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-114f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -447f) * _wgslsmith_f_op_f32(floor(299f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1345f))))));
    var_1 = !(!vec3<bool>(all(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, false, var_1.x))), var_1.x, any(vec4<bool>(var_1.x, var_1.x, var_1.x, false))));
    var_0 = -1221f;
    var var_2 = 1313f;
    var_0 = -1466f;
    let var_3 = Struct_1(vec4<u32>(u_input.e.x, ~u_input.a, ~((u_input.e.x >> (33151u % 32u)) & ~60037u), u_input.a), 1u, u_input.e.x);
    let x = u_input.a;
    s_output = func_1(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1024f))), _wgslsmith_f_op_f32(1192f - _wgslsmith_f_op_f32(abs(-1031f))))), 1320f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(163f)) * -1359f), _wgslsmith_f_op_f32(-1f))), vec4<u32>(reverseBits(67360u), firstTrailingBit(u_input.a), _wgslsmith_mult_u32(~(u_input.e.x << (u_input.e.x % 32u)), firstTrailingBit(4294967295u)), ~(~0u)));
}

