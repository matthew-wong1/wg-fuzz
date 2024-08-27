struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(-1i, -5320i), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, -8926i), vec2<i32>(-12683i, 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, -112765i), vec2<i32>(62448i, -3983i), vec2<i32>(-15982i, 0i), vec2<i32>(2147483647i, 8493i), vec2<i32>(5279i, 2147483647i), vec2<i32>(-1i, 8573i), vec2<i32>(-32343i, -3463i), vec2<i32>(-8608i, 2147483647i), vec2<i32>(19226i, 435i), vec2<i32>(18810i, -635i), vec2<i32>(-15149i, 1i), vec2<i32>(-19934i, 0i));

var<private> global2: Struct_2;

var<private> global3: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(19401i, -73765i), vec2<i32>(-1639i, 3945i), vec2<i32>(i32(-2147483648), -37615i), vec2<i32>(-49421i, i32(-2147483648)), vec2<i32>(-1i, 48470i), vec2<i32>(-17917i, -34487i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-46087i, 11160i), vec2<i32>(16919i, 8805i), vec2<i32>(2147483647i, 11942i), vec2<i32>(44345i, -1i), vec2<i32>(0i, 1944i), vec2<i32>(-31577i, 7752i), vec2<i32>(5804i, 1i), vec2<i32>(i32(-2147483648), 1413i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(18700i, i32(-2147483648)));

