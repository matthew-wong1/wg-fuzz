struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-836f, 1193f, -1194f, -524f, 1068f, -378f, 1395f, -930f, -408f, 491f, -1449f, -327f, -1374f, -443f, 482f, 1148f, 622f, -352f, -1000f, 1155f, -742f, 408f, 246f, -2514f, -1093f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: bool, arg_3: vec3<i32>) -> vec3<i32> {
    global0 = array<f32, 25>();
    let var_0 = _wgslsmith_f_op_f32(-arg_1.b);
    return _wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2104i, arg_0.x, -2147483647i), vec3<i32>(arg_3.x, 2147483647i, arg_1.c.c.d)), arg_0) & _wgslsmith_mult_vec3_i32(~reverseBits(arg_1.c.c.b.xyy), min(vec3<i32>(arg_1.a.a.c.b.x, arg_1.a.a.b.x, -1i), vec3<i32>(arg_0.x, arg_0.x, arg_0.x)) & vec3<i32>(arg_1.a.a.b.x, arg_1.a.d.x, -28836i)), vec3<i32>(~reverseBits(_wgslsmith_mod_i32(-1i, arg_3.x)), arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -arg_1.c.d.x, u_input.b, -1i), vec4<i32>(2147483647i, -4015i, firstLeadingBit(arg_0.x), reverseBits(-16585i)))));
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.d.x;
    var var_1 = Struct_4(abs(u_input.e), countOneBits(min(func_3(_wgslsmith_div_vec3_i32(vec3<i32>(-27566i, u_input.e.x, u_input.a), u_input.e.www), Struct_5(Struct_3(Struct_2(vec2<u32>(4294967295u, 10287u), vec3<i32>(u_input.c, u_input.c, u_input.c), Struct_1(79637u, u_input.d, vec4<u32>(77482u, 1u, 52471u, 1u), u_input.a), u_input.d.yz, vec4<bool>(true, true, true, true)), vec4<bool>(false, true, false, false), vec2<u32>(9302u, 0u), vec3<i32>(-24684i, u_input.c, u_input.d.x), vec3<u32>(8058u, 4294967295u, 27936u)), 1000f, Struct_2(vec2<u32>(1u, 0u), u_input.e.yyz, Struct_1(43554u, vec4<i32>(-3994i, u_input.b, u_input.b, u_input.b), vec4<u32>(46268u, 17032u, 1u, 41361u), u_input.e.x), vec2<i32>(-24901i, 500i), vec4<bool>(true, true, false, false))), false, u_input.e.yzy), vec3<i32>(u_input.b, -1697i, u_input.e.x))));
    var_1 = Struct_4(max(var_1.a, abs(u_input.d >> (vec4<u32>(0u, 17293u, 7040u, 21948u) % vec4<u32>(32u))) >> (vec4<u32>(~0u, 36376u, reverseBits(0u), 43431u) % vec4<u32>(32u))), _wgslsmith_add_vec3_i32(u_input.e.wxz, func_3(vec3<i32>(31390i, -41487i, u_input.d.x), Struct_5(Struct_3(Struct_2(vec2<u32>(4294967295u, 0u), u_input.d.xxx, Struct_1(61889u, vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, var_1.b.x), vec4<u32>(0u, 3383u, 4294967295u, 4294967295u), u_input.d.x), var_1.b.xz, vec4<bool>(true, true, false, true)), vec4<bool>(false, false, false, true), vec2<u32>(10800u, 41193u), u_input.e.xzw, vec3<u32>(1u, 57325u, 4294967295u)), _wgslsmith_f_op_f32(select(1000f, 810f, false)), Struct_2(vec2<u32>(4128u, 1u), vec3<i32>(u_input.d.x, -2147483647i, -1i), Struct_1(20005u, var_1.a, vec4<u32>(55039u, 4294967295u, 1u, 4294967295u), var_1.a.x), u_input.e.yx, vec4<bool>(true, true, false, false))), all(vec2<bool>(true, true)), var_1.b)));
    var var_2 = Struct_5(Struct_3(Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), ~vec2<u32>(1u, 34848u)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1385i, 1i, -14486i), var_1.b) ^ (vec3<i32>(u_input.b, var_1.b.x, -27836i) | vec3<i32>(var_1.a.x, u_input.b, u_input.a)), Struct_1(1u, select(var_1.a, u_input.d, vec4<bool>(true, true, false, false)), ~vec4<u32>(65035u, 1u, 4294967295u, 48385u), u_input.c), vec2<i32>(~25064i, var_1.b.x), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, false, any(vec2<bool>(false, true))), true), vec2<u32>(~(17712u << (0u % 32u)), 1u), ~select(reverseBits(u_input.d.wxz), vec3<i32>(u_input.c, -2147483647i, -1i), vec3<bool>(false, false, false)), select(~vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_add_u32(4243u, 72722u), ~71429u, ~1u), select(all(vec4<bool>(true, false, true, false)), true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -757f), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 25u)])))), -273f)) - _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 14644u, 0u) | 0u, 25u)], _wgslsmith_f_op_f32(f32(-1f) * -723f), true))), Struct_2(~countOneBits(abs(vec2<u32>(1u, 0u))), _wgslsmith_div_vec3_i32(var_1.b, u_input.d.zyx), Struct_1(~(~1u), u_input.d, vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, 2147483647i, 0i, var_1.b.x) ^ u_input.d, abs(u_input.d))), u_input.d.xz, select(vec4<bool>(all(vec2<bool>(false, false)), true, true, true), vec4<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, false)), any(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(11264u, 25u)] != -2453f), true)));
    let var_3 = 0u;
    return Struct_3(Struct_2(~vec2<u32>(var_3, ~108252u), vec3<i32>(u_input.a, -(u_input.b & 2147483647i), -var_1.b.x), Struct_1(~abs(4294967295u), -abs(vec4<i32>(var_2.a.d.x, -1i, -1738i, 10153i)), ~var_2.a.a.c.c, abs(-var_1.b.x)), -var_1.a.xy, var_2.c.e), !vec4<bool>(select(var_2.c.e.x, !var_2.c.e.x, var_2.c.e.x), true | (var_2.a.d.x != 53306i), true, all(var_2.c.e) | false), var_2.a.a.c.c.wx, var_2.a.d, ~var_2.a.a.c.c.xzx);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<f32>) -> Struct_4 {
    let var_0 = func_2();
    let var_1 = Struct_1(90710u, u_input.e, _wgslsmith_div_vec4_u32(var_0.a.c.c, ~(~vec4<u32>(var_0.a.a.x, var_0.c.x, var_0.c.x, 59460u)) | (~var_0.a.c.c | firstLeadingBit(vec4<u32>(9132u, var_0.c.x, var_0.a.a.x, var_0.e.x)))), -2147483647i);
    global0 = array<f32, 25>();
    let var_2 = func_2().a.c;
    global0 = array<f32, 25>();
    return Struct_4(vec4<i32>(-1i) * -var_2.b, abs(u_input.d.zzy) & u_input.d.xyy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_vec2_i32(vec2<i32>(44993i, _wgslsmith_dot_vec2_i32(u_input.d.xy, vec2<i32>(-9324i, u_input.a))) | _wgslsmith_clamp_vec2_i32(u_input.d.yz >> (vec2<u32>(29096u, 42284u) % vec2<u32>(32u)), vec2<i32>(-49099i, 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(40348i, u_input.d.x), u_input.e.yw, u_input.e.zw)), u_input.e.zx), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -646f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)])))), vec3<f32>(global0[_wgslsmith_index_u32(select(0u, abs(5361u), false), 25u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1588f * global0[_wgslsmith_index_u32(137912u, 25u)]))), _wgslsmith_div_f32(-1456f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 25u)]) - global0[_wgslsmith_index_u32(4294967295u, 25u)]))));
    var var_1 = select(all(vec2<bool>(any(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(round(-267f)) == _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(67932u, 25u)])))), true, true);
    let var_2 = var_0.b.x;
    var var_3 = Struct_2(~vec2<u32>(1u, 1u), ~abs(var_0.a.yxx), func_2().a.c, func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(func_1(var_0.b.zy, true, vec3<f32>(-789f, global0[_wgslsmith_index_u32(20224u, 25u)], 819f)).b.x, _wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(u_input.d.x, 27923i, var_0.a.x, var_2)), -17222i), min(vec3<i32>(0i, 0i, 0i), _wgslsmith_sub_vec3_i32(var_0.b, var_0.a.xxw)), u_input.d.yxx), Struct_5(func_2(), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -388f), global0[_wgslsmith_index_u32(~1u, 25u)])), Struct_2(vec2<u32>(0u, 46650u), var_0.b, Struct_1(1023u, u_input.d, vec4<u32>(1u, 61566u, 92542u, 55331u), var_0.b.x), u_input.d.wz, func_2().a.e)), any(!select(vec2<bool>(true, true), vec2<bool>(false, true), false)), vec3<i32>(-35942i, firstTrailingBit(var_0.a.x), i32(-1i) * -2147483647i) ^ abs(firstLeadingBit(vec3<i32>(u_input.d.x, var_0.a.x, var_2)))).yx, !(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true)));
    let var_4 = func_2();
    let var_5 = vec4<f32>(-449f, global0[_wgslsmith_index_u32(~(~(~var_4.c.x | 1u)), 25u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-264f, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.c.x, 4294967295u, var_3.a.x), var_3.c.c.xyz), 25u)], global0[_wgslsmith_index_u32(var_4.e.x, 25u)]))))), _wgslsmith_f_op_f32(f32(-1f) * -392f));
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_mult_u32(7273u, 1u), func_2().e.x), 4294967295u, var_3.c.b, ~vec2<u32>(4294967295u, 1u) & ~vec2<u32>(var_3.c.c.x, abs(var_4.c.x)));
}

