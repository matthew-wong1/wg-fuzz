struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-1i, 2147483647i, -1i), true, vec3<f32>(-741f, -331f, -1000f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>) -> vec3<f32> {
    var var_0 = ~(~u_input.c.wx);
    let var_1 = arg_0.b;
    global0 = arg_0;
    let var_2 = !vec4<bool>(var_1, true, global0.b, firstTrailingBit(reverseBits(u_input.c.x)) <= (~0u << ((0u & var_0.x) % 32u)));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -601f), arg_0.c.x));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    global0 = Struct_1(abs(firstLeadingBit(vec3<i32>(-2147483647i, u_input.a.x, -11022i))) & (_wgslsmith_mod_vec3_i32(~vec3<i32>(0i, 44394i, u_input.a.x), u_input.a.wxx) & vec3<i32>(global0.a.x, ~1i, i32(-1i) * -1i)), any(!select(vec4<bool>(global0.b, global0.b, true, global0.b), vec4<bool>(false, global0.b, arg_1, true), global0.b)), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<i32>(~global0.a.x, _wgslsmith_div_i32(2147483647i, u_input.a.x), global0.a.x), global0.b, vec3<f32>(_wgslsmith_div_f32(488f, -1332f), _wgslsmith_div_f32(global0.c.x, 1080f), 1f)), 4294967295u, _wgslsmith_f_op_vec2_f32(select(global0.c.zy, vec2<f32>(397f, global0.c.x), global0.b)))));
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(-abs(firstTrailingBit(global0.a)), vec3<i32>(~0i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, -66390i, 0i), vec3<i32>(-2147483647i, 0i, -8002i) >> (u_input.b % vec3<u32>(32u))), u_input.a.x), ~(-u_input.a.zyz)), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c), vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(-arg_0), global0.c.x)));
    var var_1 = Struct_1(u_input.a.xyx, !(true & any(select(vec4<bool>(false, global0.b, var_0.b, var_0.b), vec4<bool>(false, false, global0.b, true), global0.b))), vec3<f32>(-593f, 305f, _wgslsmith_f_op_f32(step(-1602f, _wgslsmith_f_op_f32(trunc(arg_0))))));
    let var_2 = all(select(vec2<bool>(true, !global0.b), select(!vec2<bool>(var_1.b, var_0.b), vec2<bool>(false, var_1.b), vec2<bool>(true, false)), all(!vec3<bool>(false, arg_1, arg_1)))) || any(vec2<bool>(true, true));
    global0 = Struct_1(_wgslsmith_mult_vec3_i32(countOneBits(_wgslsmith_mod_vec3_i32(var_0.a, var_0.a) >> ((u_input.c.yzz | u_input.b) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -2147483647i), -4587i, var_1.a.x | u_input.a.x), -vec3<i32>(-1i, var_1.a.x, var_1.a.x) >> (vec3<u32>(u_input.c.x, 46719u, 1u) % vec3<u32>(32u)))), var_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, -302f, -1942f))));
    return Struct_1(~vec3<i32>(_wgslsmith_div_i32(var_0.a.x, u_input.a.x) & -var_0.a.x, -_wgslsmith_dot_vec2_i32(var_1.a.yy, var_1.a.zx), var_1.a.x), var_0.b, _wgslsmith_f_op_vec3_f32(func_3(Struct_1(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.a.x, var_1.a.x), vec3<i32>(-2147483647i, var_1.a.x, var_1.a.x))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_1.c.x, arg_0) - vec3<f32>(global0.c.x, 1889f, global0.c.x)))), 4294967295u, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.zz), global0.c.xz))))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> vec3<u32> {
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c.x))), true);
    var var_0 = arg_2;
    var var_1 = 65156u;
    let var_2 = ~u_input.c.xx;
    global0 = Struct_1(vec3<i32>(-2147483647i, ~0i, firstLeadingBit(1i) | min(arg_1, arg_1)), true, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c.x, 1732f, _wgslsmith_div_f32(-310f, _wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, arg_2.c.x, global0.c.x))), select(vec3<bool>(!arg_2.b, false, true), select(select(vec3<bool>(false, false, global0.b), vec3<bool>(global0.b, false, false), vec3<bool>(false, arg_0, false)), vec3<bool>(true, global0.b, global0.b), select(false, false, var_0.b)), any(vec4<bool>(arg_0, arg_0, arg_2.b, var_0.b))))));
    return vec3<u32>(_wgslsmith_add_u32(~min(0u, 16155u), _wgslsmith_clamp_u32(0u, 50006u >> (1u % 32u), var_2.x)), _wgslsmith_add_u32(u_input.c.x, 0u >> (1u % 32u)), 0u) >> (_wgslsmith_add_vec3_u32(~(~u_input.b), vec3<u32>(1u, ~(~1u), _wgslsmith_mult_u32(4294967295u, var_2.x))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, 12283u) << (abs(u_input.c.x) % 32u), abs(u_input.c.x) ^ reverseBits(u_input.b.x), _wgslsmith_div_u32(~1u, _wgslsmith_div_u32(u_input.c.x, u_input.b.x))), func_1((-1000f > global0.c.x) && (global0.b != true), _wgslsmith_add_i32(0i, min(u_input.a.x, 40354i)), Struct_1(global0.a, global0.b, _wgslsmith_f_op_vec3_f32(trunc(global0.c)))));
    global0 = Struct_1(vec3<i32>(u_input.a.x, global0.a.x << (var_0.x % 32u), i32(-1i) * -16743i), !(!(!global0.b)), vec3<f32>(_wgslsmith_f_op_f32(min(global0.c.x, _wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(min(-186f, _wgslsmith_f_op_f32(-1064f - func_2(global0.c.x, global0.b).c.x))), -702f));
    let var_1 = -51439i;
    global0 = func_2(global0.c.x, true);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.zz));
    let var_3 = -1461f;
    global0 = func_2(var_3, !(!all(!vec2<bool>(global0.b, global0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(u_input.a.x, ~_wgslsmith_add_i32(18091i, var_1)), ~(~4294967295u));
}

