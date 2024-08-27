struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32) -> vec2<bool> {
    let var_0 = !(!(!(any(vec3<bool>(false, true, true)) && true)));
    let var_1 = vec4<bool>(!(u_input.a.x == (u_input.a.x & ~u_input.c.x)), false, var_0, var_0);
    var var_2 = reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) >> (~vec4<u32>(80837u, u_input.c.x, 43032u, u_input.a.x) % vec4<u32>(32u)), min(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(2147483647i, -1i, 0i, -4502i))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(19576i, -13254i, -13713i, 9073i), vec4<i32>(-2147483647i, 499i, -1i, -74258i)) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 41961u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, 0u, 4294967295u), vec4<u32>(u_input.a.x, 11836u, 68067u, u_input.a.x)), countOneBits(vec4<u32>(25871u, 25994u, 4294967295u, 0u))) % vec4<u32>(32u))));
    return var_1.ww;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> bool {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(347f, 762f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-281f, 1000f) - vec2<f32>(1000f, -557f)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(2031f * 1310f), _wgslsmith_div_f32(var_1.x, var_1.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - vec2<f32>(var_1.x, var_1.x)))), vec2<bool>(!arg_2.b.a, arg_1.a.a))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(var_1.x, 108f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1334f, 756f), vec2<f32>(var_1.x, var_1.x), vec2<bool>(arg_1.d.a, arg_1.a.a))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, var_1.x), var_0.b.yz))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), -463f));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1201f, var_1.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -326f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, var_1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(305f, var_1.x) * vec2<f32>(var_1.x, var_1.x)))) * vec2<f32>(_wgslsmith_div_f32(-737f, -2372f), _wgslsmith_div_f32(-1815f, var_1.x)))));
    var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-367f, var_1.x)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1606f), _wgslsmith_f_op_f32(var_2.x + 624f)))))));
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = -1i;
    let var_1 = !vec4<bool>(all(vec4<bool>(true, true, u_input.b == 1u, true)), true, false, true);
    let var_2 = select(select(!vec2<bool>(var_0 == var_0, var_1.x), vec2<bool>(var_0 <= abs(2147483647i), var_0 > 2147483647i), select(var_1.xx, func_2(_wgslsmith_f_op_f32(f32(-1f) * -1647f)), vec2<bool>(func_3(var_0, Struct_2(Struct_1(false, 18889i), var_1.wwz, 84698u, Struct_1(var_1.x, -2147483647i)), Struct_3(Struct_1(var_1.x, -30116i), Struct_1(false, -46492i)), u_input.a.x), true))), select(!var_1.zw, func_2(272f), !vec2<bool>(var_1.x, true)), !(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, 80317u), vec4<u32>(u_input.c.x, 0u, 0u, 1u))) < 14136u));
    var var_3 = vec3<u32>(abs(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(50315u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(63850u, u_input.b), vec2<u32>(u_input.b, u_input.a.x))), u_input.a.x)), select(3399u, abs(firstTrailingBit(_wgslsmith_add_u32(u_input.b, u_input.a.x))), var_2.x), abs(firstLeadingBit(u_input.b)));
    let var_4 = Struct_2(Struct_1(-var_0 > var_0, _wgslsmith_sub_i32(1i >> (firstLeadingBit(18511u) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0, 1i, 4633i) | vec4<i32>(var_0, var_0, 1402i, var_0), vec4<i32>(var_0, var_0, -2147483647i, 1i)))), var_1.yww, 44047u, Struct_1(any(!var_1), var_0));
    return var_4.a;
}

fn func_4(arg_0: Struct_3) -> vec3<u32> {
    let var_0 = arg_0;
    var var_1 = u_input.c;
    var_1 = u_input.a.xx;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-310f)) + 1253f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1598f - -1455f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1098f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-471f * _wgslsmith_f_op_f32(1373f - 624f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -940f))) + 1f)));
    let var_3 = u_input.a;
    return reverseBits(vec3<u32>(select(var_3.x, var_1.x, !var_0.b.a), ~(~1u), var_1.x)) ^ vec3<u32>(min(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_mod_u32(var_3.x, u_input.b)), 34319u), _wgslsmith_sub_u32(~66269u, var_3.x >> (43303u % 32u)) >> (_wgslsmith_sub_u32(1u, firstTrailingBit(var_3.x)) % 32u), var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-2286i, (_wgslsmith_add_i32(0i, 0i) & _wgslsmith_dot_vec4_i32(vec4<i32>(49679i, -2147483647i, 28283i, 1i), vec4<i32>(0i, 0i, 61071i, -39166i))) | firstLeadingBit(-50376i), firstLeadingBit(~1850i)) << (vec3<u32>(4294967295u, 4294967295u, u_input.a.x) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -194f) - _wgslsmith_f_op_f32(round(-335f)))), _wgslsmith_f_op_f32(f32(-1f) * -1630f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, 1u, _wgslsmith_add_vec3_u32(func_4(Struct_3(Struct_1(true, var_0.x), func_1())), _wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.a, u_input.a), u_input.a)), firstLeadingBit(var_0.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) + -578f)), var_1.x, -629f));
}

