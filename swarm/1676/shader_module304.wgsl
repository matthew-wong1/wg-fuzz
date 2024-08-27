struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(1i, i32(-2147483648), 0i, i32(-2147483648)));

var<private> global1: vec3<u32>;

var<private> global2: Struct_1;

var<private> global3: vec2<f32>;

var<private> global4: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>) -> bool {
    var var_0 = (vec2<u32>(~4294967295u, global1.x) >> (countOneBits(~firstLeadingBit(u_input.a.yx)) % vec2<u32>(32u))) >> (u_input.a.yz % vec2<u32>(32u));
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, 339f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-495f)), _wgslsmith_f_op_f32(trunc(global3.x))))));
    var var_1 = vec4<bool>(!(firstLeadingBit(4635u) < ~(~var_0.x)), true, all(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), any(vec4<bool>(true, false, false, false)) & true)), !any(vec3<bool>(true, true, true)));
    global1 = abs(vec3<u32>(~1u, ~4294967295u, ~(~(~arg_0.x))));
    let var_2 = Struct_1(-abs(_wgslsmith_add_vec4_i32(vec4<i32>(global2.a.x, 1i, -22889i, -9385i), vec4<i32>(global0.a.x, global0.a.x, global0.a.x, 0i))) >> (select(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(global4.b, var_0.x, var_0.x, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, 30982u, u_input.a.x), vec4<u32>(arg_0.x, arg_0.x, u_input.a.x, arg_0.x))), ~firstLeadingBit(vec4<u32>(0u, 37376u, arg_0.x, u_input.a.x)), select(select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(var_1.x, false, var_1.x, true)), vec4<bool>(var_1.x, false, true, false), false)) % vec4<u32>(32u)));
    return any(!select(vec2<bool>(var_1.x & true, var_1.x), var_1.xw, select(select(vec2<bool>(var_1.x, true), vec2<bool>(true, false), var_1.xz), vec2<bool>(var_1.x, var_1.x), !var_1.x)));
}

