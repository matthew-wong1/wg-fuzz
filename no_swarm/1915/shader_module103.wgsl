struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    let var_0 = Struct_1(!select(select(vec2<bool>(true, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), arg_0)), vec2<bool>(false, true), false));
    var var_1 = vec2<f32>(-1069f, -1000f);
    var var_2 = u_input.c;
    var var_3 = _wgslsmith_f_op_f32(-519f + _wgslsmith_f_op_f32(select(1266f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1843f, var_1.x)) - -764f) * var_1.x), u_input.c <= u_input.c)));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
    return !select(select(vec2<bool>(all(vec4<bool>(false, false, true, var_0.a.x)), true), var_0.a, vec2<bool>(var_0.a.x, arg_0)), var_0.a, true);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(!(!arg_1.zz)), Struct_1(select(!arg_1.xx, arg_1.yx, arg_1.x)));
    let var_1 = Struct_2(var_0.b, Struct_1(arg_0.xy));
    var var_2 = select(arg_1.yy, !func_3(any(vec4<bool>(false, true, false, var_1.a.a.x)) || arg_1.x), true);
    let var_3 = Struct_5(Struct_2(Struct_1(!var_1.b.a), Struct_1(vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(2064f)), -217f)))), ~(~max(~vec2<u32>(u_input.d, u_input.b), abs(vec2<u32>(4294967295u, 0u)))), var_1);
    var var_4 = Struct_4(Struct_2(var_3.d.a, var_0.a));
    return var_1.a;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_5) -> u32 {
    let var_0 = abs(countOneBits(~(~vec4<u32>(u_input.d, u_input.b, 1u, 14480u))));
    let var_1 = arg_2;
    var var_2 = u_input.a;
    var var_3 = ~u_input.d;
    let var_4 = _wgslsmith_div_vec3_u32(vec3<u32>(25524u, min(9717u, _wgslsmith_clamp_u32(abs(var_0.x), abs(var_1.c.x), ~1u)), arg_2.c.x), ~min(_wgslsmith_sub_vec3_u32(var_0.xwy, vec3<u32>(u_input.d, 1u, 0u)) ^ var_0.zyz, var_0.xyy));
    return countOneBits(~(_wgslsmith_sub_u32(var_1.c.x, var_0.x) & countOneBits(1u)) ^ var_4.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    let var_0 = func_4(-444f, func_2(vec3<bool>(true, arg_0.a.x, any(vec4<bool>(arg_0.a.x, false, true, true))), vec3<bool>(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) > _wgslsmith_f_op_f32(-arg_1.x), -2147483647i <= (u_input.a.x << (64334u % 32u)), (u_input.c ^ u_input.c) > abs(u_input.a.x))), Struct_5(Struct_2(func_2(vec3<bool>(arg_0.a.x, false, true), vec3<bool>(true, arg_0.a.x, true)), func_2(vec3<bool>(false, arg_0.a.x, arg_0.a.x), !vec3<bool>(true, arg_0.a.x, true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1, arg_1))), vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, -643f)), _wgslsmith_f_op_f32(round(-709f)))), vec2<u32>(~(~1u), u_input.d), Struct_2(arg_0, func_2(select(vec3<bool>(arg_0.a.x, true, arg_0.a.x), vec3<bool>(arg_0.a.x, arg_0.a.x, false), arg_0.a.x), !vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)))));
    var var_1 = Struct_4(Struct_2(func_2(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), vec3<bool>(false, true, true)), func_2(select(vec3<bool>(false, false, arg_0.a.x), vec3<bool>(arg_0.a.x, false, arg_0.a.x), vec3<bool>(true, arg_0.a.x, true)), select(select(vec3<bool>(arg_0.a.x, true, arg_0.a.x), vec3<bool>(arg_0.a.x, false, true), arg_0.a.x), !vec3<bool>(arg_0.a.x, arg_0.a.x, true), vec3<bool>(false, arg_0.a.x, true)))));
    var var_2 = var_1.a;
    let var_3 = _wgslsmith_sub_vec4_i32(-min(vec4<i32>(u_input.a.x, 43058i, 30730i, u_input.c), ~vec4<i32>(1i, u_input.c, 1i, -2147483647i)) << (vec4<u32>(_wgslsmith_clamp_u32(var_0 | u_input.d, firstLeadingBit(u_input.b), firstTrailingBit(u_input.d)), _wgslsmith_div_u32(min(var_0, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(59985u, u_input.d), vec2<u32>(u_input.b, u_input.d))), u_input.b, ~firstLeadingBit(0u)) % vec4<u32>(32u)), vec4<i32>(56218i, 1i, u_input.a.x, (u_input.c ^ 1i) & u_input.a.x));
    var_2 = var_1.a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(select(!any(vec2<bool>(false, false)), true, any(vec3<bool>(true, true, true))), true, !select(any(vec3<bool>(true, true, false)), u_input.a.x <= u_input.c, func_1(Struct_1(vec2<bool>(false, false)), vec2<f32>(-175f, 934f))), all(vec2<bool>(true, true)));
    let var_1 = true;
    let var_2 = vec2<i32>(u_input.c, u_input.c);
    let var_3 = true;
    var var_4 = firstTrailingBit(countOneBits(vec4<u32>(0u, u_input.d, 15192u, u_input.d | u_input.d))) & (_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 51839u, 1u), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.d) ^ vec4<u32>(0u, 6385u, 10233u, 4294967295u)), reverseBits(~vec4<u32>(0u, 1u, u_input.d, 4294967295u))) | (~(vec4<u32>(1u, u_input.d, 1u, 28701u) ^ vec4<u32>(u_input.b, u_input.d, 15517u, u_input.b)) << ((~vec4<u32>(u_input.d, u_input.d, u_input.b, 138416u) & vec4<u32>(69712u, 42824u, 15708u, u_input.b)) % vec4<u32>(32u))));
    var var_5 = Struct_2(func_2(!vec3<bool>(false, var_1, !var_0.x), !vec3<bool>(var_4.x >= 1u, var_1, !var_0.x)), func_2(select(vec3<bool>(any(var_0.xy), true, false | var_3), vec3<bool>(false, any(var_0), true), true), var_0.wwx));
    var_5 = Struct_2(Struct_1(vec2<bool>(!all(vec4<bool>(false, false, false, true)), var_5.a.a.x)), func_2(select(var_0.zyw, !var_0.xwy, true), select(vec3<bool>(var_2.x < u_input.c, var_3 || false, -19548i > u_input.c), var_0.wyx, var_0.yyy)));
    var_4 = firstTrailingBit(countOneBits(_wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(0u, 0u, var_4.x, 1u)), vec4<u32>(u_input.b, max(4294967295u, var_4.x), 60141u, ~var_4.x))));
    let var_6 = _wgslsmith_f_op_f32(trunc(-400f));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_div_f32(153f, var_6));
}

