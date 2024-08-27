struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<bool>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<i32, 10>;

var<private> global2: array<Struct_1, 18>;

var<private> global3: array<i32, 9>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: i32) -> bool {
    var var_0 = !select(!vec4<bool>(true, false, all(vec2<bool>(true, arg_0.b.a.x)), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false), !select(vec4<bool>(arg_0.b.c.x, arg_0.b.c.x, false, arg_0.b.a.x), vec4<bool>(true, arg_0.b.c.x, arg_0.b.a.x, true), vec4<bool>(arg_0.b.c.x, false, false, arg_0.b.c.x)), arg_0.b.a.x), select(!(!vec4<bool>(false, arg_0.b.a.x, arg_0.b.a.x, true)), vec4<bool>(all(vec2<bool>(true, arg_0.b.c.x)), !arg_0.b.c.x, arg_0.b.c.x, all(arg_0.b.c)), select(vec4<bool>(arg_0.b.c.x, true, true, arg_0.b.a.x), select(vec4<bool>(true, arg_0.b.a.x, arg_0.b.c.x, false), vec4<bool>(true, arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x), false), !vec4<bool>(arg_0.b.c.x, false, true, arg_0.b.c.x))));
    let var_1 = _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_add_u32(arg_0.b.e, 0u)), 42420u);
    var var_2 = Struct_3(Struct_2(_wgslsmith_dot_vec2_i32(u_input.b, abs(u_input.b)), min(106333u, _wgslsmith_mult_u32(global0.x, 76841u)) >> (arg_0.b.e % 32u), arg_0.b, Struct_1(!(!var_0.zww), ~min(arg_1, arg_0.b.d), !vec3<bool>(true, true, var_0.x), _wgslsmith_dot_vec2_i32(select(u_input.b, vec2<i32>(arg_0.b.b, u_input.b.x), vec2<bool>(false, true)), u_input.b | u_input.b), global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(425f, arg_0.a.x), _wgslsmith_f_op_f32(arg_0.a.x - -610f), -567f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.a), _wgslsmith_f_op_vec3_f32(-arg_0.a), true)))), Struct_2(global3[_wgslsmith_index_u32(firstLeadingBit(max(arg_0.b.e, u_input.d.x)), 9u)], 20254u, Struct_1(select(vec3<bool>(true, true, true), arg_0.b.a, arg_0.b.c.x || var_0.x), u_input.b.x, !vec3<bool>(var_0.x, true, true), -1i, u_input.d.x), Struct_1(!(!var_0.zwx), global1[_wgslsmith_index_u32(~arg_0.b.e >> (max(0u, 15823u) % 32u), 10u)], select(!vec3<bool>(arg_0.b.a.x, true, true), !var_0.zwy, true), reverseBits(abs(-2147483647i)), 1u), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.a.x)), -454f, 1f)))), !(!var_0.zzx), Struct_2((u_input.b.x >> ((var_1 & 29648u) % 32u)) << (select(_wgslsmith_mod_u32(global0.x, 18519u), countOneBits(global0.x), all(vec3<bool>(arg_0.b.c.x, arg_0.b.c.x, false))) % 32u), _wgslsmith_dot_vec2_u32(u_input.d.yw, abs(u_input.d.wy) ^ min(global0.zz, global0.xy)), global2[_wgslsmith_index_u32(var_1, 18u)], global2[_wgslsmith_index_u32(16085u, 18u)], _wgslsmith_f_op_vec3_f32(round(arg_0.a))));
    var var_3 = ~vec3<u32>(4294967295u, _wgslsmith_mult_u32(var_2.a.c.e, ~var_1) << (~(~var_2.d.d.e) % 32u), ~1u);
    let var_4 = (~arg_2 >> (var_2.a.c.e % 32u)) ^ -arg_0.b.d;
    return true;
}

fn func_2(arg_0: vec3<f32>) -> Struct_4 {
    let var_0 = ~abs(countOneBits(40087u));
    global1 = array<i32, 10>();
    var var_1 = Struct_1(vec3<bool>(!(global1[_wgslsmith_index_u32(u_input.c, 10u)] == -global3[_wgslsmith_index_u32(301u, 9u)]), true, true), max(0i, ~(~_wgslsmith_mult_i32(1i, global1[_wgslsmith_index_u32(1u, 10u)]))), select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), all(vec3<bool>(false, true, false))), vec3<bool>(true, !func_3(Struct_4(arg_0, global2[_wgslsmith_index_u32(var_0, 18u)]), 2147483647i, global3[_wgslsmith_index_u32(global0.x, 9u)]), true), arg_0.x < 1f), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, min(80914u, 717u)), 9u)], min(~var_0 | _wgslsmith_mult_u32(var_0, 4294967295u), _wgslsmith_div_u32(var_0, _wgslsmith_mult_u32(75075u, 3258u))) >> (_wgslsmith_div_u32(~92032u, ~47478u) % 32u));
    global0 = u_input.d.www;
    let var_2 = Struct_2(0i, 21736u, global2[_wgslsmith_index_u32(108543u, 18u)], global2[_wgslsmith_index_u32(42050u, 18u)], vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x * 606f)))), arg_0.x));
    return Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(666f, var_2.e.x, -1240f), arg_0)), true)), _wgslsmith_f_op_vec3_f32(-var_2.e)), var_2.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> f32 {
    let var_0 = Struct_2(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 2670i), _wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, global3[_wgslsmith_index_u32(4294967295u, 9u)]))) ^ u_input.a, abs(~arg_0.e), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a) - arg_1.a)).b, func_2(vec3<f32>(1267f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1266f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * -970f) * -804f))).b, _wgslsmith_f_op_vec3_f32(-arg_1.a));
    let var_1 = 0i;
    let var_2 = arg_1.b;
    let var_3 = u_input.b;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1671f), arg_1.a.x);
}

