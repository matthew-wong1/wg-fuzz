struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(49202i, -1i, 0i, 8959i), vec4<i32>(2147483647i, -70232i, 5709i, 1i), Struct_1(-176i, 1u), Struct_1(38526i, 23102u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    return global1.a.zz;
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> i32 {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(75205u, 0u, arg_0.x, u_input.a) & vec4<u32>(global1.d.b, 1u, 8637u, 65228u), vec4<u32>(4294967295u, arg_0.x, 0u, 44224u)), _wgslsmith_sub_u32(u_input.a ^ arg_0.x, max(arg_0.x, 34156u)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.c.b, 53108u, 30665u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global1.d.b, global1.c.b, u_input.a), vec4<u32>(50484u, 47400u, u_input.a, 40414u))) % 32u)), _wgslsmith_clamp_u32(global1.d.b, abs(global1.d.b) ^ _wgslsmith_clamp_u32(9252u, arg_0.x, arg_0.x), 0u) & ~(~_wgslsmith_clamp_u32(arg_0.x, arg_0.x, 0u))), 6u)];
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    var var_0 = select(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, true))), vec4<bool>(true, any(vec2<bool>(true, true)), any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), !any(vec2<bool>(true, true))), select(vec4<bool>(true, all(vec2<bool>(false, false)), true, true), vec4<bool>(true, all(vec4<bool>(true, false, true, false)), true, true), all(vec4<bool>(true, true, true, true)))), !select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(-1907f < arg_1, all(vec3<bool>(true, true, false)), arg_1 < -986f, any(vec2<bool>(true, false))), all(vec3<bool>(true, true, true))), all(vec4<bool>(547f < _wgslsmith_f_op_f32(ceil(136f)), all(vec2<bool>(true, true)), ~u_input.b != u_input.b, !(19688u >= u_input.a))));
    return global1.d.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    var var_0 = select(func_2(Struct_1(global1.d.a, ~min(21308u, u_input.a))), firstTrailingBit(vec2<i32>(-1i << (~global1.c.b % 32u), countOneBits(min(arg_0.x, arg_1)))), !(~u_input.a == _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(global1.c.b, global1.d.b), _wgslsmith_sub_u32(global1.d.b, u_input.a))));
    let var_1 = true;
    global0 = array<Struct_2, 6>();
    let var_2 = Struct_1(-2147483647i, 4294967295u);
    let var_3 = var_2.a ^ ~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(global1.c.b, global1.c.b) % vec2<u32>(32u))), vec2<i32>(~arg_0.x, func_3(vec3<u32>(1u, global1.d.b, u_input.a), 178f)));
    return firstTrailingBit(_wgslsmith_mod_u32(0u, min(u_input.a, ~var_2.b))) << ((~firstLeadingBit(~var_2.b) >> (1u % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c.a;
    global0 = array<Struct_2, 6>();
    let var_1 = vec4<i32>(select(1i, 7635i, true), 27676i, -(~0i), (select(u_input.b | 10569i, -8006i, true) >> (~reverseBits(0u) % 32u)) | _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.c.a, 1i, global1.c.a), vec3<i32>(-2147483647i, 61488i, global1.b.x)) & global1.a.ywy, -global1.a.wzz | vec3<i32>(-41351i, global1.a.x, u_input.b)));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_sub_u32(~func_1(~var_1.wzy, i32(-1i) * -2147483647i), 32636u >> (_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 146u), global1.c.b) % 32u)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, 1u), 1u ^ (global1.c.b << (u_input.a % 32u))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(~50600u, reverseBits(27720u)), u_input.a))), 6u)];
    var var_3 = var_1.xwy;
    let var_4 = select(vec4<bool>(true, true, true, false), vec4<bool>(all(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, false, false, true))), !any(vec2<bool>(false, true)), false, true), reverseBits(select(~var_2.c.b, 1u, u_input.a == u_input.a)) <= global1.c.b);
    let var_5 = _wgslsmith_sub_u32(~u_input.a, var_2.d.b);
    let var_6 = select(var_4.yy, var_4.zx, var_4.yz);
    let var_7 = Struct_2(var_1, _wgslsmith_sub_vec4_i32(-(~(var_1 << (vec4<u32>(var_5, 1u, 4294967295u, var_5) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_mod_i32(global1.b.x, i32(-1i) * -21646i), 1i, i32(-1i) * -45930i, var_1.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 14259u, 28566u), vec3<u32>(u_input.a, 9702u, 4294967295u)) % 32u))), global1.d, Struct_1(8921i, global1.c.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1000f, _wgslsmith_f_op_f32(floor(1496f)), -719f));
}

