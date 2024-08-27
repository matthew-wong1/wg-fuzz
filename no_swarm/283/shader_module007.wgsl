struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    global0 = u_input.a;
    let var_0 = arg_1.a;
    var var_1 = reverseBits(vec2<i32>(44887i, ~_wgslsmith_div_i32(-u_input.c.x, u_input.c.x)));
    var_1 = firstTrailingBit(u_input.c.zy);
    let var_2 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(firstTrailingBit(min(vec2<u32>(8266u, u_input.a), vec2<u32>(u_input.a, 103598u))), vec2<u32>(1u, 8418u)), ~firstTrailingBit(_wgslsmith_div_u32(1u, 40657u)));
    return vec3<u32>(_wgslsmith_mult_u32(select(u_input.a, max(var_2, u_input.a | u_input.a), var_0), u_input.a), _wgslsmith_sub_u32(~6655u, 0u), ~(~(~var_2)));
}

fn func_2() -> u32 {
    global0 = reverseBits(u_input.a);
    let var_0 = select(firstTrailingBit(func_3(-1000f, Struct_1(true, 1282f), Struct_1(true, 2272f))) >> (~min(vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)), (_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), firstTrailingBit(vec3<u32>(u_input.a, 5231u, 5393u))) >> (~vec3<u32>(4294967295u, 12525u, u_input.a) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(~(vec3<u32>(4294967295u, u_input.a, 23242u) >> (vec3<u32>(79871u, u_input.a, 22312u) % vec3<u32>(32u))), ~(~vec3<u32>(u_input.a, 4294967295u, 1u))) % vec3<u32>(32u)), !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(558f - 484f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-967f, -296f, false)))));
    var var_1 = Struct_1(true, 753f);
    return 63550u;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = ~select(vec4<u32>(u_input.a ^ _wgslsmith_sub_u32(arg_0.x, u_input.a), u_input.a, 13215u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, u_input.a, arg_0.x, u_input.a), vec4<u32>(arg_0.x, u_input.a, arg_0.x, 70149u), vec4<bool>(true, false, true, false)), vec4<u32>(1u, arg_0.x, arg_0.x, 11078u))), ~(~vec4<u32>(u_input.a, arg_0.x, 89099u, u_input.a)) >> (vec4<u32>(63722u >> (0u % 32u), ~u_input.a, 4294967295u, 1u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(round(-350f)) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1191f * 1756f), -686f, true)));
    var var_1 = abs(reverseBits(1u));
    var_0 = min(vec4<u32>(func_2() ^ firstLeadingBit(0u), firstLeadingBit(4294967295u), var_0.x, _wgslsmith_dot_vec3_u32(abs(var_0.wwx), vec3<u32>(u_input.a, 49797u, arg_0.x) << (vec3<u32>(u_input.a, var_0.x, 1u) % vec3<u32>(32u)))), countOneBits(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 72731u), vec4<u32>(u_input.a, arg_0.x, 128674u, 1u))))) >> ((~(~select(vec4<u32>(var_0.x, u_input.a, 54425u, 9113u), vec4<u32>(u_input.a, 20339u, arg_0.x, 8201u), vec4<bool>(false, true, false, false))) << (countOneBits(max(vec4<u32>(u_input.a, var_0.x, var_0.x, arg_0.x), vec4<u32>(var_0.x, 0u, 46127u, 4294967295u)) << (vec4<u32>(0u, 4294967295u, 12351u, var_0.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    global0 = abs(~_wgslsmith_mod_u32(~var_0.x, arg_0.x)) << (1u % 32u);
    var_1 = _wgslsmith_div_u32(~(_wgslsmith_div_u32(arg_0.x | u_input.a, var_0.x << (0u % 32u)) | u_input.a), ~0u);
    return Struct_1(all(vec2<bool>(all(vec3<bool>(false, true, false)), true)) && !any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), true)), 2046f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    var var_0 = func_1(vec2<u32>(_wgslsmith_div_u32(u_input.a | (4294967295u >> (u_input.a % 32u)), 25978u), u_input.a & ~(0u | u_input.a)), firstTrailingBit(_wgslsmith_add_vec3_i32(select(u_input.b.wxx ^ u_input.c, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -35122i, -15017i), vec3<i32>(1i, u_input.b.x, u_input.c.x)), true), vec3<i32>(56384i << (u_input.a % 32u), _wgslsmith_add_i32(u_input.b.x, u_input.b.x), -u_input.c.x))), vec4<i32>(-(~(~u_input.b.x)), -10272i, u_input.b.x, _wgslsmith_dot_vec4_i32(~(vec4<i32>(-11541i, 1i, 34143i, -10213i) | u_input.b), ~vec4<i32>(u_input.c.x, u_input.c.x, 51417i, -1i) & (vec4<i32>(u_input.b.x, 1i, -2147483647i, 2147483647i) << (vec4<u32>(u_input.a, 10376u, u_input.a, 1u) % vec4<u32>(32u))))));
    let var_1 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(596u, max(~16543u, ~81088u), ~8071u, _wgslsmith_div_u32(_wgslsmith_div_u32(61914u, 3506u), firstTrailingBit(u_input.a))), ~max(~vec4<u32>(7440u, 1913u, 1u, 22878u), ~vec4<u32>(u_input.a, 115230u, u_input.a, u_input.a)));
    let var_2 = 22263u != ~(_wgslsmith_dot_vec2_u32(var_1.zz, var_1.wx) ^ 52359u);
    let var_3 = -1485f;
    var var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(u_input.b, abs(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.b.x, -2147483647i), vec4<i32>(u_input.c.x, u_input.b.x, 2147483647i, u_input.c.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.wz, ~u_input.b.zz), ~u_input.c.x >> (_wgslsmith_mult_u32(0u, var_1.x) % 32u), u_input.c.x, u_input.b.x)), ~vec2<u32>(~u_input.a, _wgslsmith_mult_u32(4294967295u, 0u)) ^ ~(~vec2<u32>(u_input.a, 4294967295u)), var_3, vec2<u32>(abs(u_input.a), abs(u_input.a)) << (_wgslsmith_sub_vec2_u32(reverseBits(var_1.zx | var_1.yw), func_3(-380f, Struct_1(false, -484f), func_1(vec2<u32>(u_input.a, 1u), u_input.b.xxw, u_input.b)).zx) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2641f * 196f))))), _wgslsmith_div_f32(387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(147f))))));
}

