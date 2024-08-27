struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
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

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<bool>(true, false), false, vec2<u32>(4294967295u, 56912u), vec2<u32>(1u, 11380u), 4294967295u), Struct_1(vec2<bool>(false, true), true, vec2<u32>(27390u, 34693u), vec2<u32>(4294967295u, 4294967295u), 29179u), Struct_1(vec2<bool>(true, true), false, vec2<u32>(0u, 0u), vec2<u32>(40856u, 64389u), 55851u), Struct_1(vec2<bool>(true, true), false, vec2<u32>(4294967295u, 51131u), vec2<u32>(31471u, 79807u), 0u), Struct_1(vec2<bool>(false, false), true, vec2<u32>(1u, 1u), vec2<u32>(0u, 33203u), 29602u), Struct_1(vec2<bool>(false, false), true, vec2<u32>(31365u, 4294967295u), vec2<u32>(37707u, 1u), 24950u), Struct_1(vec2<bool>(false, false), true, vec2<u32>(1u, 0u), vec2<u32>(1u, 1u), 6988u), Struct_1(vec2<bool>(true, true), true, vec2<u32>(38335u, 15350u), vec2<u32>(0u, 1u), 66875u), Struct_1(vec2<bool>(true, false), false, vec2<u32>(0u, 43732u), vec2<u32>(56540u, 0u), 4294967295u), Struct_1(vec2<bool>(true, false), true, vec2<u32>(1u, 1u), vec2<u32>(7512u, 65900u), 0u), Struct_1(vec2<bool>(false, false), true, vec2<u32>(0u, 14131u), vec2<u32>(9223u, 4294967295u), 70775u), Struct_1(vec2<bool>(true, false), true, vec2<u32>(0u, 53284u), vec2<u32>(4294967295u, 79303u), 11341u), Struct_1(vec2<bool>(false, true), true, vec2<u32>(0u, 28464u), vec2<u32>(24596u, 4294967295u), 59508u), Struct_1(vec2<bool>(false, false), false, vec2<u32>(0u, 0u), vec2<u32>(1u, 10892u), 4294967295u), Struct_1(vec2<bool>(false, true), false, vec2<u32>(26217u, 1580u), vec2<u32>(6705u, 0u), 99182u), Struct_1(vec2<bool>(true, false), false, vec2<u32>(0u, 48765u), vec2<u32>(14128u, 0u), 21514u), Struct_1(vec2<bool>(true, true), true, vec2<u32>(4294967295u, 0u), vec2<u32>(16786u, 1u), 15409u), Struct_1(vec2<bool>(false, false), true, vec2<u32>(0u, 0u), vec2<u32>(0u, 4294967295u), 4294967295u), Struct_1(vec2<bool>(true, true), true, vec2<u32>(29019u, 6908u), vec2<u32>(0u, 63021u), 4294967295u), Struct_1(vec2<bool>(false, false), true, vec2<u32>(4663u, 1u), vec2<u32>(1648u, 4294967295u), 96143u), Struct_1(vec2<bool>(false, false), false, vec2<u32>(39043u, 2642u), vec2<u32>(80716u, 1u), 1u), Struct_1(vec2<bool>(true, true), false, vec2<u32>(0u, 13720u), vec2<u32>(13120u, 6013u), 4294967295u), Struct_1(vec2<bool>(true, false), true, vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u), 1u), Struct_1(vec2<bool>(false, false), true, vec2<u32>(40840u, 23509u), vec2<u32>(0u, 13253u), 61887u), Struct_1(vec2<bool>(true, false), false, vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 0u), 4294967295u), Struct_1(vec2<bool>(false, false), false, vec2<u32>(1u, 62641u), vec2<u32>(32881u, 25622u), 49004u), Struct_1(vec2<bool>(true, true), false, vec2<u32>(55962u, 19078u), vec2<u32>(4294967295u, 21593u), 0u), Struct_1(vec2<bool>(false, false), false, vec2<u32>(4294967295u, 4069u), vec2<u32>(7024u, 20821u), 56871u), Struct_1(vec2<bool>(false, true), false, vec2<u32>(48998u, 4294967295u), vec2<u32>(84576u, 4294967295u), 34450u), Struct_1(vec2<bool>(false, true), true, vec2<u32>(13546u, 35142u), vec2<u32>(26112u, 43003u), 19961u), Struct_1(vec2<bool>(true, false), true, vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 43516u), 37244u));

