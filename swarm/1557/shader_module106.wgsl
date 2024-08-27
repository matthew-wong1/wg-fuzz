struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 1u, 25685u);

var<private> global1: u32 = 4897u;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 10491u, 9966u);

var<private> global3: vec3<f32> = vec3<f32>(1678f, 963f, -289f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: bool) -> u32 {
    var var_0 = vec2<u32>(~reverseBits(~(global0.x ^ 1u)), arg_1.x);
    global2 = vec3<u32>(~0u, 4294967295u, 52603u);
    let var_1 = arg_0;
    var var_2 = var_1;
    var var_3 = arg_0;
    return _wgslsmith_dot_vec2_u32(global0.yx, ~firstLeadingBit(vec2<u32>(var_0.x ^ 1u, 4294967295u ^ global2.x)));
}

fn func_2() -> vec4<bool> {
    var var_0 = u_input.a.x;
    var var_1 = !select(~global2.x != ~_wgslsmith_add_u32(global2.x, 1u), select(true, true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)))), false);
    global2 = vec3<u32>(_wgslsmith_clamp_u32(abs(_wgslsmith_add_u32(func_3(Struct_1(47685i, -291f, vec2<i32>(u_input.a.x, -32796i), vec4<bool>(false, false, true, true)), global2.xy, false, false), global2.x)), ~reverseBits(~22410u), global0.x), global0.x << (0u % 32u), min(57420u, 1u));
    return !select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(true, true, true)), true, select(false, select(false, false, false), true)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2175f, global3.x, global3.x), vec3<f32>(-128f, global3.x, arg_2.b))) + vec3<f32>(118f, -574f, arg_2.b)), vec3<f32>(_wgslsmith_f_op_f32(arg_2.b + 1114f), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(f32(-1f) * -746f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.b))), _wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(-global3.x)), arg_2.b))));
    var var_1 = Struct_1(-1i, _wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-607f))))), arg_2.c, vec4<bool>(!(!(!arg_2.d.x)), !(629f != _wgslsmith_f_op_f32(global3.x - 1380f)), true, arg_2.d.x));
    let var_2 = arg_2;
    let var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(1i << (arg_1.x % 32u), -15306i, 1i), -vec3<i32>(1i, 1i, ~var_1.c.x));
    var var_4 = arg_2;
    return var_2;
}

fn func_1() -> u32 {
    let var_0 = func_4(abs(-46600i), countOneBits(~(~select(global0.zy, global0.xz, vec2<bool>(true, true)))), Struct_1(-1i, _wgslsmith_f_op_f32(global3.x * global3.x), ~firstTrailingBit(vec2<i32>(-12627i, u_input.a.x)), select(!func_2(), vec4<bool>(true, any(vec3<bool>(true, false, true)), true, all(vec3<bool>(true, false, false))), true)));
    global1 = select(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(global2.x, global2.x & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 34557u, global0.x)))), min(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 1u, 25457u) & vec3<u32>(4146u, global0.x, global0.x), vec3<u32>(global2.x, 0u, global2.x)), 80264u), all(vec4<bool>(true, true, false, var_0.d.x)));
    global0 = select(~max(~vec3<u32>(26758u, 58861u, global0.x), vec3<u32>(~global2.x, 4294967295u, 116924u)), firstLeadingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(global2.x, global0.x, global2.x), ~vec3<u32>(global2.x, global0.x, 8569u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, global0.x), vec3<u32>(global0.x, global0.x, 1u)))), !(!(!func_4(1i, global0.zy, var_0).d.ywz)));
    var var_1 = func_4(-select(_wgslsmith_mod_i32(11585i ^ u_input.a.x, ~31293i), -_wgslsmith_clamp_i32(43347i, var_0.c.x, 1i), false), ~global2.yz, Struct_1(var_0.c.x, global3.x, var_0.c, select(vec4<bool>(func_2().x, global2.x != global2.x, !var_0.d.x, true), vec4<bool>(func_2().x, var_0.d.x && var_0.d.x, any(vec4<bool>(false, var_0.d.x, var_0.d.x, var_0.d.x)), false), var_0.d))).d;
    var var_2 = 21147i;
    return global0.x & global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1788f))) - _wgslsmith_f_op_f32(global3.x + global3.x)), 437f)));
    global2 = vec3<u32>(~(~(~(~global0.x))), _wgslsmith_clamp_u32(func_1(), select(1u >> (global0.x % 32u), 1u, !(2147483647i == u_input.a.x)), 4294967295u >> (global2.x % 32u)), 1u);
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2048f, 1f)), global3.yx))));
    var var_1 = _wgslsmith_mult_vec4_i32(reverseBits(~(~(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x) << (vec4<u32>(global2.x, global2.x, global2.x, global2.x) % vec4<u32>(32u))))), ~(-vec4<i32>(-1i, _wgslsmith_div_i32(-2147483647i, 47922i), u_input.a.x, ~u_input.a.x)));
    var var_2 = func_4(i32(-1i) * -35119i, global0.zy, func_4(-66504i >> (~(~global2.x) % 32u), vec2<u32>(0u, 0u) >> ((global0.zz ^ ~global2.xx) % vec2<u32>(32u)), func_4(0i, select(global0.yz, global0.yx, func_2().x), func_4(~22496i, global0.yz, Struct_1(var_1.x, -1089f, vec2<i32>(-4759i, -29550i), vec4<bool>(false, true, false, false))))));
    let var_3 = global0.x;
    var_1 = vec4<i32>(-30510i, -(~(-11225i)), ~u_input.a.x, -(-_wgslsmith_mod_i32(0i, var_1.x) >> (~global0.x % 32u)));
    var var_4 = var_2.d.wwx;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, min(u_input.a.x, u_input.a.x), vec3<u32>(abs(firstLeadingBit(global0.x)), ~36909u, 25637u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-503f, _wgslsmith_f_op_f32(exp2(func_4(var_1.x, global2.xz, Struct_1(2147483647i, -750f, vec2<i32>(u_input.a.x, 0i), vec4<bool>(true, var_4.x, true, true))).b)), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-162f)))) * vec4<f32>(var_2.b, global3.x, _wgslsmith_f_op_f32(select(1042f, -2135f, false)), 115f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1505f, var_0.x, -1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, 1007f))))) + vec3<f32>(var_2.b, var_0.x, -408f)));
}

