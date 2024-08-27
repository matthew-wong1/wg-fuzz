struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(10241i, vec4<bool>(false, false, true, false), vec3<i32>(0i, -48630i, i32(-2147483648))), true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool) -> vec4<bool> {
    var var_0 = 1i;
    var var_1 = true;
    var_0 = -select(_wgslsmith_add_i32(-1478i, -abs(global0.a.a)), _wgslsmith_dot_vec2_i32(abs(arg_0.c.yy << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))), u_input.a.zz), arg_2);
    let var_2 = Struct_3(Struct_1(arg_0.a, select(vec4<bool>(any(arg_0.b.zw), true, !arg_0.b.x, all(global0.a.b.zwz)), vec4<bool>(!global0.a.b.x, false, true, arg_2), !global0.b), ~arg_1), arg_0.b.x);
    var var_3 = _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, 43751u, min(42794u, 4294967295u), 10844u), countOneBits(vec4<u32>(0u, 1680u, 0u, 4294967295u)) ^ firstTrailingBit(vec4<u32>(2179u, 1u, 4294967295u, 1u))) << (~(~(~vec4<u32>(17705u, 1u, 13457u, 26952u))) % vec4<u32>(32u)), firstTrailingBit(~vec4<u32>(1u, 1u, _wgslsmith_mod_u32(21943u, 65523u), 78843u)));
    return !(!select(vec4<bool>(true, false, 2147483647i <= var_2.a.a, true), global0.a.b, !select(arg_0.b, global0.a.b, false)));
}

fn func_2() -> Struct_3 {
    var var_0 = abs(vec4<u32>(8801u, ~max(~0u, countOneBits(11087u)), firstTrailingBit(0u), 0u));
    return Struct_3(Struct_1(-1i, select(select(func_3(Struct_1(2929i, vec4<bool>(false, true, global0.a.b.x, global0.b), u_input.a.xyx), u_input.a.xxx, false), global0.a.b, !vec4<bool>(true, false, global0.b, global0.a.b.x)), !vec4<bool>(global0.a.b.x, global0.b, true, global0.a.b.x), func_3(global0.a, ~vec3<i32>(global0.a.c.x, global0.a.a, u_input.a.x), global0.a.b.x).x), vec3<i32>(~(~(-1i)), ~u_input.b, i32(-1i) * -u_input.a.x)), global0.a.b.x);
}

fn func_1() -> u32 {
    let var_0 = 1117f;
    var var_1 = global0.a.b.yyz;
    global0 = func_2();
    var_1 = vec3<bool>(any(func_3(func_2().a, _wgslsmith_div_vec3_i32(~u_input.a.wzx, _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, global0.a.a, global0.a.c.x), vec3<i32>(u_input.b, 1i, -2147483647i), vec3<i32>(1i, u_input.b, global0.a.c.x))), !(29107i >= global0.a.a)).wyy), (true && any(var_1.xy)) || global0.b, true);
    global0 = func_2();
    return 1u;
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: i32) -> StorageBuffer {
    let var_0 = ~_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(global0.a.c.xx, _wgslsmith_sub_vec2_i32(select(vec2<i32>(arg_0, 24395i), global0.a.c.zy, false), global0.a.c.yx)), abs(global0.a.c.xx));
    let var_1 = ~abs(vec2<u32>(_wgslsmith_div_u32(31286u, 4294967295u) << (arg_1.x % 32u), ~1u));
    let var_2 = true;
    global0 = func_2();
    global0 = func_2();
    return StorageBuffer(-(var_0.x & ~firstLeadingBit(u_input.b)), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-170f - 974f) + _wgslsmith_f_op_f32(267f * -756f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1535f * -394f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-139f)) * _wgslsmith_f_op_f32(f32(-1f) * -978f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global0.a, global0.a, -1910f, vec4<u32>(0u, firstTrailingBit(~4294967295u >> (1u % 32u)), _wgslsmith_dot_vec4_u32(reverseBits(max(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(49718u, 40062u, 4585u, 20651u))), ~vec4<u32>(1u, 1u, 1u, 1u)), 1u));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.c, var_0.c)));
    var var_3 = true;
    var_2 = -897f;
    var var_4 = (~(~var_0.b.a) >= var_0.b.a) | false;
    let x = u_input.a;
    s_output = func_4(-_wgslsmith_sub_i32(var_0.a.a, _wgslsmith_sub_i32(-12946i, -11008i)), _wgslsmith_div_vec3_u32(~_wgslsmith_clamp_vec3_u32(var_0.d.wxw, var_0.d.zww, vec3<u32>(8267u, 29243u, 41357u)), vec3<u32>(_wgslsmith_mult_u32(1u, 9500u), _wgslsmith_clamp_u32(0u, var_0.d.x, 0u), func_1())) | vec3<u32>(firstTrailingBit(var_0.d.x) ^ var_0.d.x, 53008u, 24879u), !(!(!select(vec3<bool>(true, true, false), vec3<bool>(global0.a.b.x, true, false), true))), _wgslsmith_add_i32(-2147483647i, abs(~firstTrailingBit(var_0.b.c.x))));
}

