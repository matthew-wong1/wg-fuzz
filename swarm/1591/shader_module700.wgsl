struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1018f, -720f);

var<private> global1: Struct_3 = Struct_3(0u, -101f);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: f32) -> vec2<f32> {
    let var_0 = -_wgslsmith_sub_vec2_i32(~abs(-vec2<i32>(arg_2.a, -1i)), ~(vec2<i32>(10243i, arg_2.a) >> (vec2<u32>(arg_0, u_input.a.x) % vec2<u32>(32u))) | _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(19631i, 2147483647i), ~vec2<i32>(u_input.c, arg_2.a)));
    let var_1 = Struct_2(min(_wgslsmith_sub_i32(var_0.x, -1i) & ~(0i & u_input.c), min(_wgslsmith_mult_i32(14288i, 37037i), 2147483647i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(865f)) + _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-645f, 1025f), 430f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1385f), global1.b))), -538f);
    global0 = vec2<f32>(597f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1554f), -506f)));
    var var_2 = -122f;
    let var_3 = arg_2;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-439f * arg_3)), var_3.b));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_mod_i32(-2147483647i, u_input.c);
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(u_input.b.x, vec3<u32>(u_input.b.x, 0u, global1.a), Struct_1(-1i, global1.b, global0.x, u_input.b), global1.b)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(362f, global0.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(124f, 124f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1097f, 1147f), vec2<f32>(arg_0, arg_0))))))))));
    let var_1 = -253f;
    let var_2 = vec2<bool>(all(arg_2) && any(!select(arg_2.yzz, arg_2.yyz, arg_2.zwz)), any(select(!(!vec3<bool>(false, true, arg_2.x)), vec3<bool>(!arg_2.x, true, global0.x <= -1327f), arg_2.zwy)));
    let var_3 = Struct_4(Struct_1(u_input.c, var_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -478f), -1102f, true)), countOneBits(~(~vec2<u32>(global1.a, arg_3.a)))), arg_2.x);
    return Struct_2(reverseBits(firstTrailingBit(_wgslsmith_sub_i32(u_input.c, var_3.a.a ^ -2147483647i))), 1f, var_3.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-701f, var_3.a.b)))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> bool {
    let var_0 = countOneBits(reverseBits(vec4<u32>(select(4294967295u, global1.a, arg_0.x), _wgslsmith_clamp_u32(global1.a, 4294967295u, 0u), max(50125u, arg_1), _wgslsmith_mult_u32(0u, 4679u))) >> (vec4<u32>(_wgslsmith_add_u32(global1.a >> (4294967295u % 32u), ~u_input.b.x), min(abs(0u), u_input.b.x), u_input.b.x, _wgslsmith_div_u32(0u, ~52233u)) % vec4<u32>(32u)));
    let var_1 = func_2(global1.b, -_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.c, u_input.c, 0i), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(0i, u_input.c, -29830i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.c, 1i), vec3<i32>(-45755i, 2147483647i, -2147483647i), vec3<i32>(u_input.c, 50445i, -2147483647i))), vec3<i32>(-u_input.c, 1i, -1i)), !select(vec4<bool>(any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), global0.x < -349f, true, 29154i < u_input.c), !arg_0, vec4<bool>(!arg_0.x, all(vec2<bool>(arg_0.x, arg_0.x)), arg_0.x && false, true)), Struct_3(0u, _wgslsmith_f_op_f32(-621f * -644f)));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_1.c, func_2(global1.b, vec3<i32>(u_input.c, var_1.a, 28930i), vec4<bool>(true, arg_0.x, arg_0.x, true), Struct_3(u_input.b.x, 373f)).c)))), 1198f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1.c) * vec2<f32>(-1260f, 567f))), _wgslsmith_f_op_vec2_f32(func_3(var_0.x, firstLeadingBit(vec3<u32>(6172u, 13680u, global1.a)), Struct_1(var_1.a, 1619f, -132f, vec2<u32>(u_input.b.x, global1.a)), _wgslsmith_f_op_f32(var_1.d * global0.x))), vec2<bool>(true, arg_0.x)))));
    var var_2 = Struct_3(abs(u_input.b.x), 552f);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1458f, _wgslsmith_f_op_vec2_f32(func_3(max(35839u, var_0.x), vec3<u32>(u_input.a.x, 39565u, 19934u), Struct_1(var_1.a, 1732f, 1032f, vec2<u32>(0u, 4294967295u)), -145f)).x)) - vec2<f32>(1550f, 935f));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec4<bool>(func_1(vec4<bool>(true, true, true, true), 0u) & true, select(false, false, all(vec4<bool>(true, true, false, true))), all(vec2<bool>(true, true)) & true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false))), vec4<bool>(u_input.c > u_input.c, ~global1.a == ~0u, !(u_input.c >= u_input.c), any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(1000f + -529f), func_2(global0.x, vec3<i32>(u_input.c, u_input.c, -3803i), vec4<bool>(true, true, true, var_0.x), Struct_3(0u, global1.b)).c, global1.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 367f, -1213f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 626f, 1000f), vec3<f32>(global0.x, 452f, global1.b), var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, 1000f, global1.b)))), !vec3<bool>(var_0.x, true, 0u != u_input.a.x))));
}

