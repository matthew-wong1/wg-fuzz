struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec4<f32>,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<i32>(1i, 0i, 1i, 31878i), 1i), false, 10064i, vec2<bool>(true, true));

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<i32>(862i, i32(-2147483648), -1i, -21662i), -24973i), Struct_1(vec4<i32>(-2022i, 62906i, -78873i, -37208i), 15608i), Struct_1(vec4<i32>(78127i, 0i, 0i, 46471i), -5847i), Struct_1(vec4<i32>(25797i, 1i, -61961i, -31814i), 40356i), Struct_1(vec4<i32>(2147483647i, -4937i, -1i, 1i), 0i), Struct_1(vec4<i32>(1i, 76800i, i32(-2147483648), -9247i), -37107i), Struct_1(vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -56182i), 1096i), Struct_1(vec4<i32>(32928i, -57548i, -10230i, 16124i), 4483i), Struct_1(vec4<i32>(12243i, 4705i, -35312i, 12702i), 2147483647i), Struct_1(vec4<i32>(-5065i, 0i, -1i, 1i), 1i), Struct_1(vec4<i32>(-40094i, -4720i, 0i, -1i), -14468i), Struct_1(vec4<i32>(18404i, 46616i, 1i, -8576i), -12235i), Struct_1(vec4<i32>(2147483647i, -8056i, -394i, -8918i), 43358i), Struct_1(vec4<i32>(-1i, i32(-2147483648), 0i, 2147483647i), i32(-2147483648)), Struct_1(vec4<i32>(5832i, 38307i, 2147483647i, 1i), -1i), Struct_1(vec4<i32>(15626i, 20048i, 2147483647i, 0i), -12472i), Struct_1(vec4<i32>(19588i, 55514i, 2147483647i, -1i), 0i), Struct_1(vec4<i32>(3197i, 2147483647i, 22674i, 11957i), 1i), Struct_1(vec4<i32>(1i, 30549i, -1i, 1i), 2147483647i), Struct_1(vec4<i32>(20301i, -28420i, -1i, -1i), -1i), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -24983i, i32(-2147483648)), -1773i), Struct_1(vec4<i32>(1i, 28550i, 1i, i32(-2147483648)), 0i), Struct_1(vec4<i32>(-12207i, -11685i, 40499i, 6083i), i32(-2147483648)), Struct_1(vec4<i32>(-1i, 107101i, 0i, 1i), 1509i), Struct_1(vec4<i32>(-3839i, -43771i, 20354i, i32(-2147483648)), 1i), Struct_1(vec4<i32>(-12424i, 46096i, 0i, -23851i), 2147483647i), Struct_1(vec4<i32>(1i, 43473i, -1i, 2147483647i), i32(-2147483648)), Struct_1(vec4<i32>(1i, 45549i, -1i, 0i), 1i), Struct_1(vec4<i32>(38731i, -1i, 12668i, 1i), 19292i), Struct_1(vec4<i32>(116i, -27871i, 30794i, -34824i), 2147483647i), Struct_1(vec4<i32>(0i, -6656i, 1i, -1i), -342i), Struct_1(vec4<i32>(41301i, -70496i, 26220i, -1i), -18590i));

var<private> global2: f32;

