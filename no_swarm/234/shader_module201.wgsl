struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mod_vec3_u32(select(~vec3<u32>(17464u, 1u, 4294967295u), vec3<u32>(1u, 1u, 1u), false), max(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4581u, 32482u, 1u), vec3<u32>(2219u, 1u, 3803u)), ~vec3<u32>(0u, 7767u, 1u), vec3<u32>(93176u, 48498u, 53897u)), ~vec3<u32>(4294967295u, 92653u, 30754u))) << (~abs(~(~vec3<u32>(14960u, 1u, 29620u))) % vec3<u32>(32u));
    var var_1 = !(!any(vec3<bool>(true, any(vec3<bool>(true, true, false)), all(vec2<bool>(false, true)))));
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(415f, 399f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-165f, -762f) * vec2<f32>(-1686f, -952f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-852f + 1000f) + 1261f), 1f)));
    var var_4 = ~3706i;
    return reverseBits(0u);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(true, ~(~func_3()), select(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(41777u, 50543u), vec2<u32>(1u, 1u)), 1u), 1u, false), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(firstLeadingBit(4884u) >> (~4294967295u % 32u)), reverseBits(0u)), 20u)], Struct_1(vec2<bool>(true, true), 1u, ~u_input.a.x, max(-(u_input.a.x ^ u_input.a.x), ~(~(-45694i))), 562f));
    var var_1 = u_input.a;
    let var_2 = var_0.a;
    var_1 = abs(vec3<i32>(~var_0.e.c, _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(var_1.x, -2147483647i), ~30399i, -1i), _wgslsmith_mult_i32(-1i, u_input.a.x)));
    global0 = array<Struct_1, 20>();
    return var_0.e.e;
}

fn func_1(arg_0: f32, arg_1: bool) -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(~(~(_wgslsmith_div_u32(~0u, 6405u) ^ (~71181u & _wgslsmith_dot_vec3_u32(vec3<u32>(5443u, 62950u, 100584u), vec3<u32>(0u, 4294967295u, 53661u))))), 20u)];
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2()))));
    global0 = array<Struct_1, 20>();
    let var_2 = Struct_1(!var_0.a, 0u, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.a.x, var_0.d, var_0.c), vec4<i32>(u_input.a.x, var_0.c, var_0.d, -2147483647i)), vec4<i32>(20996i, var_0.c, 4741i, var_0.c)), 1i & _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c, -2147483647i, u_input.a.x, 0i), vec4<i32>(-8368i, -11152i, 0i, u_input.a.x)), ~_wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.xz), firstLeadingBit(_wgslsmith_mod_i32(1i, var_0.c))), vec4<i32>(abs(~u_input.a.x), firstTrailingBit(var_0.c), abs(~u_input.a.x), u_input.a.x)), var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) * var_0.e) * -460f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-168f, var_1))))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_2.e)))), (105328u << (_wgslsmith_add_u32(var_0.b | var_0.b, 1u) % 32u)) & 50542u, _wgslsmith_mult_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(78288u, 4702u, var_2.b), vec3<u32>(var_0.b, var_2.b, 0u))), 20907u), var_2, global0[_wgslsmith_index_u32(var_0.b, 20u)]);
    return select(!(!(!(!vec4<bool>(true, false, var_0.a.x, var_0.a.x)))), vec4<bool>(var_0.a.x || select(var_3.d.a.x, true, true), true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.e, _wgslsmith_f_op_f32(step(var_3.d.e, -185f)), var_2.a.x))) < -662f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 20>();
    let var_0 = 65774i;
    let var_1 = select(select(select(vec4<bool>(true, all(vec4<bool>(true, false, true, false)), false, true), vec4<bool>(true, true, true, true), true), !func_1(_wgslsmith_f_op_f32(f32(-1f) * -1093f), false), select(vec4<bool>(true, false, all(vec3<bool>(true, true, true)), true), vec4<bool>(false, true, false, false), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)))), !func_1(1966f, true), !vec4<bool>(any(func_1(822f, true).zww), -u_input.a.x >= 94076i, all(vec4<bool>(true, false, true, true)) && false, true));
    global0 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(var_0), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, var_0, var_0, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_0, u_input.a.x), ~vec4<i32>(var_0, u_input.a.x, -20361i, 9666i)), vec4<i32>(u_input.a.x, ~(-15924i), -1i, u_input.a.x)), -_wgslsmith_mod_vec4_i32(vec4<i32>(-32875i, 2147483647i, 0i, u_input.a.x) >> (vec4<u32>(32052u, 0u, 1u, 34217u) % vec4<u32>(32u)), select(vec4<i32>(u_input.a.x, u_input.a.x, var_0, 20075i), vec4<i32>(-2147483647i, var_0, u_input.a.x, u_input.a.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -681f), _wgslsmith_f_op_f32(max(-1000f, -1651f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1089f, 594f, -447f) * vec3<f32>(1848f, -343f, -705f)))))), vec2<u32>(~_wgslsmith_mult_u32(~2501u, 1u), 0u >> (reverseBits(select(53772u, 54839u, var_1.x)) % 32u)), ~max(var_0, -1i));
}

