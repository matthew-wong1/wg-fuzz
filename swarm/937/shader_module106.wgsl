struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 56934u, 113051u, 48215u);

var<private> global1: Struct_2 = Struct_2(1u, vec4<bool>(true, true, true, true), vec4<i32>(2147483647i, -37837i, 0i, -17164i));

var<private> global2: Struct_2 = Struct_2(27670u, vec4<bool>(true, false, true, true), vec4<i32>(-1i, -1785i, i32(-2147483648), 0i));

var<private> global3: array<f32, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> Struct_2 {
    global3 = array<f32, 22>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(160f * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 22u)])) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(2461f)), 623f)));
    return Struct_2(_wgslsmith_div_u32(0u, max(3655u, _wgslsmith_add_u32(46931u, u_input.b.x)) << (~global1.a % 32u)), select(vec4<bool>(all(vec2<bool>(global1.b.x, false)), !(!global2.b.x), true, global2.b.x), vec4<bool>(global1.b.x, select(global1.b.x, all(global1.b.yy), u_input.a.x <= global1.c.x), ~17425u == _wgslsmith_sub_u32(4294967295u, global0.x), any(!global2.b.xzx)), global2.b.x), ~(vec4<i32>(global1.c.x ^ 9824i, max(-12711i, -1i), -39753i, _wgslsmith_dot_vec4_i32(vec4<i32>(-40515i, global1.c.x, -24505i, -46509i), vec4<i32>(50401i, u_input.a.x, 26756i, -2147483647i))) | reverseBits(vec4<i32>(-22085i, 27017i, u_input.a.x, -1i) << (vec4<u32>(4294967295u, global1.a, global1.a, global2.a) % vec4<u32>(32u)))));
}

fn func_3(arg_0: f32, arg_1: bool) -> vec4<bool> {
    var var_0 = select(~global0.x, 0u, any(func_1().b.xwz) || (global1.b.x | (global2.b.x || true)));
    var_0 = u_input.b.x;
    var var_1 = func_1();
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_0, -315f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(79325u, 22u)]))), global3[_wgslsmith_index_u32(global0.x | 0u, 22u)]), -global2.c.wyy);
    var var_3 = vec2<bool>(true, true);
    return vec4<bool>((39972i > var_1.c.x) | false, true, select(select(all(vec3<bool>(false, true, global1.b.x)), true, func_1().b.x), global2.b.x, any(func_1().b)), var_3.x);
}

fn func_2(arg_0: f32, arg_1: u32) -> StorageBuffer {
    var var_0 = Struct_2(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_sub_u32(15154u, global2.a)), firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x, arg_1), global1.a))), global1.b, vec4<i32>(-15381i, -global1.c.x, global1.c.x, global2.c.x));
    global3 = array<f32, 22>();
    var_0 = Struct_2(countOneBits(global1.a), !select(func_3(global3[_wgslsmith_index_u32(0u >> (u_input.b.x % 32u), 22u)], true), !global2.b, global2.b), global2.c);
    let var_1 = vec4<f32>(_wgslsmith_div_f32(-705f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_0))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-504f * _wgslsmith_f_op_f32(round(arg_0))), 935f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) * _wgslsmith_f_op_f32(floor(arg_0))))) * global3[_wgslsmith_index_u32(global0.x << (66555u % 32u), 22u)]), _wgslsmith_f_op_f32(1353f - 451f));
    var var_2 = 216f;
    return StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(global2.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.a, 36298u), global0.yyz), 15698u, select(0u, u_input.b.x, var_0.b.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(5854u, u_input.b.x, 105989u, u_input.b.x) ^ vec4<u32>(57284u, 1u, arg_1, 23229u), abs(vec4<u32>(var_0.a, 38477u, u_input.b.x, 0u)))) >> (~abs(vec4<u32>(1u, 1u, 1u, 0u) << (vec4<u32>(88160u, 1u, 1u, global2.a) % vec4<u32>(32u))) % vec4<u32>(32u)), 38818i, vec2<f32>(-386f, var_1.x), global0.x, ~(-vec2<i32>(global2.c.x, 3365i)) ^ ~var_0.c.wx);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(~u_input.b.x, 0u), _wgslsmith_mod_u32(global2.a & 58973u, _wgslsmith_mod_u32(46466u, 4294967295u))), abs(global2.a), ~global2.a, global0.x));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(var_0.x, 22u)], global3[_wgslsmith_index_u32(40418u, 22u)], global3[_wgslsmith_index_u32(global1.a, 22u)]))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 22u)], -541f, global3[_wgslsmith_index_u32(u_input.b.x, 22u)]))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-223f, 102f, -1412f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(70049u, 22u)], -1450f, -894f)))))), u_input.a.wxy);
    var var_2 = func_1().c.x;
    let x = u_input.a;
    s_output = func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-614f + -1450f), var_1.a.x)))), global0.x);
}

