struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: Struct_3 = Struct_3(vec3<i32>(i32(-2147483648), 43784i, 36640i), true, vec2<u32>(42332u, 10916u), vec4<i32>(2323i, -1i, i32(-2147483648), -180i), Struct_2(false, true));

var<private> global2: vec2<i32> = vec2<i32>(-72967i, -31231i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    let var_0 = -21349i;
    var var_1 = ~_wgslsmith_mod_vec4_i32(-global1.d, global1.d >> (((vec4<u32>(35830u, global1.c.x, u_input.c, 4294967295u) << (vec4<u32>(57034u, 0u, u_input.c, global1.c.x) % vec4<u32>(32u))) ^ (vec4<u32>(u_input.a.x, 12314u, 40057u, 0u) & vec4<u32>(u_input.a.x, global1.c.x, global1.c.x, 40604u))) % vec4<u32>(32u)));
    var var_2 = vec2<u32>(min(_wgslsmith_dot_vec3_u32(min(min(vec3<u32>(8538u, u_input.c, u_input.a.x), vec3<u32>(global1.c.x, 0u, u_input.a.x)), vec3<u32>(global1.c.x, 16240u, 51917u)), ~(~vec3<u32>(2272u, global1.c.x, 4294967295u))), ~4294967295u), _wgslsmith_add_u32(u_input.a.x, firstTrailingBit(u_input.a.x)));
    var var_3 = true;
    var_2 = vec2<u32>(~global1.c.x, ~(~_wgslsmith_sub_u32(max(var_2.x, u_input.a.x), u_input.c)));
    return select(select(vec2<bool>(any(select(vec2<bool>(false, global1.e.a), vec2<bool>(true, global1.b), vec2<bool>(false, true))), global1.e.b), vec2<bool>(!any(vec2<bool>(true, false)), select(false, false, true)), true), vec2<bool>(select(any(vec2<bool>(true, global1.b)), true, select(global1.b, 91833u == u_input.a.x, global1.e.a)), !(!(!global1.e.b))), true);
}

