struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<u32>(0u, 29095u), Struct_2(vec3<f32>(561f, -310f, 2836f), 23009i, -2425f, vec2<i32>(-1i, -49404i), Struct_1(1744f, vec3<u32>(27512u, 4294967295u, 20920u))), vec2<u32>(25822u, 3863u), Struct_1(708f, vec3<u32>(57762u, 105702u, 4294967295u)), Struct_3(vec3<u32>(57129u, 24644u, 1u)));

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 0u, 74355u, 1499u);

var<private> global2: f32 = -1492f;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_4(global0.b.e.b.xz, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(391f, 786f, global0.d.a)))), ~global0.b.d.x, 474f, select(global0.b.d, vec2<i32>(-global0.b.b, ~1i), true), Struct_1(2624f, _wgslsmith_mult_vec3_u32(vec3<u32>(global0.a.x, global0.e.a.x, 4294967295u), vec3<u32>(global1.x, global1.x, global0.c.x)) | global0.e.a)), ~(~global1.zx), global0.b.e, global0.e);
    global1 = ~(~vec4<u32>(global1.x, _wgslsmith_dot_vec2_u32(global0.b.e.b.xx, vec2<u32>(0u, global0.b.e.b.x)), 0u & var_0.d.b.x, _wgslsmith_sub_u32(global0.e.a.x, 49145u)) >> (vec4<u32>(global0.d.b.x, global1.x, firstTrailingBit(~3956u), global1.x) % vec4<u32>(32u)));
    var var_1 = var_0.d;
    var var_2 = var_0;
    var var_3 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true || (u_input.a > -21408i)), vec3<bool>(any(vec3<bool>(false, false, false)) || true, !any(vec2<bool>(true, true)), false), ~0u == global1.x);
    return vec2<u32>(global0.c.x, ~(~(~var_0.e.a.x))) | vec2<u32>(~var_1.b.x, global0.e.a.x);
}

