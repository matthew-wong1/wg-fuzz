struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: u32;

var<private> global3: array<Struct_1, 16>;

var<private> global4: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = arg_1.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(1050f, _wgslsmith_f_op_f32(-global0.a.x), global0.c.x)), _wgslsmith_f_op_f32(select(arg_1.x, global0.a.x, global0.c.x)), arg_1.x) * vec3<f32>(global0.a.x, -459f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-2162f)))))), ~u_input.a.x, !(!global0.c));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    global4 = func_2(-u_input.d.xyz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(u_input.d.zyy, global0.a.yz, global4.b, 2147483647i).a.x, _wgslsmith_f_op_f32(357f + global0.a.x))) * vec2<f32>(-379f, global0.a.x)), reverseBits(~(~arg_1.b) ^ arg_1.b), u_input.d.x);
    global4 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(3303f, 1097f, arg_1.a.x))), _wgslsmith_mod_u32(1u, u_input.a.x), select(select(vec2<bool>(arg_1.c.x, global0.c.x), select(func_2(vec3<i32>(-3713i, u_input.d.x, 0i), vec2<f32>(arg_1.a.x, arg_1.a.x), 23687u, -1i).c, !global0.c, arg_1.a.x == global0.a.x), vec2<bool>(true, true)), arg_1.c, vec2<bool>(52345u < (u_input.a.x << (arg_1.b % 32u)), arg_1.c.x)));
    global1 = !arg_1.c.x;
    var var_0 = ~(abs(89353u) >> (~(~(~global4.b)) % 32u));
    global4 = func_2(~max(min(u_input.c.yxx, ~u_input.c.wzz), max(u_input.c.wxw, u_input.d.zwz ^ vec3<i32>(u_input.c.x, u_input.d.x, u_input.d.x))), vec2<f32>(_wgslsmith_div_f32(global4.a.x, _wgslsmith_f_op_f32(min(global4.a.x, -1374f))), global0.a.x), ~(1u << (~global0.b % 32u)), -_wgslsmith_dot_vec3_i32(-countOneBits(u_input.c.wxw), -vec3<i32>(-2147483647i, 1i, u_input.c.x) << (~vec3<u32>(u_input.a.x, global0.b, u_input.a.x) % vec3<u32>(32u))));
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> i32 {
    global3 = array<Struct_1, 16>();
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(359f, arg_0.a.x, global0.a.x) * _wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(arg_0.a.x, -1000f, arg_0.a.x))))), 33968u ^ ~(select(global0.b, 1u, false) ^ ~u_input.a.x), !func_2(~select(vec3<i32>(-1i, u_input.c.x, 0i), vec3<i32>(-15692i, u_input.c.x, u_input.c.x), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.xz - vec2<f32>(1260f, 1000f))), ~26946u, 1i).c);
    var var_1 = var_0;
    var_1 = var_0;
    global0 = arg_0;
    return u_input.c.x;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = arg_1;
    let var_0 = -627f;
    var var_1 = 1u;
    let var_2 = 1i;
    var var_3 = Struct_1(global4.a, func_2(u_input.d.wxw, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), 1f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.a.x, 1000f) - global4.a.xx)), global4.b, min(3676i, arg_0)).b, func_3(!any(!vec4<bool>(arg_1.c.x, true, arg_3.c.x, arg_2.c.x)), func_3(!(!arg_2.c.x), arg_2, global0.c), !vec2<bool>(any(vec3<bool>(true, false, true)), arg_3.a.x > -821f)).c);
    return global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(11616u, _wgslsmith_sub_u32(37401u, arg_3.b >> (0u % 32u))), 16u)];
}

