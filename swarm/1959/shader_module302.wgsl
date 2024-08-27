struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<i32>,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(0i, -12217i, i32(-2147483648)), false);

var<private> global1: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(4294967295u, 1u, 45750u), vec3<u32>(71996u, 4294967295u, 0u), vec3<u32>(18531u, 1u, 4294967295u), vec3<u32>(27433u, 59024u, 4294967295u), vec3<u32>(5023u, 1u, 0u), vec3<u32>(0u, 12691u, 15952u), vec3<u32>(1u, 4294967295u, 9382u), vec3<u32>(0u, 7363u, 1u), vec3<u32>(4294967295u, 1u, 10402u), vec3<u32>(23501u, 0u, 1u), vec3<u32>(26209u, 12595u, 12817u), vec3<u32>(7440u, 23959u, 42111u), vec3<u32>(21699u, 4294967295u, 1u), vec3<u32>(1u, 1u, 71892u), vec3<u32>(19017u, 62679u, 1u), vec3<u32>(37430u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 18660u), vec3<u32>(4294967295u, 97174u, 49651u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(83204u, 13822u, 1u), vec3<u32>(4294967295u, 4294967295u, 105699u), vec3<u32>(10344u, 4294967295u, 1u), vec3<u32>(16836u, 35912u, 8433u), vec3<u32>(0u, 1u, 20410u), vec3<u32>(23647u, 15923u, 40055u), vec3<u32>(14242u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 16303u));

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<i32>(2147483647i, -28791i, -30551i), true), Struct_1(vec3<i32>(-32638i, -1i, 91943i), true), Struct_1(vec3<i32>(0i, 41164i, -59232i), true), Struct_1(vec3<i32>(-1i, -31031i, 44461i), true), Struct_1(vec3<i32>(2147483647i, 1i, 44974i), true), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), true), Struct_1(vec3<i32>(1i, 1i, 1i), true), Struct_1(vec3<i32>(0i, -22266i, i32(-2147483648)), true), Struct_1(vec3<i32>(1i, -33136i, 13229i), false), Struct_1(vec3<i32>(1i, 2147483647i, -76766i), true), Struct_1(vec3<i32>(10990i, -1i, 0i), false), Struct_1(vec3<i32>(-32455i, 1i, -23044i), true), Struct_1(vec3<i32>(-18960i, 31932i, -1i), false), Struct_1(vec3<i32>(19343i, -1i, 2171i), false), Struct_1(vec3<i32>(1i, 2959i, 1i), true), Struct_1(vec3<i32>(i32(-2147483648), -44955i, 31546i), true), Struct_1(vec3<i32>(2147483647i, -14663i, -52406i), true), Struct_1(vec3<i32>(7077i, 58076i, 16873i), true), Struct_1(vec3<i32>(2147483647i, 32996i, -15993i), true), Struct_1(vec3<i32>(-38507i, -38179i, 1996i), false));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_4(global2[_wgslsmith_index_u32(~(~(~4294967295u)), 20u)], select(vec2<bool>(true, global0.b), vec2<bool>(true, all(vec2<bool>(false, false))), _wgslsmith_div_i32(global0.a.x, u_input.d.x) < global0.a.x), Struct_3(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(35557u, 31807u), ~u_input.a), 20u)], -_wgslsmith_clamp_vec3_i32(u_input.d.yzy & global0.a, _wgslsmith_add_vec3_i32(u_input.d.xwz, u_input.d.zyz), vec3<i32>(-5181i, u_input.d.x, 45495i)), vec3<i32>(firstLeadingBit(global0.a.x), firstLeadingBit(~(-10516i)), ~u_input.d.x), true, 536f), Struct_3(global2[_wgslsmith_index_u32(~(~u_input.a.x), 20u)], ~select(-global0.a, ~vec3<i32>(u_input.d.x, 4070i, global0.a.x), !vec3<bool>(global0.b, global0.b, global0.b)), vec3<i32>(_wgslsmith_add_i32(1i, u_input.c), countOneBits(u_input.c), global0.a.x) >> (_wgslsmith_mod_vec3_u32(abs(global1[_wgslsmith_index_u32(16513u, 27u)]), global1[_wgslsmith_index_u32(14625u, 27u)]) % vec3<u32>(32u)), true, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-708f))))));
    let var_1 = u_input.d.zxz;
    var var_2 = -vec3<i32>(_wgslsmith_dot_vec2_i32(countOneBits(global0.a.zz), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-13402i, 29498i, -27071i, var_0.c.c.x), vec4<i32>(global0.a.x, var_1.x, global0.a.x, arg_1.x)), _wgslsmith_add_i32(18409i, -4474i))), ~global0.a.x, u_input.c);
    let var_3 = Struct_1(var_0.c.b, true);
    let var_4 = u_input.a;
    return 1303f;
}

