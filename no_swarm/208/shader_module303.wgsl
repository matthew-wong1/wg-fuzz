struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: Struct_1,
    e: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -5221i;

var<private> global1: array<Struct_3, 22>;

var<private> global2: array<Struct_1, 20>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_3) -> vec3<i32> {
    global0 = ~(-1i);
    var var_0 = 0u;
    var_0 = ~_wgslsmith_mod_u32(arg_2.x, 1u);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-203f + 2121f))))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1032f * _wgslsmith_f_op_f32(-arg_1.x)), 655f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_1)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1166f, arg_1.x), vec2<f32>(-975f, 2183f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-367f, 1903f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.b, arg_3.a.b)))))));
    let var_2 = global1[_wgslsmith_index_u32(abs(arg_2.x & (arg_0.x ^ ~(~arg_0.x))), 22u)];
    return ~firstLeadingBit(vec3<i32>(60908i, ~u_input.a, max(~arg_3.a.a.x, -2147483647i)));
}

fn func_2() -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(~(~(~abs(1u))), 20u)];
    let var_1 = true;
    var var_2 = Struct_2(!(!vec4<bool>(!var_1, var_1 || false, var_1 && var_1, true)));
    var var_3 = Struct_1(_wgslsmith_sub_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-6524i, u_input.a, 2147483647i), func_3(vec2<u32>(0u, 0u), vec2<f32>(-592f, var_0.b), vec2<u32>(0u, 0u), Struct_3(global2[_wgslsmith_index_u32(96u, 20u)], Struct_2(var_2.a), var_0.a.x)), firstTrailingBit(vec3<i32>(var_0.a.x, u_input.a, 2147483647i)))), select(reverseBits(var_0.a), ~vec3<i32>(26675i, var_0.a.x, u_input.a), vec3<bool>(any(vec4<bool>(false, var_2.a.x, var_2.a.x, true)), false, true))), -983f);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) * -871f);
    return Struct_2(var_2.a);
}

fn func_1() -> u32 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1158f, _wgslsmith_f_op_f32(f32(-1f) * -211f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-337f)) * _wgslsmith_f_op_f32(1000f + -184f)) + 1f)), vec4<f32>(348f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1505f * -1421f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1035f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-517f, -631f))) * 1107f))));
    let var_2 = Struct_4(min(~min(vec2<i32>(68822i, -18226i) ^ vec2<i32>(-1i, u_input.a), select(vec2<i32>(41546i, 29414i), vec2<i32>(7123i, u_input.a), vec2<bool>(var_0.a.x, var_0.a.x))), ~vec2<i32>(~u_input.a, u_input.a)), min(select(vec2<i32>(u_input.a, 2147483647i), firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), func_2().a.x), vec2<i32>(u_input.a, _wgslsmith_mult_i32(max(u_input.a, u_input.a), firstTrailingBit(u_input.a)))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(98965u, 1u, 40547u, _wgslsmith_sub_u32(33894u, 1u))), _wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u))), Struct_1(vec3<i32>(firstLeadingBit(u_input.a), min(0i, -26009i), _wgslsmith_mult_i32(u_input.a, u_input.a)) ^ _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.a, -46965i), vec3<i32>(u_input.a, 64548i, u_input.a), vec3<i32>(-1i, -2147483647i, u_input.a)), vec3<i32>(u_input.a, u_input.a, 0i)), -697f), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(2200f + var_1.x)))))));
    var var_3 = select(false, var_0.a.x, true);
    let var_4 = 4294967295u;
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(19944i, reverseBits(-2147483647i), ~(~23862i)), u_input.a, u_input.a, u_input.a), -firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), ~u_input.a, -u_input.a, 52432i >> (1u % 32u))));
    var_0 = firstTrailingBit(~(~4294967295u));
    global0 = -u_input.a;
    var var_2 = select(select(!vec2<bool>(var_1.x == 49654i, true), vec2<bool>(true, true), select(vec2<bool>(true, any(vec4<bool>(false, true, false, false))), vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(true, true, true, false))))), vec2<bool>(true, !any(vec2<bool>(true, true))), func_2().a.zz);
    var var_3 = any(vec2<bool>(any(vec3<bool>(true | var_2.x, true, all(vec2<bool>(false, var_2.x)))), var_2.x));
    global2 = array<Struct_1, 20>();
    global1 = array<Struct_3, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(-33809i, min(1u << (0u % 32u), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(4091u, 18047u), firstTrailingBit(0u))), abs(var_1.xwz));
}

