struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: i32) -> vec2<bool> {
    let var_0 = select(all(arg_1.a.a.yzy), true, any(!arg_1.a.a.wz));
    global1 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 1u, 4294967295u)), select(~vec3<u32>(global1.x, 35549u, u_input.c), ~vec3<u32>(4294967295u, 38270u, 8799u), arg_1.a.a.yyw)), vec3<u32>(u_input.c, 1u, ~u_input.c)) | vec3<u32>(global1.x, u_input.c, max(~(~global1.x), ~47655u));
    var var_1 = 9093i;
    let var_2 = vec3<bool>(arg_1.a.a.x, true, var_0);
    var var_3 = arg_1.a;
    return vec2<bool>(arg_1.a.a.x, var_3.b.x);
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    let var_0 = Struct_1(vec4<bool>(true, false, false, false), !select(vec2<bool>(true, true), vec2<bool>(true, false), func_3(_wgslsmith_add_vec2_i32(u_input.b.xx, u_input.a.zz), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(false, true))), firstLeadingBit(1i))));
    var var_1 = (_wgslsmith_div_u32(countOneBits(firstTrailingBit(12136u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1382u, 0u, 27816u, global1.x), ~vec4<u32>(global1.x, global1.x, 4294967295u, global1.x))) ^ ((_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(36721u, u_input.c)) >> (1u % 32u)) >> (46635u % 32u))) >> (global1.x % 32u);
    global1 = max(~min(min(vec3<u32>(63168u, global1.x, 59387u), vec3<u32>(u_input.c, global1.x, global1.x)), vec3<u32>(_wgslsmith_div_u32(global1.x, 42636u), 20951u, 1u)), countOneBits(firstLeadingBit(vec3<u32>(global1.x, global1.x, u_input.c) & vec3<u32>(1u, global1.x, 20576u))) & ~(select(vec3<u32>(1u, u_input.c, 45721u), vec3<u32>(global1.x, 12203u, u_input.c), var_0.a.x) ^ firstTrailingBit(vec3<u32>(global1.x, global1.x, 20306u))));
    var_1 = _wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(~max(vec4<u32>(4294967295u, u_input.c, 47514u, global1.x), vec4<u32>(4294967295u, u_input.c, 48275u, u_input.c)), ~vec4<u32>(58940u, u_input.c, 36594u, u_input.c)) >> (~global1.x % 32u));
    let var_2 = Struct_1(select(vec4<bool>(true, var_0.b.x, var_0.b.x && var_0.a.x, var_0.b.x), vec4<bool>(!(!var_0.b.x), var_0.b.x, all(select(var_0.a, var_0.a, vec4<bool>(var_0.a.x, true, true, var_0.b.x))), min(-2147483647i, arg_0.x) == u_input.b.x), !var_0.a.x), var_0.b);
    return _wgslsmith_f_op_f32(509f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -650f))));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(1599f, -371f);
    let var_1 = 3577u;
    var var_2 = arg_1;
    var var_3 = ~(~vec3<u32>(global1.x << (0u % 32u), ~25335u | (u_input.c & u_input.c), ~(~4294967295u)));
    var var_4 = u_input.a;
    return Struct_1(select(!(!(!vec4<bool>(arg_2.a.a.x, true, arg_2.a.a.x, false))), arg_3.a.a, any(!(!vec2<bool>(arg_3.a.b.x, true)))), select(vec2<bool>(func_3(u_input.a.zy, arg_3, arg_1).x, !arg_3.a.b.x), vec2<bool>(arg_3.a.b.x, max(u_input.c, global1.x) <= u_input.c), arg_3.a.b));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(387f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1305f, 259f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yz - vec2<f32>(arg_0.x, arg_0.x))) * vec2<f32>(_wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(func_2(vec2<i32>(29762i, arg_1)))))), _wgslsmith_clamp_i32(firstTrailingBit(arg_1) >> (u_input.c % 32u), _wgslsmith_dot_vec2_i32(countOneBits(u_input.b.yz), u_input.a.wz), (0i << (global1.x % 32u)) >> (global1.x % 32u)) ^ arg_1, Struct_2(Struct_1(vec4<bool>(true, true, arg_2.a.b.x, arg_2.a.b.x), vec2<bool>(select(false, false, arg_2.a.b.x), false))), Struct_2(Struct_1(arg_2.a.a, func_3(~u_input.a.yx, arg_2, _wgslsmith_sub_i32(-24796i, -4303i)))));
    let var_1 = abs(u_input.c);
    var var_2 = reverseBits(reverseBits(~vec3<u32>(48500u, 45198u, 0u) >> (~vec3<u32>(var_1, 69020u, 0u) % vec3<u32>(32u))) << (vec3<u32>(u_input.c, _wgslsmith_mod_u32(4294967295u, firstTrailingBit(var_1)), ~countOneBits(20494u)) % vec3<u32>(32u)));
    var var_3 = func_4(arg_0.xz, arg_1, Struct_2(Struct_1(!vec4<bool>(false, true, arg_2.a.b.x, arg_2.a.a.x), var_0.b)), arg_2);
    var var_4 = arg_2.a;
    return arg_2;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: vec4<i32>) -> vec4<i32> {
    return _wgslsmith_mult_vec4_i32(~vec4<i32>(-u_input.a.x, ~2147483647i, 14634i, -43765i), vec4<i32>(-2147483647i, ~arg_3.x, -u_input.b.x, -16758i) >> (countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(3073u, 1u, 52039u, u_input.c), vec4<u32>(u_input.c, u_input.c, 30328u, u_input.c), vec4<u32>(4294967295u, u_input.c, 80590u, global1.x)), vec4<u32>(3093u, u_input.c, u_input.c, u_input.c))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_i32(select(u_input.a, _wgslsmith_add_vec4_i32(func_5(1000f, -25118i, func_1(vec3<f32>(-900f, 133f, -2128f), u_input.a.x, Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(true, true)))), ~vec4<i32>(u_input.a.x, 1i, 25360i, u_input.b.x)), vec4<i32>(u_input.a.x, ~(-2147483647i), countOneBits(u_input.b.x), firstLeadingBit(u_input.a.x))), any(select(func_4(vec2<f32>(883f, -308f), u_input.b.x, Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, true))), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, false)))).a, vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)))), ~(-(~u_input.a)));
    var var_1 = func_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(703f)) * _wgslsmith_f_op_f32(1000f - 429f)), -373f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1195f * -660f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1027f, 832f), _wgslsmith_div_f32(-693f, 297f), -180f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-419f, -1808f, 1552f) - vec3<f32>(-545f, -201f, -213f))))), i32(-1i) * -53353i, func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1141f, 189f, 917f) - vec3<f32>(666f, -2450f, 1000f))) + vec3<f32>(-704f, _wgslsmith_f_op_f32(sign(229f)), _wgslsmith_f_op_f32(step(187f, -999f)))), ~(-6128i), Struct_2(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-105f, -739f, 281f) + vec3<f32>(-1192f, -941f, 1460f)), 15241i, func_1(vec3<f32>(768f, -1000f, -267f), -41463i, Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(false, false))))).a)));
    let var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, ~0u, global1.x) & ~_wgslsmith_add_vec3_u32(vec3<u32>(12840u, 0u, 4294967295u), vec3<u32>(u_input.c, 4294967295u, global1.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(global1.x, 1u, u_input.c), ~vec3<u32>(1u, global1.x, u_input.c))), ~abs(vec3<u32>(~u_input.c, ~66044u, u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(((~var_2.x | select(64433u, 0u, var_1.a.a.x)) << (23346u % 32u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, reverseBits(u_input.c), ~var_2.x), vec3<u32>(abs(4294967295u), abs(global1.x), min(34371u, 6414u))), var_2, vec2<u32>(_wgslsmith_dot_vec2_u32(abs(global1.zz), global1.zz), abs(~(~u_input.c))), 87523u, select(global1.x ^ 0u, min(~u_input.c, ~global1.x) & (u_input.c ^ ~u_input.c), any(!func_1(vec3<f32>(-1279f, 803f, 1000f), 6124i, Struct_2(Struct_1(vec4<bool>(true, true, var_1.a.a.x, true), vec2<bool>(false, var_1.a.a.x)))).a.a.xzx)));
}

