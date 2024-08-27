struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, true), -487f, -7564i), true, Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, true), 1678f, -110i), Struct_1(vec2<bool>(false, true), vec3<bool>(false, false, true), 230f, 30620i)), vec2<f32>(-991f, -1000f)), Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, true), -788f, -64061i), true, Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, false), -780f, 2147483647i), Struct_1(vec2<bool>(false, true), vec3<bool>(false, false, true), -460f, -1i)), vec2<f32>(-892f, 1393f)), Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, false), -670f, 2147483647i), true, Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, true), 1070f, -1947i), Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, true), 1000f, 11931i)), vec2<f32>(-436f, 2068f)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: i32) -> vec3<bool> {
    var var_0 = vec3<u32>(24752u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1, ~vec2<u32>(u_input.a.x, arg_1.x)), arg_1), ~(~u_input.b)) & select(~(~(~vec3<u32>(28094u, 0u, u_input.a.x))), abs(~(~vec3<u32>(arg_1.x, 29377u, 1u))), select(!(!vec3<bool>(arg_0.a.a.a.x, arg_2.a.x, arg_2.b.x)), vec3<bool>(!arg_2.a.x, !arg_0.a.b, true), !arg_0.a.c.a.x));
    var var_1 = countOneBits(reverseBits(select(countOneBits(vec4<i32>(arg_3, 65807i, arg_0.a.c.d, u_input.c)), ~firstLeadingBit(vec4<i32>(14797i, arg_0.a.c.d, -10838i, arg_2.d)), vec4<bool>(true, any(vec3<bool>(false, false, true)), true, true))));
    let var_2 = all(select(select(!vec4<bool>(true, false, false, arg_2.a.x), !select(vec4<bool>(true, true, false, false), vec4<bool>(arg_0.a.a.b.x, false, arg_2.b.x, false), vec4<bool>(false, arg_2.a.x, arg_2.b.x, false)), vec4<bool>(false || arg_0.a.a.b.x, false, arg_0.a.b, true)), vec4<bool>(true, true, true, true), !arg_2.a.x & true));
    var_0 = select(~max(~vec3<u32>(var_0.x, 0u, 33313u) ^ max(vec3<u32>(1u, u_input.a.x, var_0.x), vec3<u32>(40659u, 78351u, var_0.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 1u, 332u), ~vec3<u32>(var_0.x, 10045u, 1u))), firstTrailingBit(~select(vec3<u32>(arg_1.x, u_input.a.x, arg_1.x) << (vec3<u32>(var_0.x, 21368u, arg_1.x) % vec3<u32>(32u)), ~vec3<u32>(1u, 42306u, var_0.x), !arg_0.a.c.a.x)), vec3<bool>(var_2, ~(~arg_1.x) < 1u, (-609f == arg_2.c) & !var_2));
    var var_3 = vec4<u32>(81141u, _wgslsmith_add_u32(~abs(arg_1.x), 0u) >> (~_wgslsmith_clamp_u32(u_input.b, 4294967295u, ~u_input.b) % 32u), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(66249u, 1u, 63124u, var_0.x), vec4<u32>(1u, arg_1.x, u_input.a.x, u_input.b)), abs(countOneBits(vec4<u32>(var_0.x, 1u, var_0.x, u_input.a.x)))) >> (var_0.x % 32u), ~(~(var_0.x | 33443u)));
    return arg_2.b;
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = arg_0;
    let var_1 = -20835i;
    var var_2 = Struct_3(Struct_2(Struct_1(!vec2<bool>(true, arg_0), select(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(var_0, true, true), vec3<bool>(arg_0, var_0, true)), select(vec3<bool>(false, var_0, true), vec3<bool>(false, false, false), vec3<bool>(true, false, var_0)), !vec3<bool>(true, arg_0, false)), -1475f, 1i), arg_0 || (_wgslsmith_clamp_u32(1u, u_input.b, u_input.b) < ~62869u), Struct_1(!(!vec2<bool>(false, arg_0)), select(select(vec3<bool>(arg_0, var_0, var_0), vec3<bool>(var_0, false, false), false), select(vec3<bool>(true, var_0, arg_0), vec3<bool>(true, arg_0, true), vec3<bool>(false, false, false)), select(vec3<bool>(arg_0, false, var_0), vec3<bool>(true, true, arg_0), var_0)), -300f, -(u_input.c | 39979i)), Struct_1(vec2<bool>(var_0, any(vec4<bool>(true, var_0, false, arg_0))), select(func_3(Struct_3(Struct_2(Struct_1(vec2<bool>(var_0, var_0), vec3<bool>(true, false, arg_0), -941f, var_1), arg_0, Struct_1(vec2<bool>(arg_0, false), vec3<bool>(arg_0, arg_0, true), -920f, var_1), Struct_1(vec2<bool>(false, var_0), vec3<bool>(true, true, true), 1000f, 30653i)), vec2<f32>(1000f, -261f)), u_input.a, Struct_1(vec2<bool>(arg_0, arg_0), vec3<bool>(var_0, var_0, false), -696f, -2147483647i), 0i), vec3<bool>(false, false, var_0), false), _wgslsmith_f_op_f32(1f + 427f), i32(-1i) * -var_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1209f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(501f, -1939f)), _wgslsmith_f_op_f32(sign(-1128f)), var_0))) + vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(624f - 173f)))));
    global0 = array<Struct_3, 3>();
    global0 = array<Struct_3, 3>();
    return var_2.b.x;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec4<bool>, arg_3: vec3<i32>) -> vec2<u32> {
    let var_0 = Struct_5(vec4<bool>(!arg_2.x, (52808i >= _wgslsmith_clamp_i32(47121i, 28996i, -13790i)) | arg_2.x, all(!vec3<bool>(false, arg_2.x, true)), arg_2.x), vec2<f32>(1505f, -1042f));
    let var_1 = Struct_4(~0i, arg_2.x, vec4<u32>(u_input.a.x, ~(u_input.b >> (0u % 32u)), 1u, ~_wgslsmith_div_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(1u, u_input.a.x)))), Struct_2(Struct_1(select(select(arg_2.yw, vec2<bool>(arg_2.x, var_0.a.x), var_0.a.xz), select(var_0.a.ww, arg_2.zz, vec2<bool>(false, var_0.a.x)), all(var_0.a.wy)), !select(vec3<bool>(true, true, false), vec3<bool>(arg_2.x, false, arg_2.x), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), -u_input.c), !arg_2.x, Struct_1(select(vec2<bool>(false, false), var_0.a.ww, select(vec2<bool>(arg_2.x, arg_2.x), var_0.a.zy, vec2<bool>(var_0.a.x, var_0.a.x))), !vec3<bool>(var_0.a.x, arg_2.x, var_0.a.x), _wgslsmith_f_op_f32(173f - arg_1), _wgslsmith_clamp_i32(arg_3.x, -1i, arg_0)), Struct_1(select(func_3(global0[_wgslsmith_index_u32(3274u, 3u)], vec2<u32>(u_input.b, u_input.a.x), Struct_1(vec2<bool>(arg_2.x, arg_2.x), arg_2.wwy, arg_1, arg_0), arg_3.x).yy, select(var_0.a.yz, vec2<bool>(arg_2.x, arg_2.x), arg_2.x), any(vec2<bool>(var_0.a.x, arg_2.x))), var_0.a.wxz, -1502f, ~_wgslsmith_dot_vec3_i32(vec3<i32>(37230i, -1i, 30253i), vec3<i32>(-1i, -2147483647i, arg_3.x)))));
    var var_2 = Struct_1(arg_2.zz, vec3<bool>(-1i <= select(var_1.d.c.d, -58966i, !var_0.a.x), true, false), -1000f, arg_3.x);
    var_2 = Struct_1(select(func_3(global0[_wgslsmith_index_u32(var_1.c.x, 3u)], ~vec2<u32>(95658u, 75785u), Struct_1(vec2<bool>(false, true), !arg_2.zxy, 626f, _wgslsmith_dot_vec4_i32(vec4<i32>(-15335i, arg_0, -10459i, 2147483647i), vec4<i32>(u_input.c, -2147483647i, 25678i, var_2.d))), arg_3.x ^ arg_3.x).zy, vec2<bool>(true, !(4294967295u >= u_input.b)), true | var_2.a.x), !var_0.a.xyw, -969f, abs(~arg_0));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -884f) + -204f) * var_0.b.x);
    return ~(~(~vec2<u32>(u_input.b, 13749u)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2) -> i32 {
    var var_0 = max(u_input.a, func_4(u_input.c, _wgslsmith_f_op_f32(func_2(!(1u <= u_input.a.x))), !(!(!vec4<bool>(true, arg_1.b, arg_0.d.c.b.x, false))), vec3<i32>(arg_0.a, abs(-u_input.c), ~arg_1.a.d)));
    let var_1 = Struct_2(Struct_1(!vec2<bool>(true, arg_0.b == false), !arg_0.d.d.b, _wgslsmith_f_op_f32(-arg_1.c.c), arg_1.a.d ^ u_input.c), any(arg_0.d.a.b), Struct_1(!vec2<bool>(!arg_0.d.a.b.x, false), vec3<bool>(!arg_1.c.a.x || arg_0.d.d.a.x, true == arg_0.d.d.b.x, !arg_1.c.b.x), -2601f, _wgslsmith_mod_i32(1i, u_input.c)), Struct_1(arg_0.d.a.b.yz, arg_1.c.b, 319f, min(u_input.c, min(max(arg_1.c.d, -33775i), u_input.c))));
    var var_2 = ~(~(abs(max(u_input.b, 0u)) ^ ~51394u));
    return 37790i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_i32(abs(firstLeadingBit(-vec2<i32>(u_input.c, 24363i) ^ (vec2<i32>(u_input.c, u_input.c) >> (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))))), reverseBits(vec2<i32>(1i, func_1(Struct_4(u_input.c, true, vec4<u32>(u_input.b, 5242u, u_input.a.x, 71938u), Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, false), 597f, -1i), false, Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, false), 108f, u_input.c), Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, false), 827f, u_input.c))), Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, true), -1021f, u_input.c), true, Struct_1(vec2<bool>(false, true), vec3<bool>(false, true, true), -970f, u_input.c), Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, true), -927f, u_input.c))))));
    global0 = array<Struct_3, 3>();
    var_0 = _wgslsmith_mult_vec2_i32(-(vec2<i32>(u_input.c, 1i) ^ abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -42898i), vec2<i32>(var_0.x, var_0.x)))), vec2<i32>(~max(~(-1i), countOneBits(var_0.x)), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(42268i, u_input.c, var_0.x), vec3<i32>(var_0.x, var_0.x, var_0.x))));
    var_0 = -_wgslsmith_sub_vec2_i32(-reverseBits(vec2<i32>(1967i, 1i)), reverseBits(-vec2<i32>(var_0.x, u_input.c)));
    var_0 = reverseBits(vec2<i32>(var_0.x, reverseBits(-(~0i))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec2<u32>(abs(firstTrailingBit(u_input.b)) | 29583u, _wgslsmith_sub_u32(4294967295u, 4294967295u)));
}

