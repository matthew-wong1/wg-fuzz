struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<i32>(1i, 1i, 48526i), false), Struct_3(vec3<u32>(7415u, 72305u, 4294967295u), vec3<i32>(1i, -1i, 0i), true), Struct_3(vec3<u32>(1u, 0u, 1u), vec3<i32>(1i, 11771i, 10673i), true), Struct_3(vec3<u32>(14429u, 0u, 4294967295u), vec3<i32>(-1i, 20541i, 1i), true), Struct_3(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<i32>(1i, -29838i, -40978i), true), Struct_3(vec3<u32>(82143u, 15962u, 40629u), vec3<i32>(2147483647i, -1748i, 0i), false), Struct_3(vec3<u32>(0u, 0u, 1u), vec3<i32>(2147483647i, -16323i, -53900i), true), Struct_3(vec3<u32>(1u, 62180u, 29114u), vec3<i32>(-1i, -28174i, -1i), false), Struct_3(vec3<u32>(8254u, 51057u, 47670u), vec3<i32>(23771i, 24977i, -1i), false), Struct_3(vec3<u32>(0u, 1u, 0u), vec3<i32>(-1i, 3250i, 0i), false), Struct_3(vec3<u32>(4294967295u, 4294967295u, 14967u), vec3<i32>(1i, -14981i, -1i), true), Struct_3(vec3<u32>(1u, 1u, 58351u), vec3<i32>(12250i, 57807i, -1i), true), Struct_3(vec3<u32>(0u, 1u, 43627u), vec3<i32>(-3586i, i32(-2147483648), 34689i), false), Struct_3(vec3<u32>(0u, 0u, 8554u), vec3<i32>(0i, -13376i, 10426i), false), Struct_3(vec3<u32>(4294967295u, 24176u, 75607u), vec3<i32>(-1i, i32(-2147483648), -62983i), false), Struct_3(vec3<u32>(1u, 1u, 0u), vec3<i32>(0i, -1i, 4684i), false), Struct_3(vec3<u32>(36575u, 12450u, 0u), vec3<i32>(-1i, -26861i, 12423i), true), Struct_3(vec3<u32>(3515u, 4294967295u, 4294967295u), vec3<i32>(-2061i, -47539i, 0i), false), Struct_3(vec3<u32>(4294967295u, 4294967295u, 15815u), vec3<i32>(-1i, 2615i, 4369i), true), Struct_3(vec3<u32>(2895u, 1u, 3656u), vec3<i32>(13977i, 56691i, i32(-2147483648)), false), Struct_3(vec3<u32>(4294967295u, 113904u, 4294967295u), vec3<i32>(0i, 6378i, 1i), false));

var<private> global1: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false));

