struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: f32, arg_3: vec4<u32>) -> vec3<bool> {
    let var_0 = !select(vec2<bool>(true, true), select(vec2<bool>(true, arg_3.x <= arg_3.x), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), true), select(false, true, any(vec3<bool>(false, false, true))) | false);
    var var_1 = Struct_1(!vec4<bool>(select(false, false, true), var_0.x, false, all(vec3<bool>(true, true, true))));
    var_1 = Struct_1(vec4<bool>(false, all(vec2<bool>(true, true)), var_0.x, var_0.x));
    let var_2 = countOneBits(firstLeadingBit(0u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(36501u, u_input.a.x, 44642u), ~u_input.a) % 32u)) > _wgslsmith_mod_u32(u_input.a.x, ~1u & ~(0u << (arg_3.x % 32u)));
    var_1 = Struct_1(select(vec4<bool>(true, var_2, true || select(true, true, false), false), var_1.a, true || (arg_1.x >= ~arg_1.x)));
    return var_1.a.yxz;
}

fn func_2() -> i32 {
    var var_0 = Struct_3(u_input.a.xx, true, Struct_2(all(func_3(1i, ~vec3<i32>(0i, 0i, -56484i), _wgslsmith_f_op_f32(select(-264f, 1553f, true)), vec4<u32>(10097u, 0u, 27159u, 57924u))), vec4<i32>(1i, 1i, 1i, 1i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x) | vec4<u32>(4294967295u, 78655u, u_input.a.x, u_input.a.x), firstTrailingBit(vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x))) % vec4<u32>(32u)), Struct_1(vec4<bool>(true, false, true, u_input.a.x == u_input.a.x)), vec3<u32>(abs(u_input.a.x >> (0u % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 41879u, 1u, u_input.a.x), vec4<u32>(9575u, u_input.a.x, 0u, 4294967295u)), 46816u), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(f32(-1f) * -1333f))), ~u_input.a.x, u_input.a.x);
    var var_1 = var_0.c.e.x;
    var_0 = Struct_3(firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(19971u, u_input.a.x, 67591u, 2292u), vec4<u32>(28790u, var_0.e, 71117u, 12583u)), abs(4294967295u)) ^ _wgslsmith_div_vec2_u32(max(vec2<u32>(u_input.a.x, 10149u), vec2<u32>(var_0.a.x, 1u)), ~vec2<u32>(4294967295u, var_0.c.d.x))), all(!select(vec2<bool>(true, true), select(var_0.c.c.a.yw, var_0.c.c.a.ww, var_0.c.c.a.yw), true)), var_0.c, u_input.a.x | ~31351u, u_input.a.x >> ((var_0.d >> (((u_input.a.x ^ u_input.a.x) & var_0.e) % 32u)) % 32u));
    let var_2 = Struct_5(var_0.c, var_0.c.b.yy, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -643f), _wgslsmith_f_op_f32(f32(-1f) * -1971f))), var_0.c.e.x, _wgslsmith_f_op_f32(select(var_0.c.e.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0.c.e.x)))), true))), !select(var_0.c.c.a.zyw, !(!vec3<bool>(var_0.b, var_0.b, true)), !(!var_0.b)));
    return (abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.x, var_2.a.b.x, var_0.c.b.x, var_0.c.b.x), vec4<i32>(2147483647i, var_0.c.b.x, var_2.a.b.x, 2147483647i))) << (4294967295u % 32u)) >> (0u % 32u);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> bool {
    let var_0 = Struct_5(Struct_2(true, vec4<i32>(_wgslsmith_clamp_i32(-1i, -1i, -arg_1.b.x), _wgslsmith_mod_i32(-1i, arg_1.b.x), ~func_2(), max(firstLeadingBit(arg_1.b.x), -arg_1.b.x)), arg_1.c, firstTrailingBit(firstLeadingBit(select(u_input.a, arg_1.d, arg_1.c.a.x))), arg_0.zx), vec2<i32>(abs(-33319i), 19788i), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_1.e.x * _wgslsmith_f_op_f32(1366f + 953f)), -707f, arg_1.e.x), arg_0.wwx, any(!select(arg_1.c.a.yxx, vec3<bool>(arg_1.c.a.x, arg_1.c.a.x, true), arg_1.a)))), vec3<bool>(!(any(vec4<bool>(true, true, arg_1.a, arg_1.a)) && all(arg_1.c.a.wwz)), func_3(countOneBits(_wgslsmith_add_i32(arg_1.b.x, arg_1.b.x)), vec3<i32>(-2147483647i, 79221i, reverseBits(-69588i)), 150f, ~select(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(arg_1.d.x, u_input.a.x, 14695u, 0u), vec4<bool>(arg_1.c.a.x, arg_1.a, true, false))).x, false));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x)))), var_0.a.e.x);
    let var_2 = _wgslsmith_mod_u32(arg_1.d.x, u_input.a.x);
    var var_3 = arg_1.b;
    var_3 = vec4<i32>(var_3.x, ~var_0.b.x, reverseBits(-1925i), 1i);
    return var_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_u32(firstLeadingBit(abs(~vec2<u32>(0u, 11357u))), u_input.a.xz);
    let var_1 = Struct_1(!select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), true)));
    var var_2 = select(var_1.a.xyy, select(select(var_1.a.yyy, !vec3<bool>(var_1.a.x, false, false), var_1.a.x), !(!vec3<bool>(var_1.a.x, false, false)), !vec3<bool>(true & var_1.a.x, true, func_1(vec4<f32>(-804f, 987f, 414f, -209f), Struct_2(var_1.a.x, vec4<i32>(-22307i, -30595i, 23461i, 0i), Struct_1(var_1.a), u_input.a, vec2<f32>(-643f, 1000f))))), select(!vec3<bool>(all(vec4<bool>(true, var_1.a.x, true, var_1.a.x)), true, true), !vec3<bool>(func_1(vec4<f32>(270f, -911f, -2751f, 1488f), Struct_2(false, vec4<i32>(31384i, -2147483647i, -1i, -11960i), var_1, vec3<u32>(u_input.a.x, var_0.x, var_0.x), vec2<f32>(-850f, 714f))), 4294967295u < u_input.a.x, var_1.a.x), var_1.a.x));
    var var_3 = ~firstTrailingBit(21023i);
    var var_4 = var_1.a.x;
    var_3 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(-2147483647i, 27401i, 1i, 11798i), min(vec4<i32>(1i, 8526i, 1i, 32896i), vec4<i32>(-2147483647i, -43979i, -7916i, -10726i)), -vec4<i32>(-1i, 2147483647i, -1i, -1i)), countOneBits(vec4<i32>(_wgslsmith_clamp_i32(-1i, -20205i, 0i), i32(-1i) * -20066i, 8860i, 1i))), func_2() & -44510i);
    var_2 = var_1.a.wzx;
    var var_5 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(927f, vec2<u32>(~firstLeadingBit(u_input.a.x), ~1704u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1770f)))))), vec3<i32>(-14734i, select(reverseBits(i32(-1i) * -32177i), -4936i, (4294967295u > var_0.x) || true), max(~firstLeadingBit(-1i), 645i)));
}

