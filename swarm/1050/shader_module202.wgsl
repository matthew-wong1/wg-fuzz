struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec3<f32>(2353f, -778f, -826f), -897f)), Struct_2(Struct_1(vec3<f32>(-513f, 604f, 1476f), 372f)), Struct_2(Struct_1(vec3<f32>(652f, 289f, -674f), -243f)), Struct_2(Struct_1(vec3<f32>(297f, 641f, -1186f), 1000f)), Struct_2(Struct_1(vec3<f32>(-1181f, -209f, -1000f), 1241f)), Struct_2(Struct_1(vec3<f32>(-1287f, 909f, -498f), 149f)), Struct_2(Struct_1(vec3<f32>(-687f, -987f, -1182f), 1033f)), Struct_2(Struct_1(vec3<f32>(-1542f, -348f, 748f), -1128f)), Struct_2(Struct_1(vec3<f32>(-432f, -1463f, 914f), -583f)), Struct_2(Struct_1(vec3<f32>(-1000f, 625f, 622f), -1495f)), Struct_2(Struct_1(vec3<f32>(-992f, 1220f, 868f), 1528f)), Struct_2(Struct_1(vec3<f32>(-1000f, 1559f, 385f), -898f)), Struct_2(Struct_1(vec3<f32>(1151f, 1200f, 662f), -1792f)));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: u32) -> vec4<u32> {
    var var_0 = false;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_1, 839f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1000f, arg_1)))), 1f));
    global0 = select(abs(0i), u_input.b.x, any(!vec2<bool>(true, select(false, true, false))));
    var var_2 = ~(-1i);
    return reverseBits(firstLeadingBit(_wgslsmith_add_vec4_u32(~(vec4<u32>(0u, 20255u, 8897u, 1u) >> (vec4<u32>(arg_2, 1u, 0u, 1u) % vec4<u32>(32u))), vec4<u32>(countOneBits(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, arg_2), vec3<u32>(u_input.a, arg_2, u_input.a)), ~arg_2, ~4294967295u))));
}

fn func_2() -> bool {
    var var_0 = ~(u_input.b << (func_3(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -592f), 20165u) % vec4<u32>(32u)));
    global0 = var_0.x;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -347f), -1285f, true))), -119f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(597f + 1008f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2823f) * -746f), _wgslsmith_f_op_f32(f32(-1f) * -625f))), any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true))))), _wgslsmith_f_op_f32(-321f - 577f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-622f))))));
    global1 = array<Struct_2, 13>();
    var var_2 = select(select(!vec4<bool>(false, true, all(vec2<bool>(true, true)), any(vec3<bool>(true, false, false))), select(select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), !any(vec2<bool>(false, true))), var_0.x != -2147483647i), select(select(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true), vec4<bool>(false, all(vec3<bool>(false, true, false)), true, 1u >= u_input.a), all(vec2<bool>(true, true))), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true))), !any(vec2<bool>(true, true))), all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    return var_2.x | select(true & (~var_0.x > _wgslsmith_dot_vec3_i32(var_0.wxy, var_0.www)), true, true);
}

fn func_1() -> Struct_1 {
    global0 = u_input.b.x;
    let var_0 = (true || func_2()) && any(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), vec2<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(false, false)))));
    var var_1 = ~vec3<u32>(~4294967295u, ~15402u, 51638u) << (vec3<u32>(50999u, 20722u, 8705u | u_input.a) % vec3<u32>(32u));
    let var_2 = global1[_wgslsmith_index_u32(1u, 13u)];
    var var_3 = _wgslsmith_add_vec2_u32(var_1.xz, min(var_1.yx, ~(~(~var_1.yy))));
    return var_2.a;
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = arg_0;
    let var_1 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), false), !vec3<bool>(true, any(vec3<bool>(true, true, true)), 1u >= select(u_input.a, 1u, true)), vec3<bool>(any(vec3<bool>(true, true, true)) || all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false)), !(4294967295u != (u_input.a | 4294967295u)), true));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-117f)) - func_1().a.x) - _wgslsmith_f_op_f32(step(var_0.a.x, -1000f))), -540f, _wgslsmith_f_op_f32(select(var_0.a.x, var_0.b, 1u < (u_input.a << (u_input.a % 32u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(f32(-1f) * -2201f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b + -128f)))))));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(~u_input.a)) << ((1u << (countOneBits(abs(u_input.a)) % 32u)) % 32u), firstTrailingBit(~(30599u & ~u_input.a))), 13u)];
    let var_4 = func_1().a.x;
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-292f, var_2.b, var_2.b, -1249f), vec4<f32>(961f, arg_0.b, var_2.a.x, var_0.b)))))) + vec4<f32>(-266f, -437f, _wgslsmith_f_op_f32(f32(-1f) * -1019f), var_4)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(abs(-1000f)), arg_0.a.x, _wgslsmith_f_op_f32(ceil(var_4))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.b, -163f, -1691f, 214f) * vec4<f32>(var_2.b, -409f, var_2.a.x, 368f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1338f, var_0.a.x, -773f, var_3.a.b), vec4<f32>(-253f, var_3.a.a.x, var_4, -429f)))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), 523f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1713f))), arg_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_4(func_1())))));
    global0 = ~1i;
    var var_1 = var_0.x;
    let var_2 = u_input.a;
    let var_3 = global1[_wgslsmith_index_u32(min(~4294967295u, ~abs(var_2) >> (u_input.a % 32u)), 13u)];
    let var_4 = max(_wgslsmith_div_vec3_u32(~func_3(-192f, -367f, _wgslsmith_clamp_u32(4294967295u, 56248u, 22735u)).wwz, vec3<u32>(u_input.a, 0u, 1u)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(var_2 | var_2, ~var_2, _wgslsmith_sub_u32(u_input.a, u_input.a)), firstTrailingBit(vec3<u32>(116932u, 102517u, 1u)) & vec3<u32>(var_2, 56110u, 42564u), vec3<bool>(true, true, true)), vec3<u32>(u_input.a, 137041u, var_2)));
    var var_5 = all(vec4<bool>(true, true, true, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(var_4.xx, (_wgslsmith_clamp_vec2_u32(var_4.zy, vec2<u32>(12199u, var_2), var_4.yz) ^ vec2<u32>(var_2, u_input.a)) & _wgslsmith_mod_vec2_u32(~var_4.yx, vec2<u32>(u_input.a, 0u))), ~(abs(max(vec4<u32>(var_4.x, var_4.x, var_2, var_4.x), vec4<u32>(var_4.x, 4294967295u, 71918u, 31498u))) | ~(vec4<u32>(4294967295u, 4294967295u, var_2, var_4.x) >> (vec4<u32>(1u, 50980u, 29622u, var_2) % vec4<u32>(32u)))), vec3<u32>(var_4.x, var_4.x, 4294967295u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.a.a.x), -1681f)))));
}