var<private> global2: array<f32, 4> = array<f32, 4>(-640f, 901f, -532f, 617f);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> vec3<i32> {
    global1 = array<vec3<bool>, 9>();
    let var_0 = arg_2;
    let var_1 = global0[_wgslsmith_index_u32(arg_0.e.x, 21u)];
    var var_2 = select(vec3<bool>(any(!(!vec4<bool>(var_0.b.b.x, true, var_1.c, false))), false == any(select(vec4<bool>(false, true, var_0.d, false), vec4<bool>(arg_0.b.x, true, var_1.c, var_1.c), vec4<bool>(arg_0.b.x, false, false, true))), !var_0.a | true), vec3<bool>(var_0.b.b.x, all(var_0.b.b) | (all(global1[_wgslsmith_index_u32(arg_2.b.d, 9u)]) & false), false), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(0u), ~3454u), 9u)]);
    let var_3 = firstTrailingBit(~abs(_wgslsmith_div_vec3_i32(u_input.b.xwy, arg_0.c)) << (reverseBits(var_0.b.e.xyw) % vec3<u32>(32u)));
    return _wgslsmith_add_vec3_i32(abs(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.x, var_0.b.a.x), vec2<i32>(52915i, -41752i)), _wgslsmith_dot_vec4_i32(-u_input.b, countOneBits(u_input.b)), reverseBits(abs(var_0.b.c.x)))), abs(var_3));
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 62420u), vec3<u32>(4294967295u, 0u, 29937u)), ~4294967295u), ~(~1u)), 4u)])));
    var var_1 = 12053u;
    var var_2 = Struct_1(~u_input.a, select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(false, var_0 >= var_0), false), !vec2<bool>(all(global1[_wgslsmith_index_u32(80345u, 9u)]), true), vec2<bool>(true, true)), (func_3(Struct_1(u_input.b.yw, vec2<bool>(false, false), vec3<i32>(u_input.a.x, -2147483647i, u_input.b.x), 1u, vec4<u32>(81971u, 4294967295u, 12413u, 0u)), var_0, Struct_2(true, Struct_1(vec2<i32>(-1i, u_input.a.x), vec2<bool>(true, true), vec3<i32>(0i, u_input.c, 11043i), 4294967295u, vec4<u32>(86888u, 0u, 58754u, 27029u)), 16076u, false)) ^ -reverseBits(u_input.b.zwx)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), abs(reverseBits(~_wgslsmith_mult_u32(0u, 0u))), ~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(4294967295u, 47652u, 29086u, 57665u)), ~vec4<u32>(32397u, 0u, 49962u, 48544u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(5382u, select(0u, 0u, false), 4294967295u, ~12698u)));
    let var_3 = !vec2<bool>(!var_2.b.x, !var_2.b.x);
    var var_4 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -141f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 + -1138f), _wgslsmith_f_op_f32(var_0 * 458f))) * _wgslsmith_f_op_f32(abs(-1687f))), -1030f)));
    return var_2.e;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<f32>) -> Struct_2 {
    global0 = array<Struct_3, 21>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(arg_0.c, 4u)], global2[_wgslsmith_index_u32(arg_1.x, 4u)], arg_2.x, global2[_wgslsmith_index_u32(arg_1.x, 4u)])) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.x, 439f, -285f, global2[_wgslsmith_index_u32(arg_1.x, 4u)])))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(807f, global2[_wgslsmith_index_u32(arg_1.x, 4u)], -1343f, global2[_wgslsmith_index_u32(0u, 4u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-909f, 1548f, 1000f, 136f))))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(func_2().x, 4u)])), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-643f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1209f, _wgslsmith_f_op_f32(floor(-434f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1375f + -957f), _wgslsmith_f_op_f32(f32(-1f) * -1135f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(35428u, 4u)], var_0.x))))))));
    let var_2 = global0[_wgslsmith_index_u32(arg_0.c, 21u)];
    var var_3 = ~_wgslsmith_dot_vec3_u32(arg_1.www, vec3<u32>(reverseBits(arg_0.c << (0u % 32u)), _wgslsmith_dot_vec2_u32(max(vec2<u32>(26330u, 1u), vec2<u32>(1u, var_2.a.x)), ~vec2<u32>(var_2.a.x, var_2.a.x)), 1u | countOneBits(var_2.a.x)));
    return Struct_2(false, Struct_1(vec2<i32>(24613i, i32(-1i) * -u_input.a.x), !vec2<bool>(true, arg_0.b.c.x > arg_0.b.c.x), vec3<i32>(min(16125i, u_input.b.x), countOneBits(arg_0.b.a.x), var_2.b.x), min(1u, 1u), ~(~countOneBits(arg_1))), ~(~arg_0.b.d), !(all(vec4<bool>(arg_0.b.b.x, false, false, arg_0.a)) | (var_2.c | var_2.c)));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: i32) -> vec3<f32> {
    var var_0 = reverseBits(~(~(~arg_1.b.d)));
    global0 = array<Struct_3, 21>();
    let var_1 = ~select(vec3<i32>(firstLeadingBit(arg_3), 9433i, ~arg_1.b.c.x) >> (arg_1.b.e.zzw % vec3<u32>(32u)), arg_2.zwz, select(select(vec3<bool>(true, arg_1.b.b.x, true), select(global1[_wgslsmith_index_u32(17974u, 9u)], global1[_wgslsmith_index_u32(arg_1.b.d, 9u)], global1[_wgslsmith_index_u32(arg_1.b.d, 9u)]), any(arg_1.b.b)), global1[_wgslsmith_index_u32(4294967295u, 9u)], !any(global1[_wgslsmith_index_u32(arg_1.b.e.x, 9u)])));
    var var_2 = var_1 ^ var_1;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(513f, global2[_wgslsmith_index_u32(arg_1.b.d, 4u)], -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(14884u, 4u)], arg_0)))))));
}

