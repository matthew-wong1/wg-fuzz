struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> i32 {
    global0 = Struct_2(Struct_1(!all(!vec4<bool>(global0.a.a, global0.a.a, global0.a.a, false))), 26542u, ~(~u_input.e.yy), global0.c.x, global0.b);
    let var_0 = false;
    let var_1 = Struct_1(arg_1);
    let var_2 = Struct_2(Struct_1(global0.a.a), reverseBits(global0.e) >> (1u % 32u), u_input.c, 8076i, arg_0.x);
    let var_3 = Struct_2(global0.a, (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(51840u, var_2.e, 26058u, 0u)), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, global0.b)) ^ arg_0.x) | 1u, vec2<i32>(-2147483647i, -u_input.c.x), _wgslsmith_dot_vec4_i32(min(-vec4<i32>(u_input.a, 3850i, 131i, var_2.c.x), select(-vec4<i32>(u_input.b, -13924i, global0.c.x, -1i), vec4<i32>(-68774i, -2147483647i, u_input.a, u_input.e.x), vec4<bool>(var_2.a.a, false, true, false))), select(-vec4<i32>(var_2.c.x, 2147483647i, global0.d, 2147483647i), vec4<i32>(var_2.d << (37463u % 32u), -1i, u_input.c.x ^ -28579i, ~19362i), false)), global0.e);
    return 1i;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1555f, arg_1, arg_1) + vec3<f32>(arg_1, -365f, 315f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(959f, arg_1, 871f))), select(vec3<bool>(arg_3.a.a, true, global0.a.a), vec3<bool>(true, true, arg_0.a.a), vec3<bool>(true, arg_2.a, global0.a.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1389f, arg_1, -380f))), vec3<bool>(arg_0.a.a | false, all(vec3<bool>(true, true, arg_2.a)), select(true, arg_2.a, false)))))));
    global0 = Struct_2(arg_2, _wgslsmith_sub_u32(var_0.b ^ global0.e, var_0.b), ~(vec2<i32>(-1i) * -arg_3.c), arg_0.d, 26710u);
    var var_2 = arg_3;
    var_2 = Struct_2(global0.a, var_2.b, var_2.c, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.d, _wgslsmith_sub_i32(~arg_0.c.x, 1i), func_3(vec4<u32>(var_2.e, 12186u, var_2.b, 3346u), !var_0.a.a), -_wgslsmith_mult_i32(2147483647i, global0.d)), reverseBits(vec4<i32>(var_2.c.x & -89857i, countOneBits(-35759i), u_input.b, ~(-98158i)))), reverseBits((arg_3.e & _wgslsmith_div_u32(var_0.b, 4294967295u)) & 29598u));
    return vec3<bool>(var_2.a.a, countOneBits(_wgslsmith_sub_u32(arg_0.b << (13275u % 32u), var_2.b)) == 4294967295u, true);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec3<bool>) -> f32 {
    let var_0 = Struct_2(Struct_1(false), 0u, ~(-select(vec2<i32>(1i, 2920i), select(global0.c, vec2<i32>(33717i, -1i), arg_2.x), all(arg_2.xy))), -16267i, ~select(1u, global0.b, !(false & global0.a.a)));
    global0 = Struct_2(Struct_1(true), 4294967295u, ~(~u_input.c), 2147483647i, max(~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 57149u, 4294967295u)), vec3<u32>(global0.b, 15827u, 9439u)), _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(0u), global0.e), ~(~vec2<u32>(var_0.e, 37043u)))));
    global0 = Struct_2(var_0.a, global0.e, var_0.c, ~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(76161i, 1172i, -2147483647i, 2147483647i) >> (vec4<u32>(31370u, var_0.e, var_0.b, var_0.e) % vec4<u32>(32u)), vec4<i32>(u_input.e.x, arg_0, 0i, u_input.b)), vec4<i32>(i32(-1i) * -42854i, _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(var_0.d, u_input.c.x, arg_0)), -u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, arg_0, u_input.b, 0i), vec4<i32>(-14842i, 0i, -1i, arg_0)))), global0.e);
    let var_1 = global0.e > ~(~_wgslsmith_add_u32(_wgslsmith_mult_u32(global0.e, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(45649u, var_0.e), vec2<u32>(var_0.b, var_0.b))));
    global0 = var_0;
    return arg_1;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(-u_input.e.x, _wgslsmith_f_op_f32(ceil(1552f)), func_2(Struct_2(global0.a, global0.b, global0.c, global0.c.x, 7608u), -179f, global0.a, Struct_2(Struct_1(true), global0.e, global0.c, global0.c.x, global0.b)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -144f)))), 899f, 434f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1569f * -348f), -1000f))));
    global0 = Struct_2(Struct_1(true), ~(~(~(~global0.e))), vec2<i32>(u_input.b, ~_wgslsmith_mod_i32(-global0.c.x, u_input.d)), countOneBits(13498i), countOneBits(_wgslsmith_mult_u32(global0.e, global0.b)));
    var var_1 = Struct_2(Struct_1(true), ~1u, global0.c, ~12845i, reverseBits(1u));
    let var_2 = firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(58304u, 15968u), 20296u, ~var_1.b | global0.b), vec3<u32>(1u, 4294967295u, select(_wgslsmith_sub_u32(var_1.b, 69753u), global0.e, true))));
    let var_3 = !(!vec2<bool>((u_input.c.x > global0.c.x) != true, any(!vec2<bool>(global0.a.a, global0.a.a))));
    return Struct_2(var_1.a, ~(~global0.e), vec2<i32>(_wgslsmith_mult_i32(-2147483647i, min(~u_input.e.x, u_input.d)), abs(select(max(var_1.c.x, global0.c.x), firstTrailingBit(2147483647i), true))), ~18101i, ~44935u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    let var_1 = true;
    global0 = func_1();
    global0 = Struct_2(Struct_1((i32(-1i) * -2147483647i) >= -global0.d), global0.b, global0.c, u_input.a, ~_wgslsmith_add_u32(~global0.b, ~_wgslsmith_sub_u32(1u, global0.e)));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1043f + -345f) * _wgslsmith_f_op_f32(f32(-1f) * -482f)), _wgslsmith_f_op_f32(f32(-1f) * -1483f), -1000f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-144f, 1046f, 903f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-508f, -1000f, 999f), vec3<f32>(-223f, -433f, -333f))))), var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~1u, ~0u), ~(~(~countOneBits(vec2<u32>(42795u, global0.e)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(972f, -481f, var_2.x) + var_2) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -187f, var_2.x) - vec3<f32>(var_2.x, -502f, var_2.x))) + vec3<f32>(_wgslsmith_f_op_f32(select(1205f, var_2.x, var_1)), _wgslsmith_f_op_f32(-var_2.x), var_2.x))), 7394u, ~(~vec3<u32>(26987u, 1774u, global0.b) << (~vec3<u32>(4294967295u, 13466u, global0.b) % vec3<u32>(32u))));
}

