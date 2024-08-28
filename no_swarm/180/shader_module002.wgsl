struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = ~vec3<i32>(reverseBits(_wgslsmith_add_i32(arg_2.c.x, -28988i) >> (~1u % 32u)), u_input.e.x, arg_2.c.x);
    var_0 = abs(min(_wgslsmith_add_vec3_i32(u_input.e.yzw, vec3<i32>(u_input.c, 0i, var_0.x)), vec3<i32>(arg_2.c.x, -2147483647i, u_input.a.x)) >> (arg_3.a.www % vec3<u32>(32u))) & vec3<i32>(u_input.e.x, -2147483647i, -26442i);
    return vec2<bool>(any(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)))), (any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)) & any(vec3<bool>(true, true, false))) || (true == any(vec3<bool>(true, true, true))));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1418f * 1272f), -1539f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1093f));
    var var_1 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3038f - -370f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-827f, 139f, true)) - _wgslsmith_f_op_f32(f32(-1f) * -522f)) * -186f)), vec3<u32>(~(~arg_0.b.b.x), _wgslsmith_clamp_u32(0u, 0u, 41400u), arg_0.d.a.x) | _wgslsmith_sub_vec3_u32(arg_0.a.a.xxx, firstTrailingBit(arg_0.d.b ^ vec3<u32>(33676u, 1u, arg_0.a.a.x))), arg_0, Struct_1(arg_0.d.a, ~(~select(arg_0.b.b, vec3<u32>(arg_0.a.b.x, arg_0.b.b.x, arg_0.b.b.x), true))));
    let var_2 = 0i;
    var_1 = !func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(383f, 1465f, true)) * _wgslsmith_f_op_f32(max(-824f, -2114f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(233f * 558f))), ~(~arg_0.d.b), Struct_2(Struct_1(vec4<u32>(37695u, 29058u, arg_0.a.b.x, 20349u), arg_0.a.a.yyy), Struct_1(_wgslsmith_mult_vec4_u32(arg_0.b.a, vec4<u32>(arg_0.d.b.x, arg_0.b.b.x, arg_0.a.a.x, 10625u)), arg_0.d.a.yyz), ~(-u_input.d.xz), Struct_1(vec4<u32>(1u, arg_0.a.a.x, 0u, arg_0.b.a.x), vec3<u32>(arg_0.b.a.x, 74388u, arg_0.d.a.x))), arg_0.a);
    return arg_0.b.b.x;
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_1(~(~vec4<u32>(4294967295u, 0u, 1u, 4294967295u) ^ vec4<u32>(1u, ~106504u, func_2(Struct_2(Struct_1(vec4<u32>(5667u, 116294u, 4294967295u, 35582u), vec3<u32>(1u, 0u, 12641u)), Struct_1(vec4<u32>(8195u, 4294967295u, 37648u, 46132u), vec3<u32>(27809u, 13241u, 58169u)), u_input.a, Struct_1(vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec3<u32>(0u, 22285u, 36904u)))), _wgslsmith_dot_vec4_u32(vec4<u32>(27969u, 27856u, 28749u, 1u), vec4<u32>(10268u, 0u, 5784u, 47167u)))), vec3<u32>(1u, 1u, 1u));
    var var_1 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4985u, 0u, var_0.a.x, 37840u), vec4<u32>(43579u, 1u, 37075u, var_0.a.x))), _wgslsmith_div_vec3_u32(~reverseBits(vec3<u32>(var_0.a.x, 17993u, 0u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, var_0.a.x, 4294967295u, var_0.a.x), vec4<u32>(0u, var_0.a.x, 0u, var_0.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.b.x), var_0.a.yx), var_0.b.x))), Struct_1(max(_wgslsmith_mult_vec4_u32(~var_0.a, _wgslsmith_div_vec4_u32(var_0.a, var_0.a)), vec4<u32>(var_0.a.x, var_0.b.x, var_0.a.x, var_0.a.x) & ~vec4<u32>(1u, var_0.a.x, 76852u, var_0.a.x)), abs(_wgslsmith_div_vec3_u32(var_0.a.xzz, vec3<u32>(var_0.b.x, 1u, var_0.a.x))) & abs(var_0.b)), ~_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x) >> (vec2<u32>(86591u, var_0.b.x) % vec2<u32>(32u)), select(vec2<i32>(u_input.d.x, u_input.b), vec2<i32>(u_input.a.x, u_input.e.x), vec2<bool>(true, false))), _wgslsmith_mult_vec2_i32(vec2<i32>(18874i, 1i), ~vec2<i32>(u_input.e.x, -2077i)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.d.x), u_input.e.yy) & _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -32764i), vec2<i32>(u_input.a.x, -16795i))), Struct_1(var_0.a, var_0.a.wwx));
    let var_2 = var_1.b;
    var var_3 = u_input.d;
    var var_4 = select(!(32563u >= var_1.b.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-249f, 1423f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-632f)))))) == -411f, false);
    return ~var_1.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~(~(~_wgslsmith_div_u32(11210u, 47105u))), _wgslsmith_dot_vec4_u32(~func_1(), ~vec4<u32>(~1u, ~4294967295u, 0u, ~1u)), min(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4089u, 0u, 32593u, 1u), ~vec4<u32>(61562u, 1u, 1u, 9784u))));
    var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.x, 1u), ~var_0.x), _wgslsmith_dot_vec2_u32(var_0.zz, vec2<u32>(9348u, _wgslsmith_mult_u32(53254u, var_0.x))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_0.x, var_0.x) >> (vec3<u32>(var_0.x, 36289u, var_0.x) % vec3<u32>(32u)), vec3<u32>(0u, 18177u, var_0.x)), vec3<u32>(~91441u, var_0.x & 9724u, ~1u))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_0.x, 1u) << (~4294967295u % 32u), var_0.x, ~8950u), abs(vec3<u32>(reverseBits(var_0.x), 1u, var_0.x))));
    var var_1 = Struct_2(Struct_1(vec4<u32>(0u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 69922u, 0u), vec3<u32>(var_0.x, 91694u, 0u)), max(var_0.x, var_0.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_0.yx), min(40380u, 4294967295u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, 1u, 1u), vec4<u32>(45036u, var_0.x, 1u, var_0.x))), ~_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 60159u, 25565u), ~vec3<u32>(0u, 0u, var_0.x))), Struct_1(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(32203u, var_0.x), ~var_0.x), ~_wgslsmith_mod_u32(81396u, var_0.x), var_0.x, _wgslsmith_sub_u32(var_0.x, _wgslsmith_add_u32(60586u, var_0.x))), vec3<u32>(0u, ~select(var_0.x, var_0.x, true), ~var_0.x)), abs(abs(-vec2<i32>(u_input.e.x, u_input.d.x))), Struct_1(~func_1(), max(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, 1282u, var_0.x), vec4<u32>(var_0.x, var_0.x, 0u, var_0.x)), var_0.x, ~var_0.x), vec3<u32>(countOneBits(16131u), func_1().x, 0u))));
    let var_2 = ~var_1.b.a;
    var var_3 = Struct_3(Struct_2(var_1.b, var_1.b, ~reverseBits(firstLeadingBit(vec2<i32>(u_input.b, 0i))), var_1.b), var_1.c.x | _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d.xz, var_1.c), select(vec2<i32>(47550i, var_1.c.x), u_input.d.xw, vec2<bool>(false, false))), u_input.a.x), -(~min(firstTrailingBit(u_input.e.xxz), vec3<i32>(-1i, u_input.a.x, u_input.a.x))));
    let var_4 = _wgslsmith_clamp_vec3_i32(vec3<i32>(firstLeadingBit(_wgslsmith_mod_i32(var_1.c.x, var_1.c.x)), ~var_3.c.x, -_wgslsmith_dot_vec2_i32(var_1.c, vec2<i32>(var_3.b, var_3.a.c.x))), vec3<i32>(-31659i, -abs(var_1.c.x), 0i), var_3.c) >> (select(_wgslsmith_sub_vec3_u32(var_1.d.b, vec3<u32>(var_2.x, var_3.a.b.b.x, var_3.a.b.a.x) & ~var_1.a.a.xyz), var_3.a.d.a.wyz, u_input.e.x < ~(~(-21287i))) % vec3<u32>(32u));
    var_1 = Struct_2(var_3.a.a, var_3.a.a, u_input.d.zx, Struct_1(min(var_2, vec4<u32>(13802u, _wgslsmith_clamp_u32(0u, var_1.d.a.x, var_3.a.d.a.x), 31140u, var_2.x)), vec3<u32>(30396u, _wgslsmith_sub_u32(var_2.x, 0u) << (var_3.a.d.b.x % 32u), _wgslsmith_mod_u32(27783u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.yyw);
}

