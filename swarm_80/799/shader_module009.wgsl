struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<i32>(-2665i, -15093i, -32252i), vec2<u32>(58510u, 4294967295u), 80134u, vec3<i32>(i32(-2147483648), 19986i, 15327i)), Struct_1(vec3<i32>(-65064i, 4633i, 2147483647i), vec2<u32>(59747u, 1u), 63301u, vec3<i32>(1i, 18648i, 27538i)), Struct_1(vec3<i32>(1i, 0i, 1566i), vec2<u32>(1u, 23985u), 1u, vec3<i32>(-1i, -34633i, 0i)));

var<private> global2: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(34912u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 5560u, 4294967295u), vec4<u32>(1u, 1u, 54124u, 7264u), vec4<u32>(38167u, 0u, 49632u, 1u), vec4<u32>(104341u, 24271u, 30200u, 0u), vec4<u32>(1u, 4294967295u, 4577u, 0u), vec4<u32>(54424u, 1u, 52548u, 1u), vec4<u32>(49125u, 24110u, 38107u, 0u), vec4<u32>(43765u, 17125u, 31285u, 45572u), vec4<u32>(0u, 22363u, 6183u, 77694u), vec4<u32>(31765u, 0u, 0u, 4294967295u), vec4<u32>(9124u, 71368u, 103281u, 305u), vec4<u32>(7633u, 6525u, 55367u, 0u), vec4<u32>(1u, 23033u, 4294967295u, 106618u), vec4<u32>(8560u, 32386u, 76379u, 0u), vec4<u32>(1u, 102090u, 0u, 11488u), vec4<u32>(4294967295u, 17722u, 69403u, 94496u));

var<private> global3: array<Struct_1, 2>;

