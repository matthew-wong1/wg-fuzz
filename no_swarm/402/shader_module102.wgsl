struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    let var_0 = -max(u_input.d.x << (u_input.c % 32u), reverseBits(_wgslsmith_div_i32(-2147483647i, u_input.d.x & 11660i)));
    var var_1 = Struct_1(true);
    var var_2 = abs(~u_input.c);
    var_2 = 38558u;
    var var_3 = _wgslsmith_f_op_f32(-1f);
    return u_input.b;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: i32) -> vec3<bool> {
    global0 = array<vec4<f32>, 24>();
    global0 = array<vec4<f32>, 24>();
    var var_0 = Struct_2(_wgslsmith_sub_vec2_u32(arg_1.b.a, vec2<u32>(9005u, func_3())), Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.b.a, vec2<u32>(4294967295u, arg_1.a)), min(arg_1.b.a, arg_1.b.a)) >= 71748u), Struct_1(false), vec2<f32>(-1000f, _wgslsmith_f_op_f32(609f * arg_1.b.d.x)));
    global0 = array<vec4<f32>, 24>();
    var var_1 = firstLeadingBit(~4294967295u);
    return select(vec3<bool>(arg_1.d, true, arg_1.b.c.a), vec3<bool>(select(all(vec2<bool>(false, arg_0)), any(vec4<bool>(arg_0, false, false, false)), true), var_0.c.a, arg_1.b.d.x < var_0.d.x), !select(!(!vec3<bool>(true, var_0.c.a, arg_1.b.b.a)), !select(vec3<bool>(true, false, arg_1.d), vec3<bool>(arg_1.b.c.a, true, arg_1.d), vec3<bool>(true, true, true)), arg_2 <= _wgslsmith_clamp_i32(-1i, 10060i, -2147483647i)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_3 {
    return Struct_3((arg_2.a.x | ~(~1u)) << (~firstTrailingBit(4294967295u) % 32u), arg_2, -min(abs(vec2<i32>(u_input.d.x, u_input.d.x) | vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.d.x, u_input.d.x) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, arg_2.a.x)) % vec2<u32>(32u))), all(select(select(vec4<bool>(true, false, false, arg_2.b.a), arg_1, vec4<bool>(arg_1.x, arg_2.c.a, true, arg_1.x)), arg_1, false)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_1 {
    global0 = array<vec4<f32>, 24>();
    let var_0 = func_4(arg_0.xy, vec4<bool>((_wgslsmith_f_op_f32(-arg_1.d.x) != _wgslsmith_f_op_f32(-arg_1.d.x)) & all(func_2(arg_2.x, Struct_3(4294967295u, Struct_2(arg_0.wy, arg_1.c, Struct_1(true), arg_1.d), vec2<i32>(u_input.d.x, u_input.d.x), arg_2.x), -6980i)), false | !(arg_1.c.a != arg_2.x), u_input.a == abs(countOneBits(u_input.d.x)), true), arg_1);
    global0 = array<vec4<f32>, 24>();
    let var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(func_4(vec2<u32>(88111u, u_input.b), !vec4<bool>(var_0.d, arg_2.x, false, var_0.d), Struct_2(arg_0.ww, Struct_1(false), Struct_1(arg_1.b.a), arg_1.d)).c, select(u_input.d, u_input.d, arg_2.xx) & firstLeadingBit(var_0.c)) >> ((arg_0.zx >> (max(~vec2<u32>(u_input.b, arg_0.x), max(vec2<u32>(1u, var_0.a), arg_0.zw)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(reverseBits(-2147483647i), u_input.a));
    global0 = array<vec4<f32>, 24>();
    return arg_1.c;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec3<bool>) -> vec4<bool> {
    let var_0 = func_4(arg_1.a, select(!select(!arg_2, arg_2, true || arg_3.x), arg_2, arg_2), arg_1);
    let var_1 = Struct_1(true);
    global0 = array<vec4<f32>, 24>();
    var var_2 = _wgslsmith_clamp_i32(arg_0.x, _wgslsmith_add_i32(1i, func_4(vec2<u32>(_wgslsmith_sub_u32(34349u, var_0.a), _wgslsmith_mult_u32(22530u, var_0.b.a.x)), arg_2, var_0.b).c.x), _wgslsmith_sub_i32(arg_0.x, abs(_wgslsmith_mult_i32(1i, func_4(arg_1.a, arg_2, Struct_2(var_0.b.a, Struct_1(arg_1.c.a), var_1, vec2<f32>(1000f, -1689f))).c.x))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(func_4(arg_1.a >> (var_0.b.a % vec2<u32>(32u)), arg_2, func_4(arg_1.a, arg_2, arg_1).b).b.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1071f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1560f) * -353f), _wgslsmith_f_op_f32(-arg_1.d.x)))) * global0[_wgslsmith_index_u32(1u, 24u)]);
    return vec4<bool>(true, arg_1.c.a, arg_1.a.x == u_input.b, arg_2.x);
}

fn func_6(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_1(true);
    var_0 = func_1((reverseBits(countOneBits(vec4<u32>(u_input.c, u_input.b, 0u, 4375u))) & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 33181u, u_input.b, u_input.b) << (vec4<u32>(4294967295u, 4294967295u, 0u, u_input.b) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(0u, u_input.b, u_input.b, 11709u), vec4<u32>(u_input.c, u_input.c, u_input.b, u_input.c)))) >> ((select(vec4<u32>(14656u, 11038u, 4294967295u, u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 18355u, u_input.c, 61741u), vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)), any(vec3<bool>(false, arg_1.x, arg_1.x))) << (~(~vec4<u32>(u_input.b, u_input.c, u_input.c, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)), func_4(~vec2<u32>(86030u, _wgslsmith_add_u32(63676u, u_input.c)), vec4<bool>(var_0.a, select(var_0.a, true, true), var_0.a || true, !var_0.a != !arg_1.x), Struct_2(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(20896u, 20190u), vec2<u32>(1u, u_input.c), vec2<u32>(0u, u_input.c)), vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), func_1(~vec4<u32>(u_input.c, 66903u, u_input.c, u_input.c), Struct_2(vec2<u32>(u_input.c, 27226u), Struct_1(var_0.a), Struct_1(var_0.a), arg_0.xx), vec3<bool>(arg_1.x, var_0.a, true)), Struct_1(false), arg_0.xy)).b, arg_1.xyx);
    var var_1 = -860f;
    global0 = array<vec4<f32>, 24>();
    let var_2 = vec3<u32>(u_input.b, 4294967295u, u_input.c);
    return Struct_2(vec2<u32>(firstTrailingBit(~4294967295u), var_2.x), Struct_1(arg_1.x), Struct_1(!func_2(true, func_4(vec2<u32>(var_2.x, var_2.x), vec4<bool>(false, true, false, true), Struct_2(vec2<u32>(1u, 0u), Struct_1(arg_1.x), Struct_1(true), vec2<f32>(982f, arg_0.x))), firstTrailingBit(u_input.a)).x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(arg_0.zx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.x, 1098f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xz) * vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(arg_0.x + arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(1u, func_6(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-1057f + 261f), _wgslsmith_div_f32(-1659f, 1493f), _wgslsmith_f_op_f32(199f - -509f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1068f, 1240f, -1677f) * vec3<f32>(-1450f, -1040f, -2062f))))), func_5(u_input.d, Struct_2(vec2<u32>(0u, 25424u), func_1(vec4<u32>(33875u, 45582u, u_input.c, 0u), Struct_2(vec2<u32>(9568u, 4294967295u), Struct_1(true), Struct_1(true), vec2<f32>(-636f, 896f)), vec3<bool>(false, false, false)), func_4(vec2<u32>(0u, u_input.c), vec4<bool>(false, false, true, false), Struct_2(vec2<u32>(u_input.b, u_input.b), Struct_1(true), Struct_1(false), vec2<f32>(731f, -1858f))).b.b, _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1131f), vec2<f32>(3324f, 188f))), vec4<bool>(u_input.c <= 1u, true, func_1(vec4<u32>(u_input.c, u_input.b, u_input.b, u_input.b), Struct_2(vec2<u32>(u_input.c, u_input.b), Struct_1(true), Struct_1(false), vec2<f32>(-265f, 203f)), vec3<bool>(false, true, true)).a, false), vec3<bool>(true, true, true)), select(-u_input.d, firstTrailingBit(_wgslsmith_clamp_vec2_i32(u_input.d, vec2<i32>(1i, -1i), u_input.d)), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))), abs(u_input.d), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(876f)) * -1551f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(370f + -156f) + _wgslsmith_f_op_f32(-562f * 244f))));
    var var_1 = ~u_input.c;
    global0 = array<vec4<f32>, 24>();
    let var_2 = var_0.a == u_input.b;
    let var_3 = func_4(max(~_wgslsmith_clamp_vec2_u32(var_0.b.a, var_0.b.a, var_0.b.a), var_0.b.a) ^ _wgslsmith_clamp_vec2_u32(var_0.b.a >> (~var_0.b.a % vec2<u32>(32u)), vec2<u32>(abs(1u), 1u), func_4(~var_0.b.a, !vec4<bool>(var_0.b.b.a, true, false, true), var_0.b).b.a), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.d.x, 605f)) > _wgslsmith_div_f32(-193f, _wgslsmith_f_op_f32(-var_0.b.d.x)), true, true, all(func_5(vec2<i32>(-34207i, var_0.c.x), var_0.b, func_5(vec2<i32>(1i, var_0.c.x), var_0.b, vec4<bool>(true, var_0.b.c.a, false, var_0.b.b.a), vec3<bool>(var_0.d, false, var_2)), func_5(u_input.d, Struct_2(var_0.b.a, var_0.b.b, var_0.b.c, vec2<f32>(-1618f, 965f)), vec4<bool>(var_2, true, var_0.b.b.a, var_0.d), vec3<bool>(var_2, var_0.d, true)).www).xyw)), Struct_2(vec2<u32>(reverseBits(52240u), ~var_0.a) ^ var_0.b.a, func_1(~vec4<u32>(38088u, var_0.a, var_0.a, u_input.b) | (vec4<u32>(125429u, u_input.b, 5900u, var_0.a) | vec4<u32>(var_0.a, var_0.b.a.x, 0u, 0u)), var_0.b, select(!vec3<bool>(var_0.b.b.a, var_0.b.c.a, false), vec3<bool>(true, var_2, false), vec3<bool>(false, var_2, false))), func_6(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.d.x, 344f, var_0.b.d.x) + vec3<f32>(var_0.b.d.x, 115f, var_0.b.d.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.d.x, var_0.b.d.x, -218f) + vec3<f32>(var_0.b.d.x, -1144f, var_0.b.d.x)))), select(vec4<bool>(false, false, true, var_0.b.c.a), func_5(vec2<i32>(-4916i, u_input.d.x), Struct_2(vec2<u32>(var_0.a, var_0.a), Struct_1(var_0.b.b.a), Struct_1(var_2), var_0.b.d), vec4<bool>(var_0.d, false, var_2, true), vec3<bool>(var_2, var_0.d, var_2)), !vec4<bool>(var_2, var_2, var_0.b.b.a, true)), vec2<i32>(8671i, func_4(vec2<u32>(var_0.a, 19000u), vec4<bool>(var_2, var_0.b.b.a, true, var_2), Struct_2(vec2<u32>(28147u, u_input.c), var_0.b.b, var_0.b.c, vec2<f32>(1260f, -1506f))).c.x)).b, var_0.b.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.d.x, var_0.b.d.x, var_0.b.d.x))), vec3<f32>(_wgslsmith_f_op_f32(var_0.b.d.x - var_3.b.d.x), _wgslsmith_f_op_f32(1921f * var_3.b.d.x), var_0.b.d.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.d.x, 319f, 1080f))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b.d.x, 1779f, -829f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.d.x, 2151f, -1116f))))));
}

