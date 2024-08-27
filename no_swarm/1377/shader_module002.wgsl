struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32 = 1u;

var<private> global2: vec3<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<f32> {
    global1 = 1u;
    let var_0 = Struct_2(Struct_1(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), global0.a.c.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.c.x, global0.a.b, 1615f), vec3<f32>(-1000f, -1000f, global0.a.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.d, global0.a.d, -1243f) + global0.a.c), global0.a.a.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.a.c * vec3<f32>(-928f, -1000f, 478f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(259f, -387f, global0.a.c.x) + global0.a.c), u_input.d != u_input.d)))), -1453f));
    global2 = ~vec3<i32>(-1i, -(~global2.x | -2147483647i), 17687i);
    global1 = 0u | abs(firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 35061u, 10114u), vec3<u32>(4308u, u_input.d, u_input.a.x))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.b))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.d)))), -u_input.c.x <= _wgslsmith_mult_i32(-global2.x, 17970i)))));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0.a.c.xz)));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>) -> bool {
    var var_0 = (-24483i ^ select(arg_0, 19755i, true)) & 41705i;
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(-36367i, abs(-13764i)), abs(_wgslsmith_add_i32(global2.x, global2.x ^ global2.x) << (~abs(u_input.a.x) % 32u)));
    let var_2 = Struct_1(vec2<bool>((1i > u_input.c.x) && (select(u_input.a.x, 4294967295u, global0.a.a.x) > (4294967295u << (0u % 32u))), !select(false && global0.a.a.x, true, true)), -575f, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global0.a.c))), global0.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x));
    var var_3 = ~(~(select(vec3<i32>(-36750i, -1i, -1i), vec3<i32>(2147483647i, u_input.c.x, u_input.c.x), !global0.a.a.x) << (vec3<u32>(abs(u_input.a.x), 15865u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.d, 1u), vec3<u32>(u_input.d, 4294967295u, 4294967295u))) % vec3<u32>(32u))));
    var var_4 = ~4294967295u;
    return _wgslsmith_f_op_f32(floor(-653f)) > -400f;
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_4(global0.a);
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.d), -1881f));
    var_0 = Struct_4(Struct_1(vec2<bool>(func_4(_wgslsmith_clamp_i32(global2.x, u_input.b.x, 6291i), _wgslsmith_f_op_vec2_f32(func_3())), !func_4(global2.x, var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-601f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1287f), var_1.a.x, -807f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global0.a.b))))));
    var var_2 = Struct_2(global0.a);
    var_2 = Struct_2(Struct_1(!vec2<bool>(!var_2.a.a.x, func_4(global2.x, var_0.a.c.yz)), _wgslsmith_f_op_f32(-var_1.a.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * 1598f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-834f)))), _wgslsmith_div_f32(global0.a.d, _wgslsmith_f_op_f32(round(var_0.a.c.x)))), global0.a.c.x));
    return select(~_wgslsmith_add_vec3_i32(vec3<i32>(global2.x, global2.x, global2.x), vec3<i32>(global2.x, -53159i, -21400i)) << (vec3<u32>(4294967295u, u_input.a.x, u_input.d << (firstTrailingBit(u_input.a.x) % 32u)) % vec3<u32>(32u)), vec3<i32>(global2.x, firstLeadingBit(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -4288i, global2.x, 10896i) ^ ~vec4<i32>(global2.x, 40075i, u_input.b.x, -1i), max(~vec4<i32>(global2.x, -59061i, global2.x, u_input.b.x), vec4<i32>(-94364i, u_input.b.x, u_input.b.x, u_input.c.x)))), select(!(!select(vec3<bool>(false, var_2.a.a.x, false), vec3<bool>(var_0.a.a.x, var_2.a.a.x, global0.a.a.x), vec3<bool>(var_0.a.a.x, true, var_0.a.a.x))), vec3<bool>(var_0.a.a.x & any(vec3<bool>(true, false, true)), all(select(vec3<bool>(false, false, false), vec3<bool>(false, var_2.a.a.x, false), vec3<bool>(var_2.a.a.x, true, false))), var_2.a.a.x), func_4(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global2.x, -25601i, global2.x), -344i, -global2.x), var_2.a.c.yx)));
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-536f - global0.a.c.x), -1000f)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.b + _wgslsmith_f_op_f32(arg_0.a.b - 1650f)), _wgslsmith_div_f32(global0.a.c.x, 999f), arg_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b - _wgslsmith_f_op_f32(round(-910f))) - 1000f)));
    global2 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(global2.x, countOneBits(_wgslsmith_add_i32(u_input.b.x, -2147483647i)), _wgslsmith_div_i32(-u_input.c.x, 1i)), _wgslsmith_div_vec3_i32(-vec3<i32>(global2.x, 0i, 1i), _wgslsmith_mod_vec3_i32(~(~vec3<i32>(91746i, -2147483647i, global2.x)), ~(vec3<i32>(-2147483647i, global2.x, global2.x) | vec3<i32>(global2.x, u_input.c.x, 13712i)))), func_2());
    let var_2 = arg_0;
    var var_3 = vec3<bool>(!(!(!arg_0.a.a.x & (global0.a.a.x && global0.a.a.x))), func_4(u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.b, var_2.a.d) - _wgslsmith_f_op_vec2_f32(global0.a.c.yz - vec2<f32>(197f, -848f))) * var_1.zz)), select(!(1u == _wgslsmith_add_u32(u_input.d, u_input.d)), !any(!vec4<bool>(true, global0.a.a.x, true, false)), true));
    return _wgslsmith_sub_i32(~(-(global2.x << (0u % 32u))) ^ -abs(global2.x), firstTrailingBit(global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = max(_wgslsmith_add_vec3_i32(vec3<i32>(global2.x << (8489u % 32u), func_1(Struct_2(global0.a)), -1i ^ u_input.b.x), _wgslsmith_add_vec3_i32(vec3<i32>(-37611i, 2147483647i, u_input.b.x), vec3<i32>(0i, u_input.b.x, u_input.b.x) >> (vec3<u32>(u_input.d, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))), -(~vec3<i32>(global2.x, -34685i, -6918i) | (vec3<i32>(u_input.b.x, global2.x, -2147483647i) & vec3<i32>(global2.x, 6676i, 2147483647i)))) | ~(-max(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, 1i, u_input.c.x), vec3<i32>(global2.x, u_input.c.x, -2147483647i)), -vec3<i32>(-1i, -1i, 0i)));
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.a))));
    global2 = vec3<i32>(2147483647i, global2.x, 1i);
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -1000f)))));
    var var_1 = vec4<bool>(false, !any(select(vec3<bool>(global0.a.a.x, false, global0.a.a.x), vec3<bool>(false, global0.a.a.x, false), vec3<bool>(global0.a.a.x, global0.a.a.x, global0.a.a.x))) != any(select(vec4<bool>(global0.a.a.x, false, global0.a.a.x, global0.a.a.x), select(vec4<bool>(global0.a.a.x, global0.a.a.x, true, false), vec4<bool>(global0.a.a.x, false, global0.a.a.x, global0.a.a.x), true), all(global0.a.a))), true, !((_wgslsmith_sub_i32(-14944i, -23433i) & u_input.c.x) < -2147483647i));
    var var_2 = Struct_4(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, global0.a.b, var_0.a.x, var_2.a.c.x))), _wgslsmith_div_vec4_f32(vec4<f32>(2039f, -1112f, -254f, var_0.a.x), vec4<f32>(725f, -572f, global0.a.c.x, var_0.a.x)), !vec4<bool>(false, var_2.a.a.x, false, var_2.a.a.x))))), -(~15809i), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(59448u, 1u), _wgslsmith_mod_u32(4294967295u, ~u_input.a.x)), _wgslsmith_mult_vec3_i32(min(countOneBits(~vec3<i32>(global2.x, 22608i, 39602i)), firstLeadingBit(~vec3<i32>(global2.x, -24922i, 1i))), -vec3<i32>(~global2.x, 1i, -8367i)));
}

