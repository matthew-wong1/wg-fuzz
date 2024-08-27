struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5>;

var<private> global1: bool;

var<private> global2: vec2<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<f32> {
    global1 = true;
    var var_0 = 8854u;
    global1 = true;
    var var_1 = arg_0 < firstLeadingBit(~arg_2.a.x);
    global2 = select(arg_2.e.zy, select(arg_2.e.yz, select(vec2<bool>(all(vec4<bool>(false, arg_2.d, global2.x, true)), !arg_2.e.x), !(!arg_2.e.yy), !vec2<bool>(arg_2.e.x, global2.x)), arg_2.e.xz), global2.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_2.b * vec2<f32>(arg_2.b.x, arg_2.b.x)))))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(firstTrailingBit(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(u_input.b.x, 23523i, -1i, arg_0.a.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-10918i, arg_1.a.x, u_input.b.x, u_input.b.x), arg_2.a, arg_0.a) >> (vec4<u32>(arg_2.c, 47330u, arg_2.c, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(2147483647i, arg_0.a.x, arg_2.a.x, arg_1.a.x)), firstTrailingBit(arg_2.a)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-482f - -682f) * -2563f), 555f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, 766f)), arg_1.b)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1908f, arg_2.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, arg_1.b.x)), true))))), 0u, !global2.x, arg_1.e);
    var var_1 = arg_0.d;
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    var var_2 = Struct_1(~vec4<i32>(-28130i & (u_input.b.x ^ u_input.b.x), max(-var_0.a.x, -1i), -(~(-2147483647i)), arg_0.a.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), -215f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 1289f))))), ~arg_1.c, all(!vec4<bool>(global2.x, 1i > var_0.a.x, var_0.d, arg_0.b.x <= -418f)), !select(select(!vec3<bool>(arg_1.d, var_0.e.x, arg_0.e.x), select(vec3<bool>(false, false, global2.x), vec3<bool>(true, arg_0.d, true), arg_0.d), !arg_0.e.x), var_0.e, all(select(arg_1.e, arg_0.e, false))));
    return var_0;
}

