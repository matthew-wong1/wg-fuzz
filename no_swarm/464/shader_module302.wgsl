struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<i32> = vec2<i32>(1i, -1i);

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), -4404i, 0i, -38961i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    var var_0 = Struct_2(firstLeadingBit(-1i), Struct_1(u_input.a.wy, 7442i, vec3<bool>(true, true, true)), (max(global2.yxw, global2.xww) << (vec3<u32>(min(14101u, u_input.c.x), u_input.c.x, select(51387u, u_input.c.x, false)) % vec3<u32>(32u))) | -global2.xyz, vec4<f32>(_wgslsmith_f_op_f32(floor(-865f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(609f + 2170f) + -764f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1550f), _wgslsmith_f_op_f32(-428f + -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -127f)))), Struct_1(~_wgslsmith_sub_vec2_u32(u_input.c.xx, ~vec2<u32>(91923u, 1u)), global1.x, !vec3<bool>(false, any(vec2<bool>(true, false)), true)));
    var_0 = Struct_2(_wgslsmith_dot_vec2_i32(global2.wz | select(vec2<i32>(2147483647i, var_0.b.b), var_0.c.xy, vec2<bool>(false, true)), abs(var_0.c.yz << (vec2<u32>(18410u, 4294967295u) % vec2<u32>(32u)))) | global2.x, var_0.e, ~firstLeadingBit(var_0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-382f, var_0.d.x, var_0.d.x, var_0.d.x), var_0.d))) - _wgslsmith_f_op_vec4_f32(var_0.d - vec4<f32>(var_0.d.x, var_0.d.x, -1001f, 460f)))), var_0.e);
    return !all(var_0.b.c.yy);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = u_input.b;
    global1 = ~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 0i, -var_0), global2.xyz), max(~(~17273i), firstTrailingBit(u_input.b & global1.x)));
    let var_1 = Struct_3(Struct_2(-1i, Struct_1(abs(vec2<u32>(u_input.a.x, 58563u)) | ~u_input.c.xx, -(~(-1i)), !vec3<bool>(true, arg_0, arg_0)), -(global2.ywy ^ firstLeadingBit(vec3<i32>(global1.x, -2147483647i, 46243i))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1379f, 323f, -1377f, 145f), vec4<f32>(-611f, -585f, -863f, -221f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1470f, -1338f, 1593f, 476f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-328f, -1385f, 1594f, -1234f) - vec4<f32>(465f, 1000f, -1346f, 1516f))), select(vec4<bool>(false, false, false, true), !vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, true, true)))), Struct_1(vec2<u32>(reverseBits(6679u), ~1u), var_0, vec3<bool>(false, true, arg_0))), func_3(), arg_0, Struct_1(~arg_1, ~abs(~u_input.b), !select(vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, false, arg_0), arg_0)), -1061f);
    let var_2 = vec4<bool>(select(any(vec4<bool>(arg_0, arg_0, var_1.d.c.x, false)), -972f < _wgslsmith_f_op_f32(-var_1.a.d.x), arg_0) | true, select(false, !(_wgslsmith_add_i32(-2147483647i, var_0) == (u_input.b | u_input.b)), func_3()), arg_0, true);
    var var_3 = var_1.d;
    return var_1.a.b;
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = arg_3;
    global0 = 10162i;
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-618f, _wgslsmith_div_f32(-1000f, -864f), _wgslsmith_f_op_f32(f32(-1f) * -1717f))))))));
    global2 = -_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(var_0.b, u_input.b), _wgslsmith_mod_i32(global2.x, -2147483647i), var_0.b, -24945i >> (0u % 32u)) << (_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(arg_3.a.x, 0u, 1u, 18666u)), u_input.c, min(vec4<u32>(0u, 4221u, arg_1.x, arg_0), vec4<u32>(arg_3.a.x, u_input.a.x, u_input.a.x, arg_3.a.x))) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, global2.x, 1i, -2147483647i), vec4<i32>(arg_3.b, -1i, global2.x, 0i)) | abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -1i, global2.x, 41797i), vec4<i32>(-1i, -1i, arg_3.b, global2.x))));
    var var_2 = (arg_3.b ^ -arg_3.b) | _wgslsmith_sub_i32(global1.x, 2147483647i);
    return Struct_3(Struct_2(0i | -global1.x, var_0, ~(vec3<i32>(-1i) * -vec3<i32>(1i, -1i, global1.x)), vec4<f32>(-402f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-315f - var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -739f))), _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1193f)), var_0), any(func_2(22298u < (u_input.a.x & 4294967295u), ~arg_3.a).c.zx), false, Struct_1(arg_2.yx, 7990i, !select(vec3<bool>(false, arg_3.c.x, arg_3.c.x), func_2(false, vec2<u32>(0u, arg_2.x)).c, vec3<bool>(var_0.c.x, var_0.c.x, arg_3.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))));
}

fn func_1() -> Struct_3 {
    return func_4(max(1u, u_input.a.x), ~(~(~u_input.c.zx)), ~(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(24270u, u_input.a.x, u_input.a.x), u_input.a.zxz, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))) ^ u_input.c.ywy), func_2(!(true || (u_input.c.x > 0u)), u_input.a.xx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_sub_i32(0i, ~(~global2.x) ^ ((u_input.b ^ u_input.b) & u_input.b));
    global2 = firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -14775i, 16499i), ~(global1.x >> (4294967295u % 32u)), _wgslsmith_dot_vec2_i32(global2.yz, -vec2<i32>(global1.x, 0i)), _wgslsmith_div_i32(global1.x, -u_input.b)) >> (u_input.c % vec4<u32>(32u)));
    var var_1 = vec2<u32>(u_input.c.x << (u_input.c.x % 32u), 0u);
    var var_2 = func_1();
    var_1 = vec2<u32>(_wgslsmith_mod_u32(1u, max(~1u, ~9161u)), ~_wgslsmith_div_u32(var_2.d.a.x, 43675u)) & ~var_2.a.e.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.e + _wgslsmith_f_op_f32(ceil(194f))), _wgslsmith_f_op_f32(floor(-1050f))), var_2.a.c, abs(abs(firstTrailingBit(~var_1.x))), -409f, var_2.a.d.x);
}

