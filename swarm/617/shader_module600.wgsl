struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = 21893i;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(593f, 1000f, -1289f, _wgslsmith_f_op_f32(arg_0.x - -1236f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 701f, arg_1, 1938f)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-892f, -942f, -168f, 2944f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 303f, 173f, 135f) - vec4<f32>(arg_1, -296f, -1354f, 465f)) + vec4<f32>(-104f, global0.x, -1017f, -1564f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 777f, 699f, 1185f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-732f, global0.x, -155f, global0.x)), any(vec4<bool>(true, false, arg_3.c.x, true))))))));
    let var_1 = any(!select(select(!vec4<bool>(false, false, true, arg_3.c.x), vec4<bool>(false, false, arg_3.c.x, arg_3.c.x), vec4<bool>(arg_3.c.x, false, arg_3.c.x, true)), !select(vec4<bool>(true, false, false, true), vec4<bool>(arg_3.c.x, true, false, true), vec4<bool>(true, false, false, true)), _wgslsmith_f_op_f32(floor(arg_1)) <= arg_0.x));
    var_0 = _wgslsmith_dot_vec3_i32(countOneBits(arg_2.xzy), ~vec3<i32>(arg_3.d.x, -83926i, 5942i));
    var_0 = 39072i;
    return arg_3.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_4) -> u32 {
    let var_0 = ~(~u_input.c);
    var var_1 = vec4<bool>(!any(vec3<bool>(!arg_2.a.x, !arg_2.a.x, arg_2.a.x)), arg_2.a.x, false, arg_2.a.x);
    var var_2 = !(!var_1.xwy);
    var var_3 = arg_2;
    let var_4 = Struct_5(false, -(~_wgslsmith_mult_vec2_i32(-arg_1, vec2<i32>(-1i, -2147483647i))), all(select(select(select(vec4<bool>(var_3.a.x, false, var_3.a.x, var_3.a.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_2.x, var_2.x, true, var_2.x)), select(vec4<bool>(var_1.x, false, arg_2.a.x, var_3.a.x), vec4<bool>(false, true, false, false), true), !var_1.x), vec4<bool>(true, true, true, true), select(!vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, var_1.x), !vec4<bool>(true, true, var_3.a.x, var_1.x), select(vec4<bool>(arg_2.a.x, false, true, false), vec4<bool>(true, var_1.x, false, var_3.a.x), vec4<bool>(false, var_1.x, true, var_2.x))))), Struct_3(6402u, vec3<bool>(!(arg_2.a.x && var_3.a.x), true, true), Struct_1(6333i, vec4<i32>(20776i, _wgslsmith_dot_vec4_i32(vec4<i32>(-77759i, u_input.b, -20891i, u_input.b), vec4<i32>(u_input.b, arg_1.x, u_input.b, arg_1.x)), 19134i, _wgslsmith_add_i32(36624i, arg_1.x)), select(var_1.xwy, func_3(global0.yxy, global0.x, vec4<i32>(-25825i, 1899i, 24788i, -49560i), Struct_1(69880i, vec4<i32>(arg_1.x, 1i, 10897i, arg_1.x), var_1.yyy, vec3<i32>(-6790i, u_input.b, arg_1.x), var_0)), select(vec3<bool>(var_3.a.x, arg_2.a.x, arg_2.a.x), var_1.wxx, var_1.wwx)), -_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.b, arg_1.x), vec3<i32>(arg_1.x, 14983i, 11272i)), 48311u)));
    return _wgslsmith_clamp_u32(33u, var_4.d.c.e, ~(~abs(_wgslsmith_clamp_u32(19570u, 40580u, 35538u))));
}

