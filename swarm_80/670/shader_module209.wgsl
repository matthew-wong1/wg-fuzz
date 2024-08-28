struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(false, 0u), Struct_2(true, 4294967295u), Struct_2(false, 4294967295u), Struct_2(false, 34310u), Struct_2(true, 1u));

var<private> global2: Struct_1;

var<private> global3: bool;

var<private> global4: array<bool, 32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec3<f32>) -> vec4<bool> {
    global0 = firstTrailingBit(~countOneBits(~arg_0.zzx | _wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, 1u, u_input.a), arg_0.xyy)));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1000f)), 1000f)), 110f);
    var var_1 = global0.x;
    let var_2 = ~(-32369i << (arg_0.x % 32u));
    let var_3 = ~1i;
    return !(!(!select(select(vec4<bool>(arg_2.a, false, global4[_wgslsmith_index_u32(7639u, 32u)], global4[_wgslsmith_index_u32(global0.x, 32u)]), vec4<bool>(false, false, global4[_wgslsmith_index_u32(4546u, 32u)], arg_2.a), vec4<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 32u)], arg_2.a, true)), !vec4<bool>(false, false, global4[_wgslsmith_index_u32(arg_0.x, 32u)], true), all(vec4<bool>(global4[_wgslsmith_index_u32(67395u, 32u)], true, true, arg_2.a)))));
}

