struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(2316u, 27661u, 93850u, 16133u, 53706u, 7735u, 13307u, 0u, 17373u, 42820u, 4294967295u, 1u, 1u, 21438u, 4294967295u, 44010u, 1u, 11809u, 62575u, 20289u, 66388u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.a.a.x, -893f))))), _wgslsmith_f_op_f32(step(-905f, _wgslsmith_f_op_f32(f32(-1f) * -827f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.a.x - arg_1.b.a.x), _wgslsmith_f_op_f32(min(arg_1.a.a.x, -1026f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.b.a.x))))));
    let var_1 = Struct_3(Struct_2(arg_1.a.a), arg_1.b, vec3<bool>(true | !all(arg_1.c.xy), any(vec2<bool>(any(vec4<bool>(true, arg_0, false, arg_0)), !arg_0)), true), firstTrailingBit(_wgslsmith_div_vec2_u32(arg_1.d, vec2<u32>(max(0u, 0u), arg_1.d.x >> (arg_1.d.x % 32u)))));
    let var_2 = !select(select(!(!vec3<bool>(arg_0, false, arg_1.c.x)), !(!vec3<bool>(arg_1.c.x, var_1.c.x, arg_1.c.x)), arg_1.c), select(!vec3<bool>(arg_1.c.x, arg_0, true), arg_1.c, arg_1.c), !(true && any(arg_1.c.xy)));
    let var_3 = true;
    global0 = array<u32, 21>();
    return ~(_wgslsmith_sub_vec4_u32(vec4<u32>(62571u, 1u, arg_1.d.x, 80225u) | vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(1u, 21u)], 14973u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(14424u, u_input.e.x, 4294967295u, 100354u), vec4<u32>(3127u, 0u, 4294967295u, global0[_wgslsmith_index_u32(u_input.c, 21u)]))) >> (~(~vec4<u32>(u_input.c, u_input.c, var_1.d.x, global0[_wgslsmith_index_u32(15764u, 21u)])) % vec4<u32>(32u))) << (firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(41699u, arg_1.d.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, var_1.d.x, global0[_wgslsmith_index_u32(0u, 21u)]), vec3<u32>(u_input.c, arg_1.d.x, 1u)), _wgslsmith_clamp_u32(var_1.d.x, 0u, 28099u)), abs(69273u), 57359u)) % vec4<u32>(32u));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = reverseBits(reverseBits(_wgslsmith_div_i32(u_input.a, u_input.b.x) ^ u_input.d.x));
    var var_1 = min(~(~_wgslsmith_mod_vec3_u32(select(arg_2.zzz, vec3<u32>(arg_3.x, 229u, arg_3.x), vec3<bool>(false, true, false)), vec3<u32>(30811u, arg_3.x, 22596u) << (vec3<u32>(arg_3.x, 4294967295u, u_input.c) % vec3<u32>(32u)))), vec3<u32>(4294967295u, countOneBits(~arg_3.x) | arg_3.x, global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(arg_2, arg_2)), 21u)]));
    global0 = array<u32, 21>();
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1492f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(703f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-677f - arg_1))), 686f));
    global0 = array<u32, 21>();
    return Struct_1(abs(~(~(~vec3<i32>(0i, -2147483647i, var_0)))), max(~(~func_3(true, Struct_3(var_2, Struct_2(vec3<f32>(var_2.a.x, -1281f, 1229f)), vec3<bool>(true, false, true), vec2<u32>(var_1.x, var_1.x)))), ~(~countOneBits(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(var_1.x, 21u)], 1u, u_input.c)))), reverseBits(u_input.b), true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: vec4<bool>) -> Struct_1 {
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_1.b.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-312f + 465f), _wgslsmith_f_op_f32(max(-2808f, arg_1.a.a.x)), any(arg_1.c))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-438f + 1000f) * -739f))), arg_2, vec2<u32>(arg_0.b.x, ~0u));
    var_0 = func_2(arg_1.b.a, _wgslsmith_f_op_f32(1000f + 366f), func_3(arg_0.d, Struct_3(arg_1.a, Struct_2(arg_1.b.a), select(vec3<bool>(var_0.d, true, true), !arg_1.c, !vec3<bool>(arg_3.x, false, arg_3.x)), firstTrailingBit(arg_2.wy))), vec2<u32>(_wgslsmith_mod_u32(0u, ~(var_0.b.x << (arg_1.d.x % 32u))), func_3(var_0.d, arg_1).x));
    return func_2(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -804f) - _wgslsmith_f_op_f32(-arg_1.b.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-442f, 1003f)) + _wgslsmith_f_op_f32(min(arg_1.b.a.x, 146f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.a.x * arg_1.b.a.x))), -728f), -859f, vec4<u32>(~4294967295u, global0[_wgslsmith_index_u32(~arg_1.d.x, 21u)], _wgslsmith_div_u32(~(~var_0.b.x), _wgslsmith_mult_u32(1u, select(arg_2.x, 43600u, true))), countOneBits(~global0[_wgslsmith_index_u32(36866u, 21u)]) | 32377u), ~(countOneBits(vec2<u32>(u_input.e.x, var_0.b.x)) ^ select(vec2<u32>(53562u, 4294967295u), vec2<u32>(1u, var_0.b.x), false)) ^ ~abs(~vec2<u32>(u_input.c, 25093u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = vec3<bool>(true, !func_4(func_4(func_2(arg_2.a, -415f, vec4<u32>(4294967295u, 78774u, 0u, 0u), arg_0.b.yz), Struct_3(arg_2, arg_2, vec3<bool>(arg_1.d, false, false), vec2<u32>(44354u, global0[_wgslsmith_index_u32(arg_1.b.x, 21u)])), vec4<u32>(arg_0.b.x, global0[_wgslsmith_index_u32(arg_1.b.x, 21u)], 1u, 44698u), vec4<bool>(arg_1.d, arg_0.d, arg_0.d, false)), Struct_3(Struct_2(arg_2.a), Struct_2(vec3<f32>(-835f, arg_2.a.x, -129f)), !vec3<bool>(true, arg_1.d, false), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.b.x, u_input.e.x), arg_0.b.zz)), vec4<u32>(106040u, u_input.e.x, firstTrailingBit(global0[_wgslsmith_index_u32(arg_1.b.x, 21u)]), abs(2199u)), !(!vec4<bool>(arg_0.d, true, false, true))).d, arg_0.d);
    var var_1 = -48622i & arg_1.c.x;
    let var_2 = ~((vec4<i32>(arg_0.c.x, u_input.d.x, arg_0.a.x, -2147483647i) >> ((arg_1.b & vec4<u32>(10065u, 4294967295u, 1u, arg_1.b.x)) % vec4<u32>(32u))) << (~(vec4<u32>(u_input.c, 0u, 59096u, 1u) ^ vec4<u32>(global0[_wgslsmith_index_u32(1u, 21u)], 26054u, u_input.c, 84981u)) % vec4<u32>(32u))) & -select(~(vec4<i32>(u_input.b.x, -2147483647i, arg_0.c.x, 2147483647i) | vec4<i32>(arg_0.a.x, -1i, -2147483647i, -8310i)), ~firstTrailingBit(vec4<i32>(-1i, arg_0.c.x, -4199i, 49880i)), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_2.a.x, arg_2.a.x) * arg_2.a), _wgslsmith_f_op_f32(-arg_2.a.x), arg_0.b, vec2<u32>(0u, 1u)).d);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_2.a.zy))))))));
    let var_4 = var_0.zx;
    return vec3<bool>(select(any(!vec4<bool>(var_0.x, true, var_4.x, var_4.x)), select(true, true, all(select(vec4<bool>(var_0.x, arg_1.d, false, var_4.x), vec4<bool>(true, arg_0.d, false, var_0.x), var_0.x))), !arg_0.d), false, var_4.x);
}

