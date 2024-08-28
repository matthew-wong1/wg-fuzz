struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 18329u, 4294967295u);

var<private> global2: array<u32, 18> = array<u32, 18>(0u, 1u, 70852u, 0u, 52714u, 0u, 0u, 4294967295u, 4294967295u, 36841u, 0u, 1136u, 3174u, 4294967295u, 34814u, 4294967295u, 1u, 29564u);

var<private> global3: array<Struct_2, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> f32 {
    var var_0 = Struct_1(vec3<u32>(reverseBits(abs(arg_1)), _wgslsmith_mod_u32(select(firstLeadingBit(4294967295u), 11815u, any(vec3<bool>(false, false, true))), arg_0.x), reverseBits(_wgslsmith_clamp_u32(97708u, u_input.b, firstTrailingBit(u_input.b)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -319f))), !vec2<bool>(!all(vec4<bool>(true, true, false, true)), true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1012f - -1584f)))))));
    global3 = array<Struct_2, 22>();
    global1 = min(~var_0.a, select(max(vec3<u32>(global1.x ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 18u)], abs(4294967295u), arg_1), (vec3<u32>(17709u, 35145u, var_0.a.x) << (vec3<u32>(34179u, u_input.b, 4571u) % vec3<u32>(32u))) << (reverseBits(var_0.a) % vec3<u32>(32u))), ~(vec3<u32>(global1.x, u_input.b, arg_0.x) | vec3<u32>(0u, u_input.b, arg_1)) << (vec3<u32>(u_input.b, _wgslsmith_div_u32(71471u, arg_0.x), firstLeadingBit(13853u)) % vec3<u32>(32u)), _wgslsmith_clamp_i32(-1i, u_input.a.x, 1i >> (global2[_wgslsmith_index_u32(0u, 18u)] % 32u)) != firstLeadingBit(u_input.a.x)));
    var var_1 = select(abs(~reverseBits(arg_0.x)), 43702u, false);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b, -1022f, var_0.b))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, var_0.b, -466f))))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1740f)))));
}

fn func_2() -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(~(~(reverseBits(min(u_input.b, global1.x)) >> (global1.x % 32u))), 10u)];
    let var_1 = !select(var_0.b, vec2<bool>(!var_0.b.x | !var_0.b.x, var_0.b.x), any(select(vec2<bool>(var_0.b.x, var_0.b.x), !var_0.b, vec2<bool>(var_0.b.x, var_0.b.x))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(991f, -955f, true)) * -704f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1731f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-712f - -559f) - 417f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(~vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], global1.x, 1u), global1.x >> (45501u % 32u)))))));
    global2 = array<u32, 18>();
    let var_3 = Struct_3(28431u, Struct_1(var_0.a, 1075f, select(var_1, select(select(var_1, var_0.b, var_0.b.x), select(vec2<bool>(var_1.x, var_0.b.x), var_1, var_1), !var_0.b), vec2<bool>(true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(155f))))), ~(~0u), Struct_2(vec3<u32>(global1.x, u_input.b, reverseBits(_wgslsmith_mod_u32(0u, var_0.a.x))), var_1));
    return !vec4<bool>(_wgslsmith_clamp_u32(var_0.a.x, ~21830u, 4294967295u) > 61418u, true, var_3.b.d >= _wgslsmith_f_op_f32(abs(-889f)), false);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec4<bool>) -> vec3<u32> {
    let var_0 = ~(~u_input.a);
    let var_1 = Struct_1(reverseBits(abs(vec3<u32>(global1.x, 4294967295u, global1.x)) << (vec3<u32>(global1.x, 4294967295u, _wgslsmith_clamp_u32(u_input.b, global1.x, 0u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -566f) - -1399f)), vec2<bool>(true, arg_2.x), _wgslsmith_div_f32(-149f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_1) * -126f), global2[_wgslsmith_index_u32(global1.x ^ 8565u, 18u)] >= 1u))));
    global3 = array<Struct_2, 22>();
    let var_2 = _wgslsmith_f_op_f32(-1f);
    var var_3 = global3[_wgslsmith_index_u32(max(0u, ~1u), 22u)];
    return var_1.a;
}

fn func_1() -> u32 {
    global2 = array<u32, 18>();
    global1 = func_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(628f + -1219f), _wgslsmith_f_op_f32(f32(-1f) * -1502f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2124f * -688f), 1f, all(vec4<bool>(true, false, false, true)))))), func_2());
    global1 = ~func_4(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, global1.x), vec3<u32>(u_input.b, 39457u, global1.x)), _wgslsmith_div_u32(4294967295u, global1.x))))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))));
    let var_0 = Struct_1(~_wgslsmith_mod_vec3_u32(~countOneBits(vec3<u32>(1u, global2[_wgslsmith_index_u32(u_input.b, 18u)], u_input.b)), func_4(false, 524f, vec4<bool>(false, false, false, true)) >> (reverseBits(vec3<u32>(global2[_wgslsmith_index_u32(23746u, 18u)], global1.x, global2[_wgslsmith_index_u32(3560u, 18u)])) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1054f * _wgslsmith_f_op_f32(1536f + -1701f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1429f)), _wgslsmith_f_op_f32(floor(-1526f)), true))))), select(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), false), func_2().zw, select(func_2().zz, vec2<bool>(true, true), func_2().xy)), select(vec2<bool>(any(vec3<bool>(false, false, false)), u_input.a.x > -1i), select(vec2<bool>(true, true), func_2().xy, true), vec2<bool>(true, true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(415f, 378f)), _wgslsmith_f_op_f32(abs(-122f)))) * 473f));
    var var_1 = var_0.d;
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, 0u), 18u)], u_input.b), ~(~23625u)), vec2<u32>(abs(~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(88804u, 18u)], 1u)), _wgslsmith_div_u32(4294967295u & _wgslsmith_clamp_u32(0u, 4294967295u, 10866u), ~(~var_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_add_u32(func_1(), 1406u));
    global2 = array<u32, 18>();
    var var_1 = abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(min(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, -39861i, -1i, u_input.a.x)), -_wgslsmith_mod_vec4_i32(vec4<i32>(-5836i, u_input.a.x, 20400i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x))), ~(~vec4<i32>(u_input.a.x, -1i, -2147483647i, 0i)) ^ (vec4<i32>(-1i, 1i, u_input.a.x, u_input.a.x) & reverseBits(vec4<i32>(2147483647i, -14515i, u_input.a.x, u_input.a.x))), -abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(4035i, -28021i, -2460i, -1i), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-1i, 1i, -9692i, u_input.a.x)))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1342f), _wgslsmith_f_op_f32(-404f * 1231f), -1191f);
    global1 = vec3<u32>(1u, 1u, ~(12070u >> (var_0 % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_0 & global2[_wgslsmith_index_u32(global1.x, 18u)]), firstLeadingBit(var_0), 4609i, var_2);
}

