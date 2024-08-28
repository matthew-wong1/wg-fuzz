struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<u32>;

var<private> global2: Struct_3 = Struct_3(34149u, Struct_1(vec4<u32>(40109u, 1u, 0u, 91980u), 25341u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), Struct_2(5171u, -1i, vec4<u32>(47373u, 15166u, 1u, 15009u), vec3<f32>(800f, 1504f, -1297f), Struct_1(vec4<u32>(1u, 1u, 1u, 1u), 1u)), false);

var<private> global3: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(Struct_1(vec4<u32>(82713u, 0u, 16774u, 0u), 66582u)), Struct_4(Struct_1(vec4<u32>(60400u, 4294967295u, 98192u, 24454u), 0u)), Struct_4(Struct_1(vec4<u32>(29081u, 95056u, 0u, 24662u), 0u)), Struct_4(Struct_1(vec4<u32>(0u, 4294967295u, 1u, 4294967295u), 1u)), Struct_4(Struct_1(vec4<u32>(1u, 21850u, 52450u, 52411u), 1u)), Struct_4(Struct_1(vec4<u32>(38382u, 11304u, 4294967295u, 4294967295u), 62684u)), Struct_4(Struct_1(vec4<u32>(8480u, 73006u, 4294967295u, 81350u), 1u)), Struct_4(Struct_1(vec4<u32>(87261u, 0u, 34958u, 12941u), 22455u)), Struct_4(Struct_1(vec4<u32>(79802u, 12196u, 0u, 34045u), 0u)), Struct_4(Struct_1(vec4<u32>(4294967295u, 0u, 12060u, 0u), 17639u)), Struct_4(Struct_1(vec4<u32>(4294967295u, 25668u, 1710u, 0u), 4475u)), Struct_4(Struct_1(vec4<u32>(27500u, 76833u, 4294967295u, 1u), 44033u)), Struct_4(Struct_1(vec4<u32>(1u, 4294967295u, 52716u, 65136u), 15353u)), Struct_4(Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 26985u), 1u)), Struct_4(Struct_1(vec4<u32>(24054u, 0u, 60179u, 29155u), 53211u)));

var<private> global4: array<bool, 11> = array<bool, 11>(true, false, true, false, false, false, true, false, true, true, true);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_4(global2.d.e);
    let var_1 = var_0.a;
    let var_2 = global2.d;
    let var_3 = _wgslsmith_f_op_f32(global2.d.d.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(697f)), 353f)));
    let var_4 = vec4<bool>(false, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.d.x - var_2.d.x) - var_2.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -391f) - _wgslsmith_f_op_f32(1118f + -701f)))) < _wgslsmith_f_op_f32(select(-143f, _wgslsmith_f_op_f32(-1483f * _wgslsmith_f_op_f32(-global2.d.d.x)), true)), true, all(!select(vec4<bool>(global4[_wgslsmith_index_u32(70113u, 11u)], global2.e, true, true), !vec4<bool>(false, global4[_wgslsmith_index_u32(38624u, 11u)], global4[_wgslsmith_index_u32(80213u, 11u)], global2.e), select(vec4<bool>(global2.e, true, true, global2.e), vec4<bool>(global4[_wgslsmith_index_u32(6861u, 11u)], global2.e, false, true), global2.e))));
    return global2.d.d;
}