fn func_1(arg_0: u32) -> f32 {
    global2 = array<f32, 4>();
    global0 = array<Struct_3, 21>();
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(~firstTrailingBit(0u), 4u)]))), func_4(Struct_2(!any(global1[_wgslsmith_index_u32(1u, 9u)]), Struct_1(~u_input.b.zx, !vec2<bool>(var_0, var_0), _wgslsmith_sub_vec3_i32(u_input.b.yzx, vec3<i32>(u_input.b.x, -2147483647i, 13308i)), arg_0, vec4<u32>(arg_0, 4294967295u, arg_0, 1u) & vec4<u32>(arg_0, 1u, 4294967295u, arg_0)), 4294967295u, any(select(vec4<bool>(false, var_0, false, var_0), vec4<bool>(true, false, true, var_0), true))), ~(~vec4<u32>(65984u, arg_0, 0u, 4294967295u) << (func_2() % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2[_wgslsmith_index_u32(arg_0, 4u)], 1274f, global2[_wgslsmith_index_u32(33584u, 4u)]), vec3<f32>(865f, global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(0u, 4u)])))))), abs(u_input.b), 0i));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(-651f * 630f), func_4(func_4(Struct_2(var_0, Struct_1(vec2<i32>(u_input.b.x, 1i), vec2<bool>(var_0, var_0), vec3<i32>(0i, -2564i, u_input.c), 1u, vec4<u32>(4294967295u, 4294967295u, arg_0, arg_0)), arg_0, false), vec4<u32>(1u, arg_0, 0u, arg_0), vec3<f32>(-1308f, 908f, var_1.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 1u, 32195u, arg_0), vec4<u32>(arg_0, 1u, arg_0, arg_0), vec4<u32>(0u, 4294967295u, arg_0, arg_0)), vec3<f32>(global2[_wgslsmith_index_u32(0u, 4u)], 1000f, 765f)), vec4<i32>(min(-14957i, u_input.b.x), 37173i | u_input.a.x, _wgslsmith_sub_i32(u_input.b.x, 2876i), firstLeadingBit(u_input.b.x)), -2147483647i)) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1953f * -521f) - 353f), _wgslsmith_f_op_f32(f32(-1f) * -624f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(abs(arg_0), 4u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1072f, global2[_wgslsmith_index_u32(arg_0, 4u)])), 661f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1958f)))), _wgslsmith_f_op_f32(f32(-1f) * -246f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1130f, -827f, global2[_wgslsmith_index_u32(1u, 4u)])))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1308f, -1356f, global2[_wgslsmith_index_u32(28853u, 4u)]), vec3<f32>(var_1.x, 582f, -1908f))))))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, 44855u), 4u)])));
}

