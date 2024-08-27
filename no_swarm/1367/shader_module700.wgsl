struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_4) -> f32 {
    var var_0 = vec3<u32>(arg_0, min(4294967295u, ~92711u), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0 | arg_0, 1u), 1u), arg_0));
    var_0 = vec3<u32>(58858u, ~firstTrailingBit(reverseBits(var_0.x >> (4294967295u % 32u))), 4294967295u);
    var var_1 = ~var_0.x;
    var var_2 = Struct_3(vec2<u32>(min(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), var_0.yz), _wgslsmith_clamp_u32(var_0.x, _wgslsmith_div_u32(9122u, var_0.x), max(0u, var_0.x))), 21139u), _wgslsmith_add_i32(-_wgslsmith_mod_i32(u_input.a.x >> (8292u % 32u), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(2147483647i, u_input.a.x, 17344i, u_input.a.x))), _wgslsmith_add_i32(-83369i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), max(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x))))) - 325f));
    return 1763f;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(Struct_1(!any(vec3<bool>(true, false, false))), Struct_1(false)));
    var var_1 = var_0.a.a.a;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-574f, 1415f, true)), -451f, var_0.a.a.a)), _wgslsmith_f_op_f32(func_3(arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1147f, -169f, -893f)), Struct_4(Struct_2(Struct_1(true), Struct_1(false))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2556f + _wgslsmith_f_op_f32(1183f * _wgslsmith_f_op_f32(max(-218f, -479f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + -671f))))) * 1f), -523f);
    let var_3 = vec4<bool>(var_0.a.a.a, var_2.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-834f)) - _wgslsmith_f_op_f32(round(var_2.x))), !var_0.a.a.a, !(var_2.x > _wgslsmith_f_op_f32(sign(-429f))));
    var_0 = Struct_4(Struct_2(Struct_1(select(var_3.x, var_3.x, true)), var_0.a.b));
    return var_0.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec3<f32>) -> u32 {
    let var_0 = Struct_5(!arg_1.xy, -(vec2<i32>(1i, select(u_input.a.x, 2147483647i, true)) << (vec2<u32>(4294967295u, max(0u, 4294967295u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-139f, _wgslsmith_f_op_f32(-arg_3.x))) + 414f))));
    var var_1 = vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(abs(u_input.a.x), 33607i), -2147483647i) ^ (firstTrailingBit(max(u_input.a.x, u_input.a.x)) >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 4294967295u)) >> (_wgslsmith_clamp_u32(0u, 11356u, 40647u) % 32u)) % 32u)), -16746i, firstTrailingBit(-23944i | abs(u_input.a.x ^ var_0.b.x)));
    var_1 = _wgslsmith_mod_vec4_i32(-(max(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(var_0.b.x, -30458i, 51507i, 3410i)), vec4<i32>(5451i, u_input.a.x, u_input.a.x, -1i)) | u_input.a), reverseBits(~(-(vec4<i32>(var_1.x, 0i, u_input.a.x, u_input.a.x) >> (vec4<u32>(13487u, 0u, 0u, 1u) % vec4<u32>(32u))))));
    var_1 = _wgslsmith_clamp_vec4_i32(max(-firstTrailingBit(-vec4<i32>(u_input.a.x, 2147483647i, 29068i, 0i)), vec4<i32>(max(_wgslsmith_mod_i32(u_input.a.x, var_0.b.x), firstLeadingBit(-42836i)), -14386i, -8610i, select(i32(-1i) * -3661i, _wgslsmith_sub_i32(u_input.a.x, var_1.x), false))), ~(-u_input.a), u_input.a);
    let var_2 = var_1.x;
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(9165u, 0u, 87203u), select(arg_1.xzy, vec3<bool>(true, false, arg_2.b.a), vec3<bool>(arg_2.a.a, arg_2.a.a, arg_1.x))), ~select(vec3<u32>(1u, 24159u, 0u), vec3<u32>(4294967295u, 4294967295u, 61794u), arg_1.x)) >> ((6509u >> (1u % 32u)) % 32u), 0u);
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 71108u), ~vec2<u32>(0u, 54807u)) >> (func_4(vec3<bool>(true, -41975i != u_input.a.x, false), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), func_2(~u_input.a.xwz, 1u, 1u), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 989f, -647f)))) % 32u), 90168u);
    let var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-385f + _wgslsmith_f_op_f32(func_3(4294967295u, vec3<f32>(103f, -358f, -614f), Struct_4(Struct_2(Struct_1(false), Struct_1(false))))))))));
    let var_2 = ~_wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(~(-1i), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))));
    var var_3 = !(any(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false))) && all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, false), true)));
    let var_4 = -1262f;
    return StorageBuffer(u_input.a, firstLeadingBit(~_wgslsmith_mult_vec3_i32(u_input.a.wzz, u_input.a.wwz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(reverseBits(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 16748u), abs(vec2<u32>(1u, 1u)), true), ~(~vec2<u32>(24523u, 1u)))), 100348u);
    let x = u_input.a;
    s_output = func_1();
}

