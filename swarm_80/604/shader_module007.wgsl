struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(-1850f, -393f, 668f, -135f), vec4<f32>(682f, 315f, 2119f, 1000f), vec4<f32>(1980f, -1066f, -2025f, -1000f), vec4<f32>(785f, -148f, 1342f, 772f), vec4<f32>(-719f, -378f, 1772f, -673f), vec4<f32>(-1000f, 615f, -1171f, 786f), vec4<f32>(1191f, 380f, -216f, -910f), vec4<f32>(-1551f, 741f, 521f, -1312f), vec4<f32>(1000f, 1357f, 1179f, 699f), vec4<f32>(-1823f, 611f, -223f, -1277f), vec4<f32>(403f, -342f, 815f, 1089f), vec4<f32>(174f, -470f, -482f, 191f), vec4<f32>(1853f, -292f, 1243f, -177f));

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec4<i32>(2147483647i, 8381i, -14427i, 21224i), vec2<bool>(false, true), vec2<f32>(1000f, 1000f))), Struct_2(Struct_1(vec4<i32>(-49578i, -30752i, 0i, -18839i), vec2<bool>(true, true), vec2<f32>(-2300f, 1230f))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 5678i), vec2<bool>(false, true), vec2<f32>(-377f, 445f))), Struct_2(Struct_1(vec4<i32>(0i, -35522i, -14673i, 2147483647i), vec2<bool>(false, false), vec2<f32>(-422f, 231f))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -18048i), vec2<bool>(true, true), vec2<f32>(160f, -880f))), Struct_2(Struct_1(vec4<i32>(0i, 0i, i32(-2147483648), -5497i), vec2<bool>(false, true), vec2<f32>(399f, 1672f))), Struct_2(Struct_1(vec4<i32>(-46865i, -1i, 14386i, -27896i), vec2<bool>(false, false), vec2<f32>(-184f, 1551f))), Struct_2(Struct_1(vec4<i32>(0i, 28391i, 45620i, -33151i), vec2<bool>(false, false), vec2<f32>(-1000f, -1013f))), Struct_2(Struct_1(vec4<i32>(23265i, 12085i, 0i, 58081i), vec2<bool>(false, false), vec2<f32>(1389f, -1000f))), Struct_2(Struct_1(vec4<i32>(-52828i, 16326i, -36833i, 0i), vec2<bool>(true, false), vec2<f32>(-482f, 682f))), Struct_2(Struct_1(vec4<i32>(0i, i32(-2147483648), -56099i, 20074i), vec2<bool>(false, true), vec2<f32>(338f, -1760f))), Struct_2(Struct_1(vec4<i32>(1i, -24599i, 0i, 1i), vec2<bool>(false, true), vec2<f32>(-245f, -669f))), Struct_2(Struct_1(vec4<i32>(8328i, -14432i, -6631i, i32(-2147483648)), vec2<bool>(false, false), vec2<f32>(-796f, -398f))), Struct_2(Struct_1(vec4<i32>(-1i, 0i, -1i, 2147483647i), vec2<bool>(false, true), vec2<f32>(-1526f, 1067f))), Struct_2(Struct_1(vec4<i32>(42870i, 46927i, 32611i, 0i), vec2<bool>(true, false), vec2<f32>(-698f, 622f))), Struct_2(Struct_1(vec4<i32>(1885i, -1i, 6600i, 1i), vec2<bool>(true, false), vec2<f32>(1000f, 1576f))), Struct_2(Struct_1(vec4<i32>(-1i, -1i, -32546i, 2147483647i), vec2<bool>(false, true), vec2<f32>(395f, 785f))), Struct_2(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 9885i, 8099i), vec2<bool>(true, false), vec2<f32>(-2011f, -1175f))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 0i, 0i, -2055i), vec2<bool>(true, true), vec2<f32>(-176f, -719f))), Struct_2(Struct_1(vec4<i32>(-18990i, 1i, 39447i, 2147483647i), vec2<bool>(true, false), vec2<f32>(483f, -559f))));

var<private> global2: array<f32, 20>;

var<private> global3: f32 = -784f;

var<private> global4: Struct_1 = Struct_1(vec4<i32>(17364i, i32(-2147483648), 2147483647i, -11364i), vec2<bool>(true, true), vec2<f32>(452f, -1025f));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global4.c), global4.c));
    global3 = -387f;
    let var_1 = select(vec2<bool>(arg_1.x <= u_input.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1175f - 1026f))) > 1004f), !(!(!(!vec2<bool>(global4.b.x, arg_2.x)))), (abs(~101360u) < ((41693u | arg_1.x) >> (_wgslsmith_add_u32(arg_1.x, arg_1.x) % 32u))) || true);
    var var_2 = firstLeadingBit(-2147483647i);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -388f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(33166u, 20u)]), -296f)))) - _wgslsmith_f_op_f32(ceil(-981f)));
    return _wgslsmith_add_vec4_i32(firstLeadingBit(~vec4<i32>(1109i >> (u_input.a % 32u), i32(-1i) * -7017i, global4.a.x, 19533i)), vec4<i32>(-1i) * -global4.a);
}

