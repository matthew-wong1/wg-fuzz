struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(57862u, vec3<i32>(1i, -71797i, -24262i));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = true;
    var var_1 = ~u_input.a;
    let var_2 = !select(select(vec3<bool>(true, !arg_1.a.x, arg_1.a.x || arg_1.a.x), vec3<bool>(false, true, all(vec3<bool>(false, var_0, false))), !select(vec3<bool>(true, arg_1.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, arg_1.a.x, true), arg_0.a.x)), !(!vec3<bool>(arg_0.a.x, true, true)), select(!vec3<bool>(var_0, var_0, false), !vec3<bool>(var_0, true, arg_0.a.x), all(vec3<bool>(arg_0.a.x, false, false))));
    global0 = Struct_3(4294967295u, vec3<i32>(_wgslsmith_mult_i32(~(-global0.b.x), max(firstLeadingBit(-20954i), 1i)), global0.b.x, -abs(global0.b.x) & (i32(-1i) * -1i)));
    var var_3 = vec2<i32>(_wgslsmith_mult_i32(~(global0.b.x | (2147483647i >> (1u % 32u))), ~_wgslsmith_mod_i32(global0.b.x, global0.b.x)), _wgslsmith_add_i32(-2147483647i, 0i));
    return max(firstTrailingBit(~var_1.x), max(firstLeadingBit(47995u), ~_wgslsmith_div_u32(42824u ^ var_1.x, 85638u)));
}

