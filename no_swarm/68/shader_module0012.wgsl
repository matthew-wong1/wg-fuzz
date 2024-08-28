struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: array<vec4<i32>, 17>;

var<private> global2: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(387f, -192f, -132f, 1123f), vec4<f32>(-1301f, -1330f, -1311f, -2297f), vec4<f32>(723f, 436f, 2500f, 1000f), vec4<f32>(934f, 712f, 1795f, -950f), vec4<f32>(1060f, -647f, 1302f, -2154f), vec4<f32>(-2570f, 1000f, -530f, -626f), vec4<f32>(1000f, 891f, 162f, -1535f), vec4<f32>(743f, 145f, -1419f, -398f), vec4<f32>(710f, -1780f, -189f, -1233f));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec3<u32>) -> bool {
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    let var_0 = ~u_input.b;
    var var_1 = vec2<bool>(true, !(any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true)) | true));
    let var_2 = u_input.a.x;
    return !(!(!all(vec2<bool>(true, true))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<f32>) -> vec3<u32> {
    var var_0 = 24430i;
    let var_1 = _wgslsmith_f_op_f32(round(642f));
    let var_2 = vec3<i32>(-34783i, -1i, _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_2.x, arg_2.x) << (max(~arg_1.a.x, u_input.a.x) % 32u), min(_wgslsmith_add_i32(abs(-33265i), _wgslsmith_div_i32(u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec2_i32(u_input.b.zx, _wgslsmith_mod_vec2_i32(u_input.b.yy, vec2<i32>(5850i, arg_2.x))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3))));
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_3), _wgslsmith_f_op_vec3_f32(arg_3 * arg_3), vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-421f, 1073f, var_1)) - _wgslsmith_f_op_vec3_f32(arg_3 - vec3<f32>(-742f, -1508f, 307f)))))) + vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1)))), _wgslsmith_f_op_f32(-903f - _wgslsmith_f_op_f32(sign(-1505f)))));
    return vec3<u32>(arg_1.a.x, ~(~17561u), ~(~(~(~arg_0))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> Struct_4 {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(4294967295u, arg_0.a.x), _wgslsmith_sub_u32(_wgslsmith_div_u32(29579u, u_input.a.x), _wgslsmith_clamp_u32(1u, arg_0.a.x, u_input.a.x)), ~arg_0.a.x), min(~func_3(12943u, arg_0, vec4<i32>(53110i, u_input.b.x, 0i, 1i), vec3<f32>(arg_2.a.x, 2545f, arg_2.a.x)), arg_0.a)));
    var var_1 = select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, false)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec2<bool>(false, false)))), vec2<bool>(true, true), (_wgslsmith_dot_vec3_i32(arg_2.b.yzw, u_input.b) & _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, arg_2.b.x))) <= -48146i), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(select(true, false, true), false)));
    var var_2 = ~(-firstLeadingBit(2147483647i));
    var var_3 = arg_0.a.yy;
    var var_4 = _wgslsmith_f_op_f32(1240f * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_2.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(106f)), 1026f)), -987f, any(vec3<bool>(false | var_1.x, var_1.x, var_1.x)))));
    return Struct_4(firstTrailingBit(_wgslsmith_mult_vec2_i32(-(~vec2<i32>(arg_2.b.x, 2147483647i)), ~vec2<i32>(u_input.b.x, u_input.b.x) << (min(vec2<u32>(0u, var_3.x), arg_0.a.xz) % vec2<u32>(32u)))), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_3.x, max(24054u, 1u), 76015u, ~var_0.a.x)) ^ ~29877u, arg_2.a.x);
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: vec2<bool>) -> bool {
    let var_0 = vec2<f32>(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1600f * _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_0)))));
    let var_1 = true;
    let var_2 = global0[_wgslsmith_index_u32(func_2(Struct_1(~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.xxz, u_input.a.yxw), vec3<u32>(45827u, u_input.a.x, 10248u) ^ u_input.a.ywy, u_input.a.wxx)), reverseBits(1i), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 26u)]).b, 26u)];
    let var_3 = any(vec3<bool>(!(!arg_2.x), var_1, any(!select(vec4<bool>(false, true, false, arg_2.x), vec4<bool>(var_1, false, false, var_1), vec4<bool>(false, arg_2.x, arg_2.x, true)))));
    let var_4 = Struct_4(min(func_2(Struct_1(u_input.a.yyx), 47450i, Struct_2(vec3<f32>(916f, 998f, var_2.a.x), vec4<i32>(14931i, u_input.b.x, 0i, -47945i))).a & vec2<i32>(var_2.b.x, arg_1.a.x ^ 2147483647i), firstTrailingBit(var_2.b.yw)), u_input.a.x, 435f);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 17>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f * -230f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1550f)))))))));
    let var_1 = select(10845u, max(39350u, _wgslsmith_dot_vec2_u32(~vec2<u32>(20529u, u_input.a.x), vec2<u32>(u_input.a.x, 10852u))), -952f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))));
    var var_2 = select(vec4<bool>(true, true, true, true), vec4<bool>(func_1(select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1, 4294967295u, 0u), u_input.a.zzy), ~u_input.a.wzz, vec3<bool>(true, false, false))), true, true, !func_4(-300f, func_2(Struct_1(vec3<u32>(59366u, 0u, 1u)), u_input.b.x, Struct_2(vec3<f32>(var_0, var_0, 147f), vec4<i32>(u_input.b.x, 51237i, u_input.b.x, -1i))), vec2<bool>(true, true))), !(!vec4<bool>(false, false, true, all(vec3<bool>(false, true, false)))));
    var var_3 = ~(-1i) >> (_wgslsmith_div_u32(var_1, var_1) % 32u);
    var var_4 = Struct_1(u_input.a.wyw);
    var var_5 = var_4.a.yz;
    var_5 = (min(~u_input.a.wy, u_input.a.wz) & ~_wgslsmith_sub_vec2_u32(~u_input.a.yw, ~vec2<u32>(var_4.a.x, 21787u))) ^ var_4.a.yy;
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(global2[_wgslsmith_index_u32(var_5.x, 9u)], global2[_wgslsmith_index_u32(u_input.a.x, 9u)])), 0u, u_input.a.zy | var_4.a.xy);
}

