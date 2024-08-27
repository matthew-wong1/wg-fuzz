struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec4<bool>) -> u32 {
    var var_0 = vec2<bool>(arg_3.x, ~(~59023u) >= (max(arg_1.x, ~0u) >> ((_wgslsmith_mult_u32(arg_1.x, arg_1.x) ^ 33202u) % 32u)));
    var_0 = select(arg_3.wy, vec2<bool>(true, false), select(arg_3.zy, !arg_3.zw, true));
    let var_1 = 4294967295u;
    let var_2 = ~(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.x, 1u, 88297u, 5649u), vec4<u32>(~5022u, _wgslsmith_div_u32(arg_2, arg_1.x), ~5530u, 3895u), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1, 4294967295u, arg_1.x, 4294967295u), vec4<u32>(5527u, arg_2, 4346u, var_1)))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(arg_2 | 19409u, _wgslsmith_sub_u32(arg_2, 77075u), 77195u, ~arg_1.x), vec4<u32>(arg_1.x, 0u, firstTrailingBit(var_1), ~arg_1.x)));
    let var_3 = Struct_4(Struct_2(_wgslsmith_sub_vec3_i32(~max(u_input.a.zyz, vec3<i32>(-2147483647i, arg_0, arg_0)), min(~u_input.a.zxy, -vec3<i32>(0i, -55421i, 2147483647i))), vec2<bool>(!(false && arg_3.x), var_0.x), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -352f), 379f, u_input.a.yzx, ~4294967295u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(579f))))), Struct_1(-1291f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-654f)) + 1f), vec3<i32>(~u_input.a.x, firstLeadingBit(-13833i), u_input.a.x), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1332f, -1433f)))), true), Struct_1(_wgslsmith_f_op_f32(abs(-773f)), _wgslsmith_f_op_f32(abs(1f)), u_input.a.wwx, 30266u << (_wgslsmith_add_u32(13124u & arg_2, ~var_1) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(439f, 668f) * _wgslsmith_f_op_f32(758f + -746f)) + _wgslsmith_f_op_f32(round(874f)))));
    return var_3.a.c.d;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = Struct_4(arg_0, arg_0.c);
    let var_1 = select(arg_1, vec4<bool>(arg_1.x, false, any(arg_1.ywz), any(!arg_1.zyz)), vec4<bool>(false, !all(!arg_1), -(arg_3.c.x << (var_0.a.c.d % 32u)) == countOneBits(~0i), arg_1.x));
    var var_2 = ~_wgslsmith_mult_vec4_u32((vec4<u32>(var_0.b.d, 4294967295u, 0u, 4294967295u) | vec4<u32>(arg_0.c.d, 1u, arg_3.d, arg_0.d.d)) & vec4<u32>(27596u, var_0.a.c.d, 76332u, 1731u), ~abs(vec4<u32>(49532u, arg_3.d, arg_0.c.d, 10341u))) >> (max(select(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(arg_0.c.d, arg_0.c.d, 53928u, 58659u)), reverseBits(vec4<u32>(15234u, arg_3.d, 0u, 1590u))), ~vec4<u32>(arg_3.d, 4294967295u, var_0.b.d, var_0.b.d), !any(vec3<bool>(arg_1.x, true, arg_1.x))), abs(~vec4<u32>(var_0.a.c.d, 41738u, 92524u, 64347u)) | ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.c.d, 8329u, var_0.a.d.d, arg_0.c.d), vec4<u32>(arg_3.d, 75222u, 1u, var_0.a.c.d))) % vec4<u32>(32u));
    let var_3 = max(reverseBits(max(vec4<u32>(0u, arg_0.c.d, var_2.x, 34283u), vec4<u32>(var_2.x, var_0.a.d.d, 0u, 56061u) | vec4<u32>(16760u, 93837u, var_0.b.d, arg_0.d.d))) << (select(vec4<u32>(var_0.a.d.d, _wgslsmith_add_u32(71560u, var_0.a.c.d), 26602u, var_2.x), vec4<u32>(34976u, arg_3.d, 1u, var_0.a.d.d), select(var_1, !var_1, true)) % vec4<u32>(32u)), vec4<u32>(4294967295u, arg_3.d, ~(~1u), arg_0.d.d));
    let var_4 = var_0.a.b.x;
    return arg_0.c.c;
}

