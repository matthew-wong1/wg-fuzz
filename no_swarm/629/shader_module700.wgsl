struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32;

var<private> global2: vec2<f32> = vec2<f32>(-627f, -492f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    global1 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(abs(1570f)));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 345f, global2.x) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.x, global2.x, -672f)))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -428f);
    global0 = !(arg_1.c >= max(11753i, i32(-1i) * -arg_0.e));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yy * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.zy - var_0.zx)))))));
    return -1i;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(0u, 7305u), abs(~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(30441u, 78890u, 60769u))), ~vec3<u32>(reverseBits(1u), 11205u, 1u)), ~_wgslsmith_mod_vec4_i32(max(firstLeadingBit(vec4<i32>(u_input.b, u_input.a.x, 5199i, -9897i)), vec4<i32>(-1i, u_input.b, -1i, -2147483647i)), vec4<i32>(-u_input.b, u_input.b, -u_input.a.x, func_3(Struct_2(Struct_1(vec4<u32>(0u, 6922u, 4294967295u, 60141u), 4294967295u, vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, 1i), 110614u), u_input.a.yz, u_input.b, false, 1226i), Struct_2(Struct_1(vec4<u32>(57399u, 32123u, 13957u, 4294967295u), 0u, vec4<i32>(u_input.a.x, -20175i, 9514i, u_input.b), 639u), u_input.a.xz, 1i, true, u_input.b)))), ~(1u << (_wgslsmith_clamp_u32(0u, 5411u, 1u) % 32u)) ^ 1642u);
    var var_1 = Struct_1(_wgslsmith_div_vec4_u32(firstTrailingBit(~(vec4<u32>(31586u, var_0.d, var_0.d, 4294967295u) ^ vec4<u32>(var_0.d, 0u, 7838u, var_0.b))), _wgslsmith_clamp_vec4_u32(var_0.a, vec4<u32>(_wgslsmith_sub_u32(var_0.b, 58394u), 18780u, var_0.d, ~var_0.a.x), vec4<u32>(var_0.a.x, ~var_0.a.x, var_0.d, var_0.b))), abs(var_0.a.x), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(abs(vec4<i32>(-2147483647i, var_0.c.x, u_input.a.x, 12510i)), ~var_0.c), var_0.c) << (vec4<u32>(abs(_wgslsmith_clamp_u32(var_0.d, 1u, 36017u)), abs(7833u << (var_0.d % 32u)), _wgslsmith_clamp_u32(48570u, 1u, ~0u), ~abs(var_0.d)) % vec4<u32>(32u)), var_0.b);
    let var_2 = vec4<u32>(~firstTrailingBit(55188u ^ ~var_0.d), 101968u, var_0.d, ~_wgslsmith_div_u32(var_1.b, _wgslsmith_add_u32(firstLeadingBit(43387u), 32241u)));
    global1 = -1000f;
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, -2064f), vec2<f32>(-992f, global2.x), false))) - vec2<f32>(-104f, _wgslsmith_f_op_f32(f32(-1f) * -974f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(global2.x * global2.x), -1000f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1226f)), _wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1162f, global2.x) + vec2<f32>(global2.x, global2.x)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(113f, -1568f), vec2<f32>(-596f, -236f))))))));
    return Struct_2(var_0, (-_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, var_0.c.x), var_1.c.xz) ^ (~var_0.c.yy << (abs(vec2<u32>(4294967295u, 11404u)) % vec2<u32>(32u)))) >> (~vec2<u32>(0u >> (1u % 32u), 4294967295u) % vec2<u32>(32u)), _wgslsmith_add_i32(var_0.c.x, u_input.b), true, u_input.b);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<f32>) -> i32 {
    global0 = false;
    var var_0 = func_2();
    global0 = true | (~firstTrailingBit(max(var_0.a.d, 0u)) == var_0.a.a.x);
    let var_1 = reverseBits(_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(arg_0.b, 4294967295u)), firstLeadingBit(vec2<u32>(4294967295u, 50894u))) & _wgslsmith_div_vec2_u32(arg_0.a.yz, arg_1.yz)) << ((arg_0.a.wy & var_0.a.a.yz) % vec2<u32>(32u));
    global1 = _wgslsmith_f_op_f32(-arg_2.x);
    return (_wgslsmith_add_i32(arg_0.c.x, abs(var_0.e >> (33042u % 32u))) ^ min(~_wgslsmith_dot_vec4_i32(arg_0.c, arg_0.c), 1i)) >> (13778u % 32u);
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = arg_0.a;
    let var_1 = true;
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1538f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), -425f))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))), -338f));
    let var_2 = false;
    let var_3 = !select(vec4<bool>(select(true, true, var_1) && var_1, var_2, all(!vec4<bool>(true, false, false, var_2)), !arg_0.d), select(!vec4<bool>(var_2, var_2, true, true), vec4<bool>(true, true, all(vec4<bool>(var_1, true, true, var_2)), true), true), !var_2);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(-u_input.a.x >= u_input.b);
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, global2.x), vec2<f32>(global2.x, 1000f), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1373f, global2.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -920f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) * _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(567f)) - -262f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.x, 1977f), vec2<f32>(-707f, global2.x)))))) - vec2<f32>(1f, -142f)));
    let var_0 = vec4<bool>(!func_4(Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 11006u, 27539u), 50680u, vec4<i32>(u_input.a.x, 1i, -2147483647i, 53703i), 30075u), firstLeadingBit(u_input.a.yx), u_input.a.x, select(true, true, true), func_1(Struct_1(vec4<u32>(1u, 1u, 4294967295u, 44002u), 0u, vec4<i32>(0i, -2147483647i, 269i, -43084i), 4294967295u), vec3<u32>(6610u, 0u, 27002u), vec4<f32>(-710f, global2.x, global2.x, global2.x)))), any(select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), vec2<bool>(true, any(vec2<bool>(false, false))), true)), !(select(any(vec2<bool>(false, true)), false, func_2().d) | true), all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), true)));
    let var_1 = Struct_2(Struct_1(firstTrailingBit(vec4<u32>(~36848u, ~42162u, _wgslsmith_add_u32(63312u, 27823u), ~18206u)), firstTrailingBit(select(1u, 19465u, var_0.x) ^ 1u), -vec4<i32>(u_input.a.x, 2147483647i | u_input.b, u_input.a.x, u_input.b ^ u_input.a.x), ~(~0u)), -_wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-9750i, u_input.b), vec2<i32>(u_input.a.x, -u_input.a.x)), -1i << (_wgslsmith_clamp_u32(~84733u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(48023u, 62572u), vec2<u32>(1u, 1u)), countOneBits(1u)) % 32u), var_0.x && var_0.x, u_input.a.x);
    var var_2 = var_0;
    let var_3 = false;
    var var_4 = 1u;
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, var_1.a.d, min(vec4<u32>(_wgslsmith_add_u32(countOneBits(1u), ~1u), var_1.a.d, ~var_1.a.a.x, ~min(var_1.a.b, 22688u)), var_1.a.a), -1605f);
}

