struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(26600i, -1i, 1i, -1i, 15861i, 49843i, 0i, 2147483647i, -56219i, -25623i, 24259i, -1i, -9254i, 36463i, 0i, 2147483647i, -12010i);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(204f)), 247f)), _wgslsmith_clamp_vec3_u32(select(~vec3<u32>(u_input.a, u_input.a, 69781u) << (~vec3<u32>(9153u, u_input.a, 4294967295u) % vec3<u32>(32u)), min(~vec3<u32>(1u, 4294967295u, u_input.a), abs(vec3<u32>(69069u, u_input.a, 34879u))), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))), abs(vec3<u32>(61645u, 27127u, u_input.a) & vec3<u32>(u_input.a, 37369u, 1u)) ^ firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, 4294967295u, 42792u))), ~(~vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(62044u, 1u, 1806u))), -44247i);
    global0 = array<i32, 17>();
    let var_1 = -1i;
    var var_2 = reverseBits(vec2<u32>(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(1u, var_0.b.x, u_input.a, var_0.b.x)), select(max(vec4<u32>(u_input.a, 53097u, 18257u, 4294967295u), vec4<u32>(var_0.b.x, 4294967295u, u_input.a, 47151u)), vec4<u32>(var_0.b.x, 0u, 0u, 41190u), true)), _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_div_u32(var_0.b.x, var_0.b.x)), var_0.b.x)));
    var var_3 = firstTrailingBit(~var_0.b.x) & ~_wgslsmith_clamp_u32(u_input.a, 9417u, 1u & ~var_2.x);
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1368f, var_0.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-459f)) * var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2181f)))), vec2<bool>(any(vec4<bool>(true, true, true, true)), true)));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_5, arg_3: u32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1093f, arg_2.c)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1248f, arg_2.c)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1774f, arg_2.c), vec2<f32>(arg_2.c, 229f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c, arg_2.c))) - vec2<f32>(_wgslsmith_f_op_f32(996f - -1000f), _wgslsmith_f_op_f32(trunc(arg_2.c))))), -1i > arg_2.a));
    let var_1 = -10755i;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(460f, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(817f, var_0.x, 662f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c, -1191f, -317f) - vec3<f32>(-1296f, arg_2.c, var_0.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(648f, arg_2.c, var_0.x)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -936f), -945f, _wgslsmith_f_op_f32(ceil(271f))))));
    var var_3 = _wgslsmith_add_u32(select(arg_2.b.x, arg_3, !arg_0.x && true), ~_wgslsmith_dot_vec3_u32(arg_2.b.zwx, ~arg_2.b.xyx)) & ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(350u, arg_3) & arg_3, _wgslsmith_mod_u32(abs(arg_2.b.x), ~16123u));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_2.x)), var_2.x, _wgslsmith_f_op_f32(-arg_2.c), var_0.x) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, arg_2.c, 1000f, 130f))), vec4<f32>(var_2.x, var_0.x, 967f, var_2.x))), vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_div_f32(-391f, -1065f), _wgslsmith_f_op_f32(var_2.x - 343f), var_2.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.c, 808f, var_0.x, arg_2.c))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-753f, -950f, arg_2.c, var_0.x), vec4<f32>(var_2.x, var_2.x, 823f, arg_2.c), vec4<bool>(false, arg_1, arg_1, arg_0.x))), vec4<f32>(-1317f, 738f, 730f, var_2.x))), arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, -362f, var_0.x)))))));
    return vec3<u32>(arg_3, _wgslsmith_div_u32(arg_3, _wgslsmith_sub_u32(min(0u, _wgslsmith_dot_vec2_u32(arg_2.b.xx, vec2<u32>(arg_3, 4294967295u))), arg_3)), 4294967295u >> (~(~abs(1u)) % 32u));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_5) -> vec3<u32> {
    var var_0 = arg_0;
    var_0 = false & !(arg_0 & false);
    var_0 = arg_0;
    let var_1 = u_input.a;
    let var_2 = -43916i;
    return _wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(func_2(vec3<bool>(arg_0, arg_0, false), arg_0, Struct_5(var_2, arg_3.b, arg_1), 23938u) | _wgslsmith_clamp_vec3_u32(vec3<u32>(59256u, 25491u, arg_3.b.x), vec3<u32>(32902u, 1u, u_input.a), arg_3.b.wwz), ~arg_3.b.yzw), firstLeadingBit(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 51829u, 18149u), func_2(vec3<bool>(arg_0, false, false), true, arg_3, var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (abs(vec3<i32>(global0[_wgslsmith_index_u32(1u, 17u)], 1i, global0[_wgslsmith_index_u32(u_input.a, 17u)]) ^ vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(1u, 17u)], 1463i)) << ((~func_1(true, -1142f, vec4<f32>(2286f, 792f, 631f, -123f), Struct_5(0i, vec4<u32>(u_input.a, 91778u, 0u, 43696u), 1405f)) | vec3<u32>(func_1(true, -1229f, vec4<f32>(-1419f, 458f, -953f, 1742f), Struct_5(2147483647i, vec4<u32>(34393u, u_input.a, 91077u, 0u), -700f)).x, u_input.a, u_input.a)) % vec3<u32>(32u))) & min(abs(vec3<i32>(-2147483647i, -1i, ~global0[_wgslsmith_index_u32(61380u, 17u)])), (~vec3<i32>(-2147483647i, -1i, global0[_wgslsmith_index_u32(14424u, 17u)]) & -vec3<i32>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)], 2147483647i)) ^ ~(vec3<i32>(global0[_wgslsmith_index_u32(39344u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)], 13720i) | vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], -13200i)));
    let var_1 = u_input.a;
    var var_2 = global0[_wgslsmith_index_u32(46529u, 17u)];
    var_2 = 0i;
    let var_3 = any(!vec4<bool>(true, all(vec2<bool>(true, true)), true, true));
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(787f, 1160f), -901f, true)), -1232f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1808f))))), vec3<f32>(-1079f, _wgslsmith_f_op_f32(max(-1000f, -600f)), 1f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-812f)), -122f)), 245f, -430f)));
    var var_5 = Struct_3(30170u, vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], _wgslsmith_clamp_i32(67979i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(21877i, -2147483647i), -1i), ~global0[_wgslsmith_index_u32(0u, 17u)] ^ ~var_0.x), 0i, global0[_wgslsmith_index_u32(reverseBits(~4294967295u), 17u)]), Struct_1(var_4.x, vec3<u32>(~var_1, firstTrailingBit(30157u), 44224u), _wgslsmith_dot_vec3_i32(vec3<i32>(7833i, -40872i & var_0.x, 1i), countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(67980u, 17u)], 0i, -20064i) >> (vec3<u32>(u_input.a, 58537u, 26775u) % vec3<u32>(32u))))));
    var var_6 = Struct_2(_wgslsmith_add_vec3_u32(~vec3<u32>(13269u, ~u_input.a, var_1), vec3<u32>(_wgslsmith_mult_u32(41278u, 0u) | u_input.a, func_2(!vec3<bool>(false, true, var_3), !var_3, Struct_5(var_0.x, vec4<u32>(1u, u_input.a, var_5.a, u_input.a), 194f), max(u_input.a, var_5.c.b.x)).x, 48151u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_5.c.a * -680f))) - -1750f)), var_0.xz, -751f, var_6.a.x, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_1, var_5.c.b.x), var_6.a.x | var_1) & firstTrailingBit(var_6.a.x ^ var_6.a.x), ~0u));
}