fn func_2() -> vec3<bool> {
    global0 = Struct_1(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(~global0.a.x, ~(~global2.a.x)), global2.a.x, (_wgslsmith_mult_i32(global0.a.x, -2147483647i) ^ firstLeadingBit(7448i)) >> (~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u)));
    let var_0 = Struct_4(global1.x);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(select(global4.a, global3.x, func_3(reverseBits(vec3<u32>(var_0.a, u_input.a.x, 0u))))), Struct_1(select(vec4<i32>(5619i, select(-41101i, global0.a.x, false), global2.a.x << (global1.x % 32u), reverseBits(global2.a.x)), vec4<i32>(min(global2.a.x, 1i), _wgslsmith_dot_vec2_i32(global0.a.ww, global2.a.wz), _wgslsmith_dot_vec2_i32(vec2<i32>(13786i, global2.a.x), global2.a.wx), global2.a.x >> (global4.b % 32u)), !func_3(u_input.a))), Struct_1(abs(global2.a)), _wgslsmith_f_op_f32(sign(global4.a)));
    var_1 = Struct_3(_wgslsmith_f_op_f32(global4.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * 1140f))), var_1.b, var_1.c, var_1.d);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-427f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.a)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(195f)) - 867f)) - _wgslsmith_f_op_f32(-global3.x));
    return !vec3<bool>(all(vec4<bool>(true, true, true, true)), ((-48540i == var_1.b.a.x) | any(vec3<bool>(false, true, true))) | false, false);
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_3(-464f, Struct_1(vec4<i32>(_wgslsmith_mod_i32(abs(arg_1), global2.a.x), global2.a.x ^ 0i, global0.a.x, -19582i)), Struct_1(global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -483f))) * arg_0.x));
    global4 = Struct_2(412f, global1.x);
    global3 = arg_0.yy;
    global1 = firstTrailingBit(u_input.a) >> (((select(u_input.a, select(u_input.a, vec3<u32>(12669u, 11116u, 33463u), arg_2), arg_2) | ~u_input.a) | ~(~u_input.a)) % vec3<u32>(32u));
    var var_1 = global4.a;
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(ceil(global4.a))), global4.a, arg_2.x)), 478f), Struct_1(vec4<i32>(-1i, ~(-9297i), ~0i, global2.a.x) | (global0.a << ((vec4<u32>(global4.b, 36040u, u_input.a.x, 1u) | vec4<u32>(4294967295u, 3937u, global1.x, global1.x)) % vec4<u32>(32u)))), Struct_1(global2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + var_0.a));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_3 {
    global4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.a))), ~(~max(1u, u_input.a.x)) << (global1.x % 32u));
    global2 = arg_2.b;
    global0 = arg_2.b;
    let var_0 = select(true, !select(false, false, select(arg_0.x, true, true)), all(arg_0.wy));
    global2 = arg_2.c;
    return func_4(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a + 378f) + 757f) * -501f), 629f, _wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global4.a)), 367f)))), firstTrailingBit(-func_4(vec4<f32>(arg_2.a, 1209f, global3.x, global3.x), 2147483647i, arg_0.yxz).c.a.x & global0.a.x), arg_0.yyw);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: f32, arg_3: vec3<bool>) -> Struct_4 {
    let var_0 = 1i;
    global1 = ~u_input.a;
    let var_1 = Struct_4(~27124u | u_input.a.x);
    let var_2 = func_5(select(!select(!vec4<bool>(false, true, arg_3.x, false), vec4<bool>(arg_3.x, false, false, arg_3.x), vec4<bool>(arg_3.x, true, false, false)), vec4<bool>(arg_3.x, arg_3.x, true, all(arg_3)), true), global1.zx, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, 795f, arg_1.a) * vec4<f32>(666f, arg_2, global3.x, 2078f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-557f, global3.x, -185f, 895f), vec4<f32>(global3.x, 769f, arg_1.a, global4.a)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.a, global4.a, -793f, 496f), vec4<f32>(473f, 2471f, -1439f, arg_1.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(424f, 366f, global4.a, global4.a) * vec4<f32>(arg_1.a, 1000f, arg_1.a, -272f))))), 1i, select(vec3<bool>(arg_3.x & arg_3.x, any(arg_3.xx), false), func_2(), true)));
    global1 = vec3<u32>(~var_1.a, 29313u, countOneBits(_wgslsmith_div_u32(~(~1u), global1.x)));
    return Struct_4(arg_1.b);
}

fn func_6(arg_0: Struct_4) -> f32 {
    let var_0 = -countOneBits(min(global2.a.x, reverseBits(46265i)) << (firstTrailingBit(arg_0.a) % 32u));
    var var_1 = max(~global1.xx, countOneBits(_wgslsmith_add_vec2_u32(select(max(u_input.a.yz, vec2<u32>(global4.b, 0u)), vec2<u32>(arg_0.a, 1u), vec2<bool>(true, true)), min(vec2<u32>(u_input.a.x, 4294967295u) ^ vec2<u32>(u_input.a.x, 0u), vec2<u32>(64624u, 1379u)))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(global4.a, -951f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1684f * 1448f) * _wgslsmith_f_op_f32(global4.a - -1181f))), global4.a)), global3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-504f))), _wgslsmith_f_op_f32(min(global4.a, global4.a)), !func_3(vec3<u32>(global4.b, 4294967295u, 0u)) & func_2().x)), func_5(select(vec4<bool>(func_2().x, func_3(u_input.a), true, 1282f < global4.a), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec3<bool>(false, false, true)), true, true, true)), u_input.a.xx, Struct_3(_wgslsmith_f_op_f32(global3.x - -164f), Struct_1(vec4<i32>(global2.a.x, global0.a.x, global2.a.x, global0.a.x)), func_5(vec4<bool>(true, true, true, true), vec2<u32>(arg_0.a, 31215u) | global1.zz, func_4(vec4<f32>(global4.a, global3.x, -604f, -315f), global2.a.x, vec3<bool>(true, false, false))).c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-876f)), _wgslsmith_f_op_f32(abs(global4.a))))).a);
    return global3.x;
}

