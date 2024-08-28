struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(1u, 0u, 0u, 0u, 10317u, 35442u, 7407u, 0u, 1u, 27221u, 57787u, 67928u, 0u, 47627u, 0u, 98930u, 4294967295u, 92758u, 4294967295u);

var<private> global1: vec4<i32>;

var<private> global2: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(1547f, 1296f), vec2<f32>(779f, -1031f), vec2<f32>(682f, 1132f), vec2<f32>(1000f, -1131f), vec2<f32>(-125f, 615f), vec2<f32>(1461f, 699f), vec2<f32>(-1636f, -437f), vec2<f32>(1491f, 694f), vec2<f32>(-1000f, 2345f), vec2<f32>(-1019f, -297f), vec2<f32>(-989f, 1722f), vec2<f32>(1447f, -844f), vec2<f32>(-873f, 467f));

var<private> global3: array<i32, 5>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> f32 {
    global2 = array<vec2<f32>, 13>();
    global0 = array<u32, 19>();
    var var_0 = Struct_1(1u, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-705f, -741f, 1536f, -1408f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(702f, -362f, -133f, 739f), vec4<f32>(534f, 1603f, 501f, -337f))))))), global3[_wgslsmith_index_u32(~9044u, 5u)]);
    var_0 = Struct_1(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.a, 52324u), global0[_wgslsmith_index_u32(u_input.b.x & var_0.a, 19u)]), var_0.a), 19u)], var_0.a, _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(u_input.b.x, select(var_0.a, 4294967295u, true)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -956f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1312f - _wgslsmith_f_op_f32(var_0.b.x * 104f)))), global3[_wgslsmith_index_u32(u_input.b.x, 5u)] << (~abs(~global0[_wgslsmith_index_u32(0u, 19u)]) % 32u));
    var var_1 = Struct_1(31845u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1190f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_div_f32(357f, 1291f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(371f, -1000f, true)))), 138f)), max(~1i, -1i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x));
}

fn func_4(arg_0: bool, arg_1: f32) -> i32 {
    var var_0 = any(select(select(!select(vec4<bool>(false, true, false, arg_0), vec4<bool>(false, true, arg_0, false), true), !select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(true, true, arg_0, true)), !select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(false, true, arg_0, arg_0))), vec4<bool>(arg_1 != _wgslsmith_f_op_f32(round(arg_1)), arg_0, any(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)), select(false, arg_0, false) && arg_0), arg_0));
    let var_1 = _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(floor(-241f)));
    let var_2 = reverseBits(vec2<i32>(2147483647i, u_input.a));
    let var_3 = Struct_1(0u, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1 + 1158f), _wgslsmith_f_op_f32(558f + -1251f), arg_1, 535f)), vec4<f32>(-1051f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(u_input.b.x, 5u)])))))), _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(min(-global3[_wgslsmith_index_u32(0u, 5u)], ~var_2.x), 1i)));
    global3 = array<i32, 5>();
    return firstLeadingBit(-1i | ~(u_input.a ^ 0i));
}

