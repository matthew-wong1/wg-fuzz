struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec4<bool>(true, true, true, false), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false))), Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false))), Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, false))), Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, false))), Struct_2(vec4<bool>(false, true, true, true), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, true))), Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, false))), Struct_2(vec4<bool>(true, true, false, true), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, false))), Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false))), Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, false))), Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, true))), Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false))), Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false))), Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, false))), Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, true))), Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true))), Struct_2(vec4<bool>(true, true, true, false), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, true))), Struct_2(vec4<bool>(false, true, true, false), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true))), Struct_2(vec4<bool>(true, false, true, false), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, true))), Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true))));

var<private> global1: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-639f, -457f, -509f, -1142f), vec4<f32>(601f, 1507f, -1318f, -421f), vec4<f32>(-942f, 733f, -776f, 565f), vec4<f32>(822f, 666f, -317f, 1484f), vec4<f32>(437f, -852f, 678f, 1060f), vec4<f32>(-1083f, -1109f, 1860f, 2599f), vec4<f32>(-151f, -277f, 1136f, 466f), vec4<f32>(-290f, -134f, 880f, 674f), vec4<f32>(627f, 502f, 591f, -789f), vec4<f32>(1455f, -504f, -486f, -1000f), vec4<f32>(1018f, -415f, -674f, -1006f), vec4<f32>(-1000f, 825f, -1048f, -249f), vec4<f32>(-1341f, 293f, 244f, -444f), vec4<f32>(398f, 311f, 711f, -1625f), vec4<f32>(-123f, -2290f, 883f, 510f), vec4<f32>(-190f, 397f, -133f, -1233f), vec4<f32>(-709f, -993f, 1032f, 321f), vec4<f32>(1077f, 2420f, -1480f, 1214f), vec4<f32>(389f, 1671f, -648f, -1000f), vec4<f32>(-1277f, -2763f, 212f, 626f), vec4<f32>(808f, 1372f, -1116f, -238f), vec4<f32>(213f, 345f, -573f, 921f), vec4<f32>(2909f, 1797f, 254f, -1643f), vec4<f32>(-1381f, -502f, -1312f, -191f), vec4<f32>(463f, 2070f, 1037f, -1000f), vec4<f32>(1655f, -1319f, 547f, 1316f), vec4<f32>(-628f, -849f, -463f, -457f));

var<private> global2: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(0i, 22893i, i32(-2147483648)), vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<i32>(2147483647i, -5341i, i32(-2147483648)), vec3<i32>(0i, -1i, 1i), vec3<i32>(-9980i, 25225i, 0i), vec3<i32>(0i, 17913i, -54871i), vec3<i32>(9252i, i32(-2147483648), 0i), vec3<i32>(-87505i, -32999i, 1435i), vec3<i32>(18666i, 16506i, i32(-2147483648)), vec3<i32>(2147483647i, -24809i, 1i), vec3<i32>(66315i, 7831i, 0i), vec3<i32>(30463i, -1i, 0i), vec3<i32>(2147483647i, -1i, 4566i), vec3<i32>(-1i, -628i, -1i), vec3<i32>(71200i, -35146i, -28158i), vec3<i32>(-2188i, -1i, 2170i), vec3<i32>(-20949i, -5901i, -2827i), vec3<i32>(1i, 10767i, 2147483647i), vec3<i32>(2147483647i, 17822i, 2147483647i), vec3<i32>(26972i, -25407i, -1i), vec3<i32>(23577i, -1i, 1i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), 16436i, 1i), vec3<i32>(1i, 13981i, 44451i), vec3<i32>(-22927i, 37440i, 0i), vec3<i32>(-31748i, 0i, -10795i), vec3<i32>(-38913i, 1i, 2147483647i), vec3<i32>(1i, 1i, -71849i), vec3<i32>(-1i, 42216i, 2147483647i));

var<private> global3: vec4<f32>;

