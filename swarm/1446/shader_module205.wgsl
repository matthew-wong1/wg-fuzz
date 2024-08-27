struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec3<i32>(-1i, 2147483647i, 1i), Struct_2(0u), 405f), Struct_3(vec3<i32>(-38241i, -1999i, -34582i), Struct_2(4294967295u), 548f), Struct_3(vec3<i32>(-57362i, -20264i, -1590i), Struct_2(0u), 2434f), Struct_3(vec3<i32>(7883i, 2147483647i, -31385i), Struct_2(3821u), -1053f), Struct_3(vec3<i32>(1i, -25849i, 31250i), Struct_2(4294967295u), -690f), Struct_3(vec3<i32>(73004i, 7439i, -6663i), Struct_2(1u), 125f), Struct_3(vec3<i32>(1i, 1i, 2147483647i), Struct_2(21328u), 391f), Struct_3(vec3<i32>(-1i, 83442i, 0i), Struct_2(38919u), 378f), Struct_3(vec3<i32>(1i, -1i, 2090i), Struct_2(0u), -315f), Struct_3(vec3<i32>(1135i, i32(-2147483648), -39394i), Struct_2(4294967295u), -811f), Struct_3(vec3<i32>(1i, 20789i, 0i), Struct_2(4294967295u), -339f), Struct_3(vec3<i32>(11696i, 41962i, 1i), Struct_2(0u), 1451f), Struct_3(vec3<i32>(-54991i, 8751i, -29619i), Struct_2(40353u), 162f), Struct_3(vec3<i32>(7992i, -1i, 0i), Struct_2(0u), -546f), Struct_3(vec3<i32>(i32(-2147483648), -37391i, i32(-2147483648)), Struct_2(21348u), -1077f), Struct_3(vec3<i32>(-8863i, 2147483647i, 0i), Struct_2(67198u), -962f), Struct_3(vec3<i32>(-1i, 20079i, -11924i), Struct_2(14368u), 1000f), Struct_3(vec3<i32>(-1i, 2147483647i, i32(-2147483648)), Struct_2(1u), 209f), Struct_3(vec3<i32>(-50976i, -4924i, 24284i), Struct_2(6906u), 1575f));

var<private> global1: vec2<u32> = vec2<u32>(52512u, 6929u);

var<private> global2: Struct_1 = Struct_1(vec3<f32>(1485f, -967f, -1262f), true, -1i, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec3<bool>(false, true, true));

var<private> global3: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(-1i, 0i, -1i), vec3<i32>(7457i, 21802i, 1i), vec3<i32>(-36668i, 2147483647i, 19348i), vec3<i32>(-64357i, i32(-2147483648), -70464i), vec3<i32>(2147483647i, -30626i, 29908i), vec3<i32>(-46102i, 9350i, -30590i), vec3<i32>(-15255i, -30524i, -687i), vec3<i32>(0i, 1i, 0i), vec3<i32>(-44454i, 2147483647i, 0i), vec3<i32>(0i, -1i, 21573i), vec3<i32>(0i, i32(-2147483648), -43691i), vec3<i32>(5708i, i32(-2147483648), -5698i), vec3<i32>(i32(-2147483648), -47136i, 26755i), vec3<i32>(-1i, -36900i, 0i), vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, -7515i), vec3<i32>(2147483647i, 63619i, 10611i), vec3<i32>(2147483647i, -34503i, i32(-2147483648)), vec3<i32>(30579i, i32(-2147483648), 1i), vec3<i32>(1i, -9778i, -5994i), vec3<i32>(1i, -14206i, -1i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> bool {
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: i32) -> u32 {
    let var_0 = arg_0;
    return 13263u;
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    global3 = array<vec3<i32>, 21>();
    global0 = array<Struct_3, 19>();
    let var_0 = vec4<u32>(~_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_mult_u32(arg_0.x, 4294967295u)), ~0u, global2.d.x), max(countOneBits(0u), 26622u), firstLeadingBit(0u), 4294967295u);
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.a)))), global2.b, firstLeadingBit(-22698i), ~reverseBits(reverseBits(var_0)), vec3<bool>(!global2.b, select(global2.e.x, global2.e.x, true), global2.c <= global2.c));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-623f, _wgslsmith_f_op_f32(-global2.a.x), global2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-570f))))), _wgslsmith_f_op_f32(step(global2.a.x, global2.a.x))), true, global2.c, firstTrailingBit(reverseBits(max(~global2.d, global2.d))), vec3<bool>(!any(select(vec4<bool>(false, global2.e.x, global2.e.x, global2.b), vec4<bool>(false, false, global2.e.x, true), vec4<bool>(global2.b, global2.e.x, global2.e.x, global2.b))), (all(vec4<bool>(global2.e.x, global2.b, global2.e.x, global2.b)) | any(vec2<bool>(false, true))) | global2.b, firstTrailingBit(countOneBits(arg_0.x)) >= global2.d.x));
    return ~var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 19>();
    var var_0 = select(!vec4<bool>(any(select(vec4<bool>(global2.e.x, global2.e.x, global2.b, false), vec4<bool>(global2.e.x, false, global2.e.x, false), true)), true, true, -u_input.b.x == 0i), select(vec4<bool>(true, true, all(!vec2<bool>(global2.e.x, global2.b)), global2.b), vec4<bool>(true, !(!global2.b), any(select(vec4<bool>(global2.e.x, global2.e.x, true, true), vec4<bool>(false, global2.e.x, true, true), global2.e.x)), !any(global2.e.xy)), !vec4<bool>(func_1(), global2.d.x > 63920u, global2.e.x, true)), !(!vec4<bool>(!global2.b, global2.e.x, true, select(true, false, true))));
    global1 = global2.d.zw;
    var var_1 = global2.c;
    var var_2 = Struct_2(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global2.d.zxx, vec3<u32>(_wgslsmith_sub_u32(global1.x, 1u), func_2(Struct_2(113735u), u_input.d.zwy, global2.a.xz, global2.c), ~31594u)), global1.x));
    var var_3 = _wgslsmith_f_op_f32(-global2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-910f, ~(vec4<u32>(global2.d.x | 13856u, firstLeadingBit(11642u), global1.x, ~var_2.a) | global2.d), _wgslsmith_mult_u32(abs(~(global1.x << (var_2.a % 32u))), var_2.a), ~(global2.d.x | ~func_3(global2.d.xx)), _wgslsmith_clamp_u32(~_wgslsmith_div_u32(~64171u, global2.d.x | var_2.a), ~1u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 4294967295u, global1.x, u_input.e), vec4<u32>(26240u, 49232u, 53311u, 4294967295u)))));
}