fn func_2(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = Struct_3(-_wgslsmith_sub_vec2_i32(global4.a.zx, -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, arg_0.a.a.x), arg_0.a.a.yz)), Struct_1(~(-func_3(arg_0.a.a.x, vec3<u32>(u_input.a, 4294967295u, 0u), vec2<bool>(arg_0.a.b.x, global4.b.x))), vec2<bool>(!(arg_0.a.b.x || true), !all(vec4<bool>(arg_0.a.b.x, false, arg_0.a.b.x, true))), _wgslsmith_f_op_vec2_f32(arg_0.a.c * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global4.c, vec2<f32>(global2[_wgslsmith_index_u32(41392u, 20u)], -814f), vec2<bool>(arg_0.a.b.x, false))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2[_wgslsmith_index_u32(1u, 20u)], -557f), vec2<f32>(-191f, -105f)))))));
    let var_1 = var_0;
    var var_2 = Struct_4(~(~vec4<u32>(u_input.a, u_input.a, 1u, 11726u)) << (~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 0u, 4294967295u, 1u), ~vec4<u32>(0u, 0u, 2613u, u_input.a)) % vec4<u32>(32u)), arg_0, global1[_wgslsmith_index_u32(abs(u_input.a), 20u)]);
    let var_3 = _wgslsmith_clamp_u32(var_2.a.x, ~((1u >> (firstTrailingBit(var_2.a.x) % 32u)) | abs(u_input.a)), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(var_2.a, var_2.a), min(var_2.a.x, u_input.a), var_2.a.x));
    let var_4 = 4294967295u;
    return _wgslsmith_f_op_vec2_f32(-var_0.b.c);
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: u32, arg_3: vec4<f32>) -> Struct_1 {
    global3 = -902f;
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1043f);
    let var_1 = arg_3;
    global4 = Struct_1(global4.a, !global4.b, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, global2[_wgslsmith_index_u32(1u, 20u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -347f))))), vec2<f32>(1022f, -293f))));
    var var_2 = Struct_3(abs((vec2<i32>(-1i) * -vec2<i32>(1i, global4.a.x)) & _wgslsmith_add_vec2_i32(global4.a.zz ^ global4.a.xz, vec2<i32>(0i, -73447i) | global4.a.xw)), Struct_1(vec4<i32>(-47581i, _wgslsmith_add_i32(86922i, ~33342i), ~(u_input.b << (arg_2 % 32u)), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, global4.a.x), global4.a.xyw))), select(!global4.b, select(global4.b, !vec2<bool>(global4.b.x, false), !global4.b.x), any(vec4<bool>(global4.b.x, global4.b.x, false, false))), global4.c));
    return Struct_1(_wgslsmith_div_vec4_i32(max(~global4.a, func_3(var_2.a.x, vec3<u32>(arg_2, 1u, 40299u), global4.b)), -select(vec4<i32>(global4.a.x, u_input.b, var_2.a.x, global4.a.x), var_2.b.a, false)) | vec4<i32>(-6672i, u_input.b, u_input.b, -(36345i >> (u_input.a % 32u))), select(!vec2<bool>(any(var_2.b.b), !global4.b.x), var_2.b.b, any(global4.b) & select(global4.b.x | var_2.b.b.x, var_2.b.b.x, false)), vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -100f) - var_1.x)));
}