fn func_2() -> f32 {
    let var_0 = Struct_2(global1.x, u_input.c.x, _wgslsmith_mult_vec4_u32(max(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(global2.c, global2.b.a), vec4<u32>(0u, global2.d.c.x, 2430u, 0u)), vec4<u32>(select(u_input.a.x, global1.x, true), _wgslsmith_add_u32(u_input.a.x, global1.x), _wgslsmith_dot_vec3_u32(global1.wzy, global2.b.a.yww), 55454u)), global2.c), _wgslsmith_f_op_vec3_f32(global2.d.d * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global2.d.d.x, global2.d.d.x)) * vec3<f32>(-163f, global2.d.d.x, 1809f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-469f, global2.d.d.x, global2.d.d.x)))), global2.d.e);
    global4 = array<bool, 11>();
    var var_1 = _wgslsmith_f_op_vec3_f32(func_3());
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -142f), var_1.x, var_0.d.x);
    let var_2 = !(!(!select(!vec4<bool>(global2.e, global2.e, true, global4[_wgslsmith_index_u32(var_0.e.b, 11u)]), select(vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.a.x, 11u)], global4[_wgslsmith_index_u32(u_input.a.x, 11u)], true), vec4<bool>(false, global4[_wgslsmith_index_u32(25536u, 11u)], false, true), false), global2.e == true)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(1890f + _wgslsmith_f_op_f32(f32(-1f) * -1168f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3()).x + var_0.d.x))) - global2.d.d.x);
}

fn func_1() -> u32 {
    var var_0 = global2.d.d.x;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2()), 1198f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3()).yx)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(210f, 1000f) - global2.d.d.zx))) + _wgslsmith_f_op_vec2_f32(global2.d.d.zy - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(global2.d.d.zx)))))));
    var var_2 = Struct_1(~countOneBits(~(~vec4<u32>(global1.x, global1.x, global1.x, 42473u))), 357u);
    var var_3 = Struct_4(Struct_1(vec4<u32>(global2.a, 0u, abs(abs(42866u)), ~(~u_input.e)), ~4294967295u));
    let var_4 = _wgslsmith_mod_u32(_wgslsmith_add_u32(var_3.a.a.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_2.b, global1.x)), ~global1.x)), 1u) >> (u_input.e % 32u);
    return ~54884u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(global1.x, Struct_1(global2.b.a, ~_wgslsmith_clamp_u32(global2.c.x, global1.x, 0u)), global2.b.a, global2.d, global2.e);
    let var_0 = u_input.c.yyx;
    let var_1 = Struct_2((u_input.e >> (~abs(0u) % 32u)) & 4294967295u, u_input.b.x, vec4<u32>(u_input.a.x, global1.x >> (u_input.e % 32u), ~(u_input.e | _wgslsmith_sub_u32(u_input.a.x, 0u)), _wgslsmith_add_u32(36428u, select(~global2.c.x, _wgslsmith_clamp_u32(global2.d.e.a.x, u_input.a.x, u_input.e), true))), global2.d.d, global2.d.e);
    let var_2 = _wgslsmith_f_op_f32(-var_1.d.x);
    var var_3 = any(vec3<bool>(any(!vec4<bool>(true, global2.e, global2.e, global2.e)), select(true, global2.e, true), any(!select(vec3<bool>(true, global4[_wgslsmith_index_u32(global1.x, 11u)], true), vec3<bool>(true, true, global4[_wgslsmith_index_u32(var_1.a, 11u)]), true))));
    let var_4 = any(!vec2<bool>(false, global2.e));
    global0 = ~(~_wgslsmith_mod_i32(~select(global2.d.b, var_1.b, false), ~52145i));
    var var_5 = global2.d;
    global1 = vec4<u32>(4299u, countOneBits(~(~(~54941u))), global2.b.a.x, ~func_1() & _wgslsmith_dot_vec2_u32(~global2.c.xx, countOneBits(reverseBits(vec2<u32>(1u, var_1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(abs(u_input.b.x), u_input.b.x)), _wgslsmith_clamp_u32(min(~_wgslsmith_mod_u32(0u, global2.a), 492u), 1u, 4294967295u), vec4<f32>(global2.d.d.x, -1439f, _wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(-var_1.d.x)), -select(vec4<i32>(29332i, -2147483647i, -2147483647i, var_5.b), _wgslsmith_sub_vec4_i32(vec4<i32>(global2.d.b, -36769i, var_1.b, var_5.b), vec4<i32>(global2.d.b, -41448i, u_input.d.x, global2.d.b)), vec4<bool>(var_4, global2.e, false, true)) << (var_1.e.a % vec4<u32>(32u)));
}

