struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(7119u, 40035u);

var<private> global1: array<Struct_2, 19>;

var<private> global2: array<Struct_5, 27>;

var<private> global3: array<bool, 1> = array<bool, 1>(false);

var<private> global4: array<bool, 1> = array<bool, 1>(false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_2) -> u32 {
    global3 = array<bool, 1>();
    let var_0 = all(vec4<bool>(true, arg_3.a.x, 0u > _wgslsmith_mult_u32(global0.x | 0u, 1u), arg_3.a.x));
    global0 = vec2<u32>(~(~(~select(global0.x, 98217u, global4[_wgslsmith_index_u32(4294967295u, 1u)]))), global0.x);
    let var_1 = vec3<u32>(min(1u, _wgslsmith_mod_u32(u_input.d ^ 19055u, u_input.a)), 1u, 26596u) ^ select(u_input.b, ~firstTrailingBit(vec3<u32>(20839u, u_input.d, 4294967295u) & u_input.b), false);
    global1 = array<Struct_2, 19>();
    return (_wgslsmith_sub_u32(25313u, ~(~global0.x)) << (8639u % 32u)) << (_wgslsmith_sub_u32(reverseBits(u_input.d << (max(0u, 1u) % 32u)), global0.x) % 32u);
}

fn func_2() -> vec4<u32> {
    global4 = array<bool, 1>();
    let var_0 = Struct_4(vec2<u32>(func_3(~u_input.c.yz, abs(u_input.c.zz), u_input.c.x, Struct_2(vec2<bool>(false, global3[_wgslsmith_index_u32(37145u, 1u)]))), _wgslsmith_dot_vec4_u32(~vec4<u32>(37257u, 1u, global0.x, 86964u), vec4<u32>(global0.x, u_input.b.x, 25770u, 0u) << (vec4<u32>(1u, 0u, global0.x, global0.x) % vec4<u32>(32u)))) >> (u_input.b.yz % vec2<u32>(32u)), global1[_wgslsmith_index_u32(97995u << (~(~_wgslsmith_add_u32(global0.x, u_input.d)) % 32u), 19u)], abs(1i) | abs(-33855i >> (abs(global0.x) % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1422f, -2088f, 1529f)) * vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-988f, -1157f, 2164f)))), u_input.c.x, ~(~u_input.b.x)), Struct_3(!(!vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 1u)])), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(1000f, var_0.d.a.x)), -262f)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.d.a.zy, vec2<f32>(2080f, var_0.d.a.x))), vec2<f32>(var_0.d.a.x, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-299f, 219f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(916f, _wgslsmith_div_f32(1078f, -332f)) * _wgslsmith_f_op_vec2_f32(floor(var_0.d.a.yy)))));
    let var_2 = Struct_2(select(vec2<bool>(true, true), select(select(select(vec2<bool>(global3[_wgslsmith_index_u32(var_0.d.c, 1u)], global3[_wgslsmith_index_u32(4294967295u, 1u)]), var_0.e.a, global4[_wgslsmith_index_u32(38535u, 1u)]), var_0.e.a, var_0.e.a.x), !(!vec2<bool>(true, global4[_wgslsmith_index_u32(1u, 1u)])), select(var_0.b.a, var_0.e.a, var_0.e.a.x && global4[_wgslsmith_index_u32(1u, 1u)])), -43648i <= u_input.c.x));
    let var_3 = select(select(select(vec3<bool>(all(vec4<bool>(var_0.e.b, true, global3[_wgslsmith_index_u32(var_0.a.x, 1u)], false)), var_2.a.x, false), vec3<bool>(false, !global4[_wgslsmith_index_u32(var_0.d.c, 1u)], true), select(select(vec3<bool>(false, global4[_wgslsmith_index_u32(1u, 1u)], var_0.e.a.x), vec3<bool>(true, true, global3[_wgslsmith_index_u32(var_0.d.c, 1u)]), vec3<bool>(global3[_wgslsmith_index_u32(38528u, 1u)], true, false)), vec3<bool>(global4[_wgslsmith_index_u32(global0.x, 1u)], global3[_wgslsmith_index_u32(u_input.a, 1u)], false), !var_0.e.a.x)), select(vec3<bool>(var_1.x >= var_0.d.a.x, global4[_wgslsmith_index_u32(var_0.d.c, 1u)] || true, global4[_wgslsmith_index_u32(~89996u, 1u)]), vec3<bool>(true, var_2.a.x, false), var_0.e.a.x), vec3<bool>(true, all(!var_0.e.a), global4[_wgslsmith_index_u32(62015u, 1u)])), select(vec3<bool>(true, all(!vec3<bool>(false, false, global3[_wgslsmith_index_u32(9022u, 1u)])), true), !vec3<bool>(all(vec4<bool>(var_0.b.a.x, var_2.a.x, global4[_wgslsmith_index_u32(11813u, 1u)], true)), global4[_wgslsmith_index_u32(10414u, 1u)], true), any(!vec4<bool>(var_0.e.a.x, var_2.a.x, false, var_2.a.x))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.c, 24847u, 92320u), u_input.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, global0.x, var_0.a.x), vec4<u32>(u_input.a, u_input.d, 55203u, 97952u)) << (var_0.a.x % 32u)) ^ u_input.d, 1u)]);
    return vec4<u32>(reverseBits(_wgslsmith_dot_vec2_u32(countOneBits(u_input.b.zz) & select(u_input.b.yy, u_input.b.xz, true), firstLeadingBit(~var_0.a))), 4294967295u, global0.x, var_0.d.c);
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_3) -> vec2<bool> {
    global1 = array<Struct_2, 19>();
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1245f - -118f)))), -2914f, 1389f), countOneBits(_wgslsmith_add_i32(-u_input.c.x, u_input.c.x)), 4294967295u);
    global1 = array<Struct_2, 19>();
    let var_1 = _wgslsmith_f_op_f32(698f * _wgslsmith_f_op_f32(round(var_0.a.x)));
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(abs(38444u), arg_0.x, arg_2.x), 27u)];
    return arg_3.a;
}

