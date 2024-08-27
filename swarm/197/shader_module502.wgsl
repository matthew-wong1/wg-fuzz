struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: f32, arg_3: Struct_5) -> u32 {
    var var_0 = ~29877u;
    let var_1 = ~_wgslsmith_mod_vec2_i32(min(~vec2<i32>(43635i, u_input.a), max(-vec2<i32>(u_input.a, -1i), ~vec2<i32>(-2147483647i, u_input.a))), vec2<i32>(u_input.a, 1i));
    let var_2 = arg_2;
    var var_3 = vec2<u32>(0u, 75399u);
    var var_4 = select(select(!(!(!vec3<bool>(arg_1, true, arg_1))), !select(vec3<bool>(arg_0.a, false, arg_0.a), select(vec3<bool>(false, arg_3.a, arg_3.b), vec3<bool>(true, arg_0.a, true), false), select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(false, true, arg_3.d.x), arg_3.a)), arg_0.a & !(arg_3.b && arg_3.d.x)), !select(!select(vec3<bool>(arg_1, arg_3.a, true), vec3<bool>(false, false, arg_1), vec3<bool>(false, arg_1, false)), select(vec3<bool>(arg_1, true, true), select(vec3<bool>(arg_3.b, arg_0.d.x, arg_1), vec3<bool>(arg_1, arg_3.b, false), vec3<bool>(false, arg_0.d.x, arg_1)), vec3<bool>(arg_0.a, true, false)), any(vec4<bool>(arg_3.a, true, false, true))), !select(select(!vec3<bool>(arg_3.d.x, true, arg_1), vec3<bool>(arg_1, arg_3.d.x, false), arg_1 || arg_1), vec3<bool>(arg_0.b, -2842i > var_1.x, arg_3.d.x), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, arg_3.d.x), vec3<bool>(arg_3.a, true, arg_3.b)), vec3<bool>(arg_3.a, arg_3.a, false), select(vec3<bool>(arg_3.d.x, arg_0.a, arg_0.a), vec3<bool>(false, true, false), vec3<bool>(true, false, false)))));
    return arg_3.c.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4, arg_3: f32) -> f32 {
    let var_0 = arg_2.b;
    global0 = Struct_3(~(~global0.a), Struct_2(_wgslsmith_div_f32(arg_2.a.a, arg_1.b.d.x), vec2<u32>(arg_0.a, arg_2.a.b.x), Struct_1(_wgslsmith_div_u32(4294967295u, ~var_0.b.x)), var_0.d), var_0.c);
    let var_1 = Struct_1(var_0.b.x);
    var var_2 = global0.a.xxy;
    var_2 = vec3<u32>(reverseBits(~_wgslsmith_add_u32(0u, var_1.a) >> (~arg_1.a.b.x % 32u)), 1u, arg_0.a);
    return _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.d.x), _wgslsmith_f_op_f32(floor(-119f))))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a, global0.b.a, -591f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.a, 743f, 596f) - vec3<f32>(global0.b.d.x, 776f, 1802f)))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a, global0.b.d.x, 1228f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-900f, global0.b.a, -178f) + vec3<f32>(global0.b.a, global0.b.a, 909f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.d.x, 250f, -1318f) + vec3<f32>(global0.b.a, -405f, 512f)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(func_3(Struct_5(false, true, global0.b.c, vec2<bool>(false, true)), any(vec4<bool>(true, false, true, false)), global0.b.a, Struct_5(false, true, Struct_1(global0.b.b.x), vec2<bool>(true, true)))), Struct_4(global0.b, global0.b), Struct_4(global0.b, global0.b), 1314f)));
    global0 = Struct_3(_wgslsmith_mod_vec4_u32(global0.a & _wgslsmith_sub_vec4_u32(~global0.a, global0.a | global0.a), global0.a), global0.b, Struct_1(abs(4294967295u) << (global0.a.x % 32u)));
    var var_2 = Struct_4(Struct_2(var_0.x, vec2<u32>(global0.b.b.x, ~(~global0.a.x)), Struct_1(~global0.a.x ^ 52520u), _wgslsmith_f_op_vec2_f32(global0.b.d - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -782f), global0.b.a))), global0.b);
    var var_3 = Struct_3(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_2.b.b.x, var_2.b.c.a, _wgslsmith_mod_u32(4294967295u, 624u) >> ((global0.a.x >> (1u % 32u)) % 32u)), ~vec4<u32>(abs(17235u), ~global0.a.x, 33021u, var_2.a.b.x)), var_2.b, var_2.b.c);
    return -_wgslsmith_mod_i32(u_input.a, max(-8304i, u_input.a));
}