fn func_2() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(34686i, u_input.d.yy)) * 466f), 120f, true)), 1f));
    let var_1 = (-vec2<i32>(1i, 1i) & global0.a.xx) << (vec2<u32>(~u_input.a.x, ~u_input.a.x) % vec2<u32>(32u));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1041f * 344f))))), -952f);
    global0 = Struct_1(global0.a, !(!global0.b));
    let var_3 = !(!vec4<bool>(all(!vec4<bool>(global0.b, false, false, global0.b)), !global0.b, true, false));
    return var_3.wy;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec3<i32>) -> vec2<i32> {
    let var_0 = global2[_wgslsmith_index_u32(4294967295u, 20u)];
    let var_1 = Struct_4(Struct_1(firstTrailingBit(-_wgslsmith_mod_vec3_i32(vec3<i32>(27272i, arg_2.x, arg_2.x), global0.a)), _wgslsmith_dot_vec3_i32(~var_0.a, ~vec3<i32>(arg_2.x, -14835i, -2147483647i)) == _wgslsmith_dot_vec3_i32(select(arg_2, global0.a, vec3<bool>(global0.b, false, false)), ~vec3<i32>(arg_2.x, arg_2.x, arg_2.x))), select(select(!select(vec2<bool>(global0.b, false), vec2<bool>(global0.b, true), false), !select(vec2<bool>(false, true), vec2<bool>(global0.b, true), vec2<bool>(true, var_0.b)), vec2<bool>(!global0.b, !var_0.b)), !(!func_2()), true), Struct_3(Struct_1(-var_0.a << (global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.b), 27u)] % vec3<u32>(32u)), true), ~(vec3<i32>(0i, -32976i, -29461i) >> (~global1[_wgslsmith_index_u32(4294967295u, 27u)] % vec3<u32>(32u))), reverseBits(global0.a), any(!vec3<bool>(global0.b, false, global0.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-957f))), -159f))), Struct_3(Struct_1(-vec3<i32>(global0.a.x, arg_2.x, 2147483647i) << (global1[_wgslsmith_index_u32(firstTrailingBit(arg_0.x), 27u)] % vec3<u32>(32u)), !(!var_0.b)), max(select(select(vec3<i32>(40518i, global0.a.x, 16026i), global0.a, vec3<bool>(true, var_0.b, false)), abs(arg_2), vec3<bool>(true, true, false)), vec3<i32>(_wgslsmith_div_i32(0i, arg_2.x), 0i, global0.a.x)), ~_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 0i, global0.a.x), arg_2), var_0.a), global0.b, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -348f) - _wgslsmith_f_op_f32(-332f * 1000f)))));
    var var_2 = Struct_1(firstLeadingBit(vec3<i32>(~(~u_input.d.x), -28364i | global0.a.x, var_1.a.a.x)), any(vec4<bool>(var_1.d.a.b, func_2().x, true, !(!global0.b))));
    let var_3 = Struct_2(!(!var_2.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.e), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(global0.a.x, vec2<i32>(var_1.a.a.x, var_1.d.b.x)))))) - vec2<f32>(1588f, -274f)), -12664i, var_1.a);
    let var_4 = u_input.b;
    return select(_wgslsmith_sub_vec2_i32(max(arg_2.xy, select(abs(vec2<i32>(-7842i, 8001i)), select(var_0.a.yx, u_input.d.wy, var_1.b), var_3.a)), firstTrailingBit(vec2<i32>(-41012i, -19603i))), _wgslsmith_mod_vec2_i32(countOneBits(-vec2<i32>(global0.a.x, -2147483647i)), (vec2<i32>(-1i) * -arg_2.yz) >> (((vec2<u32>(arg_0.x, var_4) | vec2<u32>(arg_1.x, 33797u)) >> (~vec2<u32>(arg_0.x, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))), !select(!(var_3.a && var_3.d.b), false == var_3.a, !func_2().x));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32, arg_3: vec4<i32>) -> vec2<f32> {
    let var_0 = (func_1(~vec4<u32>(0u, u_input.b, 26176u, u_input.a.x) << (_wgslsmith_mult_vec4_u32(vec4<u32>(26055u, 59359u, 0u, u_input.a.x), vec4<u32>(36793u, u_input.b, u_input.a.x, 27754u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec2_u32(~u_input.a, vec2<u32>(arg_2, 1u), max(vec2<u32>(71830u, 1u), vec2<u32>(arg_2, 1u))), -u_input.d.xwy).x > func_1(countOneBits(vec4<u32>(arg_2, 1958u, arg_2, 67240u) << (vec4<u32>(51251u, u_input.b, 6120u, 4294967295u) % vec4<u32>(32u))), ~_wgslsmith_add_vec2_u32(u_input.a, u_input.a), vec3<i32>(1i, ~12362i, _wgslsmith_sub_i32(u_input.c, 2147483647i))).x) && !(!(!select(arg_0.d.b, true, global0.b)));
    global1 = array<vec3<u32>, 27>();
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1984f - arg_0.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-677f + _wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x)), arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.x), 308f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x)) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_f32(1000f + 148f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1358f) + arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x))));
    let var_2 = arg_0.d;
    var var_3 = func_2();
    return arg_0.b;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> f32 {
    var var_0 = ~min(abs(u_input.b), max(u_input.a.x ^ ~u_input.a.x, ~(~16197u)));
    var var_1 = _wgslsmith_mult_vec2_i32(u_input.d.zx, vec2<i32>(~(-arg_1.c), -u_input.c & (global0.a.x & (global0.a.x >> (u_input.b % 32u)))));
    global2 = array<Struct_1, 20>();
    var var_2 = arg_1;
    var_2 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_1.x | -35908i, i32(-1i) * -5908i), var_2.c) < reverseBits(_wgslsmith_sub_i32(var_1.x, -5441i) | -var_1.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, 1873f), arg_1.b, true))), !select(vec2<bool>(global0.b, true), vec2<bool>(arg_1.d.b, global0.b), arg_1.d.b))))), -2147483647i, arg_1.d);
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 27>();
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 18005u), u_input.a), max(u_input.b, 1u) ^ ~88669u), 20u)], max(vec3<i32>(~u_input.c, ~global0.a.x, ~30904i), vec3<i32>(-2147483647i, ~1i, ~(-2147483647i)) & -(u_input.d.xwz >> (global1[_wgslsmith_index_u32(u_input.a.x, 27u)] % vec3<u32>(32u)))), abs(firstLeadingBit(global0.a)), false, _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(global0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(1266f, 1158f) * vec2<f32>(911f, -580f)), -6172i, global2[_wgslsmith_index_u32(0u, 20u)]), ~vec2<i32>(1i, u_input.c) | func_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 1u), vec2<u32>(4294967295u, u_input.b), u_input.d.zxz), ~(~120736u), ~_wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(1i, 0i, 3258i, 2147483647i)))), Struct_2(true, vec2<f32>(_wgslsmith_f_op_f32(select(1083f, 1000f, false)), _wgslsmith_f_op_f32(round(503f))), -5363i, global2[_wgslsmith_index_u32(min(u_input.b << (4294967295u % 32u), u_input.b), 20u)]), 1380f, _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_i32(~global0.a.x, -31330i), ~vec2<i32>(-1i, 0i))))));
    var var_1 = vec4<i32>(_wgslsmith_div_i32(-(var_0.b.x | _wgslsmith_dot_vec4_i32(u_input.d, u_input.d)), u_input.d.x ^ select(reverseBits(-47401i), _wgslsmith_clamp_i32(-2147483647i, global0.a.x, -66984i), global0.b)), _wgslsmith_add_i32(select(-global0.a.x ^ _wgslsmith_clamp_i32(var_0.a.a.x, 35725i, 35305i), _wgslsmith_dot_vec2_i32(u_input.d.yz, u_input.d.xw), select(false, select(true, false, var_0.a.b), var_0.d)), u_input.c), 2147483647i, 8137i);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(-var_0.e)), 294f, _wgslsmith_div_f32(var_0.e, -2113f));
    global2 = array<Struct_1, 20>();
    var var_3 = select(~_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, var_1.x), vec2<i32>(var_0.c.x, 0i)) & reverseBits(~global0.a.yz), ~(~vec2<i32>(u_input.c, 1i)), u_input.b > ~81663u) >> (_wgslsmith_div_vec2_u32(firstLeadingBit(select(firstLeadingBit(vec2<u32>(u_input.a.x, u_input.b)), u_input.a, all(vec3<bool>(global0.b, true, false)))), vec2<u32>(0u, ~(~u_input.b))) % vec2<u32>(32u));
    var_3 = -vec2<i32>(abs(-13064i), -47630i);
    let var_4 = ~max(~abs(select(vec3<u32>(5602u, 4294967295u, u_input.b), vec3<u32>(50381u, u_input.a.x, 4294967295u), true)), global1[_wgslsmith_index_u32(~4294967295u, 27u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1420f, var_0.e))), Struct_2(global0.b && var_0.d, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(800f, var_0.e))), _wgslsmith_div_i32(global0.a.x, var_3.x), var_0.a), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(1051f + var_0.e))))), vec4<i32>(var_3.x, -1i, ~_wgslsmith_clamp_i32(-13151i, -19593i, 5828i), var_1.x) | u_input.d, vec4<i32>(reverseBits(_wgslsmith_mod_i32(var_3.x, var_1.x)), func_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_4.x, 71329u, 15355u), vec4<u32>(u_input.b, var_4.x, u_input.a.x, var_4.x)), ~vec4<u32>(20810u, 82153u, 1u, var_4.x), vec4<u32>(var_4.x, var_4.x, 29789u, 4294967295u)), abs(~vec2<u32>(1u, 25742u)), max(~var_0.a.a, var_1.zxx)).x, ~firstTrailingBit(var_1.x), max(func_1(max(vec4<u32>(7102u, u_input.b, 1u, u_input.a.x), vec4<u32>(21352u, var_4.x, 0u, 35746u)), ~var_4.zy, abs(vec3<i32>(2147483647i, var_1.x, 43964i))).x, ~_wgslsmith_dot_vec2_i32(var_1.yx, var_1.yy))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, 526f, var_0.e), vec3<f32>(var_2.x, 166f, 1652f)))), vec3<f32>(-1443f, _wgslsmith_f_op_f32(var_2.x - var_2.x), var_2.x))), _wgslsmith_div_vec3_f32(vec3<f32>(-311f, 1f, _wgslsmith_f_op_f32(var_0.e * var_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1626f, var_0.e, -1000f)))), vec3<bool>(select(true, func_2().x, !var_0.d), true, false))));
}