fn func_1() -> vec2<i32> {
    var var_0 = -1806f == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -930f)), _wgslsmith_f_op_f32(func_4(global2[_wgslsmith_index_u32(~global0.x, 18u)], func_2(vec3<f32>(870f, -592f, -1044f))))));
    global2 = array<Struct_1, 18>();
    global3 = array<i32, 9>();
    global2 = array<Struct_1, 18>();
    var_0 = all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, func_3(Struct_4(vec3<f32>(1334f, 1424f, 196f), global2[_wgslsmith_index_u32(13683u, 18u)]), ~0i, ~34179i)), vec3<bool>(true, false, true)));
    return _wgslsmith_mult_vec2_i32(countOneBits(u_input.b) & _wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, u_input.b), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var_0 = _wgslsmith_mult_vec2_i32(u_input.b, abs(func_1()) << ((global0.xy >> (vec2<u32>(~u_input.e, 40358u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = Struct_3(Struct_2(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-2147483647i, 2147483647i)), func_1().x), _wgslsmith_sub_u32(~u_input.c ^ 0u, _wgslsmith_sub_u32(global0.x, 60661u) | ~50171u), global2[_wgslsmith_index_u32(~(countOneBits(global0.x) ^ func_2(vec3<f32>(924f, -581f, 491f)).b.e), 18u)], Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, false))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global3[_wgslsmith_index_u32(global0.x, 9u)], global3[_wgslsmith_index_u32(global0.x, 9u)]), vec3<i32>(global1[_wgslsmith_index_u32(u_input.e, 10u)], 10121i, -34635i)), var_0.x), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), u_input.e > 4294967295u), -global3[_wgslsmith_index_u32(u_input.d.x, 9u)], select(_wgslsmith_mult_u32(global0.x, u_input.d.x), _wgslsmith_mod_u32(global0.x, u_input.c), u_input.c > 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-963f, 1932f, -758f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(364f, -461f, 613f)))))), Struct_2(u_input.b.x, ~(min(global0.x, u_input.c) | ~44557u), global2[_wgslsmith_index_u32(~23645u, 18u)], global2[_wgslsmith_index_u32(u_input.d.x, 18u)], vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-327f)) - _wgslsmith_f_op_f32(-138f + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(vec3<bool>(true, false, false), -2147483647i, vec3<bool>(false, true, false), 33848i, 0u), Struct_4(vec3<f32>(-1554f, -668f, -231f), global2[_wgslsmith_index_u32(u_input.c, 18u)]))) + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -519f))), select(vec3<bool>(true, false, all(vec4<bool>(true, true, true, true))), vec3<bool>(any(vec3<bool>(true, true, true)), (16653u <= u_input.d.x) && true, true), !(all(vec3<bool>(false, false, true)) & true)), Struct_2(-global1[_wgslsmith_index_u32(abs(reverseBits(55798u)), 10u)], _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.e, 85156u | u_input.d.x), _wgslsmith_dot_vec3_u32(u_input.d.wxz, _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 84695u), u_input.d.zww))), Struct_1(vec3<bool>(true, true, true), u_input.a, func_2(vec3<f32>(1f, 1f, 1f)).b.c, var_0.x, global0.x), func_2(vec3<f32>(_wgslsmith_f_op_f32(825f + -669f), _wgslsmith_f_op_f32(trunc(1078f)), _wgslsmith_f_op_f32(f32(-1f) * -146f))).b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-176f, -1000f, 1000f), vec3<f32>(-405f, -151f, 464f), vec3<bool>(false, false, true)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2093f, -1731f, 1000f), vec3<f32>(-1000f, -892f, -119f))), vec3<f32>(486f, -574f, 538f)))));
    var_0 = u_input.b;
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1404f, -771f, -1064f)) + var_1.a.e), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(395f, var_1.a.e.x, -1505f)))))) - var_1.a.e), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1046f + var_1.a.e.x), _wgslsmith_f_op_f32(var_1.b.e.x - -2021f), _wgslsmith_f_op_f32(var_1.d.e.x + -110f)) + vec3<f32>(_wgslsmith_f_op_f32(select(var_1.d.e.x, var_1.d.e.x, true)), _wgslsmith_f_op_f32(-var_1.d.e.x), _wgslsmith_f_op_f32(round(-166f))))).b);
    let var_3 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(var_2.a.x - 834f)), 1179f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-969f, -629f))))).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(var_2.b.d, -_wgslsmith_div_i32(-1i, global1[_wgslsmith_index_u32(~var_3.e, 10u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-797f, 776f, -1504f, var_2.a.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-3203f, var_1.a.e.x, -502f, var_1.b.e.x))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 1444f, 808f, var_2.a.x)))))), u_input.b.x, _wgslsmith_sub_u32(~var_2.b.e, firstLeadingBit(var_3.e)));
}

