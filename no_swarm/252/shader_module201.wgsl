struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 25747u);

var<private> global1: bool = true;

var<private> global2: array<f32, 28> = array<f32, 28>(972f, -1248f, -524f, 1000f, -106f, -788f, 206f, -1285f, 586f, -355f, -1369f, 369f, -1648f, 1000f, -1776f, -983f, -358f, 1400f, -1290f, 757f, -537f, 514f, 206f, 373f, -522f, 626f, -1065f, -1044f);

var<private> global3: Struct_2 = Struct_2(Struct_1(true, 0i, vec3<bool>(true, true, true), -577f), 875f, 41991u, vec4<u32>(54625u, 4294967295u, 2479u, 6131u), 1000f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    var var_0 = !select(select(vec2<bool>(global3.a.c.x, global3.a.c.x & false), !select(vec2<bool>(false, global3.a.a), vec2<bool>(global3.a.c.x, true), global3.a.c.zz), select(!global3.a.c.xx, vec2<bool>(false, global3.a.c.x), !global3.a.c.zy)), select(select(!vec2<bool>(global3.a.a, true), global3.a.c.zx, global3.a.c.yz), vec2<bool>(true, global3.a.c.x), global3.a.c.yz), vec2<bool>(false, global3.a.c.x & (global2[_wgslsmith_index_u32(36961u, 28u)] < -123f)));
    global0 = vec2<u32>(14197u >> (_wgslsmith_mod_u32(~arg_0, ~arg_0) % 32u), ~(~44273u) | ~_wgslsmith_div_u32(15017u, arg_0)) & abs(vec2<u32>(_wgslsmith_mod_u32(u_input.b & 154985u, global0.x), ~(~7939u)));
    let var_1 = Struct_1(select(any(vec3<bool>(true, true, true)), global3.a.a, all(vec3<bool>(false, false, true))) | true, firstTrailingBit(-(i32(-1i) * -27270i)), vec3<bool>(var_0.x, false, var_0.x), -1433f);
    let var_2 = !select(vec4<bool>(select(any(var_1.c.yz), any(vec4<bool>(true, false, var_1.a, var_0.x)), false), var_0.x, any(vec3<bool>(var_0.x, var_1.a, var_0.x)) | (false & var_0.x), false), !(!vec4<bool>(false, false, true, var_0.x)), vec4<bool>(false, !any(var_1.c.xz), global2[_wgslsmith_index_u32(global0.x, 28u)] != var_1.d, true));
    let var_3 = Struct_2(global3.a, 657f, 0u, vec4<u32>(11289u, _wgslsmith_sub_u32(global3.c, _wgslsmith_mult_u32(_wgslsmith_sub_u32(global3.d.x, 33037u), reverseBits(global3.d.x))), 0u, global0.x), var_1.d);
    return firstLeadingBit(max(~max(abs(global3.d), global3.d << (global3.d % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(39476u, 0u, arg_0, 4294967295u), vec4<u32>(1u, var_3.c, 30568u, 4294967295u)) & arg_0, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(63453u, global0.x, 0u)), global3.d.yww), var_3.c, ~min(4294967295u, 0u))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global0 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_2.d.x, ~47445u, u_input.a ^ arg_0.c, global3.d.x), _wgslsmith_div_vec4_u32(~arg_0.d, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.x, global0.x, 28817u), arg_2.d)), func_3(_wgslsmith_div_u32(1121u, u_input.b))), ~(~arg_2.d ^ global3.d)), global0.x);
    let var_0 = Struct_2(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -792f))), arg_0.c, arg_1.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1352f * _wgslsmith_f_op_f32(-1296f * global3.e)) * _wgslsmith_f_op_f32(-global3.e)))));
    global2 = array<f32, 28>();
    let var_1 = vec3<i32>(_wgslsmith_add_i32(countOneBits(_wgslsmith_mult_i32(-arg_1.a.b, max(0i, arg_2.a.b))), global3.a.b << (~(var_0.d.x << (1u % 32u)) % 32u)), -10423i, _wgslsmith_dot_vec4_i32(~(~(-vec4<i32>(u_input.c.x, -2147483647i, -2677i, 2147483647i))), vec4<i32>(var_0.a.b | arg_2.a.b, reverseBits(i32(-1i) * -1i), global3.a.b, -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.b, 0i, -47093i), vec3<i32>(0i, u_input.c.x, 2942i)))));
    var var_2 = vec4<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.d) + _wgslsmith_f_op_f32(-arg_2.a.d)) <= arg_2.b), arg_2.a.a, true, true & select(any(vec3<bool>(global3.a.a, false, true)), select(true, true, false) | true, !any(vec4<bool>(true, true, true, true))));
    return 4294967295u;
}

