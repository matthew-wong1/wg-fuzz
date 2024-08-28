struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec2<u32> {
    let var_0 = arg_0;
    let var_1 = u_input.c.x;
    var var_2 = select(_wgslsmith_div_u32(u_input.a.x, 4294967295u), _wgslsmith_clamp_u32(var_1, 35645u, 21635u) ^ ~firstTrailingBit(~u_input.a.x), select(all(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), true, !(_wgslsmith_f_op_f32(round(arg_0.b.x)) >= _wgslsmith_f_op_f32(-var_0.b.x))));
    let var_3 = Struct_1(1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1122f, _wgslsmith_f_op_f32(exp2(arg_0.b.x))), vec2<f32>(_wgslsmith_f_op_f32(step(arg_1.b.x, arg_0.b.x)), arg_0.b.x)))), vec3<i32>(_wgslsmith_div_i32(select(_wgslsmith_clamp_i32(-1i, u_input.d.x, 0i), -u_input.d.x, true), arg_1.c.x & -43520i), 2147483647i, -2147483647i));
    let var_4 = ~_wgslsmith_sub_u32(var_1, 20398u);
    return ~reverseBits(firstLeadingBit(vec2<u32>(~48956u, u_input.c.x)));
}

fn func_2() -> vec4<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-338f)), -666f))), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(804f, _wgslsmith_f_op_f32(min(-1267f, 1205f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(floor(-1292f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(533f - 982f)))) - -433f));
    var var_1 = _wgslsmith_dot_vec2_u32(~reverseBits(countOneBits(u_input.a)), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), func_3(Struct_1(-1i, vec2<f32>(var_0.x, 225f), vec3<i32>(-1i, u_input.b, -28467i)), Struct_1(u_input.b, vec2<f32>(var_0.x, var_0.x), u_input.e), 248f)) << (_wgslsmith_add_vec2_u32(max(u_input.a, vec2<u32>(4294967295u, u_input.c.x)), vec2<u32>(27813u, 67106u)) % vec2<u32>(32u)), u_input.c.xx));
    let var_2 = Struct_1(~(i32(-1i) * -11939i), _wgslsmith_f_op_vec2_f32(-var_0.zx), vec3<i32>(~1i, select(~1i, -1i, true), -abs(reverseBits(u_input.b))));
    global0 = array<Struct_2, 16>();
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.b.x * var_0.x)));
    return ~vec4<i32>(782i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 0i, 0i, u_input.b), vec4<i32>(u_input.e.x, u_input.e.x, -77972i, u_input.d.x)), -vec4<i32>(-13850i, 1i, u_input.d.x, 1i), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, -2147483647i)), -_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -2147483647i, var_2.a), vec4<i32>(-8228i, -27707i, var_2.a, 16851i))), ~(-35555i), u_input.e.x);
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_2, 16>();
    var var_0 = _wgslsmith_sub_vec4_i32(func_2(), min(-_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.b, u_input.b, u_input.e.x), vec4<i32>(u_input.e.x, 2147483647i, u_input.b, -2147483647i)), vec4<i32>(_wgslsmith_add_i32(u_input.d.x, 0i), 48833i, ~u_input.e.x, ~0i))) ^ ~min(select(vec4<i32>(u_input.d.x, u_input.d.x, u_input.b, u_input.e.x), vec4<i32>(36636i, u_input.b, -2977i, -31576i), vec4<bool>(false, true, true, false)) ^ reverseBits(vec4<i32>(1i, u_input.e.x, u_input.e.x, -9941i)), ~vec4<i32>(u_input.e.x, 19283i, -2147483647i, -1i) & ~vec4<i32>(1i, -1i, 34904i, u_input.e.x));
    var var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(var_0.ww, vec2<i32>(var_0.x, var_0.x | u_input.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(670f, -119f))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-169f, 918f)), vec2<f32>(863f, -128f)))), select(-max(u_input.e, u_input.e), max(vec3<i32>(var_0.x, u_input.b, var_0.x), _wgslsmith_add_vec3_i32(var_0.zxw, vec3<i32>(0i, 21917i, u_input.e.x))), any(vec4<bool>(false, true, false, true)))), (_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.e.x, u_input.d.x), var_0.zzx) != _wgslsmith_sub_i32(u_input.e.x, 1i)) || true, -_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, 2147483647i, u_input.d.x, var_0.x), vec4<i32>(-20733i, var_0.x, u_input.e.x, 0i)) | abs(vec4<i32>(u_input.d.x, var_0.x, u_input.e.x, u_input.b) << (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 35197u, 1u, 1u), vec4<u32>(4294967295u, u_input.a.x, u_input.c.x, 0u)) % vec4<u32>(32u))), true);
    let var_2 = !select(vec2<bool>((1951f > var_1.a.b.x) && all(vec4<bool>(var_1.b, false, true, false)), var_1.b), !(!(!vec2<bool>(var_1.b, var_1.b))), !select(vec2<bool>(true, true), vec2<bool>(var_1.b, false), select(vec2<bool>(false, var_1.d), vec2<bool>(var_1.b, false), true)));
    var var_3 = Struct_1(-func_2().x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.a.b)) * vec2<f32>(481f, -1303f)), _wgslsmith_sub_vec3_i32(var_0.wzy, ~vec3<i32>(reverseBits(2147483647i), 1i, -var_1.c.x)));
    return var_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mult_i32(arg_1.a, firstTrailingBit(_wgslsmith_add_i32(-8349i, -5464i))) < -1i;
    global0 = array<Struct_2, 16>();
    let var_1 = func_1();
    let var_2 = global0[_wgslsmith_index_u32(~4294967295u, 16u)];
    let var_3 = reverseBits(-42613i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.d, arg_1.c.xy), ~0i, u_input.e.x, _wgslsmith_div_i32(var_2.a.c.x, -2147483647i)), -vec4<i32>(arg_0.a, 54347i, 1i, var_2.a.a) << (countOneBits(vec4<u32>(u_input.c.x, 0u, 1u, 27341u)) % vec4<u32>(32u))));
    return -25571i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 15730i;
    var var_1 = vec4<i32>(var_0 ^ -2147483647i, ~u_input.d.x, abs(var_0), firstTrailingBit(-u_input.b));
    var var_2 = Struct_1(func_4(Struct_1(-_wgslsmith_clamp_i32(var_0, u_input.e.x, var_1.x), vec2<f32>(-602f, _wgslsmith_f_op_f32(f32(-1f) * -495f)), ~var_1.yzy | vec3<i32>(1i, var_1.x, var_0)), func_1()), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(625f, -234f) - vec2<f32>(2181f, 1000f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(271f, 1000f)))))))), _wgslsmith_mult_vec3_i32(vec3<i32>(abs(-1i), 1i, var_0) | vec3<i32>(var_0, var_0 | 0i, ~u_input.b), vec3<i32>(firstLeadingBit(var_1.x), firstLeadingBit(-1i), -var_1.x)));
    var_2 = Struct_1(_wgslsmith_clamp_i32(~(-10209i) << (u_input.a.x % 32u), 24749i, -firstLeadingBit(_wgslsmith_dot_vec3_i32(var_1.xyz, vec3<i32>(u_input.d.x, var_1.x, 2147483647i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.b.x)), -745f))), -(~(countOneBits(vec3<i32>(-2147483647i, -6619i, -2147483647i)) << (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), u_input.c) % vec3<u32>(32u)))));
    let var_3 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, !(var_1.x <= 2066i))), select(select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), !(var_2.b.x != var_2.b.x)), all(vec2<bool>(true, false))), vec2<bool>(!(u_input.a.x == max(u_input.c.x, 1u)), abs(-u_input.b) > countOneBits(~var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().c.zy, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_2.b.x, 0u, -2147483647i);
}

