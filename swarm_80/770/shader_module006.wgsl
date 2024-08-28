struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec4<f32>;

var<private> global2: f32 = 158f;

var<private> global3: vec3<bool>;

var<private> global4: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec2<i32> {
    var var_0 = !global4.yy;
    var var_1 = 703f;
    let var_2 = select(!select(vec4<bool>(true, true, global3.x, any(vec3<bool>(arg_0.a, arg_1.a, false))), vec4<bool>(all(vec4<bool>(true, global3.x, var_0.x, true)), !global4.x, arg_0.a || true, arg_1.b.a), any(vec2<bool>(var_0.x, true))), vec4<bool>(all(vec2<bool>(false, global4.x)) & true, any(vec3<bool>(!global3.x, any(global3.xx), arg_0.a)), true, all(global4.wz)), vec4<bool>(arg_1.c.a.x == -2147483647i, !(global1.x != 1284f), global4.x, global3.x));
    var var_3 = Struct_1(firstLeadingBit(select(firstLeadingBit(vec2<i32>(-50984i, arg_1.c.a.x)), arg_1.c.a >> (u_input.a.yy % vec2<u32>(32u)), global3.x)));
    global3 = !select(vec3<bool>(true, any(vec3<bool>(false, true, arg_1.a)), !global3.x), global4.xxz, var_2.yxx);
    return _wgslsmith_clamp_vec2_i32(select(var_3.a, arg_1.c.a, any(var_2)), _wgslsmith_clamp_vec2_i32(arg_1.c.a | var_3.a, (vec2<i32>(var_3.a.x, var_3.a.x) >> (u_input.a.zz % vec2<u32>(32u))) & vec2<i32>(54427i, 47668i), select(max(var_3.a, ~vec2<i32>(-82430i, -2147483647i)), -arg_1.c.a, vec2<bool>(all(global3.zx), global3.x | var_2.x))), vec2<i32>(arg_1.c.a.x << ((u_input.a.x >> (abs(0u) % 32u)) % 32u), _wgslsmith_dot_vec2_i32(var_3.a, var_3.a ^ vec2<i32>(arg_1.c.a.x, 1i)) | 26945i));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> Struct_1 {
    global0 = arg_1;
    global2 = global1.x;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1987f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1325f, arg_0)), 490f))));
    global4 = vec4<bool>(any(!select(vec4<bool>(false, true, true, true), select(vec4<bool>(global3.x, global4.x, false, false), vec4<bool>(global3.x, false, global4.x, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, global3.x, global4.x, true), vec4<bool>(false, false, true, global4.x), vec4<bool>(false, true, false, false)))), true, !any(global4.xwy), true);
    let var_0 = 1u;
    return Struct_1(-(-func_3(Struct_2(false), Struct_3(true, Struct_2(global4.x), Struct_1(vec2<i32>(1i, 0i)))) & vec2<i32>(countOneBits(-69835i), 0i)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 29905u;
    return func_2(global0.x, global1.xwz);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = arg_1.c;
    global4 = select(!vec4<bool>(global0.x <= global1.x, select(true, false, global3.x) && (arg_0.a.x <= 0i), true, !(!global4.x)), vec4<bool>(~_wgslsmith_div_u32(arg_2.x, 1u) < 10269u, true, global4.x, arg_1.b.a), global4.x);
    let var_1 = Struct_3(!(!(true | !global3.x)), arg_1.b, func_2(_wgslsmith_f_op_f32(global1.x + -623f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global1.wwy))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global1.xzw, vec3<f32>(-716f, global1.x, 1755f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1453f, global0.x))))));
    let var_2 = ~arg_0.a.x;
    var var_3 = arg_0.a;
    return Struct_2(var_1.a);
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_3(arg_2.x, arg_3, Struct_1(vec2<i32>(~1i, 1i >> (arg_0.x % 32u))));
    let var_1 = var_0;
    let var_2 = var_0.b;
    let var_3 = _wgslsmith_div_vec2_i32(var_1.c.a, var_0.c.a);
    global4 = !vec4<bool>(false, arg_1, true, select(any(global4.yzx), true, true));
    return -7482i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(!global4.xww), global3.x, all(!vec3<bool>(global3.x, !global3.x, !global4.x)));
    var var_1 = func_5(vec2<u32>(_wgslsmith_sub_u32(max(reverseBits(27763u), _wgslsmith_mod_u32(u_input.a.x, 1u)), 2057u >> ((u_input.a.x ^ 11809u) % 32u)), u_input.a.x), all(!select(vec4<bool>(false, false, global3.x, true), vec4<bool>(var_0.x, global3.x, true, false), vec4<bool>(global4.x, false, global3.x, var_0.x))) && (!(!global3.x) && global4.x), select(select(global3.zx, vec2<bool>(!global4.x, var_0.x == true), global3.x), global3.xx, u_input.a.x != ~firstTrailingBit(75056u)), func_4(func_1(0i, Struct_1(-vec2<i32>(1i, 31518i))), Struct_3(true, Struct_2(true), Struct_1(select(vec2<i32>(2147483647i, -39482i), vec2<i32>(-1i, -2147483647i), global4.zx))), vec3<u32>(_wgslsmith_clamp_u32(firstLeadingBit(0u), 28254u, ~4345u), 4294967295u, ~1u)));
    var var_2 = 1i;
    var_1 = ~30556i;
    var_2 = _wgslsmith_dot_vec4_i32(~(-(firstLeadingBit(vec4<i32>(-1i, -2147483647i, 2147483647i, 68897i)) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u)))), select(vec4<i32>(func_1(-1i, func_2(global0.x, vec3<f32>(global1.x, global0.x, 1085f))).a.x, 1i, -_wgslsmith_div_i32(-55296i, 3810i), ~abs(-2147483647i)), (~vec4<i32>(-12547i, -1i, 2147483647i, 1i) >> (vec4<u32>(u_input.a.x, u_input.a.x, 20684u, 4294967295u) % vec4<u32>(32u))) ^ vec4<i32>(func_5(vec2<u32>(u_input.a.x, 4294967295u), global4.x, vec2<bool>(var_0.x, true), Struct_2(global4.x)), i32(-1i) * -30948i, ~0i, _wgslsmith_mod_i32(77499i, 2147483647i)), global3.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.a.x)), u_input.a.x, min(_wgslsmith_dot_vec4_i32(max(vec4<i32>(2147483647i, 13329i, -59858i, -24240i), ~vec4<i32>(1i, 0i, -2147483647i, -40529i)), -vec4<i32>(57882i, 26047i, 2147483647i, 17765i)), 29805i));
}

