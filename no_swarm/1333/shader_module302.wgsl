struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(-532f, -124f, 817f));

var<private> global1: Struct_2 = Struct_2(4294967295u);

var<private> global2: vec4<bool>;

var<private> global3: vec4<f32> = vec4<f32>(-214f, -388f, -577f, 375f);

var<private> global4: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_3) -> bool {
    global3 = _wgslsmith_f_op_vec4_f32(abs(arg_2));
    let var_0 = arg_3;
    global1 = Struct_2(_wgslsmith_mod_u32(~(~arg_1.a >> (firstTrailingBit(arg_1.a) % 32u)), arg_1.a));
    global0 = var_0;
    global4 = -u_input.a.x;
    return !(!(!(-346f < global3.x)));
}

fn func_2() -> vec2<bool> {
    let var_0 = -1000f;
    global2 = !(!select(vec4<bool>(global2.x, func_3(-1i, Struct_2(global1.a), vec4<f32>(global3.x, -1000f, 1857f, global0.a.x), Struct_3(vec3<f32>(-1000f, global0.a.x, 471f))), global2.x, !global2.x), vec4<bool>(global2.x, global2.x, var_0 <= -171f, select(global2.x, true, global2.x)), global2.x));
    global1 = Struct_2(~(_wgslsmith_dot_vec4_u32(max(vec4<u32>(global1.a, 13799u, global1.a, 43771u), vec4<u32>(4294967295u, global1.a, global1.a, 406u)), vec4<u32>(41701u, 1u, global1.a, 0u)) ^ select(_wgslsmith_div_u32(global1.a, global1.a), ~global1.a, true)));
    var var_1 = Struct_1(u_input.a.x, u_input.a.x);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-869f))))), -135f);
    return !vec2<bool>(global2.x, !global2.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec3<bool>) -> u32 {
    global1 = Struct_2(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, global1.a) & vec2<u32>(global1.a, global1.a), vec2<u32>(global1.a, 0u) | vec2<u32>(1u, global1.a), u_input.a.x < u_input.a.x), firstTrailingBit(vec2<u32>(4294967295u, global1.a)) << (~vec2<u32>(global1.a, 13343u) % vec2<u32>(32u))) & ~(~global1.a));
    var var_0 = (abs(countOneBits(global1.a ^ global1.a)) ^ ~global1.a) > max(min(firstLeadingBit(global1.a), min(~global1.a, _wgslsmith_div_u32(5490u, global1.a))), 8570u);
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a.x, 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1465f))), _wgslsmith_f_op_f32(global0.a.x * 1f)))));
    var var_1 = Struct_4(_wgslsmith_div_u32(global1.a, 22000u >> (~(25341u | global1.a) % 32u)), select(select(!(!vec4<bool>(global2.x, global2.x, global2.x, true)), vec4<bool>(true, global1.a != 4294967295u, arg_0.x, global0.a.x >= global3.x), select(all(vec4<bool>(arg_0.x, arg_0.x, global2.x, false)), -2147483647i >= u_input.a.x, !arg_0.x)), vec4<bool>(arg_0.x && true, arg_2.x, arg_2.x, false), global2.x), Struct_2(1u & abs(global1.a)), max(_wgslsmith_add_vec4_i32(firstTrailingBit(select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i), vec4<i32>(21490i, 1i, u_input.a.x, u_input.a.x), arg_0.x)), min(max(vec4<i32>(0i, u_input.a.x, -32219i, 1i), vec4<i32>(-5559i, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), vec4<i32>(-29641i, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_mod_vec4_i32(select(vec4<i32>(-3133i, u_input.a.x, 3922i, u_input.a.x), vec4<i32>(u_input.a.x, -5419i, u_input.a.x, -1i), all(vec4<bool>(false, true, true, true))), vec4<i32>(reverseBits(8961i), u_input.a.x ^ -54578i, 2147483647i, u_input.a.x))));
    var var_2 = true & all(select(!vec4<bool>(arg_0.x, true, true, arg_2.x), vec4<bool>(false, any(var_1.b.zx), all(arg_2), select(false, false, false)), true));
    return reverseBits(~(~firstLeadingBit(51659u << (1u % 32u))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = Struct_3(arg_2.a);
    var var_1 = select(global1.a & _wgslsmith_clamp_u32(func_4(func_2(), _wgslsmith_f_op_vec3_f32(-global3.zxy), select(vec3<bool>(false, false, true), vec3<bool>(global2.x, global2.x, global2.x), false)), ~global1.a, ~(1u | global1.a)), abs(global1.a), true & global2.x);
    var var_2 = 35983u;
    var_1 = 58141u;
    var var_3 = ~(~firstTrailingBit(~reverseBits(vec4<u32>(32347u, 4294967295u, 4294967295u, 1u))));
    return _wgslsmith_mod_vec4_u32(firstTrailingBit(~_wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, 23114u, 1u, var_3.x), vec4<u32>(997u, var_3.x, global1.a, 49145u), vec4<bool>(false, global2.x, global2.x, false)), vec4<u32>(0u, 14251u, 4294967295u, 77252u))), select(vec4<u32>(0u, 4294967295u, func_4(vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(1305f, arg_2.a.x, global0.a.x) + vec3<f32>(422f, 1606f, 1254f)), global2.xzy), _wgslsmith_add_u32(var_3.x, 4294967295u)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_3.x, 1u, global1.a, global1.a), vec4<u32>(global1.a, var_3.x, 4067u, global1.a))), all(vec4<bool>(!global2.x, global2.x, !global2.x, !global2.x))));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec4<u32>) -> Struct_4 {
    var var_0 = !select(!vec3<bool>(global2.x, global1.a <= 1u, true), global2.xxy, vec3<bool>(true, !(global2.x == global2.x), true));
    let var_1 = _wgslsmith_div_f32(global3.x, 1827f);
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.x))), global0.a.x)));
    var var_2 = vec3<u32>(0u, 0u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0, _wgslsmith_div_u32(~arg_0, func_1(Struct_3(global3.zxy), u_input.a.yz, Struct_3(global3.xzx)).x)), reverseBits(4294967295u) ^ (arg_0 | countOneBits(37248u))));
    let var_3 = vec4<u32>(countOneBits(var_2.x), global1.a ^ func_1(Struct_3(_wgslsmith_div_vec3_f32(global3.wzy, global0.a)), u_input.a.yz, Struct_3(vec3<f32>(var_1, -173f, -1653f))).x, arg_2.x, arg_0);
    return Struct_4(arg_2.x, select(vec4<bool>(var_0.x, !all(vec2<bool>(var_0.x, false)), all(select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(var_0.x, global2.x, true), true)), global2.x), !vec4<bool>(true, !var_0.x, var_0.x, global2.x), vec4<bool>(true, all(global2.wz), any(vec3<bool>(global2.x, var_0.x, false)), var_0.x)), Struct_2(abs(127377u)), vec4<i32>(-42632i, ~u_input.a.x >> (global1.a % 32u), 0i >> (func_4(select(var_0.zz, global2.wy, false), _wgslsmith_f_op_vec3_f32(-global3.wzw), global2.zzy) % 32u), 34108i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.wz;
    let var_1 = func_5(30102u, firstLeadingBit(-1i), select(select(vec4<u32>(46335u, global1.a, global1.a, global1.a), vec4<u32>(17789u, global1.a, 1u, 268u), true) ^ firstTrailingBit(firstLeadingBit(vec4<u32>(global1.a, 4294967295u, global1.a, 36447u))), func_1(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global0.a.x, global3.x))), u_input.a.xx, Struct_3(global3.xwz)), vec4<bool>(var_0.x, ~(-1i) > u_input.a.x, false, global2.x)));
    var var_2 = var_1.b.x;
    let var_3 = _wgslsmith_div_u32(4294967295u, 1u);
    global4 = max(var_1.d.x, u_input.a.x);
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, _wgslsmith_dot_vec2_i32(((u_input.a.zx & u_input.a.yx) >> (vec2<u32>(var_4.c.a, 4294967295u) % vec2<u32>(32u))) >> (~firstTrailingBit(vec2<u32>(61789u, 4294967295u)) % vec2<u32>(32u)), -_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -38078i), vec2<i32>(-1i, -1i), vec2<i32>(var_1.d.x, 46796i)))), global3.x, 1u);
}

