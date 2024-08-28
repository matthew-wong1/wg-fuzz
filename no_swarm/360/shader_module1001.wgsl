struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(true, true));

var<private> global1: Struct_4;

var<private> global2: vec3<u32> = vec3<u32>(1u, 21212u, 2424u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    return 53014i | _wgslsmith_div_i32(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-27478i, global1.a.a.a.x, 22733i, global1.b), global1.a.a.a), _wgslsmith_clamp_i32(-7445i, 9218i, -10635i) ^ (u_input.b.x << (1u % 32u))), global1.b);
}

fn func_2(arg_0: vec4<i32>) -> Struct_4 {
    var var_0 = vec4<i32>(u_input.e, _wgslsmith_sub_i32(~(-u_input.b.x), arg_0.x), ~((~global1.a.a.a.x >> (u_input.a % 32u)) | 29283i), func_3(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, 4294967295u, global2.x), vec3<u32>(0u, global2.x, u_input.a)))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global1.a.b.b))));
    global0 = array<vec2<bool>, 1>();
    var var_2 = Struct_5(select(!vec4<bool>(false, true, true, all(vec2<bool>(global1.a.a.b.x, false))), global1.a.a.b, true), global1.a.a, Struct_1(u_input.b, global1.c), !global1.c);
    var var_3 = global1.a;
    return Struct_4(Struct_3(var_2.c, global1.a.b), var_3.a.a.x, select(!select(var_2.c.b, !global1.a.a.b, select(var_3.a.b, var_2.d, false)), vec4<bool>(all(var_2.b.b.yz), global1.a.a.a.x >= _wgslsmith_add_i32(-2147483647i, 2147483647i), all(vec2<bool>(true, true)), !var_3.a.b.x), true));
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    var var_0 = func_2(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, _wgslsmith_mult_i32(37316i, u_input.c)), _wgslsmith_dot_vec2_i32(-global1.a.a.a.yy, _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 58207i), vec2<i32>(arg_0.a.x, global1.a.a.a.x)))), arg_0.a.x, 0i, -1i));
    global0 = array<vec2<bool>, 1>();
    let var_1 = func_2(~(-global1.a.a.a));
    let var_2 = select(vec3<u32>(firstLeadingBit(u_input.a), _wgslsmith_mult_u32(1u, global2.x) >> (63395u % 32u), global2.x), abs(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, global2.x, 1u), vec3<u32>(u_input.a, u_input.a, 11025u))), !var_0.c.x) & ((~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 25599u, 13179u), vec3<u32>(1298u, 24084u, global2.x)) & ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, global2.x, 70421u), vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(4294967295u, 1u, global2.x))) | (_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(0u, 20698u, global2.x)), ~vec3<u32>(38493u, global2.x, u_input.a)) >> (vec3<u32>(~u_input.a, global2.x, _wgslsmith_mult_u32(56464u, 15252u)) % vec3<u32>(32u))));
    let var_3 = arg_0.b.zzz;
    return Struct_4(global1.a, _wgslsmith_clamp_i32(select(min(global1.a.a.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.b.x), vec2<i32>(u_input.e, -1i))), -u_input.e, 18673u != select(u_input.a, 0u, var_0.c.x)), _wgslsmith_mod_i32(-1i, firstLeadingBit(1i)), u_input.c), var_1.a.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(~min(vec4<i32>(-19663i, global1.b, 0i, 49583i), vec4<i32>(global1.a.a.a.x, global1.b, -14273i, u_input.d.x)), select(global1.a.a.b, select(global1.c, global1.a.a.b, !global1.a.a.b.x), vec4<bool>(true, true, true, true))));
    let var_1 = abs(firstTrailingBit(~vec4<u32>(0u, 1u, ~global2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 62366u, u_input.a, 60113u), vec4<u32>(global2.x, 6205u, global2.x, 11002u)))));
    let var_2 = ~var_0.a.a.a.wyw;
    global1 = Struct_4(global1.a, -2147483647i, global1.a.a.b);
    global1 = Struct_4(var_0.a, global1.b, global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_div_i32(var_0.b, -23412i | max(-2147483647i, var_0.b)), abs(var_2.x), _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(var_0.a.a.a.yyz, global1.a.a.a.xzx, vec3<i32>(-1i, var_2.x, -16015i)), countOneBits(vec3<i32>(global1.b, 23000i, global1.b))), func_2(vec4<i32>(1i, 2147483647i, -30962i, global1.a.a.a.x)).b & abs(~global1.b)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-907f, 780f, 563f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b.a.x) * _wgslsmith_f_op_f32(abs(var_0.a.b.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.b.a.x, 435f, 236f, var_0.a.b.b) - vec4<f32>(global1.a.b.b, 460f, global1.a.b.a.x, 380f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-294f, -945f, -1358f, 791f)))))));
}