fn func_1(arg_0: Struct_5) -> vec4<bool> {
    var var_0 = u_input.a;
    let var_1 = max(u_input.a & _wgslsmith_add_i32(firstLeadingBit(u_input.a), (u_input.a << (arg_0.c.a % 32u)) >> (global0.a.x % 32u)), _wgslsmith_clamp_i32(~(-1i), u_input.a, -u_input.a));
    var var_2 = _wgslsmith_clamp_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, 17652i, 32996i)) >> (~abs(global0.a) % vec4<u32>(32u)), vec4<i32>(~u_input.a, _wgslsmith_mult_i32(-(u_input.a | 0i), _wgslsmith_sub_i32(-u_input.a, var_1)), _wgslsmith_mod_i32(reverseBits(-105306i), func_2()), firstTrailingBit(~_wgslsmith_mult_i32(14157i, u_input.a))), max(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_1, u_input.a, u_input.a, 2147483647i), max(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<i32>(-28413i, 42235i, u_input.a, var_1))), _wgslsmith_clamp_vec4_i32(reverseBits(~vec4<i32>(u_input.a, 2147483647i, 0i, u_input.a)), reverseBits(vec4<i32>(2147483647i, var_1, var_1, u_input.a)) & reverseBits(vec4<i32>(-1i, u_input.a, var_1, 2147483647i)), vec4<i32>(u_input.a, u_input.a, 2147483647i, -u_input.a))));
    var_0 = -1i;
    var_2 = ~(-vec4<i32>(var_1, u_input.a, ~1i | -u_input.a, firstTrailingBit(u_input.a) & -2147483647i));
    return select(!vec4<bool>(arg_0.a, any(vec3<bool>(true, true, true)), true, any(arg_0.d)), vec4<bool>(arg_0.d.x, arg_0.a, all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, arg_0.b, arg_0.d.x), vec3<bool>(arg_0.a, arg_0.d.x, true), arg_0.b), select(vec3<bool>(arg_0.d.x, false, false), vec3<bool>(arg_0.a, arg_0.b, arg_0.d.x), vec3<bool>(arg_0.a, true, arg_0.b)))), 1i > -_wgslsmith_mult_i32(2147483647i, var_1)), true);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -618f)), _wgslsmith_div_vec2_u32(arg_1, ~arg_1), global0.c, _wgslsmith_f_op_vec2_f32(-global0.b.d)), global0.b);
    let var_1 = true;
    let var_2 = min(vec3<i32>(countOneBits(countOneBits(u_input.a)), 1i, 0i), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, -10362i, u_input.a)), vec3<i32>(2147483647i, 0i, u_input.a) << (vec3<u32>(arg_1.x, global0.a.x, 0u) % vec3<u32>(32u))) >> (global0.a.xwy % vec3<u32>(32u)), max(vec3<i32>(u_input.a, -2147483647i, _wgslsmith_sub_i32(u_input.a, u_input.a)), abs(vec3<i32>(u_input.a, u_input.a, u_input.a)))));
    global0 = Struct_3(reverseBits(abs((global0.a << (global0.a % vec4<u32>(32u))) & _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, global0.b.b.x, 47477u, global0.b.b.x), vec4<u32>(arg_1.x, 0u, arg_1.x, 1u)))), Struct_2(-1000f, _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(global0.b.b.x, global0.a.x)), ~vec2<u32>(var_0.b.b.x, var_0.b.b.x)), Struct_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1.x, var_0.b.b.x), ~41454u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(var_0.a.b.x), Struct_4(Struct_2(global0.b.a, vec2<u32>(0u, 1u), Struct_1(var_0.a.c.a), var_0.a.d), var_0.a), Struct_4(var_0.b, global0.b), arg_3.x)) - _wgslsmith_f_op_f32(153f * var_0.a.a)), _wgslsmith_f_op_f32(floor(arg_3.x)))), global0.c);
    return Struct_3(~vec4<u32>(arg_1.x, firstLeadingBit(4294967295u | arg_1.x), var_0.b.b.x, 1u), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1344f * _wgslsmith_f_op_f32(f32(-1f) * -690f))), vec2<u32>(15950u, firstLeadingBit(min(arg_1.x, global0.a.x))), global0.c, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(var_0.a.d, vec2<f32>(1654f, global0.b.d.x)))))), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(~_wgslsmith_sub_vec4_u32(global0.a, ~vec4<u32>(global0.b.c.a, global0.c.a, 4294967295u, 48613u)), global0.b, global0.c);
    var var_0 = global0.b.c;
    global0 = func_5(!(!(!func_1(Struct_5(false, true, Struct_1(global0.a.x), vec2<bool>(false, true))))), _wgslsmith_div_vec2_u32(firstTrailingBit(global0.a.xw), ~vec2<u32>(var_0.a, min(4294967295u, 28197u))), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.d.x, global0.b.a, -1105f, 749f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.b.a, 424f, global0.b.a, global0.b.d.x))), vec4<bool>(true, false, false, true))))));
    let var_1 = ~vec2<u32>(9228u, ~1u);
    let var_2 = _wgslsmith_clamp_vec3_i32(-_wgslsmith_add_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 0i, -12772i), vec3<i32>(1i, u_input.a, u_input.a)), vec3<i32>(16781i, u_input.a, 0i), true), vec3<i32>(u_input.a, func_2(), -2147483647i)), countOneBits(vec3<i32>(u_input.a, u_input.a, -7995i)), -(~vec3<i32>(1i, u_input.a, _wgslsmith_add_i32(u_input.a, -7996i))));
    let var_3 = _wgslsmith_sub_vec2_u32(global0.a.xy, _wgslsmith_mod_vec2_u32(select(global0.b.b, vec2<u32>(~global0.a.x, var_0.a & var_0.a), true), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, global0.a.wy << ((vec2<u32>(global0.a.x, ~var_0.a) | var_3) % vec2<u32>(32u)), ~reverseBits(~global0.a.x | 4294967295u), func_3(Struct_5(!any(vec4<bool>(false, true, false, true)), all(func_1(Struct_5(false, true, Struct_1(var_0.a), vec2<bool>(false, true)))), global0.b.c, vec2<bool>(true, true)), countOneBits(~4294967295u) > global0.b.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.a - _wgslsmith_div_f32(745f, -528f))), Struct_5(false, any(func_1(Struct_5(true, false, Struct_1(var_3.x), vec2<bool>(true, true))).xw), Struct_1(select(59488u, global0.a.x, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))))), _wgslsmith_div_u32(~global0.a.x, ~var_3.x));
}

