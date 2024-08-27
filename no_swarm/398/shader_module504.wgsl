struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: f32,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> i32 {
    var var_0 = arg_0.x;
    let var_1 = Struct_1(arg_0.zx, max((_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.x, 1u, 37374u, arg_2.a.x), vec4<u32>(arg_2.a.x, u_input.b, 1u, 24648u)) ^ ~58094u) & 87u, 95731u), _wgslsmith_f_op_f32(abs(-423f)));
    var var_2 = vec2<bool>((arg_3 > -1i) & !arg_0.x, _wgslsmith_clamp_u32(4294967295u, var_1.b, _wgslsmith_div_u32(~arg_2.a.x, var_1.b | u_input.b)) < arg_2.a.x);
    var var_3 = _wgslsmith_div_u32(~var_1.b, u_input.b);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(max(-610f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -349f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(276f * arg_2.c))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_1.c)))))));
    return _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_3, 56303i, u_input.a.x), ~vec4<i32>(arg_2.d, u_input.a.x, u_input.a.x, -35455i)), select(-vec4<i32>(arg_1, 0i, u_input.a.x, 18087i), vec4<i32>(-2147483647i, arg_1, -2147483647i, 1i), arg_0.x) | (min(vec4<i32>(arg_2.d, 6142i, 21883i, -1i), vec4<i32>(arg_1, 0i, -2147483647i, 2147483647i)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, arg_3, -2147483647i, u_input.a.x), vec4<i32>(-28278i, -1i, u_input.a.x, u_input.a.x), vec4<i32>(-51965i, u_input.a.x, arg_1, 2147483647i)))), _wgslsmith_sub_i32(abs(abs(u_input.a.x)) << (~(~8455u) % 32u), 0i));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3) -> vec3<i32> {
    return vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(firstLeadingBit(1i), reverseBits(-1i))), arg_1.d, func_3(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), true), i32(-1i) * -firstTrailingBit(arg_1.d), arg_1, 1i));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = vec2<f32>(-139f, arg_1.a);
    return Struct_3(_wgslsmith_mod_vec3_u32(select(~vec3<u32>(1u, u_input.b, u_input.b), ~vec3<u32>(21997u, 42391u, u_input.b), vec3<bool>(true, true, true)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(7116u, u_input.b, 1u), vec3<u32>(u_input.b, 0u, u_input.b))) ^ reverseBits(vec3<u32>(u_input.b, 24457u, 22950u & u_input.b)), Struct_2(arg_1.a), _wgslsmith_f_op_f32(-1938f + 1449f), ~(~1i), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-199f, _wgslsmith_f_op_f32(f32(-1f) * -727f)))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a, _wgslsmith_f_op_f32(-arg_1.e.a), _wgslsmith_f_op_f32(step(arg_0.c.c, -1117f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_1.e.a, 2602f) - vec3<f32>(-1269f, -704f, arg_1.b.a)))))))));
    let var_1 = !(!arg_0.b);
    var var_2 = arg_0.c;
    var_2 = func_4(select(var_1.zy, !(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(arg_0.b.x, arg_0.b.x))), vec2<bool>(select(var_1.x, false, false) & arg_0.b.x, false)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.a))), var_1.x, ~max(select(~vec3<i32>(u_input.a.x, arg_0.c.d, 34005i), -vec3<i32>(arg_0.c.d, arg_0.c.d, 2147483647i), any(vec4<bool>(var_1.x, false, false, arg_0.b.x))), func_2(firstLeadingBit(vec4<i32>(0i, -19040i, 24150i, -1i)), arg_0.c)));
    var var_3 = arg_1;
    return firstTrailingBit(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(u_input.b, _wgslsmith_sub_u32(func_1(Struct_4(Struct_2(-1236f), vec3<bool>(true, var_0, var_0), Struct_3(vec3<u32>(4294967295u, u_input.b, u_input.b), Struct_2(-720f), 1145f, -1i, Struct_2(-430f))), Struct_3(vec3<u32>(u_input.b, u_input.b, u_input.b), Struct_2(1659f), -822f, -13065i, Struct_2(1455f))), u_input.b)), 4294967295u, 1u);
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 7345u) ^ vec2<u32>(1u, 104159u), vec2<u32>(~u_input.b, ~0u)), 5226u & u_input.b), reverseBits(51633u) << (_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, var_1.x, var_1.x), vec4<u32>(u_input.b, u_input.b, 0u, 0u))), vec4<u32>(max(var_1.x, u_input.b), u_input.b, var_1.x, 1u ^ u_input.b)) % 32u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-795f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1305f - 1242f)), -1115f, _wgslsmith_f_op_f32(-437f * 1f)));
    var var_4 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~func_4(!vec2<bool>(var_0, false), func_4(vec2<bool>(false, var_0), Struct_2(var_3.x), var_0, vec3<i32>(-2147483647i, u_input.a.x, 0i)).e, true, ~vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)).a, ~_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(1u, u_input.b, 41597u)), vec3<u32>(0u, 4294967295u, 0u))), vec3<u32>(_wgslsmith_dot_vec3_u32(~(vec3<u32>(var_1.x, 1u, u_input.b) << (vec3<u32>(u_input.b, 19987u, 72852u) % vec3<u32>(32u))), select(vec3<u32>(var_1.x, var_1.x, 1u), ~vec3<u32>(var_1.x, 1u, 4294967295u), all(vec4<bool>(var_0, var_0, true, var_0)))), ~(~(var_1.x | 4294967295u)), 12068u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 77426u, firstLeadingBit(u_input.a.x));
}

