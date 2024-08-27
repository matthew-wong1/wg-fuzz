struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(-4348i, 17530i, 4653i), vec3<i32>(-22774i, 65370i, -1i), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -6417i, -44425i), vec3<i32>(17727i, 26773i, i32(-2147483648)), vec3<i32>(-1i, 1i, 1i));

var<private> global1: array<Struct_1, 28>;

var<private> global2: array<i32, 4>;

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), 421f, vec4<u32>(0u, 1u, 91968u, 23370u)), Struct_1(vec3<bool>(false, false, true), -550f, vec4<u32>(1u, 4294967295u, 1u, 44644u))), -266f, Struct_1(vec3<bool>(true, true, true), -1211f, vec4<u32>(9708u, 0u, 439u, 26644u)), vec3<i32>(-15125i, 12629i, 2147483647i), 19624u);

var<private> global4: array<u32, 24> = array<u32, 24>(47049u, 5080u, 14174u, 4294967295u, 4294967295u, 4294967295u, 0u, 6912u, 0u, 4294967295u, 142063u, 27320u, 16750u, 1u, 1u, 45811u, 21005u, 1u, 4294967295u, 4294967295u, 10533u, 0u, 4294967295u, 60880u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32) -> Struct_4 {
    var var_0 = arg_1.d;
    let var_1 = arg_1.a.c.c.xz;
    var var_2 = arg_0.a.d.x;
    let var_3 = Struct_1(vec3<bool>(any(vec2<bool>(all(vec3<bool>(arg_0.a.c.a.x, false, arg_1.e.a.a.x)), global3.a.a.a.x)), arg_0.a.a.b.a.x, !(_wgslsmith_f_op_f32(trunc(-672f)) >= arg_1.a.b)), arg_0.e.b.b, arg_0.a.a.b.c);
    var var_4 = Struct_1(select(var_3.a, vec3<bool>(arg_1.a.c.a.x, global3.a.a.a.x, arg_0.a.c.a.x), !global3.a.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1764f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1912f)))), vec4<u32>(arg_0.c, ~(~_wgslsmith_mult_u32(0u, global4[_wgslsmith_index_u32(0u, 24u)])), _wgslsmith_add_u32(4294967295u, global3.c.c.x), _wgslsmith_div_u32(countOneBits(0u), 52532u)));
    return arg_1;
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: Struct_4) -> f32 {
    global4 = array<u32, 24>();
    let var_0 = ~select(arg_3.a.a.b.c.xz, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), arg_3.d.xx), vec2<u32>(u_input.b, 25173u)) << ((_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, arg_0)) << (global3.a.b.c.yx % vec2<u32>(32u))) % vec2<u32>(32u)), arg_3.a.a.b.a.x);
    global1 = array<Struct_1, 28>();
    global0 = array<vec3<i32>, 7>();
    global2 = array<i32, 4>();
    return _wgslsmith_f_op_f32(253f - arg_1.x);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(57529u << (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 24u)], 24u)] % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1069f, -283f) - vec2<f32>(-1299f, global3.b)), _wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(global3.c.c.x, 7u)], global0[_wgslsmith_index_u32(80057u, 7u)]), func_2(Struct_4(Struct_3(Struct_2(global1[_wgslsmith_index_u32(10610u, 28u)], global1[_wgslsmith_index_u32(u_input.b, 28u)]), -579f, Struct_1(global3.c.a, global3.a.b.b, global3.a.b.c), vec3<i32>(global3.d.x, -14595i, 1i), global3.a.a.c.x), vec4<f32>(global3.c.b, -508f, 271f, global3.c.b), global4[_wgslsmith_index_u32(1u, 24u)], global3.a.a.c.xzx, Struct_2(global1[_wgslsmith_index_u32(44888u, 28u)], global3.a.a)), Struct_4(Struct_3(Struct_2(global3.c, Struct_1(global3.c.a, 601f, global3.c.c)), global3.a.b.b, global3.c, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 24u)], 7u)], global4[_wgslsmith_index_u32(30129u, 24u)]), vec4<f32>(-1539f, global3.b, global3.a.b.b, global3.b), 4294967295u, vec3<u32>(4294967295u, 4294967295u, global4[_wgslsmith_index_u32(4294967295u, 24u)]), Struct_2(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 24u)], 28u)], global3.c)), 1000f))) * global3.b))), global3.c.b);
    let var_1 = _wgslsmith_div_i32(1i, 12516i);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.b));
    let var_2 = _wgslsmith_dot_vec3_i32(u_input.a.xxy, _wgslsmith_sub_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a.yyz, vec3<i32>(1i, global2[_wgslsmith_index_u32(4294967295u, 4u)], 0i)), var_1, ~(-484i)), _wgslsmith_add_vec3_i32(-vec3<i32>(global2[_wgslsmith_index_u32(40160u, 4u)], -31089i, u_input.a.x), (vec3<i32>(global2[_wgslsmith_index_u32(29082u, 4u)], u_input.a.x, var_1) | vec3<i32>(var_1, global3.d.x, 2147483647i)) | (global3.d >> (global3.c.c.zxw % vec3<u32>(32u))))));
    var var_3 = func_2(func_2(func_2(func_2(func_2(Struct_4(Struct_3(global3.a, global3.b, global3.a.b, global3.d, 4294967295u), vec4<f32>(global3.a.b.b, global3.a.b.b, 1301f, -1577f), 0u, vec3<u32>(73984u, 4294967295u, 37062u), global3.a), Struct_4(Struct_3(Struct_2(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 24u)], 28u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(47234u, 24u)], 28u)]), -145f, Struct_1(global3.a.a.a, -1242f, global3.a.b.c), global3.d, u_input.b), vec4<f32>(-2717f, 1614f, -458f, global3.c.b), 13694u, global3.c.c.ywz, Struct_2(Struct_1(global3.a.a.a, -144f, global3.a.b.c), global3.c)), 838f), func_2(Struct_4(Struct_3(global3.a, 2628f, Struct_1(vec3<bool>(global3.c.a.x, true, true), global3.b, vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], global4[_wgslsmith_index_u32(0u, 24u)], 3355u, 0u)), vec3<i32>(2147483647i, -2147483647i, var_1), 0u), vec4<f32>(global3.b, global3.b, global3.b, -107f), 1u, vec3<u32>(u_input.b, 4333u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 24u)], 24u)]), Struct_2(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(66926u, 24u)], 28u)], Struct_1(global3.a.b.a, 2069f, global3.c.c))), Struct_4(Struct_3(global3.a, global3.b, Struct_1(vec3<bool>(global3.a.a.a.x, false, global3.a.a.a.x), 2085f, global3.c.c), global3.d, u_input.b), vec4<f32>(global3.a.a.b, global3.c.b, global3.a.b.b, -678f), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 24u)], 24u)], vec3<u32>(35704u, global4[_wgslsmith_index_u32(0u, 24u)], global4[_wgslsmith_index_u32(77553u, 24u)]), global3.a), global3.a.b.b), _wgslsmith_f_op_f32(max(-1244f, global3.c.b))), func_2(func_2(Struct_4(Struct_3(global3.a, 1582f, global1[_wgslsmith_index_u32(global3.e, 28u)], global3.d, u_input.b), vec4<f32>(521f, -2289f, global3.c.b, -584f), 0u, global3.a.b.c.xwz, global3.a), Struct_4(Struct_3(global3.a, global3.c.b, Struct_1(vec3<bool>(true, false, false), 232f, global3.a.a.c), vec3<i32>(global2[_wgslsmith_index_u32(1u, 4u)], var_2, global2[_wgslsmith_index_u32(47438u, 4u)]), 74808u), vec4<f32>(global3.b, -1417f, global3.b, -2101f), 0u, global3.c.c.ywy, Struct_2(Struct_1(vec3<bool>(global3.a.a.a.x, false, false), global3.b, global3.a.a.c), Struct_1(vec3<bool>(global3.c.a.x, global3.a.b.a.x, false), 1000f, vec4<u32>(global4[_wgslsmith_index_u32(0u, 24u)], 1u, u_input.b, 4294967295u)))), global3.a.b.b), func_2(Struct_4(Struct_3(global3.a, global3.a.a.b, Struct_1(global3.c.a, 1000f, global3.c.c), global0[_wgslsmith_index_u32(47545u, 7u)], global3.a.b.c.x), vec4<f32>(global3.c.b, global3.b, global3.c.b, global3.b), 38270u, vec3<u32>(64384u, 0u, 1u), Struct_2(Struct_1(vec3<bool>(global3.a.a.a.x, global3.c.a.x, global3.c.a.x), 258f, global3.c.c), global1[_wgslsmith_index_u32(u_input.b, 28u)])), Struct_4(Struct_3(Struct_2(global1[_wgslsmith_index_u32(u_input.b, 28u)], global1[_wgslsmith_index_u32(global3.a.a.c.x, 28u)]), 119f, global3.a.a, vec3<i32>(1i, -19337i, 0i), global3.c.c.x), vec4<f32>(-1890f, -745f, global3.a.a.b, global3.c.b), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], global3.a.b.c.xyz, global3.a), global3.b), global3.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f), global3.a.a.b)), Struct_4(Struct_3(global3.a, _wgslsmith_f_op_f32(-global3.a.b.b), func_2(Struct_4(Struct_3(Struct_2(Struct_1(vec3<bool>(global3.c.a.x, global3.c.a.x, global3.a.a.a.x), global3.a.a.b, vec4<u32>(global3.a.a.c.x, u_input.b, 0u, 4294967295u)), global3.c), global3.a.a.b, Struct_1(global3.a.a.a, global3.c.b, global3.a.b.c), u_input.c, 0u), vec4<f32>(global3.a.a.b, -1000f, 333f, -477f), 34855u, vec3<u32>(u_input.b, global3.e, global4[_wgslsmith_index_u32(4294967295u, 24u)]), global3.a), Struct_4(Struct_3(global3.a, 941f, Struct_1(vec3<bool>(true, global3.a.a.a.x, true), 508f, vec4<u32>(0u, u_input.b, u_input.b, 0u)), u_input.c, 53773u), vec4<f32>(-579f, -1000f, global3.a.a.b, global3.a.a.b), u_input.b, vec3<u32>(4294967295u, 0u, global3.a.a.c.x), Struct_2(global1[_wgslsmith_index_u32(u_input.b, 28u)], Struct_1(global3.c.a, global3.b, vec4<u32>(u_input.b, global3.a.a.c.x, 1u, 4294967295u)))), 242f).e.b, global0[_wgslsmith_index_u32(~36075u, 7u)], global4[_wgslsmith_index_u32(24945u, 24u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.a.b, global3.c.b, global3.b, -1283f))), 10132u, ~global3.c.c.xyz, global3.a), global3.a.a.b), Struct_4(Struct_3(global3.a, _wgslsmith_f_op_f32(global3.a.a.b - -1055f), Struct_1(vec3<bool>(true, global3.c.a.x, global3.c.a.x), _wgslsmith_f_op_f32(781f * global3.b), global3.c.c), vec3<i32>(global3.d.x, 11968i, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(20420u, 24u)], 4u)]) ^ min(global0[_wgslsmith_index_u32(global3.c.c.x, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), select(2807u, 1u, global3.a.a.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, global3.a.b.b, -1321f, -986f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.a.b, global3.c.b, global3.b, global3.b) - vec4<f32>(-292f, global3.a.a.b, global3.c.b, global3.b))), vec4<f32>(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(f32(-1f) * -1756f), -1261f, -489f)), ~_wgslsmith_clamp_u32(1u, 70992u, ~0u), vec3<u32>(global3.e, _wgslsmith_div_u32(u_input.b, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, global3.a.a.c.x), 24u)]), 33464u), global3.a), 603f).a.c.a.yz;
    return global3.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a.b.a;
    let var_1 = Struct_3(Struct_2(global1[_wgslsmith_index_u32(firstTrailingBit(0u), 28u)], func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -886f)), Struct_1(!(!(!vec3<bool>(global3.c.a.x, var_0.x, false))), -473f, global3.c.c), vec3<i32>(1i, -1i, global2[_wgslsmith_index_u32(74313u, 4u)]), ~1u);
    global4 = array<u32, 24>();
    var_0 = select(!global3.a.a.a, var_1.c.a, var_1.a.a.a);
    global4 = array<u32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -(~global3.d.zy));
}