fn func_1() -> Struct_1 {
    global3 = Struct_2(Struct_1(global3.a.c.x, reverseBits(global3.a.b), global3.a.c, global3.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.e)))), global3.d.x, vec4<u32>(4294967295u, _wgslsmith_sub_u32(~66080u, 11935u) >> (~_wgslsmith_dot_vec3_u32(global3.d.wxy, global3.d.zxx) % 32u), ~(countOneBits(57465u) | func_2(Struct_2(Struct_1(false, 1i, global3.a.c, global3.e), -745f, 1164u, vec4<u32>(u_input.b, 4294967295u, u_input.a, global0.x), -540f), Struct_2(Struct_1(global3.a.c.x, 30490i, vec3<bool>(true, true, global3.a.a), global3.b), -757f, u_input.b, vec4<u32>(1u, 18670u, 1u, 1u), -446f), Struct_2(Struct_1(global3.a.c.x, 0i, vec3<bool>(true, global3.a.c.x, global3.a.c.x), global2[_wgslsmith_index_u32(global3.d.x, 28u)]), global3.a.d, 75901u, global3.d, 290f))), abs(83703u)), 187f);
    let var_0 = select(global3.a.c.zy, vec2<bool>(true, global3.a.a), any(vec4<bool>(all(!vec4<bool>(false, false, global3.a.a, global3.a.c.x)), global3.a.c.x, !all(vec4<bool>(true, global3.a.a, global3.a.c.x, true)), true)));
    global3 = Struct_2(Struct_1(global3.a.a, -29260i, select(!global3.a.c, vec3<bool>(all(global3.a.c), !global3.a.c.x, !global3.a.a), min(u_input.c.x, 21631i) > _wgslsmith_mult_i32(1i, 294i)), global2[_wgslsmith_index_u32(~(~28906u), 28u)]), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(66078u, 28u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.b, 28u)], global3.e))), _wgslsmith_f_op_f32(global3.e + -655f))), 4294967295u, global3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.d.yw, global3.d.xw), 28u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(37646u, 28u)] - global2[_wgslsmith_index_u32(73589u, 28u)])), all(var_0)))));
    let var_1 = Struct_2(Struct_1(all(!(!vec4<bool>(true, false, var_0.x, var_0.x))), global3.a.b, select(select(!vec3<bool>(false, false, global3.a.a), !vec3<bool>(var_0.x, global3.a.c.x, false), global3.a.c), vec3<bool>(true, global3.a.a, global3.a.d > -1002f), vec3<bool>(true, false, false)), global3.b), -1355f, reverseBits(abs(_wgslsmith_mult_u32(39489u, 1u ^ global0.x))), _wgslsmith_clamp_vec4_u32(global3.d & (vec4<u32>(global0.x, global3.d.x, global3.d.x, 49619u) << ((global3.d & global3.d) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(12531u, 0u, 36564u, global0.x), global3.d), vec4<u32>((global3.c ^ 0u) << (~30183u % 32u), 63732u, 18869u, firstTrailingBit(abs(global3.d.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1653f) + 1f), _wgslsmith_div_f32(-817f, _wgslsmith_f_op_f32(f32(-1f) * -1475f)))), global2[_wgslsmith_index_u32(global0.x, 28u)], all(!global3.a.c) && true)));
    var var_2 = !(!vec4<bool>(var_0.x, any(vec2<bool>(true, true)), !var_0.x, true != all(vec2<bool>(var_1.a.c.x, true))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!global3.a.c.yx));
    var var_1 = func_1();
    let var_2 = -200f;
    let var_3 = var_0;
    var_1 = func_1();
    global1 = true || func_1().c.x;
    var_1 = global3.a;
    let var_4 = u_input.c.yx;
    let var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2 - 939f))), 210f)), -964f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a, 28u)], var_2), false)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(28866u, 28u)], -624f, var_1.d, 1446f), vec4<f32>(global3.a.d, 701f, global3.a.d, var_2)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1652f, var_2, 322f, global2[_wgslsmith_index_u32(global3.c, 28u)])))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -579f, var_1.d, global2[_wgslsmith_index_u32(global3.c, 28u)]))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.d, -1i, var_1.b), 261f, vec2<i32>(-32269i, _wgslsmith_mod_i32(~var_1.b & 1i, ~(-39616i))), 37137u, global0.x);
}