fn func_2(arg_0: Struct_1) -> i32 {
    global2 = _wgslsmith_div_vec2_i32(u_input.b.zz, _wgslsmith_mult_vec2_i32(vec2<i32>(~(-1035i), u_input.b.x) >> (global1.c % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(0i, u_input.b.x, global2.x), -1i))));
    let var_0 = Struct_3(vec3<i32>(_wgslsmith_mod_i32(i32(-1i) * -7469i, _wgslsmith_mod_i32(global2.x, 2147483647i)) | 2147483647i, ~(-2147483647i), max(global2.x, -32714i)), all(select(!vec2<bool>(false, arg_0.b), vec2<bool>(true, true), func_3(154f))), arg_0.c.zx, global1.d, Struct_2(func_3(arg_0.a.x).x, !func_3(_wgslsmith_f_op_f32(-arg_0.a.x)).x));
    global0 = array<f32, 32>();
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -752f), -524f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(527f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(firstTrailingBit(13042u), 32u)], -690f)))));
    let var_2 = var_0;
    return 1845i;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.yz))), global1.b, _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(1u, u_input.a.x << (0u % 32u), countOneBits(21615u))), max(vec3<u32>(4294967295u, countOneBits(u_input.a.x), u_input.c), abs(min(vec3<u32>(global1.c.x, 1u, 4294967295u), vec3<u32>(global1.c.x, global1.c.x, u_input.a.x)))), ~vec3<u32>(0u, countOneBits(15531u), 0u)));
    var var_1 = Struct_3(-(~arg_1), false & (any(!vec4<bool>(true, true, var_0.b, false)) != (any(vec4<bool>(false, global1.b, false, true)) && true)), u_input.a, ~(global1.d & _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(2147483647i, arg_1.x, -24869i, -7832i)), -global1.d)), global1.e);
    let var_2 = Struct_3(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, u_input.b.x), _wgslsmith_dot_vec3_i32(arg_1, u_input.b), -24234i), ~var_1.d.x, -(-1i << (var_0.c.x % 32u))), -global1.d.yzw), any(select(!vec2<bool>(true, var_1.e.a), func_3(-916f), vec2<bool>(var_1.e.a, !var_1.e.a))), vec2<u32>(~_wgslsmith_add_u32(21289u, ~var_0.c.x), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.c, 0u, 4294967295u), ~vec4<u32>(var_1.c.x, u_input.c, global1.c.x, var_1.c.x))), var_1.d, Struct_2(any(vec4<bool>(var_1.b, true, var_1.e.a | false, arg_0.x < arg_0.x)), true));
    let var_3 = vec3<i32>(arg_1.x, -global2.x, ~arg_1.x << (~u_input.a.x % 32u));
    let var_4 = var_2;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.a.x), all(vec2<bool>(false, true)), vec3<u32>(var_1.c.x, _wgslsmith_div_u32(var_0.c.x, 17701u), ~(~_wgslsmith_sub_u32(1u, global1.c.x))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: vec3<bool>) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 32u)]), global0[_wgslsmith_index_u32(27950u, 32u)]) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1016f, -280f)), vec2<f32>(global0[_wgslsmith_index_u32(arg_0.c.x, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(arg_0.c.x, 32u)])))), 1020f), !select(select(arg_3.xy, arg_3.zx, true), select(vec2<bool>(arg_0.b, false), vec2<bool>(arg_3.x, false), arg_3.yz), !arg_1.b))), !(!(any(vec3<bool>(arg_0.b, global1.b, false)) && !arg_1.b)), vec3<u32>(u_input.c, 70759u, reverseBits(~select(global1.c.x, global1.c.x, arg_1.b))));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(662f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_div_f32(-1126f, -1000f))), _wgslsmith_mult_vec3_i32(global1.d.zzz, vec3<i32>(min(countOneBits(global2.x), -arg_2), 0i, func_2(Struct_1(vec2<f32>(-1000f, -884f), true, vec3<u32>(global1.c.x, var_0.c.x, arg_0.c.x))))));
    let var_2 = vec2<u32>(arg_0.c.x, 55671u);
    let var_3 = max(select(_wgslsmith_add_i32(-arg_2, abs(48461i ^ arg_0.a.x)), min(u_input.b.x, _wgslsmith_mod_i32(global1.a.x, 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1086f * var_0.a.x) * _wgslsmith_f_op_f32(-var_1.a.x)) <= _wgslsmith_f_op_f32(f32(-1f) * -529f)), ~arg_2);
    global2 = vec2<i32>(-(~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.a.yx, vec2<i32>(2147483647i, arg_2)), vec2<i32>(14757i, 1i))), arg_0.d.x);
    return abs(abs(u_input.b.xz));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = (((u_input.b.xz & func_1(Struct_3(vec3<i32>(global1.a.x, -1i, -1i), global1.b, global1.c, global1.d, global1.e), global1.e, 5036i, vec3<bool>(global1.b, global1.b, true))) | global1.a.xz) ^ global1.d.xy) ^ firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.b.yy | global1.d.yw, min(vec2<i32>(u_input.b.x, -37030i), vec2<i32>(global1.a.x, 0i))) | global1.d.zx);
    var var_0 = global1.e;
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2235f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(52780u, 32u)] - global0[_wgslsmith_index_u32(u_input.c, 32u)])) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 32u)] + -1770f)))), global0[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-849f, global0[_wgslsmith_index_u32(global1.c.x, 32u)], -1889f) - vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], -437f, global0[_wgslsmith_index_u32(global1.c.x, 32u)]))), vec3<i32>(-30729i, min(0i, 1i), i32(-1i) * -1i)).c.x, 32u)])));
    var var_2 = select(select(vec3<bool>(true || any(vec2<bool>(global1.e.a, true)), (var_0.a && true) && true, _wgslsmith_sub_i32(global2.x, -75597i) == _wgslsmith_dot_vec4_i32(global1.d, vec4<i32>(1i, 23225i, global2.x, u_input.b.x))), !select(!vec3<bool>(false, global1.e.a, global1.b), !vec3<bool>(var_0.b, true, false), vec3<bool>(true, true, true)), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1, var_1))), vec3<i32>(global2.x, global2.x, -1i)).b), vec3<bool>(any(vec4<bool>(true, any(vec3<bool>(false, global1.b, false)), true, true)), true == var_0.b, false), global1.b);
    var_0 = Struct_2(!((u_input.b.x == global1.d.x) & false) | !(!(global1.c.x < global1.c.x)), global1.e.b);
    global2 = -min(func_1(Struct_3(firstTrailingBit(global1.a), !global1.b, _wgslsmith_add_vec2_u32(global1.c, global1.c), -global1.d, Struct_2(var_0.b, var_0.a)), global1.e, _wgslsmith_mod_i32(~global2.x, ~1i), !(!vec3<bool>(true, true, var_0.a))), firstLeadingBit(-(vec2<i32>(global2.x, -13523i) >> (vec2<u32>(51935u, 4294967295u) % vec2<u32>(32u)))));
    var var_3 = vec2<u32>(reverseBits(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(26774u, global1.c.x), select(0u, func_4(var_1, vec3<i32>(global2.x, -17573i, -12395i)).c.x, global1.e.a))), 105643u);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1108f), global0[_wgslsmith_index_u32(4294967295u, 32u)], -105f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(17504u, 32u)] * -276f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, var_1.x, -125f, global0[_wgslsmith_index_u32(global1.c.x, 32u)]), vec4<f32>(global0[_wgslsmith_index_u32(13132u, 32u)], 1683f, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1607f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 1140f)), !vec4<bool>(global1.b, var_2.x, true, global1.e.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 345f, -1419f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.c);
}

