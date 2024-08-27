struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(502f, 1000f, 684f, -1910f, -871f, -336f, 562f, 1413f, -2175f, 985f, 1579f, -296f, 1267f, 1600f, 895f, -225f, -107f, 888f, 674f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_mod_u32(~max(1u, 1u), ~arg_1.a);
    let var_1 = vec2<bool>(select(true, false, _wgslsmith_f_op_f32(floor(1000f)) != _wgslsmith_f_op_f32(arg_3.x - arg_3.x)) && true, all(!select(!arg_0, vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), false)));
    let var_2 = Struct_4(Struct_2(arg_2, ~_wgslsmith_mult_vec3_i32(select(vec3<i32>(11867i, -28025i, -2147483647i), vec3<i32>(0i, 30439i, 1i), vec3<bool>(false, arg_0.x, true)), vec3<i32>(1i, 68783i, -33199i) >> (vec3<u32>(arg_2.a, 4294967295u, arg_2.a) % vec3<u32>(32u)))));
    let var_3 = Struct_5(Struct_2(Struct_1((var_2.a.a.a ^ arg_2.a) & 0u), vec3<i32>(reverseBits(0i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_2.a.b.x, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(29947i, var_2.a.b.x, var_2.a.b.x), var_2.a.b)), -2147483647i)), Struct_2(arg_1, -(~(-var_2.a.b))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_2.a, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]) + vec3<f32>(arg_3.x, 1238f, 376f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-786f, global0[_wgslsmith_index_u32(arg_2.a, 19u)], arg_3.x) - vec3<f32>(1240f, 1296f, arg_3.x)) - vec3<f32>(143f, -761f, 714f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_3.x, -777f)))))));
    return select(~_wgslsmith_div_vec3_i32(vec3<i32>(var_2.a.b.x, var_3.a.b.x, min(var_2.a.b.x, var_2.a.b.x)), _wgslsmith_clamp_vec3_i32(var_2.a.b, vec3<i32>(var_2.a.b.x, -9024i, -2147483647i), var_2.a.b)), var_2.a.b, arg_0.x);
}

fn func_2(arg_0: bool) -> vec3<u32> {
    var var_0 = -_wgslsmith_sub_i32(-4286i, _wgslsmith_dot_vec3_i32(func_3(vec4<bool>(true, true, true, true), Struct_1(u_input.b.x), Struct_1(u_input.b.x), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-168f, -347f)))), vec3<i32>(1i, 1i, 1i) << (vec3<u32>(u_input.a, 1u, 4294967295u) % vec3<u32>(32u))));
    global0 = array<f32, 19>();
    var var_1 = Struct_3(all(vec3<bool>(arg_0, all(vec3<bool>(arg_0, true, false)), false)), select(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0, false, true, true), vec4<bool>(true, arg_0, arg_0, arg_0)), !vec4<bool>(arg_0, true, false, arg_0), !vec4<bool>(arg_0, true, arg_0, false)), !(!(!vec4<bool>(arg_0, true, false, true))), false));
    var_1 = Struct_3(arg_0, var_1.b);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(5256u, 19u)])))));
    return min(u_input.b, ~(~(~vec3<u32>(4294967295u, u_input.a, 103033u) << (~vec3<u32>(4294967295u, 12236u, 28212u) % vec3<u32>(32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_u32(u_input.a, ~(~firstTrailingBit(arg_1.x)), _wgslsmith_dot_vec3_u32(arg_1, ~(~u_input.b)));
    global0 = array<f32, 19>();
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-170f, 987f, global0[_wgslsmith_index_u32(26599u, 19u)]))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-811f, global0[_wgslsmith_index_u32(arg_0.a, 19u)], global0[_wgslsmith_index_u32(23404u, 19u)]) - vec3<f32>(-488f, -1046f, -774f))))))));
    var var_2 = !select(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, select(true, false, true)), vec4<bool>(true, true, all(vec3<bool>(false, false, true)), any(vec2<bool>(true, false)))), vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), all(vec3<bool>(false, false, true)) | true, true, any(vec4<bool>(true, true, true, true))), true);
    var var_3 = select(!vec2<bool>(true, (1u < arg_1.x) & true), !var_2.yx, vec2<bool>((arg_0.a > (42389u ^ arg_1.x)) & all(!var_2.xxx), any(!(!vec2<bool>(false, var_2.x)))));
    return Struct_2(arg_0, abs(_wgslsmith_div_vec3_i32(select(vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, 1i, -2147483647i), vec3<bool>(var_3.x, true, false)), vec3<i32>(1i, 1i, 1i) << (_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a, arg_0.a, arg_0.a), vec3<u32>(0u, arg_0.a, 4294967295u)) % vec3<u32>(32u)))));
}

