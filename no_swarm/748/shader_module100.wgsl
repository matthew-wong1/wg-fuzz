struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<i32>(-5553i, 1i), vec3<i32>(2147483647i, 1i, 2147483647i), vec3<bool>(false, false, false), vec2<i32>(22085i, 1i)), Struct_1(vec2<i32>(-64341i, 1i), vec3<i32>(-1i, 8335i, -71520i), vec3<bool>(false, true, true), vec2<i32>(52584i, -19220i)), Struct_1(vec2<i32>(-71789i, -14263i), vec3<i32>(-55332i, -1i, -1i), vec3<bool>(true, true, false), vec2<i32>(-12452i, 1i)), Struct_1(vec2<i32>(1230i, 4861i), vec3<i32>(-1i, 24812i, 2147483647i), vec3<bool>(true, false, false), vec2<i32>(45904i, 2147483647i)), Struct_1(vec2<i32>(0i, -44546i), vec3<i32>(-1i, 18353i, -5434i), vec3<bool>(true, false, true), vec2<i32>(41653i, i32(-2147483648))), Struct_1(vec2<i32>(12122i, i32(-2147483648)), vec3<i32>(-2519i, 20540i, 2147483647i), vec3<bool>(true, false, false), vec2<i32>(1i, 0i)), Struct_1(vec2<i32>(-21425i, i32(-2147483648)), vec3<i32>(1i, 45186i, -1i), vec3<bool>(false, true, false), vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 23574i, -5591i), vec3<bool>(true, false, false), vec2<i32>(1i, -1i)), Struct_1(vec2<i32>(5241i, -54272i), vec3<i32>(-1224i, -5008i, -1i), vec3<bool>(false, false, false), vec2<i32>(-39551i, 28344i)), Struct_1(vec2<i32>(19324i, 35329i), vec3<i32>(i32(-2147483648), 2147483647i, 9964i), vec3<bool>(false, true, true), vec2<i32>(52306i, 0i)), Struct_1(vec2<i32>(-29370i, 19649i), vec3<i32>(-10811i, -32942i, -10229i), vec3<bool>(false, false, false), vec2<i32>(1i, 2741i)), Struct_1(vec2<i32>(-1i, 0i), vec3<i32>(2147483647i, -1i, 2147483647i), vec3<bool>(true, true, true), vec2<i32>(i32(-2147483648), -10150i)), Struct_1(vec2<i32>(43441i, i32(-2147483648)), vec3<i32>(-1i, 33236i, -25229i), vec3<bool>(true, false, false), vec2<i32>(-1i, 19564i)), Struct_1(vec2<i32>(1i, 17896i), vec3<i32>(8734i, 1542i, 1244i), vec3<bool>(true, true, false), vec2<i32>(19569i, 678i)), Struct_1(vec2<i32>(0i, -67860i), vec3<i32>(21119i, -22657i, -40516i), vec3<bool>(true, false, false), vec2<i32>(49010i, -1i)), Struct_1(vec2<i32>(2147483647i, 61847i), vec3<i32>(67647i, i32(-2147483648), 23413i), vec3<bool>(false, true, false), vec2<i32>(-5767i, 0i)), Struct_1(vec2<i32>(2147483647i, -13268i), vec3<i32>(1i, 0i, i32(-2147483648)), vec3<bool>(true, true, false), vec2<i32>(0i, -9596i)), Struct_1(vec2<i32>(-33021i, -1i), vec3<i32>(1i, 0i, -1i), vec3<bool>(false, false, false), vec2<i32>(-102568i, 0i)), Struct_1(vec2<i32>(2147483647i, 6152i), vec3<i32>(20203i, 2147483647i, 2147483647i), vec3<bool>(false, true, false), vec2<i32>(0i, 33671i)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<i32>(15841i, -54467i, -37962i), vec3<bool>(false, true, true), vec2<i32>(2147483647i, -37486i)), Struct_1(vec2<i32>(1i, 87054i), vec3<i32>(16628i, -1i, 722i), vec3<bool>(false, true, false), vec2<i32>(-1i, -1i)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec3<i32>(-11680i, 1831i, -1i), vec3<bool>(true, true, false), vec2<i32>(-1773i, 30114i)), Struct_1(vec2<i32>(1i, 10621i), vec3<i32>(2147483647i, -1i, 0i), vec3<bool>(false, true, true), vec2<i32>(-35124i, 2147483647i)), Struct_1(vec2<i32>(1i, -71944i), vec3<i32>(0i, 59177i, 1i), vec3<bool>(false, true, false), vec2<i32>(52482i, 1i)), Struct_1(vec2<i32>(0i, -1i), vec3<i32>(i32(-2147483648), 26522i, 36285i), vec3<bool>(false, true, true), vec2<i32>(7281i, i32(-2147483648))), Struct_1(vec2<i32>(-1i, -58059i), vec3<i32>(0i, 23169i, -28458i), vec3<bool>(false, false, true), vec2<i32>(i32(-2147483648), 2147483647i)));