var<private> global4: vec2<i32> = vec2<i32>(-53447i, i32(-2147483648));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>) -> vec3<bool> {
    let var_0 = Struct_2(select(vec4<bool>(true || all(vec2<bool>(false, true)), any(vec4<bool>(true, false, false, true)), all(vec4<bool>(true, true, true, true)), !select(true, false, false)), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true)), select(true, true, _wgslsmith_f_op_f32(floor(arg_1.x)) == 1000f)), Struct_1(select(select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), all(vec3<bool>(true, true, false))), vec3<bool>(true, true, true), true)), Struct_1(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), all(vec4<bool>(false, true, true, false))), true)));
    let var_1 = -1i;
    var var_2 = Struct_4(var_0.b, true, vec2<u32>(firstLeadingBit(~u_input.a.x) & 29049u, 0u), arg_0.x, arg_1.x <= -419f);
    var var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(7726u | ~arg_0.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.zwx, u_input.a.zzw), vec3<u32>(var_2.c.x, 4294967295u, 28463u)), abs(~4294967295u), var_2.d) << (min(~firstLeadingBit(u_input.a), vec4<u32>(~var_2.c.x, reverseBits(58897u), var_2.c.x, firstLeadingBit(u_input.b.x))) % vec4<u32>(32u)), u_input.a);
    let var_4 = Struct_4(var_0.c, select(var_2.a.a.x || (~var_2.d == (var_2.c.x >> (17114u % 32u))), all(var_2.a.a.yx), true), vec2<u32>(_wgslsmith_dot_vec4_u32(~select(u_input.a, u_input.a, var_0.a), ~select(u_input.a, u_input.a, false)), _wgslsmith_dot_vec2_u32(~vec2<u32>(7077u, 113903u) >> (abs(u_input.b.zz) % vec2<u32>(32u)), vec2<u32>(arg_0.x, 51009u))), var_2.d, any(var_2.a.a.zy));
    return select(select(var_2.a.a, var_0.b.a, var_2.a.a), var_4.a.a, select(vec3<bool>(select(any(var_2.a.a.xz), true, global4.x == 19316i), all(select(vec3<bool>(var_4.b, var_2.a.a.x, false), var_2.a.a, var_2.a.a.x)), var_2.b), !var_0.b.a, vec3<bool>(true, true, true)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: i32) -> Struct_3 {
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 27u)]), _wgslsmith_div_vec4_f32(vec4<f32>(-628f, -1414f, arg_0, global3.x), global1[_wgslsmith_index_u32(4294967295u, 27u)]))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.a.x), ~4294967295u), 27u)]) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, arg_0, arg_0, 1283f), _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(4294967295u, 27u)] + vec4<f32>(-1414f, 216f, 306f, 118f)), !vec4<bool>(arg_1, false, arg_1, true))), global1[_wgslsmith_index_u32(u_input.a.x, 27u)]))));
    let var_0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(~42813u | abs(~u_input.b.x), u_input.c.x), max(45324u, abs(0u & u_input.b.x) << ((_wgslsmith_dot_vec3_u32(u_input.a.yzx, u_input.a.yxz) | countOneBits(u_input.b.x)) % 32u)));
    let var_1 = global4.x;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, -315f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-445f, global3.x)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-286f, -974f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(arg_0, global3.x)), _wgslsmith_f_op_f32(389f + 674f))));
    return Struct_3(Struct_1(select(func_3(u_input.c >> (vec2<u32>(0u, var_0) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(global3.xyy * vec3<f32>(493f, global3.x, global3.x))), vec3<bool>(false, any(vec4<bool>(false, false, false, false)), !arg_1), !arg_1)), vec4<bool>(func_3(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, var_0)), u_input.a.yx << (u_input.c % vec2<u32>(32u))), vec3<f32>(-1554f, var_2.x, -1788f)).x, any(vec2<bool>(all(vec4<bool>(arg_1, true, arg_1, true)), any(vec2<bool>(arg_1, false)))), !arg_1, arg_1), Struct_1(vec3<bool>(arg_1, arg_1, func_3(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.b.zy), global3.yyz).x)));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: f32) -> Struct_2 {
    global2 = array<vec3<i32>, 29>();
    var var_0 = 1607f;
    var var_1 = arg_1.a.a.x;
    var var_2 = Struct_2(arg_1.b, func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1850f - 1123f)), _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-arg_2))), true, abs(global4.x)).a, arg_1.c);
    let var_3 = true;
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, arg_0, 0u), 19u)];
}

fn func_1(arg_0: bool) -> Struct_1 {
    global4 = vec2<i32>(-2147483647i, -global4.x);
    let var_0 = func_4(~1u >> (u_input.b.x % 32u), func_2(622f, !all(!vec2<bool>(arg_0, arg_0)), abs(countOneBits(~global4.x))), global3.x);
    let var_1 = 1u;
    global0 = array<Struct_2, 19>();
    global1 = array<vec4<f32>, 27>();
    return var_0.c;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>) -> f32 {
    global1 = array<vec4<f32>, 27>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 27u)];
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1225f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(109f)), var_0.x, true))), 1610f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(651f + 308f))));
    let var_2 = _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(global4.x, arg_2.x, 15738i, -2952i), -vec4<i32>(-2147483647i, global4.x, 2147483647i, -7894i)), ~(countOneBits(vec4<i32>(-39486i, global4.x, -28553i, 20106i)) >> (_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.c.x, u_input.a.x, 0u)) % vec4<u32>(32u)))) < (global4.x >> (firstLeadingBit(5927u) % 32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.yyy * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1190f, 440f, var_0.x)))), var_0.yxy))));
    return _wgslsmith_f_op_f32(f32(-1f) * -234f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 29>();
    global1 = array<vec4<f32>, 27>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(any(vec3<bool>(true, false, false))), func_4(_wgslsmith_mult_u32(18527u, 52531u), Struct_3(Struct_1(vec3<bool>(false, true, true)), vec4<bool>(true, false, false, true), Struct_1(vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(-global3.x)), vec3<i32>(_wgslsmith_sub_i32(-2147483647i, 0i), -1i, global4.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(414f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(sign(-1099f))));
    let var_1 = vec4<bool>(select(true, !(!all(vec3<bool>(true, true, true))), false), false, false, func_1(!any(vec2<bool>(true, true))).a.x);
    var var_2 = u_input.c;
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, 2147483647i, -global4.x), vec3<i32>(1i, global4.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(global4.x, global4.x)), min(vec2<i32>(0i, 1i), vec2<i32>(global4.x, global4.x)), ~vec2<i32>(68481i, 2147483647i)), vec2<i32>(abs(-33592i), -33160i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mod_u32(0u, ~select(u_input.c.x, u_input.c.x, false)), ~(14052u >> (~var_2.x % 32u)), var_2.x));
}