fn func_1() -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-573f)), _wgslsmith_f_op_f32(-961f + _wgslsmith_f_op_f32(f32(-1f) * -1707f)), _wgslsmith_f_op_f32(-global0.x), global0.x))));
    return !vec2<bool>(func_2(vec3<f32>(global0.x, 1000f, global0.x), _wgslsmith_mult_vec2_i32(vec2<i32>(-31916i, u_input.b), vec2<i32>(u_input.b, u_input.b)), Struct_4(vec2<bool>(true, false))) <= countOneBits(reverseBits(u_input.c)), abs(firstTrailingBit(14131u)) <= _wgslsmith_div_u32(45365u, abs(1635u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), !(-876f == global0.x)), vec2<bool>(!(5932u != u_input.a), true), !select(vec2<bool>(true, true), func_1(), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), select(func_3(_wgslsmith_f_op_vec3_f32(-global0.yww), global0.x, countOneBits(vec4<i32>(u_input.b, -59501i, u_input.b, u_input.b)), Struct_1(_wgslsmith_mult_i32(-1i, u_input.b), vec4<i32>(-88154i, u_input.b, u_input.b, u_input.b), func_3(vec3<f32>(-868f, -1000f, -1548f), -434f, vec4<i32>(u_input.b, u_input.b, u_input.b, 43737i), Struct_1(u_input.b, vec4<i32>(-22403i, -39312i, 1i, 316i), vec3<bool>(false, true, false), vec3<i32>(u_input.b, -9541i, u_input.b), 13005u)), vec3<i32>(1i, u_input.b, -2147483647i), _wgslsmith_add_u32(u_input.a, u_input.c))).zz, func_1(), select(!func_3(vec3<f32>(global0.x, global0.x, global0.x), global0.x, vec4<i32>(-2147483647i, 1i, -2147483647i, u_input.b), Struct_1(1i, vec4<i32>(-735i, u_input.b, u_input.b, u_input.b), vec3<bool>(true, false, true), vec3<i32>(2147483647i, 4229i, u_input.b), 4294967295u)).zz, !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), false)), true);
    var var_1 = Struct_1(~_wgslsmith_mult_i32(max(-u_input.b, 26942i), reverseBits(-2147483647i)), vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(u_input.b, u_input.b)) & (max(38976i, u_input.b) ^ u_input.b), u_input.b, _wgslsmith_dot_vec2_i32(firstTrailingBit(max(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, 1i))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 22089i), vec2<i32>(2147483647i, -26552i)) | (vec2<i32>(-2147483647i, u_input.b) ^ vec2<i32>(-27967i, u_input.b))), -1i), !vec3<bool>(all(vec2<bool>(true, var_0.x)) || true, var_0.x, true & var_0.x), vec3<i32>(u_input.b, -1i, _wgslsmith_sub_i32(1i, u_input.b)), u_input.a);
    let var_2 = 15697u;
    let var_3 = vec4<bool>(any(select(vec4<bool>(false, var_1.a <= 2147483647i, func_1().x, var_1.c.x), select(vec4<bool>(var_0.x, true, var_0.x, true), !vec4<bool>(false, true, true, var_0.x), !vec4<bool>(true, var_0.x, var_0.x, var_1.c.x)), true)), true, _wgslsmith_mult_u32(~(~var_2), var_1.e) == ~(~1u), !var_1.c.x);
    var var_4 = select(_wgslsmith_add_i32(-40688i, ~_wgslsmith_div_i32(abs(0i), u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d.x, -(-6561i | u_input.b)), var_1.b.xx >> (u_input.d.zx % vec2<u32>(32u))), false);
    let var_5 = Struct_4(func_3(global0.xyx, 264f, ~vec4<i32>(u_input.b, u_input.b, i32(-1i) * -23077i, _wgslsmith_clamp_i32(-1i, 30521i, u_input.b)), Struct_1(abs(-1i), vec4<i32>(1i, ~(-28977i), abs(2147483647i), -328i), vec3<bool>(var_0.x & var_1.c.x, all(vec4<bool>(var_1.c.x, true, var_3.x, var_1.c.x)), !var_0.x), var_1.b.xwx, u_input.a)).xx);
    let var_6 = _wgslsmith_sub_u32(u_input.e.x, 4294967295u);
    let var_7 = 1246f;
    let x = u_input.a;
    s_output = StorageBuffer(~(-51760i));
}

