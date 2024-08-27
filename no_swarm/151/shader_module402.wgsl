struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec2<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    global1 = vec2<bool>(false, true);
    let var_0 = Struct_2(-2147483647i, vec4<u32>(1u, 4294967295u, 0u, ~arg_0.c.x), Struct_1(select(vec3<i32>(arg_0.a.x, 0i, 1i), -u_input.a, global1.x), arg_0.b, abs(~firstTrailingBit(vec2<u32>(2507u, 0u))), vec3<u32>(arg_0.c.x << (~arg_1.x % 32u), (arg_0.c.x & 39810u) ^ _wgslsmith_sub_u32(global0.x, 33290u), ~select(global0.x, arg_0.d.x, global1.x)), !(!select(vec4<bool>(global1.x, global1.x, true, arg_0.e.x), arg_0.e, vec4<bool>(false, false, arg_0.e.x, false)))), any(select(!select(vec4<bool>(false, global1.x, global1.x, arg_0.e.x), vec4<bool>(arg_0.e.x, global1.x, global1.x, true), vec4<bool>(arg_0.e.x, false, false, true)), arg_0.e, all(!arg_0.e.yz))), min(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(31083i, u_input.a.x)) ^ _wgslsmith_div_vec2_i32(u_input.a.zz, vec2<i32>(-55004i, arg_0.a.x)), _wgslsmith_clamp_vec2_i32(u_input.a.xz, vec2<i32>(-18465i, arg_0.a.x), vec2<i32>(arg_0.a.x, u_input.a.x)) << (min(vec2<u32>(1u, global0.x), vec2<u32>(82458u, 65278u)) % vec2<u32>(32u))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_sub_i32(arg_0.a.x, -11140i)), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-297i, -2147483647i)), firstLeadingBit(vec2<i32>(arg_0.a.x, arg_0.a.x))))));
    var var_1 = var_0.d;
    let var_2 = ~(firstTrailingBit(abs(firstTrailingBit(vec4<u32>(var_0.b.x, arg_0.c.x, 4294967295u, 514u)))) | var_0.b);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(round(var_0.c.b)), 401f, var_0.c.b);
    return _wgslsmith_f_op_f32(-arg_0.b);
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    var var_0 = 4294967295u | global0.x;
    var var_1 = Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.a.x, 17924i, arg_0.x)), firstTrailingBit(u_input.a)), abs(vec3<i32>(-1i) * -arg_0)), _wgslsmith_f_op_f32(func_3(Struct_1(~vec3<i32>(50076i, 33733i, arg_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-2317f)), -1239f, true)), vec2<u32>(4294967295u << (0u % 32u), 4294967295u ^ global0.x), abs(_wgslsmith_add_vec3_u32(vec3<u32>(524u, global0.x, 16238u), vec3<u32>(global0.x, 13793u, global0.x))), vec4<bool>(true, false & global1.x, false, global1.x || global1.x)), (~global0.yz ^ _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, 6454u), global0.yy)) >> (~countOneBits(global0.yx) % vec2<u32>(32u)))), abs(global0.xz), vec3<u32>(global0.x, global0.x, (global0.x >> (33900u % 32u)) & _wgslsmith_clamp_u32(~70250u, 26587u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 0u), vec2<u32>(global0.x, 44784u)))), !select(select(vec4<bool>(true, true, true, global1.x), vec4<bool>(false, true, false, global1.x), global1.x), vec4<bool>(global0.x > global0.x, all(vec2<bool>(global1.x, global1.x)), false, true), !vec4<bool>(false, global1.x, global1.x, true)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b, var_1.b), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2077f, var_1.b))), any(!vec3<bool>(global1.x, global1.x, global1.x)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-639f, var_1.b), vec2<f32>(854f, -928f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.b, 1000f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.b, 551f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1046f, var_1.b) * vec2<f32>(-1378f, var_1.b)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2540f, 475f))))))));
    let var_3 = Struct_1(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(-var_2.x)), ~vec2<u32>(min(var_1.c.x, global0.x), 4294967295u) | global0.xy, vec3<u32>(max(~0u, global0.x), global0.x, global0.x), vec4<bool>(all(!(!vec4<bool>(false, false, true, var_1.e.x))), !(!(var_1.b == var_1.b)), !any(select(vec3<bool>(global1.x, global1.x, var_1.e.x), vec3<bool>(global1.x, var_1.e.x, false), true)), !(!all(vec2<bool>(global1.x, true)))));
    var var_4 = Struct_2(-_wgslsmith_mod_i32(1i, u_input.a.x & 28429i) | -1i, _wgslsmith_clamp_vec4_u32(vec4<u32>(~global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(12026u, 4294967295u), vec2<u32>(var_1.d.x, 2545u)), ~36277u, global0.x) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global0.x, global0.x, 15559u), vec4<u32>(4294967295u, 32494u, 1u, global0.x)), firstTrailingBit(select(vec4<u32>(0u, var_3.d.x, var_3.c.x, 4294967295u), ~vec4<u32>(4294967295u, var_1.c.x, var_1.d.x, var_1.d.x), var_3.b >= 426f)), vec4<u32>(17993u, 4294967295u, ~var_1.d.x, var_1.c.x)), Struct_1(abs(reverseBits(arg_0)), -1508f, ~max(~vec2<u32>(726u, 1u), vec2<u32>(var_3.d.x, var_3.d.x)), var_3.d, vec4<bool>(var_1.e.x, true, false, true)), var_1.e.x, ~(0i >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.d.x, global0.x, 4294967295u, var_1.d.x), vec4<u32>(16298u, 72306u, var_3.d.x, 1u)) % 32u)));
    return _wgslsmith_div_u32(1u, ~1u);
}

