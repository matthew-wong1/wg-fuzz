struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(false, true, false, true, false, true, false, true, false, true, false, true, true, true, true, true, true, false, true, false, true, false, false, true, false, false, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> bool {
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    let var_0 = 0i;
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    return !(all(select(!vec2<bool>(global0[_wgslsmith_index_u32(11671u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(4712u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]), vec2<bool>(false, true), true), vec2<bool>(true, true))) == global0[_wgslsmith_index_u32(1u, 28u)]);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = arg_0.b.b;
    var var_1 = _wgslsmith_f_op_f32(max(1054f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.c)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-135f * 351f) + _wgslsmith_f_op_f32(max(-571f, -790f)))), arg_1.c))));
    let var_2 = arg_1.b.c;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, arg_1.c, arg_1.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(127f, -1171f, arg_0.c)), vec3<f32>(859f, -346f, -661f), true))))));
    var_1 = _wgslsmith_f_op_f32(-var_3.x);
    return Struct_2(arg_0.a, Struct_1(max(~_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(-1i, arg_2.a.x, 38987i, 1i)), max(vec4<i32>(u_input.b.x, 2147483647i, arg_2.a.x, 8702i), ~vec4<i32>(0i, -1i, arg_2.a.x, -20607i))), all(!arg_1.a.xx), var_2, ~(~(~var_2.zy))), _wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1657f)))))), Struct_1(~(-arg_0.d.a), all(vec2<bool>(arg_2.b, arg_0.d.b)) != any(vec2<bool>(arg_1.d.b, arg_0.b.b)), countOneBits(arg_0.d.c), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u ^ arg_0.b.d.x, arg_2.d.x), ~abs(var_2.yy), var_2.zw)), _wgslsmith_mult_vec3_u32(arg_1.e, ~arg_2.c.xwz));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(vec4<i32>(reverseBits(1i), ~arg_3.a.x, 1i, ~(-1i)), _wgslsmith_clamp_i32(-1i, -63627i & (1i ^ arg_3.a.x), 18297i) <= func_3(func_3(arg_1, Struct_2(vec3<bool>(arg_1.b.b, arg_3.b, arg_0.d.b), Struct_1(arg_1.b.a, false, vec4<u32>(41285u, 4294967295u, 8748u, arg_3.c.x), arg_1.e.yz), -291f, arg_0.b, vec3<u32>(arg_3.d.x, arg_0.b.c.x, 0u)), func_3(arg_1, arg_1, arg_3).d), Struct_2(arg_1.a, arg_0.d, arg_0.c, Struct_1(vec4<i32>(58275i, arg_1.b.a.x, arg_1.b.a.x, 1i), true, vec4<u32>(arg_3.d.x, arg_0.e.x, 18367u, arg_1.e.x), vec2<u32>(40044u, arg_1.b.d.x)), _wgslsmith_div_vec3_u32(vec3<u32>(86026u, 4294967295u, 4443u), vec3<u32>(0u, arg_2.x, arg_3.c.x))), Struct_1(arg_1.d.a, arg_1.b.b == false, ~vec4<u32>(arg_0.e.x, 36291u, 1u, arg_3.c.x), func_3(Struct_2(arg_1.a, Struct_1(vec4<i32>(24631i, 10399i, 11253i, 1i), true, arg_0.d.c, arg_0.e.zz), arg_1.c, arg_3, vec3<u32>(arg_3.d.x, arg_3.d.x, 13068u)), Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.e.x, 28u)], arg_0.b.b, true), Struct_1(vec4<i32>(1i, arg_0.d.a.x, u_input.b.x, arg_3.a.x), false, arg_3.c, vec2<u32>(arg_1.b.d.x, arg_0.b.d.x)), arg_0.c, Struct_1(arg_3.a, true, vec4<u32>(1u, arg_2.x, arg_0.b.c.x, arg_3.d.x), vec2<u32>(1u, 6999u)), arg_1.d.c.xwy), Struct_1(arg_3.a, arg_0.a.x, arg_3.c, arg_2.wz)).e.yz)).d.a.x, firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(2551u, arg_1.b.c.x, arg_2.x, 99792u), arg_1.d.c), 29140u), arg_2.x, ~(~arg_2.x), _wgslsmith_mod_u32(~54718u, 49340u))), arg_0.d.d);
    var var_1 = Struct_2(arg_1.a, func_3(arg_0, func_3(arg_0, arg_0, Struct_1(arg_1.d.a, true, max(arg_0.d.c, vec4<u32>(var_0.d.x, 0u, arg_0.d.d.x, arg_2.x)), vec2<u32>(arg_0.d.d.x, arg_2.x))), arg_3).d, -331f, func_3(func_3(arg_0, Struct_2(arg_1.a, Struct_1(arg_0.b.a, true, vec4<u32>(1u, arg_2.x, arg_3.c.x, 35240u), arg_2.yx), _wgslsmith_f_op_f32(-arg_0.c), func_3(arg_1, Struct_2(vec3<bool>(arg_0.a.x, false, arg_1.b.b), arg_3, 357f, Struct_1(arg_1.d.a, arg_1.a.x, arg_0.d.c, vec2<u32>(51546u, 4294967295u)), arg_3.c.wxx), arg_1.d).b, select(vec3<u32>(arg_3.c.x, 4294967295u, 0u), arg_3.c.xxz, global0[_wgslsmith_index_u32(arg_2.x, 28u)])), arg_0.d), arg_0, arg_3).b, arg_3.c.yww);
    let var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-19177i, arg_3.a.x >> (14178u % 32u)), (arg_0.b.a.yz << (arg_2.xz % vec2<u32>(32u))) >> (~arg_3.c.xx % vec2<u32>(32u))) >> (arg_3.d % vec2<u32>(32u)), ~var_0.a.yy, vec2<i32>(func_3(func_3(func_3(Struct_2(arg_0.a, var_1.d, 996f, arg_0.d, arg_0.e), arg_1, arg_3), arg_0, arg_3), Struct_2(vec3<bool>(false, true, true), func_3(Struct_2(arg_0.a, arg_1.b, 845f, Struct_1(vec4<i32>(1i, var_1.d.a.x, -2147483647i, -9878i), false, vec4<u32>(arg_2.x, arg_1.e.x, arg_3.c.x, arg_2.x), vec2<u32>(var_0.d.x, 4294967295u)), vec3<u32>(var_1.b.d.x, arg_2.x, var_0.c.x)), arg_0, Struct_1(vec4<i32>(1i, u_input.d.x, -22117i, arg_3.a.x), arg_3.b, vec4<u32>(arg_2.x, var_0.c.x, 21799u, 41043u), vec2<u32>(var_0.d.x, var_1.d.c.x))).d, 2029f, arg_1.d, var_0.c.ywz), Struct_1(-arg_1.d.a, arg_1.a.x, var_0.c, vec2<u32>(4426u, arg_0.e.x))).d.a.x, 1i));
    var_0 = Struct_1(-(abs(~vec4<i32>(var_2.x, u_input.d.x, var_1.d.a.x, 0i)) & vec4<i32>(1i, firstLeadingBit(var_1.d.a.x), ~arg_3.a.x, select(var_2.x, arg_0.b.a.x, true))), all(select(!vec4<bool>(true, false, false, arg_0.d.b), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 28u)], var_0.b), all(vec4<bool>(arg_0.a.x, arg_3.b, global0[_wgslsmith_index_u32(var_1.d.d.x, 28u)], false)))) | (arg_1.e.x == (abs(arg_1.b.d.x) | abs(35259u))), _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(~arg_1.b.c, var_1.d.c), arg_2), firstTrailingBit(~(~(arg_1.d.d ^ vec2<u32>(4294967295u, 1u)))));
    global0 = array<bool, 28>();
    return arg_1;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<bool>) -> u32 {
    var var_0 = func_4(func_3(arg_1, Struct_2(vec3<bool>(select(false, false, arg_2.x), arg_1.a.x, func_2()), Struct_1(-arg_1.b.a, func_2(), _wgslsmith_sub_vec4_u32(arg_1.b.c, arg_1.b.c), ~arg_1.d.c.zx), arg_1.c, arg_1.d, vec3<u32>(abs(0u), min(arg_1.d.d.x, arg_1.b.c.x), reverseBits(arg_1.b.d.x))), arg_1.d), func_3(arg_1, func_3(func_3(func_3(Struct_2(vec3<bool>(true, false, global0[_wgslsmith_index_u32(arg_1.d.d.x, 28u)]), arg_1.d, arg_0.x, Struct_1(vec4<i32>(1i, -2147483647i, u_input.d.x, arg_1.b.a.x), false, arg_1.b.c, vec2<u32>(22231u, 0u)), arg_1.b.c.ywz), Struct_2(arg_2.www, arg_1.b, arg_0.x, arg_1.b, vec3<u32>(arg_1.e.x, arg_1.b.d.x, arg_1.b.c.x)), Struct_1(vec4<i32>(-24279i, 1i, u_input.c, 0i), true, vec4<u32>(0u, 78632u, 1u, 4294967295u), vec2<u32>(arg_1.d.d.x, arg_1.e.x))), arg_1, arg_1.b), arg_1, func_3(arg_1, Struct_2(arg_2.wzw, Struct_1(u_input.b, global0[_wgslsmith_index_u32(1u, 28u)], vec4<u32>(1u, arg_1.d.c.x, arg_1.d.d.x, arg_1.d.c.x), vec2<u32>(23838u, 27621u)), arg_1.c, arg_1.b, vec3<u32>(44242u, 6713u, 36455u)), arg_1.b).b), arg_1.d), firstLeadingBit(select(_wgslsmith_mod_vec4_u32(arg_1.b.c, arg_1.d.c), vec4<u32>(arg_1.e.x, arg_1.e.x, 0u, arg_1.e.x), arg_2) | (vec4<u32>(30776u, 0u, 0u, 74405u) << (~vec4<u32>(arg_1.d.c.x, arg_1.e.x, 10914u, arg_1.b.d.x) % vec4<u32>(32u)))), Struct_1(~arg_1.b.a, global0[_wgslsmith_index_u32(arg_1.e.x, 28u)], arg_1.d.c, vec2<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(52824u, arg_1.e.x, 57212u)), arg_1.b.c.x)));
    var var_1 = firstTrailingBit(arg_1.d.a.zyy);
    global0 = array<bool, 28>();
    var var_2 = abs(firstTrailingBit(-arg_1.d.a));
    var var_3 = func_3(arg_1, func_4(func_4(Struct_2(vec3<bool>(var_0.b.b, false, true), var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -518f), var_0.b, vec3<u32>(100719u, 4294967295u, arg_1.d.d.x)), Struct_2(vec3<bool>(arg_1.a.x, false, arg_1.d.b), Struct_1(vec4<i32>(27804i, var_0.b.a.x, -19038i, -31944i), true, var_0.d.c, var_0.e.zy), _wgslsmith_f_op_f32(f32(-1f) * -716f), Struct_1(vec4<i32>(-61526i, -17076i, 2147483647i, var_2.x), true, vec4<u32>(4294967295u, 55100u, 4294967295u, 0u), vec2<u32>(var_0.b.c.x, arg_1.b.d.x)), abs(vec3<u32>(arg_1.b.c.x, 24699u, 0u))), select(var_0.d.c, vec4<u32>(123141u, 1u, 0u, var_0.b.d.x), global0[_wgslsmith_index_u32(~0u, 28u)]), func_4(Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.b.d.x, 28u)], false, true), var_0.b, 736f, var_0.d, vec3<u32>(arg_1.e.x, 0u, arg_1.d.c.x)), Struct_2(arg_1.a, arg_1.b, 1000f, Struct_1(vec4<i32>(var_2.x, 36736i, var_2.x, 14498i), false, arg_1.d.c, arg_1.d.d), var_0.b.c.zxw), var_0.b.c, Struct_1(vec4<i32>(-72368i, -1i, 5640i, var_2.x), false, vec4<u32>(arg_1.e.x, 12927u, arg_1.e.x, var_0.b.c.x), arg_1.d.c.yx)).b), arg_1, arg_1.d.c, arg_1.d), var_0.b).c;
    return func_3(arg_1, Struct_2(!vec3<bool>(true, all(vec2<bool>(arg_2.x, arg_2.x)), var_0.b.b), func_4(Struct_2(vec3<bool>(true, false, true), func_3(Struct_2(arg_1.a, var_0.b, 263f, Struct_1(vec4<i32>(u_input.a.x, var_0.b.a.x, var_1.x, -24269i), false, arg_1.d.c, vec2<u32>(arg_1.d.c.x, arg_1.e.x)), var_0.b.c.yxz), arg_1, Struct_1(u_input.a, false, arg_1.b.c, var_0.b.d)).b, -290f, Struct_1(var_0.b.a, var_0.a.x, arg_1.d.c, arg_1.e.zz), vec3<u32>(1u, 6287u, 0u)), Struct_2(select(arg_2.wzx, vec3<bool>(var_0.b.b, false, arg_2.x), false), func_3(arg_1, Struct_2(vec3<bool>(arg_2.x, false, true), arg_1.d, var_0.c, Struct_1(vec4<i32>(-7047i, u_input.a.x, var_1.x, 58473i), true, arg_1.d.c, arg_1.d.d), vec3<u32>(70820u, 4294967295u, 1u)), var_0.d).d, 1000f, func_3(arg_1, arg_1, var_0.d).b, var_0.e), abs(vec4<u32>(15120u, arg_1.b.c.x, var_0.b.d.x, 7814u)) & var_0.b.c, func_3(func_4(Struct_2(vec3<bool>(false, arg_1.a.x, arg_2.x), arg_1.b, var_0.c, var_0.b, vec3<u32>(82182u, arg_1.b.c.x, 0u)), arg_1, vec4<u32>(var_0.e.x, arg_1.d.c.x, 1u, var_0.e.x), Struct_1(vec4<i32>(var_1.x, 2147483647i, 10573i, -1i), true, var_0.d.c, vec2<u32>(arg_1.b.c.x, var_0.b.d.x))), func_4(Struct_2(vec3<bool>(arg_2.x, false, false), var_0.d, 555f, var_0.d, vec3<u32>(1u, arg_1.d.c.x, var_0.d.d.x)), arg_1, var_0.b.c, arg_1.b), Struct_1(vec4<i32>(var_0.d.a.x, var_0.d.a.x, var_0.b.a.x, 2147483647i), global0[_wgslsmith_index_u32(arg_1.e.x, 28u)], vec4<u32>(arg_1.e.x, 4294967295u, arg_1.d.d.x, 0u), vec2<u32>(5883u, 0u))).b).d, -637f, var_0.d, _wgslsmith_div_vec3_u32(var_0.b.c.ywx, ~vec3<u32>(4294967295u, 4294967295u, 0u))), arg_1.d).b.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    let var_0 = ~vec4<u32>(1u, select(func_1(vec2<f32>(-853f, -1479f), Struct_2(vec3<bool>(true, false, global0[_wgslsmith_index_u32(7728u, 28u)]), Struct_1(vec4<i32>(0i, u_input.c, u_input.a.x, 107862i), false, vec4<u32>(4294967295u, 22046u, 0u, 4294967295u), vec2<u32>(1u, 1u)), -284f, Struct_1(u_input.a, global0[_wgslsmith_index_u32(0u, 28u)], vec4<u32>(0u, 85092u, 29237u, 4294967295u), vec2<u32>(69956u, 30278u)), vec3<u32>(59826u, 1u, 21749u)), vec4<bool>(false, true, global0[_wgslsmith_index_u32(14305u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)])), 1u, true), abs(firstLeadingBit(59231u)), ~11273u) >> (~func_3(Struct_2(vec3<bool>(true, true, true), Struct_1(vec4<i32>(u_input.c, 224i, -1963i, u_input.b.x), true, vec4<u32>(4294967295u, 4919u, 4294967295u, 0u), vec2<u32>(71426u, 0u)), _wgslsmith_f_op_f32(525f + 602f), Struct_1(u_input.a, false, vec4<u32>(51899u, 0u, 0u, 4294967295u), vec2<u32>(4294967295u, 0u)), abs(vec3<u32>(24609u, 1u, 51365u))), func_4(Struct_2(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(23949u, 28u)]), Struct_1(vec4<i32>(-2147483647i, -35671i, -18833i, u_input.a.x), false, vec4<u32>(4294967295u, 44471u, 1517u, 4294967295u), vec2<u32>(4238u, 69946u)), -609f, Struct_1(u_input.a, global0[_wgslsmith_index_u32(1u, 28u)], vec4<u32>(7098u, 9670u, 4294967295u, 22616u), vec2<u32>(0u, 4294967295u)), vec3<u32>(94361u, 0u, 4294967295u)), func_4(Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(39696u, 28u)], global0[_wgslsmith_index_u32(52582u, 28u)], global0[_wgslsmith_index_u32(81899u, 28u)]), Struct_1(vec4<i32>(u_input.d.x, u_input.b.x, u_input.a.x, u_input.c), false, vec4<u32>(0u, 19803u, 45657u, 1u), vec2<u32>(4294967295u, 1u)), 1964f, Struct_1(vec4<i32>(u_input.c, -24524i, u_input.b.x, 25717i), global0[_wgslsmith_index_u32(66927u, 28u)], vec4<u32>(1u, 48033u, 32281u, 48316u), vec2<u32>(1293u, 7222u)), vec3<u32>(71779u, 46432u, 0u)), Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(24293u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(68447u, 28u)]), Struct_1(vec4<i32>(u_input.b.x, u_input.a.x, 2147483647i, u_input.b.x), global0[_wgslsmith_index_u32(4294967295u, 28u)], vec4<u32>(4294967295u, 75837u, 48542u, 0u), vec2<u32>(58956u, 4294967295u)), 1000f, Struct_1(vec4<i32>(u_input.c, 5633i, u_input.b.x, -37077i), global0[_wgslsmith_index_u32(28239u, 28u)], vec4<u32>(62782u, 4294967295u, 4294967295u, 18508u), vec2<u32>(11847u, 32222u)), vec3<u32>(1u, 26980u, 0u)), vec4<u32>(70747u, 1u, 1u, 4294967295u), Struct_1(vec4<i32>(1i, 0i, -13157i, -1i), global0[_wgslsmith_index_u32(3393u, 28u)], vec4<u32>(4294967295u, 58871u, 39582u, 0u), vec2<u32>(1u, 10841u))), vec4<u32>(65687u, 18808u, 36416u, 4294967295u), func_3(Struct_2(vec3<bool>(true, true, global0[_wgslsmith_index_u32(72954u, 28u)]), Struct_1(vec4<i32>(0i, 2147483647i, u_input.d.x, u_input.d.x), global0[_wgslsmith_index_u32(67787u, 28u)], vec4<u32>(58442u, 1u, 0u, 4294967295u), vec2<u32>(43686u, 1u)), -1037f, Struct_1(vec4<i32>(2147483647i, u_input.a.x, -1i, u_input.a.x), true, vec4<u32>(1u, 0u, 3850u, 0u), vec2<u32>(4294967295u, 4294967295u)), vec3<u32>(15640u, 5152u, 0u)), Struct_2(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 28u)], false), Struct_1(u_input.a, global0[_wgslsmith_index_u32(12007u, 28u)], vec4<u32>(0u, 60276u, 0u, 9305u), vec2<u32>(0u, 0u)), -937f, Struct_1(u_input.a, global0[_wgslsmith_index_u32(28789u, 28u)], vec4<u32>(17904u, 36713u, 4920u, 0u), vec2<u32>(28164u, 56210u)), vec3<u32>(39824u, 0u, 4294967295u)), Struct_1(vec4<i32>(1i, -42542i, u_input.a.x, 55758i), global0[_wgslsmith_index_u32(1u, 28u)], vec4<u32>(43551u, 0u, 4294967295u, 17900u), vec2<u32>(0u, 0u))).b), func_4(Struct_2(vec3<bool>(false, global0[_wgslsmith_index_u32(25624u, 28u)], false), Struct_1(vec4<i32>(u_input.d.x, u_input.c, -1i, u_input.a.x), global0[_wgslsmith_index_u32(4294967295u, 28u)], vec4<u32>(1u, 1u, 32698u, 9876u), vec2<u32>(3909u, 73133u)), 865f, Struct_1(vec4<i32>(-9395i, u_input.d.x, -2147483647i, u_input.a.x), true, vec4<u32>(25533u, 0u, 23613u, 4294967295u), vec2<u32>(43671u, 35630u)), vec3<u32>(4294967295u, 24812u, 79143u)), Struct_2(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(39456u, 28u)]), Struct_1(vec4<i32>(u_input.d.x, u_input.a.x, 2147483647i, 23574i), false, vec4<u32>(0u, 0u, 4294967295u, 1u), vec2<u32>(22486u, 42351u)), 743f, Struct_1(u_input.a, false, vec4<u32>(1u, 1u, 4294967295u, 3925u), vec2<u32>(1u, 33998u)), vec3<u32>(72440u, 58963u, 0u)), ~vec4<u32>(17516u, 48219u, 4294967295u, 0u), func_3(Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(14257u, 28u)], global0[_wgslsmith_index_u32(7527u, 28u)], global0[_wgslsmith_index_u32(67675u, 28u)]), Struct_1(u_input.a, global0[_wgslsmith_index_u32(21348u, 28u)], vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec2<u32>(450u, 526u)), 1064f, Struct_1(u_input.a, false, vec4<u32>(44280u, 4294967295u, 47271u, 85760u), vec2<u32>(28421u, 0u)), vec3<u32>(1u, 47193u, 4294967295u)), Struct_2(vec3<bool>(true, global0[_wgslsmith_index_u32(39988u, 28u)], global0[_wgslsmith_index_u32(30656u, 28u)]), Struct_1(vec4<i32>(u_input.b.x, u_input.c, u_input.c, u_input.b.x), global0[_wgslsmith_index_u32(0u, 28u)], vec4<u32>(0u, 31424u, 36483u, 0u), vec2<u32>(4294967295u, 48686u)), 1133f, Struct_1(u_input.b, true, vec4<u32>(110095u, 0u, 24679u, 1u), vec2<u32>(1u, 0u)), vec3<u32>(4294967295u, 1u, 0u)), Struct_1(u_input.a, false, vec4<u32>(1u, 108832u, 0u, 1u), vec2<u32>(5272u, 1u))).b).d).b.c % vec4<u32>(32u));
    let var_1 = max(countOneBits(u_input.b.x), u_input.b.x);
    global0 = array<bool, 28>();
    let var_2 = -_wgslsmith_add_i32(i32(-1i) * -countOneBits(var_1), -(i32(-1i) * -var_1));
    global0 = array<bool, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(~select(~(~8302u), ~(~var_0.x), !global0[_wgslsmith_index_u32(abs(0u), 28u)]), -1794f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(select(-1902f, -802f, false)), _wgslsmith_f_op_f32(-376f + -908f), 1335f, _wgslsmith_f_op_f32(f32(-1f) * -766f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-276f, -1000f, 1421f, -228f))))))), vec2<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 25887u, 0u), var_0.zww)), 47937u));
}