var<private> global4: Struct_2 = Struct_2(23825u, 6168i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-612f, -250f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(427f, 2106f)))))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-521f, 1429f) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-554f, 1665f), vec2<f32>(1144f, -1375f))))))));
    let var_1 = abs(abs(vec3<i32>(i32(-1i) * -global2.b, ~_wgslsmith_div_i32(0i, global0.x), -25793i)));
    let var_2 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(7081u, 23764u)), abs(select(u_input.c, u_input.c, true))), u_input.c), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, u_input.d, -2147483647i, ~(-18238i)), firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1903i, 2147483647i, global4.b, -1i), vec4<i32>(8623i, global4.b, -63824i, 6119i)), _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global4.b, 1i, -1i), vec4<i32>(u_input.b, 42119i, global2.b, 4039i))))));
    global1 = array<vec2<i32>, 17>();
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -429f) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(step(1573f, -966f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(508f, var_0.x))))))));
    return _wgslsmith_mult_i32(select(-13313i << (~var_2.a % 32u), 1i, any(vec3<bool>(var_0.x < var_0.x, true, true))), 33989i);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_2 {
    global2 = Struct_2(global2.a, ~(~2i));
    var var_0 = Struct_1(_wgslsmith_clamp_u32(global2.a, 22901u, 4294967295u), -func_3());
    global4 = Struct_2(~_wgslsmith_div_u32(1u, arg_1.x), -18004i);
    global4 = Struct_2(global4.a, ~firstTrailingBit(-firstTrailingBit(global0.x)));
    global4 = Struct_2(_wgslsmith_mult_u32(~62547u, u_input.c.x), 19954i);
    return Struct_2(~arg_0, _wgslsmith_sub_i32(-(~(~(-17633i))), global2.b));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_mult_vec4_i32(-min(-(vec4<i32>(19328i, global4.b, arg_1.b, -20566i) << (vec4<u32>(28872u, 16178u, 1u, 4955u) % vec4<u32>(32u))), -vec4<i32>(global4.b, u_input.a, -1i, arg_1.b) >> ((vec4<u32>(4294967295u, global4.a, 35753u, 19227u) >> (vec4<u32>(u_input.c.x, global2.a, arg_1.a, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global4.b, u_input.d), _wgslsmith_sub_vec2_i32(vec2<i32>(-19610i, global4.b), global3[_wgslsmith_index_u32(3356u, 17u)]))), global2.b, -1i, global4.b | u_input.b));
    global1 = array<vec2<i32>, 17>();
    var var_2 = ~(~select(_wgslsmith_mod_u32(firstTrailingBit(56895u), reverseBits(arg_1.a)), ~var_0.x, false));
    var var_3 = !all(vec2<bool>(true, true));
    return Struct_3(Struct_1(abs(arg_0.a), arg_1.b), Struct_1(arg_1.a, 13500i), ~vec3<u32>(global2.a, countOneBits(~3849u), _wgslsmith_mult_u32(44069u, u_input.c.x)), Struct_2(min(0u, u_input.c.x) & ~_wgslsmith_dot_vec3_u32(vec3<u32>(global4.a, 0u, var_0.x), vec3<u32>(global4.a, 77808u, 2507u)), ~((var_1.x & u_input.a) >> (~4294967295u % 32u))));
}

fn func_1(arg_0: vec2<u32>) -> vec3<i32> {
    let var_0 = func_4(Struct_2(global4.a, 6018i), func_2(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global2.a, 6282u, 4294967295u)), vec3<u32>(4294967295u, 1u, global2.a)), select(vec3<u32>(_wgslsmith_div_u32(5905u, u_input.c.x), arg_0.x, 1u), vec3<u32>(~0u, max(10525u, 58756u), 94702u), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(31085u, u_input.c.x, global4.a, global4.a) ^ vec4<u32>(4294967295u, global4.a, 67938u, 42964u), ~vec4<u32>(global4.a, 58130u, 42478u, u_input.c.x)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-39408i, u_input.d), -global0.x))));
    let var_1 = 1303f;
    global1 = array<vec2<i32>, 17>();
    var var_2 = u_input.c.x;
    return _wgslsmith_add_vec3_i32((-select(vec3<i32>(global0.x, -3558i, var_0.a.b), vec3<i32>(34187i, var_0.b.b, global2.b), true) ^ vec3<i32>(~0i, countOneBits(-1i), ~2918i)) >> (_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.x, 30712u, 72493u)), _wgslsmith_div_vec3_u32(vec3<u32>(43527u, 2501u, global4.a), reverseBits(var_0.c))) % vec3<u32>(32u)), vec3<i32>(-44780i, -_wgslsmith_div_i32(u_input.b, -global4.b), -func_2(u_input.c.x, var_0.c, Struct_1(global4.a, 22248i)).b));
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1064f), -1230f, _wgslsmith_f_op_f32(select(2555f, -620f, arg_1))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-385f, -844f, 424f))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 890f), -1910f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-369f + -636f) * 1467f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1146f, -1000f, 918f) - vec3<f32>(692f, 579f, -925f))))));
    let var_1 = !vec4<bool>(select(!all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), any(!arg_0), !arg_0.x), all(select(vec4<bool>(true, arg_1, arg_0.x, arg_1), !vec4<bool>(false, arg_1, true, true), true)), !all(vec4<bool>(arg_0.x, true, false, false)) | false, arg_0.x);
    var var_2 = ~vec2<u32>(0u, firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global2.a, 1943u, global4.a), vec4<u32>(u_input.c.x, u_input.c.x, 72869u, global4.a))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1362f, -216f, false)) + _wgslsmith_f_op_f32(exp2(var_0.x))))), _wgslsmith_f_op_f32(sign(-358f)), _wgslsmith_f_op_f32(-var_0.x));
    var var_4 = _wgslsmith_mod_i32(global4.b, global2.b);
    return ~(-48237i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(countOneBits(~global4.a) << (global4.a % 32u), _wgslsmith_mult_i32(-(_wgslsmith_add_i32(2147483647i, u_input.a) & -1i), func_5(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false), true), global4.a <= _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a, u_input.c.x, global4.a, global2.a), vec4<u32>(global2.a, 41146u, 0u, global4.a)), reverseBits(func_1(vec2<u32>(28127u, 1u))))));
    global0 = firstLeadingBit(_wgslsmith_sub_vec3_i32(~vec3<i32>(-1i, abs(u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global2.b, 228i), vec3<i32>(global0.x, 0i, 51105i))), ~(-func_1(u_input.c))));
    var var_0 = func_4(func_2(4294967295u, vec3<u32>(1u, ~_wgslsmith_div_u32(u_input.c.x, 21609u), ~_wgslsmith_clamp_u32(45087u, u_input.c.x, u_input.c.x)), func_4(Struct_2(~u_input.c.x, _wgslsmith_add_i32(-43250i, global4.b)), Struct_2(0u, _wgslsmith_sub_i32(global4.b, -1i))).a), func_2(reverseBits(~global4.a), vec3<u32>(global2.a, countOneBits(4294967295u), 1u), Struct_1(7954u, -global0.x)));
    var var_1 = func_4(var_0.d, Struct_2(102504u, u_input.a << (~1u % 32u))).d;
    let var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(35264u, u_input.c.x, var_0.a.a), vec3<u32>(0u, 4236u, 4294967295u) << (var_0.c % vec3<u32>(32u))), firstTrailingBit(_wgslsmith_add_vec3_u32(var_0.c, var_0.c))), vec3<u32>(select(~4294967295u, ~1u, true), 0u, 1u << (_wgslsmith_sub_u32(global2.a, 11342u) % 32u))) << ((firstLeadingBit(_wgslsmith_mult_vec3_u32(var_0.c, ~var_0.c)) << ((vec3<u32>(1u, func_2(var_1.a, var_0.c, var_0.b).a, global2.a) ^ var_0.c) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_3 = !vec4<bool>(all(vec4<bool>(false, any(vec2<bool>(true, true)), false, any(vec4<bool>(false, false, true, true)))), true, true, _wgslsmith_f_op_f32(sign(-1000f)) < _wgslsmith_f_op_f32(-206f - _wgslsmith_f_op_f32(min(1054f, -1089f))));
    var var_4 = ~(-1i);
    let var_5 = var_0.a;
    let var_6 = Struct_3(func_4(var_0.d, var_0.d).b, func_4(func_4(Struct_2(_wgslsmith_dot_vec2_u32(var_2.xy, vec2<u32>(1137u, var_1.a)), -2147483647i), var_0.d).d, Struct_2(global4.a, _wgslsmith_mult_i32(global4.b, func_5(vec4<bool>(var_3.x, false, true, var_3.x), false, vec3<i32>(var_1.b, 1i, global2.b))))).b, ~_wgslsmith_mult_vec3_u32(min(min(vec3<u32>(4241u, 1u, u_input.c.x), vec3<u32>(u_input.c.x, var_0.a.a, 15585u)), var_2 >> (var_0.c % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(var_0.c, var_0.c & vec3<u32>(u_input.c.x, global4.a, 44319u))), Struct_2(var_2.x, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-406f, -510f))))) + vec2<f32>(-653f, -400f)), firstTrailingBit(~(~vec4<u32>(0u, 0u, global4.a, u_input.c.x)) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(41944u, 0u, 28722u, var_1.a), vec4<u32>(var_0.a.a, 4294967295u, 1u, 23498u))), ~vec3<u32>(~var_0.c.x, func_2(u_input.c.x, var_2, Struct_1(var_0.c.x, -41400i)).a, var_5.a) & vec3<u32>(~(global4.a >> (37864u % 32u)), reverseBits(u_input.c.x ^ global4.a), _wgslsmith_sub_u32(~u_input.c.x, var_1.a ^ 0u)));
}

