struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
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

var<private> global0: array<vec2<i32>, 14>;

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(vec4<i32>(0i, 33148i, 0i, -37327i), vec4<bool>(false, true, false, false), 69913u), Struct_1(vec4<i32>(1i, -35496i, 1i, 0i), vec4<bool>(true, false, false, false), 4294967295u), Struct_1(vec4<i32>(2147483647i, 0i, 44545i, -10443i), vec4<bool>(true, false, false, false), 50533u)), Struct_2(Struct_1(vec4<i32>(16232i, i32(-2147483648), 21296i, 2147483647i), vec4<bool>(true, true, false, false), 16179u), Struct_1(vec4<i32>(1i, -6829i, 27922i, -27825i), vec4<bool>(false, true, true, false), 1u), Struct_1(vec4<i32>(2147483647i, -20233i, -10379i, -25482i), vec4<bool>(false, false, true, false), 19248u)), Struct_2(Struct_1(vec4<i32>(-35721i, i32(-2147483648), -17327i, -50294i), vec4<bool>(false, true, true, false), 44884u), Struct_1(vec4<i32>(86483i, -29963i, -1i, 30529i), vec4<bool>(false, true, false, true), 0u), Struct_1(vec4<i32>(i32(-2147483648), 4300i, 63514i, -1640i), vec4<bool>(false, false, true, true), 1u)), Struct_2(Struct_1(vec4<i32>(-1i, 1i, 18137i, -52056i), vec4<bool>(true, false, true, false), 72506u), Struct_1(vec4<i32>(i32(-2147483648), -11171i, 17662i, 2147483647i), vec4<bool>(true, true, true, true), 1u), Struct_1(vec4<i32>(20524i, i32(-2147483648), 46931i, 1i), vec4<bool>(true, true, false, false), 83498u)), Struct_2(Struct_1(vec4<i32>(2147483647i, 22863i, 1808i, -1i), vec4<bool>(true, false, true, true), 0u), Struct_1(vec4<i32>(-13740i, -26540i, 27992i, 24684i), vec4<bool>(false, false, false, false), 58422u), Struct_1(vec4<i32>(0i, -7051i, 2147483647i, 10402i), vec4<bool>(false, false, true, true), 0u)), Struct_2(Struct_1(vec4<i32>(-1i, i32(-2147483648), 1154i, i32(-2147483648)), vec4<bool>(true, true, false, true), 4294967295u), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -10959i, -1i), vec4<bool>(true, false, false, true), 0u), Struct_1(vec4<i32>(-1i, 0i, 2147483647i, 2147483647i), vec4<bool>(true, false, true, false), 4294967295u)), Struct_2(Struct_1(vec4<i32>(-28283i, 1i, -30277i, 24427i), vec4<bool>(false, true, false, false), 0u), Struct_1(vec4<i32>(0i, 13583i, -1389i, 0i), vec4<bool>(false, true, false, false), 55936u), Struct_1(vec4<i32>(0i, -1i, 2147483647i, i32(-2147483648)), vec4<bool>(false, true, false, false), 4294967295u)), Struct_2(Struct_1(vec4<i32>(26846i, -1195i, 1i, 55792i), vec4<bool>(true, false, false, false), 0u), Struct_1(vec4<i32>(-12974i, i32(-2147483648), -10043i, -71174i), vec4<bool>(true, true, true, true), 1u), Struct_1(vec4<i32>(i32(-2147483648), 8478i, i32(-2147483648), i32(-2147483648)), vec4<bool>(true, true, true, true), 64364u)), Struct_2(Struct_1(vec4<i32>(-37647i, 0i, 2147483647i, 0i), vec4<bool>(false, true, true, false), 4294967295u), Struct_1(vec4<i32>(-43509i, -1i, 1i, 42728i), vec4<bool>(false, false, false, false), 1u), Struct_1(vec4<i32>(i32(-2147483648), 0i, -20851i, 1i), vec4<bool>(false, false, true, true), 45286u)), Struct_2(Struct_1(vec4<i32>(2147483647i, 1i, -17082i, 2147483647i), vec4<bool>(false, false, true, true), 0u), Struct_1(vec4<i32>(35659i, 27320i, -13607i, i32(-2147483648)), vec4<bool>(false, false, false, false), 1u), Struct_1(vec4<i32>(29354i, -515i, 34991i, -1i), vec4<bool>(false, true, true, true), 0u)), Struct_2(Struct_1(vec4<i32>(-9201i, -1i, 0i, -18127i), vec4<bool>(false, false, true, false), 8630u), Struct_1(vec4<i32>(-50593i, 5693i, -43538i, -15144i), vec4<bool>(false, true, true, false), 4294967295u), Struct_1(vec4<i32>(-1i, 1i, 7234i, 2147483647i), vec4<bool>(false, false, true, true), 2617u)), Struct_2(Struct_1(vec4<i32>(-4975i, 53042i, -38131i, 1i), vec4<bool>(true, false, true, true), 34706u), Struct_1(vec4<i32>(i32(-2147483648), 50944i, 1i, 2147483647i), vec4<bool>(false, false, true, true), 60407u), Struct_1(vec4<i32>(1i, 28403i, -1i, -1i), vec4<bool>(false, true, true, true), 4294967295u)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 24489i, -12195i, 1i), vec4<bool>(false, true, false, false), 66117u), Struct_1(vec4<i32>(-18621i, i32(-2147483648), 0i, 2147483647i), vec4<bool>(true, false, true, true), 1u), Struct_1(vec4<i32>(2147483647i, 34525i, 1i, -1i), vec4<bool>(true, true, false, false), 0u)), Struct_2(Struct_1(vec4<i32>(2147483647i, 1i, -24207i, 31773i), vec4<bool>(true, true, false, true), 45537u), Struct_1(vec4<i32>(-1i, 23368i, -8035i, i32(-2147483648)), vec4<bool>(false, false, true, true), 4294967295u), Struct_1(vec4<i32>(59497i, -13173i, 2885i, -29699i), vec4<bool>(false, true, false, true), 5386u)), Struct_2(Struct_1(vec4<i32>(4866i, i32(-2147483648), -284i, -292i), vec4<bool>(true, true, true, true), 3454u), Struct_1(vec4<i32>(-35902i, -10141i, 5725i, 8735i), vec4<bool>(true, false, false, true), 0u), Struct_1(vec4<i32>(2147483647i, 8199i, -1i, -22897i), vec4<bool>(true, true, true, true), 62204u)), Struct_2(Struct_1(vec4<i32>(7090i, 7857i, -21330i, 1i), vec4<bool>(false, false, false, false), 92062u), Struct_1(vec4<i32>(i32(-2147483648), -1i, 89028i, -62071i), vec4<bool>(true, true, false, false), 1u), Struct_1(vec4<i32>(-26486i, 20600i, i32(-2147483648), 1i), vec4<bool>(false, true, true, true), 4294967295u)), Struct_2(Struct_1(vec4<i32>(11500i, 8577i, 1i, -11245i), vec4<bool>(false, true, true, false), 19378u), Struct_1(vec4<i32>(55160i, -33790i, -37248i, 29470i), vec4<bool>(true, true, false, true), 1u), Struct_1(vec4<i32>(11921i, -40403i, -19130i, 19570i), vec4<bool>(false, true, false, false), 1u)), Struct_2(Struct_1(vec4<i32>(43985i, 0i, -12079i, 2147483647i), vec4<bool>(false, false, false, true), 50810u), Struct_1(vec4<i32>(-1i, 1i, 1i, -63429i), vec4<bool>(false, true, false, false), 44086u), Struct_1(vec4<i32>(-28858i, 1i, 0i, 21954i), vec4<bool>(false, false, false, false), 4294967295u)), Struct_2(Struct_1(vec4<i32>(-27014i, i32(-2147483648), -67785i, -31734i), vec4<bool>(false, false, false, true), 1442u), Struct_1(vec4<i32>(-1i, 17230i, i32(-2147483648), 15295i), vec4<bool>(true, false, false, false), 28456u), Struct_1(vec4<i32>(-5552i, -1i, 0i, -1i), vec4<bool>(true, true, false, false), 0u)), Struct_2(Struct_1(vec4<i32>(-36791i, i32(-2147483648), -32157i, 28257i), vec4<bool>(true, false, true, false), 4294967295u), Struct_1(vec4<i32>(-6514i, -43178i, 0i, 1i), vec4<bool>(false, true, false, true), 4294967295u), Struct_1(vec4<i32>(-1i, -18011i, -23791i, 1359i), vec4<bool>(false, false, true, false), 0u)), Struct_2(Struct_1(vec4<i32>(-1i, 1i, 22675i, -42383i), vec4<bool>(false, true, false, true), 38884u), Struct_1(vec4<i32>(-20808i, 0i, 7381i, 46027i), vec4<bool>(false, true, true, false), 95761u), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 1i, 0i), vec4<bool>(true, false, true, false), 4294967295u)));