fn func_1() -> u32 {
    global0 = array<u32, 21>();
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1431f), _wgslsmith_div_f32(-1327f, _wgslsmith_f_op_f32(-678f + -1696f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(256f, 570f)))))))));
    let var_1 = select(func_5(func_4(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(-1096f, -1143f, -1213f), vec3<f32>(-1083f, 830f, 488f)), _wgslsmith_f_op_f32(sign(998f)), ~vec4<u32>(u_input.c, u_input.c, global0[_wgslsmith_index_u32(9127u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)]), vec2<u32>(44418u, 31813u) | u_input.e), Struct_3(Struct_2(vec3<f32>(1214f, 1000f, 499f)), Struct_2(vec3<f32>(-1850f, 1445f, 744f)), vec3<bool>(true, true, true), ~vec2<u32>(u_input.e.x, 35436u)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, 9740u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(38396u, 21u)], 2500u, 0u, 139987u))), vec4<bool>(true, true, true, true)), Struct_1(-(u_input.b | vec3<i32>(-69370i, u_input.b.x, u_input.b.x)), vec4<u32>(func_4(Struct_1(vec3<i32>(u_input.b.x, u_input.a, 1i), vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), vec3<i32>(u_input.b.x, u_input.a, u_input.d.x), true), Struct_3(Struct_2(vec3<f32>(-474f, -1800f, -346f)), Struct_2(vec3<f32>(-446f, -1353f, 857f)), vec3<bool>(false, false, false), u_input.e), vec4<u32>(global0[_wgslsmith_index_u32(28244u, 21u)], u_input.c, u_input.c, global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<bool>(false, true, false, true)).b.x, global0[_wgslsmith_index_u32(40518u, 21u)], abs(0u), ~global0[_wgslsmith_index_u32(4294967295u, 21u)]), ~_wgslsmith_add_vec3_i32(u_input.b, u_input.b), all(vec4<bool>(true, true, true, true))), Struct_2(vec3<f32>(1575f, -379f, _wgslsmith_f_op_f32(-116f + 262f)))), !vec3<bool>(true, ~u_input.a != (i32(-1i) * -1i), true || func_2(vec3<f32>(-924f, -1000f, -1178f), 360f, vec4<u32>(2569u, u_input.e.x, 4294967295u, u_input.e.x), u_input.e).d), vec3<bool>(false, _wgslsmith_f_op_f32(-902f + -644f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-375f))), false && (~(-11098i) > min(u_input.a, u_input.b.x))));
    var var_2 = true;
    var_0 = -731f;
    return func_3(var_1.x | (var_1.x || false), Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-320f, 912f, 329f))), var_1.x))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1902f, -315f, 1629f))))), select(vec3<bool>(any(vec3<bool>(var_1.x, var_1.x, var_1.x)), all(vec3<bool>(false, false, var_1.x)), false), select(var_1, !var_1, !var_1.x), any(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), vec2<u32>(~global0[_wgslsmith_index_u32(~56445u, 21u)], firstLeadingBit(u_input.c)))).x;
}