fn func_1() -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(global0.x, 27u)];
    let var_1 = ~(~u_input.b.x << (abs(~(global0.x | 4294967295u)) % 32u));
    return Struct_2(func_4(_wgslsmith_add_vec4_u32(max(firstTrailingBit(vec4<u32>(100821u, u_input.b.x, global0.x, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1, u_input.d, 57258u, var_1), vec4<u32>(0u, global0.x, 87297u, global0.x))), ~func_2()), ~0i, vec3<u32>(reverseBits(~65666u), 30798u, 2938u), Struct_3(!select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(1u, 1u)], true), global3[_wgslsmith_index_u32(u_input.d, 1u)]), all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 1u)], false, true, global4[_wgslsmith_index_u32(var_1, 1u)])))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_5, arg_2: i32) -> Struct_2 {
    return func_1();
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> Struct_4 {
    global3 = array<bool, 1>();
    return Struct_4(_wgslsmith_clamp_vec2_u32(u_input.b.zx, select(vec2<u32>(global0.x, 1u), vec2<u32>(global0.x, reverseBits(110796u)), true), u_input.b.xy), global1[_wgslsmith_index_u32(1u, 19u)], ~u_input.c.x, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1676f, _wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_div_f32(-146f, -1126f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(834f, -335f, -1000f)))), _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(21710i, u_input.c.x), vec2<i32>(-1i, u_input.c.x))), u_input.c.x), ~firstLeadingBit(u_input.d)), Struct_3(!select(vec2<bool>(true, global4[_wgslsmith_index_u32(global0.x, 1u)]), !arg_0.a, func_5(arg_0, Struct_5(-1i), 6556i).a), !(!arg_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_1(), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.x, 98668u), 27u)], _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-9086i, u_input.c.x, u_input.c.x, 0i), vec4<i32>(u_input.c.x, -51455i, 6200i, -2147483647i)), vec4<i32>(reverseBits(2147483647i), ~u_input.c.x, reverseBits(u_input.c.x), u_input.c.x))), false, global4[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(~u_input.d, ~4294967295u) ^ _wgslsmith_mod_u32(global0.x, ~global0.x)), 1u)]);
    global0 = abs(vec2<u32>(4294967295u, func_6(func_6(var_0.b, global3[_wgslsmith_index_u32(2297u, 1u)], false).b, func_6(var_0.b, true, var_0.b.a.x).b.a.x, true).d.c)) << (_wgslsmith_div_vec2_u32(countOneBits(~u_input.b.yz), u_input.b.xy) % vec2<u32>(32u));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.c, 14243i), func_6(func_5(Struct_2(vec2<bool>(var_0.b.a.x, false)), global2[_wgslsmith_index_u32(func_6(Struct_2(var_0.e.a), false, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 69472u, global0.x), vec3<u32>(4294967295u, var_0.d.c, global0.x)), 1u)]).a.x, 27u)], -(u_input.c.x ^ -1i)), global4[_wgslsmith_index_u32(global0.x & ~_wgslsmith_dot_vec2_u32(u_input.b.zy, var_0.a), 1u)], func_1().a.x).d.b);
    var var_2 = func_1().a.x;
    var_2 = any(!(!(!vec4<bool>(false, global4[_wgslsmith_index_u32(1u, 1u)], false, false)))) && any(select(vec4<bool>(true, false, var_0.e.a.x, false), select(!vec4<bool>(global3[_wgslsmith_index_u32(global0.x, 1u)], true, false, global3[_wgslsmith_index_u32(1u, 1u)]), select(vec4<bool>(global4[_wgslsmith_index_u32(0u, 1u)], false, false, true), vec4<bool>(global3[_wgslsmith_index_u32(2701u, 1u)], true, false, true), true), var_0.d.a.x >= var_0.d.a.x), select(true, select(global3[_wgslsmith_index_u32(u_input.b.x, 1u)], global3[_wgslsmith_index_u32(var_0.a.x, 1u)], global4[_wgslsmith_index_u32(1u, 1u)]), var_0.b.a.x & global3[_wgslsmith_index_u32(4294967295u, 1u)])));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.d.a.x))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(155f, var_0.d.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.a.x + var_0.d.a.x) - _wgslsmith_div_f32(-1258f, -299f))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_6(global1[_wgslsmith_index_u32(~u_input.a, 19u)], false, all(!(!vec4<bool>(var_0.b.a.x, global3[_wgslsmith_index_u32(38394u, 1u)], var_0.e.b, true)))).a.x, _wgslsmith_mod_vec4_i32(firstTrailingBit(abs(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, var_1)) | _wgslsmith_sub_vec4_i32(vec4<i32>(2095i, var_0.d.b, 39897i, 13996i), vec4<i32>(var_1, -19587i, var_0.d.b, u_input.c.x))), vec4<i32>(u_input.c.x, var_0.d.b >> (var_0.d.c % 32u), -19518i, ~firstLeadingBit(2147483647i))), var_3, firstLeadingBit(u_input.d));
}

