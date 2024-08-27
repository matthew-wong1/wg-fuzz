struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    let var_0 = u_input.a;
    global0 = true;
    let var_1 = ~50132u;
    let var_2 = 16952i >> (firstTrailingBit(~_wgslsmith_sub_u32(var_1 << (30700u % 32u), var_1)) % 32u);
    global0 = u_input.b <= ~reverseBits(-(2147483647i ^ var_0));
    return vec4<bool>(1u > (54226u & var_1), !all(vec4<bool>(all(vec2<bool>(false, true)), true, true, true)), all(vec3<bool>(any(vec3<bool>(false, false, false)), true, true)) != (any(vec3<bool>(true, true, true)) && (_wgslsmith_f_op_f32(ceil(925f)) < -1000f)), any(vec4<bool>(!all(vec4<bool>(false, false, true, false)), false, select(true, true, true), true)));
}

fn func_4(arg_0: vec4<bool>) -> i32 {
    global0 = (select(0u, ~44306u, any(vec3<bool>(true, false, false))) & _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 51449u), ~vec3<u32>(48167u, 1u, 2572u)), firstLeadingBit(4294967295u))) != ~1u;
    global0 = any(arg_0.wzx);
    global0 = true;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(177f * _wgslsmith_f_op_f32(round(-896f))), _wgslsmith_f_op_f32(ceil(-578f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1220f + 366f), _wgslsmith_f_op_f32(-283f - 191f)) * -318f)), 1f);
    var var_1 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(min(4294967295u, 1866u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(18403u, 22152u, 82550u), vec3<u32>(16280u, 0u, 4097u)), ~40789u), ~select(vec4<u32>(28993u, 18884u, 0u, 11510u), vec4<u32>(4294967295u, 9804u, 11047u, 39179u), arg_0)), u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1194f, -989f, var_0.x, var_0.x) - vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) + vec4<f32>(var_0.x, var_0.x, var_0.x, 1000f)), ~abs(u_input.b), 1i));
    return 186i;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> u32 {
    let var_0 = Struct_2(Struct_1(~(~vec4<u32>(4294967295u, 320u, 1u, 4294967295u)), ~(-50634i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-580f, 325f), -2070f, _wgslsmith_f_op_f32(max(-605f, 392f)), 1042f)), func_4(func_3()), u_input.b));
    var var_1 = vec3<bool>(any(vec2<bool>(any(vec2<bool>(true, true)), !func_3().x)), false, !(var_0.a.e < 37129i));
    global0 = var_1.x != arg_1;
    var var_2 = Struct_1(vec4<u32>(~var_0.a.a.x, ~var_0.a.a.x, ~(~_wgslsmith_sub_u32(var_0.a.a.x, var_0.a.a.x)), _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.a.x, 18834u), vec2<u32>(var_0.a.a.x, 4294967295u)), abs(var_0.a.a.yy))), i32(-1i) * -1i, _wgslsmith_div_vec4_f32(vec4<f32>(632f, _wgslsmith_f_op_f32(f32(-1f) * -2377f), 816f, var_0.a.c.x), var_0.a.c), -1i, _wgslsmith_clamp_i32(-7970i, u_input.b, ~var_0.a.e));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_2.c.yw), _wgslsmith_f_op_vec2_f32(var_0.a.c.xx - vec2<f32>(var_0.a.c.x, 1699f))))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c.x + _wgslsmith_f_op_f32(trunc(-555f)))), var_2.c.x));
    return ~_wgslsmith_div_u32(_wgslsmith_div_u32(abs(28008u), var_0.a.a.x & ~79684u), 12766u);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global0 = true;
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(213f)) - _wgslsmith_f_op_f32(f32(-1f) * -647f)), arg_0.x, 1919f, -1246f), ~max(4294967295u, func_2(vec3<bool>(false, false, false), true)), Struct_2(Struct_1(max(~vec4<u32>(22556u, 1646u, 4294967295u, 48515u), vec4<u32>(1u, 1u, 1u, 1u)), -2147483647i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -283f), arg_0.x, arg_0.x, 276f), u_input.b, 2147483647i)));
    let var_1 = var_0.c.a;
    global0 = select(true, false, all(vec2<bool>(true, func_3().x)) | true);
    let var_2 = Struct_1(countOneBits(~reverseBits(vec4<u32>(28635u, var_1.a.x, 0u, var_1.a.x) >> (vec4<u32>(var_0.b, var_1.a.x, 32739u, var_0.c.a.a.x) % vec4<u32>(32u)))), 2147483647i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c) - vec4<f32>(arg_0.x, 158f, var_0.a.x, var_1.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.a.c.x, -1000f, 1474f, arg_0.x), vec4<f32>(arg_0.x, -470f, var_1.c.x, -2597f))))), vec4<bool>(!select(true, true, true), false, true, select(true, var_1.c.x >= arg_0.x, true)))), firstLeadingBit(var_0.c.a.b), var_1.d);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~5497i, Struct_2(Struct_1(select(~vec4<u32>(1u, 0u, 13574u, 30846u), ~vec4<u32>(14306u, 65762u, 0u, 1u), true), ~_wgslsmith_div_i32(u_input.b, -22713i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1278f, 1545f, -1207f, -368f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(860f, -1046f, 1443f, -876f), vec4<f32>(1323f, 1000f, 957f, 1000f)))), u_input.b, min(min(1i, -54631i), -2147483647i))), Struct_2(func_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, -593f), vec2<f32>(-1953f, 301f))))))), func_1(vec2<f32>(_wgslsmith_div_f32(270f, _wgslsmith_f_op_f32(-516f - -1000f)), 867f)));
    var var_1 = -countOneBits(vec3<i32>(u_input.b, func_1(var_0.d.c.wy).d, countOneBits(reverseBits(-54482i))));
    let var_2 = true;
    var_0 = Struct_3(32865i, Struct_2(func_1(_wgslsmith_f_op_vec2_f32(abs(var_0.c.a.c.zw)))), Struct_2(Struct_1(var_0.d.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, 2147483647i, u_input.a), vec3<i32>(-1i, -1i, var_1.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -834f, 514f, var_0.c.a.c.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.a.c.x, -372f, var_0.b.a.c.x, 502f)))), -2147483647i ^ u_input.a, -2147483647i)), func_1(vec2<f32>(_wgslsmith_f_op_f32(-641f * _wgslsmith_f_op_f32(1255f - 676f)), var_0.b.a.c.x)));
    let var_3 = var_0.d.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_vec2_f32(var_0.c.a.c.zw * vec2<f32>(_wgslsmith_div_f32(var_0.d.c.x, var_0.d.c.x), _wgslsmith_f_op_f32(var_0.c.a.c.x * var_0.d.c.x)))).a.x, abs(-_wgslsmith_mult_i32(0i, -50492i)), var_0.c.a.a.x, var_0.d.c);
}