var<private> global3: array<Struct_4, 13>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> i32 {
    global0 = Struct_2(Struct_1(~(~firstTrailingBit(global0.a.a)), -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, global0.c), vec2<i32>(global0.a.a.x, -2147483647i))), all(vec3<bool>(any(vec4<bool>(global0.b, global0.b, global0.d.x, false)), all(vec4<bool>(true, false, global0.d.x, true)), global0.b)), ~0i, select(select(!select(vec2<bool>(global0.b, false), global0.d, false), select(select(global0.d, global0.d, global0.b), vec2<bool>(global0.d.x, false), 0u <= u_input.a.x), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(global0.d.x, false, global0.b)), !global0.b), vec2<bool>(true, _wgslsmith_f_op_f32(step(-1000f, 1111f)) > _wgslsmith_f_op_f32(199f - -1403f))));
    var var_0 = vec3<bool>(all(select(!(!vec3<bool>(global0.b, true, global0.b)), vec3<bool>(global0.b, true, any(global0.d)), select(vec3<bool>(global0.d.x, false, global0.b), !vec3<bool>(global0.b, true, true), vec3<bool>(global0.d.x, global0.b, global0.d.x)))), -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(global0.a.b, arg_0, -43548i), ~(-6746i)) > (-11713i & _wgslsmith_div_i32(firstLeadingBit(arg_0), min(global0.c, 2147483647i))), all(vec4<bool>(_wgslsmith_mod_u32(u_input.a.x, 4294967295u) >= reverseBits(u_input.a.x), false, 1u != ~u_input.a.x, true)));
    let var_1 = Struct_5(~u_input.a.x, vec4<f32>(-734f, 564f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(910f)), _wgslsmith_div_f32(672f, -883f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1087f) - _wgslsmith_f_op_f32(-1000f * -877f)))), Struct_2(Struct_1(global0.a.a, -_wgslsmith_div_i32(1i, arg_0)), any(vec2<bool>(var_0.x, false)), _wgslsmith_div_i32(global0.c, arg_0), !global0.d), 0u, firstTrailingBit(29178u));
    global3 = array<Struct_4, 13>();
    var var_2 = -_wgslsmith_clamp_i32(~(-2147483647i), _wgslsmith_sub_i32(-arg_0, _wgslsmith_clamp_i32(0i, -21689i, 2147483647i) ^ _wgslsmith_add_i32(-2147483647i, global0.c)), ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, global0.a.a.x, 2147483647i, 13139i), vec4<i32>(2147483647i, arg_0, 32504i, 50705i)), countOneBits(arg_0)));
    return -1i;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> Struct_5 {
    let var_0 = Struct_4(Struct_2(Struct_1(vec4<i32>(~3975i, func_3(arg_0.x), -1i, reverseBits(arg_0.x)), _wgslsmith_sub_i32(arg_0.x, global0.c | global0.c)), arg_1, abs(36380i), global0.d));
    let var_1 = var_0;
    var var_2 = Struct_3(true, select(!(!select(vec3<bool>(global0.d.x, arg_1, var_1.a.d.x), vec3<bool>(global0.b, arg_1, var_1.a.d.x), var_0.a.d.x)), select(select(!vec3<bool>(true, arg_1, false), vec3<bool>(arg_1, var_1.a.b, var_0.a.b), vec3<bool>(false, false, true)), !select(vec3<bool>(arg_1, false, false), vec3<bool>(false, false, arg_1), vec3<bool>(global0.b, false, var_1.a.d.x)), var_0.a.b), any(select(!vec4<bool>(true, var_0.a.d.x, var_1.a.b, true), select(vec4<bool>(false, var_0.a.d.x, arg_1, var_1.a.d.x), vec4<bool>(true, arg_1, false, true), vec4<bool>(var_1.a.b, true, global0.b, arg_1)), !vec4<bool>(false, false, var_1.a.b, true)))));
    let var_3 = vec4<i32>(-1i) * -var_0.a.a.a;
    var_2 = Struct_3(false, vec3<bool>(!(global0.b == any(var_2.b)), (4294967295u << (~u_input.a.x % 32u)) != u_input.a.x, var_0.a.d.x));
    return Struct_5(u_input.a.x, vec4<f32>(_wgslsmith_div_f32(-595f, _wgslsmith_div_f32(-447f, -1249f)), 1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-201f * -562f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(369f - -1278f) + 2074f))), 1f), Struct_2(Struct_1(firstTrailingBit(vec4<i32>(var_1.a.c, global0.c, 1i, -2147483647i)), func_3(_wgslsmith_sub_i32(var_3.x, global0.a.a.x))), arg_1 || all(vec3<bool>(var_1.a.d.x, var_0.a.b, var_0.a.d.x)), ~arg_0.x, select(var_0.a.d, vec2<bool>(true, var_1.a.d.x), var_0.a.d)), u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 27337u));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: f32) -> vec4<i32> {
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    var var_0 = func_2(vec3<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(~vec2<i32>(global0.a.b, -1i)), arg_0.c.a.a.yx), (i32(-1i) * -arg_1.x) | 68749i, abs(min(22774i, -9i) << (~arg_0.d % 32u))), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.b.yzz + vec3<f32>(-1119f, _wgslsmith_f_op_f32(sign(1498f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1951f) + _wgslsmith_f_op_f32(trunc(arg_2)))))));
    let var_2 = var_0.b.zyz;
    return ~var_0.c.a.a;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec3<bool>, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_3(any(select(arg_2.zz, !global0.d, 1i != _wgslsmith_add_i32(arg_1, arg_1))), !select(vec3<bool>(true, any(vec2<bool>(global0.b, arg_2.x)), true), !select(arg_2, arg_2, vec3<bool>(arg_2.x, arg_3.x, arg_3.x)), select(vec3<bool>(arg_3.x, false, false), select(arg_2, arg_2, arg_3.x), !arg_3.x)));
    let var_1 = Struct_2(global0.a, false, -2147483647i, vec2<bool>(true, true));
    let var_2 = Struct_3(global0.b, arg_2);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-877f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 412f))))));
    var var_4 = ~vec3<u32>(u_input.a.x, arg_0, ~_wgslsmith_add_u32(3538u, ~u_input.a.x));
    return func_2(vec3<i32>(45737i, -2147483647i, func_4(func_2(-var_1.a.a.yxy, arg_2.x), firstTrailingBit(~var_1.a.a.yw), _wgslsmith_f_op_f32(1415f * 1476f)).x), false).c;
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    var var_0 = select(select(!(!select(vec3<bool>(true, arg_0.d.x, arg_0.b), vec3<bool>(true, arg_0.b, false), false)), !vec3<bool>(any(vec4<bool>(global0.b, arg_0.b, false, arg_0.d.x)), -2147483647i < global0.a.a.x, false & arg_0.b), select(!select(vec3<bool>(true, global0.d.x, false), vec3<bool>(false, false, arg_0.d.x), true), vec3<bool>(false, false || arg_0.b, true), vec3<bool>(true, func_5(1u, -35275i, vec3<bool>(true, arg_0.d.x, true), arg_0.d).b, global0.c != global0.c))), !(!vec3<bool>(true, any(arg_0.d), any(vec4<bool>(false, arg_0.b, true, global0.b)))), any(!(!(!vec3<bool>(arg_0.b, arg_0.b, global0.d.x)))));
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-336f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(127f, 870f))))) * _wgslsmith_f_op_f32(f32(-1f) * -865f))));
    let var_1 = Struct_3(!(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1072f, -837f, global0.b)))) <= func_2(vec3<i32>(1i, arg_0.a.b, 18392i), true).b.x), !vec3<bool>(all(vec4<bool>(global0.d.x, false, arg_0.b, arg_0.b)), !(true | arg_0.b), !global0.b));
    let var_2 = _wgslsmith_mult_vec2_i32(-vec2<i32>(-_wgslsmith_sub_i32(-1i, 0i), global0.a.a.x), ((countOneBits(arg_0.a.a.wx) >> (~u_input.a.yx % vec2<u32>(32u))) | -_wgslsmith_add_vec2_i32(global0.a.a.zx, arg_0.a.a.ww)) | (-vec2<i32>(1i, 1i) ^ (vec2<i32>(global0.a.b, global0.a.a.x) & vec2<i32>(0i, 2147483647i))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1149f * 1036f), -254f)))));
    return func_2(_wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -38464i, min(2147483647i, var_2.x), -global0.a.b) | ~global0.a.a.yxz, abs(global0.a.a.yxz | func_5(51764u, 25384i, vec3<bool>(var_0.x, var_0.x, arg_0.b), vec2<bool>(false, global0.b)).a.a.wwz)), true).c;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = func_6(func_5(u_input.a.x, _wgslsmith_dot_vec4_i32(func_4(func_2(global0.a.a.xyz, arg_0), vec2<i32>(3274i, 2147483647i), func_2(global0.a.a.yzz, arg_0).b.x), max(vec4<i32>(-29353i, global0.c, global0.c, global0.c) ^ global0.a.a, global0.a.a)), vec3<bool>(any(vec3<bool>(global0.d.x, arg_0, true)), true, true), vec2<bool>((global0.a.b | 1i) == -74155i, global0.b)));
    let var_0 = ~vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.c, global0.a.a.x, global0.a.b, 2147483647i), vec4<i32>(global0.a.b, 2147483647i, 0i, 2147483647i))), ~2147483647i, firstLeadingBit(countOneBits(global0.a.b)));
    global0 = func_5(firstLeadingBit(4294967295u), _wgslsmith_clamp_i32(i32(-1i) * -var_0.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_0.xx, var_0.yy), global0.a.b), min(var_0.x, var_0.x) ^ min(2147483647i, 1i)), vec3<bool>(func_2(-vec3<i32>(var_0.x, -2147483647i, 0i) & ~vec3<i32>(-4305i, 44384i, var_0.x), true).c.b, true, global0.b), vec2<bool>(true, 1i <= ~func_4(Struct_5(113872u, vec4<f32>(1000f, 221f, -582f, -939f), Struct_2(Struct_1(vec4<i32>(-26442i, global0.a.a.x, global0.a.a.x, 94507i), 2574i), arg_0, 0i, global0.d), 14216u, 0u), global0.a.a.yw, -462f).x));
    global3 = array<Struct_4, 13>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1186f, 1000f));
    return func_6(Struct_2(Struct_1(abs(~vec4<i32>(global0.c, 2147483647i, -50795i, var_0.x)), global0.c), any(!select(vec3<bool>(false, global0.d.x, arg_0), vec3<bool>(arg_0, global0.b, arg_0), global0.b)), global0.c, vec2<bool>(false, any(global0.d)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -165f;
    var var_0 = Struct_2(func_1(global0.b), global0.d.x, _wgslsmith_dot_vec2_i32(func_1(global0.d.x).a.zx, _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(global0.a.a.xx, global0.a.a.wz), ~vec2<i32>(-2147483647i, global0.a.a.x))), global0.d);
    let var_1 = -897f;
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1)));
    global1 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(func_6(func_5(u_input.a.x, var_0.c, !vec3<bool>(global0.d.x, var_0.d.x, global0.b), var_0.d)).a.b, -global0.c), u_input.a.yy & _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.yx, u_input.a.yx), vec2<u32>(u_input.a.x ^ 0u, u_input.a.x), u_input.a.xx));
}

