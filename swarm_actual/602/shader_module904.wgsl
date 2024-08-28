struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_1(-358f, vec3<f32>(1468f, 374f, -2567f)), true);

var<private> global1: array<vec4<u32>, 11>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = Struct_5(global0.a, true);
    global1 = array<vec4<u32>, 11>();
    var var_1 = Struct_5(var_0.a, any(!(!select(vec4<bool>(global0.b, true, global0.b, false), vec4<bool>(true, var_0.b, true, var_0.b), vec4<bool>(false, global0.b, true, global0.b)))));
    var var_2 = max((~(u_input.b.x << (u_input.b.x % 32u)) ^ _wgslsmith_mod_u32(_wgslsmith_mult_u32(75365u, 23840u), _wgslsmith_div_u32(1562u, u_input.b.x))) & _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.b.xz), u_input.b.zw), firstLeadingBit(_wgslsmith_div_u32(35674u, u_input.b.x))), _wgslsmith_div_u32(51599u, (_wgslsmith_sub_u32(4294967295u, u_input.b.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(25720u, 1u)) % 32u)) << (_wgslsmith_div_u32(u_input.b.x, ~u_input.b.x) % 32u)));
    let var_3 = var_1.a.b.xx;
    return _wgslsmith_dot_vec2_i32(~(~(~_wgslsmith_add_vec2_i32(vec2<i32>(arg_0, -2147483647i), vec2<i32>(arg_0, arg_0)))), vec2<i32>(_wgslsmith_clamp_i32(~31855i, arg_0 ^ (arg_0 | -1i), -(u_input.a | arg_0)), arg_0));
}