fn func_4(arg_0: u32, arg_1: vec3<f32>) -> vec4<bool> {
    global1 = select(select(select(!(!vec2<bool>(global1.x, global1.x)), vec2<bool>(any(vec4<bool>(false, global1.x, false, true)), true), true), vec2<bool>(!any(vec3<bool>(true, global1.x, false)), select(true, true, !global1.x)), select(select(vec2<bool>(true, global1.x), select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x), global1.x), select(vec2<bool>(true, false), vec2<bool>(global1.x, true), false)), !select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, false), vec2<bool>(false, true)), select(select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false), true), vec2<bool>(true, false), select(vec2<bool>(global1.x, true), vec2<bool>(false, global1.x), vec2<bool>(false, global1.x))))), vec2<bool>(global1.x || !all(vec3<bool>(false, global1.x, global1.x)), ((u_input.a.x ^ -45794i) == u_input.a.x) & true), !vec2<bool>(global1.x, all(!vec4<bool>(global1.x, global1.x, false, true))));
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(~global0.yx, _wgslsmith_mult_vec2_u32(global0.xy >> (global0.zx % vec2<u32>(32u)), max(vec2<u32>(98305u, arg_0), global0.zy))), 0u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(37444u, 63797u, 7371u) | vec3<u32>(global0.x, 53266u, 4294967295u), min(_wgslsmith_sub_vec3_u32(vec3<u32>(17456u, 4294967295u, global0.x), vec3<u32>(global0.x, arg_0, global0.x)), vec3<u32>(23907u, 0u, global0.x))), ~min(~global0.x, 4294967295u), 1u));
    var var_1 = _wgslsmith_clamp_vec3_u32(var_0, ~var_0, ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(var_0, var_0), ~vec3<u32>(global0.x, global0.x, global0.x))) & vec3<u32>(~(reverseBits(arg_0) & ~0u), global0.x, 1u);
    let var_2 = vec3<bool>(global1.x, true, true);
    var var_3 = Struct_1(u_input.a, _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(2120f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))))), global0.zz, ~(~(vec3<u32>(1u, 8002u, var_0.x) << (~vec3<u32>(80252u, 0u, 24095u) % vec3<u32>(32u)))), select(vec4<bool>(global1.x, true, !(!var_2.x), var_1.x < arg_0), !vec4<bool>(false, var_2.x, all(vec3<bool>(var_2.x, true, true)), select(false, var_2.x, true)), !(!select(vec4<bool>(var_2.x, var_2.x, false, global1.x), vec4<bool>(global1.x, true, true, global1.x), true))));
    return !select(select(select(select(var_3.e, var_3.e, var_3.e), vec4<bool>(var_3.e.x, global1.x, true, var_2.x), -2147483647i != var_3.a.x), var_3.e, vec4<bool>(true, all(vec3<bool>(true, false, global1.x)), var_3.e.x, var_2.x)), !vec4<bool>(true, all(vec2<bool>(true, true)), any(vec2<bool>(var_3.e.x, global1.x)), var_2.x), select(select(select(vec4<bool>(true, var_2.x, var_3.e.x, false), var_3.e, var_3.e.x), !var_3.e, global1.x), var_3.e, vec4<bool>(true, true, !global1.x, true | var_3.e.x)));
}