var<private> global1: bool;

var<private> global2: vec3<i32> = vec3<i32>(-15965i, 35620i, -27108i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global1 = false;
    let var_0 = select(vec4<i32>(global2.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(global2.x, 0i, global2.x)), vec3<i32>(global2.x, global2.x, -1i), vec3<i32>(global2.x, global2.x, 0i)), max(-vec3<i32>(-2147483647i, global2.x, -1i), _wgslsmith_mult_vec3_i32(vec3<i32>(27917i, global2.x, 1i), vec3<i32>(global2.x, -1i, -1i)))), -_wgslsmith_add_i32(global2.x, global2.x) ^ _wgslsmith_div_i32(global2.x, 1i), abs(global2.x)), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(-62301i, global2.x, -2976i, global2.x) << (u_input.a % vec4<u32>(32u)), -vec4<i32>(-1i, 1i, global2.x, -48452i)) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(-14828i, global2.x, global2.x, global2.x) | _wgslsmith_mult_vec4_i32(vec4<i32>(-20239i, -1052i, 8345i, global2.x), vec4<i32>(-1i, global2.x, 29267i, 17981i)), reverseBits(select(vec4<i32>(global2.x, 2147483647i, -1i, global2.x), vec4<i32>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(true, false, true, true)))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(7728i, -25912i), _wgslsmith_mult_i32(-36204i, global2.x)), 0i, global2.x, _wgslsmith_sub_i32(0i, _wgslsmith_clamp_i32(global2.x, global2.x, -1i)))), vec4<bool>(firstLeadingBit(firstTrailingBit(1u)) > ~u_input.a.x, true, false, !all(vec2<bool>(false, false))));
    global2 = vec3<i32>(2147483647i, -2147483647i, firstTrailingBit(global2.x));
    global1 = true;
    global2 = max(~vec3<i32>(var_0.x & var_0.x, -abs(-24529i), _wgslsmith_dot_vec4_i32(var_0 >> (u_input.a % vec4<u32>(32u)), -var_0)), ~abs(vec3<i32>(i32(-1i) * -2147483647i, 1i, var_0.x)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-191f + _wgslsmith_f_op_f32(f32(-1f) * -963f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-104f)) - _wgslsmith_f_op_f32(244f + -991f)))))));
}

fn func_2() -> vec3<i32> {
    global1 = ~u_input.a.x > ~39652u;
    global0 = array<Struct_1, 26>();
    var var_0 = _wgslsmith_f_op_f32(func_3());
    global2 = vec3<i32>(global2.x, global2.x, 20420i);
    global1 = false;
    return vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(abs(global2.x), ~global2.x), global2.x), global2.x, _wgslsmith_mult_i32(global2.x, global2.x));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global2 = func_2();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(221f, 772f) - _wgslsmith_f_op_f32(f32(-1f) * -659f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_f_op_f32(-1682f + 622f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1096f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1019f) + 690f)))) != _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global2 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(global2.x, -1i)), 31961i, -(~global2.x)), select(_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_0.a.x, 0i, global2.x), firstLeadingBit(vec3<i32>(-1i, 13545i, -14772i))), -select(vec3<i32>(-24287i, 0i, arg_0.a.x), vec3<i32>(-146092i, global2.x, arg_0.a.x), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)));
    let var_1 = arg_0;
    var_0 = any(vec4<bool>(true, true, !all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), true));
    return global0[_wgslsmith_index_u32(38227u, 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(min(countOneBits(vec2<i32>(-7155i, global2.x)), global2.yz)));
    global0 = array<Struct_1, 26>();
    let var_1 = var_0.c.zy;
    global2 = _wgslsmith_mult_vec3_i32(~vec3<i32>(firstLeadingBit(var_0.b.x), select(-global2.x, 12914i, all(vec3<bool>(false, var_0.c.x, var_1.x))), global2.x), var_0.b);
    var_0 = Struct_1(global2.zx, (select(var_0.b, var_0.b, true) | vec3<i32>(var_0.b.x, -2147483647i, firstLeadingBit(6638i))) >> (vec3<u32>(min(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, 11819u, u_input.a.x, u_input.a.x))), ~(~u_input.a.x), 4294967295u) % vec3<u32>(32u)), !vec3<bool>(true, var_1.x && var_1.x, false), min(vec2<i32>(-2147483647i, i32(-1i) * -14737i), vec2<i32>(min(var_0.d.x | global2.x, 0i), 80047i)));
    let var_2 = (4294967295u > u_input.a.x) & var_1.x;
    var var_3 = select(!(!vec2<bool>(var_2, !var_0.c.x)), var_0.c.zy, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 905f) * vec2<f32>(-1000f, -138f))))), select(vec2<u32>(4294967295u, u_input.a.x ^ u_input.a.x), _wgslsmith_mult_vec2_u32(u_input.a.yz, vec2<u32>(1u, _wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x))), !var_0.c.xx));
}

