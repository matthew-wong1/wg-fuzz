struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.d + _wgslsmith_f_op_f32(sign(global0.d)))));
    var_0 = arg_2.d;
    let var_1 = -2056f;
    var_0 = -1112f;
    global0 = arg_2;
    return ~reverseBits(-23785i);
}

fn func_2() -> f32 {
    global0 = Struct_1(min(func_3(vec2<i32>(_wgslsmith_div_i32(u_input.c, 24098i), ~global0.a), true, Struct_1(reverseBits(105825i), 4294967295u, -1i, _wgslsmith_f_op_f32(floor(356f)))), global0.a), global0.b, _wgslsmith_mult_i32(u_input.c, -59426i), global0.d);
    global0 = Struct_1(0i, max(global0.b, ~4294967295u), -73i, _wgslsmith_f_op_f32(-global0.d));
    var var_0 = !(select(false, global0.d > _wgslsmith_f_op_f32(sign(-225f)), any(vec2<bool>(true, true))) && select(false, true && any(vec4<bool>(false, false, true, true)), true));
    let var_1 = Struct_1(-1i, firstLeadingBit(1u), ~(-global0.a), _wgslsmith_f_op_f32(-global0.d));
    global0 = Struct_1(i32(-1i) * -2147483647i, abs(var_1.b), ~(var_1.c >> (_wgslsmith_add_u32(~5072u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, var_1.b, global0.b, var_1.b), vec4<u32>(var_1.b, var_1.b, global0.b, var_1.b))) % 32u)), _wgslsmith_f_op_f32(-var_1.d));
    return _wgslsmith_f_op_f32(trunc(-1344f));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = arg_1;
    var var_1 = min(~1u, 4294967295u);
    let var_2 = max(_wgslsmith_add_u32(arg_1.b, arg_1.b & arg_3.b), arg_1.b);
    let var_3 = Struct_1(1i, arg_3.b, 2147483647i & (i32(-1i) * -u_input.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), 649f) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1943f * var_0.d), global0.d), 1057f))));
    var var_4 = 4294967295u;
    return vec3<u32>(~(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_3.b, var_3.b, 19707u), vec3<u32>(28374u, 4294967295u, 47862u)) << (abs(166612u >> (var_0.b % 32u)) % 32u)), var_2, 51803u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool) -> i32 {
    global0 = Struct_1(12343i, _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_1.x, select(4294967295u, 36292u, !arg_2)), ~0u), u_input.b, _wgslsmith_f_op_f32(arg_0.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d, global0.d))))));
    global0 = arg_0;
    var var_0 = countOneBits(min(~abs(~vec4<i32>(-26760i, -33537i, -1972i, -78827i)), vec4<i32>(-37733i, -1i, select(-14029i, 15188i, arg_0.b > 103155u), u_input.c)));
    global0 = arg_0;
    let var_1 = false;
    return 29151i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_4(Struct_1(_wgslsmith_sub_i32(2147483647i, global0.a) >> (3755u % 32u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(global0.b, global0.b, global0.b)), func_1(vec3<bool>(false, false, false), Struct_1(global0.c, global0.b, global0.a, -637f), global0.d, Struct_1(global0.c, 12945u, u_input.b, 297f))), reverseBits(u_input.b), _wgslsmith_f_op_f32(round(global0.d))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.b, 4294967295u) | vec2<u32>(0u, global0.b), vec2<u32>(global0.b, global0.b) ^ vec2<u32>(global0.b, global0.b), vec2<u32>(1u, global0.b) << (vec2<u32>(global0.b, global0.b) % vec2<u32>(32u))), true);
    let var_1 = Struct_1(-select(global0.c, u_input.c >> (_wgslsmith_sub_u32(1u, global0.b) % 32u), true), min(_wgslsmith_mult_u32(reverseBits(global0.b ^ global0.b), select(~global0.b, ~1u, all(vec3<bool>(false, false, false)))), 56143u), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(global0.a, global0.c), global0.c, global0.a, _wgslsmith_sub_i32(u_input.c, -1i)), select(vec4<i32>(-85095i, -75377i, u_input.a.x, global0.a), vec4<i32>(0i, -1i, 1i, 30974i), vec4<bool>(false, true, false, true)) >> (~vec4<u32>(8839u, 53075u, 12408u, 8273u) % vec4<u32>(32u))), countOneBits(-vec4<i32>(3088i, u_input.c, u_input.c, global0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    var var_2 = Struct_1(_wgslsmith_div_i32(45017i, _wgslsmith_div_i32(func_3(u_input.a.zz, true, var_1), -var_1.c) ^ _wgslsmith_dot_vec3_i32(select(vec3<i32>(43470i, u_input.b, 17499i), u_input.a, true), u_input.a)), 101747u, ~(-2147483647i), var_1.d);
    var var_3 = !(!(!select(false, true, true)));
    var_0 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(vec3<i32>(-(u_input.a.x & 46310i), global0.a, -14498i), vec3<i32>(-(~var_1.a), func_4(Struct_1(2147483647i, var_1.b, -2147483647i, var_1.d), func_1(vec3<bool>(false, true, false), Struct_1(-16723i, var_2.b, 2147483647i, 795f), global0.d, var_1).yx, true), global0.a)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(51806u, var_2.b, var_1.b) >> (vec3<u32>(4294967295u, 4294967295u, var_1.b) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, var_1.b, 31837u) | vec3<u32>(73814u, 5717u, 1u)), ~vec3<u32>(1u, 0u, ~4294967295u)), abs(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.b, 4294967295u, var_2.b) & ~vec3<u32>(0u, var_1.b, 60085u), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.b, 103603u, 18667u), vec3<u32>(var_2.b, global0.b, 1u)) ^ vec3<u32>(18581u, global0.b, 4294967295u))), global0.c);
}