fn func_1(arg_0: vec2<u32>) -> bool {
    var var_0 = func_5(abs(func_4(func_3(!global4.c.x, func_2(u_input.c.wzz, global4.a.yx, global0.b, u_input.c.x), global0.c))), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(countOneBits(_wgslsmith_mod_u32(14588u, 14607u))), func_3(global0.c.x, func_3(global0.c.x, Struct_1(vec3<f32>(-315f, global0.a.x, global0.a.x), 2555u, vec2<bool>(true, global0.c.x)), func_3(global4.c.x, Struct_1(vec3<f32>(-981f, 117f, global4.a.x), 4854u, global4.c), global4.c).c), !vec2<bool>(global0.c.x, global4.c.x)).b), 16u)], func_2(_wgslsmith_add_vec3_i32(u_input.d.zwx, ~vec3<i32>(u_input.d.x, 9580i, u_input.d.x)) | vec3<i32>(-u_input.d.x, -38812i & u_input.d.x, 44475i), global4.a.xy, 39356u, _wgslsmith_mult_i32(u_input.d.x, u_input.c.x)), func_2(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.d.ywy, u_input.c.zyx), -2147483647i, ~(-2147483647i)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, u_input.d.x, 2147483647i), vec3<i32>(2147483647i, u_input.d.x, u_input.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a.yx - global4.a.xy))), 4294967295u, ~_wgslsmith_dot_vec3_i32(-u_input.c.wzz, u_input.d.yxx)));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1156f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + 1618f))), _wgslsmith_f_op_f32(-161f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x))), global4.a.x), ~u_input.a.x, vec2<bool>(false, all(vec4<bool>(arg_0.x >= var_0.b, false, true, global0.c.x))));
    global2 = 7048u;
    let var_2 = reverseBits(countOneBits(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, -2147483647i))) | u_input.c.xy;
    global2 = _wgslsmith_add_u32(37903u, ~var_1.b);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.b < abs(~global4.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0.a, global0.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-461f, -336f, global4.a.x)))))));
    let var_2 = ~_wgslsmith_mod_i32(u_input.d.x, 44693i >> (select(56343u, ~u_input.b, global0.c.x) % 32u));
    let var_3 = global3[_wgslsmith_index_u32(global4.b << (_wgslsmith_mult_u32((global0.b << (_wgslsmith_div_u32(1u, u_input.a.x) % 32u)) & ~global0.b, ~_wgslsmith_mult_u32(_wgslsmith_div_u32(17139u, global4.b), global0.b)) % 32u), 16u)];
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(-391f, global0.a.x)), _wgslsmith_f_op_f32(global4.a.x * -734f), _wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1) * global0.a), !(!select(true, false, global0.c.x)))), reverseBits(u_input.a.x), select(var_3.c, vec2<bool>(all(vec2<bool>(true, true)), !(false || var_3.c.x)), !vec2<bool>(func_1(vec2<u32>(var_3.b, 49441u)), true)));
    var var_5 = global3[_wgslsmith_index_u32(min(~global0.b, _wgslsmith_add_u32(u_input.b, ~(~u_input.a.x) ^ ~(~14365u))), 16u)];
    let var_6 = func_5(-17636i, func_2(vec3<i32>(max(_wgslsmith_sub_i32(u_input.d.x, -1i), _wgslsmith_div_i32(6747i, -1i)), -43161i, -16915i >> ((4294967295u ^ global0.b) % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(401f, -1194f))) - _wgslsmith_f_op_vec2_f32(-var_4.a.yy)), ~0u, select(-2147483647i, 2147483647i, !(u_input.c.x > -5386i))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.a) - vec3<f32>(-1000f, 862f, 797f)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(global4.a))))), global4.b, !func_2(u_input.d.xwy, global4.a.xy, ~51194u, -2147483647i & u_input.c.x).c), func_3(all(select(vec2<bool>(true, true), var_3.c, true)), var_4, !global0.c));
    let var_7 = ~var_2;
    var var_8 = vec4<u32>(1u, global0.b, func_2(vec3<i32>(var_7, min(u_input.d.x, u_input.c.x) | var_7, -13905i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_3.a.zy, vec2<f32>(-1250f, var_4.a.x), var_3.c))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, 1440f) * var_1.zz)), ~var_5.b, -var_2).b, var_6.b);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, 35886u, _wgslsmith_dot_vec4_i32(u_input.c << (vec4<u32>(func_5(var_7, Struct_1(var_4.a, var_6.b, var_5.c), Struct_1(vec3<f32>(global0.a.x, 608f, global4.a.x), var_3.b, vec2<bool>(global0.c.x, true)), Struct_1(vec3<f32>(var_4.a.x, var_5.a.x, 143f), global0.b, global0.c)).b, _wgslsmith_sub_u32(u_input.a.x, 32822u), global4.b, select(0u, global4.b, true)) % vec4<u32>(32u)), u_input.c));
}

