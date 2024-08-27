struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> f32 {
    var var_0 = firstLeadingBit(vec3<u32>(reverseBits(~u_input.d.x) & ~1u, 9039u, firstTrailingBit(_wgslsmith_add_u32(u_input.c, 69280u) ^ _wgslsmith_clamp_u32(0u, 4294967295u, u_input.c))));
    let var_1 = min(_wgslsmith_dot_vec3_i32(arg_0.xwy, firstTrailingBit(arg_0.ywz) & select(u_input.a, u_input.b.wxw, vec3<bool>(true, false, true))), abs(u_input.b.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(abs(arg_1))), arg_1))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(50443u, 0u, u_input.d.x, var_0.x), vec4<u32>(u_input.d.x, 14555u, 33469u, u_input.c) ^ vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.d.x)), vec4<u32>(~29901u, 38777u, u_input.d.x, ~u_input.c)), ~max(vec4<u32>(var_0.x, 1u, var_0.x, u_input.d.x) | vec4<u32>(var_0.x, 70560u, u_input.c, var_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(60680u, var_0.x, var_0.x, var_0.x), vec4<u32>(u_input.d.x, var_0.x, u_input.d.x, u_input.c)))), arg_0.wyy);
    let var_3 = vec4<bool>(true, ~var_2.b.x <= (abs(~var_0.x) & firstTrailingBit(0u)), true, true);
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-694f, 692f, 490f, arg_1), vec4<f32>(-2105f, var_2.a, 447f, 217f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(158f, arg_1, var_2.a, 629f))), true))))), _wgslsmith_f_op_f32(f32(-1f) * -1492f), Struct_1(-850f, vec4<u32>(var_2.b.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_2.b, var_2.b), firstTrailingBit(var_2.b.x)), 0u, 3940u), u_input.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -350f))), arg_1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a - arg_1), 275f))) * _wgslsmith_div_f32(-445f, arg_1));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-297f, _wgslsmith_f_op_f32(func_3(u_input.b, -466f)), _wgslsmith_f_op_f32(806f * 303f), _wgslsmith_f_op_f32(f32(-1f) * -332f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-693f * -729f) + 1728f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2148f * _wgslsmith_f_op_f32(min(-1407f, -262f))))), Struct_1(561f, max(select(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.c), vec4<u32>(0u, 0u, u_input.c, u_input.c), true), ~vec4<u32>(1u, 1u, 52200u, u_input.c)) & (reverseBits(vec4<u32>(1u, u_input.d.x, 0u, 1u)) | ~vec4<u32>(12992u, u_input.d.x, u_input.c, 2508u)), select(_wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(226i, 2147483647i, u_input.a.x), vec3<i32>(u_input.b.x, 2184i, -25571i), u_input.b.wzy)), -(u_input.b.zxz >> (vec3<u32>(u_input.c, 24284u, 40753u) % vec3<u32>(32u))), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-476f, _wgslsmith_f_op_f32(select(-114f, -1982f, false))) * 426f), _wgslsmith_f_op_f32(-294f * -1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1392f, 1059f)))) - 583f))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a, -1905f, _wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(trunc(var_0.b))), var_0.c.a)), var_0.c.a, var_0.c, var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -909f) + 335f));
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1587f), Struct_1(-1345f, ~var_1.c.b, var_1.c.c), _wgslsmith_f_op_f32(max(var_1.b, var_1.d)), var_1.c.a);
    var_1 = Struct_2(vec4<f32>(-104f, _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2028f)) * _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-241f, var_0.e)))), _wgslsmith_f_op_f32(f32(-1f) * -1905f), var_0.c, -1127f, var_1.d);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-312f)), _wgslsmith_f_op_f32(f32(-1f) * -1267f), var_1.a.x, _wgslsmith_div_f32(var_0.b, var_0.d))), vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.a - 220f) * _wgslsmith_f_op_f32(select(687f, 100f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, var_1.b)) + _wgslsmith_f_op_f32(trunc(var_1.d))), _wgslsmith_f_op_f32(-666f * _wgslsmith_f_op_f32(-var_1.a.x))), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(589f - var_1.a.x)))), _wgslsmith_f_op_f32(abs(var_0.b))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-var_1.c.a)), var_1.d), var_1.c.b, _wgslsmith_add_vec3_i32(min(u_input.a, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, var_0.c.c.x), vec3<i32>(1i, 33262i, 11628i))), ~max(u_input.a, u_input.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(924f))))))), var_1.a.x);
    return var_2.c;
}

fn func_1() -> Struct_2 {
    var var_0 = abs(17468u);
    var_0 = _wgslsmith_div_u32(_wgslsmith_mod_u32(34295u, ~((u_input.d.x | u_input.c) | 1u)), 4294967295u);
    var var_1 = func_2();
    var_1 = func_2();
    var var_2 = ~(u_input.c << (max(_wgslsmith_div_u32(func_2().b.x, firstLeadingBit(var_1.b.x)), 4294967295u) % 32u));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a, -1061f, 1764f, var_1.a)))))), var_1.a, func_2(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1395f)))), var_1.a), _wgslsmith_f_op_f32(1048f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.a)), _wgslsmith_div_f32(827f, _wgslsmith_div_f32(var_1.a, var_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(384f, 1281f, 563f, -988f), vec4<f32>(-838f, -2409f, var_0.c.a, var_0.c.a), vec4<bool>(true, false, false, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), vec4<bool>(true, true, true, true))) * var_0.a), _wgslsmith_f_op_f32(-var_0.d), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -175f), ~(~vec4<u32>(29006u, 92509u, 75202u, 9226u)), _wgslsmith_mult_vec3_i32(var_0.c.c, abs(vec3<i32>(14207i, 2609i, 2147483647i))) >> (max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 8109u, var_0.c.b.x), var_0.c.b.zxw), u_input.d) % vec3<u32>(32u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(829f - 934f) * _wgslsmith_f_op_f32(var_0.a.x - -770f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)));
    let var_2 = var_0.c.a;
    var_0 = var_1;
    var var_3 = var_1.c.b.yz;
    var var_4 = vec4<u32>(u_input.d.x, firstLeadingBit(var_3.x | var_1.c.b.x), 0u, abs(var_1.c.b.x));
    let var_5 = ~var_0.c.b.wzw;
    let x = u_input.a;
    s_output = StorageBuffer(select(-_wgslsmith_mod_i32(u_input.a.x, -var_0.c.c.x), (-1i ^ u_input.a.x) >> (~(~53694u) % 32u), true != any(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), var_0.a.wy, u_input.b);
}

