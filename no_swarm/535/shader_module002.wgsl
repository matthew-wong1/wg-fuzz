struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 106524u;

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, i32(-2147483648), 2147483647i);

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    global0 = u_input.c.x;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1214f, -1000f, 282f), vec3<f32>(-889f, -1559f, -285f), true)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2044f, 1533f, -1184f))), global2.x)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-614f, 316f, 1644f), vec3<f32>(1912f, 818f, 1040f)), vec3<f32>(1f, 1f, 1f))))));
    global2 = !(!vec2<bool>(all(select(vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(false, true, global2.x, true), true)), any(!vec4<bool>(false, true, global2.x, false))));
    var var_1 = Struct_1((_wgslsmith_add_vec2_i32(vec2<i32>(global1.x, -1i), min(vec2<i32>(global1.x, global1.x), vec2<i32>(global1.x, global1.x))) << (select(u_input.c.zy ^ u_input.c.xx, u_input.b, global1.x != global1.x) % vec2<u32>(32u))) & select(vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -77624i, global1.x), vec3<i32>(-54116i, global1.x, -6217i))), vec2<i32>(i32(-1i) * -2147483647i, -2147483647i), !select(false, global2.x, global2.x)));
    var var_2 = Struct_2(Struct_1(~(~vec2<i32>(global1.x, -2147483647i)) & (var_1.a ^ -global1.xz)), Struct_1(-vec2<i32>(i32(-1i) * -1i, -2147483647i)), u_input.e);
    return var_2.b.a.x;
}

fn func_2() -> Struct_3 {
    global1 = vec3<i32>(func_3(), abs(~countOneBits(global1.x)) & _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global1.xy >> (vec2<u32>(u_input.d, u_input.e.x) % vec2<u32>(32u)), global1.zz), ~global1.zy), ~(0i));
    var var_0 = Struct_2(Struct_1(vec2<i32>(global1.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(48248i, -1935i, global1.x), vec3<i32>(-16872i, global1.x, global1.x)), firstLeadingBit(vec3<i32>(global1.x, global1.x, global1.x))))), Struct_1(_wgslsmith_div_vec2_i32(global1.yy, vec2<i32>(global1.x, ~50363i))), ~(~(vec3<u32>(24641u, u_input.d, u_input.d) ^ vec3<u32>(0u, 21432u, 0u))));
    global2 = vec2<bool>(all(!vec3<bool>(true, any(vec3<bool>(global2.x, true, global2.x)), true)), !((-508i < _wgslsmith_sub_i32(var_0.b.a.x, 42077i)) || any(!vec3<bool>(global2.x, global2.x, false))));
    var var_1 = Struct_3(_wgslsmith_clamp_vec3_u32(var_0.c, var_0.c, firstTrailingBit(min(var_0.c, select(vec3<u32>(32223u, 13121u, var_0.c.x), u_input.c, global2.x)))), vec2<u32>(u_input.d, ~firstTrailingBit(103712u)) & countOneBits(u_input.c.zx), firstLeadingBit(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4455u, 13361u, var_0.c.x, 6551u) | vec4<u32>(13087u, 0u, var_0.c.x, var_0.c.x), ~vec4<u32>(58966u, u_input.c.x, 33454u, 59564u)))));
    let var_2 = select(u_input.b, u_input.c.xx, global2.x);
    return Struct_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, ~76451u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, u_input.a, 19136u), u_input.e)), _wgslsmith_div_vec3_u32(var_1.a, _wgslsmith_sub_vec3_u32(u_input.c, var_1.c.xzy)), ~(vec3<u32>(var_0.c.x, var_1.b.x, 8921u) | var_1.c.wwy)) | countOneBits(reverseBits(abs(vec3<u32>(u_input.d, u_input.c.x, u_input.c.x)))), vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.e.yy & countOneBits(vec2<u32>(4294967295u, 54159u)), u_input.b), u_input.d), ~var_1.c);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = true;
    global0 = _wgslsmith_mod_u32(1u, select(max(44314u, 0u), u_input.d, all(vec3<bool>(arg_0, arg_0, false)) | select(true, arg_1.x, arg_0))) ^ 1u;
    let var_2 = func_2();
    var var_3 = Struct_1(global1.yz);
    return Struct_2(Struct_1(global1.xx), Struct_1(_wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(global1.xy, global1.zx), -vec2<i32>(-47672i, 1i))), vec3<u32>(34923u, 4294967295u, ~u_input.c.x));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_3 {
    global0 = func_2().a.x;
    return Struct_3(arg_3.c.zyy, vec2<u32>(reverseBits(0u), 4294967295u), countOneBits(arg_3.c) << (~(~arg_3.c) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.d, func_1(!(!any(vec2<bool>(global2.x, global2.x))), vec2<bool>(!global2.x, global2.x || true)), max(~u_input.b, u_input.b << (vec2<u32>(~3209u, 1u) % vec2<u32>(32u))), func_2());
    let var_1 = func_1(true, select(!select(vec2<bool>(false, global2.x), select(vec2<bool>(global2.x, global2.x), vec2<bool>(true, true), global2.x), all(vec4<bool>(global2.x, global2.x, global2.x, global2.x))), vec2<bool>(any(select(vec4<bool>(global2.x, false, false, global2.x), vec4<bool>(global2.x, true, global2.x, true), vec4<bool>(global2.x, true, false, global2.x))), true), select(select(select(vec2<bool>(false, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, false)), !vec2<bool>(global2.x, global2.x), true), !select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, global2.x), false), true)));
    global1 = -(vec3<i32>(-global1.x, global1.x, -(var_1.b.a.x ^ -1i)) << (~(~vec3<u32>(0u, 0u, var_1.c.x)) % vec3<u32>(32u)));
    global0 = 1327u;
    var var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(31636u, ~_wgslsmith_clamp_u32(var_0.c.x, abs(min(var_0.b.x, 5245u)), 50642u), -select(~vec3<i32>(-2147483647i, -1i, -6704i), max(vec3<i32>(9405i, global1.x, global1.x), -vec3<i32>(global1.x, var_1.a.a.x, -1i)), vec3<bool>(!global2.x, all(vec3<bool>(true, true, global2.x)), global2.x)));
}

