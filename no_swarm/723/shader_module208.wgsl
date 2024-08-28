struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_4,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 24639i;

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global2: array<f32, 12>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3) -> f32 {
    global1 = select(vec4<bool>(false, arg_1.c.a.b, select(_wgslsmith_add_u32(66710u, 38634u), 1u, true) <= 1u, arg_0.x), select(vec4<bool>(global1.x, all(vec4<bool>(true, true, true, true)), true && arg_1.c.a.b, true), vec4<bool>(all(global1.zxw), arg_1.a.x >= 83548u, global1.x, global1.x), vec4<bool>(true, any(!vec4<bool>(true, arg_1.c.a.b, arg_0.x, false)), select(true == global1.x, global1.x, all(vec3<bool>(false, global1.x, arg_1.c.a.b))), all(vec4<bool>(global1.x, false, true, false)) || false)), !vec4<bool>(global1.x & (u_input.a.x <= -2147483647i), arg_0.x, global1.x, select(true || global1.x, all(vec3<bool>(global1.x, false, arg_0.x)), global1.x)));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1526f)));
    global1 = !(!(!vec4<bool>(select(false, arg_1.b, true), !arg_1.b, false | arg_1.b, select(true, arg_0.x, arg_0.x))));
    return global2[_wgslsmith_index_u32(arg_1.a.x, 12u)];
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(true, arg_1.x), Struct_3(vec3<u32>(1u, 9302u, 0u), true, Struct_2(Struct_1(vec2<i32>(u_input.a.x, -29264i), true, 1u, arg_0)))))) + -380f), global2[_wgslsmith_index_u32(~(~countOneBits(4294967295u)), 12u)]), -1627f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-852f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -298f) - _wgslsmith_f_op_f32(max(333f, 2237f)))) - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(22594u, 12u)] - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(79386u, 12u)] * 1031f))))), _wgslsmith_div_f32(536f, global2[_wgslsmith_index_u32(countOneBits(1u) << (0u % 32u), 12u)]));
    let var_1 = vec3<bool>(any(vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 68979u, 1u, 6685u), vec4<u32>(96780u, 0u, 24771u, 4294967295u)) >= 137106u, !global1.x, global1.x)), false, arg_1.x);
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(22214u, 1u, 1u, 1u), vec4<u32>(11428u, 50038u, 32671u, 45569u))), ~1u), vec2<u32>(11647u, abs(_wgslsmith_mod_u32(1u, 4294967295u) & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(1u, 1u, 9909u, 10174u)))));
    global2 = array<f32, 12>();
    var var_3 = -1i;
    return Struct_1(~vec2<i32>(u_input.a.x, i32(-1i) * -arg_0.x), !(!any(select(vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, var_1.x, var_1.x), false))), min(103406u, 1u), abs(u_input.a) ^ vec2<i32>(u_input.a.x ^ ~44348i, u_input.a.x));
}

fn func_1() -> vec3<i32> {
    let var_0 = Struct_2(func_2(-u_input.a, global1.yw));
    var var_1 = func_2(var_0.a.a, global1.xw).b;
    let var_2 = reverseBits(~max(~(vec2<u32>(38489u, var_0.a.c) ^ vec2<u32>(1u, 0u)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(var_0.a.c, var_0.a.c), vec2<u32>(var_0.a.c, var_0.a.c), global1.xy), vec2<u32>(var_0.a.c, 0u) & vec2<u32>(93049u, 21195u))));
    let var_3 = vec4<bool>(true, true, !(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a.c, 1u), ~vec2<u32>(var_0.a.c, 4294967295u)) != 28532u), !global1.x);
    return -max(select(reverseBits(~vec3<i32>(2147483647i, -680i, 0i)), max(vec3<i32>(1i, -2207i, 2147483647i) & vec3<i32>(-86863i, 39744i, var_0.a.d.x), vec3<i32>(u_input.a.x, 19188i, -1i) >> (vec3<u32>(25656u, var_2.x, var_2.x) % vec3<u32>(32u))), !select(global1.yxz, vec3<bool>(var_0.a.b, var_0.a.b, global1.x), global1.x)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(30828i, 16881i, var_0.a.d.x) ^ vec3<i32>(40840i, var_0.a.a.x, -51969i), -vec3<i32>(1i, -20263i, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec4<bool>(true, all(!global1.zx), global1.x, global1.x));
    var var_1 = vec2<i32>(~abs(u_input.a.x), u_input.a.x);
    let var_2 = vec3<i32>(reverseBits(u_input.a.x), _wgslsmith_dot_vec3_i32((vec3<i32>(var_1.x, 2147483647i, -41350i) >> (vec3<u32>(1u, 0u, 38264u) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(1u, 25701u, 49600u), vec3<u32>(1u, 5584u, 18791u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, var_1.x, u_input.a.x)) | func_1()), 2147483647i) << (select(max(select(~vec3<u32>(30715u, 4294967295u, 12689u), min(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 0u, 59457u)), all(vec4<bool>(global1.x, global1.x, var_0.x, global1.x))), vec3<u32>(1u, 1u, 1u)), vec3<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 63915u, 1u, 61722u)), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_div_u32(4294967295u, 1u), ~reverseBits(3762u)), select(select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(false, global1.x, true), select(global1.xyx, vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.wwy)), select(global1.wyy, vec3<bool>(var_0.x, true, var_0.x), false), var_0.ywz)) % vec3<u32>(32u));
    global0 = ~firstTrailingBit(2147483647i);
    var_1 = ~vec2<i32>(-(var_1.x >> (35574u % 32u)) & var_2.x, ~(-u_input.a.x));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), Struct_3(~abs(vec3<u32>(83454u, 4294967295u, 13406u)), (u_input.a.x & 0i) > _wgslsmith_mult_i32(0i, -2147483647i), Struct_2(Struct_1(var_2.xz, false, 36349u, vec2<i32>(-26138i, var_1.x)))))), global2[_wgslsmith_index_u32(~1u, 12u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(27504u, 0u)), 12u)])) * global2[_wgslsmith_index_u32(max(~6875u, ~1u), 12u)]), 392f);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-1016f)), var_3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1000f)))))), abs(abs(~vec4<i32>(u_input.a.x, u_input.a.x, var_2.x, u_input.a.x))), ~1i, func_2(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_2.x, -2147483647i, var_2.x), vec4<i32>(-24179i, 65903i, 7018i, var_2.x)), 16986i & -u_input.a.x), !select(vec2<bool>(var_0.x, false), !global1.xy, !global1.wz)).a.x);
}

