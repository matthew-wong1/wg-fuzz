struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: array<u32, 5>;

var<private> global2: array<bool, 4> = array<bool, 4>(true, true, true, true);

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<bool>(true, false, false), vec4<u32>(50864u, 1u, 0u, 41540u), i32(-2147483648), false), Struct_1(vec3<bool>(true, true, true), vec4<u32>(1u, 59295u, 46346u, 24738u), 1i, false), Struct_1(vec3<bool>(false, false, true), vec4<u32>(69134u, 34590u, 4294967295u, 1u), -4866i, true), Struct_1(vec3<bool>(true, true, false), vec4<u32>(1u, 4294967295u, 0u, 122143u), -1i, true), Struct_1(vec3<bool>(false, true, true), vec4<u32>(8428u, 0u, 1u, 4294967295u), -25529i, false), Struct_1(vec3<bool>(false, true, true), vec4<u32>(0u, 45369u, 12125u, 46078u), 0i, true), Struct_1(vec3<bool>(true, true, false), vec4<u32>(0u, 52432u, 44011u, 1u), 0i, false), Struct_1(vec3<bool>(true, false, false), vec4<u32>(0u, 17427u, 23254u, 76239u), 41015i, false), Struct_1(vec3<bool>(false, true, true), vec4<u32>(70972u, 25447u, 1u, 1u), -54838i, true), Struct_1(vec3<bool>(false, false, true), vec4<u32>(4294967295u, 74563u, 39123u, 66042u), 10665i, false), Struct_1(vec3<bool>(true, true, true), vec4<u32>(1u, 48425u, 0u, 1u), -7420i, false), Struct_1(vec3<bool>(true, false, false), vec4<u32>(0u, 0u, 4294967295u, 27299u), 3856i, false), Struct_1(vec3<bool>(true, false, true), vec4<u32>(5276u, 4294967295u, 54436u, 50635u), 1i, true), Struct_1(vec3<bool>(true, true, true), vec4<u32>(1u, 80385u, 1u, 23096u), -26507i, true), Struct_1(vec3<bool>(false, true, true), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), 2147483647i, false), Struct_1(vec3<bool>(false, true, true), vec4<u32>(45649u, 1u, 754u, 1u), 0i, true), Struct_1(vec3<bool>(false, false, true), vec4<u32>(4294967295u, 4294967295u, 275u, 0u), 18323i, true), Struct_1(vec3<bool>(true, true, false), vec4<u32>(1u, 0u, 1u, 29946u), 1i, false), Struct_1(vec3<bool>(true, true, false), vec4<u32>(24795u, 84171u, 4294967295u, 10320u), i32(-2147483648), true), Struct_1(vec3<bool>(false, true, false), vec4<u32>(82306u, 4294967295u, 0u, 4294967295u), -23793i, true));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_4(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-u_input.a, i32(-1i) * -1i, 0i), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-2147483647i, 14917i, -64195i), ~vec3<i32>(-32122i, 6675i, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -13065i, 1i), vec3<i32>(-7200i, 46560i, u_input.a))))), Struct_1(vec3<bool>(true, !global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], 4u)] & global2[_wgslsmith_index_u32(~4294967295u, 4u)], !all(vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9778u, 5u)], 8u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], 4u)], true))), vec4<u32>(~(~771u), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(33273u, 5u)], 5u)], ~66771u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], 1u), 5u)], 5u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(4294967295u), 1u, global1[_wgslsmith_index_u32(4294967295u, 5u)]), 5u)]), _wgslsmith_sub_i32(-(~u_input.a), _wgslsmith_add_i32(u_input.a & 2147483647i, u_input.a)), true), Struct_1(vec3<bool>(true == (global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6470u, 5u)], 5u)], 5u)], 5u)], 5u)], 4u)] | true), false, true), ~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47227u, 5u)], 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55658u, 5u)], 5u)]), vec4<u32>(global1[_wgslsmith_index_u32(30701u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 1u, 1u)), 5u)], 5u)], global1[_wgslsmith_index_u32(0u, 5u)], _wgslsmith_mult_u32(22718u, 86903u), global1[_wgslsmith_index_u32(11681u, 5u)]), _wgslsmith_add_i32(~(u_input.a & u_input.a), -(u_input.a & -49571i)), global0[_wgslsmith_index_u32(24170u, 8u)]), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(1i, -13212i, -1i) ^ vec3<i32>(-14691i, u_input.a, -52671i)), firstTrailingBit(-vec3<i32>(45444i, u_input.a, u_input.a))), 71876i));
    return vec2<bool>(!(!global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c.b.x, 5u)], 5u)], 5u)] | 1u, 8u)]) != global2[_wgslsmith_index_u32(1u, 4u)], var_0.b.d);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>) -> vec3<bool> {
    let var_0 = Struct_2(-(-vec4<i32>(arg_1.x, 52005i, -2147483647i, u_input.a) ^ abs(vec4<i32>(-2147483647i, arg_1.x, u_input.a, -12410i))), all(!(!(!vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24339u, 5u)], 8u)], false)))));
    global3 = array<Struct_1, 20>();
    let var_1 = vec4<bool>(!any(func_3()), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(9269u, 64827u, arg_0.x)), 0u) < global1[_wgslsmith_index_u32(arg_0.x, 5u)], global0[_wgslsmith_index_u32(~(arg_0.x & select(71902u, 1u, var_0.b)), 8u)], select(true, true, ~(~1u) > global1[_wgslsmith_index_u32(~arg_0.x, 5u)]));
    var var_2 = Struct_4(vec3<i32>(u_input.a, _wgslsmith_div_i32(firstLeadingBit(0i), var_0.a.x), arg_1.x | arg_1.x) >> (~(~arg_0) % vec3<u32>(32u)), Struct_1(select(vec3<bool>(!var_1.x, var_0.b || var_0.b, select(var_1.x, var_1.x, true)), var_1.wxw, var_1.yzw), ~vec4<u32>(global1[_wgslsmith_index_u32(arg_0.x, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], 1u, 1u) & select(~vec4<u32>(21025u, 38974u, global1[_wgslsmith_index_u32(29705u, 5u)], 3539u), vec4<u32>(arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(16841u, 5u)], arg_0.x) >> (vec4<u32>(1u, 0u, arg_0.x, 25411u) % vec4<u32>(32u)), !var_1.x), -2147483647i, any(vec2<bool>(any(vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 4u)])), true))), Struct_1(!(!vec3<bool>(false, var_0.b, false)), ((vec4<u32>(54092u, arg_0.x, 1u, global1[_wgslsmith_index_u32(arg_0.x, 5u)]) >> (vec4<u32>(0u, arg_0.x, 4294967295u, arg_0.x) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44181u, 5u)], 5u)], 74343u, 0u, 4294967295u), vec4<u32>(arg_0.x, global1[_wgslsmith_index_u32(1u, 5u)], 29486u, 9264u)) % vec4<u32>(32u))) & firstTrailingBit(~vec4<u32>(arg_0.x, global1[_wgslsmith_index_u32(0u, 5u)], arg_0.x, arg_0.x)), u_input.a, false), ~0i);
    let var_3 = Struct_2(vec4<i32>(-24650i, _wgslsmith_clamp_i32(-2147483647i, ~113i, ~arg_1.x) | _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_1, var_0.a.zz), abs(vec2<i32>(var_2.a.x, u_input.a))), firstTrailingBit(countOneBits(var_2.d)) & countOneBits(41675i & var_0.a.x), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_2.a.x), var_0.a.wy) | 13617i, -_wgslsmith_mult_i32(var_0.a.x, -2147483647i))), true);
    return select(!vec3<bool>(false, var_3.b, false), select(vec3<bool>(any(vec2<bool>(true, var_3.b)), true, true != select(var_3.b, global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(7126u, 4u)])), var_1.zxz, select(var_2.b.a, vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 5u)], 4u)] && var_2.b.d, true, !global2[_wgslsmith_index_u32(arg_0.x, 4u)]), select(true, true, !var_2.c.a.x))), var_2.c.a);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>) -> u32 {
    global3 = array<Struct_1, 20>();
    global0 = array<bool, 8>();
    let var_0 = u_input.a <= u_input.a;
    global1 = array<u32, 5>();
    var var_1 = max(select(arg_0.a.zyw, vec3<i32>(arg_0.a.x, u_input.a, -32306i), select(!func_2(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8617u, 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], 10534u), vec2<i32>(arg_0.a.x, arg_0.a.x)), !vec3<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 8u)], false), vec3<bool>(global2[_wgslsmith_index_u32(~1u, 4u)], all(vec2<bool>(true, false)), arg_1.x))), arg_0.a.xzx);
    return global1[_wgslsmith_index_u32(18461u, 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7072u, 5u)], 5u)]), vec2<u32>(global1[_wgslsmith_index_u32(26071u, 5u)], 1u)) ^ (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(122100u, 5u)], 5u)], 0u) << (vec2<u32>(0u, 47028u) % vec2<u32>(32u)))) << (vec2<u32>(_wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(35198u, global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(105161u, 5u)], 5u)], 5u)], 5u)], 5u)]), 5u)], 5u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(58029u, 5u)], 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)]), vec3<u32>(1u, global1[_wgslsmith_index_u32(72397u, 5u)], 4294967295u)), vec3<u32>(21874u, global1[_wgslsmith_index_u32(77872u, 5u)], 1u) << (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32964u, 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10194u, 5u)], 5u)], global1[_wgslsmith_index_u32(43025u, 5u)]) % vec3<u32>(32u))), 5u)], ~func_1(Struct_2(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), true), vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 8u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(68756u, 5u)], 4u)]))), select(_wgslsmith_mult_u32(4294967295u, 1u), ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29041u, 5u)], 5u)], 5u)], 5u)], 5u)]), select(global1[_wgslsmith_index_u32(1u, 5u)] >= global1[_wgslsmith_index_u32(45676u, 5u)], !global0[_wgslsmith_index_u32(25993u, 8u)], all(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44443u, 5u)], 5u)], 8u)], true, false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 8u)]))))) % vec2<u32>(32u));
    var var_1 = -u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1132f, -693f, _wgslsmith_f_op_f32(f32(-1f) * -1344f), 1f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(401f, -1025f, 108f, 1152f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1085f, -2029f, -2517f, -230f), vec4<f32>(164f, -2021f, 1595f, -1331f), false)))))), !select(!vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 4u)], global2[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7910u, 5u)], 8u)], false), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(24453u, 8u)]))), select(u_input.a, -4858i, global0[_wgslsmith_index_u32(var_0.x, 8u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(81847u, var_0.x, 34406u, 50766u), ~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32804u, 5u)], 5u)], global1[_wgslsmith_index_u32(42731u, 5u)], var_0.x, 55585u)), var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, var_0.x, 48335u), vec4<u32>(4294967295u, 43440u, 0u, 1u)) & var_0.x, ~global1[_wgslsmith_index_u32(var_0.x, 5u)]), vec4<u32>(16041u, 1u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(18585u, var_0.x, var_0.x), 5u)], _wgslsmith_add_u32(28281u, 10317u)), abs(var_0.x))), 5u)], var_0.x, max(~vec3<u32>(4294967295u, 4294967295u, 58145u), select(vec3<u32>(var_0.x, global1[_wgslsmith_index_u32(var_0.x, 5u)], 28524u), ~vec3<u32>(var_0.x, 23301u, var_0.x), !vec3<bool>(global2[_wgslsmith_index_u32(25813u, 4u)], false, true))) & ~(~vec3<u32>(97943u, 4294967295u, 26139u) & vec3<u32>(0u, global1[_wgslsmith_index_u32(34737u, 5u)], 18710u)));
}

