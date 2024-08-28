struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false));

var<private> global2: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(51915u, 0u, 25954u), vec3<u32>(39046u, 4294967295u, 8269u), vec3<u32>(39307u, 6442u, 556u), vec3<u32>(4294967295u, 2151u, 1u), vec3<u32>(442u, 3070u, 49072u), vec3<u32>(21619u, 13719u, 4294967295u), vec3<u32>(14830u, 77093u, 26282u), vec3<u32>(0u, 58115u, 17362u), vec3<u32>(1u, 4294967295u, 78527u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(95094u, 1u, 37931u), vec3<u32>(85739u, 1u, 640u), vec3<u32>(99962u, 1u, 4294967295u), vec3<u32>(0u, 0u, 0u), vec3<u32>(23499u, 80046u, 4294967295u), vec3<u32>(1u, 0u, 4913u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 1u, 0u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 96115u, 68854u), vec3<u32>(29860u, 28423u, 25171u));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-318f, 785f, 364f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(734f, -1165f, 1004f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-980f, -1149f, -364f) + vec3<f32>(1646f, 865f, -2131f))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-100f)), _wgslsmith_f_op_f32(1451f + _wgslsmith_div_f32(-1119f, 1527f)), 869f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -405f, _wgslsmith_f_op_f32(f32(-1f) * -563f)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(349f, -915f, 131f) + vec3<f32>(580f, 1145f, -2503f)), vec3<f32>(-1012f, -1000f, -1561f))))));
    return Struct_2(Struct_1(!any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true))), ~vec4<i32>(global0.x, global0.x, global0.x, 2147483647i), abs(-vec4<i32>(~(-28656i), ~global0.x, global0.x, 43848i)), -479f, global1[_wgslsmith_index_u32(arg_0, 8u)]);
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(-147f, arg_0.d);
    global0 = vec2<i32>(-1i, -50600i);
    var var_1 = vec4<i32>(global0.x, _wgslsmith_mult_i32(min(_wgslsmith_div_i32(-6220i, -2147483647i), _wgslsmith_mult_i32(1i, -1i)), abs(global0.x)), max(_wgslsmith_add_i32(-arg_0.b.x, -1i), -_wgslsmith_mult_i32(arg_0.c.x, 0i)), countOneBits(_wgslsmith_clamp_i32(1i, arg_0.c.x, 1i) ^ ~(-67748i))) >> (~_wgslsmith_sub_vec4_u32((vec4<u32>(u_input.a, u_input.a, u_input.a, 882u) << (vec4<u32>(1u, 3122u, u_input.a, u_input.a) % vec4<u32>(32u))) & ~vec4<u32>(u_input.a, u_input.a, 13484u, u_input.a), firstLeadingBit(abs(vec4<u32>(1u, 101624u, 44017u, u_input.a)))) % vec4<u32>(32u));
    global1 = array<Struct_1, 8>();
    return Struct_2(func_2(~_wgslsmith_clamp_u32(~u_input.a, ~4294967295u, 39002u)).e, vec4<i32>(_wgslsmith_sub_i32(abs(var_1.x), min(global0.x, global0.x)), max(_wgslsmith_mod_i32(-2147483647i, -1i) << (reverseBits(u_input.a) % 32u), var_1.x), 2147483647i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(49171i & var_1.x, _wgslsmith_mod_i32(arg_0.c.x, var_1.x)), abs(firstTrailingBit(var_1.x)), firstLeadingBit(arg_0.c.x & global0.x), 29737i), ~arg_0.b), 1359f, arg_0.a);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-680f)))));
    let var_1 = func_2(reverseBits(4294967295u));
    return func_2(_wgslsmith_div_u32(u_input.a, ~_wgslsmith_mod_u32(~4294967295u, select(u_input.a, 6297u, false))));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = arg_1;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.d)) + _wgslsmith_f_op_f32(-1335f + -1546f)) * _wgslsmith_f_op_f32(f32(-1f) * -1062f)))), var_0.d);
    let var_2 = ~countOneBits(_wgslsmith_dot_vec2_i32(func_3(func_3(var_0, arg_1.a.a), arg_0).c.zw, -arg_1.b.zx));
    global2 = array<vec3<u32>, 21>();
    let var_3 = arg_1;
    return vec4<bool>(!(~_wgslsmith_add_i32(var_0.b.x, 55357i) == global0.x), true, true, func_4(func_4(func_4(Struct_2(Struct_1(arg_3.a), var_0.b, vec4<i32>(0i, var_2, 33567i, -31908i), -836f, var_3.e)))).a.a);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec2<u32> {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 8u)];
    let var_1 = _wgslsmith_div_u32(firstTrailingBit(1u), _wgslsmith_clamp_u32(~(u_input.a & 73194u), u_input.a, 4294967295u)) != 75066u;
    let var_2 = select(func_5(!var_1, func_4(func_3(func_2(1u), true)), _wgslsmith_clamp_vec4_u32(abs(min(vec4<u32>(0u, u_input.a, 1u, u_input.a), vec4<u32>(56433u, u_input.a, u_input.a, u_input.a))), vec4<u32>(1u, 61525u & u_input.a, u_input.a | 39015u, firstTrailingBit(u_input.a)), abs(~vec4<u32>(u_input.a, 39021u, u_input.a, u_input.a))), func_3(Struct_2(func_4(Struct_2(Struct_1(false), vec4<i32>(global0.x, global0.x, global0.x, 1i), vec4<i32>(-20809i, -1i, -4701i, global0.x), arg_1, arg_0)).e, ~vec4<i32>(-37370i, -2147483647i, -2147483647i, global0.x), min(vec4<i32>(-2147483647i, -41475i, global0.x, global0.x), vec4<i32>(-2147483647i, global0.x, global0.x, -2147483647i)), arg_1, func_2(1u).e), !select(false, false, false)).a), vec4<bool>(var_0.a, true, select(720f != arg_1, func_3(Struct_2(global1[_wgslsmith_index_u32(u_input.a, 8u)], vec4<i32>(global0.x, 2147483647i, global0.x, global0.x), vec4<i32>(global0.x, global0.x, 1i, -12926i), -1000f, Struct_1(var_1)), var_1).a.a, any(vec2<bool>(arg_0.a, var_0.a))) & true, var_0.a), true);
    let var_3 = Struct_2(arg_0, min(~(vec4<i32>(global0.x, global0.x, -1i, global0.x) >> (vec4<u32>(u_input.a, 1u, 1u, 4294967295u) % vec4<u32>(32u))), func_2(_wgslsmith_sub_u32(72697u, u_input.a)).b) & (vec4<i32>(-44974i, 5812i, func_4(Struct_2(Struct_1(var_1), vec4<i32>(-2147483647i, global0.x, 1586i, 13820i), vec4<i32>(global0.x, global0.x, global0.x, -28038i), 824f, global1[_wgslsmith_index_u32(4294967295u, 8u)])).c.x, 92025i) >> ((~vec4<u32>(33568u, u_input.a, 0u, 46476u) ^ ~vec4<u32>(u_input.a, 3689u, u_input.a, 17559u)) % vec4<u32>(32u))), vec4<i32>((-22482i | _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(-17020i, global0.x))) >> (u_input.a % 32u), max(17416i & select(70454i, -2147483647i, var_1), -2147483647i), func_3(Struct_2(arg_0, _wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, global0.x, 2147483647i, global0.x), vec4<i32>(global0.x, 43783i, -4689i, 2147483647i)), vec4<i32>(-67860i, 0i, 69278i, -53920i), 2103f, func_2(u_input.a).e), true).b.x, global0.x), -520f, func_2(64395u).a);
    global2 = array<vec3<u32>, 21>();
    return max(firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a) & max(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a)), select(vec2<u32>(4294967295u, 32133u) | vec2<u32>(u_input.a, 14160u), firstTrailingBit(vec2<u32>(4294967295u, u_input.a)), func_2(u_input.a).a.a))), reverseBits(vec2<u32>(~firstLeadingBit(1u), u_input.a >> (_wgslsmith_add_u32(1u, u_input.a) % 32u))));
}

