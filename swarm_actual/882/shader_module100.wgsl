struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0.d.x;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(ceil(-1802f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1150f));
    let var_3 = Struct_1(~_wgslsmith_clamp_vec2_u32(max(select(var_1.b.a, var_1.b.a, true), _wgslsmith_mod_vec2_u32(var_1.c.a, var_1.c.a)), firstLeadingBit(vec2<u32>(1u, 7959u)), select(var_1.b.a, arg_0.c.a, vec2<bool>(false, arg_0.b.b.x))), var_1.b.c.xx, select(vec3<bool>(!all(vec2<bool>(arg_0.c.b.x, false)), true && all(vec4<bool>(false, var_1.b.b.x, false, false)), !arg_0.b.b.x), select(!vec3<bool>(false, arg_0.b.c.x, true), select(arg_0.b.c, vec3<bool>(arg_0.c.b.x, var_1.b.b.x, false), arg_0.c.c), select(vec3<bool>(true, var_1.c.c.x, arg_0.c.c.x), vec3<bool>(var_1.b.c.x, arg_0.b.c.x, false), select(arg_0.b.c, vec3<bool>(var_1.b.b.x, false, var_1.c.b.x), true))), var_1.c.c));
    global0 = array<Struct_3, 4>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.d.x)) * -403f)));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_mult_vec4_i32(u_input.b, u_input.b ^ (~(u_input.b << (vec4<u32>(u_input.a, 34692u, u_input.a, 4294967295u) % vec4<u32>(32u))) ^ u_input.b));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(1000f, Struct_1(vec2<u32>(51256u, 4294967295u), vec2<bool>(false, true), vec3<bool>(true, false, false)), Struct_1(vec2<u32>(0u, u_input.a), vec2<bool>(false, false), vec3<bool>(true, false, true)), vec2<f32>(-540f, 250f), vec4<i32>(u_input.b.x, var_0.x, u_input.b.x, var_0.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -109f))), Struct_1(~vec2<u32>(57123u, u_input.a), vec2<bool>(true, true), vec3<bool>(true, true, true)), Struct_1(select(vec2<u32>(25289u, 75125u), vec2<u32>(4294967295u, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1026f, -1514f), vec2<f32>(590f, 158f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1495f, 1006f), vec2<f32>(1130f, 125f)), vec2<bool>(true, true)))), u_input.b));
    let var_2 = vec3<i32>((~1i << (~u_input.a % 32u)) ^ (_wgslsmith_sub_i32(~var_1.a.e.x, u_input.b.x) << (u_input.a % 32u)), var_1.a.e.x, firstLeadingBit(-41131i));
    let var_3 = ~(~(u_input.a & firstTrailingBit(1u ^ var_1.a.b.a.x)));
    global1 = all(select(vec4<bool>(true, !var_1.a.b.c.x, true, var_1.a.b.c.x), !vec4<bool>(true, true, var_1.a.b.b.x, var_1.a.c.b.x), !vec4<bool>(var_1.a.b.b.x, var_1.a.c.c.x, false, var_1.a.b.c.x))) & (true || !var_1.a.c.c.x);
    return false;
}

