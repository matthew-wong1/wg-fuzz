struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> Struct_1 {
    var var_0 = reverseBits(arg_0.b);
    let var_1 = 0i & (u_input.a.x << (~(countOneBits(0u) >> (arg_0.b % 32u)) % 32u));
    let var_2 = vec3<bool>(~1i == var_1, true, !any(vec2<bool>(arg_0.c.a || arg_1.a, all(vec4<bool>(true, arg_0.a, false, arg_1.a)))));
    var var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(4291u, arg_0.b, 18898u ^ (~arg_0.b >> (~0u % 32u)), _wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(0u, arg_0.b, arg_0.b, 27658u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, arg_0.b), vec4<u32>(arg_0.b, arg_0.b, 5322u, arg_0.b)))), vec4<u32>(firstLeadingBit(~arg_0.b), ~1u, 4294967295u, ~1u));
    let var_4 = any(select(select(!select(var_2, vec3<bool>(true, false, false), vec3<bool>(arg_0.d, false, true)), var_2, false), !var_2, all(var_2)));
    return arg_0.c;
}

fn func_3() -> f32 {
    let var_0 = Struct_1(true);
    var var_1 = !select(vec2<bool>(u_input.b <= u_input.a.x, true), !vec2<bool>(var_0.a, all(vec2<bool>(false, var_0.a))), true);
    var_1 = select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, var_0.a), !select(!select(vec2<bool>(true, false), vec2<bool>(false, var_0.a), false), select(select(vec2<bool>(false, true), vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, true)), vec2<bool>(true, false), vec2<bool>(false, var_1.x)), !vec2<bool>(false, var_0.a)));
    var var_2 = select(vec2<bool>(true, var_1.x), !select(vec2<bool>(var_0.a, var_1.x), vec2<bool>(true, u_input.b < 24727i), select(vec2<bool>(false, true), vec2<bool>(true, var_0.a), true)), any(vec2<bool>(true, true)) != all(!vec3<bool>(true, var_1.x, true)));
    var var_3 = Struct_1(any(vec2<bool>(var_2.x, var_2.x)) || any(vec4<bool>(all(vec3<bool>(false, var_1.x, var_2.x)), true, true, select(true, var_2.x, false))));
    return _wgslsmith_f_op_f32(f32(-1f) * -874f);
}

fn func_4(arg_0: i32, arg_1: f32) -> vec4<u32> {
    let var_0 = Struct_1(~(~0u) >= firstTrailingBit(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 65734u)))));
    var var_1 = arg_1;
    var var_2 = ~((vec2<u32>(_wgslsmith_mult_u32(1u, 4294967295u), firstTrailingBit(40835u)) << ((select(vec2<u32>(4970u, 51912u), vec2<u32>(0u, 0u), vec2<bool>(true, false)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))) & ~vec2<u32>(_wgslsmith_clamp_u32(0u, 4539u, 4294967295u), 1u));
    let var_3 = _wgslsmith_mult_vec4_i32(select(_wgslsmith_clamp_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, arg_0, arg_0, -2147483647i), vec4<i32>(8121i, arg_0, arg_0, -40428i)), vec4<i32>(~(-2147483647i), select(-3372i, arg_0, false), abs(arg_0), _wgslsmith_mult_i32(arg_0, u_input.a.x)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-76107i, arg_0, -33166i, -1i), vec4<i32>(u_input.b, 29648i, -2147483647i, -1i))), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(22860i, -3677i, -20662i, 12791i) << (vec4<u32>(var_2.x, 0u, 0u, 1u) % vec4<u32>(32u)), ~vec4<i32>(-3623i, -2147483647i, -20764i, -7091i))), !vec4<bool>(arg_0 <= 2147483647i, true, true, true)), ~_wgslsmith_clamp_vec4_i32(countOneBits(abs(vec4<i32>(u_input.a.x, 4177i, -14683i, -1i))), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.a.x, -2147483647i, -2147483647i), vec4<i32>(arg_0, 57273i, 1i, 0i))), vec4<i32>(23862i, -22275i, u_input.a.x, -1i)));
    var var_4 = _wgslsmith_f_op_f32(func_3());
    return vec4<u32>(var_2.x, 22172u, _wgslsmith_mod_u32(1u, (var_2.x | var_2.x) & 1u), 47780u);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    var var_0 = true;
    var_0 = !func_1(Struct_4(arg_3.x, 4294967295u, Struct_1(arg_2.a), true), arg_1.b).a;
    let var_1 = arg_0.xx;
    var_0 = var_1.x;
    var var_2 = ~func_4(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(563f)) * _wgslsmith_div_f32(2408f, 1013f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-926f - 255f), _wgslsmith_f_op_f32(func_3())))));
    return 411f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(592f, 2537f));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(373f))), -1000f, var_0)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 229f, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -380f) * vec3<f32>(var_0, var_0, -2737f)), any(vec3<bool>(true, true, true)))))));
    var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(124f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(func_2(vec3<bool>(false, false, true), Struct_2(i32(-1i) * -1i, func_1(Struct_4(true, 1u, Struct_1(false), true), Struct_1(false)), ~1u), Struct_1(true), vec2<bool>(u_input.a.x != 1i, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-377f)))), _wgslsmith_f_op_f32(round(771f)));
    let var_2 = func_1(Struct_4(func_1(Struct_4(all(vec4<bool>(false, false, true, true)), 1u, func_1(Struct_4(true, 9539u, Struct_1(false), false), Struct_1(false)), func_1(Struct_4(false, 1u, Struct_1(false), false), Struct_1(false)).a), func_1(Struct_4(true, 19896u, Struct_1(true), true), func_1(Struct_4(false, 29426u, Struct_1(false), false), Struct_1(true)))).a, ~1u, func_1(Struct_4(true, 1u, Struct_1(false), true), func_1(Struct_4(true, 4294967295u, Struct_1(true), true), func_1(Struct_4(true, 594u, Struct_1(false), false), Struct_1(false)))), all(vec4<bool>(true, all(vec2<bool>(true, false)), any(vec3<bool>(true, true, false)), true))), Struct_1(all(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))));
    let var_3 = vec2<u32>(_wgslsmith_div_u32(0u, _wgslsmith_mult_u32(12570u, _wgslsmith_sub_u32(abs(83374u), 1u))), ~21937u);
    let var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a) & (vec2<i32>(~u_input.a.x, ~(-2147483647i)) << ((select(var_3, vec2<u32>(var_4, 4294967295u), vec2<bool>(true, true)) & select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(var_4, 0u), vec2<bool>(var_2.a, var_2.a))) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1018f, -499f))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(f32(-1f) * -2645f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1337f, var_0))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 120f, var_1.x, -276f))))))), var_1.zz);
}

