struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_2 = Struct_2(4294967295u, Struct_1(vec2<i32>(0i, -24872i)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> i32 {
    global0 = arg_1;
    let var_0 = Struct_4(Struct_1(~vec2<i32>(-11396i, -1i)), vec2<i32>(66573i, -90721i), 1i);
    var var_1 = vec2<u32>(~1u, ~66246u);
    var var_2 = global1.a;
    var var_3 = !(!vec4<bool>(any(vec3<bool>(arg_1, arg_1, false)) & true, all(vec2<bool>(arg_1, true)), true, any(vec3<bool>(false, true, true))));
    return ~(28123i | _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_0.x, -1i, u_input.b), i32(-1i) * -21347i));
}

fn func_3() -> vec3<i32> {
    let var_0 = !vec3<bool>(true, _wgslsmith_f_op_f32(floor(1f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1390f, -131f))), -976f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1193f, 1329f, false)))));
    let var_1 = firstLeadingBit(vec3<i32>(-26512i, ~_wgslsmith_sub_i32(~u_input.d.x, _wgslsmith_add_i32(u_input.d.x, 27675i)), -(_wgslsmith_sub_i32(-2147483647i, 0i) << (global1.a % 32u))));
    var var_2 = var_0.x;
    var var_3 = global1.a;
    var var_4 = Struct_1(countOneBits(select(global1.b.a, vec2<i32>(var_1.x | -27393i, reverseBits(-1i)), var_0.yz)));
    return vec3<i32>(-1i) * -var_1;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, global1.b.a.x, u_input.b, max(-1i, -(global1.b.a.x | 12822i))), -(vec4<i32>(-38251i, -25935i, min(global1.b.a.x, 1i), abs(1i)) << (vec4<u32>(13785u | u_input.c.x, abs(4294967295u), _wgslsmith_add_u32(u_input.c.x, global1.a), abs(8549u)) % vec4<u32>(32u))));
    var_0 = ~_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(global1.b.a.x, 37111i, u_input.d.x, 10207i)), vec4<i32>(reverseBits(var_0.x), ~(-7544i), u_input.d.x >> (global1.a % 32u), var_0.x) >> (select(select(vec4<u32>(u_input.c.x, global1.a, 41293u, u_input.c.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.c.x), vec4<bool>(false, true, true, false)), _wgslsmith_clamp_vec4_u32(vec4<u32>(27304u, 4294967295u, u_input.a.x, 0u), vec4<u32>(0u, 0u, 0u, 140774u), vec4<u32>(global1.a, u_input.a.x, 1u, 1u)), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), ~vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, -2147483647i, 2147483647i), vec4<i32>(var_0.x, var_0.x, -2147483647i, 51713i)), u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.x), vec2<i32>(4965i, 13447i))));
    var_0 = min(vec4<i32>(~_wgslsmith_mod_i32(global1.b.a.x, var_0.x), -1i, _wgslsmith_mod_i32(firstLeadingBit(u_input.b), ~(-30314i)), func_2(~vec4<i32>(-2147483647i, global1.b.a.x, var_0.x, -59291i), true)), -_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, var_0.x, 2147483647i, 21418i), vec4<i32>(36347i, u_input.d.x, 0i, var_0.x) & vec4<i32>(global1.b.a.x, u_input.b, u_input.d.x, global1.b.a.x))) & firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, abs(global1.b.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.a.x, 23451i, 1i, global1.b.a.x), vec4<i32>(-12657i, 2147483647i, -1i, -2147483647i)), _wgslsmith_div_i32(global1.b.a.x, 0i)), -(~vec4<i32>(1i, 2552i, -1i, -46236i))));
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~1i, i32(-1i) * -43937i, -10131i), max(vec3<i32>(-_wgslsmith_mult_i32(global1.b.a.x, 0i), _wgslsmith_add_i32(1i, firstLeadingBit(-2147483647i)), var_0.x), var_0.xxz), _wgslsmith_sub_vec3_i32(firstLeadingBit(func_3()), ~abs(var_0.xzx)));
    var var_2 = Struct_2(_wgslsmith_mult_u32(max(~(~global1.a), global1.a), _wgslsmith_clamp_u32(global1.a, 52354u, global1.a)), global1.b);
    return 500f;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<bool>) -> u32 {
    global1 = Struct_2(_wgslsmith_div_u32(abs(~u_input.c.x) << (u_input.c.x % 32u), _wgslsmith_add_u32(~0u, u_input.c.x)), Struct_1(vec2<i32>(global1.b.a.x, _wgslsmith_mult_i32(1i ^ global1.b.a.x, 1i))));
    return u_input.c.x;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_sub_u32(u_input.a.x >> (1u % 32u), ~(arg_1 << (14069u % 32u))), global1.b), Struct_2(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(arg_2, u_input.c.x)), _wgslsmith_mult_vec2_u32(u_input.a, u_input.c.zy)), (arg_2 << (27511u % 32u)) | _wgslsmith_dot_vec2_u32(u_input.c.yx, u_input.a)), Struct_1(_wgslsmith_sub_vec2_i32(abs(u_input.d), u_input.d))));
    var var_1 = global1.b.a;
    let var_2 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(37750u, 41265u)), ~u_input.a) >> (var_0.a.a % 32u), global1.a), ~(~0u), 22321u);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(true, func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -673f), -389f, 171f) * vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(floor(345f)), 1f)), vec2<bool>(true, true)), 34946u);
    global0 = !all(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))) != true;
    global0 = true;
    let var_0 = !(!(!vec2<bool>(all(vec3<bool>(true, false, true)), true)));
    let var_1 = ~(~45507u) | _wgslsmith_clamp_u32(global1.a, select(min(func_4(vec3<f32>(2039f, 982f, 232f), vec2<bool>(false, var_0.x)), abs(u_input.c.x)), func_5(!var_0.x, u_input.c.x, ~1u).a, var_0.x), 1u);
    global1 = func_5(var_0.x, max(4294967295u, u_input.a.x), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(select(~vec4<i32>(u_input.b, -1i, u_input.d.x, -16418i), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, 18824i, u_input.b), vec4<i32>(global1.b.a.x, u_input.b, -2147483647i, global1.b.a.x))), vec4<bool>(any(vec2<bool>(var_0.x, var_0.x)), var_0.x, all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !var_0.x)), _wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, global1.b.a.x, u_input.b, -35336i), vec4<i32>(global1.b.a.x, -1i, 0i, u_input.b)) >> (~countOneBits(vec4<u32>(u_input.a.x, 73561u, u_input.c.x, var_1)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -551f), select(vec4<u32>(~max(48423u, 1u), 18547u, ~reverseBits(global1.a), _wgslsmith_mult_u32(global1.a, global1.a)), _wgslsmith_mod_vec4_u32(~vec4<u32>(global1.a, global1.a, 0u, 44689u), ~vec4<u32>(54880u, u_input.c.x, 56784u, var_1)) >> (vec4<u32>(func_5(var_0.x, global1.a, 123740u).a, 21281u << (global1.a % 32u), reverseBits(var_1), ~0u) % vec4<u32>(32u)), any(!select(var_0, vec2<bool>(false, true), vec2<bool>(true, var_0.x)))), u_input.d.x, ~select(abs(vec3<i32>(43329i, 0i, u_input.b)), ~(~vec3<i32>(30016i, global1.b.a.x, u_input.d.x)), !var_0.x));
}

