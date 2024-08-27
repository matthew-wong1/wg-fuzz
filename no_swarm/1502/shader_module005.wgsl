struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: f32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: u32,
    c: vec4<i32>,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_3, 20>;

var<private> global2: vec4<u32> = vec4<u32>(1u, 41734u, 2137u, 14847u);

var<private> global3: array<bool, 8> = array<bool, 8>(true, false, true, false, false, false, false, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> bool {
    global0 = Struct_5(!vec3<bool>(all(!global0.d), arg_1.a, global3[_wgslsmith_index_u32(reverseBits(1u), 8u)]), global2.x | ~(~global0.b), select(_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, 0i, u_input.a.x, arg_0), u_input.b), ~(~(vec4<i32>(-78122i, 14558i, arg_0, global0.c.x) >> (vec4<u32>(global2.x, 1u, 1u, 18947u) % vec4<u32>(32u)))), vec4<bool>(true, true, global3[_wgslsmith_index_u32(abs(~u_input.c), 8u)], global3[_wgslsmith_index_u32(max(4294967295u, ~4294967295u), 8u)])), select(select(global0.d, !global0.d, all(select(global0.d.yy, global0.a.yy, global3[_wgslsmith_index_u32(69084u, 8u)]))), global0.d, select(vec4<bool>(false || arg_1.a, global0.d.x || true, false, true), global0.d, global0.d)), arg_1);
    let var_0 = arg_1.a;
    global0 = Struct_5(global0.d.xzy, 38029u, vec4<i32>(-arg_0, 2147483647i, _wgslsmith_div_i32(-2329i, 2147483647i), select(37734i, -2147483647i, all(vec2<bool>(arg_1.a, arg_1.a)))), !global0.d, Struct_2(true));
    let var_1 = all(vec3<bool>(!global3[_wgslsmith_index_u32(u_input.c, 8u)], !(!(true != global0.a.x)), (firstLeadingBit(62634u) <= global2.x) || global3[_wgslsmith_index_u32(global2.x, 8u)]));
    global2 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~(vec4<u32>(16215u, global0.b, global2.x, 1u) << (vec4<u32>(31357u, 1u, global2.x, global2.x) % vec4<u32>(32u))), ~(vec4<u32>(0u, global0.b, global0.b, 7488u) << (vec4<u32>(4294967295u, global2.x, global2.x, global0.b) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(20258u, 14950u, global0.b, 0u) | vec4<u32>(55532u, 58665u, 6173u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.b, global2.x, 14303u, global0.b) ^ vec4<u32>(global2.x, global2.x, global0.b, u_input.c), countOneBits(vec4<u32>(global0.b, 86419u, global2.x, 50611u))), vec4<u32>(global2.x, ~48541u, 0u, 88251u))), vec4<u32>(global0.b, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, u_input.c, 19879u, global2.x), vec4<u32>(u_input.c, 1495u, global2.x, 0u), vec4<u32>(0u, u_input.c, u_input.c, 1u)), vec4<u32>(27313u, 3424u, 4294967295u, 1u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, 34393u), vec4<u32>(80274u, 57026u, 35993u, u_input.c))), u_input.c, ~0u));
    return all(vec2<bool>(true, var_0));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32, arg_3: vec3<i32>) -> vec4<u32> {
    var var_0 = select(!select(vec3<bool>(true, true, func_3(1006i, Struct_2(arg_0.a.a))), vec3<bool>(any(global0.d.yy), all(vec4<bool>(arg_1.a.a.a, arg_1.b.c, global0.d.x, false)), true), vec3<bool>(false, true, arg_0.a.a)), select(!select(!global0.a, !vec3<bool>(arg_0.a.a, true, false), !vec3<bool>(global0.a.x, global3[_wgslsmith_index_u32(global0.b, 8u)], global0.d.x)), vec3<bool>(any(vec2<bool>(false, global3[_wgslsmith_index_u32(17278u, 8u)])), !select(global3[_wgslsmith_index_u32(u_input.c, 8u)], true, true), global0.a.x), select(select(!global0.d.wyy, select(global0.a, global0.a, global0.a), !global0.d.zww), global0.a, any(vec3<bool>(false, global3[_wgslsmith_index_u32(6966u, 8u)], arg_0.c.a)))), !select(!vec3<bool>(false, arg_0.a.a, false), select(global0.d.xxx, select(global0.a, global0.d.wzx, vec3<bool>(false, true, arg_0.c.a)), true), !select(vec3<bool>(false, arg_1.d.c, global3[_wgslsmith_index_u32(arg_1.d.a.x, 8u)]), global0.d.yzw, arg_0.c.a)));
    var var_1 = Struct_5(vec3<bool>(_wgslsmith_dot_vec4_i32(max(global0.c, global0.c), ~vec4<i32>(1i, u_input.a.x, arg_3.x, arg_0.b)) != arg_1.a.b, all(global0.a), arg_0.a.a), global2.x, -global0.c, select(vec4<bool>(any(global0.d), select(true, func_3(1i, Struct_2(false)), var_0.x), true, -617f >= _wgslsmith_f_op_f32(-arg_0.d)), global0.d, vec4<bool>(global3[_wgslsmith_index_u32(1u, 8u)], false, global3[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, 0u, 1u, arg_1.d.a.x), vec4<u32>(u_input.c, u_input.c, 51650u, u_input.c)), global0.b), 8u)], false)), global0.e);
    global3 = array<bool, 8>();
    let var_2 = vec4<bool>(any(vec4<bool>(false, true, func_3(i32(-1i) * -18512i, arg_0.c), var_0.x)), arg_0.c.a, !(false != !all(var_1.a.yz)), -1309f > _wgslsmith_f_op_f32(-arg_0.d));
    global1 = array<Struct_3, 20>();
    return ~vec4<u32>(abs(4294967295u), abs(max(~global2.x, firstTrailingBit(4294967295u))), 14552u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, arg_1.b.a.x, 1u, 0u) >> (vec4<u32>(0u, 20951u, 44154u, arg_1.d.a.x) % vec4<u32>(32u))), vec4<u32>(0u, var_1.b, _wgslsmith_clamp_u32(4294967295u, 14747u, var_1.b), ~749u)));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: i32) -> bool {
    global2 = ~select(_wgslsmith_sub_vec4_u32(~func_2(global1[_wgslsmith_index_u32(u_input.c, 20u)], Struct_4(arg_1, Struct_1(global2.yy, global0.a.xy, global3[_wgslsmith_index_u32(global0.b, 8u)]), vec3<u32>(u_input.c, 1u, global2.x), Struct_1(global2.zy, global0.a.xz, global0.d.x), vec4<f32>(1120f, arg_1.d, 1015f, arg_1.d)), u_input.c, u_input.b.xwz), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, global0.b, u_input.c), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 1u, global2.x, u_input.c), vec4<u32>(3233u, global2.x, 4294967295u, 39937u)))), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, global0.b, global0.b, u_input.c), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(global0.b, 69776u, u_input.c, global2.x), vec4<u32>(u_input.c, 1u, global2.x, 33349u), true), vec4<u32>(0u, global0.b, 4294967295u, u_input.c), vec4<u32>(76388u, 31068u, global2.x, u_input.c))), !select(select(global0.d, vec4<bool>(true, false, global0.e.a, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(arg_1.c.a, arg_1.c.a, false, arg_1.c.a), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.c, 8u)], arg_1.c.a, false), global0.e.a), !global0.e.a));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f), vec2<f32>(-1004f, 1043f), select(select(!vec2<bool>(global3[_wgslsmith_index_u32(global0.b, 8u)], global0.e.a), !(!global0.d.wz), func_1(u_input.b.x, Struct_3(global0.e, -1i, global0.e, -440f, vec2<i32>(20506i, 51267i)), ~global0.c.x, 0i)), select(select(select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(u_input.c, 8u)]), global0.d.xz, false), vec2<bool>(false, false), !global0.d.zz), select(select(global0.d.zw, global0.a.zz, vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 8u)], global3[_wgslsmith_index_u32(7219u, 8u)])), !global0.d.ww, select(vec2<bool>(false, global0.a.x), vec2<bool>(global0.e.a, true), false)), global0.d.wy), true)));
    let var_2 = global0.d;
    let var_3 = global0.c.x;
    global2 = vec4<u32>(~(~(~35457u)), _wgslsmith_div_u32(~abs(global0.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 42818u, u_input.c, u_input.c), vec4<u32>(global0.b, 11250u, global0.b, 1u))), ~(~(u_input.c ^ 4294967295u)), 21297u) & _wgslsmith_sub_vec4_u32(~select(~vec4<u32>(0u, 1u, global0.b, 1u), vec4<u32>(44017u, 0u, u_input.c, 4294967295u), all(global0.d)), max(abs(vec4<u32>(1u, u_input.c, 4294967295u, 0u) << (vec4<u32>(1u, global2.x, 4294967295u, 4294967295u) % vec4<u32>(32u))), ~vec4<u32>(global0.b, u_input.c, u_input.c, 0u)));
    var var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))), 1460f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(918f, var_1.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1136f, -739f) * vec2<f32>(var_1.x, 832f)) - vec2<f32>(var_1.x, -614f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, 1526f)), vec2<f32>(1035f, var_1.x)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(188f, var_1.x), vec2<f32>(var_1.x, var_1.x), vec2<bool>(var_2.x, false))) + _wgslsmith_div_vec2_f32(vec2<f32>(-972f, var_1.x), vec2<f32>(var_1.x, -236f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 557f) - vec2<f32>(-790f, var_1.x)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(-54188i, u_input.b.x) | vec2<i32>(global0.c.x, u_input.b.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(global0.c.zww, global0.c.yxz), _wgslsmith_mod_i32(18725i, -23167i))), select(~u_input.a, vec2<i32>(34625i, global0.c.x), global3[_wgslsmith_index_u32(~4294967295u, 8u)]), global3[_wgslsmith_index_u32(~(4294967295u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 2290u), global2.xz) % 32u)), 8u)]), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(ceil(258f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1087f - var_4.x), var_1.x)))), _wgslsmith_add_vec2_u32(~global2.yx, abs(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(global0.b, global2.x), vec2<u32>(111614u, global2.x))))), var_1.x);
}