fn func_1() -> Struct_1 {
    var var_0 = func_3(Struct_1(firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(-13800i, u_input.b.x), select(-30629i, u_input.b.x, false), _wgslsmith_add_i32(u_input.b.x, -3525i), abs(u_input.b.x))), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -1i), vec2<i32>(22989i, u_input.b.x)), abs(vec3<i32>(u_input.b.x, u_input.b.x, 27593i)) >> (vec3<u32>(u_input.a.x, 4294967295u, 1u) % vec3<u32>(32u)), Struct_1(vec4<i32>(u_input.b.x, 2147483647i, 65748i, 1i) | vec4<i32>(-3465i, u_input.b.x, 1i, u_input.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-110f, 272f)), u_input.a.x >> (0u % 32u), true, select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(false, global2.x, global2.x), false)))), 4294967295u, false, vec3<bool>(true, !global2.x, false)), Struct_1(-vec4<i32>(firstLeadingBit(u_input.b.x), u_input.b.x, ~2147483647i, ~(-52234i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(586f, -1000f)), ~u_input.a.x, true, vec3<bool>(false, true, global2.x)), Struct_1(-(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 0i, -14071i, 243i), vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x)) >> (countOneBits(vec4<u32>(4294967295u, 4294967295u, 0u, 0u)) % vec4<u32>(32u))), vec2<f32>(-393f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1532f, 336f)) - -620f)), 1u, global2.x, select(select(vec3<bool>(false, true, true), vec3<bool>(true, global2.x, true), false), !vec3<bool>(global2.x, global2.x, global2.x), true)));
    let var_1 = var_0.a.x;
    var var_2 = Struct_1(_wgslsmith_div_vec4_i32(-_wgslsmith_clamp_vec4_i32(var_0.a, vec4<i32>(0i, -12147i, -7343i, u_input.b.x), vec4<i32>(var_0.a.x, var_0.a.x, u_input.b.x, 2147483647i)) & _wgslsmith_mod_vec4_i32(min(var_0.a, vec4<i32>(var_0.a.x, 1i, -2147483647i, var_0.a.x)), select(var_0.a, var_0.a, vec4<bool>(var_0.d, true, global2.x, true))), firstLeadingBit(-min(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x), vec4<i32>(-45505i, var_0.a.x, -44511i, u_input.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -337f)), var_0.b.x), ~firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -582f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - 858f) * _wgslsmith_div_f32(-1740f, -700f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1472f + 1000f)))), var_0.e);
    global1 = true;
    let var_3 = ~vec2<i32>(-u_input.b.x | -28536i, -2147483647i) ^ vec2<i32>(max(reverseBits(_wgslsmith_add_i32(-2147483647i, var_2.a.x)), 2147483647i), u_input.b.x);
    return func_3(func_3(Struct_1(var_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2337f, 1000f), var_0.b)), var_2.c, false, vec3<bool>(true, true, true)), func_3(Struct_1(vec4<i32>(var_0.a.x, var_2.a.x, -2147483647i, 1413i), vec2<f32>(1000f, 1206f), ~var_0.c, false, func_3(Struct_1(vec4<i32>(var_3.x, -1i, 7102i, var_0.a.x), var_0.b, 31849u, true, vec3<bool>(false, true, global2.x)), Struct_1(vec4<i32>(var_2.a.x, 0i, u_input.b.x, u_input.b.x), vec2<f32>(var_0.b.x, var_2.b.x), 3093u, var_0.e.x, var_2.e), Struct_1(vec4<i32>(var_3.x, -12014i, var_2.a.x, var_0.a.x), var_2.b, u_input.a.x, true, var_2.e)).e), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_0.a.x, -30349i, var_3.x), vec4<i32>(var_2.a.x, u_input.b.x, 24514i, 21993i)), vec2<f32>(var_0.b.x, -2066f), 15175u, true, func_3(Struct_1(vec4<i32>(var_2.a.x, var_3.x, u_input.b.x, 2147483647i), vec2<f32>(-272f, 936f), u_input.a.x, true, var_2.e), Struct_1(var_2.a, vec2<f32>(601f, -627f), 0u, var_2.e.x, var_0.e), Struct_1(var_0.a, var_2.b, u_input.a.x, false, vec3<bool>(false, false, var_2.e.x))).e), func_3(func_3(Struct_1(var_0.a, vec2<f32>(192f, 976f), 1u, global2.x, var_2.e), Struct_1(var_2.a, vec2<f32>(2179f, 843f), 4294967295u, var_2.e.x, vec3<bool>(var_2.e.x, var_0.d, true)), Struct_1(vec4<i32>(var_2.a.x, 2147483647i, var_3.x, 30727i), vec2<f32>(1867f, var_0.b.x), var_2.c, var_2.e.x, var_0.e)), func_3(Struct_1(var_0.a, vec2<f32>(-1345f, var_2.b.x), var_0.c, false, var_2.e), Struct_1(vec4<i32>(26115i, var_0.a.x, var_0.a.x, -33125i), vec2<f32>(-426f, -2264f), u_input.a.x, true, vec3<bool>(true, true, false)), Struct_1(var_0.a, vec2<f32>(1000f, var_2.b.x), 60920u, var_0.e.x, var_0.e)), func_3(Struct_1(var_0.a, var_2.b, 1u, true, var_0.e), Struct_1(vec4<i32>(14767i, 34959i, -33115i, var_3.x), var_0.b, 1u, var_2.e.x, vec3<bool>(true, global2.x, false)), Struct_1(var_0.a, var_2.b, 32478u, var_0.e.x, var_0.e)))), Struct_1(min(var_2.a, vec4<i32>(u_input.b.x, var_2.a.x, 2228i, -13257i) >> (vec4<u32>(43218u, var_0.c, var_0.c, var_0.c) % vec4<u32>(32u))), var_0.b, 1u, true, func_3(func_3(Struct_1(var_2.a, vec2<f32>(var_0.b.x, var_2.b.x), var_2.c, true, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(u_input.b.x, var_3.x, var_2.a.x, 4751i), var_2.b, 56850u, false, vec3<bool>(true, var_2.d, global2.x)), Struct_1(var_0.a, var_0.b, 66474u, global2.x, var_2.e)), Struct_1(var_0.a, var_0.b, 40365u, false, vec3<bool>(global2.x, var_0.e.x, true)), func_3(Struct_1(var_0.a, var_2.b, var_0.c, true, var_2.e), Struct_1(vec4<i32>(var_3.x, var_3.x, var_0.a.x, 0i), var_2.b, var_2.c, var_0.e.x, var_0.e), Struct_1(vec4<i32>(u_input.b.x, var_2.a.x, u_input.b.x, var_3.x), var_2.b, 1u, true, var_2.e))).e)), func_3(func_3(func_3(func_3(Struct_1(var_0.a, var_2.b, var_0.c, var_0.e.x, vec3<bool>(false, var_0.d, global2.x)), Struct_1(vec4<i32>(0i, -2244i, 14833i, var_3.x), var_2.b, 190u, true, var_2.e), Struct_1(var_0.a, vec2<f32>(-1000f, 285f), var_2.c, global2.x, vec3<bool>(var_2.d, var_2.e.x, var_0.e.x))), func_3(Struct_1(vec4<i32>(2147483647i, var_0.a.x, -40551i, var_2.a.x), vec2<f32>(var_0.b.x, -1000f), var_0.c, false, vec3<bool>(true, false, global2.x)), Struct_1(var_2.a, var_0.b, var_0.c, false, var_2.e), Struct_1(var_2.a, vec2<f32>(476f, var_0.b.x), 1u, var_2.e.x, var_0.e)), Struct_1(vec4<i32>(var_0.a.x, -6965i, var_3.x, var_3.x), vec2<f32>(-338f, -1540f), 5152u, var_2.e.x, var_2.e)), func_3(func_3(Struct_1(vec4<i32>(58262i, var_0.a.x, u_input.b.x, var_0.a.x), var_2.b, 89645u, false, var_2.e), Struct_1(var_0.a, vec2<f32>(var_0.b.x, var_0.b.x), var_2.c, false, var_0.e), Struct_1(vec4<i32>(-35688i, var_0.a.x, -1i, var_2.a.x), var_2.b, 0u, false, var_0.e)), Struct_1(var_0.a, var_0.b, 15035u, var_0.e.x, var_2.e), Struct_1(vec4<i32>(-2147483647i, -1i, var_2.a.x, -2147483647i), vec2<f32>(941f, -411f), 0u, false, var_0.e)), func_3(Struct_1(vec4<i32>(var_2.a.x, -2147483647i, 1185i, 0i), vec2<f32>(-1000f, 1176f), var_2.c, false, vec3<bool>(global2.x, var_2.e.x, true)), Struct_1(vec4<i32>(0i, var_2.a.x, -1i, var_3.x), vec2<f32>(var_2.b.x, 292f), var_0.c, global2.x, var_2.e), Struct_1(vec4<i32>(u_input.b.x, 2147483647i, var_2.a.x, var_0.a.x), vec2<f32>(2302f, var_2.b.x), 4294967295u, var_2.d, var_0.e))), func_3(Struct_1(vec4<i32>(var_2.a.x, var_3.x, -60036i, u_input.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, 451f)), 4294967295u, var_2.c > u_input.a.x, !var_2.e), func_3(func_3(Struct_1(vec4<i32>(-1337i, var_3.x, u_input.b.x, var_0.a.x), vec2<f32>(736f, var_0.b.x), u_input.a.x, var_0.e.x, var_2.e), Struct_1(var_0.a, var_0.b, 4294967295u, true, var_2.e), Struct_1(var_2.a, var_2.b, var_0.c, var_2.e.x, vec3<bool>(global2.x, global2.x, var_0.d))), func_3(Struct_1(var_2.a, vec2<f32>(-493f, -1000f), 37943u, var_2.d, var_0.e), Struct_1(var_2.a, var_0.b, var_2.c, false, vec3<bool>(var_2.e.x, true, true)), Struct_1(vec4<i32>(0i, 50248i, var_0.a.x, var_0.a.x), vec2<f32>(var_2.b.x, -1079f), u_input.a.x, var_0.d, var_0.e)), func_3(Struct_1(vec4<i32>(2147483647i, 7729i, var_0.a.x, var_2.a.x), vec2<f32>(var_0.b.x, 1005f), var_0.c, true, vec3<bool>(true, true, var_2.d)), Struct_1(vec4<i32>(-31471i, 2147483647i, 0i, var_2.a.x), vec2<f32>(var_0.b.x, 552f), u_input.a.x, true, vec3<bool>(var_0.e.x, global2.x, var_0.d)), Struct_1(var_0.a, vec2<f32>(var_0.b.x, -573f), 26922u, false, var_2.e))), func_3(Struct_1(var_0.a, var_2.b, 14191u, var_0.e.x, var_0.e), Struct_1(var_2.a, var_2.b, 34489u, global2.x, vec3<bool>(var_0.d, false, global2.x)), Struct_1(vec4<i32>(var_2.a.x, var_3.x, var_2.a.x, u_input.b.x), var_2.b, 54772u, true, vec3<bool>(var_0.d, var_0.e.x, true)))), func_3(func_3(func_3(Struct_1(var_0.a, vec2<f32>(185f, var_2.b.x), 2606u, var_2.d, var_2.e), Struct_1(var_0.a, var_2.b, 42891u, global2.x, var_0.e), Struct_1(vec4<i32>(var_0.a.x, 12193i, var_3.x, 2147483647i), var_2.b, 4294967295u, global2.x, var_2.e)), Struct_1(vec4<i32>(var_3.x, 21824i, var_3.x, 27523i), vec2<f32>(var_2.b.x, 823f), var_0.c, true, vec3<bool>(var_0.e.x, false, true)), Struct_1(vec4<i32>(2147483647i, var_3.x, var_2.a.x, var_2.a.x), var_2.b, 37659u, false, var_2.e)), Struct_1(vec4<i32>(u_input.b.x, 41035i, 1i, 2147483647i), _wgslsmith_div_vec2_f32(vec2<f32>(var_2.b.x, 1000f), var_2.b), 51297u << (0u % 32u), global2.x, !var_0.e), Struct_1(var_0.a << (vec4<u32>(u_input.a.x, var_2.c, 8281u, var_2.c) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.b.x, var_0.b.x))), 84332u, select(global2.x, var_2.d, true), var_2.e))), Struct_1(_wgslsmith_div_vec4_i32(var_2.a, select(var_2.a, ~var_0.a, vec4<bool>(global2.x, true, global2.x, var_2.e.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_2.b, _wgslsmith_f_op_vec2_f32(var_0.b * var_0.b))) + var_0.b), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x) * 620f) <= -566f, func_3(Struct_1(~var_0.a, vec2<f32>(-687f, var_0.b.x), 14966u, var_2.e.x & false, var_0.e), Struct_1(_wgslsmith_add_vec4_i32(var_0.a, vec4<i32>(2147483647i, -1i, 42796i, u_input.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-570f, 1271f)), 1u, var_2.e.x, var_2.e), func_3(func_3(Struct_1(vec4<i32>(-4309i, var_2.a.x, -40938i, 50497i), var_2.b, 37074u, global2.x, var_2.e), Struct_1(var_2.a, vec2<f32>(397f, var_2.b.x), 12500u, var_0.d, vec3<bool>(var_0.d, var_2.d, true)), Struct_1(var_0.a, var_0.b, var_0.c, var_0.e.x, vec3<bool>(false, global2.x, false))), Struct_1(var_2.a, var_2.b, var_0.c, false, vec3<bool>(global2.x, var_2.d, var_0.e.x)), func_3(Struct_1(vec4<i32>(0i, var_3.x, -1i, var_0.a.x), vec2<f32>(1793f, 566f), 1u, var_0.d, vec3<bool>(var_2.e.x, var_2.e.x, true)), Struct_1(var_2.a, vec2<f32>(-1000f, -309f), 38258u, var_2.d, vec3<bool>(true, var_2.d, false)), Struct_1(vec4<i32>(0i, var_2.a.x, 8124i, var_2.a.x), vec2<f32>(var_0.b.x, var_2.b.x), var_2.c, global2.x, vec3<bool>(global2.x, var_0.d, false))))).e));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = arg_2;
    var_0 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 65913i, u_input.b.x, func_1().a.x), arg_2.a), vec2<f32>(func_1().b.x, var_0.b.x), var_0.c, !arg_0.d, func_1().e);
    var var_1 = arg_2;
    var var_2 = func_3(arg_0, arg_2, arg_0);
    var var_3 = arg_0;
    return StorageBuffer(~(vec4<i32>(-1i) * -(~arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(), select(select(vec4<bool>(all(vec2<bool>(false, false)), global2.x, all(vec4<bool>(false, global2.x, true, global2.x)), false), !(!vec4<bool>(false, true, false, global2.x)), vec4<bool>(any(vec3<bool>(global2.x, true, false)), global2.x, true, true)), vec4<bool>(true, true, any(select(vec4<bool>(false, false, global2.x, true), vec4<bool>(global2.x, false, global2.x, true), vec4<bool>(false, global2.x, true, global2.x))), !global2.x), vec4<bool>(~u_input.b.x > 1i, any(vec3<bool>(global2.x, true, false)), true || !global2.x, !(!global2.x))), func_1());
}