fn func_2() -> vec4<i32> {
    global1 = -vec4<i32>(i32(-1i) * -(~global3[_wgslsmith_index_u32(0u, 5u)]), func_4(true, _wgslsmith_f_op_f32(func_3(i32(-1i) * -2147483647i))), _wgslsmith_div_i32(global1.x, min(1i, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(global1.yyw, vec3<i32>(2147483647i, 18516i, global3[_wgslsmith_index_u32(1u, 5u)])), abs(2147483647i), global3[_wgslsmith_index_u32(u_input.b.x, 5u)], global1.x), -(vec4<i32>(1i, -1i, -1i, global1.x) | vec4<i32>(-11890i, 0i, global3[_wgslsmith_index_u32(36970u, 5u)], u_input.a))));
    var var_0 = vec4<bool>(true, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(452f - 526f) * -192f) <= _wgslsmith_f_op_f32(sign(-897f))), true, all(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true))) && true);
    let var_1 = -1i;
    return -abs(_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(1994i, u_input.a, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], 19u)], 5u)], u_input.a)), -(vec4<i32>(global3[_wgslsmith_index_u32(44538u, 5u)], global3[_wgslsmith_index_u32(u_input.b.x, 5u)], 2147483647i, 35075i) & vec4<i32>(u_input.a, -2147483647i, -2147483647i, global3[_wgslsmith_index_u32(1u, 5u)])), abs(reverseBits(vec4<i32>(-2147483647i, -34004i, 0i, var_1)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = arg_3;
    var_0 = arg_3;
    var var_1 = vec3<f32>(120f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2, var_0.a.b.x))), 964f);
    var var_2 = Struct_3(Struct_1(47118u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x - arg_2), _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -641f)) * _wgslsmith_f_op_vec4_f32(-arg_3.a.b)), select(countOneBits(arg_3.b.x), global1.x >> (1u % 32u), global0[_wgslsmith_index_u32(u_input.b.x, 19u)] <= global0[_wgslsmith_index_u32(var_0.a.a, 19u)]) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.b.x, 1u), vec4<u32>(28109u, 0u, 4294967295u, arg_3.a.a)) % 32u)), _wgslsmith_mod_vec3_i32(var_0.b, ~countOneBits(arg_3.c.a.zyz)), Struct_2(select(-(vec4<i32>(global1.x, arg_3.b.x, var_0.a.c, -16266i) >> (vec4<u32>(32062u, arg_3.a.a, 0u, arg_3.c.c) % vec4<u32>(32u))), func_2(), select(vec4<bool>(arg_1, arg_1, true, arg_0.x), arg_0, true & arg_1)), abs(_wgslsmith_add_i32(_wgslsmith_mult_i32(var_0.a.c, -31334i), var_0.b.x)), 74794u));
    global3 = array<i32, 5>();
    return var_0.a;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec4<u32>) -> vec3<i32> {
    global1 = arg_0.c.a;
    let var_0 = 29619i;
    let var_1 = Struct_2(vec4<i32>(0i, global1.x, i32(-1i) * -func_1(vec4<bool>(false, false, true, true), false, 703f, Struct_3(Struct_1(4294967295u, arg_0.a.b, 2147483647i), vec3<i32>(u_input.a, 30744i, -2147483647i), arg_0.c)).c, select(u_input.a ^ -1i, -_wgslsmith_sub_i32(var_0, -2147483647i), (arg_0.c.c < global0[_wgslsmith_index_u32(15988u, 19u)]) == all(vec3<bool>(true, false, true)))), _wgslsmith_div_i32(-23404i >> (1u % 32u), var_0), _wgslsmith_div_u32(max(71791u & reverseBits(global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), abs(4294967295u)), 4294967295u));
    let var_2 = func_1(vec4<bool>(true, !(!select(true, true, true)), true, !any(vec3<bool>(true, false, false)) || true), true, _wgslsmith_f_op_f32(floor(arg_0.a.b.x)), Struct_3(Struct_1(~_wgslsmith_sub_u32(34657u, arg_0.a.a), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.b.x, arg_0.a.b.x, arg_1.x, -588f), vec4<f32>(arg_0.a.b.x, arg_1.x, 821f, arg_1.x)))), -_wgslsmith_mod_i32(var_0, var_1.b)), select(vec3<i32>(u_input.a, 1i, -35833i), countOneBits(_wgslsmith_div_vec3_i32(global1.ywz, arg_0.c.a.zwy)), vec3<bool>(any(vec4<bool>(true, false, true, true)), any(vec3<bool>(true, true, true)), any(vec2<bool>(false, false)))), Struct_2(vec4<i32>(-2147483647i | var_0, _wgslsmith_sub_i32(23601i, global1.x), u_input.a, _wgslsmith_add_i32(1i, 1i)), _wgslsmith_dot_vec4_i32(arg_0.c.a, vec4<i32>(global3[_wgslsmith_index_u32(var_1.c, 5u)], arg_0.b.x, var_1.a.x, -23269i) ^ var_1.a), ~(~8721u))));
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(countOneBits(func_4(false, arg_1.x)), firstTrailingBit(-27843i)), var_1.b), ~min(-1i, var_1.a.x));
    return vec3<i32>(firstLeadingBit(1i), global3[_wgslsmith_index_u32(8210u & _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_2.zx & vec2<u32>(22643u, 47958u), _wgslsmith_sub_vec2_u32(arg_2.ww, vec2<u32>(global0[_wgslsmith_index_u32(1u, 19u)], 49253u))), u_input.b.x), 5u)], _wgslsmith_div_i32(-1i, select(~(-1i << (var_2.a % 32u)), global1.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(~max(86733u, _wgslsmith_sub_u32(4294967295u, u_input.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1264f, 1581f, 1435f) + vec4<f32>(1615f, -1000f, -2052f, -950f)))), _wgslsmith_div_i32(global1.x, u_input.a)), func_5(Struct_3(func_1(vec4<bool>(true, true, true, true), true, -724f, Struct_3(Struct_1(global0[_wgslsmith_index_u32(0u, 19u)], vec4<f32>(-314f, -426f, 836f, 542f), 6691i), vec3<i32>(global1.x, -2147483647i, u_input.a), Struct_2(vec4<i32>(-8000i, 2147483647i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 5u)], global1.x), -13771i, u_input.b.x))), _wgslsmith_clamp_vec3_i32(global1.zyy & vec3<i32>(global3[_wgslsmith_index_u32(1u, 5u)], -30773i, -14978i), global1.wxw & global1.xzy, vec3<i32>(1i, u_input.a, global1.x)), Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 5u)], global1.x, global3[_wgslsmith_index_u32(u_input.b.x, 5u)], -39110i), vec4<i32>(2147483647i, 0i, -2699i, u_input.a)), ~global1.x, func_1(vec4<bool>(false, true, true, true), false, 1000f, Struct_3(Struct_1(0u, vec4<f32>(2271f, 927f, 1000f, -1698f), 38889i), vec3<i32>(u_input.a, global1.x, global1.x), Struct_2(vec4<i32>(global3[_wgslsmith_index_u32(1u, 5u)], 7717i, 3451i, 4376i), global3[_wgslsmith_index_u32(262u, 5u)], 1u))).a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1643f * 1044f), -249f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 13u)]), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-367f, 1406f))), select(vec2<bool>(true, true), vec2<bool>(false, true), true)))), abs(~vec4<u32>(57561u, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], 19796u, 4294967295u) | (vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], u_input.b.x, u_input.b.x, u_input.b.x) ^ vec4<u32>(75965u, 0u, u_input.b.x, global0[_wgslsmith_index_u32(4806u, 19u)])))), Struct_2(vec4<i32>(_wgslsmith_mult_i32(-global1.x, u_input.a), firstLeadingBit(u_input.a) & global3[_wgslsmith_index_u32(~12535u, 5u)], (2147483647i | u_input.a) ^ -23449i, 13095i), 0i, ~91920u));
    global3 = array<i32, 5>();
    let var_1 = ~reverseBits(u_input.b.x) >> (~34092u % 32u);
    var var_2 = select(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(1u, var_1 & u_input.b.x)), vec2<u32>(global0[_wgslsmith_index_u32(27104u, 19u)], global0[_wgslsmith_index_u32(~20147u, 19u)])), vec2<u32>(0u, 34351u), select(select(!select(true, false, true), false, !(var_1 != var_0.c.c)), all(vec3<bool>(all(vec4<bool>(false, false, false, true)), true, true)), true));
    let var_3 = var_0.a.b.x;
    global0 = array<u32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(~66678i);
}

