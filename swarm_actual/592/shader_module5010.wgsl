struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: vec3<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec4<i32>) -> vec2<bool> {
    global0 = Struct_2(global0.a, arg_1);
    let var_0 = Struct_4(abs(arg_0.a << (max(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), _wgslsmith_mult_u32(83994u, arg_2)) % 32u)), firstTrailingBit(vec2<i32>(arg_1.a, -arg_3.x)));
    var var_1 = -31051i;
    let var_2 = select(vec4<bool>(!arg_1.c, global0.a.x, false, all(select(!vec2<bool>(global0.a.x, true), vec2<bool>(false, false), true))), select(!(!select(vec4<bool>(false, arg_0.c, arg_1.c, true), vec4<bool>(false, global0.a.x, arg_0.c, global0.a.x), vec4<bool>(true, arg_1.c, false, arg_1.c))), select(vec4<bool>(global0.a.x, true, true, global0.b.c || true), select(!vec4<bool>(arg_0.c, arg_0.c, global0.b.c, arg_1.c), vec4<bool>(false, true, global0.b.c, arg_0.c), false), true), arg_1.c), select(select(select(select(vec4<bool>(arg_0.c, false, true, true), vec4<bool>(arg_0.c, false, true, global0.a.x), vec4<bool>(arg_0.c, global0.b.c, arg_1.c, false)), vec4<bool>(false, arg_0.c, arg_0.c, global0.b.c), all(vec2<bool>(true, arg_1.c))), vec4<bool>(any(vec2<bool>(arg_0.c, global0.b.c)), !arg_1.c, 624f != global0.b.b.x, true), all(select(vec4<bool>(true, false, global0.b.c, true), vec4<bool>(global0.b.c, true, true, arg_1.c), vec4<bool>(arg_0.c, true, false, false)))), select(!(!vec4<bool>(arg_1.c, true, global0.b.c, true)), vec4<bool>(any(vec3<bool>(arg_1.c, arg_1.c, global0.b.c)), false, false, true), global0.a.x), !vec4<bool>(4294967295u != u_input.b, true, select(false, arg_0.c, arg_1.c), false)));
    var var_3 = Struct_1(~(-1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(113f, -1079f))))), arg_0.c);
    return vec2<bool>(select(all(vec4<bool>(var_3.c, !var_2.x, false, true)), global0.b.c, var_2.x), false);
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> vec3<bool> {
    global0 = Struct_2(!func_3(Struct_1(-1i, vec2<f32>(-518f, global0.b.b.x), arg_1), Struct_1(min(3006i, 6452i), vec2<f32>(global0.b.b.x, global0.b.b.x), any(vec4<bool>(arg_0.x, true, arg_1, arg_1))), reverseBits(20163u ^ u_input.a.x), -vec4<i32>(-2147483647i, global0.b.a, -1i, 50014i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b, u_input.a.x, 0u), u_input.a) % vec4<u32>(32u))), global0.b);
    let var_0 = Struct_2(vec2<bool>(!all(select(vec4<bool>(arg_1, true, false, true), vec4<bool>(true, false, true, global0.b.c), true)), global0.b.c), global0.b);
    global0 = Struct_2(var_0.a, Struct_1(67855i, _wgslsmith_f_op_vec2_f32(global0.b.b * _wgslsmith_f_op_vec2_f32(-var_0.b.b)), select(!(var_0.b.b.x > var_0.b.b.x), false, true)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2304f))) * 407f), -1i, min(u_input.a.x, abs(firstLeadingBit(~87998u))), !select(vec3<bool>(global0.b.c, any(vec4<bool>(global0.b.c, global0.a.x, false, true)), u_input.a.x >= 0u), select(arg_0, select(vec3<bool>(true, true, global0.b.c), vec3<bool>(false, true, true), vec3<bool>(var_0.a.x, false, arg_1)), vec3<bool>(false, arg_1, false)), arg_0), firstTrailingBit(reverseBits(var_0.b.a)));
    global0 = Struct_2(var_0.a, Struct_1(32679i, _wgslsmith_f_op_vec2_f32(global0.b.b * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.b.b)))), var_1.d.x));
    return arg_0;
}