fn func_1() -> u32 {
    global4 = func_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(Struct_1(global4.a, vec2<bool>(global4.b.x, global4.b.x), global4.c)))))))))), global2[_wgslsmith_index_u32(~min(_wgslsmith_mult_u32(0u, u_input.a), ~4294967295u) | _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, ~u_input.a), u_input.a), 20u)], 4294967295u, global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 13u)]);
    let var_0 = Struct_4(reverseBits(~countOneBits(~vec4<u32>(u_input.a, 27399u, 105684u, u_input.a))), global1[_wgslsmith_index_u32(u_input.a, 20u)], Struct_2(Struct_1(~(global4.a >> (vec4<u32>(u_input.a, u_input.a, 0u, 59360u) % vec4<u32>(32u))), select(func_4(vec2<f32>(1702f, 609f), global4.c.x, 48051u, vec4<f32>(-505f, global4.c.x, global4.c.x, global4.c.x)).b, select(global4.b, vec2<bool>(false, global4.b.x), false), global4.b), vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 20u)] + global2[_wgslsmith_index_u32(u_input.a, 20u)]), _wgslsmith_f_op_f32(select(-572f, -1000f, false))))));
    var var_1 = Struct_3(_wgslsmith_clamp_vec2_i32(global4.a.zx, global4.a.xy, countOneBits(firstLeadingBit(vec2<i32>(1i, -1i)))), func_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.a.c * vec2<f32>(global4.c.x, -952f)) * _wgslsmith_div_vec2_f32(var_0.c.a.c, global4.c)))), _wgslsmith_div_f32(func_4(vec2<f32>(-389f, global2[_wgslsmith_index_u32(var_0.a.x, 20u)]), global2[_wgslsmith_index_u32(~1u, 20u)], _wgslsmith_sub_u32(var_0.a.x, 4294967295u), _wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(62374u, 13u)], vec4<f32>(global2[_wgslsmith_index_u32(50454u, 20u)], global2[_wgslsmith_index_u32(var_0.a.x, 20u)], 205f, 202f))).c.x, _wgslsmith_f_op_f32(trunc(-1215f))), abs(abs(1u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(1u, 13u)])), global0[_wgslsmith_index_u32(~54205u, 13u)]))));
    var var_2 = Struct_4(abs(firstTrailingBit(countOneBits(~var_0.a))), var_0.c, Struct_2(var_0.b.a));
    global4 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.a.a.x, abs(~var_0.b.a.a.x), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.a.x, var_0.c.a.a.x), -var_0.c.a.a.xw), 1i), -(select(vec4<i32>(var_1.b.a.x, -1i, var_1.b.a.x, -18567i), vec4<i32>(2147483647i, 41927i, -2147483647i, var_2.c.a.a.x), true) << (~var_2.a % vec4<u32>(32u)))), vec2<bool>(firstLeadingBit(var_0.a.x) <= _wgslsmith_sub_u32(4294967295u, ~var_2.a.x), true), var_2.b.a.c);
    return _wgslsmith_div_u32(~max(abs(~u_input.a), ~var_0.a.x << ((var_0.a.x >> (1313u % 32u)) % 32u)), firstTrailingBit(~_wgslsmith_mult_u32(1u, 10020u) | (var_2.a.x << (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(~select(1u >> (func_1() % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 91961u, 20066u, 73646u), ~vec4<u32>(u_input.a, u_input.a, 2460u, u_input.a)), false), _wgslsmith_dot_vec4_u32(~reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 109666u), vec4<u32>(7581u, u_input.a, u_input.a, u_input.a), vec4<u32>(10777u, u_input.a, u_input.a, u_input.a))), vec4<u32>(~(~39381u), _wgslsmith_clamp_u32(0u, u_input.a, 23850u) & ~48373u, ~u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(39298u, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 82678u)))));
    let var_1 = Struct_4(_wgslsmith_mult_vec4_u32(vec4<u32>(min(min(u_input.a, 4294967295u), ~u_input.a), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(13651u, u_input.a))), 1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a)), vec4<u32>(firstLeadingBit(~u_input.a), select(4294967295u, u_input.a, select(false, false, true)), countOneBits(u_input.a), _wgslsmith_add_u32(_wgslsmith_mult_u32(2759u, u_input.a), u_input.a))), global1[_wgslsmith_index_u32(1u, 20u)], Struct_2(Struct_1(vec4<i32>(u_input.b, u_input.b, -1i, -44722i) & vec4<i32>(global4.a.x, global4.a.x, u_input.b, -8484i), select(global4.b, func_4(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 20u)], 1388f), -839f, 1u, vec4<f32>(-600f, -1439f, global2[_wgslsmith_index_u32(u_input.a, 20u)], global4.c.x)).b, !global4.b), global4.c)));
    var var_2 = ~vec3<u32>(~(~var_1.a.x), u_input.a, _wgslsmith_mod_u32(0u, 19528u));
    let var_3 = min(12402i, 57319i);
    global4 = var_1.b.a;
    let var_4 = vec2<u32>(0u, firstTrailingBit(reverseBits(var_1.a.x ^ var_2.x))) & var_1.a.wx;
    var var_5 = 215f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1393f, -682f, 1000f), vec3<f32>(-292f, 525f, -2293f), false)))) * vec3<f32>(global4.c.x, var_1.c.a.c.x, _wgslsmith_f_op_f32(-1000f * -2294f))))));
}

