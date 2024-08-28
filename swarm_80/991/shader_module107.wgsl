struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(10415i, 0i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), false && (-1i == u_input.c.x)), vec3<bool>(all(vec3<bool>(true, true, false)) || true, !all(vec4<bool>(false, false, true, false)), ~global0.x != _wgslsmith_dot_vec3_i32(u_input.c.xyz, u_input.c.xxx)), vec3<bool>(true, all(vec3<bool>(true, true, true)), true)), -vec4<i32>(firstTrailingBit(_wgslsmith_div_i32(-2117i, 1894i)), ~(-2147483647i), -firstLeadingBit(-48084i), global0.x), 1u, u_input.a.yx);
    var var_1 = u_input.c.zw;
    let var_2 = select(select(var_0.a.zx, select(!(!var_0.a.xz), var_0.a.zx, !var_0.a.xy), !(!(!var_0.a.x))), var_0.a.zx, select(var_0.a.zz, vec2<bool>(!(!var_0.a.x), true), false));
    var_0 = Struct_1(vec3<bool>(!(countOneBits(962i) != ~var_1.x), any(vec4<bool>(true, any(var_0.a.yy), true, false)), _wgslsmith_sub_i32(8952i, -var_0.b.x) > _wgslsmith_mod_i32(_wgslsmith_add_i32(-11300i, 2844i), global0.x)), _wgslsmith_div_vec4_i32(u_input.c, firstLeadingBit(-u_input.c)), var_0.d.x, ~vec2<u32>(firstLeadingBit(var_0.c) << (reverseBits(13742u) % 32u), 17714u));
    var_0 = Struct_1(!var_0.a, u_input.c, u_input.a.x, vec2<u32>(var_0.c << (select(u_input.b, u_input.a.x, var_2.x) % 32u), u_input.a.x) >> (u_input.a.zy % vec2<u32>(32u)));
    return any(select(vec4<bool>(any(!var_0.a.xy), var_2.x, !(!var_2.x), var_0.a.x), select(vec4<bool>(!var_2.x, true, var_2.x, true), vec4<bool>(true, var_0.a.x, !var_2.x, !var_0.a.x), select(!vec4<bool>(var_0.a.x, var_2.x, true, false), vec4<bool>(var_0.a.x, true, var_0.a.x, var_2.x), !vec4<bool>(true, true, var_2.x, var_2.x))), !vec4<bool>(true, any(vec3<bool>(var_2.x, true, var_0.a.x)), !var_2.x, var_0.a.x & false)));
}

fn func_2() -> Struct_3 {
    let var_0 = vec2<bool>(true, true);
    global0 = vec2<i32>(u_input.c.x, 2147483647i ^ u_input.c.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -380f)), _wgslsmith_div_f32(-278f, 593f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -250f), -572f)));
    let var_2 = vec4<bool>(func_3(), all(!(!(!vec4<bool>(false, var_0.x, false, var_0.x)))), true, true);
    var var_3 = u_input.c.x;
    return Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1001f)))), 1000f));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> Struct_3 {
    global0 = ~(u_input.c.yx >> (u_input.a.wz % vec2<u32>(32u)));
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f) * _wgslsmith_f_op_f32(785f + 1224f)), 1348f))));
    let var_1 = true;
    global0 = select(_wgslsmith_div_vec2_i32(vec2<i32>(~(-2147483647i), -(u_input.d & u_input.c.x)), ~select(_wgslsmith_add_vec2_i32(u_input.c.zz, vec2<i32>(-7210i, global0.x)), ~vec2<i32>(-10775i, 17568i), !vec2<bool>(var_1, arg_1))), select(u_input.c.xz, -_wgslsmith_div_vec2_i32(vec2<i32>(8272i, global0.x), u_input.c.yw), false), true);
    global0 = select(vec2<i32>(select(_wgslsmith_clamp_i32(-2147483647i, global0.x, -17444i) >> (u_input.a.x % 32u), 14067i, true), global0.x), u_input.c.xx, true & arg_1);
    return func_2();
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.a.x, 946f, _wgslsmith_f_op_f32(trunc(arg_1.a.x)), _wgslsmith_f_op_f32(abs(arg_1.a.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, -152f, arg_1.a.x, arg_1.a.x) - vec4<f32>(-2756f, -1861f, 1232f, 978f))))))))));
    var var_1 = -589f;
    var var_2 = arg_1;
    let var_3 = Struct_1(select(vec3<bool>(!(var_0.x == -302f), false, _wgslsmith_dot_vec2_i32(u_input.c.xw, vec2<i32>(arg_3, u_input.c.x)) != _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)), vec3<bool>((18185u << (u_input.b % 32u)) <= 53240u, true, all(vec4<bool>(true, arg_2.x, false, arg_2.x))), arg_2.x), vec4<i32>(i32(-1i) * -1i, u_input.d, _wgslsmith_add_i32(countOneBits(_wgslsmith_clamp_i32(60201i, arg_0, arg_3)), _wgslsmith_clamp_i32(arg_0, reverseBits(u_input.d), -48673i)), _wgslsmith_add_i32(countOneBits(global0.x), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_0, global0.x)), ~u_input.c.zz))), 4294967295u, vec2<u32>(84660u, 11228u));
    let var_4 = _wgslsmith_f_op_vec2_f32(arg_1.a + vec2<f32>(-1469f, _wgslsmith_f_op_f32(f32(-1f) * -644f)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.b, ~0u, abs(4294967295u));
    var var_1 = ~u_input.a.x;
    var var_2 = _wgslsmith_add_i32(u_input.d, 27476i);
    let var_3 = 1168f;
    var var_4 = Struct_2(countOneBits(0u >> (var_0.x % 32u)) & u_input.a.x);
    let var_5 = !(countOneBits(u_input.a.x) > ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.wx, var_0.zz, vec4<i32>(_wgslsmith_add_i32(global0.x, func_4(i32(-1i) * -3952i, func_1(vec3<f32>(var_3, var_3, var_3), var_5), !vec2<bool>(true, var_5), u_input.c.x)), 18041i, -16159i, -abs(u_input.c.x)), abs(_wgslsmith_div_vec3_u32(u_input.a.yzy, ~vec3<u32>(93804u, var_4.a, 39160u) ^ vec3<u32>(u_input.b, u_input.a.x, 18645u))), u_input.a.zwx);
}

