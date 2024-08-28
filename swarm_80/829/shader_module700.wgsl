struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_2(vec4<bool>(false, false, true, true), false, Struct_1(vec3<f32>(-2333f, 248f, 730f), 602f, vec4<bool>(false, false, true, true)), vec3<f32>(212f, 1395f, 1132f), vec2<bool>(true, true)), 40731i, vec2<f32>(956f, 1000f), vec3<u32>(61935u, 9125u, 57953u), vec3<bool>(false, true, true)), Struct_3(Struct_2(vec4<bool>(false, true, true, false), false, Struct_1(vec3<f32>(257f, -1097f, 835f), -396f, vec4<bool>(false, false, true, true)), vec3<f32>(605f, -1704f, -795f), vec2<bool>(true, false)), -12020i, vec2<f32>(804f, -914f), vec3<u32>(18238u, 25327u, 1u), vec3<bool>(false, false, false)), Struct_3(Struct_2(vec4<bool>(true, true, false, false), false, Struct_1(vec3<f32>(-919f, -1703f, -407f), 767f, vec4<bool>(false, true, true, false)), vec3<f32>(868f, -770f, -344f), vec2<bool>(false, false)), 44447i, vec2<f32>(-1725f, 766f), vec3<u32>(1u, 0u, 74307u), vec3<bool>(false, true, false)), Struct_3(Struct_2(vec4<bool>(false, false, true, true), false, Struct_1(vec3<f32>(686f, -750f, -1082f), -568f, vec4<bool>(false, true, false, true)), vec3<f32>(-2074f, 2340f, -1597f), vec2<bool>(false, false)), -15405i, vec2<f32>(386f, 940f), vec3<u32>(24390u, 0u, 0u), vec3<bool>(false, false, false)), Struct_3(Struct_2(vec4<bool>(false, false, true, false), true, Struct_1(vec3<f32>(-800f, -461f, -562f), 1032f, vec4<bool>(false, false, true, true)), vec3<f32>(-634f, -1193f, -1360f), vec2<bool>(false, false)), -38928i, vec2<f32>(-458f, -212f), vec3<u32>(52246u, 4294967295u, 26130u), vec3<bool>(false, true, false)), Struct_3(Struct_2(vec4<bool>(true, false, true, true), false, Struct_1(vec3<f32>(-2301f, 1190f, -1249f), -584f, vec4<bool>(true, true, false, false)), vec3<f32>(-756f, -255f, -1054f), vec2<bool>(true, true)), 18107i, vec2<f32>(2023f, 1000f), vec3<u32>(4294967295u, 1u, 94535u), vec3<bool>(true, false, false)), Struct_3(Struct_2(vec4<bool>(false, true, true, false), true, Struct_1(vec3<f32>(-520f, -111f, -1387f), 898f, vec4<bool>(true, false, true, false)), vec3<f32>(-1000f, -187f, 2023f), vec2<bool>(true, false)), 2147483647i, vec2<f32>(263f, -714f), vec3<u32>(4294967295u, 1u, 9125u), vec3<bool>(true, false, true)), Struct_3(Struct_2(vec4<bool>(false, true, false, false), false, Struct_1(vec3<f32>(2209f, 771f, 133f), -382f, vec4<bool>(false, true, true, true)), vec3<f32>(1528f, 283f, 2051f), vec2<bool>(true, true)), -40065i, vec2<f32>(904f, 1000f), vec3<u32>(8657u, 21477u, 4294967295u), vec3<bool>(false, false, true)), Struct_3(Struct_2(vec4<bool>(false, true, false, true), false, Struct_1(vec3<f32>(1000f, 613f, -1974f), -788f, vec4<bool>(false, true, false, false)), vec3<f32>(288f, -1000f, 1168f), vec2<bool>(false, true)), -1i, vec2<f32>(493f, -1168f), vec3<u32>(1u, 4894u, 25905u), vec3<bool>(true, true, false)), Struct_3(Struct_2(vec4<bool>(false, true, false, true), true, Struct_1(vec3<f32>(-1279f, 855f, -1027f), -371f, vec4<bool>(true, true, true, false)), vec3<f32>(-334f, 124f, 735f), vec2<bool>(true, false)), -17994i, vec2<f32>(238f, -486f), vec3<u32>(1u, 873u, 12525u), vec3<bool>(true, true, true)), Struct_3(Struct_2(vec4<bool>(true, false, false, false), false, Struct_1(vec3<f32>(132f, -466f, -1670f), -626f, vec4<bool>(false, false, false, true)), vec3<f32>(577f, 356f, 1130f), vec2<bool>(false, false)), -16918i, vec2<f32>(392f, 248f), vec3<u32>(4294967295u, 91318u, 21896u), vec3<bool>(false, true, false)), Struct_3(Struct_2(vec4<bool>(true, true, false, false), true, Struct_1(vec3<f32>(693f, 1333f, 105f), 220f, vec4<bool>(false, true, false, false)), vec3<f32>(-855f, -157f, -202f), vec2<bool>(false, true)), 48002i, vec2<f32>(-466f, 711f), vec3<u32>(96625u, 20153u, 0u), vec3<bool>(true, true, false)), Struct_3(Struct_2(vec4<bool>(true, true, false, true), true, Struct_1(vec3<f32>(-191f, 1664f, 803f), -2189f, vec4<bool>(true, true, false, false)), vec3<f32>(975f, 1000f, 1640f), vec2<bool>(true, false)), 1i, vec2<f32>(-418f, -1107f), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, false, false)));