fn func_6(arg_0: vec4<f32>, arg_1: u32) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(arg_1, 21u)];
    let var_1 = vec4<u32>(4294967295u, func_2().x, var_0.a.x, _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(var_0.a, var_0.a), max(arg_1, ~1u)) | arg_1);
    global2 = array<f32, 4>();
    global1 = array<vec3<bool>, 9>();
    let var_2 = func_4(func_4(func_4(Struct_2(func_4(Struct_2(false, Struct_1(vec2<i32>(u_input.c, u_input.a.x), vec2<bool>(false, true), vec3<i32>(59074i, 2147483647i, 1i), var_1.x, vec4<u32>(var_0.a.x, var_1.x, 33125u, 38277u)), var_0.a.x, false), vec4<u32>(104252u, var_1.x, 1u, var_0.a.x), vec3<f32>(arg_0.x, global2[_wgslsmith_index_u32(var_0.a.x, 4u)], arg_0.x)).a, func_4(Struct_2(var_0.c, Struct_1(var_0.b.zz, vec2<bool>(var_0.c, var_0.c), vec3<i32>(-8446i, u_input.b.x, u_input.b.x), var_0.a.x, vec4<u32>(1u, var_0.a.x, var_1.x, arg_1)), var_1.x, true), var_1, arg_0.wwy).b, ~9123u, false), select(~var_1, var_1, true || var_0.c), _wgslsmith_f_op_vec3_f32(arg_0.yxy - vec3<f32>(arg_0.x, 1820f, global2[_wgslsmith_index_u32(arg_1, 4u)]))), ~((var_1 ^ var_1) >> ((vec4<u32>(1u, 21384u, var_0.a.x, 0u) | vec4<u32>(4294967295u, 61024u, arg_1, arg_1)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(arg_0.wyy + _wgslsmith_f_op_vec3_f32(round(arg_0.yyx)))), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.x, 6206u, var_0.a.x, var_1.x), _wgslsmith_mod_vec4_u32(vec4<u32>(29066u, 4294967295u, 4294967295u, var_0.a.x), _wgslsmith_div_vec4_u32(var_1, var_1))) << (abs(var_1) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(sign(-907f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.x, 4u)] - arg_0.x))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(min(57434u, var_0.a.x), 4u)])))));
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(~func_2().x, 1u, ~(~var_2.c)), ~vec3<u32>(61818u, 20535u, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~vec3<u32>(countOneBits(42392u), _wgslsmith_add_u32(1u, 29406u) << (1u % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<u32>(15370u, 4294967295u, 40819u, 49592u))), max(u_input.b.zxy, vec3<i32>(2147483647i, -33114i, u_input.a.x)), any(vec2<bool>(all(vec3<bool>(false, true, false)), any(vec2<bool>(false, false)) && (250f != global2[_wgslsmith_index_u32(1u, 4u)]))));
    let var_1 = ~vec4<u32>(func_6(vec4<f32>(_wgslsmith_f_op_f32(func_1(var_0.a.x)), _wgslsmith_f_op_f32(trunc(-294f)), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 4u)], 873f), _wgslsmith_div_f32(-1136f, global2[_wgslsmith_index_u32(var_0.a.x, 4u)])), reverseBits(75126u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_0.a.x, var_0.a.x), vec4<u32>(43574u, 52829u, var_0.a.x, 58395u))), func_4(func_4(func_4(Struct_2(true, Struct_1(u_input.a, vec2<bool>(false, var_0.c), u_input.b.zyx, 0u, vec4<u32>(var_0.a.x, 7896u, 0u, var_0.a.x)), 1249u, var_0.c), vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 0u), vec3<f32>(-891f, global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(var_0.a.x, 4u)])), ~vec4<u32>(20414u, 19003u, var_0.a.x, var_0.a.x), vec3<f32>(global2[_wgslsmith_index_u32(var_0.a.x, 4u)], global2[_wgslsmith_index_u32(var_0.a.x, 4u)], -160f)), vec4<u32>(abs(var_0.a.x), 13460u, 1u, var_0.a.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2291f, global2[_wgslsmith_index_u32(32340u, 4u)], 271f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1375f, global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(var_0.a.x, 4u)]) * vec3<f32>(-1000f, 540f, global2[_wgslsmith_index_u32(1u, 4u)])), !global1[_wgslsmith_index_u32(var_0.a.x, 9u)]))).b.d, 1u, var_0.a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(2702u, 4u)], _wgslsmith_f_op_f32(-1770f - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.a.x, 4u)] - global2[_wgslsmith_index_u32(0u, 4u)])), _wgslsmith_f_op_f32(-889f + _wgslsmith_f_op_f32(-1000f * -1485f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1173f, global2[_wgslsmith_index_u32(0u, 4u)], 280f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(var_1.x, 4u)], -1061f, -452f) - vec3<f32>(global2[_wgslsmith_index_u32(var_1.x, 4u)], global2[_wgslsmith_index_u32(var_0.a.x, 4u)], global2[_wgslsmith_index_u32(1u, 4u)])))))));
    global1 = array<vec3<bool>, 9>();
    global1 = array<vec3<bool>, 9>();
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(716f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 4u)], -976f), _wgslsmith_f_op_f32(-540f * global2[_wgslsmith_index_u32(2150u, 4u)]))))) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(var_0.a.xx, vec2<u32>(var_0.a.x, var_1.x)), var_1.xw), 4u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.a.x, 4u)] + _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(var_0.a.x, 4u)])))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(378f, 607f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_5(global2[_wgslsmith_index_u32(var_0.a.x, 4u)], Struct_2(var_0.c, Struct_1(u_input.b.zx, vec2<bool>(var_0.c, true), u_input.b.yxx, var_1.x, vec4<u32>(var_0.a.x, 1u, var_0.a.x, var_1.x)), 3824u, false), vec4<i32>(var_0.b.x, u_input.a.x, 48980i, 1i), 11011i)).x))), true));
    let x = u_input.a;
    s_output = StorageBuffer(~19418i, 27729i, -131f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1213f, global2[_wgslsmith_index_u32(1u, 4u)], 2665f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2098f, -854f, 1371f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_div_f32(-336f, -821f), Struct_2(var_0.c, Struct_1(vec2<i32>(u_input.a.x, var_0.b.x), vec2<bool>(true, var_0.c), vec3<i32>(17257i, 5002i, u_input.b.x), var_0.a.x, vec4<u32>(9640u, var_1.x, 4294967295u, 0u)), 41608u, true), -u_input.b, -2698i)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(711f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + -123f), var_2.x) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_5(var_2.x, Struct_2(true, Struct_1(var_0.b.xx, vec2<bool>(true, var_0.c), var_0.b, var_0.a.x, vec4<u32>(var_1.x, var_1.x, var_0.a.x, 4294967295u)), 0u, var_0.c), vec4<i32>(0i, var_0.b.x, 1i, u_input.a.x), var_0.b.x)).x, _wgslsmith_f_op_f32(var_2.x - -249f), global2[_wgslsmith_index_u32(firstLeadingBit(var_0.a.x), 4u)], -1381f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, global2[_wgslsmith_index_u32(60403u, 4u)], global2[_wgslsmith_index_u32(var_0.a.x, 4u)]) - vec4<f32>(var_2.x, 965f, global2[_wgslsmith_index_u32(var_0.a.x, 4u)], -376f)), vec4<f32>(var_2.x, -803f, 2454f, 1240f))))));
}

