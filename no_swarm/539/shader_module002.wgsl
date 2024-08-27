struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(0i, -32531i), vec4<u32>(98195u, 32289u, 8927u, 21953u), Struct_1(i32(-2147483648)));

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(22794i), Struct_1(-1i), Struct_1(-32668i), Struct_1(2147483647i), Struct_1(0i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(16031i), Struct_1(0i), Struct_1(2147483647i), Struct_1(-17435i), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(-36570i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(-186i), Struct_1(0i), Struct_1(-27904i), Struct_1(-25924i), Struct_1(1i), Struct_1(1i), Struct_1(-30712i), Struct_1(1i), Struct_1(14551i), Struct_1(-27130i), Struct_1(-12559i), Struct_1(2147483647i), Struct_1(90889i), Struct_1(0i), Struct_1(1i), Struct_1(-14772i));

var<private> global3: Struct_1;

var<private> global4: vec2<u32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    let var_0 = ~42509u;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(563f, 432f, -493f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_1, 1000f), vec3<f32>(509f, arg_1, -975f), vec3<bool>(false, true, true)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 210f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 336f, arg_1))))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), vec3<bool>(select(false, false, false) && any(vec3<bool>(false, true, false)), true, true), false)));
    let var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-358f + 812f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(max(arg_1, -1074f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-594f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + var_1.x) + _wgslsmith_f_op_f32(-arg_1))) - 681f));
    var var_3 = Struct_1(arg_2.a.x);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2 - vec3<f32>(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-612f * var_1.x)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(546f * var_1.x))))));
    return true;
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    global0 = Struct_2(_wgslsmith_div_vec2_i32(reverseBits(reverseBits(arg_0.a)), vec2<i32>(global3.a, global3.a)), ~(~(~(~vec4<u32>(u_input.d.x, u_input.a.x, 0u, 2919u)))), global2[_wgslsmith_index_u32(0u, 32u)]);
    var var_0 = Struct_1(arg_0.a.x);
    global3 = arg_0.c;
    global1 = false;
    var var_1 = 5589u;
    return !vec4<bool>(true, !(!func_3(vec2<u32>(8329u, u_input.c), -2517f, Struct_2(arg_0.a, global0.b, arg_0.c), Struct_1(global0.a.x))), all(vec2<bool>(true, true)), !any(vec4<bool>(false, false, true, false)));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: i32, arg_3: vec2<bool>) -> u32 {
    var var_0 = !arg_1.x;
    global3 = Struct_1(-2147483647i);
    let var_1 = ~abs(-select(-vec3<i32>(arg_2, -2147483647i, global0.c.a), abs(vec3<i32>(global3.a, arg_2, 18445i)), true));
    global2 = array<Struct_1, 32>();
    let var_2 = !vec2<bool>(arg_1.x, !(!(!arg_3.x)));
    return 57648u | global0.b.x;
}

fn func_1() -> Struct_1 {
    let var_0 = ~vec2<u32>(u_input.c, _wgslsmith_add_u32(global4.x, func_4(~62663u, func_2(Struct_2(global0.a, vec4<u32>(global0.b.x, 49078u, 1u, 0u), global0.c)), _wgslsmith_sub_i32(1i, 40063i), vec2<bool>(true, true))));
    let var_1 = Struct_2(select(vec2<i32>(0i, global3.a), _wgslsmith_sub_vec2_i32(vec2<i32>(global3.a, global0.a.x), vec2<i32>(-1i, -61955i)) << (u_input.a.yw % vec2<u32>(32u)), true) | _wgslsmith_clamp_vec2_i32(reverseBits(global0.a), vec2<i32>(global3.a, global3.a | 0i), global0.a), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1335u, var_0.x, 100800u, 74217u), global0.b), abs(vec4<u32>(var_0.x, 4294967295u, 11220u, 73732u))) << (_wgslsmith_sub_vec4_u32(~(~global0.b), global0.b) % vec4<u32>(32u)), Struct_1(_wgslsmith_div_i32(-_wgslsmith_div_i32(global3.a, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.a, -20971i, -2147483647i, -2147483647i) >> (vec4<u32>(global4.x, 4294967295u, 40308u, global0.b.x) % vec4<u32>(32u)), vec4<i32>(-2147483647i, 16111i, global0.c.a, global3.a)))));
    var var_2 = var_1;
    let var_3 = !vec4<bool>(~global3.a == 2996i, all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), any(vec4<bool>(false, true, false, false)))), (true | any(vec4<bool>(true, true, false, true))) & true, all(select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), true)));
    var var_4 = ~reverseBits(max(vec3<i32>(_wgslsmith_mult_i32(global0.c.a, global3.a), 0i, -global0.a.x), vec3<i32>(firstTrailingBit(global3.a), _wgslsmith_sub_i32(global0.a.x, -46038i), ~global3.a)));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global0.b.xy;
    let var_0 = Struct_2(global0.a, (~abs(vec4<u32>(u_input.c, 36u, 6788u, global4.x)) | global0.b) << (~global0.b % vec4<u32>(32u)), func_1());
    let var_1 = vec4<i32>(reverseBits(13225i), 24912i, _wgslsmith_dot_vec3_i32(-vec3<i32>(global3.a, global3.a, -1i >> (var_0.b.x % 32u)), -vec3<i32>(~global3.a, global0.c.a, _wgslsmith_div_i32(26154i, -33860i))), -27153i);
    let var_2 = var_1;
    var var_3 = min(min(vec4<i32>(firstLeadingBit(global0.c.a), abs(_wgslsmith_mult_i32(global3.a, -55938i)), _wgslsmith_div_i32(global0.c.a, abs(var_0.c.a)), -23135i), _wgslsmith_sub_vec4_i32(vec4<i32>(~40081i, 1i, 1i, -24544i & var_2.x), var_1)), ~min(vec4<i32>(-27440i, var_0.a.x, 1i, 0i), var_2));
    global0 = Struct_2(_wgslsmith_mult_vec2_i32(-(~(-var_1.xw)), _wgslsmith_div_vec2_i32(var_3.wx, vec2<i32>(-41571i, 0i) << (~u_input.d.yx % vec2<u32>(32u)))), global0.b ^ var_0.b, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(-max(var_2.x, var_1.x), _wgslsmith_f_op_f32(-1732f - 1517f));
}

