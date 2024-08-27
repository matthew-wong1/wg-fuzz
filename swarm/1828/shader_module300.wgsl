struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<i32>(41065i, 1i, i32(-2147483648), -63264i), vec2<i32>(-16697i, 2147483647i), vec3<i32>(2147483647i, -1i, 11385i), -757f, -21493i), Struct_1(vec4<i32>(i32(-2147483648), 1i, 2147483647i, -45913i), vec2<i32>(29473i, 0i), vec3<i32>(69086i, -34i, 0i), -389f, -26300i), Struct_1(vec4<i32>(53311i, i32(-2147483648), 2147483647i, 0i), vec2<i32>(0i, i32(-2147483648)), vec3<i32>(1i, 31129i, 1i), -1557f, 2147483647i), Struct_1(vec4<i32>(-37061i, -1i, -1i, -19982i), vec2<i32>(-1i, 62463i), vec3<i32>(15674i, 1890i, 2147483647i), 1228f, -1i), Struct_1(vec4<i32>(2147483647i, 20039i, 2147483647i, -72840i), vec2<i32>(-52377i, 27101i), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), -1316f, -1i));

var<private> global1: array<Struct_2, 11>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> bool {
    let var_0 = vec2<bool>(false && !all(vec4<bool>(true, true, true, true)), !(!(!any(vec4<bool>(true, false, true, false)))));
    let var_1 = max(vec2<i32>(_wgslsmith_clamp_i32(u_input.d.x, -36277i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, -1i)) << (_wgslsmith_mod_u32(3439u, u_input.a.x) % 32u)), 67910i), vec2<i32>(max(_wgslsmith_add_i32(u_input.d.x, u_input.d.x), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, u_input.d.x), -1i)), firstLeadingBit(~abs(u_input.d.x))));
    let var_2 = -47383i;
    let var_3 = ~u_input.a.x;
    var var_4 = u_input.a;
    return u_input.d.x < (-22365i | u_input.d.x);
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: i32) -> f32 {
    let var_0 = max(vec2<i32>(1i, u_input.d.x), abs(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 2636i), arg_1.wx), vec2<i32>(24739i, _wgslsmith_add_i32(-1i, 0i)))));
    let var_1 = true;
    var var_2 = 68376u;
    let var_3 = Struct_4(Struct_3(arg_1 | _wgslsmith_mod_vec4_i32(~vec4<i32>(0i, -45616i, 38870i, -40384i), -arg_1), Struct_1(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(32347i, var_0.x, arg_2, var_0.x), arg_1)), -min(u_input.d, arg_1.yw), arg_1.xzy, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(505f, -819f)), _wgslsmith_f_op_f32(-1552f - 1537f))), ~2147483647i), vec4<i32>(reverseBits(max(-17463i, -2147483647i)), var_0.x, arg_1.x, arg_2)));
    let var_4 = _wgslsmith_mult_u32(u_input.b.x, select(_wgslsmith_div_u32(abs(u_input.a.x), abs(u_input.c)), u_input.b.x, -201f > _wgslsmith_f_op_f32(select(-2058f, -854f, true))));
    return var_3.a.b.d;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: f32) -> i32 {
    let var_0 = u_input.d.x;
    global1 = array<Struct_2, 11>();
    var var_1 = vec3<u32>(arg_0.x, _wgslsmith_div_u32(~5857u, u_input.a.x), _wgslsmith_clamp_u32(arg_1.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 24034u, 72292u), vec4<u32>(arg_0.x, 1u, 11284u, arg_0.x)), arg_1.x) & _wgslsmith_sub_u32(arg_0.x, 66571u));
    let var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_f32(func_3(func_2(), vec4<i32>(-48096i, var_0, -3673i, 1i), countOneBits(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.d.x, 50780i), _wgslsmith_add_i32(_wgslsmith_sub_i32(1i, -1i), 1i)))));
    return _wgslsmith_sub_i32(i32(-1i) * -_wgslsmith_mult_i32(-2147483647i, -2366i << (var_1.x % 32u)), ~firstTrailingBit(-1i));
}

fn func_4(arg_0: Struct_1) -> Struct_5 {
    let var_0 = vec4<f32>(-957f, arg_0.d, _wgslsmith_f_op_f32(trunc(-457f)), arg_0.d);
    global0 = array<Struct_1, 5>();
    let var_1 = ~_wgslsmith_dot_vec2_u32(abs(~(~vec2<u32>(1u, 53866u))), reverseBits(min(~u_input.a.zx, ~vec2<u32>(1u, 23769u))));
    let var_2 = vec2<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(true, true), false)), true);
    var var_3 = 1000f;
    return Struct_5(1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    var var_0 = !vec4<bool>(all(vec4<bool>(true, true, true, true)), true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), false);
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    var var_1 = func_4(Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, -39528i, u_input.d.x) | vec4<i32>(-26274i, u_input.d.x, u_input.d.x, 47850i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, 9011i), vec4<i32>(-1i, 0i, u_input.d.x, 1i))), vec4<i32>(countOneBits(10221i), ~u_input.d.x, u_input.d.x, func_1(u_input.a, vec2<u32>(147112u, u_input.b.x), var_0.zxx, 2246f)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 1i, 1i, -31355i) >> (vec4<u32>(1u, 1u, 4294967295u, 1u) % vec4<u32>(32u)), countOneBits(vec4<i32>(-36633i, u_input.d.x, u_input.d.x, 0i)))), vec2<i32>(u_input.d.x, countOneBits(_wgslsmith_mod_i32(u_input.d.x, 0i))), abs(-(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x) >> (vec3<u32>(u_input.c, 22919u, u_input.b.x) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(max(-2028f, 1111f)), ~(~38038i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x);
}

