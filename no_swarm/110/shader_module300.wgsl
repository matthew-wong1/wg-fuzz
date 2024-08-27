struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(vec4<bool>(true, true, false, true)), Struct_4(vec4<bool>(false, true, true, true)), Struct_4(vec4<bool>(false, false, true, false)), Struct_4(vec4<bool>(true, true, false, false)), Struct_4(vec4<bool>(false, false, true, false)), Struct_4(vec4<bool>(false, true, true, true)), Struct_4(vec4<bool>(false, false, true, true)), Struct_4(vec4<bool>(true, false, true, true)), Struct_4(vec4<bool>(false, true, false, true)), Struct_4(vec4<bool>(true, false, false, true)), Struct_4(vec4<bool>(true, false, false, false)), Struct_4(vec4<bool>(true, true, false, false)), Struct_4(vec4<bool>(false, false, true, true)));

var<private> global1: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(i32(-2147483648), 4049i, 2147483647i, 28921i), vec4<i32>(0i, 10172i, 7694i, -32564i), vec4<i32>(1i, -1i, i32(-2147483648), -2253i), vec4<i32>(1i, -1i, -43584i, i32(-2147483648)), vec4<i32>(-9503i, -1i, 14142i, 2147483647i), vec4<i32>(-1i, -1i, -1i, 1i), vec4<i32>(2147483647i, -47850i, -65739i, 8921i), vec4<i32>(-7752i, -1i, 1i, 34118i), vec4<i32>(-1i, -64350i, -27072i, -1i), vec4<i32>(-25517i, 1i, 1i, 0i), vec4<i32>(-1i, -32592i, i32(-2147483648), 41072i), vec4<i32>(13868i, -4799i, -5123i, 0i), vec4<i32>(-9939i, 30217i, 1i, 0i), vec4<i32>(-7725i, 54490i, -4096i, 0i), vec4<i32>(-411i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(0i, -1i, i32(-2147483648), 5819i), vec4<i32>(28334i, 1i, -41961i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 40428i, 19533i, i32(-2147483648)), vec4<i32>(13398i, 2147483647i, 27463i, 2147483647i), vec4<i32>(-1i, 2147483647i, 1i, 1i));

var<private> global2: array<i32, 6>;

var<private> global3: u32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = Struct_5(vec3<bool>(true, _wgslsmith_mod_i32(i32(-1i) * -4465i, _wgslsmith_mod_i32(-2147483647i, u_input.c)) >= 1i, all(arg_0.yz)), u_input.a.yx, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), Struct_2(-2147483647i, abs(4294967295u), global2[_wgslsmith_index_u32(u_input.b, 6u)], abs(~vec4<u32>(u_input.b, 0u, 22483u, u_input.b)))));
    let var_1 = Struct_5(var_0.a, ~vec2<i32>(global2[_wgslsmith_index_u32(u_input.b | ~19059u, 6u)], var_0.b.x), var_0.c);
    global1 = array<vec4<i32>, 20>();
    var_0 = Struct_5(!(!arg_0), vec2<i32>(2147483647i, var_0.b.x), Struct_3(var_0.c.a, var_1.c.b));
    var var_2 = var_0.c.b;
    return var_1.c.a.x;
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f - -453f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -307f)))))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4015u, u_input.b, ~select(42311u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(u_input.b, 0u) ^ vec2<u32>(25036u, u_input.b)), !(arg_0.a.x | false))), 13u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(573f * _wgslsmith_div_f32(2146f, 1233f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-166f * 304f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(527f + var_0) * 1000f))));
    var var_3 = vec3<bool>(any(vec2<bool>(true | arg_1, true)) | true, max(abs(global2[_wgslsmith_index_u32(1u, 6u)]), -40236i) >= firstTrailingBit(u_input.c), _wgslsmith_f_op_f32(func_3(!vec3<bool>(arg_0.a.x, arg_2, false))) >= var_0);
    global2 = array<i32, 6>();
    return min(vec4<u32>(firstTrailingBit(abs(~u_input.b)), 33673u, ~(~(~u_input.b)), ~abs(u_input.b)), vec4<u32>(0u, ~reverseBits(u_input.b & 0u), 1u, ~15134u));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: Struct_4) -> Struct_3 {
    let var_0 = Struct_2(2091i ^ _wgslsmith_div_i32(global2[_wgslsmith_index_u32(4294967295u, 6u)], ~(-u_input.a.x)), abs(_wgslsmith_mod_u32(min(~69185u, 43942u), ~arg_2.x)), -31134i, ~(~countOneBits(vec4<u32>(59971u, arg_2.x, 31374u, u_input.b)) << ((func_2(Struct_4(vec4<bool>(false, arg_3.a.x, arg_1.a.x, arg_1.a.x)), false, arg_3.a.x) ^ abs(vec4<u32>(4294967295u, arg_0.b, arg_2.x, 0u))) % vec4<u32>(32u))));
    let var_1 = -1i;
    let var_2 = abs(var_0.d.wyx);
    var var_3 = _wgslsmith_f_op_f32(func_3(!select(arg_3.a.yxz, select(select(vec3<bool>(false, arg_1.a.x, arg_1.a.x), arg_1.a.xxz, arg_3.a.wzx), select(arg_3.a.zxz, vec3<bool>(false, arg_3.a.x, arg_3.a.x), true), any(arg_3.a.zxw)), select(arg_3.a.zxy, arg_1.a.zwz, select(arg_3.a.wyx, vec3<bool>(arg_1.a.x, false, true), true)))));
    let var_4 = Struct_5(!(!select(arg_3.a.wwy, arg_3.a.zww, vec3<bool>(arg_3.a.x, true, true))), max(-vec2<i32>(2147483647i, ~var_0.a), _wgslsmith_sub_vec2_i32(-vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(arg_2.x, 6u)]), u_input.a.yy)), Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-650f, 1481f, 1501f))), vec3<f32>(-236f, _wgslsmith_f_op_f32(-187f - -897f), _wgslsmith_f_op_f32(-1000f + 317f))), Struct_2((global2[_wgslsmith_index_u32(8128u, 6u)] >> (0u % 32u)) ^ (arg_0.a >> (0u % 32u)), abs(reverseBits(var_2.x)), -var_0.a, _wgslsmith_mod_vec4_u32(~vec4<u32>(72779u, 4294967295u, 4294967295u, 4294967295u), ~vec4<u32>(19218u, 0u, 3146u, arg_2.x)))));
    return Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_4.c.a + _wgslsmith_f_op_vec3_f32(-var_4.c.a)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-1104f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1768f)), var_4.c.a.x)), arg_0);
}

