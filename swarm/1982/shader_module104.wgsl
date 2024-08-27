struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: u32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 110f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: i32, arg_3: f32) -> f32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(764f - -1144f) + _wgslsmith_f_op_f32(-global0.c))))));
    let var_0 = select(!(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, true, false, false)), true, true, true), arg_3 <= arg_3), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false), true), !vec4<bool>(any(vec2<bool>(false, true)), true, true, true)), !(!(all(vec3<bool>(false, false, false)) && any(vec4<bool>(true, false, true, false)))));
    var var_1 = Struct_1(u_input.b, _wgslsmith_div_u32(40781u, ~(0u ^ u_input.b)) | ~min(15146u, 28631u >> (1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2244f), _wgslsmith_f_op_f32(global0.c - arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1042f)))));
    var var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(abs(1u), u_input.b & 0u, ~0u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.b, 48427u, 4294967295u), vec3<u32>(4294967295u, u_input.b, global0.b))) << (~_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(38147u, 81085u, 40897u)), vec3<u32>(global0.b, 4294967295u, 121682u) << (vec3<u32>(30468u, 2071u, var_1.b) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(4294967295u, u_input.b, select(~reverseBits(4294967295u), ~(~17041u), any(var_0.yw))));
    let var_3 = Struct_1(select(~(~var_2.x), 0u, all(var_0.wyy)) ^ ~(~(20149u & global0.b)), (~(~global0.a) >> (464u % 32u)) & ~var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-735f - _wgslsmith_f_op_f32(min(arg_0.x, 260f))), var_1.c)), _wgslsmith_div_f32(-149f, arg_0.x)));
    return 336f;
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_3 {
    global0 = Struct_1(arg_0, u_input.b, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -138f, global0.c, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-306f, 657f, 533f, 224f)), true)))), ~min(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-6224i, u_input.a)), firstLeadingBit(vec2<i32>(-10298i, -1i))), ~u_input.a, _wgslsmith_f_op_f32(floor(170f)))));
    let var_0 = select(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), all(vec4<bool>(all(vec4<bool>(false, false, false, false)), false, true, all(vec4<bool>(false, false, true, true)))), -343f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), true);
    let var_1 = arg_1;
    var var_2 = true;
    global0 = Struct_1(select(arg_0, u_input.b ^ ((1u ^ arg_0) & _wgslsmith_dot_vec2_u32(vec2<u32>(24070u, 37190u), vec2<u32>(global0.b, 4294967295u))), all(select(!vec4<bool>(false, var_0.x, true, false), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, true, true, var_0.x)), select(vec4<bool>(var_0.x, false, false, true), vec4<bool>(false, var_0.x, false, var_0.x), var_0.x)))), 1007u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1548f), _wgslsmith_f_op_f32(f32(-1f) * -153f)))));
    return Struct_3(!vec2<bool>(any(!var_0.zx), var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, u_input.a != 0i), !(!select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false)), select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(all(vec4<bool>(var_0.x, false, true, false)), var_0.x || var_0.x, u_input.a >= u_input.a, false), select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.x, false, true, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, true, false), true)))), _wgslsmith_div_u32(13681u, arg_0), false, vec4<bool>(!(_wgslsmith_add_i32(u_input.a, -1i) >= ~u_input.a), false, true, !all(!vec3<bool>(false, var_0.x, var_0.x))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> vec2<u32> {
    var var_0 = Struct_4(arg_0, Struct_1(_wgslsmith_sub_u32(arg_0.c, 4294967295u), u_input.b, -416f), _wgslsmith_clamp_u32(0u, 0u >> (min(arg_0.c, 69616u) % 32u), 78416u));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.c) * -484f) * _wgslsmith_f_op_f32(global0.c * 443f)) * _wgslsmith_f_op_f32(f32(-1f) * -185f));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.c) + _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(var_0.b.c * _wgslsmith_f_op_f32(410f + _wgslsmith_f_op_f32(var_0.b.c + var_0.b.c)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, 1326f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2858f, var_0.b.c))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.c, global0.c) * vec2<f32>(global0.c, var_0.b.c))))))), !arg_0.e.x));
    global0 = Struct_1(~4294967295u ^ max(68076u, global0.a), 77058u, global0.c);
    global0 = Struct_1(0u | (~global0.b << (arg_0.c % 32u)), firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, var_0.a.c, 1470u), vec3<u32>(1u, 12521u, global0.b), abs(vec3<u32>(arg_0.c, u_input.b, 1u))), vec3<u32>(44503u, 37075u, arg_0.c))), 1000f);
    return ~(~vec2<u32>(~4294967295u & ~var_0.c, ~(~1u)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32, arg_3: vec3<bool>) -> vec2<i32> {
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(879f + _wgslsmith_f_op_f32(func_3(vec4<f32>(global0.c, 719f, arg_1.a.x, -165f), vec2<i32>(38420i, -12847i), 10844i, global0.c))), global0.c))))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1233f)) + 1242f), 1367f)) - -1183f));
    let var_0 = global0.a;
    let var_1 = func_2(70072u, 692f).e.xwz;
    let var_2 = func_2(~global0.a, 247f);
    return vec2<i32>(select(u_input.a, u_input.a, var_1.x), _wgslsmith_sub_i32(2147483647i, u_input.a));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    let var_0 = func_5(~_wgslsmith_mult_vec2_u32(func_4(func_2(27113u, global0.c), func_2(global0.a, global0.c).e.xzx), ~max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(global0.b, global0.b))), Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.c, 1891f, -868f))))))), 39202i, vec3<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)), !(!any(vec4<bool>(true, false, true, false))), !any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false))));
    var var_1 = func_2(~u_input.b, _wgslsmith_f_op_f32(273f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(-669f, global0.c, -367f, global0.c), abs(var_0), i32(-1i) * -46971i, _wgslsmith_f_op_f32(global0.c * global0.c))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.c, -1000f)))))).e.yw;
    global0 = Struct_1(countOneBits(~4294967295u), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global0.b, min(_wgslsmith_div_u32(53007u, 57488u), global0.b ^ 21129u)), 4294967295u ^ u_input.b, 71299u), _wgslsmith_f_op_f32(f32(-1f) * -208f));
    global0 = Struct_1(func_2(~1u, _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(step(global0.c, _wgslsmith_f_op_f32(f32(-1f) * -2660f))))).c, u_input.b << (global0.b % 32u), 1000f);
    var var_2 = countOneBits(1u);
    return StorageBuffer(_wgslsmith_f_op_f32(-1287f + -833f), _wgslsmith_div_i32(-2147483647i ^ var_0.x, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -979f) + _wgslsmith_f_op_f32(func_3(vec4<f32>(1937f, global0.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.c), var_0, -select(34697i, 2147483647i, var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * 630f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a & global0.a, firstTrailingBit(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_div_u32(94257u, 88394u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), ~vec2<u32>(0u, 4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(834f + 141f)));
    var var_0 = -2147483647i;
    let var_1 = true;
    let x = u_input.a;
    s_output = func_1(~2147483647i | ~(-(u_input.a << (u_input.b % 32u))));
}

