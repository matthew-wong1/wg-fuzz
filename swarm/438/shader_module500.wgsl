struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-44248i, -1i, i32(-2147483648), -20496i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = arg_1;
    let var_1 = arg_0.b;
    var_0 = arg_1;
    var var_2 = arg_0.b.d.x;
    let var_3 = -569f;
    return var_1.c;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<i32>) -> i32 {
    global0 = func_3(Struct_2(2147483647i, Struct_1(vec2<i32>(~60231i, 10239i), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), arg_2, arg_1), Struct_1(abs(vec2<i32>(u_input.a.x, global0.x) ^ u_input.a.yx), vec3<bool>(true, true, true), arg_2, arg_1)), Struct_1(~global0.xz, vec3<bool>(any(vec2<bool>(true, false)), true, true), min(arg_2, _wgslsmith_mult_vec4_i32(~arg_2, firstLeadingBit(arg_2))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(295f, 913f, 805f, 175f) * vec4<f32>(arg_0, 714f, arg_1.x, -1144f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-887f, arg_0, 402f, -1042f) + _wgslsmith_f_op_vec4_f32(step(arg_1, vec4<f32>(arg_0, arg_1.x, -1303f, -240f))))))));
    var var_0 = Struct_1(~max(u_input.a.xx, -global0.wy), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), vec3<bool>(any(vec3<bool>(false, true, false)), true, true), !any(vec2<bool>(true, true))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), true), select(vec3<bool>(true, global0.x != u_input.a.x, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec2<bool>(false, true)), false, true))), vec4<i32>(_wgslsmith_clamp_i32(-1i, abs(13744i), -1i), global0.x, global0.x, _wgslsmith_dot_vec3_i32(global0.yxw, _wgslsmith_div_vec3_i32(~vec3<i32>(-45722i, 2147483647i, global0.x), global0.xzz))), vec4<f32>(arg_1.x, -1972f, arg_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1659f + 1646f) + _wgslsmith_f_op_f32(arg_1.x + -727f))))));
    global0 = var_0.c;
    let var_1 = -abs(var_0.a.x);
    var var_2 = var_0.d.yz;
    return -min(_wgslsmith_dot_vec3_i32(arg_2.xxx, u_input.a) ^ _wgslsmith_dot_vec2_i32(var_0.c.wx, var_0.a), 1i) ^ arg_2.x;
}

