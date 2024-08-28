struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(-44166i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, -1i, 51550i, 42148i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -28i), vec4<i32>(-23853i, 66123i, 2147483647i, 25867i), vec4<i32>(i32(-2147483648), 42391i, -104405i, 0i), vec4<i32>(-33619i, -1i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), -1i, 1i, 0i), vec4<i32>(2147483647i, -42502i, 1i, i32(-2147483648)), vec4<i32>(-24117i, 0i, 1i, i32(-2147483648)), vec4<i32>(-33063i, 46442i, i32(-2147483648), 0i), vec4<i32>(-16859i, 2147483647i, i32(-2147483648), -1i));

var<private> global2: array<u32, 21> = array<u32, 21>(4294967295u, 83678u, 4294967295u, 1u, 1u, 4294967295u, 0u, 6166u, 76856u, 4294967295u, 29437u, 2847u, 0u, 20117u, 1u, 367u, 30641u, 28802u, 70283u, 1u, 3755u);

var<private> global3: array<Struct_2, 1>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<f32> {
    global3 = array<Struct_2, 1>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 124f, 1410f, -306f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-200f, 616f, -320f, -279f) * vec4<f32>(-1000f, 222f, -941f, -276f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-333f, 1032f, 2681f, -500f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1267f, 1000f, 974f, 510f), vec4<f32>(1786f, -2250f, 875f, -1451f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-748f, 566f, -328f, 540f)))), Struct_1(!(true & select(true, true, true))), 84292u, Struct_1(true && !all(vec3<bool>(true, false, false))));
    var var_1 = global0[_wgslsmith_index_u32(var_0.c, 31u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-187f)) * var_0.a.x);
    var var_3 = ~_wgslsmith_mod_vec2_u32(u_input.a.xz, firstTrailingBit(~(vec2<u32>(80225u, 43858u) >> (vec2<u32>(var_0.c, global2[_wgslsmith_index_u32(var_0.c, 21u)]) % vec2<u32>(32u)))));
    return vec4<f32>(var_2, _wgslsmith_f_op_f32(160f - var_2), var_0.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1096f - _wgslsmith_f_op_f32(f32(-1f) * -292f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -389f) - var_0.a.x))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3()).zxz);
    global0 = array<Struct_1, 31>();
    global3 = array<Struct_2, 1>();
    let var_1 = Struct_1(all(select(!(!vec2<bool>(arg_1.d.a, arg_1.d.a)), select(vec2<bool>(false, arg_1.d.a), !vec2<bool>(arg_2.a, arg_2.a), -61100i > u_input.d), select(vec2<bool>(arg_2.a, false), select(vec2<bool>(arg_1.b.a, false), vec2<bool>(true, arg_1.b.a), arg_2.a), all(vec3<bool>(arg_2.a, false, arg_1.b.a))))));
    let var_2 = firstTrailingBit(-2147483647i);
    return var_2;
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = vec4<i32>(-(~8494i), func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(224f, 1512f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2345f, -934f))))), Struct_2(_wgslsmith_f_op_vec4_f32(func_3()), global0[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_div_u32(u_input.b, arg_0), Struct_1(true)), global0[_wgslsmith_index_u32(1u, 31u)]), ~u_input.d, u_input.d) << (vec4<u32>(0u, ~u_input.e, 29843u, ~arg_0) % vec4<u32>(32u));
    return -63030i;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1188f, -588f, 177f))) + vec3<f32>(_wgslsmith_f_op_f32(abs(-134f)), 1224f, _wgslsmith_f_op_f32(sign(1524f)))), vec3<f32>(1f, 1f, 1f)))));
    let var_1 = false;
    var var_2 = vec2<u32>(~(u_input.a.x << ((23479u ^ ~u_input.a.x) % 32u)), 60239u ^ u_input.a.x);
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -684f, _wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -200f)))), all(!vec3<bool>(arg_0.a, false, var_1))))), arg_0, _wgslsmith_sub_u32(u_input.a.x, 64199u), Struct_1(!(!all(vec2<bool>(arg_0.a, true)))));
    let var_4 = !vec4<bool>(arg_1, var_3.c > 0u, !(var_1 & false) & ((var_3.d.a || arg_1) && (68694u > u_input.a.x)), var_1 || !all(vec3<bool>(false, true, true)));
    return Struct_2(var_3.a, arg_0, var_2.x, Struct_1(false));
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_1 {
    global3 = array<Struct_2, 1>();
    global2 = array<u32, 21>();
    global2 = array<u32, 21>();
    var var_0 = func_5(Struct_1(arg_0), _wgslsmith_add_i32(1i, ~u_input.d) >= ((u_input.d & 1i) | _wgslsmith_add_i32(~u_input.d, func_2(4294967295u))), -vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.d), vec2<i32>(u_input.d, u_input.d)), u_input.c), u_input.d, u_input.c));
    let var_1 = vec2<bool>(false, any(vec3<bool>(_wgslsmith_f_op_f32(arg_1 + -249f) <= func_5(Struct_1(true), true, vec3<i32>(u_input.d, u_input.d, u_input.d)).a.x, arg_0, firstTrailingBit(u_input.d) == -2147483647i)));
    return Struct_1(true);
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = func_5(func_1(false, _wgslsmith_f_op_f32(1511f + _wgslsmith_f_op_f32(-arg_3.a.x))), arg_3.d.a, reverseBits(-(~vec3<i32>(0i, u_input.d, u_input.d))));
    let var_1 = ~select(-1i, 0i, select(!arg_1.a, true, false));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1025f, var_0.a.x, -1250f) - _wgslsmith_f_op_vec3_f32(arg_3.a.yyw * arg_3.a.wwy)))) * arg_3.a.wwy);
    var var_3 = vec2<i32>(~countOneBits(_wgslsmith_div_i32(u_input.c >> (1u % 32u), min(19945i, 0i))), _wgslsmith_div_i32(0i, _wgslsmith_dot_vec4_i32(-vec4<i32>(36096i, u_input.c, 2147483647i, var_1) & global1[_wgslsmith_index_u32(4294967295u, 11u)], vec4<i32>(abs(var_1), u_input.d, -2147483647i, func_4(var_0.a.zz, global3[_wgslsmith_index_u32(arg_0.x, 1u)], arg_2)))));
    var var_4 = arg_3;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1809f, 178f, -662f, 515f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1942f, var_0.a.x, arg_3.a.x, 1214f), vec4<f32>(146f, -177f, arg_3.a.x, var_0.a.x))))) - vec4<f32>(var_2.x, var_4.a.x, _wgslsmith_f_op_f32(-433f + -1812f), var_4.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(firstTrailingBit(~0u ^ ~select(~u_input.a.x, ~1u, true)), 1u)];
    var var_1 = max(2147483647i, 2387i << (_wgslsmith_dot_vec2_u32(select(countOneBits(u_input.a.xx), vec2<u32>(u_input.a.x, 1u) << (u_input.a.yy % vec2<u32>(32u)), !var_0.b.a), abs(vec2<u32>(50114u, 4294967295u))) % 32u));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, reverseBits(u_input.b)), 1u)];
    let var_3 = Struct_1(false);
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_6(abs(~vec3<u32>(41471u, global2[_wgslsmith_index_u32(35717u, 21u)], 57153u)), func_1(var_2.b.a & true, 442f), func_5(Struct_1(true), !var_0.b.a, _wgslsmith_mult_vec3_i32(vec3<i32>(28109i, 7555i, 0i), vec3<i32>(63902i, 575i, -1i))).b, func_5(func_1(true, var_2.a.x), true, vec3<i32>(u_input.d, 1i, u_input.c) >> (vec3<u32>(0u, 0u, u_input.e) % vec3<u32>(32u))))))), global0[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e, _wgslsmith_mult_u32(54519u, max(global2[_wgslsmith_index_u32(var_2.c, 21u)], 0u))), 21u)]), 31u)], 57965u, Struct_1((~u_input.d << (~29110u % 32u)) > (_wgslsmith_div_i32(u_input.d, 0i) | _wgslsmith_clamp_i32(u_input.d, u_input.d, -82877i))));
    var var_5 = _wgslsmith_div_f32(var_4.a.x, var_4.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-422f)), _wgslsmith_div_f32(-1389f, -723f), _wgslsmith_f_op_f32(sign(var_4.a.x))) * _wgslsmith_f_op_vec3_f32(var_4.a.xww + var_0.a.wwx))));
}

