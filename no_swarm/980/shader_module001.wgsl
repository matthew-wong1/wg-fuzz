struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false));

var<private> global2: array<vec3<bool>, 26>;

var<private> global3: array<Struct_2, 26>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    var var_0 = global3[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 26u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(303f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-877f, -921f) * vec2<f32>(-200f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(813f, 1810f) + vec2<f32>(1159f, -2110f))))))));
    global2 = array<vec3<bool>, 26>();
    global2 = array<vec3<bool>, 26>();
    global3 = array<Struct_2, 26>();
    return !vec4<bool>(all(select(global0.xz, vec2<bool>(global0.x, true), !vec2<bool>(true, global0.x))), -14295i < var_0.a.x, any(vec4<bool>(global0.x, global0.x, all(global0.zwy), !global0.x)), select(false, all(select(vec3<bool>(global0.x, false, true), vec3<bool>(true, global0.x, true), global0.x)), true));
}

fn func_2() -> bool {
    global0 = select(!select(func_3(), !(!vec4<bool>(false, true, global0.x, global0.x)), false), !(!func_3()), vec4<bool>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, 0i), vec3<i32>(7461i, 2147483647i, -2147483647i))) < _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 83035i, 1i, 38753i), ~vec4<i32>(2147483647i, -1i, -4056i, 0i)), global0.x, !func_3().x, (true && !global0.x) == false));
    global0 = select(func_3(), select(select(vec4<bool>(true, global0.x || global0.x, any(vec2<bool>(global0.x, global0.x)), any(vec2<bool>(global0.x, global0.x))), vec4<bool>(false, func_3().x, global0.x, all(global1[_wgslsmith_index_u32(u_input.b, 31u)])), !vec4<bool>(true, global0.x, false, false)), vec4<bool>(!select(false, false, global0.x), select(global0.x, global0.x, false), global0.x, false), !func_3()), !global0.x);
    let var_0 = Struct_2(_wgslsmith_mult_vec3_i32(-firstTrailingBit(~vec3<i32>(1i, 56271i, 14755i)), -max(vec3<i32>(2211i, 16618i, -23203i), vec3<i32>(31116i, -23780i, 1i)) | ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-31626i, 64078i, -27659i), vec3<i32>(37136i, -2147483647i, -1i), vec3<i32>(-13028i, -2147483647i, 0i))));
    global0 = vec4<bool>(any(global2[_wgslsmith_index_u32(1u, 26u)]), global0.x, true, func_3().x);
    let var_1 = Struct_1(~(~_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, -11771i, -32026i), countOneBits(vec4<i32>(-25139i, var_0.a.x, var_0.a.x, -4490i)))), global0.wy);
    return any(!var_1.b);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>, arg_3: vec2<i32>) -> vec4<bool> {
    global0 = !vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - -613f), arg_2.x, func_2())) != -824f, global0.x, false & !(global0.x == false), global0.x);
    let var_0 = ~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, ~6048u), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.b, u_input.a)))), _wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, 51071u), vec2<u32>(4294967295u, u_input.a)), ~(~vec2<u32>(u_input.b, 10091u))));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~max(u_input.a, 28335u) & u_input.a, ~var_0.x, 51100u), ~(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, var_0.x), vec3<u32>(var_0.x, 22614u, 1u)), ~vec3<u32>(57774u, var_0.x, 1u), vec3<u32>(u_input.b, 21325u, 4294967295u) | vec3<u32>(0u, 0u, 4294967295u)) << (vec3<u32>(u_input.b, abs(var_0.x), firstTrailingBit(u_input.a)) % vec3<u32>(32u))));
    var var_2 = 39550u;
    var var_3 = arg_0;
    return !vec4<bool>(global0.x, true, all(global1[_wgslsmith_index_u32(u_input.a, 31u)]), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(_wgslsmith_sub_vec4_i32(~max(vec4<i32>(-2147483647i, 2147483647i, 2814i, 0i), vec4<i32>(1i, 18530i, -2147483647i, -1486i)), -abs(vec4<i32>(-16619i, 2147483647i, -2147483647i, 46336i))), vec4<i32>(abs(2147483647i), -_wgslsmith_mod_i32(1i, -2147483647i), i32(-1i) * -11327i, 1i), select(select(!vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, false, true, false), global0.x), !func_1(Struct_2(vec3<i32>(1i, 939i, 0i)), 2147483647i, vec4<f32>(-710f, -465f, -1294f, -389f), vec2<i32>(12450i, -1i)), global0.x | (global0.x | global0.x))), vec2<bool>(any(select(!vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(true, global0.x, global0.x, global0.x), !global0.x)), !(u_input.b > ~11727u)));
    var var_1 = Struct_2(vec3<i32>(-1i) * -(~(-var_0.a.wyz)));
    global1 = array<vec3<bool>, 31>();
    global0 = func_3();
    let var_2 = Struct_1(_wgslsmith_div_vec4_i32(-var_0.a, _wgslsmith_sub_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-52292i, 76015i, -2147483647i, var_1.a.x), vec4<i32>(46141i, var_1.a.x, -21311i, 76755i))), min(vec4<i32>(-1i, 14376i, 2147483647i, var_0.a.x), _wgslsmith_div_vec4_i32(var_0.a, var_0.a)))), func_3().xz);
    var_1 = global3[_wgslsmith_index_u32(u_input.a, 26u)];
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-338f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(457f)))))) + 1f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1000f, 278f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-551f - -1037f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1357f))))), -2493i, 6075u, _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(var_0.a, vec4<i32>(var_2.a.x, -29222i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.x, var_0.a.x, 0i, -59497i), var_2.a), _wgslsmith_div_i32(var_1.a.x, var_0.a.x))), _wgslsmith_mod_vec4_i32(var_0.a, var_0.a)), max(~vec3<u32>(11704u, 1u, _wgslsmith_mod_u32(u_input.a, 4294967295u)), ~min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 63503u), vec3<u32>(14793u, u_input.b, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 1u, 20877u), vec3<u32>(u_input.a, 2323u, 0u)))));
}

