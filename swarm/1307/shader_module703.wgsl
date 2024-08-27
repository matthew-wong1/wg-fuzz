struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = u_input.a.x | ~(-10823i);
    var var_1 = vec4<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))), true, !(_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, 41318u, 4294967295u), 1u) >= _wgslsmith_sub_u32(~52890u, ~65086u)), !(!any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))));
    var var_2 = 4294967295u;
    let var_3 = Struct_2(Struct_1(2147483647i, vec4<bool>(!var_1.x && true, var_1.x, _wgslsmith_mod_i32(var_0, u_input.a.x) < abs(-1i), any(vec2<bool>(true, var_1.x)) & true), arg_0, u_input.a.x, arg_0), u_input.a.x, Struct_1(-reverseBits(-548i) ^ u_input.a.x, !select(!vec4<bool>(var_1.x, var_1.x, var_1.x, false), !vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), arg_0, var_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.x, -1000f)), -393f, arg_0.x) - _wgslsmith_div_vec3_f32(arg_0, _wgslsmith_f_op_vec3_f32(step(arg_0, arg_0))))));
    let var_4 = arg_0.x;
    return firstTrailingBit(reverseBits(~0u));
}

fn func_2(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = select(vec2<bool>(all(vec4<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(false, false, true, false)), true, any(vec2<bool>(true, false)))), all(vec3<bool>(select(false, false, true), true, true))), vec2<bool>(true, true), vec2<bool>(true || (-17698i > (u_input.a.x ^ u_input.a.x)), any(vec3<bool>(true, true, true))));
    let var_1 = var_0.x;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -794f), -970f)) - -1274f), -2109f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(538f * 126f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -346f))));
    let var_3 = vec4<u32>(arg_0.x, _wgslsmith_div_u32(4781u, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_2))) ^ arg_0.x), ~arg_0.x, 1u);
    let var_4 = Struct_2(Struct_1(-u_input.a.x, vec4<bool>((42558u >> (var_3.x % 32u)) < (arg_0.x >> (0u % 32u)), var_1, var_1, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, _wgslsmith_f_op_f32(trunc(var_2)), _wgslsmith_div_f32(-351f, var_2)) - vec3<f32>(_wgslsmith_f_op_f32(-var_2), -1265f, _wgslsmith_f_op_f32(-var_2))), -(~0i), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, var_2) * vec3<f32>(var_2, 118f, -506f)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_2, 393f, var_2), vec3<f32>(var_2, var_2, 179f)))))), min(firstTrailingBit(-u_input.a.x), u_input.a.x), Struct_1(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, 14037i, -3899i, u_input.a.x)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 14662i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -26595i, u_input.a.x, -1i), vec4<i32>(3435i, 0i, u_input.a.x, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 2226i, -21318i, 57749i)))), select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_1)), select(select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(true, var_1, var_0.x, true), vec4<bool>(true, false, var_1, false)), vec4<bool>(var_1, var_0.x, var_0.x, false), false | var_1), any(vec3<bool>(true, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_2, var_2, var_2), vec3<f32>(var_2, 1000f, var_2))))), 1i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(212f, var_2, var_2), vec3<f32>(var_2, var_2, var_2)))))));
    return vec4<bool>(!select(false, true, var_4.c.b.x || var_0.x), !(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_0.x, var_3.x), vec3<u32>(4294967295u, var_3.x, 1u)), select(vec3<u32>(4294967295u, 0u, 41261u), vec3<u32>(4294967295u, 52905u, 24022u), var_4.c.b.x)) != ~var_3.x), true, all(var_4.a.b));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_1(u_input.a.x, !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), func_2(vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-303f, 322f, 137f))))), 0i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1112f - _wgslsmith_f_op_f32(f32(-1f) * -149f))), 434f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(886f, 579f)) - 1311f)));
    var var_1 = vec4<u32>(~64266u & (~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 20286u), vec2<u32>(4294967295u, 1u)) ^ 25803u), 18646u, min(firstTrailingBit(4318u), _wgslsmith_div_u32(~(~4294967295u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(85399u, 76280u), vec2<u32>(1u, 3128u)), 1u))), ~58195u);
    return Struct_4(var_1.x, false, ~1u, Struct_2(Struct_1(~firstLeadingBit(-45100i), var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(-1330f, var_0.c.x, var_0.c.x)) * _wgslsmith_f_op_vec3_f32(var_0.e + var_0.e)), 2147483647i, var_0.c), countOneBits(var_0.a), Struct_1(var_0.d, var_0.b, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.e.x, -165f, var_0.e.x), _wgslsmith_div_vec3_f32(vec3<f32>(-478f, 569f, var_0.e.x), vec3<f32>(var_0.e.x, -280f, -576f))), 46922i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-221f, 543f, -799f)) * var_0.e))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4) -> u32 {
    return 1u;
}