fn func_1() -> Struct_2 {
    return func_4(Struct_1(_wgslsmith_div_u32(_wgslsmith_sub_u32(18329u, u_input.b.x) & u_input.a, 1u)), _wgslsmith_mult_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, u_input.b), _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(1u, 4294967295u, 4294967295u))), (func_2(false) | u_input.b) >> ((u_input.b | u_input.b) % vec3<u32>(32u))));
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    global0 = array<f32, 19>();
    let var_0 = all(vec4<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false)), true, true, true)) || all(vec3<bool>(any(vec2<bool>(true, true)), select(arg_0.a.a >= 1u, true, any(vec2<bool>(false, false))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(38398u, 19u)]) == 1010f));
    let var_1 = _wgslsmith_f_op_f32(-1621f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-391f * global0[_wgslsmith_index_u32(arg_0.a.a, 19u)])))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-426f, global0[_wgslsmith_index_u32(16946u, 19u)]))), 179f);
    var var_3 = Struct_5(arg_0, func_4(Struct_1(44445u), ~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(9429u, 72775u, 51204u), u_input.b), firstTrailingBit(u_input.b))));
    return Struct_3(!(!any(vec3<bool>(var_0, false, false))) && any(select(vec2<bool>(true, var_0), vec2<bool>(true, true), select(vec2<bool>(true, var_0), vec2<bool>(var_0, false), true))), !vec4<bool>(false, false, true, var_0 & (u_input.a >= 63556u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1());
    global0 = array<f32, 19>();
    let var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(58394u, u_input.b.x) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), u_input.b.yx, (vec2<u32>(1u, 1u) | u_input.b.yx) | _wgslsmith_sub_vec2_u32(u_input.b.yy, vec2<u32>(31424u, u_input.b.x))), u_input.b.zx), func_2(all(vec3<bool>(true, false, var_0.b.x && true))).x, max(~1u, func_2(all(select(var_0.b.zww, vec3<bool>(var_0.a, true, false), true))).x));
    var var_2 = Struct_5(func_4(Struct_1(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_1.x, 1u, var_1.x, 33954u)), ~vec4<u32>(var_1.x, 27563u, 45065u, 1u))), select(u_input.b, ~var_1, func_5(func_4(Struct_1(0u), u_input.b)).b.xxw)), func_4(Struct_1(~firstTrailingBit(4294967295u)), select(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(44833u, u_input.a, 4294967295u), vec3<u32>(0u, var_1.x, var_1.x)), vec3<u32>(23396u, 29727u, 4060u)), vec3<u32>(firstLeadingBit(var_1.x), u_input.b.x, ~var_1.x), vec3<bool>(true, func_5(Struct_2(Struct_1(u_input.b.x), vec3<i32>(21494i, 13508i, 0i))).b.x, false))));
    var_0 = Struct_3(!(var_0.a && (any(vec3<bool>(true, true, var_0.b.x)) != true)), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(473f, global0[_wgslsmith_index_u32(~u_input.a, 19u)], global0[_wgslsmith_index_u32(firstTrailingBit(13030u), 19u)], -321f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(1u, 19u)], 832f, global0[_wgslsmith_index_u32(1u, 19u)], -181f), vec4<f32>(-1111f, global0[_wgslsmith_index_u32(4294967295u, 19u)], 178f, 437f)))), var_0.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-116f, 2516f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.yz, var_1.zz), var_1.xz), 19u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(65350u, 1u), 19u)] - -1165f), global0[_wgslsmith_index_u32(func_2(true).x, 19u)])), var_2.b.b.xz);
}

