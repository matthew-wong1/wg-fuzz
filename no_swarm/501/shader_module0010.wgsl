struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec3<u32>,
    c: Struct_4,
    d: bool,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<Struct_5, 15>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec3<bool>) -> f32 {
    var var_0 = select(_wgslsmith_dot_vec2_u32(firstTrailingBit(firstLeadingBit(arg_0.b.d) | _wgslsmith_clamp_vec2_u32(arg_0.b.c, arg_0.b.d, vec2<u32>(0u, u_input.a))), abs(~(arg_0.b.d ^ vec2<u32>(23423u, 27583u)))), _wgslsmith_sub_u32(23518u, u_input.a), true);
    global0 = array<Struct_5, 15>();
    let var_1 = Struct_4(vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_i32(17478i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, 2147483647i, 2147483647i, -11779i)), vec4<i32>(-1i, -5533i, -1i, 1i)), ~(~vec4<i32>(1i, 48997i, -26125i, 0i)))), arg_0.b);
    var var_2 = arg_0;
    let var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, abs(63u)), firstTrailingBit(vec2<u32>(var_2.b.c.x << ((var_1.c.d.x | var_1.c.b) % 32u), 23346u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.a))));
}

fn func_2() -> i32 {
    var var_0 = !(!(!vec2<bool>(true, all(vec4<bool>(true, true, true, true)))));
    global0 = array<Struct_5, 15>();
    let var_1 = Struct_3(select(vec4<bool>((u_input.a >> (39864u % 32u)) >= _wgslsmith_div_u32(u_input.a, u_input.a), select(any(vec3<bool>(false, false, var_0.x)), !var_0.x, var_0.x), var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, all(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), true))), false), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_3(vec4<bool>(var_0.x, false, var_0.x, var_0.x), Struct_1(-721f, u_input.a, vec2<u32>(u_input.a, 23449u), vec2<u32>(u_input.a, u_input.a), vec3<bool>(var_0.x, true, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(669f, -512f)), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -480f) + 1339f)), 4294967295u, vec2<u32>(~(~u_input.a), u_input.a), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4284u), vec3<u32>(u_input.a, u_input.a, u_input.a)), 46786u), !(!(!vec3<bool>(var_0.x, true, true)))));
    let var_2 = -countOneBits(vec3<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -42992i, -1i), vec3<i32>(-37769i, -19836i, 40923i)) >> (var_1.b.d.x % 32u), 2147483647i));
    var var_3 = var_1;
    return ~(~max(-_wgslsmith_add_i32(var_2.x, var_2.x), -38287i));
}

fn func_1() -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 15u)];
    let var_1 = Struct_5(reverseBits(var_0.a), reverseBits(_wgslsmith_clamp_vec3_u32(abs(_wgslsmith_mod_vec3_u32(var_0.b, vec3<u32>(var_0.c.c.c.x, 57129u, 46830u))), ~var_0.b, var_0.b)), var_0.c, select(!(var_0.c.c.e.x && all(vec2<bool>(var_0.c.c.e.x, false))), var_0.a != (i32(-1i) * -38572i), var_0.c.c.e.x));
    var var_2 = _wgslsmith_mult_vec2_i32(~(~vec2<i32>(var_0.c.a.x, -66148i)), vec2<i32>(reverseBits(2147483647i << (var_0.b.x % 32u)), -(var_1.c.a.x ^ var_0.c.b))) >> (~var_0.c.c.c % vec2<u32>(32u));
    var var_3 = var_2.x;
    var_3 = func_2();
    return _wgslsmith_mult_u32(~(~0u), (var_0.b.x ^ 12048u) | ~457u);
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>) -> StorageBuffer {
    let var_0 = Struct_4(abs(-vec4<i32>(13370i, ~7880i, -2147483647i, 1i)), -reverseBits(_wgslsmith_mod_i32(2147483647i, arg_0.a)), Struct_1(_wgslsmith_f_op_f32(-869f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.c.c.a)), _wgslsmith_f_op_f32(min(-737f, arg_0.c.c.a)))), reverseBits(_wgslsmith_sub_u32(1u, u_input.a | arg_0.c.c.c.x)), ~arg_1.zx >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), ~arg_1.xy) % vec2<u32>(32u)), ~(~vec2<u32>(0u, 49493u)), select(!arg_0.c.c.e, !select(vec3<bool>(true, arg_0.c.c.e.x, arg_0.d), vec3<bool>(arg_0.c.c.e.x, arg_0.d, arg_0.d), arg_0.c.c.e), !select(arg_0.d, true, false))));
    let var_1 = Struct_2(_wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 1u, 1u, arg_0.b.x), vec4<u32>(0u, var_0.c.b, 75229u, 22776u))) >> (vec4<u32>(firstLeadingBit(25401u), func_1(), _wgslsmith_add_u32(arg_0.b.x, 36000u), min(arg_1.x, arg_0.c.c.c.x)) % vec4<u32>(32u)), vec4<u32>(arg_1.x, 27865u, ~func_1(), ~0u ^ (arg_1.x | 0u))), -arg_0.c.a, select(select(var_0.c.e.yx, select(!arg_0.c.c.e.xz, vec2<bool>(false, false), vec2<bool>(false, var_0.c.e.x)), ~0u >= u_input.a), var_0.c.e.xx, !all(!var_0.c.e.zx)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), arg_0.c.c);
    var var_2 = select(~vec3<i32>(_wgslsmith_mult_i32(-arg_0.c.b, 29529i), abs(-var_0.a.x), ~var_0.a.x), -var_1.b.zxy, select(arg_0.c.c.e, select(!var_0.c.e, arg_0.c.c.e, select(var_0.c.e.x, false, var_1.c.x) && all(vec4<bool>(var_0.c.e.x, arg_0.c.c.e.x, var_0.c.e.x, true))), !arg_0.c.c.e.x));
    var_2 = vec3<i32>(~1i, 2147483647i, i32(-1i) * -var_2.x);
    var var_3 = 1835f;
    return StorageBuffer(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(global0[_wgslsmith_index_u32(u_input.a, 15u)], _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(22793u, u_input.a, u_input.a), vec3<u32>(31991u, 0u, 4294967295u)), ~_wgslsmith_mult_u32(1u, u_input.a), 20651u), vec3<u32>(func_1(), u_input.a, ~(u_input.a ^ u_input.a))));
}