var<private> global3: array<vec3<f32>, 16>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_3) -> f32 {
    let var_0 = !arg_3.a.c.c.ww;
    var var_1 = -231f;
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -317f));
}

fn func_2() -> f32 {
    var var_0 = global0.c.c.x;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(504f - _wgslsmith_f_op_f32(func_3(true, vec3<i32>(-71969i, u_input.a, -1i), global0.c.c.x, global2[_wgslsmith_index_u32(u_input.c.x, 13u)]))))), _wgslsmith_div_f32(global0.c.b, _wgslsmith_f_op_f32(min(-101f, global0.d.x)))), 1207f);
    let var_2 = ~(~(~(~vec4<u32>(30816u, u_input.b, 18534u, 1u))));
    let var_3 = u_input.b <= ~4416u;
    let var_4 = global0.c.c;
    return 1f;
}

fn func_1(arg_0: f32) -> vec3<f32> {
    let var_0 = true | (~_wgslsmith_sub_u32(~u_input.c.x, ~105775u) > u_input.b);
    global3 = array<vec3<f32>, 16>();
    let var_1 = false;
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1040f - -552f) * _wgslsmith_f_op_f32(-1045f + -171f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -611f))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1138f)))))), _wgslsmith_f_op_f32(f32(-1f) * -847f), vec4<bool>(!global0.e.x, (~u_input.a == (-4358i | u_input.a)) || var_0, var_0, global0.a.x));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-122f - 782f))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-753f, 300f, var_2.b))) - global0.c.a), global0.c.a))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<f32>) -> Struct_2 {
    global1 = array<Struct_1, 31>();
    let var_0 = 1u;
    let var_1 = Struct_4(var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_1.a))), _wgslsmith_f_op_vec3_f32(arg_1.a + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.a.x, -1000f, arg_1.b))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0.c);
    var var_2 = select(select(vec3<bool>(true, true, !var_1.d.c.x), var_1.d.c.wzz, true), vec3<bool>(arg_1.c.x, arg_1.c.x, all(vec4<bool>(arg_1.c.x, arg_1.c.x, false, true)) | any(var_1.d.c.zw)), vec3<bool>(true, var_1.d.c.x, !any(select(vec4<bool>(arg_2, arg_1.c.x, arg_2, false), var_1.d.c, var_1.d.c))));
    let var_3 = var_1;
    return Struct_2(var_1.d.c, false, Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(603f, 439f, arg_0) * _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(4294967295u, 16u)])), vec3<f32>(global0.d.x, _wgslsmith_f_op_f32(trunc(-2117f)), _wgslsmith_f_op_f32(arg_0 + var_1.d.a.x)), !vec3<bool>(global0.a.x, arg_2, false))), var_1.d.a.x, select(vec4<bool>(!var_2.x, any(global0.c.c.www), any(vec3<bool>(true, false, false)), true), vec4<bool>(var_2.x, -37581i > u_input.a, arg_3.x == -958f, true), 4294967295u > (4294967295u | var_0))), var_1.b, vec2<bool>(false, select(!(u_input.a > u_input.a), all(!var_1.d.c.wwy), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = func_4(_wgslsmith_f_op_f32(trunc(global0.c.b)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(1442f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))), vec4<bool>(!select(global0.e.x, global0.e.x, true), true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(452f))) * 1025f) <= _wgslsmith_f_op_f32(-global0.c.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c.a)));
    let var_2 = Struct_3(func_4(-1814f, func_4(543f, global0.c, global0.a.x, vec3<f32>(_wgslsmith_f_op_f32(select(global0.d.x, var_1.c.b, false)), _wgslsmith_f_op_f32(ceil(global0.d.x)), 703f)).c, var_1.e.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.a.x, -1724f, 111f)), _wgslsmith_f_op_vec3_f32(var_1.d * var_1.d), !var_1.a.yxx)))), _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a & u_input.a)), -reverseBits(2147483647i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.a.x, _wgslsmith_f_op_f32(644f * _wgslsmith_f_op_f32(-global0.c.b))) - _wgslsmith_f_op_vec2_f32(var_1.d.yz - _wgslsmith_div_vec2_f32(var_1.d.zy, global0.d.xy))), u_input.c, select(vec3<bool>(!all(global0.e), !(!var_1.a.x), true), select(global0.a.zxz, vec3<bool>(true, false, false), func_4(536f, var_1.c, true, _wgslsmith_f_op_vec3_f32(vec3<f32>(-568f, 1520f, var_1.c.b) + global3[_wgslsmith_index_u32(0u, 16u)])).e.x), !(false || !var_1.c.c.x)));
    let var_3 = global0.c;
    global0 = Struct_2(!select(select(select(vec4<bool>(var_3.c.x, true, global0.e.x, false), vec4<bool>(false, true, false, var_2.a.e.x), vec4<bool>(false, true, var_1.b, false)), var_1.a, !global0.c.c.x), vec4<bool>(var_2.e.x, !global0.b, true, true), all(global0.c.c)), var_2.e.x, func_4(833f, Struct_1(_wgslsmith_f_op_vec3_f32(var_1.c.a + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, var_2.a.c.b, -2443f) + vec3<f32>(1000f, var_1.d.x, -600f))), _wgslsmith_f_op_f32(810f - _wgslsmith_f_op_f32(func_2())), !select(vec4<bool>(true, global0.e.x, true, var_3.c.x), var_2.a.a, var_3.c)), true, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.b, var_1.c.a.x, 1000f)) - global3[_wgslsmith_index_u32(49626u | var_2.d.x, 16u)])))).c, global0.c.a, !(!global0.e));
    var var_4 = vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_mod_u32(84374u, var_2.d.x)), 19530u, _wgslsmith_add_u32(~u_input.b, _wgslsmith_div_u32(var_2.d.x, u_input.c.x))), u_input.c.x) | u_input.c.yz;
    global1 = array<Struct_1, 31>();
    var var_5 = select(!func_4(1000f, Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.c.a), -1000f, !var_1.c.c), !global0.c.c.x & (4294967295u == u_input.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, var_2.c.x, -748f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-929f, -1000f, var_1.c.a.x))))).e, vec2<bool>(true, false), !var_3.c.xy);
    var var_6 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_4.x, _wgslsmith_div_u32(firstTrailingBit(~0u), _wgslsmith_dot_vec4_u32(max(vec4<u32>(1453u, 4294967295u, 23583u, var_4.x), vec4<u32>(53844u, 53906u, var_0, u_input.c.x)), vec4<u32>(1u, var_2.d.x, var_4.x, var_0))), abs(min(~var_4.x, 58927u)), firstLeadingBit(var_0)), ~vec4<u32>(~var_0, _wgslsmith_mult_u32(0u, 1u), ~var_0 >> (~1u % 32u), 38869u & u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(16156i, var_4.x);
}

