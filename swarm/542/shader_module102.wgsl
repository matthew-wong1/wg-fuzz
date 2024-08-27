struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_2;

var<private> global2: array<u32, 8> = array<u32, 8>(4294967295u, 1u, 1u, 0u, 4294967295u, 13575u, 54520u, 107923u);

var<private> global3: array<u32, 6> = array<u32, 6>(56771u, 4294967295u, 4294967295u, 79366u, 4294967295u, 45469u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(869f, -586f, global1.a.x || true)), _wgslsmith_f_op_f32(ceil(arg_1.a.x)))), global0.xz);
    var var_1 = arg_1.d.x;
    let var_2 = abs(_wgslsmith_mod_i32(i32(-1i) * -1i, arg_1.c.b.x >> (~arg_1.c.c.x % 32u)) >> (22101u % 32u));
    var var_3 = arg_1.c.c.wx;
    global3 = array<u32, 6>();
    return select(vec4<bool>(false, !select(true, any(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_1.d.x)), arg_1.d.x), true, true), !vec4<bool>(global1.a.x, true || (arg_1.c.c.x > u_input.b.x), -arg_1.c.b.x != (i32(-1i) * -2147483647i), !(global1.a.x || false)), all(!(!vec2<bool>(global1.a.x, false))) | true);
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    var var_0 = -_wgslsmith_div_i32(-arg_0.c.b.x, 0i);
    let var_1 = Struct_2(select(select(global1.a, func_3(Struct_2(global1.a), Struct_3(arg_0.c.a, arg_0.c.b.x, arg_0.c, vec3<bool>(true, arg_1, arg_0.d.x))), vec4<bool>(global0.x == 1321f, true, all(vec3<bool>(global1.a.x, arg_1, arg_0.d.x)), any(global1.a.xy))), global1.a, select(vec4<bool>(select(false, arg_1, false), arg_1, arg_1, true), vec4<bool>(all(global1.a), false & arg_1, false, arg_1), func_3(Struct_2(vec4<bool>(global1.a.x, arg_0.d.x, global1.a.x, true)), Struct_3(vec3<f32>(-112f, global0.x, 508f), 20978i, Struct_1(arg_0.a, vec3<i32>(-1i, 0i, arg_0.c.b.x), vec4<u32>(global2[_wgslsmith_index_u32(36730u, 8u)], global2[_wgslsmith_index_u32(11670u, 8u)], arg_0.c.c.x, 0u), global0.x), arg_0.d)))));
    return arg_0.c;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = !(!all(!select(vec2<bool>(true, false), vec2<bool>(global1.a.x, false), global1.a.x)));
    global2 = array<u32, 8>();
    global2 = array<u32, 8>();
    global2 = array<u32, 8>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.yzz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1056f, 326f) - vec3<f32>(arg_0, global0.x, 1000f)) * _wgslsmith_f_op_vec3_f32(min(arg_2.a, arg_2.a))), vec3<bool>(all(global1.a), !global1.a.x, global1.a.x)))), select(_wgslsmith_add_vec3_i32(vec3<i32>(~arg_3, max(-32030i, arg_2.b.x), 10318i), arg_2.b), _wgslsmith_sub_vec3_i32(-(~arg_2.b), vec3<i32>(arg_2.b.x, _wgslsmith_mod_i32(arg_3, -710i), _wgslsmith_mod_i32(72034i, arg_2.b.x))), select(vec3<bool>(58133u <= global3[_wgslsmith_index_u32(arg_2.c.x, 6u)], true, true), select(!global1.a.wzw, func_3(Struct_2(vec4<bool>(false, global1.a.x, true, global1.a.x)), Struct_3(vec3<f32>(1146f, arg_2.a.x, arg_1), arg_3, arg_2, global1.a.yxw)).zyz, true), any(!vec3<bool>(global1.a.x, false, global1.a.x)))), arg_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -430f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2245f))) + _wgslsmith_f_op_f32(select(arg_2.a.x, global0.x, any(func_3(Struct_2(vec4<bool>(false, false, false, global1.a.x)), Struct_3(vec3<f32>(-851f, arg_1, global0.x), arg_3, Struct_1(arg_2.a, vec3<i32>(arg_3, 9392i, arg_2.b.x), vec4<u32>(50903u, u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(42314u, 8u)], 8u)], 1u), global0.x), global1.a.zyw)))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-364f, func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-122f * -482f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), Struct_1(vec3<f32>(global0.x, 1556f, global0.x), vec3<i32>(arg_1.b.x, -2147483647i, -1i), _wgslsmith_add_vec4_u32(u_input.a, u_input.a), -500f), arg_1.b.x).a.x, global1.a.x)), -702f));
    let var_2 = arg_1.c.ywz;
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>, arg_3: u32) -> Struct_3 {
    let var_0 = u_input.d;
    global3 = array<u32, 6>();
    let var_1 = arg_2;
    global2 = array<u32, 8>();
    var var_2 = var_1.x;
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_3(vec3<f32>(1063f, -196f, global0.x), 1i, Struct_1(global0.wxx, vec3<i32>(2147483647i, var_1.x, 8611i), vec4<u32>(u_input.c, 0u, var_0, u_input.a.x), arg_1), arg_0.a.wwz), select(false, arg_0.a.x, arg_0.a.x)).a * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1266f, arg_1, 1703f))) - global0.zyx))), _wgslsmith_add_i32(~(~var_1.x), -1i ^ arg_2.x), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-arg_1), -186f), _wgslsmith_div_vec3_f32(global0.yyw, vec3<f32>(global0.x, arg_1, 1133f))), vec3<i32>(-1i, firstLeadingBit(reverseBits(-20417i)), _wgslsmith_mod_i32(min(arg_2.x, arg_2.x), arg_2.x)), u_input.a, 1000f), func_5(func_5(Struct_2(func_3(Struct_2(vec4<bool>(false, global1.a.x, global1.a.x, false)), Struct_3(global0.wyx, var_1.x, Struct_1(global0.wyw, vec3<i32>(-2147483647i, 1i, 2147483647i), vec4<u32>(arg_3, 69412u, 77942u, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 8u)]), arg_1), global1.a.wwy))), func_2(Struct_3(vec3<f32>(256f, -387f, -941f), arg_2.x, Struct_1(vec3<f32>(arg_1, global0.x, arg_1), arg_2, vec4<u32>(var_0, 2530u, 4294967295u, arg_3), -1000f), vec3<bool>(false, true, global1.a.x)), global1.a.x), select(~0u, 23735u, true)), func_4(global0.x, 663f, func_2(Struct_3(vec3<f32>(global0.x, arg_1, global0.x), var_1.x, Struct_1(vec3<f32>(global0.x, 1151f, -693f), vec3<i32>(arg_2.x, arg_2.x, -1i), vec4<u32>(62469u, global3[_wgslsmith_index_u32(var_0, 6u)], 1u, u_input.b.x), -487f), arg_0.a.xxw), arg_0.a.x), _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-46241i, -2147483647i, -6416i, -32034i), vec4<i32>(arg_2.x, var_1.x, -13429i, arg_2.x)))), 0u).a.wyy);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>) -> vec3<u32> {
    global2 = array<u32, 8>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.xyy + global0.wxx))));
    var var_1 = func_6(func_5(Struct_2(vec4<bool>(true, !arg_0.x, global1.a.x, !arg_0.x)), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - 284f), _wgslsmith_f_op_f32(global0.x + -1330f), func_2(Struct_3(vec3<f32>(global0.x, 1160f, global0.x), 23226i, Struct_1(global0.wxz, vec3<i32>(0i, -18890i, 45823i), u_input.b, var_0.x), vec3<bool>(arg_0.x, arg_0.x, true)), true), -44442i), ~(~(22426u & u_input.d))), global0.x, ~vec3<i32>(~1i, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(12778i, -2147483647i, 2147483647i, 29840i), vec4<i32>(0i, 0i, 55151i, -1i))) | min(~vec3<i32>(-56016i, -70208i, -1i), _wgslsmith_mult_vec3_i32(func_4(-390f, 157f, Struct_1(var_0, vec3<i32>(-1i, 0i, -5626i), u_input.b, var_0.x), -23637i).b, vec3<i32>(-13406i, 13731i, -2147483647i))), 18237u << (~_wgslsmith_sub_u32(u_input.c ^ 0u, reverseBits(11300u)) % 32u));
    let var_2 = ~vec3<i32>(34253i, -7001i, 0i);
    global2 = array<u32, 8>();
    return u_input.a.yyx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global0.xzz, abs(-13355i), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-644f, global0.x, -499f) - global0.zwz) + global0.zyw)), min(vec3<i32>(1i, 1i, 1i), max(vec3<i32>(-1i, 1i, -23592i), _wgslsmith_mod_vec3_i32(vec3<i32>(2201i, 1i, -44587i), vec3<i32>(-1i, -1i, 18449i)))), vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.b.xzz, vec3<u32>(u_input.d, 128025u, 0u))), 1u, 4294967295u, 1u), -146f), select(select(global1.a.zzw, vec3<bool>(true, true, true), vec3<bool>(any(global1.a.xxz), true, true)), !vec3<bool>(false || global1.a.x, u_input.a.x >= global3[_wgslsmith_index_u32(40000u, 6u)], global1.a.x), vec3<bool>(true, false, true)));
    let var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(~14493u, _wgslsmith_mod_u32(var_0.c.c.x, 61498u)), _wgslsmith_mod_u32(max(global3[_wgslsmith_index_u32(u_input.c, 6u)], global2[_wgslsmith_index_u32(13617u, 8u)]), 1u), ~global3[_wgslsmith_index_u32(_wgslsmith_div_u32(3336u, u_input.c), 6u)]), var_0.c.c.yyz, ~(~var_0.c.c.xwy)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(4294967295u, 4294967295u, 27494u)), ~var_0.c.c.xyz << (_wgslsmith_mod_vec3_u32(u_input.a.zwx, vec3<u32>(global3[_wgslsmith_index_u32(0u, 6u)], var_0.c.c.x, u_input.b.x)) % vec3<u32>(32u))) >> (~vec3<u32>(~21193u, 0u, _wgslsmith_mult_u32(4294967295u, var_0.c.c.x)) % vec3<u32>(32u)), abs(func_1(global1.a, _wgslsmith_div_vec2_f32(var_0.c.a.zz, _wgslsmith_f_op_vec2_f32(-var_0.c.a.yy)))));
    let var_2 = -11219i;
    global1 = Struct_2(func_3(Struct_2(!global1.a), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a.x, global0.x, 478f))), var_0.c.b.x | 1i, func_4(global0.x, _wgslsmith_f_op_f32(-global0.x), func_6(Struct_2(global1.a), global0.x, var_0.c.b, 0u).c, 2147483647i), global1.a.zxy)));
    let var_3 = func_5(Struct_2(vec4<bool>(true, global1.a.x, select(true, global1.a.x, false), false)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1259f, -1509f, 2366f) - _wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(global0.x, var_0.a.x, global0.x))), var_0.c.b, _wgslsmith_mod_vec4_u32(~u_input.b, select(vec4<u32>(var_0.c.c.x, 32132u, 5237u, var_1.x), vec4<u32>(var_0.c.c.x, var_1.x, global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(u_input.d, 6u)]), vec4<bool>(true, global1.a.x, var_0.d.x, false))), 1000f), func_2(func_6(func_5(Struct_2(vec4<bool>(false, global1.a.x, global1.a.x, false)), var_0.c, 1u), -1144f, var_0.c.b, 40933u), _wgslsmith_div_f32(var_0.c.a.x, 448f) == -259f).c.x).a.x && global1.a.x;
    let var_4 = true;
    var var_5 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -833f) * global0.x), _wgslsmith_f_op_f32(f32(-1f) * -808f), var_0.c, (var_0.c.b.x | reverseBits(var_2)) | (var_2 & (var_2 | var_2))).c.yw | abs(~var_1.xx);
    var_5 = var_0.c.c.zy;
    let var_6 = vec3<bool>(var_0.d.x, !var_3, !var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_2, var_2, countOneBits(var_0.b), -2147483647i), ~vec4<i32>(var_2, -6143i, var_0.b, 6854i)), global0.x, abs(firstLeadingBit(-2147483647i)), min(2147483647i, _wgslsmith_dot_vec2_i32(var_0.c.b.zx, var_0.c.b.yz)), -(firstLeadingBit(var_0.c.b.zy & var_0.c.b.xz) >> (_wgslsmith_mod_vec2_u32(u_input.b.xy, _wgslsmith_mod_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(0u, 6u)], 8851u), var_0.c.c.yw)) % vec2<u32>(32u))));
}