fn func_7(arg_0: bool, arg_1: f32, arg_2: i32) -> Struct_4 {
    let var_0 = 4294967295u;
    global0 = func_5(vec4<bool>(all(vec4<bool>(-11859i >= arg_2, !arg_0, !arg_0, arg_0 != arg_0)), false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.a))), true), vec2<u32>(4294967295u, ~u_input.a.x), func_5(!vec4<bool>(true, arg_0, global4.a != -1532f, arg_0), ~u_input.a.yy, func_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.x, global3.x, -1505f, global4.a), vec4<f32>(-541f, 2016f, arg_1, global3.x))))), -1i, !(!vec3<bool>(true, arg_0, false))))).b;
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(func_5(!(!vec4<bool>(true, true, arg_0, true)), vec2<u32>(_wgslsmith_div_u32(var_0, global4.b), global4.b ^ u_input.a.x), Struct_3(func_5(vec4<bool>(true, true, arg_0, true), vec2<u32>(global1.x, 17153u), Struct_3(-1568f, Struct_1(global2.a), Struct_1(vec4<i32>(global2.a.x, -1i, global0.a.x, -5870i)), arg_1)).a, func_4(vec4<f32>(-1367f, global4.a, arg_1, arg_1), -1i, vec3<bool>(arg_0, arg_0, true)).c, Struct_1(vec4<i32>(global2.a.x, 0i, 2147483647i, arg_2)), arg_1)).d, arg_1)));
    global3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_6(Struct_4(global4.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * -119f)))));
    let var_2 = _wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.a.x, 54590u)), ~vec2<u32>(~global1.x, abs(var_0)));
    return func_1(vec2<i32>(11424i, global0.a.x), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1111f), 4294967295u), arg_1, select(!select(vec3<bool>(arg_0, true, arg_0), func_2(), arg_0), !select(select(vec3<bool>(true, false, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true)), !vec3<bool>(false, arg_0, false), vec3<bool>(true, true, false)), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(false, true, !(!all(vec2<bool>(true, false))));
    var var_1 = func_7(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_1(global2.a.zw, Struct_2(global4.a, global1.x), global3.x, vec3<bool>(false, var_0.x, var_0.x)))))), global0.a.x);
    global2 = Struct_1(global0.a);
    var var_2 = Struct_2(-384f, ~var_1.a);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-320f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a + -1058f) * _wgslsmith_f_op_f32(ceil(global3.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -294f)));
    global0 = func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(213f, -1314f, global3.x, global4.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, 1000f, -608f, 1450f) + vec4<f32>(-1592f, global3.x, 1000f, 1400f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, -695f, 248f, 300f)), vec4<f32>(_wgslsmith_f_op_f32(-global3.x), 2024f, -410f, global4.a), vec4<bool>(true, func_2().x, false, !var_0.x))), vec4<bool>(!all(vec2<bool>(var_0.x, false)), (1i & global2.a.x) == (global2.a.x & -1i), var_0.x, global2.a.x > global2.a.x))), global2.a.x, vec3<bool>(true, true, true)).b;
    var_1 = func_1(~func_5(vec4<bool>(false, var_0.x, var_0.x, var_0.x), ~global1.zx, func_5(vec4<bool>(var_0.x, false, false, var_0.x), vec2<u32>(0u, 1u), Struct_3(-936f, Struct_1(global2.a), Struct_1(vec4<i32>(-2147483647i, global0.a.x, global2.a.x, 2147483647i)), global3.x))).c.a.yy | global2.a.zw, Struct_2(_wgslsmith_f_op_f32(609f * _wgslsmith_f_op_f32(global4.a * _wgslsmith_f_op_f32(f32(-1f) * -952f))), var_1.a), var_2.a, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(global4.a, ~select(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, 29781u, u_input.a.x), u_input.a) >> (global1.x % 32u), false), _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(2862i, 43366i, -1i) << (_wgslsmith_sub_vec3_u32(vec3<u32>(global4.b, u_input.a.x, 1u), vec3<u32>(var_1.a, global4.b, 4832u)) % vec3<u32>(32u))), (vec3<i32>(-1i, global0.a.x, global2.a.x) << (u_input.a % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.a, 48442u, 0u), u_input.a), vec3<u32>(global4.b, u_input.a.x, global1.x)) % vec3<u32>(32u))));
}

