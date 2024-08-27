struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> i32 {
    let var_0 = select(firstTrailingBit(20087u), u_input.e.x, true);
    global0 = -3313i;
    var var_1 = Struct_2(~u_input.b, ~(-71444i), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(0i, 2147483647i, 0i, -14625i), vec4<i32>(2147483647i, -1i, 0i, -8666i)), select(vec4<i32>(-2147483647i, 0i, -69116i, 4893i), vec4<i32>(2147483647i, -1i, -1i, -1i), true)) | -(vec4<i32>(2147483647i, -26395i, -1i, 0i) << (vec4<u32>(0u, var_0, u_input.e.x, var_0) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -1i), abs(vec2<i32>(0i, -27026i))), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 6899i, -1i, -1i), vec4<i32>(0i, 0i, -10495i, 1i))), abs(~1i), abs(_wgslsmith_clamp_i32(2147483647i, 19022i, 1i))), vec4<i32>(_wgslsmith_add_i32(1i, ~110840i), _wgslsmith_div_i32(select(33391i, 9812i, arg_1), 2147483647i), _wgslsmith_add_i32(-2549i, 20303i) << (_wgslsmith_mod_u32(u_input.e.x, var_0) % 32u), 34077i)), var_0, Struct_1(_wgslsmith_add_i32(max(_wgslsmith_dot_vec4_i32(vec4<i32>(-29610i, -8507i, -14212i, 2147483647i), vec4<i32>(-1i, -2147483647i, 3203i, 1i)), _wgslsmith_add_i32(-2147483647i, 0i)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, 0i, 0i, 1i)), vec4<i32>(-19122i, 1i, -1i, -3075i))), reverseBits(vec4<i32>(1i, 1i, 1i, 1i) >> (select(u_input.e, u_input.e, vec4<bool>(arg_0.x, false, arg_0.x, false)) % vec4<u32>(32u))), vec2<i32>(_wgslsmith_mod_i32(-12021i, select(1i, -1i, arg_1)), -2147483647i), false, firstTrailingBit(firstLeadingBit(u_input.c ^ 49386u))));
    var var_2 = Struct_1(47125i, var_1.e.b, _wgslsmith_sub_vec2_i32(var_1.e.b.wy, vec2<i32>(abs(19589i), var_1.e.b.x) & var_1.c.yy), false, ~var_1.d);
    var var_3 = min(_wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_sub_vec3_u32(var_1.a, vec3<u32>(_wgslsmith_div_u32(var_2.e, 0u), u_input.b.x, 1u))), 0u);
    return var_1.e.a;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -768f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1114f * -527f), -1011f)))));
    global0 = ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~max(vec4<i32>(-4323i, 42108i, 2147483647i, -41979i), vec4<i32>(-75677i, -15445i, 1i, 11645i)), max(vec4<i32>(0i, -22179i, 1i, -1i), ~vec4<i32>(0i, 3209i, 0i, -1i))), -1i);
    let var_1 = Struct_2(~u_input.b, -2147483647i, vec4<i32>(max(1i, -71703i), max(func_3(vec3<bool>(true, true, true), var_0 < var_0), 1i), 1i, _wgslsmith_add_i32(-19501i, ~23297i) | _wgslsmith_div_i32(_wgslsmith_sub_i32(1i, 2147483647i), firstTrailingBit(2147483647i))), max(12070u, ~_wgslsmith_dot_vec4_u32(~u_input.e, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, 1u, 0u, 32312u), u_input.e))), Struct_1(_wgslsmith_sub_i32(-(~1i), _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, 0i), select(vec2<i32>(-2147483647i, -32295i), vec2<i32>(-1i, 1i), true))), vec4<i32>(min(~1i, 33026i), 1i, -13106i, -45382i), select(vec2<i32>(1i, 1i) >> (firstTrailingBit(u_input.b.xx) % vec2<u32>(32u)), firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-5665i, 14045i), vec2<i32>(-2147483647i, -5327i))), vec2<bool>(true, true)), true, 56565u));
    let var_2 = ~(~var_1.e.b.x);
    let var_3 = select(select(select(select(select(vec4<bool>(var_1.e.d, var_1.e.d, var_1.e.d, var_1.e.d), vec4<bool>(false, var_1.e.d, true, var_1.e.d), false), select(vec4<bool>(var_1.e.d, var_1.e.d, var_1.e.d, var_1.e.d), vec4<bool>(var_1.e.d, var_1.e.d, true, false), false), true), vec4<bool>(var_1.e.d, true, var_1.e.d && false, true), var_1.e.d), !(!(!vec4<bool>(var_1.e.d, var_1.e.d, var_1.e.d, var_1.e.d))), var_1.e.d), !select(vec4<bool>(any(vec4<bool>(var_1.e.d, false, true, false)), false, var_1.e.d, any(vec4<bool>(true, var_1.e.d, var_1.e.d, false))), select(select(vec4<bool>(var_1.e.d, var_1.e.d, var_1.e.d, var_1.e.d), vec4<bool>(var_1.e.d, var_1.e.d, false, true), vec4<bool>(true, var_1.e.d, var_1.e.d, var_1.e.d)), select(vec4<bool>(var_1.e.d, false, true, var_1.e.d), vec4<bool>(var_1.e.d, false, false, var_1.e.d), false), var_1.e.d | var_1.e.d), false), false);
    return var_1;
}

fn func_1(arg_0: bool) -> vec2<i32> {
    global0 = 2857i;
    var var_0 = abs(u_input.e.ywz | ~vec3<u32>(0u, u_input.b.x, 89813u)) | (~firstTrailingBit(u_input.b >> (vec3<u32>(u_input.d, u_input.d, u_input.e.x) % vec3<u32>(32u))) | vec3<u32>(1u, u_input.a, 1u));
    let var_1 = func_2();
    let var_2 = -1698f;
    global0 = var_1.b;
    return vec2<i32>(2147483647i, _wgslsmith_div_i32(var_1.c.x, _wgslsmith_dot_vec3_i32(min(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.c.x, 55399i, 45831i), vec3<i32>(var_1.c.x, var_1.c.x, -1804i)), vec3<i32>(-1i, var_1.c.x, var_1.e.a)), vec3<i32>(var_1.b, -75151i, -6067i) ^ select(vec3<i32>(-7992i, -2147483647i, var_1.c.x), var_1.c.xwx, var_1.e.d))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>) -> i32 {
    global0 = _wgslsmith_sub_i32(-2147483647i, firstTrailingBit(~9797i)) << (1u % 32u);
    var var_0 = func_2();
    var var_1 = any(vec3<bool>(all(select(vec2<bool>(true, var_0.e.d), vec2<bool>(true, var_0.e.d), vec2<bool>(true, false))), arg_0.d, var_0.e.d));
    let var_2 = func_2();
    var var_3 = -1588f;
    return 12400i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(~1i, _wgslsmith_sub_i32(0i, func_4(Struct_1(-14134i, firstTrailingBit(vec4<i32>(-35793i, 2147483647i, -9229i, 1i)), func_1(true), select(false, false, true), _wgslsmith_clamp_u32(83932u, 14763u, u_input.b.x)), -20023i, ~vec3<u32>(u_input.d, u_input.c, u_input.c))), 0i);
    let var_1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(var_0.zy, var_0.xz), _wgslsmith_f_op_f32(step(-100f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-411f + _wgslsmith_f_op_f32(361f * -655f)) - 1f))), -181f, i32(-1i) * -45462i, -7815i);
}

