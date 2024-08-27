struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: vec4<u32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<u32> {
    let var_0 = vec3<f32>(-1751f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(104f))), -714f);
    global1 = vec4<u32>(_wgslsmith_sub_u32(select(reverseBits(global1.x ^ global1.x), _wgslsmith_sub_u32(0u, abs(0u)), true), ~global1.x), abs(43777u), ~(~0u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, 0u, global1.x, 38808u), firstTrailingBit(vec4<u32>(u_input.d, u_input.d, u_input.d, 4181u))), u_input.d) << (_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.d | 1u, 44879u), abs(reverseBits(global1.x))) % 32u));
    var var_1 = ~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(select(9909i, -54449i, true), u_input.b | -16457i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 10216i, 18755i, 0i), vec4<i32>(-1i, 4822i, u_input.c.x, 1i))), u_input.c.yxx, vec3<i32>(countOneBits(u_input.b), 0i, 1i ^ u_input.a)));
    global0 = ~(-2147483647i) & (~19928i << (u_input.d % 32u));
    var var_2 = Struct_2(u_input.c);
    return reverseBits(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 0u, 1u, u_input.d), vec4<u32>(11727u, u_input.d, global1.x, global1.x))) << ((_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d, 4294967295u, 2184u, u_input.d), select(vec4<u32>(u_input.d, global1.x, 36392u, global1.x), vec4<u32>(u_input.d, global1.x, 1u, 1u), vec4<bool>(false, false, false, true))) & _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.d, u_input.d, global1.x, global1.x)), vec4<u32>(0u, 1u, u_input.d, u_input.d) ^ vec4<u32>(u_input.d, 0u, 0u, 4968u))) % vec4<u32>(32u)));
}

fn func_2() -> u32 {
    let var_0 = Struct_2(reverseBits(u_input.c));
    global1 = max(countOneBits(~min(func_3(), ~vec4<u32>(12702u, global1.x, 40974u, global1.x))), func_3());
    global0 = i32(-1i) * -64516i;
    global0 = u_input.b;
    var var_1 = -637f;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~min(~vec4<u32>(global1.x, global1.x, 1u, u_input.d), select(vec4<u32>(46638u, global1.x, u_input.d, global1.x), vec4<u32>(u_input.d, u_input.d, 34612u, global1.x), true)), vec4<u32>(~24386u, ~4294967295u, 58251u, firstTrailingBit(u_input.d)) ^ vec4<u32>(global1.x, func_3().x, ~0u, ~global1.x)), vec4<u32>(1u, global1.x, ~u_input.d, ~u_input.d));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32, arg_3: vec3<f32>) -> f32 {
    global1 = vec4<u32>(0u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.d, 5074u, global1.x), vec4<u32>(countOneBits(44094u), _wgslsmith_add_u32(u_input.d, 18891u), 6208u, 4294967295u)), u_input.d, func_2());
    global1 = _wgslsmith_add_vec4_u32(abs(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 0u, 49295u, 46000u), vec4<u32>(u_input.d, 42463u, u_input.d, global1.x) | vec4<u32>(34143u, u_input.d, global1.x, 1u)), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), global1.xz), _wgslsmith_mod_u32(u_input.d, global1.x), max(u_input.d, 30355u)))), vec4<u32>(min(4294967295u, reverseBits(global1.x >> (u_input.d % 32u))), 1u, 0u, ~_wgslsmith_add_u32(firstTrailingBit(global1.x), global1.x)));
    var var_0 = arg_0;
    global1 = min(min(firstLeadingBit(vec4<u32>(62648u >> (u_input.d % 32u), ~global1.x, 11435u, ~u_input.d)), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.d, u_input.d, 13469u, 20746u) & vec4<u32>(global1.x, 4294967295u, u_input.d, u_input.d)), vec4<u32>(25798u, 1u, 57134u, 19719u) ^ ~vec4<u32>(u_input.d, 54801u, global1.x, 30778u), vec4<u32>(u_input.d, func_3().x, u_input.d, 1u))), ~vec4<u32>(~(global1.x >> (4294967295u % 32u)), u_input.d, ~firstTrailingBit(4294967295u), ~1u));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(102f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1186f, arg_3.x)), _wgslsmith_f_op_f32(min(arg_3.x, -503f))) * _wgslsmith_f_op_f32(1253f * _wgslsmith_f_op_f32(arg_3.x - arg_3.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(Struct_2(vec4<i32>(-59418i, 27560i, u_input.a, u_input.c.x)), vec2<bool>(false, false), 51180i, vec3<f32>(171f, -757f, -1126f)))))))));
    global0 = _wgslsmith_add_i32(-1i, u_input.c.x) >> (_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 10059u, global1.x, 3307u), vec4<u32>(1u, global1.x, global1.x, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, global1.x, 4294967295u, u_input.d), vec4<u32>(62876u, 9128u, 0u, 89840u))), abs(vec4<u32>(26718u, ~u_input.d, u_input.d, global1.x >> (1u % 32u)))) % 32u);
    global0 = _wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec3_i32(u_input.c.wzx, countOneBits(firstTrailingBit(vec3<i32>(u_input.b, u_input.e, u_input.b))) & select(_wgslsmith_sub_vec3_i32(u_input.c.wyx, vec3<i32>(u_input.a, u_input.e, -3860i)), u_input.c.wxw, true)));
    let var_1 = Struct_2(~u_input.c);
    var var_2 = _wgslsmith_f_op_f32(-213f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -849f)) - _wgslsmith_f_op_f32(f32(-1f) * -562f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1849f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-834f + _wgslsmith_f_op_f32(f32(-1f) * -653f)))), ~1i, vec4<i32>(1i, abs(var_1.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(~(-1i), firstLeadingBit(var_1.a.x), firstLeadingBit(u_input.b)), ~u_input.c.wwx), -40941i & _wgslsmith_dot_vec2_i32(select(vec2<i32>(-66297i, 5763i), u_input.c.wz, true), -vec2<i32>(0i, u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-833f, 1915f, 606f, -143f))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-838f, 1478f, 1252f, -341f), vec4<f32>(1000f, -162f, 776f, 768f)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-146f, _wgslsmith_f_op_f32(683f + 1392f), _wgslsmith_f_op_f32(f32(-1f) * -499f), -433f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))))));
}