fn func_1(arg_0: vec3<f32>) -> vec3<bool> {
    let var_0 = ~vec3<i32>(u_input.b.x, -2147483647i, 16621i);
    global0 = array<Struct_3, 4>();
    global1 = !func_2();
    let var_1 = 531f;
    global1 = true;
    return !select(select(vec3<bool>(all(vec2<bool>(true, true)), true, false), vec3<bool>(true, true, any(vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(arg_0.x + 1687f) < _wgslsmith_f_op_f32(min(var_1, 813f))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec2<bool>(false, true)), true, true), true), !(true && any(vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(~17589i & (0i & u_input.b.x)), _wgslsmith_add_i32(0i, u_input.b.x), firstTrailingBit(_wgslsmith_add_i32(-64466i & u_input.b.x, 1i))), ~vec3<i32>(_wgslsmith_sub_i32(48882i, -1i), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -2147483647i), countOneBits(-1i)) & vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(-u_input.b.x, countOneBits(-2147483647i)), 0i));
    let var_1 = !func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_0, arg_0) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 861f, -1000f)))))).x;
    var var_2 = Struct_2(arg_0, arg_1, arg_1, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) + _wgslsmith_f_op_f32(min(arg_2, 1519f)))))), ~max(select(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -16532i, -1i, u_input.b.x), u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(-24479i, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b), vec4<bool>(var_1, false, false, var_1)), vec4<i32>(-1i, u_input.b.x, 0i, u_input.b.x)));
    var var_3 = var_2.b.a.x;
    var var_4 = Struct_3(Struct_2(arg_2, Struct_1(~(~var_2.b.a), vec2<bool>(var_2.c.b.x, any(var_2.c.b)), vec3<bool>(true, arg_1.b.x | false, false)), Struct_1(~(~vec2<u32>(arg_1.a.x, u_input.a)), vec2<bool>(arg_1.b.x, false && var_1), select(var_2.b.c, select(vec3<bool>(arg_1.c.x, false, arg_1.c.x), arg_1.c, true), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, arg_2) - vec2<f32>(arg_0, -293f))), vec4<i32>(max(countOneBits(var_0.x), abs(-75575i)), var_2.e.x >> (669u % 32u), ~(~var_2.e.x), ~u_input.b.x ^ _wgslsmith_mod_i32(-36334i, u_input.b.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1046f + _wgslsmith_f_op_f32(-var_2.d.x))) * arg_0) > _wgslsmith_f_op_f32(-arg_0);
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1639f) + 256f) * _wgslsmith_f_op_f32(-1131f - 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-462f + -789f))))), arg_2, arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(964f, -1127f) * vec2<f32>(-514f, 232f)) + vec2<f32>(1414f, -747f)))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x >> (arg_0.x % 32u), u_input.b.x, abs(u_input.b.x), u_input.b.x), select(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x) & vec4<i32>(36632i, -2147483647i, u_input.b.x, 31904i), countOneBits(firstLeadingBit(vec4<i32>(u_input.b.x, 8710i, 80927i, 1i))), !arg_3)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -948f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-575f)), _wgslsmith_f_op_f32(f32(-1f) * -959f))))), func_5(~(~(~vec4<u32>(0u, u_input.a, u_input.a, 75727u))), func_4(-589f, Struct_1(reverseBits(vec2<u32>(9094u, 41448u)), vec2<bool>(true, false), func_1(vec3<f32>(-830f, -1151f, 562f))), -1743f, 3519u), Struct_1(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), func_1(vec3<f32>(-1979f, -355f, -1167f)).yy, !func_1(vec3<f32>(-1000f, -980f, 376f))), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true))), Struct_1(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u))), vec2<bool>(true, true), func_5(vec4<u32>(0u, ~u_input.a, 1u, ~u_input.a), false, func_5(~vec4<u32>(u_input.a, 4294967295u, 42523u, 52987u), false, Struct_1(vec2<u32>(4294967295u, u_input.a), vec2<bool>(false, true), vec3<bool>(false, false, false)), vec4<bool>(true, false, false, true)), vec4<bool>(true, all(vec2<bool>(false, true)), any(vec3<bool>(false, false, false)), any(vec3<bool>(false, true, false)))).c), vec2<f32>(_wgslsmith_f_op_f32(-505f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(795f - -147f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2041f, -1017f)))), vec4<i32>(countOneBits(reverseBits(countOneBits(62435i))), u_input.b.x, firstTrailingBit(u_input.b.x), -47931i));
    var var_1 = -_wgslsmith_dot_vec4_i32(-vec4<i32>(~1i, u_input.b.x & 21662i, _wgslsmith_add_i32(-1i, -52793i), countOneBits(-25511i)), vec4<i32>(abs(-69052i), ~var_0.e.x, var_0.e.x >> (select(var_0.b.a.x, u_input.a, var_0.c.c.x) % 32u), select(~u_input.b.x, -5810i, !var_0.b.b.x)));
    var var_2 = vec3<bool>(true, any(select(var_0.b.c.yx, var_0.b.b, !var_0.c.c.xx)) & func_4(_wgslsmith_f_op_f32(max(var_0.d.x, 520f)), var_0.b, var_0.d.x, 1u), func_4(-132f, Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), var_0.c.a), var_0.b.c.yy, !var_0.c.c), 641f, select(0u, 4294967295u, var_0.c.c.x)) & !any(!vec4<bool>(var_0.b.b.x, false, true, var_0.c.b.x)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + var_0.a)), func_5(~(~vec4<u32>(44879u, 43074u, u_input.a, u_input.a)) >> (~(vec4<u32>(1u, u_input.a, 0u, 9620u) << (vec4<u32>(32427u, 10460u, 4294967295u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), var_2.x, func_5(reverseBits(abs(vec4<u32>(7458u, 4294967295u, 4294967295u, u_input.a))), !var_0.c.c.x, Struct_1(_wgslsmith_mult_vec2_u32(var_0.c.a, vec2<u32>(u_input.a, u_input.a)), var_2.xx, var_0.c.c), select(vec4<bool>(var_0.b.c.x, true, var_0.b.b.x, false), vec4<bool>(var_2.x, var_2.x, false, false), true)), vec4<bool>(!var_0.c.b.x, var_0.c.c.x, var_0.c.b.x, var_2.x)), var_0.b, _wgslsmith_div_vec2_f32(var_0.d, _wgslsmith_f_op_vec2_f32(select(var_0.d, var_0.d, var_0.c.c.x))), _wgslsmith_sub_vec4_i32(abs(_wgslsmith_sub_vec4_i32(-vec4<i32>(-26217i, 2147483647i, u_input.b.x, -2147483647i), vec4<i32>(var_0.e.x, u_input.b.x, -32621i, -18841i))), abs(_wgslsmith_clamp_vec4_i32(var_0.e & vec4<i32>(var_0.e.x, 1i, u_input.b.x, u_input.b.x), _wgslsmith_mod_vec4_i32(var_0.e, vec4<i32>(-1i, var_0.e.x, var_0.e.x, var_0.e.x)), vec4<i32>(-1i, -16197i, 25421i, var_0.e.x)))));
    global1 = any(select(select(!select(vec4<bool>(false, var_0.c.b.x, true, true), vec4<bool>(false, true, var_3.b.b.x, true), var_0.c.b.x), select(!vec4<bool>(true, false, var_3.b.b.x, var_2.x), select(vec4<bool>(true, var_2.x, false, false), vec4<bool>(false, var_2.x, true, var_2.x), true), !vec4<bool>(var_3.c.c.x, var_3.c.b.x, false, false)), !vec4<bool>(false, var_2.x, var_0.c.b.x, var_3.b.c.x)), select(select(!vec4<bool>(var_3.b.b.x, var_0.b.c.x, var_3.b.c.x, false), !vec4<bool>(false, var_0.c.c.x, true, var_3.c.c.x), true), select(!vec4<bool>(true, var_3.b.c.x, true, var_0.b.c.x), !vec4<bool>(false, var_0.b.b.x, var_2.x, var_0.c.c.x), var_3.b.c.x), select(vec4<bool>(var_3.c.b.x, true, true, true), vec4<bool>(true, true, true, true), false)), !var_0.b.b.x));
    var_0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(30487u, 32307u, 2856u, 1u) | vec4<u32>(~(~4402u), u_input.a, _wgslsmith_sub_u32(firstLeadingBit(var_0.c.a.x), var_0.b.a.x), abs(~u_input.a)), select(min(~(~vec4<u32>(4294967295u, 1u, var_3.c.a.x, 47599u)), vec4<u32>(var_0.c.a.x, min(u_input.a, var_0.c.a.x), 1u, firstLeadingBit(u_input.a))), countOneBits(~(~vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.a))), !select(select(vec4<bool>(var_3.b.b.x, true, var_3.b.c.x, var_3.c.b.x), vec4<bool>(var_3.b.c.x, var_2.x, false, true), vec4<bool>(var_2.x, var_2.x, true, false)), !vec4<bool>(true, var_0.c.b.x, var_3.c.b.x, false), var_3.c.b.x)), 644f);
}

