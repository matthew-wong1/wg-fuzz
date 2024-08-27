struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<u32>) -> vec3<u32> {
    var var_0 = arg_0.a.a;
    var var_1 = firstLeadingBit(reverseBits(max(min(global0.x, 6468u), _wgslsmith_mult_u32(1u, 26590u)))) << (_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, ~5636u | min(global0.x, 0u)), 0u) % 32u);
    var_1 = ~arg_2.x;
    var var_2 = Struct_2(arg_1.a, abs(_wgslsmith_div_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-16962i, arg_0.b.x), u_input.c.yx)), ~(-vec2<i32>(arg_0.b.x, -16122i)))), arg_1.c);
    var_1 = u_input.d;
    return min(abs(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_2, global0.yx), max(51263u, 4294967295u), _wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(4294967295u, arg_2.x)))) | vec3<u32>(4294967295u, 4294967295u, _wgslsmith_mod_u32(~arg_2.x, _wgslsmith_add_u32(4294967295u, 0u))), vec3<u32>(global0.x, u_input.d, u_input.a.x));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, ~firstTrailingBit(u_input.e), _wgslsmith_sub_i32(max(u_input.b.x, 20619i), -u_input.b.x), -2147483647i), countOneBits(-vec4<i32>(u_input.c.x, 0i, 32086i, -22410i))), 1i, firstTrailingBit(abs(0i)), -14077i);
    global0 = vec3<u32>(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(123630u, u_input.d), 3226u), countOneBits(23773u | ~u_input.d), 60304u) << (~min(func_3(Struct_2(Struct_1(-701f), vec2<i32>(-2147483647i, var_0.x), u_input.e), Struct_3(Struct_1(286f), true, 9711i), global0.xz), func_3(Struct_2(Struct_1(-1146f), var_0.ww, -15411i), Struct_3(Struct_1(arg_0), true, u_input.b.x), global0.zx)) % vec3<u32>(32u));
    var var_1 = true;
    var var_2 = any(!(!vec3<bool>(arg_0 < -831f, true, false)));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))))), false, u_input.b.x);
    return Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.a.a)) + var_3.a.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_3.a.a)))))), vec2<i32>(~_wgslsmith_div_i32(u_input.c.x, var_3.c), -49233i), -(i32(-1i) * -2147483647i));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> vec3<u32> {
    global0 = reverseBits(firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(global0.x, 32889u), ~_wgslsmith_mod_u32(u_input.d, 1896u), 93145u)));
    global0 = ~select(vec3<u32>(~(~2903u), u_input.d >> (1u % 32u), ~u_input.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, global0.x), max(vec3<u32>(global0.x, 20900u, 0u), vec3<u32>(30191u, global0.x, u_input.d))) | ~(~vec3<u32>(92390u, u_input.a.x, u_input.a.x)), select(vec3<bool>(!arg_2.b, true, !arg_2.b), !vec3<bool>(arg_2.b, true, arg_2.b), !select(vec3<bool>(false, arg_2.b, true), vec3<bool>(arg_2.b, false, true), vec3<bool>(true, true, arg_2.b))));
    let var_0 = Struct_2(arg_2.a, firstLeadingBit(firstLeadingBit(vec2<i32>(arg_0, -2147483647i))), arg_0);
    let var_1 = arg_2;
    global0 = vec3<u32>(54712u, 0u, _wgslsmith_clamp_u32(~global0.x, ~global0.x, 3297u)) | ~(~vec3<u32>(_wgslsmith_sub_u32(72621u, 28981u), ~0u, global0.x));
    return ~(~(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(45255u, u_input.d, 54048u), vec3<u32>(global0.x, global0.x, 0u), vec3<u32>(0u, 1u, 4294967295u)) << (vec3<u32>(1u, 1u, global0.x) % vec3<u32>(32u)))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: vec3<f32>) -> vec2<f32> {
    let var_0 = vec3<u32>(~(~1u), 59473u, arg_1);
    global0 = select(func_4(-1i, func_2(arg_3.x), Struct_3(func_2(arg_3.x).a, arg_2, -u_input.e)), vec3<u32>(abs(~25357u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 73062u), global0.xz >> (vec2<u32>(arg_1, 13653u) % vec2<u32>(32u))), global0.x), vec3<bool>(true, false, false)) << (var_0 % vec3<u32>(32u));
    global0 = ~select(var_0, vec3<u32>(global0.x, global0.x, ~1u), select(select(!vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, arg_2, true), arg_3.x != 584f), !(!vec3<bool>(false, true, arg_2)), select(select(vec3<bool>(arg_2, false, true), vec3<bool>(false, false, arg_2), false), vec3<bool>(true, true, true), arg_2)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_3.xx, _wgslsmith_div_vec2_f32(arg_3.zy, arg_3.xx))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_3.yy * arg_3.xx), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_3.x, arg_3.x))))) - _wgslsmith_f_op_vec2_f32(-arg_3.yx))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<u32>(~global0.x, global0.x, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1141f, 1540f), vec2<f32>(-1106f, 515f))) + vec2<f32>(2016f, 471f)))) * _wgslsmith_f_op_vec2_f32(func_1(global0.x, ~(~global0.x), true, vec3<f32>(_wgslsmith_f_op_f32(619f + -1555f), 242f, _wgslsmith_f_op_f32(f32(-1f) * -297f))))), max(max(u_input.b.x, _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.c.x, -2147483647i), u_input.c.xx), vec2<i32>(u_input.c.x, -2147483647i))), u_input.e), u_input.e, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e ^ u_input.e, ~u_input.c.x, 1i, -u_input.e), select(select(vec4<i32>(u_input.e, 1i, u_input.b.x, -18441i), vec4<i32>(-1i, 9501i, 2147483647i, 21373i), true), vec4<i32>(u_input.c.x, -1i, u_input.e, u_input.b.x), true)), ~max(i32(-1i) * -1i, -7505i), -(-u_input.c.x | _wgslsmith_clamp_i32(0i, u_input.e, 2147483647i)), select(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 51998i), vec2<i32>(u_input.e, u_input.c.x)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))))));
}

