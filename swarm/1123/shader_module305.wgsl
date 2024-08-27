struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = -vec3<i32>(-u_input.b, _wgslsmith_mod_i32(min(-34192i, ~1i), _wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -23271i, 0i, -2131i), vec4<i32>(-11149i, -1i, u_input.b, u_input.a.x)))), 0i);
    let var_1 = ~firstLeadingBit(1u);
    var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_div_i32(-1932i, max(1i, var_0.x ^ u_input.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, -39786i, u_input.b), -vec4<i32>(-8352i, -1i, u_input.b, -1i)) & u_input.a.x), firstLeadingBit(vec3<i32>(-var_0.x << (abs(u_input.d.x) % 32u), firstTrailingBit(-u_input.b), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_0.xz, u_input.a), -26615i))));
    var var_2 = abs(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(25699u, 14663u, u_input.d.x, 4294967295u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 101045u), vec4<u32>(u_input.d.x, 0u, 0u, u_input.c.x))), ~vec4<u32>(var_1, 1u, min(u_input.d.x, 68856u), ~0u)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1351f)) + -606f), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1334f - -472f)), -1836f, 1287f)), -vec3<i32>(~(-1i), ~30795i, i32(-1i) * -1i) << (abs(vec3<u32>(14874u, u_input.d.x, var_1) << (u_input.c % vec3<u32>(32u))) % vec3<u32>(32u)));
    return !(((i32(-1i) * -var_0.x) == _wgslsmith_dot_vec2_i32(abs(u_input.a), vec2<i32>(var_3.c.x, 15525i))) && true);
}

fn func_2() -> Struct_1 {
    var var_0 = !vec3<bool>(!(!all(vec4<bool>(false, true, false, true))), true, func_3() & true);
    let var_1 = ~vec4<u32>(u_input.c.x | u_input.d.x, u_input.d.x, ~u_input.d.x, _wgslsmith_div_u32(4294967295u, u_input.d.x));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -621f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(338f, -167f)), -1579f))));
    var_0 = select(select(select(!vec3<bool>(var_0.x, true, var_0.x), !vec3<bool>(true, var_0.x, false), !select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true))), vec3<bool>(!(!var_0.x), true, true), !(!vec3<bool>(true, var_0.x, var_0.x))), select(vec3<bool>(any(vec4<bool>(var_0.x, false, true, var_0.x)), func_3(), any(vec4<bool>(false, var_0.x, var_0.x, var_0.x))), vec3<bool>(false, false, !(!var_0.x)), !select(select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x), true), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, var_0.x, true), true), select(vec3<bool>(var_0.x, true, false), vec3<bool>(false, var_0.x, true), var_0.x))), true);
    var_0 = select(select(select(!vec3<bool>(true, false, var_0.x), select(vec3<bool>(var_0.x, false, false), !vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, true))), vec3<bool>(true, any(vec2<bool>(false, var_0.x)), any(vec2<bool>(false, var_0.x)))), select(select(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), true), !vec3<bool>(var_0.x, false, var_0.x), select(true, var_0.x, false)), select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, true, var_0.x)), !vec3<bool>(true, var_0.x, true), true & var_0.x), reverseBits(u_input.b) != -2346i), !var_0.x), vec3<bool>(all(select(var_0.zx, !vec2<bool>(var_0.x, true), var_0.x)), all(vec2<bool>(all(vec3<bool>(false, true, false)), var_0.x)), false), vec3<bool>(all(vec4<bool>(var_0.x, var_0.x || false, true, !var_0.x)), var_0.x, func_3()));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 2298f) + -468f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1124f + 1311f))))), _wgslsmith_div_f32(-881f, -737f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(994f + _wgslsmith_f_op_f32(abs(720f))), -1151f))));
}

fn func_1(arg_0: f32) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-938f, 822f, 787f)))));
    let var_1 = 0i;
    let var_2 = u_input.d;
    var var_3 = func_2();
    var_3 = Struct_1(vec3<f32>(var_3.a.x, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1500f, arg_0) + 314f))));
    return !select(vec3<bool>(true, true, true), !vec3<bool>(select(false, true, false), false, true), any(vec3<bool>(true, true, true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<i32>) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -565f) + -562f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-521f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(952f - -1804f))))), -344f);
    var var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(0u, 51675u, 1u, u_input.c.x)), max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 15371u), vec4<u32>(u_input.c.x, u_input.d.x, u_input.c.x, u_input.d.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.c.x, 1u), vec4<u32>(8536u, u_input.c.x, 9021u, u_input.c.x))), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 6077u, 66626u, u_input.d.x), vec4<u32>(4294967295u, u_input.c.x, u_input.d.x, u_input.d.x)), ~vec4<u32>(u_input.c.x, 0u, 77764u, 4294967295u))), ~(~(~vec4<u32>(u_input.c.x, 7102u, u_input.c.x, 4294967295u)))) << (~firstLeadingBit(~(~vec4<u32>(1u, u_input.c.x, 31560u, u_input.d.x))) % vec4<u32>(32u));
    var_1 = ~(select(select(reverseBits(vec4<u32>(var_1.x, var_1.x, 0u, var_1.x)), ~vec4<u32>(81351u, var_1.x, var_1.x, u_input.d.x), arg_0.x), vec4<u32>(u_input.c.x & var_1.x, var_1.x, 4294967295u, 4294967295u), ~u_input.d.x <= 0u) & vec4<u32>(~0u << (max(u_input.c.x, u_input.d.x) % 32u), ~(~14453u), u_input.d.x, 1u));
    let var_2 = _wgslsmith_clamp_u32(39031u, ~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(0u), u_input.d.x, var_1.x, ~4294967295u) | reverseBits(reverseBits(vec4<u32>(var_1.x, 1u, u_input.c.x, var_1.x))), vec4<u32>(max(1u, 0u), 3476u, 1u, 0u)));
    let var_3 = max(~firstLeadingBit(firstLeadingBit(select(u_input.c, vec3<u32>(var_1.x, 67114u, u_input.d.x), false))), u_input.c ^ firstTrailingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(var_1.x, u_input.d.x, u_input.d.x), ~vec3<u32>(u_input.c.x, var_2, 8477u))));
    return select(var_2, var_2, arg_0.x) >= 11275u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, func_4(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(func_1(-211f), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), firstTrailingBit(~0i) ^ -u_input.a.x, _wgslsmith_div_vec2_i32(u_input.a, u_input.a)));
    var var_1 = func_2();
    let var_2 = -785f;
    let var_3 = vec2<f32>(1121f, -428f);
    let var_4 = var_1.a.xy;
    let var_5 = _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(u_input.a.x, -(~2147483647i), u_input.a.x)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(select(u_input.b, -2147483647i, true), -2147483647i, _wgslsmith_mult_i32(u_input.b, -5219i)), -vec3<i32>(-53770i, -2147483647i, 2147483647i)), reverseBits(vec3<i32>(firstTrailingBit(65244i), 2147483647i, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.b, u_input.a.x) << (~u_input.c.zz % vec2<u32>(32u))), u_input.a), ~abs(u_input.d.x), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(903f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-310f, var_1.a.x, false)) * -319f))));
}

