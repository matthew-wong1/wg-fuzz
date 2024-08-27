struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    let var_1 = Struct_1(~_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.b.wxw), vec3<u32>(_wgslsmith_add_u32(var_0.b, 1u), max(var_0.a, 116587u), 1184u)), 4294967295u);
    var var_2 = var_1;
    var_2 = Struct_1(var_0.a, ~(_wgslsmith_dot_vec4_u32(max(u_input.b, u_input.b), min(u_input.b, vec4<u32>(29235u, u_input.d, u_input.c, 18853u))) << (~arg_0.b % 32u)));
    var var_3 = vec4<i32>(~countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, 1247i) & vec2<i32>(u_input.a, u_input.a))), _wgslsmith_div_i32(i32(-1i) * -3433i, -1i), countOneBits(u_input.a), 2147483647i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -521f) * 238f);
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    var var_0 = 1268f;
    var var_1 = 15565i;
    var_1 = _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_add_i32((u_input.a | u_input.a) ^ -u_input.a, -_wgslsmith_add_i32(u_input.a, 1i))) >> (firstLeadingBit(~min(u_input.b.x << (u_input.c % 32u), firstLeadingBit(u_input.c))) % 32u);
    var var_2 = Struct_1(u_input.d & u_input.b.x, u_input.c);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(734f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) + _wgslsmith_f_op_f32(209f * -491f)))), _wgslsmith_f_op_f32(func_3(Struct_1(1u, var_2.b))) == _wgslsmith_f_op_f32(round(arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(4294967295u, 1u)))))) + _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(0u, var_2.a)))));
    return _wgslsmith_dot_vec3_u32(abs(reverseBits(~u_input.b.yxx) << (~(vec3<u32>(0u, 4294967295u, 34796u) << (u_input.b.yyw % vec3<u32>(32u))) % vec3<u32>(32u))), u_input.b.xyw);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> vec3<u32> {
    let var_0 = ~(vec4<i32>(-1i) * -(~vec4<i32>(u_input.a, -7822i, 12465i, 2147483647i) >> ((u_input.b | vec4<u32>(0u, arg_1.x, 0u, 8808u)) % vec4<u32>(32u))));
    let var_1 = ~u_input.b;
    var var_2 = Struct_1(func_2(vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-317f, -539f) - arg_0), arg_0, _wgslsmith_f_op_f32(-629f + _wgslsmith_f_op_f32(211f + arg_0)))), _wgslsmith_add_u32(u_input.b.x, _wgslsmith_sub_u32(~_wgslsmith_div_u32(u_input.d, var_1.x), 38824u)));
    var var_3 = _wgslsmith_f_op_f32(func_3(Struct_1(~_wgslsmith_div_u32(firstLeadingBit(10072u), select(43372u, u_input.d, false)), _wgslsmith_dot_vec3_u32(min(u_input.b.wzz, vec3<u32>(arg_1.x, var_1.x, 1u)) | select(var_1.wwy, vec3<u32>(arg_1.x, 4294967295u, 4294967295u), vec3<bool>(true, false, false)), u_input.b.wwx))));
    let var_4 = vec2<u32>(u_input.b.x, arg_1.x & 106496u);
    return vec3<u32>(0u, ~(var_2.a | 42102u), _wgslsmith_dot_vec3_u32(var_1.zwz, ~(~max(arg_1, arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f)), vec3<u32>(4294967295u, u_input.c & ~0u, u_input.c) ^ vec3<u32>(~0u, 1u, ~1u));
    let var_1 = (-5531i & ~u_input.a) >> (_wgslsmith_sub_u32(~func_1(_wgslsmith_f_op_f32(round(1562f)), vec3<u32>(u_input.b.x, 0u, 0u)).x, (_wgslsmith_add_u32(u_input.c, 32175u) | var_0.x) | func_1(_wgslsmith_f_op_f32(f32(-1f) * -1163f), u_input.b.xyw << (u_input.b.wzw % vec3<u32>(32u))).x) % 32u);
    var_0 = max(select(~u_input.b.wxx, vec3<u32>(~reverseBits(57823u), 0u, var_0.x), true), vec3<u32>(var_0.x, 0u, (_wgslsmith_mult_u32(0u, u_input.b.x) << (~4294967295u % 32u)) >> (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, var_0.x, var_0.x, var_0.x)), u_input.b) % 32u)));
    var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b.yzy, ~(~max(u_input.b.zzy, u_input.b.zww)), vec3<u32>(u_input.d >> ((var_0.x & 18595u) % 32u), 7241u, 700u)), ~select(~u_input.b.yyy, vec3<u32>(u_input.c, 4294967295u, var_0.x), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)));
    var_0 = u_input.b.zwx;
    var_0 = max(vec3<u32>(1721u, 21178u, _wgslsmith_sub_u32(1u, 10206u | _wgslsmith_mult_u32(u_input.d, u_input.b.x))), vec3<u32>(~(~func_1(182f, vec3<u32>(0u, var_0.x, 53819u)).x), abs(var_0.x ^ var_0.x), ~((u_input.c >> (u_input.b.x % 32u)) << (max(4294967295u, u_input.b.x) % 32u))));
    var_0 = vec3<u32>(var_0.x, ~0u, 8297u | u_input.b.x);
    var var_2 = Struct_1(49919u, ~abs(min(4294967295u, ~0u)));
    var var_3 = Struct_1(~var_2.b, ~(~u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstTrailingBit(~(~3049u)), ~38422u, (firstTrailingBit(1u) | 5401u) & func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-382f, -700f, 973f, -1328f)))), _wgslsmith_div_vec4_i32(~select(vec4<i32>(7823i, u_input.a, var_1, u_input.a) >> (u_input.b % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(-1i, var_1, var_1, -24611i)), true), _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_1, u_input.a, var_1, var_1), ~vec4<i32>(49027i, -29180i, var_1, -28595i), max(vec4<i32>(-2147483647i, u_input.a, 1i, var_1), vec4<i32>(u_input.a, -38216i, 1i, u_input.a))) >> (vec4<u32>(~4294967295u, ~4294967295u, 27601u, 80414u >> (0u % 32u)) % vec4<u32>(32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(~abs(var_0.x), var_0.x, countOneBits(1u)), _wgslsmith_add_vec3_u32(~select(u_input.b.yyw, vec3<u32>(u_input.b.x, var_3.b, 4294967295u), vec3<bool>(true, false, true)), max(_wgslsmith_add_vec3_u32(vec3<u32>(11622u, 2900u, 4294967295u), u_input.b.zwx), select(vec3<u32>(var_2.b, 4294967295u, var_0.x), u_input.b.xwy, vec3<bool>(false, true, false))))), 1f, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1495f, 931f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-261f, 1000f) * vec2<f32>(304f, 908f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1002f, 1795f)))))))));
}