fn func_2() -> bool {
    let var_0 = Struct_1(1340f, _wgslsmith_f_op_f32(abs(2033f)), func_4(Struct_2(u_input.a.xww, vec2<bool>(any(vec2<bool>(false, false)), false), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1156f), _wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_mod_vec3_i32(u_input.a.xwy, vec3<i32>(-10810i, 6627i, u_input.a.x)), func_3(-5793i, vec3<u32>(1u, 4294967295u, 19002u), 1u, vec4<bool>(true, false, true, true)), 589f), Struct_1(_wgslsmith_div_f32(-439f, 1000f), 697f, _wgslsmith_sub_vec3_i32(u_input.a.yyy, u_input.a.wwx), 4294967295u, _wgslsmith_f_op_f32(step(204f, 1229f))), false), vec4<bool>(true, -u_input.a.x == 2147483647i, !all(vec3<bool>(true, true, true)), true), !vec3<bool>(any(vec2<bool>(false, false)), any(vec3<bool>(true, true, true)), true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-179f, -240f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-210f)))), ~_wgslsmith_div_vec3_i32(vec3<i32>(-10968i, u_input.a.x, 44504i), u_input.a.zwy), ~(~11401u), _wgslsmith_f_op_f32(-638f * _wgslsmith_f_op_f32(f32(-1f) * -365f)))), 1u, 1489f);
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1884f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_3 = Struct_5(var_0.c.x, Struct_4(Struct_2(u_input.a.ywy, vec2<bool>(true, var_1), var_0, var_0, var_1 == var_1), var_0), var_0);
    let var_4 = countOneBits(~(~vec2<u32>(4294967295u, 1u)));
    return var_1;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: f32, arg_3: vec3<bool>) -> i32 {
    let var_0 = select(false, all(vec3<bool>(true, all(select(vec4<bool>(arg_3.x, false, arg_3.x, true), vec4<bool>(false, false, arg_3.x, true), true)), arg_3.x)), func_2());
    var var_1 = !vec3<bool>(false & select(true, all(vec3<bool>(arg_3.x, var_0, var_0)), arg_3.x), arg_3.x, var_0);
    var var_2 = _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(-min(max(arg_1.x, -13043i), _wgslsmith_mult_i32(arg_0.x, -37772i)), u_input.a.x, (u_input.a.x ^ (i32(-1i) * -42700i)) & -1i, arg_1.x));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), arg_2);
    var_1 = !vec3<bool>(_wgslsmith_clamp_i32(0i, arg_1.x << (80151u % 32u), -45009i) > ~abs(arg_1.x), all(vec4<bool>(true, true, var_2.x <= -52241i, true)), -5414i < _wgslsmith_mod_i32(~arg_1.x, arg_1.x));
    return reverseBits(-35406i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), false), !select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(false, true)), true);
    var_0 = select(!(!(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x)))), vec2<bool>(true, func_1(_wgslsmith_mult_vec2_i32(u_input.a.zy, u_input.a.wz), vec3<i32>(u_input.a.x, -2147483647i, 8901i) | u_input.a.yyw, _wgslsmith_f_op_f32(sign(609f)), vec3<bool>(var_0.x, var_0.x, true)) > firstTrailingBit(u_input.a.x)), vec2<bool>(func_2(), var_0.x));
    let var_1 = var_0.x | true;
    var var_2 = Struct_5(_wgslsmith_sub_i32(2538i, (7565i >> (1u % 32u)) >> (1u % 32u)) | select(-50549i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), ~u_input.a.xw), any(select(vec3<bool>(var_1, false, false), vec3<bool>(true, false, true), var_0.x))), Struct_4(Struct_2(-firstTrailingBit(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), select(select(vec2<bool>(var_1, var_1), vec2<bool>(true, var_1), vec2<bool>(false, false)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_1), false), true), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1771f), _wgslsmith_f_op_f32(f32(-1f) * -364f), vec3<i32>(-5680i, u_input.a.x, 1i), 38125u, -952f), Struct_1(_wgslsmith_f_op_f32(step(-626f, 692f)), 1000f, u_input.a.yyy, max(32117u, 0u), _wgslsmith_f_op_f32(round(1000f))), select(all(vec3<bool>(true, var_0.x, var_0.x)), var_0.x, u_input.a.x < 940i)), Struct_1(_wgslsmith_f_op_f32(round(-853f)), -1216f, firstTrailingBit(abs(u_input.a.zzx)), ~_wgslsmith_mod_u32(1u, 4294967295u), _wgslsmith_f_op_f32(max(-221f, _wgslsmith_f_op_f32(784f - 115f))))), Struct_1(_wgslsmith_f_op_f32(-1210f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-333f)) + _wgslsmith_f_op_f32(f32(-1f) * -168f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1695f, -416f)))), u_input.a.wyw, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1093u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 3705u))), 1000f));
    var var_3 = var_2.c.c.zx ^ _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, ~_wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), ~(~_wgslsmith_mult_vec2_i32(vec2<i32>(19316i, u_input.a.x), var_2.b.b.c.xz)));
    var_2 = Struct_5(-25279i, Struct_4(Struct_2(vec3<i32>(u_input.a.x, var_3.x, -9145i), !select(var_2.b.a.b, var_2.b.a.b, false), Struct_1(_wgslsmith_f_op_f32(var_2.b.b.a * -528f), 1000f, firstLeadingBit(var_2.b.b.c), max(65931u, 31951u), _wgslsmith_f_op_f32(484f - -358f)), Struct_1(499f, _wgslsmith_f_op_f32(f32(-1f) * -811f), vec3<i32>(var_3.x, var_2.b.b.c.x, u_input.a.x), var_2.b.a.d.d, _wgslsmith_f_op_f32(trunc(-2166f))), 4294967295u != var_2.c.d), var_2.b.a.c), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.e) + _wgslsmith_f_op_f32(var_2.b.b.e - _wgslsmith_div_f32(var_2.c.b, var_2.c.a))), _wgslsmith_f_op_f32(f32(-1f) * -210f), ~(~select(var_2.b.b.c, var_2.b.b.c, vec3<bool>(true, var_1, false))), _wgslsmith_dot_vec4_u32(~vec4<u32>(660u, var_2.c.d, 51211u, var_2.b.a.c.d), vec4<u32>(21411u, 1u, 32129u, var_2.b.a.d.d) << (~vec4<u32>(var_2.b.a.d.d, 4294967295u, var_2.c.d, var_2.b.a.d.d) % vec4<u32>(32u))), _wgslsmith_f_op_f32(max(var_2.c.b, var_2.c.a))));
    let var_4 = var_2.b.a;
    let var_5 = ~vec3<i32>(var_2.c.c.x, (_wgslsmith_add_i32(6946i, u_input.a.x) << (~var_2.b.a.d.d % 32u)) << (var_4.c.d % 32u), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~(-(i32(-1i) * -22675i)), var_4.d.c.x), _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, -38745i, var_5.x, 0i), u_input.a), var_4.c.d, abs(firstTrailingBit(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(8178i, var_2.c.c.x, 2147483647i, u_input.a.x)))));
}