fn func_1(arg_0: i32) -> vec3<bool> {
    var var_0 = u_input.a.zx;
    var var_1 = Struct_3(global0.b.b.x, abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 3313i, 1i, arg_0) >> (vec4<u32>(31658u, 19486u, u_input.b, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(global0.b.a, -75422i, global0.b.a, u_input.c), vec4<i32>(u_input.c, 10957i, arg_0, arg_0)))), u_input.b, select(!(!func_2(vec3<bool>(false, global0.b.c, true), false)), !(!select(vec3<bool>(global0.b.c, false, global0.a.x), vec3<bool>(global0.b.c, global0.b.c, false), vec3<bool>(global0.a.x, true, false))), vec3<bool>((u_input.b >> (31715u % 32u)) > ~86083u, any(func_2(vec3<bool>(false, false, false), false).yz), all(vec4<bool>(global0.a.x, false, global0.a.x, global0.b.c)))), abs(-1i));
    var var_2 = Struct_4(-2147483647i, _wgslsmith_add_vec2_i32(vec2<i32>(-35318i, ~arg_0), select(abs(vec2<i32>(55144i, global0.b.a)), vec2<i32>(arg_0, global0.b.a), select(var_1.d.xz, global0.a, var_1.d.yz))) >> (firstLeadingBit(reverseBits(u_input.a.wy)) % vec2<u32>(32u)));
    let var_3 = var_1.d.x;
    var_1 = Struct_3(_wgslsmith_div_f32(global0.b.b.x, global0.b.b.x), ~1i, _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.x, _wgslsmith_clamp_u32(var_0.x, var_0.x, u_input.b) >> (~15028u % 32u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(842u, var_0.x, u_input.a.x), var_0.x & var_0.x)), 1u), vec3<bool>(true, false, any(select(vec4<bool>(var_1.d.x, var_1.d.x, global0.a.x, true), !vec4<bool>(true, global0.b.c, true, false), vec4<bool>(var_1.d.x, true, var_1.d.x, false)))), arg_0);
    return vec3<bool>(var_1.d.x, !var_1.d.x, abs(~global0.b.a) >= _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.a, arg_0, 0i), vec3<i32>(arg_0, -25554i, var_2.b.x)), var_1.e, ~(-23141i | u_input.c)));
}

fn func_4(arg_0: vec3<bool>) -> vec2<bool> {
    var var_0 = firstTrailingBit(firstTrailingBit(u_input.a.zy));
    let var_1 = vec2<bool>(arg_0.x, false);
    var var_2 = u_input.c;
    let var_3 = global0.a;
    let var_4 = true;
    return select(!var_1, global0.a, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec2<bool>(true, global0.a.x), Struct_1(max(select(-global0.b.a, _wgslsmith_mod_i32(u_input.c, 20907i), global0.b.c | global0.b.c), -(~global0.b.a)), vec2<f32>(-824f, global0.b.b.x), global0.a.x && true));
    global0 = Struct_2(func_4(func_1(-reverseBits(u_input.c))), global0.b);
    global0 = Struct_2(vec2<bool>(false || !select(global0.b.c, global0.a.x, global0.a.x), global0.a.x), Struct_1(~countOneBits(-2147483647i), global0.b.b, true));
    var var_0 = Struct_1(global0.b.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global0.b.b - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2562f, global0.b.b.x)))))), u_input.a.x <= ~firstLeadingBit(reverseBits(1u)));
    let var_1 = Struct_2(global0.a, Struct_1(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(sign(-365f)), var_0.b.x), all(select(vec4<bool>(false, true, var_0.c, global0.a.x), !vec4<bool>(var_0.c, false, false, var_0.c), !vec4<bool>(global0.a.x, true, true, global0.a.x)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b.x));
    let var_3 = Struct_5(Struct_4(reverseBits(_wgslsmith_mod_i32(u_input.c ^ global0.b.a, -35572i)), countOneBits(min(reverseBits(vec2<i32>(1i, var_1.b.a)), reverseBits(vec2<i32>(-30667i, var_0.a))))), reverseBits(var_0.a), vec3<bool>(!func_4(func_1(var_0.a)).x, global0.b.c, all(!global0.a)), Struct_3(_wgslsmith_f_op_f32(min(global0.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-580f + 1986f) * _wgslsmith_f_op_f32(global0.b.b.x + var_0.b.x)))), _wgslsmith_sub_i32(-u_input.c, 10222i) >> (102797u % 32u), _wgslsmith_sub_u32(min(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(23808u, 81349u, 13017u), vec3<u32>(u_input.b, u_input.b, u_input.a.x))), 0u), vec3<bool>(select(var_1.a.x, !global0.b.c, any(vec4<bool>(false, global0.a.x, global0.a.x, true))), true, true), -23370i));
    global0 = Struct_2(vec2<bool>(!var_1.a.x, true), Struct_1(-24691i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x + 1044f), _wgslsmith_f_op_f32(-var_0.b.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, -502f) - vec2<f32>(-1483f, var_2)))), any(!var_3.d.d)));
    var var_4 = all(func_3(Struct_1(-14335i | var_1.b.a, var_0.b, all(vec3<bool>(true, var_3.c.x, var_1.b.c))), Struct_1(2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.b)), !var_0.c), _wgslsmith_add_u32(~0u, var_3.d.c), vec4<i32>(_wgslsmith_div_i32(0i, var_3.b) & 21180i, -(var_0.a >> (4294967295u % 32u)), global0.b.a, abs(_wgslsmith_mult_i32(1i, -32267i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), var_2)), _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.b, 33286u, var_3.d.c)), u_input.a.xxz, vec3<u32>(var_3.d.c, var_3.d.c, 108457u) << (vec3<u32>(var_3.d.c, u_input.a.x, 1u) % vec3<u32>(32u)))), u_input.a.wwx), u_input.a);
}