fn func_1() -> vec2<u32> {
    global0 = vec3<u32>(global0.x, ~(global0.x | _wgslsmith_clamp_u32(1u, 1u, _wgslsmith_mult_u32(0u, global0.x))), reverseBits(_wgslsmith_mod_u32(global0.x, _wgslsmith_div_u32(global0.x, global0.x))));
    let var_0 = func_4(~(func_2(u_input.a) & min(global0.x, ~1137u)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-534f, _wgslsmith_f_op_f32(f32(-1f) * -879f)), _wgslsmith_div_f32(-315f, -934f))), -1234f, -1559f));
    global1 = vec2<bool>(global1.x, true);
    let var_1 = ~vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(global0.x, 49892u), ~global0.x), 0u), _wgslsmith_dot_vec3_u32((vec3<u32>(global0.x, 26968u, global0.x) >> (vec3<u32>(global0.x, global0.x, 44980u) % vec3<u32>(32u))) ^ abs(vec3<u32>(4294967295u, 1u, 1u)), vec3<u32>(6813u, 466u, global0.x)), global0.x);
    var var_2 = countOneBits(~48012u) << (0u % 32u);
    return ~max(~(var_1.zz & ~var_1.zz), vec2<u32>(0u, 38606u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(reverseBits(select(vec3<i32>(-40486i, u_input.a.x, u_input.a.x) & u_input.a, _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(0i, 0i, u_input.a.x)), global1.x) >> (vec3<u32>(global0.x, _wgslsmith_add_u32(0u, global0.x), ~11752u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -273f)))), func_1(), vec3<u32>(1u, ~1u, ~(~(~4294967295u))), vec4<bool>(true, global1.x, true, false));
    global1 = vec2<bool>(true, ~max(u_input.a.x, u_input.a.x) <= select(~(-29122i ^ u_input.a.x), min(_wgslsmith_sub_i32(u_input.a.x, var_0.a.x), firstLeadingBit(-35919i)), var_0.e.x));
    let var_1 = firstLeadingBit(u_input.a.zz);
    let var_2 = Struct_2(~(-abs(i32(-1i) * -20363i)), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, 4294967295u), abs(_wgslsmith_clamp_u32(global0.x, var_0.d.x, var_0.c.x)), select(reverseBits(global0.x), firstLeadingBit(42874u), all(vec2<bool>(false, global1.x))), 13758u | global0.x), ~countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, var_0.d.x, 11309u, 23041u), vec4<u32>(var_0.c.x, var_0.c.x, global0.x, 21253u), vec4<u32>(26453u, var_0.c.x, 37939u, global0.x)))), Struct_1(-min(u_input.a, vec3<i32>(-2147483647i, 16810i, var_1.x) & vec3<i32>(var_0.a.x, var_0.a.x, 8752i)), var_0.b, ~firstLeadingBit(vec2<u32>(19934u, global0.x)), abs(var_0.d), vec4<bool>(any(select(var_0.e.zwz, vec3<bool>(var_0.e.x, true, global1.x), var_0.e.x)), any(vec2<bool>(false, global1.x)) || !global1.x, var_0.e.x, false)), true, select(~0i, -max(min(2147483647i, -7438i), u_input.a.x), !any(var_0.e)));
    global1 = vec2<bool>(false, !(!(!global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_mod_i32(-1i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-818f - var_0.b), -1144f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(580f * -489f))) * _wgslsmith_f_op_f32(max(var_2.c.b, _wgslsmith_f_op_f32(round(var_2.c.b)))))), ~_wgslsmith_mult_u32(global0.x, _wgslsmith_add_u32(4294967295u, global0.x)) >> (global0.x % 32u));
}