fn func_6(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global0 = array<u32, 21>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2221f, 1744f, -633f), vec3<f32>(777f, 1002f, -564f), vec3<bool>(arg_0.d, arg_0.d, true)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-426f, 1000f, -847f) - vec3<f32>(-1322f, 165f, -1961f)), vec3<f32>(2051f, -162f, 438f))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-763f, var_0.a.x)) * var_0.a.x), var_0.a.x, arg_0.d)) + _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - 1762f)))));
    return Struct_1(~countOneBits(-_wgslsmith_div_vec3_i32(arg_0.a, u_input.b)), vec4<u32>(~1u, 94917u, 1u, ~81140u ^ global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_2(var_0.a, -1179f, vec4<u32>(4294967295u, 21602u, global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(3073u, 21u)]), u_input.e).b.x, _wgslsmith_dot_vec4_u32(arg_0.b, vec4<u32>(59182u, 4294967295u, 34402u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.b.x, 21u)], 21u)], 21u)])), u_input.c >> (arg_0.b.x % 32u)), 21u)]), func_2(_wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)), arg_0.d)), 450f, ~(~_wgslsmith_sub_vec4_u32(arg_0.b, arg_0.b)), _wgslsmith_clamp_vec2_u32(max(func_3(false, Struct_3(Struct_2(var_0.a), Struct_2(var_0.a), vec3<bool>(false, true, arg_0.d), arg_0.b.yz)).wx, arg_0.b.ww), arg_0.b.ww, vec2<u32>(global0[_wgslsmith_index_u32(16822u, 21u)], 4294967295u) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))).c, !(4294967295u >= arg_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(_wgslsmith_add_vec3_i32(-u_input.b | select(vec3<i32>(31715i, 1i, u_input.d.x), u_input.b, vec3<bool>(true, false, false)), abs(vec3<i32>(u_input.a, -1651i, u_input.b.x) >> (vec3<u32>(39497u, 37445u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 21u)], 21u)], 21u)], 21u)]) % vec3<u32>(32u)))), ~vec4<u32>(~global0[_wgslsmith_index_u32(17193u, 21u)], 37977u, 4294967295u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.c, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 21u)], 21u)], 21u)], 21u)])), vec3<i32>(-1i) * -vec3<i32>(u_input.a, -2147483647i, u_input.a), true), firstTrailingBit(~func_1()));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(403f)), _wgslsmith_f_op_f32(1289f - 2005f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-309f - 483f))))));
    var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, 0i & u_input.b.x, firstLeadingBit(var_0.a.x)), vec3<i32>(1i, ~max(var_0.c.x, u_input.a), 79933i), vec3<i32>(var_0.a.x, -1i, countOneBits(var_0.a.x)) << (func_6(func_6(Struct_1(vec3<i32>(19697i, u_input.b.x, 0i), vec4<u32>(u_input.c, 4294967295u, u_input.e.x, 0u), vec3<i32>(var_0.a.x, u_input.d.x, -1i), var_0.d), 44584u), 1u).b.yzx % vec3<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 33640u, 0u, _wgslsmith_mod_u32(1u, 1u)), var_0.b, ~vec4<u32>(0u >> (u_input.c % 32u), ~u_input.c, global0[_wgslsmith_index_u32(0u, 21u)], ~54097u)), vec3<i32>(var_0.a.x >> ((u_input.c | (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 21u)], 21u)] << (8212u % 32u))) % 32u), var_0.c.x, 0i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, -434f)) + _wgslsmith_f_op_f32(sign(var_1.x))))) > _wgslsmith_f_op_f32(-370f * -532f));
    var_0 = func_4(func_2(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(776f, var_1.x)), _wgslsmith_f_op_f32(var_1.x + var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -1000f) * _wgslsmith_f_op_f32(-1000f + var_1.x))), _wgslsmith_mult_vec4_u32((vec4<u32>(u_input.e.x, 137120u, var_0.b.x, 4294967295u) | var_0.b) >> (~vec4<u32>(20835u, 32556u, 1u, var_0.b.x) % vec4<u32>(32u)), ~var_0.b), ~(~u_input.e | var_0.b.zw)), Struct_3(Struct_2(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x))), vec3<bool>((u_input.a != -2147483647i) & (u_input.b.x > u_input.a), var_0.d, !var_0.d), var_0.b.yy), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_4(func_4(func_2(vec3<f32>(var_1.x, var_1.x, var_1.x), 769f, var_0.b, u_input.e), Struct_3(Struct_2(vec3<f32>(-846f, var_1.x, -155f)), Struct_2(vec3<f32>(-576f, var_1.x, 790f)), vec3<bool>(true, true, true), vec2<u32>(0u, 62910u)), _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 21u)], 0u, var_0.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)]), vec4<u32>(39604u, var_0.b.x, global0[_wgslsmith_index_u32(25096u, 21u)], u_input.e.x)), !vec4<bool>(true, false, var_0.d, var_0.d)), Struct_3(Struct_2(vec3<f32>(var_1.x, var_1.x, var_1.x)), Struct_2(vec3<f32>(2592f, -155f, -108f)), vec3<bool>(var_0.d, var_0.d, true), ~var_0.b.wx), vec4<u32>(reverseBits(u_input.e.x), u_input.c, _wgslsmith_clamp_u32(47287u, var_0.b.x, 1u), ~u_input.c), vec4<bool>(all(vec2<bool>(var_0.d, var_0.d)), var_0.d, func_6(Struct_1(vec3<i32>(var_0.c.x, var_0.c.x, 2147483647i), var_0.b, var_0.c, false), global0[_wgslsmith_index_u32(var_0.b.x, 21u)]).d, true && var_0.d)).b.x, 21u)], 21u)], (global0[_wgslsmith_index_u32(var_0.b.x | 63801u, 21u)] | (global0[_wgslsmith_index_u32(var_0.b.x, 21u)] << (u_input.e.x % 32u))) << ((_wgslsmith_div_u32(var_0.b.x, global0[_wgslsmith_index_u32(u_input.c, 21u)]) | var_0.b.x) % 32u), ~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(4294967295u), 1u), 21u)], ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b.x, 21u)], 21u)], 21u)] << (var_0.b.x % 32u))), !(!(!select(vec4<bool>(false, var_0.d, false, var_0.d), vec4<bool>(var_0.d, var_0.d, true, false), vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d)))));
    let var_2 = true;
    var_0 = Struct_1(_wgslsmith_mod_vec3_i32(u_input.b >> ((abs(vec3<u32>(var_0.b.x, 71585u, global0[_wgslsmith_index_u32(var_0.b.x, 21u)])) >> (var_0.b.zyx % vec3<u32>(32u))) % vec3<u32>(32u)), ~vec3<i32>(var_0.c.x, u_input.a, u_input.d.x) & vec3<i32>(-23470i, 30041i >> (u_input.e.x % 32u), u_input.b.x & var_0.c.x)), var_0.b, var_0.a & var_0.c, 45083i > var_0.a.x);
    var_0 = Struct_1(var_0.c, vec4<u32>(~1u, _wgslsmith_add_u32(u_input.e.x, _wgslsmith_mult_u32(firstTrailingBit(u_input.e.x), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(16894u, 21u)], 21u)])), (max(1u, u_input.e.x) >> (var_0.b.x % 32u)) | (~52889u | func_4(Struct_1(u_input.b, vec4<u32>(47401u, 34342u, 85844u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]), var_0.a, var_0.d), Struct_3(Struct_2(vec3<f32>(937f, -219f, -997f)), Struct_2(vec3<f32>(-2202f, var_1.x, -861f)), vec3<bool>(false, false, var_0.d), vec2<u32>(0u, var_0.b.x)), var_0.b, vec4<bool>(var_0.d, var_0.d, true, false)).b.x), _wgslsmith_add_u32(func_3(var_2, Struct_3(Struct_2(vec3<f32>(950f, -798f, 236f)), Struct_2(vec3<f32>(214f, var_1.x, -1513f)), vec3<bool>(false, var_2, var_0.d), var_0.b.yx)).x, ~26359u)), (_wgslsmith_sub_vec3_i32(func_4(Struct_1(var_0.a, var_0.b, vec3<i32>(u_input.a, u_input.b.x, u_input.d.x), var_2), Struct_3(Struct_2(vec3<f32>(-396f, var_1.x, var_1.x)), Struct_2(vec3<f32>(1168f, 1437f, 382f)), vec3<bool>(var_0.d, false, false), var_0.b.yy), vec4<u32>(var_0.b.x, global0[_wgslsmith_index_u32(36836u, 21u)], 104553u, 1u), vec4<bool>(true, false, var_2, var_2)).c, u_input.b) ^ ~func_4(Struct_1(vec3<i32>(2147483647i, 39747i, -35118i), var_0.b, var_0.c, false), Struct_3(Struct_2(vec3<f32>(var_1.x, var_1.x, -794f)), Struct_2(vec3<f32>(-620f, 1985f, -257f)), vec3<bool>(true, var_2, true), var_0.b.wy), var_0.b, vec4<bool>(var_0.d, var_2, var_0.d, false)).c) << (var_0.b.wzy % vec3<u32>(32u)), true);
    var_0 = Struct_1(_wgslsmith_div_vec3_i32(u_input.b, ~vec3<i32>(1i, var_0.a.x, _wgslsmith_dot_vec2_i32(u_input.d, u_input.d))), reverseBits(vec4<u32>(4294967295u, ~global0[_wgslsmith_index_u32(84907u, 21u)], ~var_0.b.x, ~u_input.c)) & ~vec4<u32>(global0[_wgslsmith_index_u32(u_input.e.x, 21u)] | 18311u, 58876u, reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)]), 1u), vec3<i32>(u_input.d.x, -var_0.a.x, 1i), true);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1665f, _wgslsmith_f_op_f32(-var_1.x), var_1.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) + vec3<f32>(546f, 153f, -424f))))))));
    let x = u_input.a;
    s_output = StorageBuffer((global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b.x, select(var_0.b.x, global0[_wgslsmith_index_u32(48679u, 21u)], var_0.d)), 21u)] ^ u_input.c) << (~global0[_wgslsmith_index_u32(var_0.b.x, 21u)] % 32u), _wgslsmith_f_op_f32(floor(var_3.x)));
}

