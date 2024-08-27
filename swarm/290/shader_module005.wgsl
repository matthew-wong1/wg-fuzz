struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = arg_1;
    var_0 = Struct_2(Struct_1(arg_1.d.a, arg_1.d.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -1000f, arg_1.c.x)))))), arg_1.c, arg_1.d);
    var var_1 = arg_1;
    var var_2 = vec3<bool>(false, false, reverseBits(_wgslsmith_dot_vec2_u32(u_input.c ^ u_input.c, countOneBits(vec2<u32>(30334u, 1u)))) <= (arg_1.d.b << (_wgslsmith_mult_u32(_wgslsmith_mult_u32(71988u, var_0.a.b), ~u_input.c.x) % 32u)));
    let var_3 = arg_1.d.b | var_1.a.b;
    return vec2<bool>(all(var_2.yy), true);
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: bool) -> vec2<i32> {
    var var_0 = vec2<bool>(true, arg_2);
    var_0 = vec2<bool>(false, any(vec3<bool>(arg_2, any(select(vec3<bool>(true, arg_2, false), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, false))), var_0.x)));
    var_0 = !select(!select(func_3(vec3<i32>(-11758i, -22768i, u_input.b), Struct_2(Struct_1(vec2<i32>(arg_0, arg_0), u_input.a.x), vec3<f32>(-1000f, 562f, 457f), vec3<f32>(766f, -492f, 1082f), Struct_1(vec2<i32>(41872i, 58740i), 1u))), select(vec2<bool>(false, var_0.x), vec2<bool>(true, false), arg_2), var_0.x), !(!vec2<bool>(var_0.x, true)), var_0.x);
    var_0 = !(!select(vec2<bool>(arg_0 >= -52917i, true), !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(arg_2, true), vec2<bool>(true, true)), !(!vec2<bool>(arg_2, true))));
    var_0 = select(vec2<bool>(!var_0.x, true), select(vec2<bool>(arg_2, select(arg_2, all(vec4<bool>(arg_2, true, arg_2, var_0.x)), arg_2)), select(vec2<bool>(func_3(vec3<i32>(-1i, u_input.b, -2147483647i), Struct_2(Struct_1(vec2<i32>(14387i, u_input.b), 4294967295u), vec3<f32>(938f, 843f, 1144f), vec3<f32>(1000f, -839f, -290f), Struct_1(vec2<i32>(u_input.b, arg_0), arg_1.x))).x, false), select(vec2<bool>(false, var_0.x), vec2<bool>(arg_2, true), func_3(vec3<i32>(-1i, u_input.b, -14488i), Struct_2(Struct_1(vec2<i32>(2147483647i, arg_0), u_input.a.x), vec3<f32>(1838f, -589f, -1316f), vec3<f32>(141f, 178f, -1180f), Struct_1(vec2<i32>(33838i, arg_0), 0u))).x), var_0.x), select(!select(vec2<bool>(arg_2, false), vec2<bool>(false, var_0.x), var_0.x), !(!vec2<bool>(var_0.x, arg_2)), select(vec2<bool>(arg_2, var_0.x), !vec2<bool>(arg_2, arg_2), var_0.x))), func_3(_wgslsmith_div_vec3_i32(max(max(vec3<i32>(-39832i, -1i, arg_0), vec3<i32>(arg_0, arg_0, arg_0)), abs(vec3<i32>(u_input.b, -1i, arg_0))), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_0, arg_0), vec3<i32>(u_input.b, 8727i, arg_0)))), Struct_2(Struct_1(-vec2<i32>(2147483647i, arg_0), 122705u), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))), vec3<f32>(1f, 1f, 1f), Struct_1(vec2<i32>(-2147483647i, u_input.b), _wgslsmith_mod_u32(u_input.c.x, 40719u)))));
    return vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(firstLeadingBit(-1i), 0i), -7508i), min(reverseBits(countOneBits(vec2<i32>(-9260i, 2147483647i))), vec2<i32>(_wgslsmith_mod_i32(u_input.b, 45545i), -52593i))), max(countOneBits(~(~24366i)), _wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(10196i, u_input.b, u_input.b)), abs(vec3<i32>(arg_0, -52882i, -1i)))));
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = Struct_2(arg_0, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(368f, 213f, -2100f))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(468f, 408f, 765f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 118f, 1000f))))))), Struct_1(countOneBits(vec2<i32>(arg_0.a.x & u_input.b, 1i)), ~u_input.c.x));
    var var_1 = var_0.a;
    let var_2 = Struct_1(-func_2(48470i, vec3<u32>(3128u, ~43152u, _wgslsmith_dot_vec4_u32(vec4<u32>(17249u, 0u, arg_0.b, 1u), vec4<u32>(var_0.d.b, var_0.d.b, var_1.b, arg_0.b))), _wgslsmith_f_op_f32(trunc(var_0.b.x)) == var_0.b.x), abs(var_0.d.b));
    var_1 = Struct_1(vec2<i32>(-u_input.b, var_2.a.x & -firstLeadingBit(14065i)), ~(~u_input.a.x));
    var var_3 = all(!(!func_3(select(vec3<i32>(arg_0.a.x, 0i, 0i), vec3<i32>(arg_0.a.x, -13233i, -2963i), false), Struct_2(var_2, var_0.c, vec3<f32>(248f, -393f, 143f), Struct_1(arg_0.a, 13342u)))));
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.x, 618f, -2597f, 704f))) - vec4<f32>(var_0.c.x, 912f, 997f, -105f)) * vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x * 1481f), _wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(min(1186f, var_0.b.x)), -1000f)))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = ~firstLeadingBit(_wgslsmith_mult_u32(29205u, abs(_wgslsmith_clamp_u32(100654u, 0u, 4294967295u))));
    var var_2 = ~u_input.c.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.b) & vec2<i32>(u_input.b, -2147483647i), func_2(-1i, vec3<u32>(u_input.a.x, u_input.c.x, var_1), true)) & -vec2<i32>(-31061i, u_input.b), ~(u_input.a.x & 1u) | select(26087u, var_1, true))));
    var var_4 = ~(vec3<u32>(u_input.c.x, u_input.c.x, var_1) >> (vec3<u32>(4294967295u, 13331u, 21081u) % vec3<u32>(32u)));
    return Struct_2(Struct_1(vec2<i32>(27634i, u_input.b ^ ~u_input.b), var_1), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -485f))), var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1891f) + _wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec2<i32>(u_input.b, 0i), u_input.a.x))).x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_3.yzx)))) + vec3<f32>(419f, arg_0, _wgslsmith_f_op_f32(-910f + _wgslsmith_f_op_f32(-arg_0)))), Struct_1(~countOneBits(vec2<i32>(-2147483647i, u_input.b)) >> (var_4.yx % vec2<u32>(32u)), _wgslsmith_div_u32(15946u, 11978u)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1.a.x;
    var var_1 = ~(~min(select(countOneBits(vec3<u32>(arg_0.a.b, 13544u, 0u)), vec3<u32>(1u, 1u, 1u), true), ~vec3<u32>(arg_1.b, arg_0.d.b, arg_1.b)));
    var var_2 = _wgslsmith_div_vec3_f32(func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.c.x)))))).b, _wgslsmith_f_op_vec3_f32(-func_1(-1050f).b));
    var_1 = vec3<u32>(_wgslsmith_add_u32(u_input.c.x, countOneBits(reverseBits(var_1.x))), 28557u, 4294967295u) << (select(vec3<u32>(reverseBits(arg_0.d.b), _wgslsmith_mod_u32(4294967295u, arg_1.b), u_input.a.x) | select(countOneBits(vec3<u32>(arg_1.b, u_input.a.x, 18640u)), abs(vec3<u32>(arg_1.b, 0u, arg_0.a.b)), false), ~(~(vec3<u32>(13173u, arg_1.b, u_input.a.x) & vec3<u32>(arg_0.a.b, 4294967295u, var_1.x))), vec3<bool>(arg_0.d.b > (34509u | arg_1.b), false, false)) % vec3<u32>(32u));
    var var_3 = abs(arg_1.b);
    return _wgslsmith_mod_u32(1u, 18954u) >> (arg_1.b % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 25013i | _wgslsmith_sub_i32(_wgslsmith_div_i32(-8994i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-47514i, 2147483647i, 2147483647i), vec3<i32>(-19320i, u_input.b, u_input.b)))), abs(u_input.b));
    let var_1 = 4294967295u <= func_5(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-961f - 1786f))), Struct_1(vec2<i32>(2147483647i, u_input.b | 18684i), u_input.c.x));
    let var_2 = !(!select(vec3<bool>(!var_1, var_1, false), select(vec3<bool>(false, var_1, false), !vec3<bool>(false, true, var_1), false), var_1 != true));
    var_0 = -21705i;
    var var_3 = ~_wgslsmith_add_vec3_u32(~select(vec3<u32>(4294967295u, u_input.a.x, u_input.c.x) & vec3<u32>(u_input.c.x, u_input.c.x, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 20266u, 50539u), vec3<u32>(33303u, u_input.a.x, u_input.a.x)), vec3<bool>(true, var_2.x, var_1)), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.a.x, 4294967295u), ~1u, ~u_input.a.x), select(vec3<u32>(u_input.a.x, 2366u, u_input.c.x), vec3<u32>(1u, u_input.a.x, 6449u), false) ^ vec3<u32>(u_input.a.x, 11145u, 1u)));
    let var_4 = max(vec4<u32>(~((var_3.x << (var_3.x % 32u)) >> (u_input.a.x % 32u)), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, var_3.x, var_3.x, var_3.x)), vec4<u32>(u_input.c.x, 3534u, _wgslsmith_dot_vec3_u32(vec3<u32>(47777u, u_input.a.x, u_input.a.x), vec3<u32>(var_3.x, 48219u, 1u)), 70654u)), 0u, var_3.x), vec4<u32>(_wgslsmith_mod_u32(4294967295u >> (_wgslsmith_dot_vec2_u32(u_input.a, var_3.zy) % 32u), 0u), ~1u, reverseBits(1u), 52142u));
    let var_5 = _wgslsmith_add_vec3_u32(min(_wgslsmith_sub_vec3_u32(vec3<u32>(~264u, var_3.x, ~1u), ~vec3<u32>(u_input.c.x, var_4.x, var_3.x)), vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.x, var_4.x, var_4.x), var_4.wxw)), var_3.x, u_input.a.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(max(~1u, var_3.x), func_1(_wgslsmith_f_op_f32(391f - -971f)).d.b, 12347u), vec3<u32>(var_3.x << (~0u % 32u), 1u, abs(~var_3.x))));
    var_3 = vec3<u32>(_wgslsmith_div_u32(select(26225u, 1u, any(!vec3<bool>(true, var_1, false))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_5.zz, var_5.yy), ~9266u)), reverseBits(0u), 48006u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1556f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-437f - _wgslsmith_div_f32(1711f, 1649f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2108f, 1022f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2175f), _wgslsmith_div_f32(176f, 172f))), _wgslsmith_f_op_f32(f32(-1f) * -330f)), -60906i, ~(-vec2<i32>(~(-14709i), -1i)), vec3<i32>(~(~(u_input.b >> (1u % 32u))), 38574i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, -18941i, u_input.b), vec4<i32>(u_input.b, 14278i, -35336i, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.b, 0i, u_input.b), vec4<i32>(0i, u_input.b, u_input.b, -681i), vec4<i32>(-31126i, -1i, -1i, 2147483647i))), countOneBits(~u_input.b))), abs(abs(vec4<u32>(_wgslsmith_mod_u32(8083u, var_5.x), 4294967295u | var_3.x, 1u | var_5.x, ~0u))));
}