var<private> global4: f32 = -1132f;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: f32) -> vec3<i32> {
    global1 = array<Struct_1, 3>();
    let var_0 = vec4<bool>(any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(true, false), true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), true))), select(_wgslsmith_f_op_f32(max(2328f, _wgslsmith_f_op_f32(-arg_0))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(ceil(682f))), !(true || any(vec2<bool>(false, false))), select(_wgslsmith_sub_u32(u_input.d.x, 0u), 25106u, u_input.d.x != 0u) == u_input.c), select(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(floor(arg_1)) <= _wgslsmith_f_op_f32(-arg_1), true), all(select(vec3<bool>(any(vec3<bool>(false, false, false)), all(vec3<bool>(false, false, true)), false), vec3<bool>(true, true, true), true)));
    let var_1 = Struct_2(select(vec3<i32>(1i, 1i, 1i), ~(vec3<i32>(2312i, 15904i, 0i) >> (~u_input.b % vec3<u32>(32u))), true), reverseBits(select(vec2<u32>(u_input.c, 1u) >> (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(20964u, 30410u), vec2<u32>(39865u, u_input.d.x)), _wgslsmith_mult_vec2_u32(u_input.b.xx, u_input.b.yy)), select(!var_0.yx, vec2<bool>(var_0.x, var_0.x), true))), -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-10180i, -2610i), ~vec2<i32>(-2147483647i, 26074i)), 1i), abs(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, u_input.c, 53065u), ~u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(554f)))));
    global1 = array<Struct_1, 3>();
    var var_2 = global3[_wgslsmith_index_u32(~0u, 2u)];
    return var_1.a;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> f32 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(662f - _wgslsmith_f_op_f32(arg_0 * 615f)) * _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(arg_1.x - arg_1.x))) + _wgslsmith_f_op_f32(-global0.x)), arg_0, _wgslsmith_div_f32(-2507f, -680f), global0.x);
    let var_0 = ~_wgslsmith_add_vec3_i32((~vec3<i32>(-20532i, -69235i, -12609i) | func_3(arg_0, arg_0)) & (-vec3<i32>(1i, -2147483647i, -2147483647i) ^ select(vec3<i32>(2147483647i, 2147483647i, -2147483647i), vec3<i32>(-9961i, -10964i, -42802i), vec3<bool>(true, false, false))), abs(vec3<i32>(min(-36507i, -50024i), 0i, select(41483i, -1i, true))));
    let var_1 = ~global2[_wgslsmith_index_u32(u_input.e, 17u)];
    var var_2 = !(true || !all(vec2<bool>(true, true)));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-784f + arg_0), -305f, _wgslsmith_f_op_f32(arg_1.x - arg_0), 1351f))))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(round(global0.x))) + _wgslsmith_f_op_f32(-global0.x)), -455f)));
    return arg_0;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 650f)))))), -1007f));
    global0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2259f, _wgslsmith_f_op_f32(step(1f, 2925f)), _wgslsmith_f_op_f32(-771f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1775f))), _wgslsmith_f_op_f32(f32(-1f) * -1815f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(global0.x, global0.xy)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-821f))), 982f, -1000f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2583f, var_0, -527f, var_0) + vec4<f32>(-467f, -536f, -1793f, -1018f))) + vec4<f32>(1f, 1008f, _wgslsmith_f_op_f32(max(global0.x, 475f)), 662f)))));
    var var_1 = Struct_5(_wgslsmith_dot_vec2_u32(max(~(u_input.d.xy & u_input.d.xx), vec2<u32>(0u, 8008u | u_input.c)), ~_wgslsmith_add_vec2_u32(u_input.d.zz, vec2<u32>(18833u, 0u) << (u_input.b.yz % vec2<u32>(32u)))), -18484i);
    let var_2 = true;
    var var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.d.zxw, firstLeadingBit(u_input.b)), _wgslsmith_mult_vec3_u32(~u_input.b | vec3<u32>(u_input.e, 28542u, 1u), ~select(u_input.d.yzw, vec3<u32>(34921u, u_input.d.x, 1u), true)) & u_input.d.xzw);
    return Struct_1(_wgslsmith_mod_vec3_i32(~vec3<i32>(var_1.b, var_1.b, 2382i) >> (firstTrailingBit(u_input.d.wzz) % vec3<u32>(32u)), vec3<i32>(-var_1.b, _wgslsmith_mult_i32(-2147483647i, var_1.b), -9498i)) & (-_wgslsmith_mult_vec3_i32(vec3<i32>(54796i, -20295i, 41538i), vec3<i32>(43002i, -42402i, var_1.b)) << (vec3<u32>(33469u ^ var_1.a, 37756u, 125700u) % vec3<u32>(32u))), ~max(u_input.b.zz, u_input.b.yz), ~max(u_input.a, select(u_input.d.x, u_input.b.x, false)) ^ _wgslsmith_add_u32(abs(var_1.a) | reverseBits(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_1.a), ~vec2<u32>(u_input.c, 14578u))), countOneBits(vec3<i32>(var_1.b, _wgslsmith_mult_i32(var_1.b, firstLeadingBit(var_1.b)), var_1.b ^ var_1.b)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = Struct_3(Struct_2(-reverseBits(_wgslsmith_mult_vec3_i32(arg_1.d, vec3<i32>(2147483647i, arg_1.d.x, arg_0.x))), ~vec2<u32>(~arg_1.b.x, _wgslsmith_div_u32(13553u, u_input.d.x)), arg_0.x, u_input.b.x, global0.x), _wgslsmith_clamp_vec2_u32(~(arg_1.b | firstTrailingBit(vec2<u32>(arg_1.b.x, arg_1.c))), vec2<u32>(9563u, reverseBits(select(50646u, 51117u, arg_2))), ~vec2<u32>(_wgslsmith_div_u32(31040u, arg_1.c), _wgslsmith_mod_u32(1u, arg_1.b.x))), Struct_2(_wgslsmith_mult_vec3_i32(firstTrailingBit(select(arg_1.d, vec3<i32>(arg_1.d.x, 11795i, arg_0.x), vec3<bool>(arg_2, arg_2, arg_2))), arg_1.d << (u_input.b % vec3<u32>(32u))), ~(~arg_1.b & abs(arg_1.b)), ~arg_0.x, 42960u, _wgslsmith_f_op_f32(-global0.x)), Struct_1(-func_3(global0.x, _wgslsmith_f_op_f32(-global0.x)), ~(~vec2<u32>(1u, arg_1.c)) << (u_input.b.zz % vec2<u32>(32u)), u_input.a, arg_1.a));
    var var_1 = var_0.a;
    global2 = array<vec4<u32>, 17>();
    global4 = _wgslsmith_div_f32(var_0.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.e)));
    let var_2 = Struct_4(Struct_3(var_0.c, vec2<u32>((var_0.a.b.x >> (0u % 32u)) | 24561u, var_1.d), Struct_2(vec3<i32>(1i, _wgslsmith_mod_i32(arg_0.x, var_0.a.c), _wgslsmith_mod_i32(var_1.a.x, -2147483647i)), ~u_input.d.zw, i32(-1i) * -8519i, _wgslsmith_add_u32(0u, arg_1.b.x) >> (arg_1.b.x % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x))), Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, var_1.a.x, var_1.c), vec3<i32>(arg_0.x, -8590i, arg_0.x)) & (var_1.a ^ vec3<i32>(2147483647i, -5761i, arg_1.d.x)), arg_1.b, reverseBits(0u) ^ (u_input.c & arg_1.b.x), vec3<i32>(1i, _wgslsmith_mod_i32(arg_0.x, var_1.a.x), -var_1.c))), vec2<i32>(_wgslsmith_add_i32(9598i, arg_0.x), -19044i), ~(~1u), Struct_3(var_0.a, _wgslsmith_sub_vec2_u32(u_input.d.xx, ~vec2<u32>(u_input.e, 6555u)), var_0.c, func_1()));
    return _wgslsmith_clamp_u32(abs(u_input.e), var_2.c, func_1().c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(~abs(vec3<i32>(1i, 1i, 0i)), ~(~vec2<u32>(10207u, 1u)), 22079i, _wgslsmith_clamp_u32(max(10833u, u_input.e), 1u, _wgslsmith_mod_u32(0u, u_input.a)) << (func_4(~vec2<i32>(1i, -2147483647i), func_1(), false) % 32u), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-725f + global0.x) + _wgslsmith_f_op_f32(-global0.x)))), ~(~select(vec2<u32>(u_input.d.x, u_input.a), ~vec2<u32>(u_input.a, 8832u), any(vec4<bool>(true, true, true, false)))), Struct_2(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -1i, 2147483647i), vec3<i32>(-20812i, -27839i, -1i), vec3<i32>(-2147483647i, -18909i, 56191i)) ^ vec3<i32>(_wgslsmith_add_i32(0i, 2147483647i), 17894i >> (u_input.c % 32u), 6215i), vec2<u32>(min(21022u, 7203u), u_input.b.x) | _wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.d.x, 27512u)), vec2<u32>(u_input.e, u_input.b.x)), ~firstLeadingBit(1i), u_input.b.x << (~firstTrailingBit(u_input.d.x) % 32u), global0.x), global3[_wgslsmith_index_u32(48407u, 2u)]);
    global4 = _wgslsmith_f_op_f32(max(-788f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.e - _wgslsmith_f_op_f32(min(412f, _wgslsmith_f_op_f32(270f - -177f)))), global0.x)));
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(var_0.c.d, 0u), reverseBits(~(var_0.b >> (vec2<u32>(u_input.b.x, 4921u) % vec2<u32>(32u))) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e, var_0.c.b.x) & var_0.c.b, var_0.a.b) % vec2<u32>(32u))));
    var var_2 = max(_wgslsmith_dot_vec3_u32(u_input.b, u_input.d.xyx), ~(firstTrailingBit(var_1.x) >> (_wgslsmith_mult_u32(var_0.b.x, var_1.x) % 32u)) >> (abs(_wgslsmith_mult_u32(0u, firstLeadingBit(u_input.d.x))) % 32u));
    var var_3 = !select(!vec3<bool>(true, true, var_0.a.e == -1000f), vec3<bool>(!any(vec4<bool>(false, false, true, false)), true, true), vec3<bool>(true, true, _wgslsmith_f_op_f32(var_0.c.e - -1148f) != _wgslsmith_f_op_f32(sign(-604f))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c.c, 39024i, 0i, 1i), vec4<i32>(var_0.c.a.x, -2147483647i, var_0.a.c, 2147483647i)), vec4<i32>(10502i, var_0.d.a.x, -1i, 834i)), vec4<i32>(0i, -var_0.c.c, func_1().a.x, var_0.d.a.x)), 2147483647i), max(abs(-_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -5920i, var_0.d.d.x, var_0.d.d.x), vec4<i32>(467i, -1i, 2147483647i, var_0.d.d.x))), vec4<i32>(~(var_0.a.c | var_0.d.d.x), abs(-9265i), var_0.a.c, ~var_0.d.a.x)), _wgslsmith_sub_vec2_i32(-(var_0.c.a.yx >> (u_input.d.yy % vec2<u32>(32u))), ~(~vec2<i32>(var_0.a.a.x, 5614i))), _wgslsmith_mod_u32(~(~var_0.b.x), 32438u));
}