fn func_4(arg_0: Struct_3) -> vec3<i32> {
    let var_0 = ~arg_0.b.b;
    global0 = array<Struct_4, 13>();
    let var_1 = select(arg_0.b.d, ~vec4<u32>(var_0, ~u_input.b, 20095u, 116865u) & ~(arg_0.b.d >> (vec4<u32>(40488u, 4294967295u, arg_0.b.d.x, arg_0.b.b) % vec4<u32>(32u))), any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), true)));
    let var_2 = false;
    var var_3 = !vec2<bool>(var_2, var_2);
    return -vec3<i32>(abs(1i), 24559i, _wgslsmith_mult_i32(arg_0.b.c, _wgslsmith_mod_i32(2147483647i, 31503i)) << (~u_input.b % 32u));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<i32>) -> Struct_5 {
    global3 = abs(4294967295u) >> (reverseBits(~(~_wgslsmith_div_u32(u_input.b, 0u))) % 32u);
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, func_2(Struct_4(vec4<bool>(true, true, true, true)), true, all(vec2<bool>(true, true))).x >> ((_wgslsmith_sub_u32(u_input.b, ~58549u) >> ((34987u ^ u_input.b) % 32u)) % 32u)), 13u)];
    var var_1 = arg_0;
    global1 = array<vec4<i32>, 20>();
    var_0 = Struct_4(var_0.a);
    return Struct_5(!(!vec3<bool>(false, any(var_0.a.zzw), u_input.b <= 132474u)), vec2<i32>(-1i) * -vec2<i32>(firstLeadingBit(11964i), -arg_1.x), func_1(Struct_2(u_input.c, u_input.b, 1366i, ~(vec4<u32>(1u, 1u, u_input.b, u_input.b) << (vec4<u32>(4294967295u, u_input.b, 37000u, u_input.b) % vec4<u32>(32u)))), global0[_wgslsmith_index_u32(~u_input.b, 13u)], vec3<u32>(u_input.b, 4294967295u, u_input.b), global0[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(u_input.b, u_input.b, 4294967295u) << (func_2(global0[_wgslsmith_index_u32(u_input.b, 13u)], var_0.a.x, true).x % 32u), ~(~u_input.b), true), 13u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 20>();
    var var_0 = true || any(vec4<bool>(true, true, true, true));
    var var_1 = func_5(vec2<f32>(-604f, 341f), min(func_4(func_1(Struct_2(0i, u_input.b, 30789i, vec4<u32>(u_input.b, 33388u, u_input.b, 0u)), global0[_wgslsmith_index_u32(~u_input.b, 13u)], ~vec3<u32>(u_input.b, 4294967295u, u_input.b), Struct_4(vec4<bool>(true, false, true, true)))), u_input.a));
    let var_2 = func_5(_wgslsmith_f_op_vec2_f32(-func_1(Struct_2(2147483647i, 0u, func_4(var_1.c).x, var_1.c.b.d), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(25417u, _wgslsmith_sub_u32(u_input.b, 55971u)), 13u)], _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(18978u, u_input.b, 16776u)), vec3<u32>(u_input.b, var_1.c.b.d.x, 16529u)), global0[_wgslsmith_index_u32(1u, 13u)]).a.yz), firstLeadingBit(vec3<i32>(27165i, _wgslsmith_add_i32(1i, u_input.a.x), global2[_wgslsmith_index_u32(~u_input.b, 6u)]))).c.b.d.yw;
    var_0 = true;
    let var_3 = vec2<i32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_1.c.b.d.x, 3556u, 4294967295u), var_1.c.b.d), vec4<u32>(var_1.c.b.b, _wgslsmith_mult_u32(u_input.b, 37585u), var_1.c.b.d.x, select(var_1.c.b.d.x, u_input.b, false))), _wgslsmith_add_vec4_u32(min(var_1.c.b.d, select(var_1.c.b.d, var_1.c.b.d, var_1.a.x)), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(0u, var_1.c.b.d.x, 36752u, var_1.c.b.d.x)), abs(var_1.c.b.d)))), 6u)], _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.b.a, var_1.b.x), var_1.b) ^ 1i, ~(var_1.c.b.c << (109030u % 32u)) >> (countOneBits(var_2.x) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_div_u32(9803u, var_1.c.b.b), _wgslsmith_div_u32(1u | var_2.x, _wgslsmith_sub_u32(~var_1.c.b.d.x, ~0u))), _wgslsmith_f_op_f32(-var_1.c.a.x));
}