var<private> global3: bool;

var<private> global4: array<bool, 2> = array<bool, 2>(true, false);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: i32) -> vec4<f32> {
    global1 = array<Struct_1, 4>();
    var var_0 = select(!arg_2.b.xw, select(arg_2.b.wz, select(vec2<bool>(global4[_wgslsmith_index_u32(~arg_1.x, 2u)], arg_1.x != arg_1.x), select(select(vec2<bool>(true, global4[_wgslsmith_index_u32(arg_1.x, 2u)]), arg_2.b.wz, vec2<bool>(true, true)), select(arg_2.b.yx, arg_2.b.zx, vec2<bool>(arg_2.b.x, arg_2.b.x)), any(vec4<bool>(false, true, arg_2.b.x, false))), true), select(false, true, (arg_2.a.x & arg_2.a.x) != max(-34818i, -41858i))), arg_2.b.yx);
    var var_1 = !(!(!arg_2.b.zzy));
    var var_2 = arg_0;
    var var_3 = ~_wgslsmith_div_vec4_i32(-arg_2.a, countOneBits(arg_2.a));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1054f, arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -1368f, 234f))))))));
}

fn func_3(arg_0: vec3<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -539f);
    global2 = array<Struct_2, 21>();
    var var_1 = vec2<i32>(~(i32(-1i) * -65814i), -u_input.a << (_wgslsmith_add_u32(1u, 28267u) % 32u));
    var var_2 = select(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], firstTrailingBit(vec2<i32>(select(25500i, ~u_input.a, global4[_wgslsmith_index_u32(u_input.b.x, 2u)] == true), abs(~(-69455i)))), vec2<bool>(arg_0.x, !select(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 2u)], select(arg_0.x, arg_0.x, false), 930f == var_0)));
    var_1 = _wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(~4294967295u, 14u)] & (min(-vec2<i32>(1i, u_input.a), min(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], vec2<i32>(var_2.x, var_1.x))) | ~(vec2<i32>(28195i, u_input.a) & vec2<i32>(2147483647i, 0i))), ~global0[_wgslsmith_index_u32(u_input.b.x, 14u)]);
    return _wgslsmith_add_vec4_i32(-vec4<i32>(~firstLeadingBit(var_2.x), var_1.x, -1i, u_input.a), vec4<i32>(countOneBits(var_1.x), i32(-1i) * -863i, -var_2.x, _wgslsmith_mult_i32(-2147483647i, _wgslsmith_mult_i32(0i, -24471i))));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = ~_wgslsmith_mult_i32(15770i, arg_3.a.b.a.x);
    global2 = array<Struct_2, 21>();
    global2 = array<Struct_2, 21>();
    let var_1 = _wgslsmith_f_op_f32(-arg_0);
    global1 = array<Struct_1, 4>();
    return vec4<bool>(true || (arg_2.a.x >= _wgslsmith_add_i32(16078i, -16580i)), true, global4[_wgslsmith_index_u32(u_input.b.x, 2u)], arg_2.b.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = abs(0u);
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), ~min(vec3<u32>(u_input.b.x, 1u, 88017u), vec3<u32>(u_input.b.x, 1u, 1u)), global1[_wgslsmith_index_u32(u_input.b.x, 4u)], u_input.a))))));
    let var_2 = var_1.wyw;
    var var_3 = func_4(-969f, !vec4<bool>(any(!vec2<bool>(true, arg_2.x)), any(vec4<bool>(false, arg_2.x, global4[_wgslsmith_index_u32(34333u, 2u)], false)), arg_2.x, global4[_wgslsmith_index_u32(u_input.b.x, 2u)]), global1[_wgslsmith_index_u32(~(~reverseBits(56162u)), 4u)], Struct_3(Struct_2(global1[_wgslsmith_index_u32(46385u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], Struct_1(~vec4<i32>(arg_1.x, u_input.a, arg_1.x, 16037i), !vec4<bool>(false, arg_2.x, true, arg_2.x), reverseBits(4294967295u))), -(~vec3<i32>(-8077i, 0i, u_input.a) >> (~vec3<u32>(u_input.b.x, u_input.b.x, 50978u) % vec3<u32>(32u))), Struct_1(func_3(select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 2u)], true, arg_2.x), arg_2, false)), vec4<bool>(true, true, true, all(arg_2.xz)), 1u), select(!select(vec2<bool>(true, false), arg_2.xy, arg_2.zy), vec2<bool>(35212u >= u_input.b.x, true), arg_2.zz), global1[_wgslsmith_index_u32(~62658u, 4u)]));
    let var_4 = _wgslsmith_f_op_vec3_f32(-var_1.xww);
    return Struct_3(global2[_wgslsmith_index_u32(~60760u >> (u_input.b.x % 32u), 21u)], (_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(-28359i, -1i, 1i), vec3<i32>(1i, -2147483647i, u_input.a))) >> (~min(vec3<u32>(1u, u_input.b.x, u_input.b.x), vec3<u32>(10534u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))) ^ ~vec3<i32>(_wgslsmith_mod_i32(u_input.a, -1i), u_input.a, 1i), Struct_1(-vec4<i32>(0i, u_input.a, firstLeadingBit(-2147483647i), u_input.a), vec4<bool>(true, 0i <= u_input.a, all(select(vec4<bool>(global4[_wgslsmith_index_u32(14661u, 2u)], var_3.x, true, true), vec4<bool>(var_3.x, var_3.x, var_3.x, arg_2.x), vec4<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 2u)], arg_2.x, arg_2.x, false))), true), 0u), vec2<bool>(~u_input.b.x >= 13587u, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 0u), vec2<u32>(u_input.b.x, u_input.b.x) >> (u_input.b % vec2<u32>(32u))), _wgslsmith_sub_u32(u_input.b.x, abs(1u))), 2u)]), global1[_wgslsmith_index_u32(select(abs(~(~u_input.b.x)), abs(~(~u_input.b.x)), true), 4u)]);
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: bool) -> vec4<u32> {
    global3 = arg_1.c.a.x != arg_1.c.a.x;
    var var_0 = !arg_1.a.a.b.x;
    var var_1 = _wgslsmith_mod_i32(-4613i, _wgslsmith_mod_i32(0i, -(~arg_1.e.a.x)) ^ ~0i);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(661f, -327f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -505f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(857f, 1014f)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-630f + -425f)), _wgslsmith_f_op_f32(select(-1000f, 1178f, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2353f, 154f) - _wgslsmith_f_op_f32(sign(238f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1976f, -1116f, -1060f), vec3<f32>(-659f, 1241f, 1000f))) - vec3<f32>(-134f, -1590f, 243f))));
    let var_3 = arg_1.a;
    return ~abs(~(~(~vec4<u32>(90628u, 1u, arg_1.a.c.c, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<i32>(-84334i, 8103i, 28440i, 1i) >> (func_5(min(62860u, 1u), func_1(vec2<f32>(-1000f, 1928f), vec2<i32>(2147483647i, u_input.a), vec3<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 2u)], global4[_wgslsmith_index_u32(u_input.b.x, 2u)], global4[_wgslsmith_index_u32(1u, 2u)])), true) % vec4<u32>(32u))));
}

