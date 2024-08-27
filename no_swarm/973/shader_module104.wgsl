struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: bool) -> f32 {
    var var_0 = select(max(117435u, _wgslsmith_sub_u32(u_input.b, abs(u_input.d.x))), 57487u, _wgslsmith_f_op_f32(-arg_0) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_0, -1000f, !arg_2)), _wgslsmith_f_op_f32(-1f), !any(vec3<bool>(true, true, arg_1.a.x)))));
    var_0 = 18804u;
    let var_1 = Struct_1(false);
    var_0 = u_input.c.x;
    var var_2 = min(vec4<u32>(~4294967295u, 1u, firstTrailingBit(firstTrailingBit(u_input.b)), 1u), ~vec4<u32>(u_input.b, (u_input.b >> (u_input.c.x % 32u)) & u_input.c.x, _wgslsmith_sub_u32(4294967295u, u_input.b), _wgslsmith_clamp_u32(abs(1u), ~u_input.d.x, u_input.d.x)));
    return -330f;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> Struct_2 {
    let var_0 = ~vec4<u32>(u_input.d.x, select(~(~34372u), u_input.b, any(vec4<bool>(true, true, true, true))), arg_0.x, firstLeadingBit(u_input.d.x));
    global0 = array<vec3<u32>, 1>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-399f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1000f, Struct_4(vec2<bool>(false, true)), any(vec2<bool>(false, true)))))), 787f);
    let var_2 = Struct_1(true);
    var var_3 = var_2;
    return Struct_2(Struct_1(select(!var_3.a, any(vec2<bool>(var_3.a, true)), false)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1 * vec2<f32>(arg_1, arg_1)), vec2<f32>(arg_1, arg_1)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_1 - vec2<f32>(arg_1, arg_1))))), vec2<f32>(-642f, 1f))));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> Struct_3 {
    let var_0 = Struct_3(vec3<u32>(min(u_input.d.x, 1u) & u_input.c.x, _wgslsmith_add_u32(u_input.d.x, _wgslsmith_clamp_u32(u_input.b, 15306u, u_input.d.x)), ~4294967295u) ^ ~(~vec3<u32>(u_input.b, u_input.c.x, u_input.b) | ~u_input.d), func_2(~firstLeadingBit(min(u_input.d, vec3<u32>(61158u, 16960u, u_input.c.x))), _wgslsmith_f_op_f32(arg_1 - -1117f)), u_input.d.zx);
    var var_1 = Struct_3(~select(u_input.d, vec3<u32>(var_0.a.x, 28715u, u_input.c.x) ^ (u_input.d << (vec3<u32>(4294967295u, u_input.c.x, 4294967295u) % vec3<u32>(32u))), var_0.b.a.a), func_2(_wgslsmith_sub_vec3_u32(~min(vec3<u32>(u_input.d.x, var_0.a.x, var_0.a.x), vec3<u32>(var_0.a.x, 25260u, 1u)), u_input.d), arg_1), var_0.a.yx);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b.x, var_0.b.b.x, -935f) * vec3<f32>(var_1.b.b.x, 1261f, -1850f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(254f, var_1.b.b.x, 493f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-158f, -267f, var_1.b.b.x) + vec3<f32>(-825f, var_0.b.b.x, -755f))))))));
    var var_3 = false;
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -257f);
    return Struct_3(select(_wgslsmith_mod_vec3_u32(var_1.a, u_input.d), countOneBits(var_1.a), !(_wgslsmith_f_op_f32(round(arg_1)) >= _wgslsmith_f_op_f32(min(690f, arg_1)))), var_1.b, select(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.x, 0u), vec2<u32>(var_0.a.x, var_0.a.x)), vec2<u32>(36704u ^ var_0.a.x, _wgslsmith_mod_u32(u_input.b, 0u))), _wgslsmith_add_vec2_u32(~vec2<u32>(var_1.c.x, 17642u) | ~var_1.a.yy, countOneBits(vec2<u32>(37600u, 1u))), false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    global0 = array<vec3<u32>, 1>();
    global0 = array<vec3<u32>, 1>();
    global0 = array<vec3<u32>, 1>();
    let var_0 = u_input.b;
    let var_1 = !select(vec4<bool>(true, !any(vec4<bool>(arg_1.b.a.a, true, arg_1.b.a.a, false)), arg_0.a, !arg_0.a), vec4<bool>(_wgslsmith_f_op_f32(exp2(arg_1.b.b.x)) <= arg_1.b.b.x, arg_1.b.a.a, !arg_1.b.a.a, true), !select(!vec4<bool>(arg_0.a, arg_1.b.a.a, arg_0.a, arg_1.b.a.a), vec4<bool>(arg_1.b.a.a, arg_1.b.a.a, true, false), !vec4<bool>(false, arg_1.b.a.a, arg_0.a, true)));
    return Struct_1(false);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec2<i32>) -> vec4<u32> {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], Struct_2(arg_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-875f, _wgslsmith_f_op_f32(sign(arg_0.b.x))))), u_input.c);
    var var_1 = 1u;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.b.x))))), var_0.b.b.x);
    var var_3 = vec4<bool>(arg_0.a.a, arg_0.a.a, any(vec3<bool>(any(select(vec3<bool>(false, arg_1.a.x, arg_0.a.a), vec3<bool>(true, false, arg_2.a.x), vec3<bool>(false, false, arg_2.a.x))), true, all(!vec4<bool>(false, var_0.b.a.a, var_0.b.a.a, arg_1.a.x)))), (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1602f, var_0.b.b.x)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(504f - var_2.x) - var_0.b.b.x)) | false);
    var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(func_1(vec2<i32>(-2147483647i, arg_3.x), arg_0.b.x).a.zx, vec2<u32>(9654u, u_input.c.x) >> (var_0.c % vec2<u32>(32u))), var_0.a.x, var_0.a.x, _wgslsmith_clamp_u32(reverseBits(76643u), _wgslsmith_mult_u32(var_0.a.x, var_0.c.x), _wgslsmith_dot_vec2_u32(var_0.c, u_input.d.zy))), ~select(abs(vec4<u32>(1u, 4294967295u, u_input.b, u_input.d.x)), ~vec4<u32>(50030u, u_input.d.x, u_input.d.x, 4294967295u), arg_2.a.x)), select(~(~vec4<u32>(24407u, 4294967295u, 48493u, var_0.c.x)), ~firstLeadingBit(vec4<u32>(u_input.d.x, var_0.a.x, 8247u, u_input.d.x)), !vec4<bool>(arg_1.a.x, var_0.b.a.a, true, var_0.b.a.a)) << (vec4<u32>(abs(4294967295u), 38189u, func_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(51646i, -9948i), vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-13152i, u_input.a.x)), _wgslsmith_div_f32(var_0.b.b.x, 862f)).c.x, 0u) % vec4<u32>(32u)));
    return min(vec4<u32>(u_input.b, _wgslsmith_clamp_u32(u_input.c.x, func_1(arg_3, _wgslsmith_f_op_f32(-515f * 1621f)).c.x, ~_wgslsmith_div_u32(u_input.d.x, u_input.c.x)), abs(u_input.c.x), select(~4294967295u, var_0.a.x, func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, arg_3.x), u_input.a), 391f).b.a.a)), vec4<u32>(u_input.b ^ ~16548u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 5549u, 4294967295u), var_0.a), 1u, select(~8144u, 22464u, true) << ((_wgslsmith_add_u32(u_input.d.x, u_input.c.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(24088u, u_input.c.x, var_0.c.x, u_input.c.x), vec4<u32>(1u, var_0.c.x, var_0.c.x, 1u)) % 32u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32(func_5(Struct_2(func_4(Struct_1(false), func_1(u_input.a, -1000f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-333f, -435f)))), Struct_4(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), Struct_4(vec2<bool>(select(false, true, false), true)), firstLeadingBit(u_input.a)), vec4<u32>(u_input.d.x, u_input.b, _wgslsmith_mult_u32(6099u, u_input.c.x) & u_input.d.x, abs(~60652u)) | select(firstLeadingBit(vec4<u32>(u_input.b, u_input.d.x, u_input.d.x, 81868u)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.d.x, 4294967295u, 1u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u), vec4<u32>(27928u, 1u, 13535u, u_input.c.x))), true));
    var var_1 = ~u_input.a.x;
    let var_2 = vec3<bool>(true, true, true);
    var_1 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(68099u, var_0.x, -_wgslsmith_div_i32(max(10093i, u_input.a.x), abs(~u_input.a.x)));
}