fn func_6(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(true);
    var var_1 = vec2<i32>(2147483647i >> (1u % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0.x, global0.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, global0.x), vec2<i32>(-8156i, 0i), vec2<i32>(2147483647i, 2147483647i))), vec2<i32>(-global0.x, ~(-6504i)))) & vec2<i32>(global0.x, -2147483647i);
    global2 = array<vec3<u32>, 21>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(431f + -638f) * _wgslsmith_f_op_f32(-404f + 1285f)), _wgslsmith_f_op_f32(step(-259f, func_3(Struct_2(Struct_1(var_0.a), vec4<i32>(var_1.x, global0.x, 13868i, 19570i), vec4<i32>(-1i, var_1.x, global0.x, -30425i), 1874f, var_0), true).d))), _wgslsmith_f_op_f32(min(972f, _wgslsmith_f_op_f32(f32(-1f) * -1060f))), _wgslsmith_f_op_f32(trunc(-523f))));
    global1 = array<Struct_1, 8>();
    return var_0;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(arg_2.x, func_2(abs(reverseBits(4294967295u))).b.x, -(~arg_2.x), _wgslsmith_add_i32(_wgslsmith_div_i32(0i, arg_2.x), -65131i)), vec4<i32>(-1i & -arg_2.x, ~(-func_3(Struct_2(Struct_1(arg_0.a), vec4<i32>(-1737i, 2147483647i, arg_2.x, global0.x), vec4<i32>(-25627i, arg_2.x, -16116i, 34284i), arg_3.x, Struct_1(false)), arg_0.a).b.x), firstTrailingBit(-6889i), -1i & ((i32(-1i) * -16634i) | func_4(Struct_2(arg_0, vec4<i32>(2147483647i, 2147483647i, arg_2.x, global0.x), vec4<i32>(arg_2.x, global0.x, 0i, -2147483647i), arg_3.x, Struct_1(false))).c.x)));
    var var_2 = u_input.a;
    global2 = array<vec3<u32>, 21>();
    var var_3 = func_4(Struct_2(Struct_1(~u_input.a >= _wgslsmith_div_u32(u_input.a, 4294967295u)), _wgslsmith_div_vec4_i32(~vec4<i32>(arg_2.x, -58765i, -15699i, global0.x), firstLeadingBit(vec4<i32>(0i, var_1.x, -31628i, 2485i))) >> (~(vec4<u32>(u_input.a, 67067u, 4881u, 56566u) ^ vec4<u32>(4294967295u, 25008u, u_input.a, 26775u)) % vec4<u32>(32u)), ~select(vec4<i32>(-28026i, var_1.x, 1i, arg_2.x), select(vec4<i32>(74684i, 0i, -1i, 2147483647i), vec4<i32>(global0.x, -43845i, global0.x, arg_2.x), vec4<bool>(var_0.a, arg_0.a, var_0.a, arg_1.a)), true), _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - _wgslsmith_div_f32(arg_3.x, arg_3.x))), func_2(firstTrailingBit(u_input.a)).a)).b.x;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!any(vec4<bool>(true, true, true, true))));
    let var_1 = Struct_2(func_7(Struct_1(!(var_0.a || var_0.a)), func_6(func_1(global1[_wgslsmith_index_u32(u_input.a, 8u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~vec2<i32>(8089i, select(global0.x, global0.x, var_0.a)), vec3<f32>(1f, -201f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-264f * -668f))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 23577i, ~global0.x, global0.x), ~(~firstTrailingBit(vec4<i32>(21489i, -45232i, 0i, 0i))), vec4<i32>(_wgslsmith_sub_i32(func_2(0u).c.x, func_2(4294967295u).c.x), abs(func_2(u_input.a).c.x), global0.x, abs(global0.x))), func_3(Struct_2(Struct_1(var_0.a), -(~vec4<i32>(-2147483647i, global0.x, global0.x, 9300i)), -vec4<i32>(global0.x, global0.x, -1i, global0.x), _wgslsmith_f_op_f32(f32(-1f) * -408f), Struct_1(any(vec4<bool>(var_0.a, false, true, true)))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 17904u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), vec4<u32>(4937u, u_input.a, u_input.a, 67381u) >> (vec4<u32>(4294967295u, u_input.a, 0u, u_input.a) % vec4<u32>(32u))) >= ((u_input.a & 1u) >> (~u_input.a % 32u))).c, -411f, Struct_1(func_4(func_2(u_input.a | u_input.a)).a.a));
    var var_2 = Struct_2(Struct_1(var_0.a), vec4<i32>(reverseBits(21548i), select(-35224i, ~_wgslsmith_mult_i32(var_1.c.x, 25972i), func_4(func_3(Struct_2(Struct_1(true), vec4<i32>(-2147483647i, 1i, global0.x, 24454i), vec4<i32>(var_1.c.x, var_1.b.x, global0.x, global0.x), var_1.d, global1[_wgslsmith_index_u32(u_input.a, 8u)]), var_0.a)).a.a), -select(~global0.x, var_1.b.x, func_4(var_1).e.a), -31646i), _wgslsmith_div_vec4_i32(vec4<i32>(~1i, var_1.b.x, ~var_1.c.x, reverseBits(-27078i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.c.x, i32(-1i) * -18902i, global0.x, var_1.c.x), firstLeadingBit(vec4<i32>(global0.x, var_1.c.x, -8615i, var_1.b.x)), func_2(56222u).b)), -481f, func_4(Struct_2(func_6(vec2<u32>(u_input.a, u_input.a)), vec4<i32>(var_1.c.x >> (u_input.a % 32u), -47067i & global0.x, -var_1.b.x, var_1.c.x), ~vec4<i32>(-2147483647i, 0i, var_1.c.x, global0.x), var_1.d, global1[_wgslsmith_index_u32(u_input.a, 8u)])).a);
    var_0 = var_1.e;
    var_0 = var_1.e;
    var var_3 = func_2(_wgslsmith_mult_u32(u_input.a, 48507u)).d;
    global1 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(abs(_wgslsmith_mult_u32(~0u, abs(u_input.a))), abs(u_input.a), u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2110f, var_2.d)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(2347f, 1295f) + vec2<f32>(414f, -542f))), vec2<f32>(431f, -114f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1080f, var_2.d, var_2.d))))))), 1u);
}

