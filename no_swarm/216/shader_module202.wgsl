struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(-5625i, vec2<u32>(4294967295u, 0u)), Struct_2(1i, vec2<u32>(4294967295u, 0u)), Struct_2(2147483647i, vec2<u32>(0u, 1u)), Struct_2(30346i, vec2<u32>(0u, 16096u)), Struct_2(7584i, vec2<u32>(1u, 42215u)), Struct_2(i32(-2147483648), vec2<u32>(1u, 0u)), Struct_2(-1i, vec2<u32>(28886u, 0u)), Struct_2(-1i, vec2<u32>(44836u, 63119u)), Struct_2(-1486i, vec2<u32>(19048u, 4294967295u)), Struct_2(1i, vec2<u32>(41017u, 0u)));

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec4<u32>(68518u, 37986u, 35975u, 4294967295u), Struct_1(vec3<i32>(i32(-2147483648), 35258i, -1i), 11939i, false, vec2<i32>(0i, -1i), vec3<bool>(true, false, true)), 895f, true), Struct_3(vec4<u32>(1u, 57014u, 1u, 9707u), Struct_1(vec3<i32>(-2850i, 4562i, -6469i), -17456i, true, vec2<i32>(-20621i, -39348i), vec3<bool>(true, true, false)), -730f, false), Struct_3(vec4<u32>(4294967295u, 0u, 89785u, 1u), Struct_1(vec3<i32>(-1i, -10748i, -31397i), i32(-2147483648), true, vec2<i32>(66569i, -43134i), vec3<bool>(true, false, true)), 1284f, true), Struct_3(vec4<u32>(1u, 4294967295u, 20090u, 45753u), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 1i), -1i, true, vec2<i32>(0i, 93285i), vec3<bool>(false, true, false)), -1335f, false), Struct_3(vec4<u32>(4294967295u, 4294967295u, 1u, 66340u), Struct_1(vec3<i32>(0i, 2147483647i, 12939i), -33395i, true, vec2<i32>(-1i, 1i), vec3<bool>(true, true, false)), 112f, true), Struct_3(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 12882u), Struct_1(vec3<i32>(-1i, 1i, 0i), -1i, true, vec2<i32>(0i, 1i), vec3<bool>(true, true, true)), -1214f, false), Struct_3(vec4<u32>(48677u, 18814u, 37636u, 0u), Struct_1(vec3<i32>(36574i, 62772i, 0i), 38868i, false, vec2<i32>(0i, 6298i), vec3<bool>(true, false, false)), 435f, false), Struct_3(vec4<u32>(104069u, 26107u, 0u, 41403u), Struct_1(vec3<i32>(-115147i, -1i, 43771i), i32(-2147483648), false, vec2<i32>(9773i, 1i), vec3<bool>(false, true, false)), 1000f, false), Struct_3(vec4<u32>(7773u, 1u, 20970u, 44808u), Struct_1(vec3<i32>(-1i, -31036i, i32(-2147483648)), 18594i, false, vec2<i32>(-1i, 0i), vec3<bool>(true, true, false)), -934f, true), Struct_3(vec4<u32>(4294967295u, 89036u, 46361u, 28268u), Struct_1(vec3<i32>(-19261i, -1i, -1i), i32(-2147483648), false, vec2<i32>(31777i, 0i), vec3<bool>(true, false, true)), -997f, true), Struct_3(vec4<u32>(1u, 4294967295u, 81565u, 44596u), Struct_1(vec3<i32>(74391i, 3536i, 9665i), 28449i, false, vec2<i32>(0i, -1i), vec3<bool>(false, false, true)), 157f, true), Struct_3(vec4<u32>(0u, 1u, 41369u, 1u), Struct_1(vec3<i32>(0i, 65183i, i32(-2147483648)), -29198i, true, vec2<i32>(52202i, 1i), vec3<bool>(true, false, true)), 800f, false), Struct_3(vec4<u32>(48088u, 4294967295u, 35673u, 12429u), Struct_1(vec3<i32>(27282i, 0i, -25093i), -18608i, false, vec2<i32>(0i, 12352i), vec3<bool>(true, true, true)), -804f, true), Struct_3(vec4<u32>(10460u, 148429u, 0u, 4294967295u), Struct_1(vec3<i32>(2147483647i, 62436i, 1i), 0i, true, vec2<i32>(-34319i, 17546i), vec3<bool>(true, false, true)), 410f, true), Struct_3(vec4<u32>(0u, 22104u, 149018u, 4294967295u), Struct_1(vec3<i32>(-77482i, -22517i, 11052i), 1256i, false, vec2<i32>(-1i, 24410i), vec3<bool>(false, true, true)), -1113f, true), Struct_3(vec4<u32>(4294967295u, 1u, 58983u, 0u), Struct_1(vec3<i32>(0i, -1i, -86725i), 2147483647i, false, vec2<i32>(i32(-2147483648), 0i), vec3<bool>(true, false, false)), 236f, false), Struct_3(vec4<u32>(3885u, 4294967295u, 1u, 27699u), Struct_1(vec3<i32>(-16684i, 54908i, 8486i), -1i, true, vec2<i32>(-58168i, 23920i), vec3<bool>(true, false, true)), -1511f, true), Struct_3(vec4<u32>(29499u, 0u, 8363u, 0u), Struct_1(vec3<i32>(13433i, 2147483647i, 0i), -1i, false, vec2<i32>(2147483647i, -1i), vec3<bool>(true, true, true)), 1471f, true), Struct_3(vec4<u32>(54242u, 17386u, 23171u, 0u), Struct_1(vec3<i32>(64843i, 1i, -35205i), 0i, true, vec2<i32>(2147483647i, -32107i), vec3<bool>(false, true, true)), 337f, false));