fn func_2() -> Struct_3 {
    var var_0 = vec2<i32>(~global0.b.d.x, u_input.a) << (select(reverseBits(func_3() ^ vec2<u32>(38480u, global0.c.x)), global1.zy, vec2<bool>(true, !(-366f >= global0.b.e.a))) % vec2<u32>(32u));
    var var_1 = _wgslsmith_div_f32(global0.b.c, global0.d.a);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(505f))), global0.d.a)), -2147483647i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.d.a))), _wgslsmith_f_op_f32(f32(-1f) * -330f))), _wgslsmith_add_vec2_i32(global0.b.d, global0.b.d) << (_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), global1.yy), ~global0.b.e.b.x), ~global0.e.a.zy) % vec2<u32>(32u)), global0.d);
    global0 = Struct_4(vec2<u32>(~(1u & var_2.e.b.x) >> (87822u % 32u), var_2.e.b.x), Struct_2(vec3<f32>(var_2.c, _wgslsmith_f_op_f32(-var_2.e.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-489f, 711f)) + 1557f)), _wgslsmith_mod_i32(abs(u_input.a), 2147483647i), _wgslsmith_f_op_f32(sign(var_2.c)), abs(~vec2<i32>(u_input.a, -25231i)) << (~(vec2<u32>(var_2.e.b.x, 4294967295u) & vec2<u32>(444u, 4294967295u)) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(ceil(438f)), select(vec3<u32>(45086u, 3120u, 39999u), vec3<u32>(10962u, var_2.e.b.x, 51932u), true) | (vec3<u32>(4294967295u, 1u, global0.c.x) | vec3<u32>(global0.c.x, 1u, 24713u)))), _wgslsmith_add_vec2_u32(firstTrailingBit(func_3()), func_3()), Struct_1(-618f, abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.e.b.x, 39024u, global1.x), vec3<u32>(global1.x, global0.b.e.b.x, 10386u)))), global0.e);
    return Struct_3(vec3<u32>(_wgslsmith_div_u32(~4294967295u, global1.x & 1u), ~_wgslsmith_dot_vec2_u32(global1.yw, vec2<u32>(4294967295u, 1089u)), global1.x) >> (abs(~min(vec3<u32>(global1.x, 4294967295u, global0.b.e.b.x), global0.e.a)) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_4 {
    global0 = Struct_4(global0.e.a.yz, global0.b, vec2<u32>(1u, func_3().x), global0.d, Struct_3(_wgslsmith_div_vec3_u32(global0.b.e.b, vec3<u32>(4294967295u, arg_0.a.x, 4294967295u) << (~arg_0.a % vec3<u32>(32u)))));
    var var_0 = 4294967295u;
    let var_1 = true;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.b.a, global0.b.a, true)), _wgslsmith_f_op_vec3_f32(max(global0.b.a, global0.b.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(385f, global0.d.a, 562f))))), 24427i, _wgslsmith_div_f32(1456f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-162f + global0.d.a))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.d.a * -533f))))), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(-(~global0.b.d), global0.b.d), _wgslsmith_clamp_vec2_i32(global0.b.d, vec2<i32>(min(-2147483647i, 3330i), arg_1), global0.b.d)), Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(796f, _wgslsmith_f_op_f32(round(global0.b.e.a))), 1000f), _wgslsmith_add_vec3_u32(global0.d.b << (_wgslsmith_add_vec3_u32(arg_0.a, vec3<u32>(global0.a.x, global0.c.x, 1u)) % vec3<u32>(32u)), arg_0.a)));
    var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(max(global0.d.a, global0.d.a)), var_2.c) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.d.a, 548f, global0.b.c), _wgslsmith_f_op_vec3_f32(-var_2.a)))) * global0.b.a), var_2.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.e.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1062f))))), var_2.d, global0.d);
    return Struct_4(global0.c, Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-626f, var_2.e.a, 1589f) - vec3<f32>(var_2.a.x, global0.b.e.a, var_2.e.a)))))), -_wgslsmith_mod_i32(var_2.d.x, 23871i), global0.d.a, select(select(_wgslsmith_sub_vec2_i32(var_2.d, var_2.d), reverseBits(var_2.d), !vec2<bool>(var_1, false)), abs(vec2<i32>(global0.b.b, -36521i) << (vec2<u32>(global1.x, var_2.e.b.x) % vec2<u32>(32u))), !select(vec2<bool>(var_1, var_1), vec2<bool>(false, var_1), vec2<bool>(var_1, var_1))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1204f - var_2.c)), vec3<u32>(arg_0.a.x, countOneBits(27149u), 75624u << (var_2.e.b.x % 32u)))), vec2<u32>(93422u, 63637u), global0.d, global0.e);
}

fn func_1(arg_0: u32) -> u32 {
    global0 = func_4(func_2(), global0.b.d.x);
    var var_0 = global0.b.d;
    let var_1 = 575f;
    let var_2 = 80524i;
    let var_3 = -_wgslsmith_mult_vec3_i32(firstLeadingBit(-vec3<i32>(2147483647i, u_input.a, var_0.x)) >> (global1.zxy % vec3<u32>(32u)), abs(max(~vec3<i32>(var_2, var_2, 2147483647i), max(vec3<i32>(var_2, -1i, global0.b.b), vec3<i32>(-1i, 0i, u_input.a)))));
    return _wgslsmith_div_u32(reverseBits(global1.x), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, global0.c.x, arg_0, 4294967295u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, global1.x, global0.b.e.b.x, arg_0), vec4<u32>(4294967295u, 45137u, global1.x, global0.b.e.b.x))), firstLeadingBit(func_2().a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.d.a;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-842f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.a - global0.d.a) * _wgslsmith_f_op_f32(f32(-1f) * -1739f)), true || all(vec3<bool>(false, true, true))))));
    var var_1 = Struct_3(vec3<u32>(28846u, _wgslsmith_dot_vec2_u32(global1.zx, _wgslsmith_mod_vec2_u32(global0.c, global1.xx) | select(global0.e.a.yx, vec2<u32>(0u, 91094u), vec2<bool>(false, false))), global0.a.x));
    let var_2 = 1i;
    let var_3 = countOneBits(vec4<u32>(func_1(0u), var_1.a.x, _wgslsmith_mod_u32(~(~4294967295u), 1u), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.b >> ((~firstTrailingBit(global1.x) | 38530u) % 32u), global0.b.b);
}

