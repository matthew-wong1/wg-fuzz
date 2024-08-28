struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<bool>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_3,
    c: Struct_4,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<bool>, 3>;

var<private> global2: array<Struct_2, 13>;

var<private> global3: f32 = -1250f;

var<private> global4: array<vec2<u32>, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> vec2<bool> {
    return vec2<bool>(true | arg_1.b.d, true);
}

fn func_3(arg_0: vec4<u32>) -> vec4<u32> {
    global2 = array<Struct_2, 13>();
    var var_0 = abs(vec4<i32>(reverseBits(0i), min(1i, -26542i), 17307i, 41917i));
    let var_1 = 1f;
    global2 = array<Struct_2, 13>();
    var var_2 = Struct_3(Struct_1(abs(var_0.zzw), 41722u, vec4<bool>(true, any(func_2(vec3<f32>(var_1, var_1, var_1), Struct_2(vec3<u32>(arg_0.x, u_input.a, 19971u), Struct_1(var_0.xxx, u_input.a, vec4<bool>(false, true, false, false), false, vec2<f32>(1085f, -965f))))), true, false), !all(vec4<bool>(true, false, false, true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + 235f)), 144f)));
    return ~(~_wgslsmith_mod_vec4_u32(~arg_0, abs(vec4<u32>(u_input.a, 1u, 4294967295u, var_2.a.b)))) ^ _wgslsmith_mult_vec4_u32(~arg_0, (_wgslsmith_clamp_vec4_u32(vec4<u32>(94623u, var_2.a.b, var_2.a.b, var_2.a.b), vec4<u32>(0u, var_2.a.b, var_2.a.b, 21298u), vec4<u32>(1u, var_2.a.b, 23589u, 1u)) >> (vec4<u32>(u_input.a, arg_0.x, 34815u, u_input.a) % vec4<u32>(32u))) >> (firstLeadingBit(vec4<u32>(1u, 17502u, var_2.a.b, var_2.a.b) >> (arg_0 % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_1() -> f32 {
    global2 = array<Struct_2, 13>();
    let var_0 = all(select(!func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-735f, -1195f, 535f))), Struct_2(vec3<u32>(1u, u_input.a, 46563u), Struct_1(vec3<i32>(2147483647i, 26330i, 2467i), 0u, global1[_wgslsmith_index_u32(u_input.a, 3u)], false, vec2<f32>(1421f, -388f)))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
    let var_1 = false;
    let var_2 = vec2<u32>(1u, 1u);
    let var_3 = _wgslsmith_div_vec4_i32(~(vec4<i32>(2147483647i, 12835i, 1i, 0i) << (vec4<u32>(var_2.x, 0u, var_2.x, 25899u) % vec4<u32>(32u))) >> (select(func_3(vec4<u32>(u_input.a, var_2.x, 32617u, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 0u, u_input.a), vec4<u32>(1u, var_2.x, 0u, 9483u)), global1[_wgslsmith_index_u32(u_input.a, 3u)]) % vec4<u32>(32u)), max(select(-vec4<i32>(1i, 1i, -1i, -2147483647i), vec4<i32>(1i, -7821i, -1i, -9906i), vec4<bool>(var_1, var_1, var_1, true)), select(vec4<i32>(0i, -1i, 20914i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i), global1[_wgslsmith_index_u32(4294967295u, 3u)]))) << (~_wgslsmith_div_vec4_u32(abs(~vec4<u32>(var_2.x, u_input.a, u_input.a, u_input.a)), vec4<u32>(u_input.a, var_2.x, u_input.a ^ 17569u, _wgslsmith_dot_vec2_u32(var_2, var_2))) % vec4<u32>(32u));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -745f), _wgslsmith_f_op_f32(min(-248f, 1f))) + _wgslsmith_f_op_f32(-260f * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-309f, -1150f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<u32>, 2>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1908f - 1000f) + _wgslsmith_f_op_f32(select(349f, -494f, true))), _wgslsmith_f_op_f32(f32(-1f) * -562f)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(ceil(-517f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1750f * -292f))))));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1()))) * _wgslsmith_f_op_f32(step(191f, -992f)));
    global2 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(10658i, firstLeadingBit(_wgslsmith_add_i32(1i, -1i)), -2147483647i, -max(-2147483647i, 0i)) >> (vec4<u32>(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_sub_u32(u_input.a, 69434u), ~28488u), 4294967295u, select(u_input.a, 42889u, false) ^ ~u_input.a, 4294967295u) % vec4<u32>(32u)), firstTrailingBit(vec3<i32>(-(0i << (0u % 32u)), i32(-1i) * -1i, 0i)));
}