fn func_2() -> vec4<i32> {
    global0 = Struct_3(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(_wgslsmith_div_u32(global0.a, 83463u), ~global0.a), _wgslsmith_sub_u32(countOneBits(u_input.a.x), 1u), u_input.a.x), vec3<i32>(global0.b.x, global0.b.x, (global0.b.x >> (global0.a % 32u)) << (_wgslsmith_mod_u32(global0.a, 63560u) % 32u)) << (vec3<u32>(global0.a, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(global0.a, 0u, 30786u), ~u_input.a.x), 0u) % vec3<u32>(32u)));
    var var_0 = true;
    let var_1 = !(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))));
    let var_2 = Struct_3(_wgslsmith_add_u32(_wgslsmith_mult_u32(max(select(global0.a, u_input.b, var_1), global0.a >> (30626u % 32u)), abs(24200u)), reverseBits(4294967295u)), global0.b & _wgslsmith_add_vec3_i32(vec3<i32>(~global0.b.x, -global0.b.x, -global0.b.x), global0.b));
    let var_3 = Struct_1(!vec2<bool>(var_1, var_1));
    return vec4<i32>(_wgslsmith_dot_vec2_i32((min(vec2<i32>(2147483647i, global0.b.x), var_2.b.yz) >> (_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(global0.a, 1u)) % vec2<u32>(32u))) >> (vec2<u32>(func_3(Struct_1(var_3.a), var_3), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 4294967295u), vec2<u32>(u_input.a.x, global0.a))) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(max(vec2<i32>(var_2.b.x, var_2.b.x) >> (vec2<u32>(23336u, 7886u) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(-38442i, 0i), global0.b.zy)), vec2<i32>(_wgslsmith_sub_i32(-2147483647i, -55122i), i32(-1i) * -2147483647i))), -20348i, reverseBits(_wgslsmith_sub_i32(global0.b.x, var_2.b.x)), ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(0i, global0.b.x), var_2.b.x) & -2147483647i);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2) -> u32 {
    let var_0 = func_2();
    let var_1 = arg_1.c;
    let var_2 = arg_1.a.a.x;
    let var_3 = Struct_5(Struct_2(Struct_1(var_1.a), any(select(!arg_1.e, vec2<bool>(var_2, true), arg_0.x <= global0.a)), arg_1.a, arg_1.d, select(var_1.a, vec2<bool>(true, true), all(select(vec4<bool>(true, var_2, true, var_1.a.x), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, var_2))))), Struct_3(_wgslsmith_sub_u32(1u, 0u), vec3<i32>(1i, ~(-1i), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(8546i, -20933i, -2147483647i), var_0.ywz)))), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 7883u), vec2<u32>(arg_0.x, 88232u)) | _wgslsmith_div_u32(u_input.a.x, arg_0.x), 0u), 9439u, global0.a), Struct_3(~select(u_input.b, 4294967295u, var_1.a.x) | 1u, vec3<i32>(select(-var_0.x, ~72303i, all(arg_1.a.a)), _wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.x, global0.b.x), global0.b.x >> (global0.a % 32u)), _wgslsmith_mult_i32(12416i, global0.b.x) >> ((u_input.a.x ^ 17387u) % 32u))));
    let var_4 = arg_1.d;
    return 5684u;
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = i32(-1i) * -(-(global0.b.x & 22876i) & (i32(-1i) * -global0.b.x));
    var var_1 = true;
    var var_2 = Struct_3(arg_3.x, vec3<i32>(firstLeadingBit(-2147483647i), _wgslsmith_mod_i32(-(~2147483647i), _wgslsmith_div_i32(select(13669i, 2147483647i, false), 1i)), min(var_0 >> (45749u % 32u), global0.b.x)));
    let var_3 = ~arg_3.xzw;
    var var_4 = Struct_4(select(arg_1 < arg_1, !arg_2.a.x, (all(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, true)) || true) && arg_2.a.x));
    return Struct_2(Struct_1(!(!vec2<bool>(false, arg_2.a.x))), !(!(!all(vec2<bool>(var_4.a, var_4.a)))), Struct_1(vec2<bool>(1f > arg_1, select(!arg_2.a.x, !var_4.a, !arg_2.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(128f + arg_1)))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1444f - _wgslsmith_f_op_f32(f32(-1f) * -449f)), _wgslsmith_div_f32(arg_1, arg_1))), arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<i32>(_wgslsmith_mult_i32(countOneBits(global0.b.x), select(global0.b.x, global0.b.x, false)), 6269i) & ~vec2<i32>(~(-2147483647i), abs(-32319i)), -447f, Struct_1(vec2<bool>(true, true)), vec4<u32>((abs(1u) & select(global0.a, u_input.b, false)) ^ (0u | global0.a), _wgslsmith_sub_u32(~func_1(vec4<u32>(5703u, 5000u, 15616u, u_input.b), Struct_2(Struct_1(vec2<bool>(true, false)), true, Struct_1(vec2<bool>(true, true)), false, vec2<bool>(true, false))), _wgslsmith_mod_u32(4294967295u, global0.a) >> (~1u % 32u)), firstLeadingBit(~(global0.a << (u_input.a.x % 32u))), max(_wgslsmith_mod_u32(0u & global0.a, global0.a << (global0.a % 32u)), ~reverseBits(global0.a))));
    let var_1 = 1223f;
    global0 = Struct_3(_wgslsmith_mod_u32(u_input.a.x, 17257u), global0.b);
    global0 = Struct_3(~func_3(Struct_1(vec2<bool>(var_0.d, false)), var_0.c), vec3<i32>(countOneBits(abs(global0.b.x | 24440i)), -1i, global0.b.x));
    global0 = Struct_3(u_input.b ^ firstTrailingBit(reverseBits(_wgslsmith_add_u32(79273u, global0.a))), min(global0.b, global0.b | vec3<i32>(global0.b.x, 0i, global0.b.x)));
    global0 = Struct_3(1u, ~_wgslsmith_div_vec3_i32(-global0.b & _wgslsmith_clamp_vec3_i32(vec3<i32>(-23493i, 1i, -4820i), global0.b, vec3<i32>(global0.b.x, global0.b.x, global0.b.x)), firstTrailingBit(global0.b) & vec3<i32>(global0.b.x, -1i, global0.b.x)));
    global0 = Struct_3(func_1(abs(vec4<u32>(53472u, 58667u, u_input.a.x, 0u) << (vec4<u32>(3312u, global0.a, u_input.b, 4294967295u) % vec4<u32>(32u))) | vec4<u32>(~59263u, u_input.b >> (125955u % 32u), 1u, global0.a), Struct_2(var_0.a, false, Struct_1(var_0.e), !(!var_0.b), vec2<bool>(all(var_0.a.a), true))), select(~(_wgslsmith_add_vec3_i32(vec3<i32>(global0.b.x, global0.b.x, 2147483647i), vec3<i32>(-2147483647i, 22106i, global0.b.x)) << (vec3<u32>(u_input.a.x, 64129u, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(global0.b.x, -_wgslsmith_mult_i32(global0.b.x, 0i), countOneBits(global0.b.x)), vec3<bool>(var_0.e.x || any(var_0.e), any(var_0.a.a), select(false, var_0.d, !var_0.c.a.x))));
    var var_2 = vec2<bool>(!(0i < global0.b.x), var_0.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(677f, ~(~(~(~vec3<u32>(global0.a, global0.a, 0u)))), vec4<u32>(~u_input.b, global0.a, 7726u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(63695u, 1u)), vec2<u32>(global0.a, global0.a)), global0.a)));
}

