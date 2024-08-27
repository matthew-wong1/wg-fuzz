struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    let var_0 = arg_0;
    global0 = !select(vec2<bool>(true, true), !(!vec2<bool>(true, global0.x)), false);
    global0 = vec2<bool>(true, -33090i < ~min(_wgslsmith_div_i32(u_input.b.x, var_0), ~arg_0));
    global0 = vec2<bool>(true, global0.x);
    global0 = !select(select(select(!vec2<bool>(false, global0.x), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, false), false), all(vec4<bool>(false, global0.x, global0.x, true))), select(vec2<bool>(true, true), vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x)), _wgslsmith_f_op_f32(floor(808f)) == _wgslsmith_f_op_f32(-1497f * 1034f)), vec2<bool>(global0.x, -u_input.b.x > _wgslsmith_sub_i32(2147483647i, u_input.b.x)), true);
    return !vec4<bool>((_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 86329u), vec2<u32>(10785u, 19517u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(1u, u_input.a, 35155u)) % 32u)) > _wgslsmith_mult_u32(~u_input.a, _wgslsmith_mult_u32(5854u, u_input.a)), all(!select(vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, false, false), false)), global0.x || any(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(false, false))), !all(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), vec2<bool>(true, global0.x))));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    let var_0 = Struct_4(Struct_1(1i, global0.x, ~u_input.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-373f)))), global0.x), all(select(vec4<bool>(true, true, false, true), !vec4<bool>(true, true, global0.x, global0.x), global0.x)));
    global0 = !select(select(vec2<bool>(global0.x, any(vec2<bool>(var_0.b, global0.x))), select(select(vec2<bool>(true, true), vec2<bool>(global0.x, false), vec2<bool>(true, global0.x)), vec2<bool>(var_0.a.b, var_0.a.b), true), var_0.b), vec2<bool>(!any(vec2<bool>(false, global0.x)), false), !(!vec2<bool>(false, global0.x)));
    global0 = vec2<bool>(true, var_0.a.b);
    let var_1 = select(arg_0, max(_wgslsmith_mod_vec3_u32(arg_0, max(reverseBits(arg_0), reverseBits(arg_0))), countOneBits(arg_0)), all(select(func_3(-u_input.b.x), vec4<bool>(global0.x, global0.x, false, true), !(!var_0.b))));
    global0 = func_3(_wgslsmith_div_i32(-1i | (abs(var_0.a.a) >> (~var_1.x % 32u)), -2147483647i)).xx;
    return !(firstTrailingBit(arg_0.x) > ~(~62891u));
}

fn func_1() -> vec2<bool> {
    let var_0 = select(vec2<bool>(select(true, func_2(reverseBits(vec3<u32>(u_input.a, u_input.a, 1u))), false), true), vec2<bool>(global0.x, global0.x), global0.x);
    var var_1 = global0.x;
    let var_2 = Struct_5(vec3<bool>(true, all(func_3(~(-2147483647i))), var_0.x || select(true, select(global0.x, true, false), false)), Struct_1(u_input.b.x, !select(true, true, !var_0.x), 1u, _wgslsmith_f_op_f32(step(-736f, _wgslsmith_div_f32(1977f, _wgslsmith_f_op_f32(abs(452f))))), global0.x), any(func_3(abs(u_input.b.x))), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1197f)) * _wgslsmith_div_f32(1000f, -205f)) >= -908f) | (func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, -2147483647i), vec3<i32>(-7392i, -11859i, 15056i))).x | global0.x));
    var var_3 = _wgslsmith_div_i32(i32(-1i) * -58172i, _wgslsmith_add_i32(select(0i, _wgslsmith_clamp_i32(-4256i, u_input.b.x, u_input.b.x), all(var_2.a)), u_input.b.x) << (var_2.b.c % 32u));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-798f, var_2.b.d) * var_2.b.d), var_2.b.d))), -904f, _wgslsmith_f_op_f32(select(388f, -1171f, false)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(!vec2<bool>(all(vec4<bool>(global0.x, true, false, false)), global0.x), vec2<bool>(global0.x == global0.x, !(0u >= u_input.a)), true);
    global0 = !func_1();
    var var_0 = Struct_5(!vec3<bool>(global0.x, !(!global0.x), !(global0.x || true)), Struct_1(u_input.b.x, true & global0.x, u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -339f), global0.x | func_2(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 49679u)))), global0.x, func_1().x);
    let var_1 = -abs(select(min(u_input.b, firstTrailingBit(vec4<i32>(-2147483647i, u_input.b.x, var_0.b.a, 0i))), _wgslsmith_add_vec4_i32(reverseBits(u_input.b), -vec4<i32>(-56593i, 0i, var_0.b.a, -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-22959i, 0i, u_input.b.x, u_input.b.x), u_input.b) > ~u_input.b.x));
    global0 = vec2<bool>(((false | any(var_0.a.xz)) & true) == func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-37081i, var_1.x, -2147483647i, var_0.b.a), firstTrailingBit(vec4<i32>(var_1.x, 1i, u_input.b.x, -1i)))).x, global0.x);
    var var_2 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(reverseBits(select(vec2<u32>(1u, 14884u), vec2<u32>(24088u, u_input.a), vec2<bool>(var_0.a.x, true))), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.c, var_0.b.c), vec2<u32>(4294967295u, 0u))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(0u, var_0.b.c)), select(vec2<u32>(var_0.b.c, var_0.b.c), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, global0.x))), abs(abs(vec2<u32>(u_input.a, 1864u))), (vec2<u32>(var_0.b.c, u_input.a) >> (vec2<u32>(85748u, var_0.b.c) % vec2<u32>(32u))) | ~vec2<u32>(var_0.b.c, var_0.b.c)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_0.b.c | _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, var_0.b.c), 1u)), -vec2<i32>(-var_1.x, -(~(-1i))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.b.d) * -556f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.b.d)), 246f))), ~_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(var_1.x, -2147483647i)), var_1.wy), vec3<f32>(280f, -617f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.d))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_0.b.d)))), countOneBits(var_0.b.a) == -u_input.b.x))));
}

