struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(38169u, 22919u, vec2<i32>(-70903i, 0i), 80295u, vec2<f32>(-2725f, 330f)), Struct_1(85237u, 33734u, vec2<i32>(-91262i, -1i), 0u, vec2<f32>(-985f, -1008f)), Struct_1(1u, 97387u, vec2<i32>(-18227i, i32(-2147483648)), 70144u, vec2<f32>(1176f, 236f)), Struct_1(0u, 70339u, vec2<i32>(-4785i, i32(-2147483648)), 0u, vec2<f32>(-1127f, 175f)), Struct_1(25109u, 4294967295u, vec2<i32>(-13325i, i32(-2147483648)), 1u, vec2<f32>(-684f, -460f)), Struct_1(132467u, 1u, vec2<i32>(-1i, 0i), 1u, vec2<f32>(-2041f, 361f)), Struct_1(25478u, 1u, vec2<i32>(0i, i32(-2147483648)), 57825u, vec2<f32>(-974f, -1059f)), Struct_1(46660u, 0u, vec2<i32>(-30124i, -1i), 3656u, vec2<f32>(-208f, 110f)), Struct_1(27283u, 47643u, vec2<i32>(19265i, -60839i), 4294967295u, vec2<f32>(137f, 1624f)), Struct_1(31472u, 20166u, vec2<i32>(2147483647i, 2147483647i), 1u, vec2<f32>(664f, 1368f)));

var<private> global1: vec4<i32> = vec4<i32>(-20524i, 2147483647i, 0i, i32(-2147483648));

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(26520u, 4294967295u, vec2<i32>(2147483647i, 36405i), 64214u, vec2<f32>(-389f, -677f)), Struct_1(84240u, 24024u, vec2<i32>(42493i, 1061i), 1u, vec2<f32>(238f, 1025f)), Struct_1(93519u, 0u, vec2<i32>(-14019i, 53548i), 87163u, vec2<f32>(-354f, -1000f)), Struct_1(10985u, 1u, vec2<i32>(-1894i, -11153i), 4269u, vec2<f32>(-1926f, -432f)), Struct_1(4294967295u, 15461u, vec2<i32>(60057i, -55470i), 61491u, vec2<f32>(874f, -349f)), Struct_1(74677u, 0u, vec2<i32>(2147483647i, i32(-2147483648)), 4294967295u, vec2<f32>(-523f, 1110f)), Struct_1(38035u, 25224u, vec2<i32>(0i, -13628i), 7415u, vec2<f32>(-825f, -1144f)), Struct_1(0u, 120733u, vec2<i32>(-1i, 2147483647i), 1u, vec2<f32>(-279f, 1551f)));

var<private> global3: Struct_1;

var<private> global4: vec4<i32> = vec4<i32>(0i, 2695i, 1i, 25621i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> i32 {
    global2 = array<Struct_1, 8>();
    var var_0 = arg_1.c;
    global0 = array<Struct_1, 10>();
    global1 = -firstLeadingBit(vec4<i32>(global3.c.x, -2147483647i, 10403i, ~(~global4.x)));
    global0 = array<Struct_1, 10>();
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(_wgslsmith_sub_vec3_u32(~((vec3<u32>(0u, global3.b, u_input.e) >> (vec3<u32>(4294967295u, 0u, 41526u) % vec3<u32>(32u))) & ~u_input.d), u_input.d), u_input.d);
    let var_1 = true;
    var var_2 = vec2<i32>(_wgslsmith_add_i32(1i, i32(-1i) * -func_1(-1089f, Struct_1(30364u, 0u, vec2<i32>(-11821i, global1.x), 0u, vec2<f32>(427f, -384f)), vec3<i32>(global3.c.x, -31028i, 35367i))), -(i32(-1i) * -1i));
    global4 = _wgslsmith_clamp_vec4_i32(~(-(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, u_input.c.x, 2147483647i, -8093i), vec4<i32>(global4.x, 40871i, 1i, global1.x)) << (~vec4<u32>(1u, 0u, 41605u, var_0.x) % vec4<u32>(32u)))), u_input.c, u_input.c);
    global4 = ~vec4<i32>(1i, _wgslsmith_sub_i32(func_1(250f, Struct_1(29360u, u_input.d.x, u_input.b, global3.b, global3.e), vec3<i32>(-2147483647i, var_2.x, 0i)), ~_wgslsmith_mod_i32(var_2.x, 1i)), var_2.x, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.e.x))), global1.wzx | global4.wyw, ~(~(abs(27613u) ^ global3.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global3.e.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global3.e.x, global3.e.x, var_1)), _wgslsmith_f_op_f32(step(-1692f, global3.e.x))))), _wgslsmith_f_op_f32(sign(1181f)))));
}

