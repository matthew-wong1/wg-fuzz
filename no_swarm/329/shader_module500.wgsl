struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = Struct_2(arg_1.a, ~vec2<u32>(13335u, arg_0.a << (arg_1.c.a % 32u)), arg_0);
    return true;
}

fn func_3() -> i32 {
    var var_0 = !select(!vec2<bool>(true, all(vec3<bool>(true, true, false))), !select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), all(vec4<bool>(true, false, false, false))), !all(vec3<bool>(true, false, false)));
    var_0 = select(vec2<bool>(~32004u == _wgslsmith_sub_u32(50679u, _wgslsmith_clamp_u32(49007u, 51834u, 28827u)), true), select(!vec2<bool>(var_0.x, true), select(vec2<bool>(true, true), select(select(vec2<bool>(var_0.x, true), vec2<bool>(false, var_0.x), vec2<bool>(true, true)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x), select(vec2<bool>(true, var_0.x), vec2<bool>(true, false), false)), !(!vec2<bool>(var_0.x, false))), select(vec2<bool>(all(vec2<bool>(false, false)), var_0.x), !vec2<bool>(var_0.x, var_0.x), !func_1(Struct_1(22362u, vec3<i32>(u_input.b.x, u_input.b.x, -34313i)), Struct_2(vec2<f32>(1000f, -164f), vec2<u32>(11324u, 51036u), Struct_1(0u, u_input.b.yzy)), Struct_1(26949u, u_input.b.zxz)))), any(!vec3<bool>(all(vec3<bool>(true, var_0.x, true)), var_0.x || var_0.x, true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-406f, 967f), vec2<f32>(1752f, -1270f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-790f, -793f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(387f, -757f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1149f, -523f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1318f, 137f) + vec2<f32>(635f, 405f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 2384f) - vec2<f32>(317f, -128f)))))))));
    let var_2 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), vec2<f32>(var_1.x, 1446f), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-734f, var_1.x) - vec2<f32>(333f, -437f)))), _wgslsmith_div_vec2_f32(var_1, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_1 - vec2<f32>(732f, -595f)))))), select(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 70956u)), _wgslsmith_mult_u32(56367u, _wgslsmith_mod_u32(4294967295u, 53121u))), max(vec2<u32>(1u, 1u), ~vec2<u32>(16355u, 4294967295u)), !vec2<bool>(func_1(Struct_1(4294967295u, u_input.b.zyx), Struct_2(var_1, vec2<u32>(4294967295u, 115397u), Struct_1(6904u, vec3<i32>(-1767i, -9647i, -2147483647i))), Struct_1(16325u, u_input.b.yxx)), func_1(Struct_1(96097u, vec3<i32>(u_input.b.x, 1i, u_input.b.x)), Struct_2(var_1, vec2<u32>(41518u, 65599u), Struct_1(4294967295u, u_input.a.xyz)), Struct_1(21094u, u_input.b.xwz)))), Struct_1(reverseBits(13750u), u_input.a.wzy));
    var var_3 = _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, 48438u, 0u), ~vec3<u32>(var_2.c.a, 16935u, var_2.c.a))), ~79282u) << (_wgslsmith_add_u32(min(1u, _wgslsmith_clamp_u32(0u, 4294967295u, var_2.b.x)) >> (var_2.b.x % 32u), var_2.c.a) % 32u);
    return u_input.a.x;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: u32) -> u32 {
    global0 = 4294967295u;
    var var_0 = _wgslsmith_mult_i32(-func_3(), u_input.a.x);
    let var_1 = vec3<i32>(u_input.a.x, 2147483647i, 11513i);
    let var_2 = Struct_2(arg_2.a.a, vec2<u32>(38075u, arg_2.b), arg_2.a.c);
    global0 = arg_3;
    return 0u;
}

fn func_4(arg_0: i32, arg_1: vec4<u32>) -> Struct_3 {
    global0 = arg_1.x >> (_wgslsmith_add_u32(arg_1.x, arg_1.x) % 32u);
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2307f, -441f) - vec2<f32>(328f, -727f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(155f, 1078f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1170f) - vec2<f32>(-616f, 554f))), !select(vec2<bool>(false, true), vec2<bool>(true, false), true))), ~countOneBits(vec2<u32>(38557u, arg_1.x)), Struct_1(max(125846u, ~4294967295u), vec3<i32>(2147483647i | arg_0, max(arg_0, -2147483647i), 7362i))), Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -195f), _wgslsmith_f_op_f32(floor(266f))), ~vec2<u32>(arg_1.x, arg_1.x), Struct_1(25823u, u_input.b.zxy)), _wgslsmith_sub_u32(~1u, 1u), true));
    var_0 = Struct_4(Struct_2(var_0.a.a, vec2<u32>(~4294967295u, 0u) & (firstTrailingBit(arg_1.wy) | ~arg_1.yy), var_0.a.c), var_0.b);
    var var_1 = reverseBits(-2147483647i);
    var var_2 = -33183i;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_div_f32(-1000f, -796f)), vec2<f32>(_wgslsmith_f_op_f32(1091f * -126f), _wgslsmith_f_op_f32(floor(-253f)))), vec2<u32>(firstTrailingBit(~21084u), 1u), Struct_1(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(82121u, 24229u, 27108u), vec3<u32>(83617u, 1u, 1u))), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-3033i, 52662i, 1i), vec3<i32>(u_input.b.x, u_input.a.x, -11627i), u_input.b.zzy), u_input.a.wxy, func_1(Struct_1(3098u, u_input.b.xww), Struct_2(vec2<f32>(1324f, -199f), vec2<u32>(4294967295u, 54359u), Struct_1(36745u, vec3<i32>(4203i, u_input.a.x, 10487i))), Struct_1(52103u, vec3<i32>(1i, u_input.b.x, u_input.b.x)))))), func_4(~(~min(u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(1u), func_2(460f, vec4<u32>(5374u, 32090u, 112101u, 0u), Struct_3(Struct_2(vec2<f32>(-1374f, -1407f), vec2<u32>(7571u, 78405u), Struct_1(25070u, u_input.a.wzx)), 0u, false), 25654u), ~83236u, 56521u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 4294967295u, 18581u, 55572u)))));
    let var_1 = ~var_0.a.c.a;
    var var_2 = -var_0.a.c.b.x;
    let var_3 = Struct_4(Struct_2(var_0.a.a, select(vec2<u32>(_wgslsmith_mult_u32(54827u, 26221u), var_1), ~(~vec2<u32>(var_0.a.c.a, var_0.a.b.x)), false), Struct_1(firstTrailingBit(0u), vec3<i32>(var_0.b.a.c.b.x, 68500i, var_0.a.c.b.x) >> (vec3<u32>(var_0.a.c.a, 1928u, var_0.a.c.a) % vec3<u32>(32u)))), func_4(firstTrailingBit(var_0.a.c.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(1u, reverseBits(69790u), ~1u, 4294967295u), ~vec4<u32>(var_0.b.a.b.x, var_0.a.b.x, var_1, var_1))));
    var_2 = -var_3.b.a.c.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.c.b, var_1, ~(~select(var_3.b.a.c.a | var_1, 3952u, var_3.b.c)));
}

