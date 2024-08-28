struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: u32 = 27860u;

var<private> global2: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(4294967295u), Struct_4(77542u), Struct_4(4294967295u), Struct_4(80536u), Struct_4(4294967295u), Struct_4(1u), Struct_4(4294967295u), Struct_4(4294967295u), Struct_4(4294967295u), Struct_4(0u), Struct_4(13378u), Struct_4(60708u), Struct_4(45590u), Struct_4(70019u), Struct_4(0u), Struct_4(22265u), Struct_4(4294967295u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>) -> f32 {
    var var_0 = ~global0.x;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(-844f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(417f, 405f)), _wgslsmith_f_op_f32(-240f - 1000f))) * -1000f))), 679f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-561f)) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -1000f), _wgslsmith_f_op_f32(1071f - -272f))))));
    global1 = ~71970u;
    global2 = array<Struct_4, 17>();
    let var_2 = 270f;
    return _wgslsmith_f_op_f32(sign(-825f));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: f32) -> Struct_1 {
    global2 = array<Struct_4, 17>();
    let var_0 = firstTrailingBit(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(~u_input.a, firstTrailingBit(u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(14529i, arg_1, 49713i), vec3<i32>(1i, arg_1, arg_1))) | ~u_input.a);
    global1 = abs(firstTrailingBit(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(global0.x, global0.x, global0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(global0.x, 42389u, 1u)), !arg_0), vec3<u32>(33339u >> (global0.x % 32u), abs(global0.x), 9258u))));
    let var_1 = 62267u;
    var var_2 = global0.x;
    return Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(79301u, 1u, 1u), ~vec3<u32>(4294967295u, 43829u, 1u)), global0.x), vec4<u32>(4294967295u, _wgslsmith_add_u32(5998u, var_1) << (global0.x % 32u), var_1, 0u)), select(~_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, 1u), vec2<u32>(30840u, 8654u)), ~(~vec2<u32>(global0.x, 0u)), arg_0.yx) >> (~select(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(var_1, 4294967295u)), countOneBits(vec2<u32>(global0.x, 41527u)), arg_0.x) % vec2<u32>(32u)), _wgslsmith_f_op_f32(select(705f, _wgslsmith_f_op_f32(f32(-1f) * -419f), _wgslsmith_f_op_f32(func_3(vec2<u32>(47996u, var_1), abs(vec3<u32>(24834u, var_1, var_1)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, arg_2, true))))), ~(~(~(~vec4<u32>(var_1, 4294967295u, var_1, global0.x)))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    global2 = array<Struct_4, 17>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1109f, var_0.c.c), vec2<f32>(arg_1.d.c, var_0.c.c), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1200f, -1410f)), any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(503f, arg_2.c)), false))));
    var var_2 = 24314u;
    var_2 = 0u;
    return var_0.c;
}

fn func_1() -> Struct_1 {
    let var_0 = global0.x;
    global0 = abs(vec2<u32>(max(_wgslsmith_mod_u32(global0.x, 1u), _wgslsmith_clamp_u32(1202u, 32180u, global0.x)) & ~_wgslsmith_mod_u32(global0.x, 16162u), global0.x));
    var var_1 = func_4(global0.x, Struct_2(vec3<i32>(max(-10455i, _wgslsmith_clamp_i32(1i, 63802i, -2147483647i)), u_input.a.x, -2147483647i), 973f, Struct_1(~vec4<u32>(56247u, 4294967295u, 1u, global0.x), vec2<u32>(_wgslsmith_sub_u32(20045u, global0.x), _wgslsmith_add_u32(global0.x, 40667u)), -346f, ~vec4<u32>(69901u, global0.x, global0.x, global0.x) | (vec4<u32>(global0.x, 14272u, 52233u, 1u) >> (vec4<u32>(100478u, 4294967295u, 1u, global0.x) % vec4<u32>(32u)))), func_2(vec3<bool>(true, any(vec3<bool>(true, true, true)), false), reverseBits(u_input.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1062f, -306f))))), func_2(vec3<bool>(true, any(vec4<bool>(false, true, true, false)) != all(vec4<bool>(true, false, true, false)), true || all(vec4<bool>(false, true, true, false))), u_input.a.x, func_2(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), -2147483647i, 678f).c));
    global2 = array<Struct_4, 17>();
    var_1 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(global0.x, global0.x, global0.x, global0.x), var_1.a), ~vec4<u32>(global0.x << (2373u % 32u), 1u, var_1.d.x, 58263u)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.b.x, _wgslsmith_clamp_u32(~global0.x, global0.x, ~var_1.a.x)), ~vec2<u32>(abs(4294967295u), ~4294967295u)), 789f, _wgslsmith_sub_vec4_u32(~max(vec4<u32>(global0.x, 40772u, global0.x, global0.x), vec4<u32>(global0.x, var_1.b.x, global0.x, global0.x)) ^ vec4<u32>(select(var_1.b.x, 1u, true), 1u << (global0.x % 32u), ~var_1.b.x, ~26072u), vec4<u32>(~(~34348u), ~var_1.d.x, abs(80099u), 46619u)));
    return Struct_1(var_1.a, _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(58741u, 76000u), vec2<u32>(var_1.b.x, global0.x) >> (vec2<u32>(14438u, 4294967295u) % vec2<u32>(32u))) << (firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, 1298u), vec2<u32>(9606u, 35375u), vec2<u32>(var_1.d.x, global0.x))) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(var_1.b, vec2<u32>(~global0.x, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-183f))))), ~vec4<u32>(global0.x, 33495u, ~(5110u >> (1u % 32u)), ~global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_2(vec3<bool>(true, true, true), firstTrailingBit(u_input.a.x), _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c)) + 2203f))));
    let var_2 = -876f;
    global0 = ~(vec2<u32>(~141u, 46708u) >> (var_1.d.wy % vec2<u32>(32u))) & min(vec2<u32>(~global0.x, 1u), vec2<u32>(firstLeadingBit(var_1.d.x), _wgslsmith_mult_u32(_wgslsmith_sub_u32(global0.x, 0u), global0.x << (var_1.d.x % 32u))));
    let var_3 = ~global0.x;
    global0 = var_0.b;
    let var_4 = -(~vec3<i32>(u_input.a.x, _wgslsmith_add_i32(abs(u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), ~u_input.a.x));
    var_0 = var_1;
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1006f)) * _wgslsmith_div_f32(var_2, var_1.c)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 + func_1().c), _wgslsmith_div_f32(var_0.c, _wgslsmith_div_f32(-254f, var_0.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_0.c)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(-1000f - -1520f)), var_2), _wgslsmith_f_op_f32(trunc(116f))), firstLeadingBit(_wgslsmith_mod_vec4_u32(~(~var_0.a), vec4<u32>(reverseBits(var_3), var_1.b.x, 0u, reverseBits(1u)))), var_1.d.www, var_0.c, ~var_0.a);
}