fn func_5(arg_0: f32, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = func_1();
    var var_1 = !(_wgslsmith_dot_vec3_u32(arg_1.wzy, abs(select(vec3<u32>(1u, var_0.a, 45482u), vec3<u32>(0u, var_0.c, 42656u), false))) <= arg_1.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(149f)))) * -2539f) - var_0.d.a.c.x);
    var var_3 = _wgslsmith_dot_vec2_i32(firstTrailingBit(max(vec2<i32>(-1i, -765i), u_input.a.xz)), u_input.a.yz << (arg_1.wy % vec2<u32>(32u)));
    var var_4 = var_0.d.a.b;
    return Struct_2(Struct_1(_wgslsmith_sub_i32(i32(-1i) * -43557i, -countOneBits(4199i)), vec4<bool>(false, any(var_0.d.a.b.zxw), all(var_0.d.c.b.wz), !var_0.d.a.b.x), var_0.d.c.c, ~(-2147483647i), var_0.d.a.e), 7623i & _wgslsmith_dot_vec3_i32(~u_input.a, u_input.a), Struct_1(1i, func_1().d.c.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, var_0.d.c.c.x))), _wgslsmith_f_op_vec3_f32(-var_0.d.c.c))), -1i, var_0.d.c.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(false & !select(false, false, true), true, all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true))), 1f != _wgslsmith_f_op_f32(floor(1f))));
    let var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec4<u32>(44584u | _wgslsmith_clamp_u32(firstTrailingBit(0u), 1u, ~6653u), _wgslsmith_add_u32(19242u, func_4(Struct_3(vec4<u32>(2566u, 1u, 1u, 51284u), -29419i, vec2<bool>(false, true), Struct_1(0i, vec4<bool>(var_0, var_0, true, var_0), vec3<f32>(-809f, -1043f, 698f), u_input.a.x, vec3<f32>(862f, 140f, 1000f))), Struct_4(1u, var_0, 4294967295u, Struct_2(Struct_1(u_input.a.x, vec4<bool>(false, true, var_0, var_0), vec3<f32>(-2885f, 413f, -871f), -40851i, vec3<f32>(-1170f, 1318f, 1000f)), 34695i, Struct_1(2147483647i, vec4<bool>(false, true, true, true), vec3<f32>(1000f, -1079f, 820f), -1i, vec3<f32>(-1537f, 2476f, 635f)))), func_1())), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 1u, 1u)), abs(vec3<u32>(0u, 4294967295u, 1u)) | select(vec3<u32>(13836u, 1u, 4294967295u), vec3<u32>(28092u, 62321u, 4294967295u), vec3<bool>(true, var_0, var_0))), _wgslsmith_mod_u32(abs(func_3(vec3<f32>(1499f, -498f, 100f))), ~_wgslsmith_div_u32(4294967295u, 74105u))));
    var var_2 = var_1.c;
    var_2 = Struct_1(2147483647i, var_1.a.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_1.c.e)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.e.x, 236f) * _wgslsmith_f_op_f32(-889f * var_1.a.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.c.x + var_2.e.x) + _wgslsmith_f_op_f32(-var_2.e.x)), -1398f)), min(var_2.d, var_2.a), vec3<f32>(639f, var_1.a.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x))));
    let var_3 = !func_2(vec4<u32>(1u, 15908u, 53937u, ~0u)).zy;
    var var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_2.e))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(var_1.a.c.x)), 1u, _wgslsmith_div_vec2_f32(var_1.c.c.xy, _wgslsmith_f_op_vec2_f32(-var_2.e.zy)));
}