var<private> global1: array<vec3<bool>, 4>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = vec4<i32>(arg_0, abs(_wgslsmith_mult_i32(firstTrailingBit(-31876i), arg_0)), _wgslsmith_add_i32(((i32(-1i) * -12174i) >> ((arg_1.d.x << (24645u % 32u)) % 32u)) >> (~(~arg_2.d.x) % 32u), _wgslsmith_clamp_i32(arg_0, _wgslsmith_mod_i32(1i, u_input.a.x), ~u_input.d.x)), -(~2147483647i));
    var var_1 = -_wgslsmith_mod_vec4_i32(select(firstLeadingBit(var_0), max(var_0, vec4<i32>(1386i, var_0.x, 2147483647i, u_input.a.x)), arg_1.b | arg_2.b), -countOneBits(vec4<i32>(var_0.x, -45295i, 2147483647i, var_0.x))) << (vec4<u32>(1u, 0u ^ ~(~u_input.b.x), ~1279u, 71123u) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -356f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1110f + 1042f), _wgslsmith_f_op_f32(f32(-1f) * -766f))))) * -438f);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1494f))))))));
    global1 = array<vec3<bool>, 4>();
    return ~vec4<u32>(~1u, arg_1.d.x, ~(~4294967295u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_2.c.x, 25208u), vec3<u32>(6544u, 1u, 4294967295u))) | _wgslsmith_add_vec4_u32(vec4<u32>(~min(85774u, 71651u), 4294967295u, 4294967295u, _wgslsmith_sub_u32(u_input.c, 40450u)), vec4<u32>(arg_1.c.x, 0u >> (u_input.c % 32u), ~abs(107761u), arg_2.c.x));
}

fn func_2() -> u32 {
    global1 = array<vec3<bool>, 4>();
    var var_0 = vec3<bool>(false, true, false);
    global0 = array<Struct_1, 31>();
    global1 = array<vec3<bool>, 4>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(_wgslsmith_div_u32(firstLeadingBit(37615u), ~1u) << (u_input.c % 32u)), select(4294967295u, _wgslsmith_dot_vec4_u32(~func_3(u_input.e, Struct_1(var_0.xx, false, u_input.b, vec2<u32>(0u, 0u), 7658u), Struct_1(var_0.xx, true, vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.b.x, u_input.c), 4294967295u)), ~(~vec4<u32>(u_input.c, 0u, u_input.b.x, u_input.c))), var_0.x)), 31u)];
    return firstLeadingBit(0u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_3.a, false, arg_0.d, arg_1.d, func_2());
    global1 = array<vec3<bool>, 4>();
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1018f))), -2418f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-178f, 112f))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(929f, -839f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-585f, -454f))))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-680f, -1872f), vec2<f32>(-450f, 581f))))), all(arg_1.a)));
    global0 = array<Struct_1, 31>();
    var var_2 = ~arg_1.d.x;
    return arg_3.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(402f * -1350f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(954f, 240f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1467f))) - 498f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(311f * 166f)) - -658f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(950f * -676f) + 1727f), 981f);
    global1 = array<vec3<bool>, 4>();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(689f * _wgslsmith_f_op_f32(-var_0.x))));
    var var_2 = firstTrailingBit(vec4<u32>(u_input.c, 4294967295u, u_input.c, func_1(Struct_1(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), 31181u >= u_input.b.x, u_input.b, vec2<u32>(0u, u_input.c) << (vec2<u32>(4294967295u, 75634u) % vec2<u32>(32u)), u_input.b.x | 32584u), global0[_wgslsmith_index_u32(1u, 31u)], (u_input.d.x <= 2147483647i) & any(global1[_wgslsmith_index_u32(49878u, 4u)]), global0[_wgslsmith_index_u32(u_input.c, 31u)])));
    var var_3 = _wgslsmith_f_op_f32(-var_0.x);
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))) + 1301f);
    var var_4 = _wgslsmith_clamp_vec4_i32(abs(-abs(vec4<i32>(u_input.a.x, u_input.d.x, u_input.d.x, u_input.a.x) | vec4<i32>(u_input.a.x, u_input.d.x, 2147483647i, u_input.e))), _wgslsmith_mod_vec4_i32(vec4<i32>(-_wgslsmith_sub_i32(u_input.d.x, 45075i), select(u_input.e, -2147483647i, false) | 0i, _wgslsmith_add_i32(u_input.d.x, -44084i), ~(-665i)), select(vec4<i32>(-1i, 2147483647i, 30334i, u_input.a.x), reverseBits(vec4<i32>(0i, -2147483647i, u_input.d.x, -2147483647i)), vec4<bool>(false, false, false, false)) ^ reverseBits(~vec4<i32>(u_input.a.x, u_input.e, 28696i, u_input.e))), vec4<i32>(u_input.e, reverseBits(_wgslsmith_dot_vec2_i32(u_input.a.zz | u_input.a.xx, vec2<i32>(u_input.d.x, u_input.e))), 25413i ^ u_input.a.x, 0i));
    let var_5 = any(vec4<bool>(any(!(!global1[_wgslsmith_index_u32(var_2.x, 4u)])), any(vec4<bool>(true, all(vec2<bool>(false, false)), true, true)), true, true));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.e);
}

