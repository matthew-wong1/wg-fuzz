struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> vec4<u32> {
    var var_0 = ~_wgslsmith_div_i32(-u_input.d, u_input.d);
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1113f, 316f, 309f, 194f)))))));
    global0 = array<bool, 15>();
    let var_2 = _wgslsmith_clamp_u32(4294967295u | _wgslsmith_clamp_u32(u_input.e.x, ~0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 1u), vec3<u32>(u_input.e.x, u_input.e.x, 123820u))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, firstLeadingBit(~5068u), u_input.e.x, 3475u), abs(~(~vec4<u32>(u_input.e.x, 4294967295u, 70425u, u_input.e.x)))), _wgslsmith_mult_u32(1u, countOneBits(u_input.e.x)));
    var_0 = u_input.c;
    return _wgslsmith_mod_vec4_u32((vec4<u32>(4294967295u, ~1u, max(24935u, 19824u), abs(0u)) | vec4<u32>(0u, ~u_input.e.x, 0u, _wgslsmith_clamp_u32(48510u, var_2, 1u))) << (~firstLeadingBit(vec4<u32>(var_2, 4294967295u, u_input.e.x, 51939u)) % vec4<u32>(32u)), vec4<u32>(~39707u, max(u_input.e.x, 11833u), 4294967295u & (~u_input.e.x >> (~13834u % 32u)), ~firstTrailingBit(_wgslsmith_mult_u32(41102u, u_input.e.x))));
}

fn func_2() -> f32 {
    var var_0 = ~(~(~func_3(select(vec3<bool>(global0[_wgslsmith_index_u32(55040u, 15u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 15u)], true, false), false), all(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.e.x, 15u)], global0[_wgslsmith_index_u32(u_input.e.x, 15u)])))));
    var_0 = ~(~max(vec4<u32>(_wgslsmith_mult_u32(var_0.x, 4294967295u), _wgslsmith_add_u32(var_0.x, var_0.x), ~u_input.e.x, ~59826u), vec4<u32>(~var_0.x, _wgslsmith_dot_vec3_u32(u_input.e, var_0.zwx), firstTrailingBit(5576u), 1u)));
    var_0 = vec4<u32>(~var_0.x >> (36733u % 32u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(~1u, ~27812u, u_input.e.x)), ~vec3<u32>(4294967295u >> (var_0.x % 32u), var_0.x, u_input.e.x)), 0u, u_input.e.x);
    var_0 = ~firstLeadingBit(vec4<u32>(firstTrailingBit(u_input.e.x), select(~0u, u_input.e.x, global0[_wgslsmith_index_u32(u_input.e.x, 15u)] && false), 104363u, _wgslsmith_add_u32(firstTrailingBit(0u), firstLeadingBit(u_input.e.x))));
    var_0 = vec4<u32>(var_0.x, 46772u, var_0.x, ~(~_wgslsmith_clamp_u32(firstLeadingBit(var_0.x), var_0.x ^ 4294967295u, abs(11033u))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1019f - -1000f), -727f)))));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_1(0u, vec4<f32>(_wgslsmith_f_op_f32(func_2()), 453f, _wgslsmith_f_op_f32(f32(-1f) * -637f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), reverseBits(-countOneBits(u_input.c | arg_0)), any(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 15u)], true, true, global0[_wgslsmith_index_u32(u_input.e.x, 15u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 15u)], global0[_wgslsmith_index_u32(u_input.e.x, 15u)], global0[_wgslsmith_index_u32(u_input.e.x, 15u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.e.x, 15u)], global0[_wgslsmith_index_u32(u_input.e.x, 15u)])))));
    let var_1 = Struct_2(vec2<u32>(~_wgslsmith_sub_u32(u_input.e.x, 71975u), ~u_input.e.x));
    global0 = array<bool, 15>();
    var var_2 = var_1;
    var_2 = Struct_2(~_wgslsmith_add_vec2_u32(~var_2.a, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(3832u, var_1.a.x, var_2.a.x, var_0.a), vec4<u32>(var_1.a.x, u_input.e.x, var_2.a.x, var_2.a.x)), 4294967295u)));
    return Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x - -1418f), _wgslsmith_f_op_f32(trunc(1537f)), _wgslsmith_f_op_f32(f32(-1f) * -1195f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_0.b.wxz)) + _wgslsmith_f_op_vec3_f32(select(var_0.b.yxw, vec3<f32>(1277f, 2709f, -1111f), vec3<bool>(true, var_0.d, var_0.d))))))), -1627f, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 15>();
    var var_0 = func_1(u_input.c);
    global0 = array<bool, 15>();
    let var_1 = select(!(!vec3<bool>(!global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(28623u << (u_input.e.x % 32u), 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)] | global0[_wgslsmith_index_u32(u_input.e.x, 15u)])), vec3<bool>((_wgslsmith_add_u32(u_input.e.x, u_input.e.x) << (~0u % 32u)) >= 0u, false, true), (abs(u_input.e.x) < max(_wgslsmith_div_u32(6182u, u_input.e.x), _wgslsmith_mod_u32(0u, 16592u))) & (all(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 15u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(var_0.c.a.x, 15u)], global0[_wgslsmith_index_u32(30032u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)]), true)) || global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.e.xz, vec2<u32>(0u, 20208u)), 15u)]));
    var_0 = func_1(_wgslsmith_add_i32(abs(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-1i, -1i, -23899i, u_input.b.x), vec4<i32>(-63611i, 2147483647i, u_input.d, u_input.a.x)), u_input.a)), abs(_wgslsmith_sub_i32(0i, _wgslsmith_clamp_i32(u_input.d, u_input.a.x, 1i)))));
    let var_2 = !var_1;
    let var_3 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.b * var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -554f), _wgslsmith_f_op_f32(step(-923f, var_0.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -218f), _wgslsmith_f_op_f32(253f * var_0.b))), _wgslsmith_div_f32(var_0.b, -1000f), -137f)), _wgslsmith_f_op_f32(-var_0.a.x), func_1(-13525i).c);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_i32(u_input.a.x, u_input.c), -29689i) ^ ~select(35834i, u_input.c, true));
}