var<private> global3: vec2<i32>;

var<private> global4: vec3<i32> = vec3<i32>(2147483647i, 2147483647i, i32(-2147483648));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<u32>) -> i32 {
    var var_0 = true;
    let var_1 = vec4<u32>(121722u, 0u, 1u, abs(arg_2.x));
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    let var_2 = u_input.a << (arg_2.x % 32u);
    return -global3.x;
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: f32, arg_3: f32) -> bool {
    var var_0 = arg_0;
    let var_1 = any(vec4<bool>(!all(!arg_0.b.e.zx), !select(all(vec3<bool>(global1.x, arg_0.b.c, arg_0.b.e.x)), global1.x, !global1.x), true, var_0.d));
    global1 = select(!select(!select(var_0.b.e.xz, var_0.b.e.zz, false), !vec2<bool>(true, global1.x), vec2<bool>(true, true)), select(vec2<bool>(false, global1.x), select(!select(vec2<bool>(false, false), var_0.b.e.xy, vec2<bool>(global1.x, var_0.d)), select(vec2<bool>(global1.x, var_0.d), !arg_0.b.e.zz, var_1 == global1.x), var_1), (_wgslsmith_dot_vec2_i32(var_0.b.a.zz, vec2<i32>(1i, global3.x)) < -26406i) & any(select(vec4<bool>(false, var_0.b.c, var_1, true), vec4<bool>(false, false, global1.x, true), vec4<bool>(false, false, true, false)))), var_0.b.e.yx);
    let var_2 = global0[_wgslsmith_index_u32(var_0.a.x, 10u)];
    var var_3 = Struct_3(countOneBits(~var_0.a), Struct_1(vec3<i32>(~var_0.b.b & var_0.b.b, global3.x, global3.x), var_2.a, any(vec2<bool>(var_0.b.c, !var_0.b.c)), arg_0.b.d, vec3<bool>(var_0.d, !all(var_0.b.e), arg_0.b.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.c + -766f))), var_1);
    return select(var_0.b.c, !(!((-2147483647i << (arg_0.a.x % 32u)) <= -2147483647i)), any(select(vec4<bool>(any(vec3<bool>(true, var_0.d, arg_0.b.c)), any(var_0.b.e), global1.x, global1.x), vec4<bool>(all(vec4<bool>(false, arg_0.d, var_0.d, var_0.d)), true, false != var_3.b.e.x, all(arg_0.b.e.yz)), select(select(vec4<bool>(var_0.d, true, var_3.d, false), vec4<bool>(false, global1.x, var_1, global1.x), vec4<bool>(var_1, true, arg_0.d, false)), vec4<bool>(true, arg_0.b.e.x, var_3.b.e.x, true), all(var_0.b.e.zy)))));
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_3 {
    var var_0 = Struct_1(-vec3<i32>(-5447i, arg_1, _wgslsmith_div_i32(-39735i, u_input.a)), ~(-func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-549f, 482f, 1055f, -2204f)), u_input.a & global3.x, vec2<u32>(15451u, 35425u))), !global1.x, vec2<i32>(-37993i, global3.x), !vec3<bool>(!(28419i <= global3.x), func_3(Struct_3(vec4<u32>(0u, 1u, 64773u, arg_0), Struct_1(vec3<i32>(global3.x, -2147483647i, arg_1), 53420i, global1.x, vec2<i32>(arg_1, -1017i), vec3<bool>(true, global1.x, global1.x)), 519f, global1.x), 379f, _wgslsmith_f_op_f32(-890f + 1459f), _wgslsmith_f_op_f32(444f + 3119f)), !(global4.x >= global4.x)));
    return Struct_3(reverseBits((countOneBits(vec4<u32>(arg_0, arg_0, arg_0, arg_0)) ^ ~vec4<u32>(40849u, arg_0, arg_0, 48284u)) & ~(~vec4<u32>(1u, 4294967295u, 4294967295u, 18525u))), Struct_1(vec3<i32>(-1i) * -var_0.a, min(firstLeadingBit(-arg_1), -11183i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 1656f)) + -735f) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-783f, 1323f)))), -firstTrailingBit(vec2<i32>(0i, -26425i)), select(var_0.e, select(var_0.e, !vec3<bool>(global1.x, true, true), true), true)), 1f, !all(select(select(vec4<bool>(false, global1.x, global1.x, var_0.e.x), vec4<bool>(true, false, global1.x, var_0.e.x), global1.x), select(vec4<bool>(false, var_0.c, true, global1.x), vec4<bool>(true, var_0.c, true, true), true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_sub_u32(_wgslsmith_add_u32(105538u >> (select(41145u, 6845u, global1.x) % 32u), _wgslsmith_mult_u32(30397u, 32736u) >> (~4294967295u % 32u)), 26606u), global4.x ^ u_input.a);
    var var_1 = -622f;
    var var_2 = (-func_1(_wgslsmith_add_u32(1u, 29703u), var_0.b.d.x).b.d >> (_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_0.a.x, var_0.a.x), _wgslsmith_div_u32(var_0.a.x, var_0.a.x)), ~select(var_0.a.zx, vec2<u32>(67392u, var_0.a.x), true)) % vec2<u32>(32u))) | firstLeadingBit(-global4.zy);
    var var_3 = var_0.c;
    var var_4 = func_1(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(59331u, _wgslsmith_div_u32(var_0.a.x, var_0.a.x)), 1u), -2147483647i).a.x;
    var var_5 = global0[_wgslsmith_index_u32(var_0.a.x, 10u)];
    var var_6 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, _wgslsmith_f_op_f32(ceil(var_0.c)), -199f))));
    global0 = array<Struct_2, 10>();
    let var_7 = true || all(vec4<bool>(true || (false && global1.x), global1.x, !var_0.d, !(var_0.a.x >= var_5.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c);
}