fn func_1(arg_0: vec2<i32>) -> bool {
    global0 = _wgslsmith_div_vec4_i32(-vec4<i32>(84800i, 1i, _wgslsmith_mod_i32(~1i, _wgslsmith_div_i32(-2147483647i, -2147483647i)), u_input.a.x), vec4<i32>((_wgslsmith_mult_i32(-1i, global0.x) & 0i) & ~(-u_input.a.x), -2147483647i, _wgslsmith_dot_vec2_i32(-u_input.a.zz ^ firstLeadingBit(vec2<i32>(global0.x, -2147483647i)), -(~vec2<i32>(-1i, -34832i))), _wgslsmith_clamp_i32(func_2(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(499f, -867f, -453f, 830f) * vec4<f32>(-1597f, -418f, 1166f, 251f)), vec4<i32>(0i, arg_0.x, global0.x, global0.x)), arg_0.x, ~arg_0.x)));
    var var_0 = select(~vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(34137u, 33882u, 1u, 0u), vec4<u32>(64613u, 0u, 0u, 0u), vec4<u32>(9877u, 4294967295u, 1u, 17035u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 26834u, 1u), vec4<u32>(894u, 1u, 52574u, 1u))), ~11040u), vec2<u32>(8970u, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)))), select(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 753u, 4294967295u), vec3<u32>(1u, 1u, 1u)) <= ~firstTrailingBit(4294967295u), all(vec4<bool>(true, true, true, true)), true));
    var_0 = reverseBits(~vec2<u32>(_wgslsmith_add_u32(12678u & var_0.x, max(var_0.x, 31735u)), _wgslsmith_mult_u32(var_0.x, 1u)));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-979f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1491f - 212f) + 743f)), any(vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), false, any(vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1394f, 160f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -338f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1506f, 196f), vec3<f32>(400f, 734f, -147f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1997f, -518f, -540f))))), true)));
    let var_2 = select(-(~arg_0.x) > _wgslsmith_sub_i32(-_wgslsmith_add_i32(0i, u_input.a.x), ~min(-2147483647i, global0.x)), false, var_1.b);
    return false;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = 46999u;
    let var_1 = arg_2.a.x;
    let var_2 = max(~_wgslsmith_add_u32(1u, 0u), reverseBits(_wgslsmith_div_u32(4294967295u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 94483u), vec2<u32>(39725u, 39659u))))));
    let var_3 = select(!select(!(!arg_2.b.xx), select(select(vec2<bool>(true, false), arg_2.b.xx, arg_2.b.zx), arg_2.b.xy, vec2<bool>(true, arg_2.b.x)), arg_2.b.zy), select(vec2<bool>(arg_2.b.x, arg_2.b.x), vec2<bool>(!(arg_2.b.x | arg_2.b.x), true), select(vec2<bool>(true, 1069f != arg_2.d.x), select(vec2<bool>(arg_2.b.x, arg_2.b.x), select(arg_2.b.xx, vec2<bool>(true, arg_2.b.x), arg_2.b.zx), arg_2.b.x), select(true, !arg_2.b.x, arg_2.b.x & false))), arg_2.b.x);
    global0 = arg_1;
    return Struct_3(Struct_2(53260i << (((var_2 | 0u) & (45740u ^ var_2)) % 32u), arg_2, Struct_1(vec2<i32>(firstLeadingBit(u_input.a.x), 25863i), select(arg_2.b, !arg_2.b, !var_3.x), arg_1 | vec4<i32>(arg_2.c.x, arg_0.x, arg_0.x, arg_2.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.d - arg_2.d) + _wgslsmith_f_op_vec4_f32(-arg_2.d)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d.x) - -660f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-544f, _wgslsmith_f_op_f32(step(385f, -531f)), all(arg_2.b)))), _wgslsmith_f_op_f32(f32(-1f) * -577f)), var_2, ~_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(0i, 0i, u_input.a.x, arg_1.x), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global0.x, u_input.a.x, -1i), vec4<i32>(-1i, 31876i, -2147483647i, global0.x))), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, -1i, arg_1.x, arg_0.x), vec4<i32>(0i, -1351i, global0.x, var_1)), vec4<i32>(-1i, u_input.a.x, arg_2.a.x, arg_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-668f, -969f))), _wgslsmith_div_vec2_f32(arg_2.d.xy, vec2<f32>(835f, 657f)))) * vec2<f32>(717f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.d.x)) * 383f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(_wgslsmith_div_vec2_i32(~global0.xw, vec2<i32>(0i, u_input.a.x) << (vec2<u32>(1u, 99238u) % vec2<u32>(32u))) | vec2<i32>(-2147483647i, _wgslsmith_add_i32(u_input.a.x, -75733i)), vec2<i32>(global0.x, -71345i), select(select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(vec2<i32>(-1i, u_input.a.x))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), vec4<i32>(_wgslsmith_add_i32(~_wgslsmith_mod_i32(global0.x, global0.x), u_input.a.x), i32(-1i) * -60195i, _wgslsmith_sub_i32(-1i, _wgslsmith_sub_i32(~global0.x, 2147483647i)), ~0i), Struct_1(vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), global0.yy), _wgslsmith_mult_i32(23266i, 1i)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec4<i32>(max(0i, 0i), global0.x & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -6465i, u_input.a.x, global0.x), vec4<i32>(1i, 18017i, -2147483647i, 0i)), _wgslsmith_sub_i32(9767i, u_input.a.x) & _wgslsmith_clamp_i32(1i, -1i, -18233i), u_input.a.x ^ 2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(476f, -1000f, 959f, -380f) + vec4<f32>(622f, -221f, -315f, -1000f)))))));
    var var_1 = Struct_1(-global0.xy, select(var_0.a.c.b, !vec3<bool>(var_0.a.b.b.x, any(vec2<bool>(true, var_0.a.b.b.x)), var_0.a.c.b.x), vec3<bool>(_wgslsmith_f_op_f32(floor(-1566f)) != var_0.a.c.d.x, any(var_0.a.c.b.xx), abs(var_0.c) > _wgslsmith_mult_u32(4294967295u, var_0.c))), func_3(var_0.a, func_4(vec2<i32>(global0.x, var_0.a.a), firstTrailingBit(min(vec4<i32>(59883i, 43872i, 3638i, 26835i), var_0.d)), var_0.a.b).a.c), _wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(-397f, _wgslsmith_f_op_f32(-var_0.a.b.d.x), var_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1370f, -1474f) - 161f))));
    var var_2 = var_0.a.b.b.x;
    var_0 = Struct_3(var_0.a, _wgslsmith_div_vec4_f32(var_0.a.c.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.e.x, 162f, 536f, var_0.a.b.d.x))), vec4<f32>(var_0.b.x, var_1.d.x, -541f, -666f))))), 1u, _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(6621i, var_1.c.x), i32(-1i) * -2810i, 1i, ~global0.x), var_1.c) >> (~vec4<u32>(1800u, 1u, 39367u, 1u) % vec4<u32>(32u)), var_0.e);
    var var_3 = Struct_3(var_0.a, var_0.a.b.d, var_0.c << (var_0.c % 32u), -(~(~select(var_1.c, vec4<i32>(19036i, global0.x, var_1.a.x, 13680i), var_1.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.x, -579f), vec2<f32>(var_0.a.c.d.x, var_0.a.b.d.x), var_0.a.b.b.zy)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1375f, var_0.e.x)))) * var_0.a.b.d.xx) + _wgslsmith_f_op_vec2_f32(select(var_1.d.wz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-114f, 396f), var_1.d.yw)), !(!var_0.a.c.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(10624u, -var_0.d.wxz, var_3.d.x | 2147483647i, var_3.b.x, vec2<f32>(_wgslsmith_f_op_f32(-func_4(vec2<i32>(1i, -15627i), vec4<i32>(1i, var_1.a.x, var_3.a.c.c.x, -2147483647i) ^ var_3.a.b.c, var_0.a.c).b.x), var_3.a.b.d.x));
}