fn func_2(arg_0: vec2<u32>) -> vec2<i32> {
    global0 = _wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, u_input.a, 1u) | vec3<u32>(27515u, 4294967295u, 22926u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 89144u), vec3<u32>(global0.x, global0.x, global0.x))) >> (vec3<u32>(~arg_0.x, 66728u, _wgslsmith_sub_u32(~u_input.a, firstTrailingBit(1u))) % vec3<u32>(32u)), vec3<u32>(~arg_0.x, ~(u_input.a | global0.x), ~abs(4294967295u)) << (_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, 18434u, arg_0.x), vec3<u32>(0u, arg_0.x, 1u), vec3<u32>(u_input.a, global0.x, u_input.a)), vec3<u32>(4294967295u, u_input.a, u_input.a) & vec3<u32>(u_input.a, 0u, 70448u)), select(vec3<u32>(0u, global0.x, arg_0.x), vec3<u32>(36573u, 1u, global0.x), global4[_wgslsmith_index_u32(global0.x, 32u)]) ^ abs(vec3<u32>(4294967295u, 0u, global0.x))) % vec3<u32>(32u)));
    let var_0 = select(select(vec4<bool>(true, !all(vec2<bool>(false, global4[_wgslsmith_index_u32(22908u, 32u)])), global4[_wgslsmith_index_u32(38065u, 32u)], 29035u != ~u_input.a), select(!select(vec4<bool>(global4[_wgslsmith_index_u32(1u, 32u)], true, global4[_wgslsmith_index_u32(0u, 32u)], false), vec4<bool>(false, false, global4[_wgslsmith_index_u32(1u, 32u)], true), vec4<bool>(global4[_wgslsmith_index_u32(arg_0.x, 32u)], false, global4[_wgslsmith_index_u32(25640u, 32u)], false)), func_3(~vec4<u32>(4294967295u, 74526u, global0.x, 94131u), _wgslsmith_f_op_vec2_f32(ceil(global2.b.yz)), Struct_2(global4[_wgslsmith_index_u32(u_input.a, 32u)], arg_0.x), global2.b), !vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 32u)], true, false)), true), func_3(abs(vec4<u32>(arg_0.x, global0.x, ~u_input.a, _wgslsmith_sub_u32(u_input.a, global0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.b.xz + vec2<f32>(1269f, 450f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.b.x, global2.a)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1313f, global2.b.x) * global2.b.zz)))), Struct_2(false, global0.x & reverseBits(4294967295u)), _wgslsmith_f_op_vec3_f32(select(global2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global2.b, vec3<f32>(global2.a, global2.a, -499f)))), select(select(vec3<bool>(true, global4[_wgslsmith_index_u32(47083u, 32u)], false), vec3<bool>(true, false, true), vec3<bool>(global4[_wgslsmith_index_u32(99517u, 32u)], global4[_wgslsmith_index_u32(9242u, 32u)], global4[_wgslsmith_index_u32(4294967295u, 32u)])), func_3(vec4<u32>(global0.x, global0.x, 105311u, 40919u), global2.b.xx, global1[_wgslsmith_index_u32(148883u, 5u)], global2.b).wxw, all(vec4<bool>(false, true, false, true)))))), vec4<bool>(true, !(!(global4[_wgslsmith_index_u32(19791u, 32u)] == global4[_wgslsmith_index_u32(global0.x, 32u)])), true, any(select(vec3<bool>(global4[_wgslsmith_index_u32(0u, 32u)], true, false), select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 32u)], true, true), vec3<bool>(global4[_wgslsmith_index_u32(0u, 32u)], true, global4[_wgslsmith_index_u32(global0.x, 32u)]), true), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 71591u), 32u)]))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1626f, global2.b.x, global2.b.x, global2.b.x) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1389f, global2.a, global2.a, global2.a), vec4<f32>(-2002f, -1000f, global2.a, global2.b.x)))) - vec4<f32>(-1315f, global2.b.x, _wgslsmith_f_op_f32(abs(global2.a)), _wgslsmith_div_f32(global2.a, global2.a))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-534f, global2.b.x, global2.a, 1258f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.b.x, 234f, 1595f, 414f), vec4<f32>(1535f, 370f, -421f, -1422f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, -227f, -229f, 262f)))));
    var var_2 = Struct_3(Struct_2(global4[_wgslsmith_index_u32((43503u & u_input.a) | 111322u, 32u)], ~(~44469u)), select(var_0.zz, var_0.zx, all(select(!var_0, func_3(vec4<u32>(global0.x, global0.x, global0.x, 2776u), vec2<f32>(var_1.x, 407f), Struct_2(global4[_wgslsmith_index_u32(u_input.a, 32u)], 4752u), vec3<f32>(var_1.x, -1679f, 731f)), true))), !global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(~80354u, ~4294967295u), ~(~4294967295u)), 32u)]);
    global2 = Struct_1(_wgslsmith_f_op_f32(-var_1.x), vec3<f32>(_wgslsmith_f_op_f32(global2.b.x * -713f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - 285f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(760f + var_1.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global2.b.x)), -1463f, any(var_0.zyx))))));
    return vec2<i32>(_wgslsmith_mod_i32(-2147483647i, -48693i) ^ select(-1i, 45779i, true), countOneBits(abs(~0i)));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = ~(~vec4<u32>(_wgslsmith_add_u32(u_input.a | u_input.a, abs(global0.x)), ~u_input.a, 1u, abs(~4294967295u)));
    var var_2 = _wgslsmith_dot_vec2_i32(select((vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 1i)) ^ vec2<i32>(0i >> (var_1.x % 32u), 0i), _wgslsmith_add_vec2_i32(~(~vec2<i32>(31845i, -17418i)), func_2(vec2<u32>(u_input.a, u_input.a) | var_1.yz)), var_0), -_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(2147483647i, 2147483647i)), max(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1837i, 1i))) << (vec2<u32>(abs(_wgslsmith_mod_u32(0u, var_1.x)), u_input.a) % vec2<u32>(32u)));
    var var_3 = ~countOneBits(u_input.a);
    global1 = array<Struct_2, 5>();
    return Struct_2(func_3(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, var_1.x, var_1.x) << (vec4<u32>(52343u, 53230u, var_1.x, 1u) % vec4<u32>(32u)), vec4<u32>(16938u, u_input.a, 0u, 1u) >> (vec4<u32>(6292u, global0.x, 4294967295u, 1u) % vec4<u32>(32u))), _wgslsmith_div_vec2_f32(vec2<f32>(global2.b.x, arg_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2.b.zy, global2.b.xx) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-860f, 821f)))), global1[_wgslsmith_index_u32(3335u, 5u)], vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-192f, 451f)) + 1622f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), global2.b.x)).x, _wgslsmith_dot_vec2_u32(countOneBits(~global0.yy), var_1.zy));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_2) -> StorageBuffer {
    return StorageBuffer(reverseBits(~arg_1), -arg_1.x ^ _wgslsmith_dot_vec2_i32(arg_1.xx, (arg_1.zz ^ arg_1.zx) >> ((vec2<u32>(4294967295u, 85558u) >> (vec2<u32>(arg_2, arg_3.b) % vec2<u32>(32u))) % vec2<u32>(32u))), arg_0.xz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b.x;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1419f, global2.b.x, global2.b.x, global2.b.x)) - vec4<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(trunc(2398f)), _wgslsmith_f_op_f32(select(global2.b.x, 399f, false)), -1000f)))), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)), reverseBits(vec3<i32>(-22654i, -13836i, -1i)) >> (max(vec3<u32>(u_input.a, 0u, global0.x), vec3<u32>(u_input.a, 46385u, 0u)) % vec3<u32>(32u))), ~(~select(global0.x, global0.x, global4[_wgslsmith_index_u32(global0.x, 32u)]) >> (countOneBits(abs(72399u)) % 32u)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.a, global2.a))), false));
}

