struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_3,
    d: vec2<f32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_1(252f, vec2<bool>(false, true), vec2<bool>(true, true), 82298u, vec4<i32>(45311i, -1i, -1i, -1i)));

var<private> global1: Struct_1 = Struct_1(-427f, vec2<bool>(false, false), vec2<bool>(false, true), 0u, vec4<i32>(2147483647i, -1i, 2147483647i, 0i));

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_3(global1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-778f)) + -377f));
    var var_1 = ~_wgslsmith_mod_vec4_u32(firstTrailingBit(~vec4<u32>(global1.d, 4294967295u, 34387u, 1u)), ~vec4<u32>(4294967295u, _wgslsmith_mult_u32(37216u, var_0.a), 1u, _wgslsmith_sub_u32(var_0.a, 4043u)));
    var var_2 = firstTrailingBit(~(~(global0.a.d >> (var_1.x % 32u)))) & _wgslsmith_add_u32(15135u, select(~global1.d, ~(32734u << (var_0.a % 32u)), any(select(vec2<bool>(global0.a.b.x, false), vec2<bool>(false, true), global2.x))));
    var var_3 = !global2.zyy;
    var var_4 = true;
    return global2.zwz;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_sub_vec4_u32(abs(vec4<u32>(~arg_1.d, min(global1.d, arg_1.d), 4294967295u, _wgslsmith_add_u32(1u, global1.d))), vec4<u32>(~1286u | ~arg_1.d, ~(4294967295u ^ arg_1.d), 55451u, ~0u)) << (vec4<u32>(~(~137219u), 1u, 0u, ~55557u) % vec4<u32>(32u));
    let var_1 = arg_2;
    var var_2 = all(!select(!select(arg_1.c, vec2<bool>(false, arg_0.x), global0.a.b.x), global0.a.b, arg_0.x));
    var var_3 = Struct_4(_wgslsmith_dot_vec4_i32(select(~abs(arg_1.e), global1.e, false || global2.x), global1.e), Struct_2(select(arg_0, arg_0, vec4<bool>(true, all(arg_0), arg_1.b.x, !global0.a.c.x)), func_3()), Struct_3(0u, _wgslsmith_f_op_f32(339f + -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a), 418f, arg_0.x)), arg_1.a) - vec2<f32>(-476f, global1.a)), any(!vec4<bool>(!arg_1.c.x, !global1.c.x, true, global2.x | true)));
    var_2 = all(global2.xx);
    return true;
}

fn func_1(arg_0: Struct_5, arg_1: vec4<i32>) -> Struct_4 {
    global0 = Struct_5(arg_0.a);
    let var_0 = vec2<bool>(global2.x, global2.x);
    global2 = vec4<bool>(!all(vec4<bool>(global0.a.b.x, global1.c.x, !global1.c.x, func_2(vec4<bool>(var_0.x, arg_0.a.c.x, arg_0.a.b.x, global1.c.x), global0.a, vec2<i32>(-1i, 7183i)))), global2.x, any(vec2<bool>(select(!global1.b.x, true, var_0.x), true)), var_0.x);
    global0 = Struct_5(global0.a);
    var var_1 = Struct_4(-1i, Struct_2(select(vec4<bool>(true, true, all(global2.xzz), true), !select(vec4<bool>(true, var_0.x, global0.a.c.x, arg_0.a.c.x), vec4<bool>(true, true, global0.a.c.x, global2.x), false), vec4<bool>(true, false, var_0.x, false)), select(global2.zyx, !global2.xww, all(!vec2<bool>(var_0.x, true)))), Struct_3(~(~reverseBits(arg_0.a.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a * -1779f)), global1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(166f, _wgslsmith_f_op_f32(-global1.a)) + vec2<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(round(2612f))))), any(vec3<bool>(true, !(global0.a.a == -1262f), global1.b.x)));
    return Struct_4(~(-_wgslsmith_clamp_i32(-7515i, -2147483647i, select(var_1.a, arg_0.a.e.x, true))), var_1.b, var_1.c, _wgslsmith_f_op_vec2_f32(max(var_1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_1.d)))))), !(!(!(!global0.a.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a, _wgslsmith_f_op_f32(-global1.a), _wgslsmith_div_f32(global0.a.a, 100f), _wgslsmith_f_op_f32(-global1.a)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-909f, -780f, -1132f, -1614f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, global1.a, global1.a, 1000f))))))));
    let var_1 = Struct_5(global0.a);
    var var_2 = func_1(Struct_5(Struct_1(_wgslsmith_div_f32(global0.a.a, _wgslsmith_f_op_f32(-global0.a.a)), !var_1.a.c, select(var_1.a.b, global2.yz, var_1.a.c), 86186u, vec4<i32>(~(-13353i), -23159i, global0.a.e.x & 17056i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global1.e.x, var_1.a.e.x, 15784i), var_1.a.e)))), countOneBits(-_wgslsmith_add_vec4_i32(var_1.a.e << (vec4<u32>(4294967295u, var_1.a.d, 20776u, global1.d) % vec4<u32>(32u)), abs(var_1.a.e))));
    var var_3 = func_1(Struct_5(global0.a), var_1.a.e).b.a.wwy;
    var var_4 = 83457i;
    let var_5 = var_1.a;
    var var_6 = global1.a;
    global2 = var_2.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global0.a.d, 0u, 1u) << ((vec3<u32>(4294967295u, global1.d, 12294u) >> (vec3<u32>(18573u, var_5.d, var_1.a.d) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<u32>(reverseBits(firstLeadingBit(39428u)), ~countOneBits(global0.a.d), global1.d)), ~func_1(Struct_5(Struct_1(global0.a.a, var_2.b.b.xx, global2.yy, 86476u, var_1.a.e)), _wgslsmith_add_vec4_i32(global1.e ^ global1.e, -var_5.e)).a, ~abs(_wgslsmith_add_vec4_u32(~vec4<u32>(1636u, global1.d, var_1.a.d, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_1.a.d, var_5.d, var_5.d), vec4<u32>(14031u, 34499u, 0u, global0.a.d)))));
}