fn func_2() -> bool {
    var var_0 = select(vec2<bool>(_wgslsmith_f_op_f32(global0.a.a * _wgslsmith_f_op_f32(exp2(global0.a.a))) > global0.a.b.x, true), select(vec2<bool>(any(!vec4<bool>(false, global0.b, global0.b, true)), global0.b), !vec2<bool>(global0.b, true), global0.b), true);
    let var_1 = Struct_2(_wgslsmith_div_i32(firstTrailingBit(func_3(-1i)), firstTrailingBit(u_input.a)), 1i, u_input.b);
    var var_2 = Struct_1(global0.a.b.x, _wgslsmith_f_op_vec3_f32(global0.a.b + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.a.b))), vec3<f32>(_wgslsmith_f_op_f32(-1074f - global0.a.b.x), _wgslsmith_f_op_f32(global0.a.b.x + -462f), _wgslsmith_f_op_f32(abs(global0.a.a))))));
    var_0 = select(select(select(select(vec2<bool>(true, false), select(vec2<bool>(global0.b, global0.b), vec2<bool>(true, var_0.x), vec2<bool>(true, global0.b)), var_0.x), !(!vec2<bool>(true, global0.b)), true), vec2<bool>(select(!global0.b, true, true), true), true), !(!select(!vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x), select(vec2<bool>(false, true), vec2<bool>(false, false), var_0.x))), vec2<bool>(false, true));
    let var_3 = var_1;
    return any(!vec3<bool>(any(!vec2<bool>(global0.b, true)), var_0.x, !(0u <= var_3.c.x)));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> vec4<u32> {
    global1 = array<vec4<u32>, 11>();
    var var_0 = 1u;
    var var_1 = _wgslsmith_mod_u32(~_wgslsmith_sub_u32(_wgslsmith_div_u32(~arg_1, 44693u), 1u), arg_1);
    global0 = Struct_5(Struct_1(-426f, vec3<f32>(874f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a) - _wgslsmith_f_op_f32(1174f + global0.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -449f))), select(true, all(vec2<bool>(arg_0.x, arg_0.x)) & !(!global0.b), func_2()));
    let var_2 = Struct_3(Struct_2(u_input.a, u_input.a, u_input.b), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(25997u, 71697u, arg_1), vec3<u32>(25846u, u_input.b.x, u_input.b.x)) & select(u_input.b.wzw, u_input.b.xxz, vec3<bool>(false, false, global0.b)), u_input.b.wzy) & max(reverseBits(u_input.b.yzy), u_input.b.zzw), !(!arg_0));
    return max(var_2.a.c, u_input.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_5 {
    var var_0 = arg_0;
    let var_1 = Struct_4(Struct_3(arg_1.a, abs(~vec3<u32>(4294967295u, arg_0.c.x, arg_1.a.c.x)), arg_1.c), Struct_3(Struct_2(_wgslsmith_add_i32(-1i, ~26734i), _wgslsmith_div_i32(1i << (var_0.c.x % 32u), var_0.b), u_input.b), ~u_input.b.xwz, vec2<bool>(!global0.b, false)), select(~((vec4<i32>(-2147483647i, arg_1.a.b, -2147483647i, 22723i) & vec4<i32>(u_input.a, var_0.a, arg_0.a, -11328i)) >> (reverseBits(vec4<u32>(6112u, arg_1.a.c.x, arg_0.c.x, var_0.c.x)) % vec4<u32>(32u))), max((vec4<i32>(var_0.a, -18964i, 2340i, -1i) & vec4<i32>(var_0.b, 2147483647i, arg_0.a, var_0.b)) | abs(vec4<i32>(47993i, arg_0.b, 16235i, var_0.b)), vec4<i32>(_wgslsmith_div_i32(arg_0.a, arg_1.a.a), arg_1.a.a & -2147483647i, i32(-1i) * -9454i, arg_0.b)), true), vec4<u32>(0u, ~_wgslsmith_mod_u32(reverseBits(0u), 59050u), _wgslsmith_div_u32(0u, 1u), 0u));
    var var_2 = abs(firstTrailingBit(firstLeadingBit(arg_1.a.b & var_1.c.x))) & 44249i;
    var_0 = arg_0;
    var_0 = Struct_2(_wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(-36718i, u_input.a, 0i), vec3<i32>(-60671i, 0i, var_1.b.a.b)), ~var_1.c.wwx, true), _wgslsmith_div_vec3_i32(select(vec3<i32>(0i, arg_0.b, 0i), var_1.c.yxx, vec3<bool>(false, false, false)), vec3<i32>(-1i, -1687i, -1i))) >> (~1u % 32u), 1i, _wgslsmith_add_vec4_u32(arg_1.a.c, ~(~vec4<u32>(0u, var_0.c.x, 1u, arg_1.a.c.x))));
    return Struct_5(global0.a, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(38539i, min(-58695i, _wgslsmith_mod_i32(firstLeadingBit(u_input.a), u_input.a ^ u_input.a)), _wgslsmith_clamp_vec4_u32(u_input.b, ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 47285u), global1[_wgslsmith_index_u32(firstLeadingBit(countOneBits(1u)), 11u)])), Struct_3(Struct_2(u_input.a, 1i, _wgslsmith_add_vec4_u32(func_1(vec2<bool>(global0.b, global0.b), 4294967295u), global1[_wgslsmith_index_u32(u_input.b.x, 11u)])), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), u_input.b.xzx, u_input.b.yxx)), vec2<bool>(global0.b, u_input.a == 1i)));
    global0 = Struct_5(var_0.a, u_input.b.x != ~u_input.b.x);
    var var_1 = Struct_4(Struct_3(Struct_2(u_input.a, u_input.a, _wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], vec4<u32>(0u, u_input.b.x, 0u, 57841u), global1[_wgslsmith_index_u32(~u_input.b.x, 11u)])), reverseBits(_wgslsmith_mult_vec3_u32(u_input.b.wyw, u_input.b.www) >> ((u_input.b.wyy ^ u_input.b.wzy) % vec3<u32>(32u))), !vec2<bool>(global0.b, var_0.b)), Struct_3(Struct_2(abs(0i), _wgslsmith_mult_i32(-6300i, -24965i), vec4<u32>(42227u, u_input.b.x, _wgslsmith_mod_u32(38339u, u_input.b.x), 13520u >> (u_input.b.x % 32u))), firstLeadingBit(u_input.b.zwx << (u_input.b.wwz % vec3<u32>(32u))), vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -529f) >= _wgslsmith_f_op_f32(floor(1437f)), var_0.a.b.x != _wgslsmith_f_op_f32(f32(-1f) * -639f))), vec4<i32>(-1i) * -max(vec4<i32>(-6237i, u_input.a, u_input.a, -1i), select(vec4<i32>(-2147483647i, 1i, -50706i, u_input.a), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), vec4<bool>(var_0.b, global0.b, global0.b, global0.b))), u_input.b | _wgslsmith_div_vec4_u32(abs(global1[_wgslsmith_index_u32(u_input.b.x, 11u)] | vec4<u32>(74527u, 1u, 833u, 0u)), (vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x) | vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)) >> (vec4<u32>(35360u, u_input.b.x, 4294967295u, u_input.b.x) % vec4<u32>(32u))));
    var var_2 = vec2<i32>(0i >> (var_1.d.x % 32u), var_1.b.a.a);
    var_2 = -_wgslsmith_div_vec2_i32(firstLeadingBit(-var_1.c.ww ^ ~var_1.c.yx), var_1.c.yz);
    global0 = func_4(Struct_2(-func_3(i32(-1i) * -49900i), ~33691i >> (min(u_input.b.x ^ 36860u, ~60953u) % 32u), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~var_1.b.b, _wgslsmith_sub_vec3_u32(vec3<u32>(13603u, u_input.b.x, 0u), vec3<u32>(u_input.b.x, 20004u, 0u))), ~(~u_input.b.x)), 11u)]), Struct_3(var_1.b.a, var_1.d.yyx, var_1.a.c));
    let x = u_input.a;
    s_output = StorageBuffer(~(-var_1.c.xyz));
}

