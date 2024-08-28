struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: f32) -> Struct_3 {
    global0 = -7275i;
    let var_0 = 133923u;
    global0 = (arg_2.a.a.x | 42701i) ^ _wgslsmith_mod_i32(-1i, abs(21889i));
    global0 = ~1i;
    let var_1 = arg_2.c.a.zzy;
    return arg_2;
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = ~max(u_input.b, ~(~arg_0.a.a.x)) & 1i;
    var_0 = abs(_wgslsmith_mult_i32(u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(44718i, u_input.b, -1i), vec3<i32>(u_input.b, arg_0.c.a.x, -10324i)), ~vec3<i32>(2147483647i, u_input.b, -2147483647i)) >> (_wgslsmith_sub_u32(4294967295u, 0u) % 32u)));
    var_0 = min(max(~1i, -u_input.b), -countOneBits(-7417i));
    let var_1 = ~u_input.a;
    var var_2 = !(!(!any(vec4<bool>(false, false, false, true))) & all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), true)));
    return u_input.b;
}

fn func_1() -> f32 {
    var var_0 = Struct_1(vec4<i32>(func_3(func_2(-1i > u_input.b, vec2<u32>(u_input.a, u_input.a), Struct_3(Struct_1(vec4<i32>(3920i, u_input.b, u_input.b, u_input.b)), -1804f, Struct_1(vec4<i32>(14767i, -35472i, 1i, u_input.b))), _wgslsmith_f_op_f32(f32(-1f) * -837f))), -1i, u_input.b, reverseBits(1i)));
    global0 = var_0.a.x;
    let var_1 = _wgslsmith_add_vec3_u32(select(~(~vec3<u32>(u_input.a, 4294967295u, 4294967295u) | countOneBits(vec3<u32>(1u, u_input.a, u_input.a))), vec3<u32>(15801u, u_input.a, u_input.a), any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(false, true, true), true))), vec3<u32>(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(1u, u_input.a)), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(80648u, u_input.a))), ~(~u_input.a) << (2502u % 32u), ~(~u_input.a)));
    var_0 = func_2(-32566i > _wgslsmith_div_i32(2147483647i, i32(-1i) * -u_input.b), ~var_1.xz << (countOneBits(~var_1.yx ^ (var_1.yz & vec2<u32>(1u, 0u))) % vec2<u32>(32u)), func_2(true, ~_wgslsmith_clamp_vec2_u32(var_1.zz, ~var_1.xx, var_1.xy), func_2(any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), var_1.yz, Struct_3(func_2(false, var_1.zx, Struct_3(Struct_1(vec4<i32>(var_0.a.x, -1942i, var_0.a.x, u_input.b)), -529f, Struct_1(vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b))), 567f).a, _wgslsmith_f_op_f32(-963f * 282f), func_2(false, var_1.xy, Struct_3(Struct_1(vec4<i32>(var_0.a.x, u_input.b, u_input.b, u_input.b)), 347f, Struct_1(vec4<i32>(2147483647i, 1i, u_input.b, u_input.b))), -217f).c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(932f, 1000f, false))))), _wgslsmith_f_op_f32(min(-539f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(134f * -126f) + -1497f)))), _wgslsmith_f_op_f32(sign(182f))).a;
    return -123f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -1i, u_input.b | (u_input.b & u_input.b), -13691i), -vec4<i32>(391i, -43040i, -2147483647i, u_input.b) | _wgslsmith_div_vec4_i32(-vec4<i32>(-57862i, u_input.b, u_input.b, u_input.b), -vec4<i32>(40072i, u_input.b, -5477i, -1i))));
    var var_1 = -959f;
    var_1 = _wgslsmith_f_op_f32(func_1());
    var var_2 = -func_2(false, min(_wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.a, 402u), vec2<u32>(63332u, 1u), vec2<bool>(true, false)), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(4294967295u, u_input.a) ^ vec2<u32>(37779u, u_input.a)), func_2(true, vec2<u32>(0u, ~1u), func_2(true, vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), func_2(false, vec2<u32>(u_input.a, u_input.a), Struct_3(var_0, 194f, var_0), -419f), _wgslsmith_f_op_f32(floor(1501f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(127f, 124f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-817f - _wgslsmith_f_op_f32(1062f * -267f)), -1529f)).c.a.zx;
    var var_3 = _wgslsmith_mult_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(~var_0.a.x, u_input.b, _wgslsmith_add_i32(u_input.b, -2147483647i), _wgslsmith_mult_i32(0i, u_input.b)), var_0.a), vec4<i32>(4167i, _wgslsmith_clamp_i32(17244i, u_input.b, reverseBits(~1i)), (-var_0.a.x | (0i | var_2.x)) >> (0u % 32u), var_0.a.x));
    let var_4 = ~var_3.x;
    var_1 = 117f;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_vec2_u32(~abs(vec2<u32>(4294967295u, u_input.a)), vec2<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), ~52094u)), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a), 1u) | firstLeadingBit(~vec2<u32>(u_input.a, 4356u))), max(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a, u_input.a), ~vec3<u32>(31889u, u_input.a, 58639u)), abs(u_input.a)), ~(~u_input.a | ~1u)));
}

