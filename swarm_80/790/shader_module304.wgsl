struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    var var_0 = arg_0.e;
    var var_1 = Struct_3(true, vec2<i32>(~(-99952i), abs(min(max(2579i, 15315i), _wgslsmith_mult_i32(0i, -2147483647i)))));
    var var_2 = Struct_3(all(arg_0.c), var_1.b);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.d)))) + _wgslsmith_f_op_f32(sign(var_0.d))), arg_0.c, select(arg_0.b, vec3<bool>(var_1.b.x >= _wgslsmith_add_i32(2147483647i, -2147483647i), all(vec3<bool>(var_1.a, false, arg_0.b.x)) & true, _wgslsmith_f_op_f32(arg_1.d - -312f) < _wgslsmith_f_op_f32(-arg_1.d)), arg_0.b.x), true, Struct_1(vec4<u32>(reverseBits(min(0u, u_input.a)), abs(1u), 79279u, firstTrailingBit(arg_1.b)), var_0.a.x, _wgslsmith_clamp_vec4_u32(arg_1.c, ~arg_1.c, vec4<u32>(arg_0.e.c.x, arg_1.b, 0u, reverseBits(arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(600f, var_0.d)))))));
    return var_0.d;
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -937f), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1521f)), _wgslsmith_f_op_f32(func_3(Struct_2(-709f, vec3<bool>(false, true, true), vec3<bool>(false, false, true), true, Struct_1(vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.a), u_input.b, vec4<u32>(4294967295u, u_input.a, u_input.b, u_input.a), -1000f)), Struct_1(vec4<u32>(u_input.b, 3231u, 43096u, 10303u), u_input.b, vec4<u32>(4294967295u, 1u, 31468u, 1u), -174f))))))), vec2<f32>(2321f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2913f))))))));
    let var_1 = Struct_3(true, select(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(-1i, 28108i)), firstLeadingBit(vec2<i32>(-2147483647i, -2147483647i))), select(~vec2<i32>(0i, 0i), vec2<i32>(1i, 1i), vec2<bool>(true, true)), vec2<bool>(true, true)) | countOneBits(vec2<i32>(1i, ~(-6480i))));
    return select(abs(vec4<u32>(36255u, 39727u, _wgslsmith_add_u32(22484u, min(u_input.a, u_input.a)), 0u)), vec4<u32>(u_input.b, u_input.a, 29614u, abs(_wgslsmith_div_u32(~u_input.b, 17107u))), !select(!select(vec4<bool>(true, false, var_1.a, var_1.a), vec4<bool>(var_1.a, var_1.a, false, false), vec4<bool>(var_1.a, var_1.a, true, var_1.a)), vec4<bool>(var_1.a && false, var_1.a, 12943u >= u_input.b, false), vec4<bool>(true, true & var_1.a, any(vec2<bool>(var_1.a, true)), var_1.a)));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec4_u32(~(~(~func_2())), (~firstLeadingBit(vec4<u32>(u_input.a, u_input.b, 64049u, u_input.a)) | (vec4<u32>(1u, u_input.b, 42159u, u_input.a) | _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 32990u, u_input.a), vec4<u32>(u_input.a, 8143u, 4294967295u, 0u)))) & select(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.a, 4294967295u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(1u, 13223u, 4294967295u, u_input.a), select(vec4<u32>(u_input.b, u_input.a, 76085u, u_input.b), vec4<u32>(19658u, 18400u, u_input.a, u_input.b), vec4<bool>(false, true, false, false))), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.b, u_input.b, 10726u), select(vec4<u32>(u_input.b, u_input.a, 0u, u_input.b), vec4<u32>(u_input.b, u_input.a, 0u, 42080u), vec4<bool>(true, true, false, true))), true));
    let var_1 = _wgslsmith_add_vec3_u32(~(~(_wgslsmith_clamp_vec3_u32(var_0.xxz, vec3<u32>(var_0.x, u_input.a, u_input.a), vec3<u32>(44540u, 33756u, u_input.a)) << (firstTrailingBit(var_0.wyz) % vec3<u32>(32u)))), func_2().xyx);
    let var_2 = true;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-574f, 1376f)))), !(!vec3<bool>(all(vec3<bool>(false, false, var_2)), !var_2, var_2)), select(!vec3<bool>(true, true, var_2), select(!select(vec3<bool>(var_2, var_2, false), vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, var_2, var_2)), !vec3<bool>(var_2, true, var_2), select(select(vec3<bool>(false, var_2, var_2), vec3<bool>(false, false, true), false), select(vec3<bool>(true, var_2, false), vec3<bool>(var_2, var_2, var_2), var_2), var_2)), any(vec2<bool>(false, true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1230f)), -1406f) + _wgslsmith_f_op_f32(round(-1000f))) > _wgslsmith_f_op_f32(152f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(703f - 733f) + -1000f)), Struct_1(~vec4<u32>(var_1.x << (27274u % 32u), _wgslsmith_dot_vec4_u32(var_0, var_0), var_0.x, u_input.b >> (0u % 32u)), _wgslsmith_mult_u32(~(~var_0.x), 4294967295u), vec4<u32>(4294967295u, max(_wgslsmith_add_u32(u_input.b, var_0.x), var_0.x), 4294967295u, 17755u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -692f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-580f)) - _wgslsmith_f_op_f32(404f * 792f)))));
    let var_4 = 630f;
    return Struct_3(!(!any(vec4<bool>(false, var_3.c.x, var_2, false))), _wgslsmith_div_vec2_i32(-vec2<i32>(-1i, 0i) << (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)), max(vec2<i32>(33240i, 0i), -vec2<i32>(45188i, 18272i))) & -(_wgslsmith_mult_vec2_i32(vec2<i32>(-146i, 1i), vec2<i32>(1i, 5052i)) >> (vec2<u32>(var_0.x, 0u) % vec2<u32>(32u))));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(337f, -584f) - vec2<f32>(2846f, -1312f)) - vec2<f32>(273f, 292f)) * vec2<f32>(1f, 1f)))));
    let var_1 = ~_wgslsmith_add_vec3_i32(reverseBits(~(~vec3<i32>(arg_0, 4124i, arg_1.b.x))), select(-abs(vec3<i32>(arg_0, -1i, 1i)), vec3<i32>(-2147483647i, -arg_1.b.x, -2147483647i), !vec3<bool>(arg_1.a, arg_1.a, arg_1.a)));
    var var_2 = var_1;
    let var_3 = Struct_1(vec4<u32>(~u_input.a | 663u, ~1u, u_input.a, _wgslsmith_mult_u32(~u_input.b, ~4294967295u)) >> (vec4<u32>(~(u_input.a | 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 9525u, 5826u, 1u) | vec4<u32>(0u, u_input.b, 4294967295u, 15522u), ~vec4<u32>(1u, u_input.a, 4294967295u, 46570u)), _wgslsmith_add_u32(~u_input.b, abs(u_input.a)), 16081u >> (u_input.a % 32u)) % vec4<u32>(32u)), 4294967295u, ~min(min(vec4<u32>(43009u, u_input.b, u_input.b, u_input.a), vec4<u32>(u_input.a, u_input.b, 91169u, 4294967295u)), vec4<u32>(u_input.a, u_input.b, 0u, u_input.a)) << (vec4<u32>((29226u >> (u_input.a % 32u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.a, u_input.a), vec4<u32>(20855u, 0u, u_input.a, u_input.a)), ~(u_input.b ^ u_input.a), u_input.a, _wgslsmith_add_u32(u_input.b, _wgslsmith_sub_u32(1u, 0u))) % vec4<u32>(32u)), var_0.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-1405f, vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 2775u, 6571u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.b) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, u_input.b, u_input.a), vec4<u32>(44563u, 4294967295u, u_input.a, 35307u))) < _wgslsmith_sub_u32(firstTrailingBit(4294967295u), ~51828u), true, func_4(max(33188i, -2147483647i), func_1())), !select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), any(select(vec2<bool>(true, false), vec2<bool>(false, true), true))), false, Struct_1(abs(vec4<u32>(select(u_input.b, 15400u, true), _wgslsmith_div_u32(u_input.a, 0u), ~4294967295u, ~u_input.b)), 21670u, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a & u_input.a, 40343u, ~u_input.a, ~5359u), ~(~vec4<u32>(u_input.b, 1u, u_input.a, u_input.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -789f), -340f)));
    let var_1 = func_2().yw;
    let var_2 = var_0.e.d;
    var var_3 = vec4<u32>(~0u, reverseBits(~4294967295u) << (((_wgslsmith_sub_u32(22879u, var_1.x) ^ _wgslsmith_sub_u32(12628u, var_1.x)) & ~_wgslsmith_add_u32(var_0.e.c.x, 4294967295u)) % 32u), ~(~abs(_wgslsmith_add_u32(47816u, var_1.x))), 1u);
    let var_4 = min(vec2<i32>(max(i32(-1i) * -20852i, ~func_1().b.x), -_wgslsmith_add_i32(1i, abs(-76175i))), vec2<i32>(-(~min(0i, -1i)), abs(_wgslsmith_sub_i32(1i, ~53281i))));
    let x = u_input.a;
    s_output = StorageBuffer(-275f, vec2<i32>(~10124i, abs(min(~2387i, 2147483647i))), ~var_3.x);
}

