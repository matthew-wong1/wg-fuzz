struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<f32>,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global1: Struct_5 = Struct_5(vec2<i32>(-80318i, 22352i), vec3<bool>(false, true, true));

var<private> global2: array<u32, 18> = array<u32, 18>(0u, 23943u, 4294967295u, 24135u, 12294u, 1u, 13114u, 1u, 1u, 0u, 1u, 1u, 15414u, 47814u, 48994u, 0u, 1u, 56358u);

var<private> global3: array<i32, 30> = array<i32, 30>(2147483647i, 7032i, 40002i, 0i, 0i, i32(-2147483648), 28121i, 2147483647i, 0i, i32(-2147483648), 15315i, 1i, i32(-2147483648), -18216i, 0i, i32(-2147483648), -35253i, -1i, 17984i, 16393i, 2147483647i, -1i, -1i, -1i, 20008i, 0i, 0i, 6102i, 35058i, 10427i);

var<private> global4: Struct_3 = Struct_3(vec3<i32>(2147483647i, 0i, 0i));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_5) -> vec3<i32> {
    global1 = Struct_5(~(~vec2<i32>(min(global3[_wgslsmith_index_u32(51960u, 30u)], 28301i), arg_0)), select(arg_1.b, !arg_1.b, arg_1.b.x));
    let var_0 = ~global2[_wgslsmith_index_u32(reverseBits(103208u & reverseBits(u_input.a.x)), 18u)];
    let var_1 = arg_1;
    let var_2 = 55539i;
    return global4.a;
}

fn func_2() -> bool {
    var var_0 = Struct_2(Struct_1(global3[_wgslsmith_index_u32(global0.x, 30u)], -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global4.a.x, _wgslsmith_div_i32(global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(65179u, 30u)]), global4.a.x, -1i), countOneBits(~vec4<i32>(0i, global4.a.x, global3[_wgslsmith_index_u32(4294967295u, 30u)], global4.a.x))), global1.b));
    global1 = Struct_5(vec2<i32>(i32(-1i) * 0i, -abs(global4.a.x) ^ global4.a.x), select(!global1.b, var_0.a.d, !var_0.a.d));
    let var_1 = Struct_3(func_3(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 18u)], 18u)], 30u)], 1i) | -firstTrailingBit(2147483647i), Struct_5(_wgslsmith_add_vec2_i32(global4.a.xy, global1.a), select(select(vec3<bool>(false, false, false), global1.b, global1.b), select(var_0.a.d, global1.b, vec3<bool>(false, true, true)), global1.b))));
    let var_2 = false;
    var_0 = Struct_2(var_0.a);
    return var_0.a.d.x;
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> f32 {
    let var_0 = Struct_2(Struct_1(-(global3[_wgslsmith_index_u32(8689u, 30u)] << (26485u % 32u)) >> (16270u % 32u), arg_1.a.x >> (~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 18u)]) % 32u), arg_1.a.x, select(global1.b, global1.b, func_2())));
    return 936f;
}

fn func_4(arg_0: vec3<f32>, arg_1: f32) -> Struct_1 {
    return Struct_1(18449i, global4.a.x, global3[_wgslsmith_index_u32(4294967295u >> (firstLeadingBit(firstTrailingBit(reverseBits(1u))) % 32u), 30u)], global1.b);
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_4 {
    var var_0 = ~vec4<u32>(firstLeadingBit(global0.x), _wgslsmith_sub_u32(~(~56173u), max(global2[_wgslsmith_index_u32(u_input.a.x, 18u)] | global2[_wgslsmith_index_u32(0u, 18u)], reverseBits(u_input.a.x))), ~global0.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(4931u, 18u)], 12328u) | _wgslsmith_add_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(27764u, 18u)], 4294967295u), vec2<u32>(global0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18085u, 18u)], 18u)])), u_input.a));
    var var_1 = select(global1.b.yx, !(!select(select(vec2<bool>(arg_1.a.d.x, false), arg_1.a.d.yz, arg_1.a.d.x), vec2<bool>(false, arg_1.a.d.x), true | global1.b.x)), true);
    let var_2 = Struct_2(Struct_1(-(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.c, -17134i), vec2<i32>(global1.a.x, -1i)) & global4.a.x), ~9901i, -(~1i & func_3(1i, Struct_5(global4.a.zz, vec3<bool>(var_1.x, global1.b.x, var_1.x))).x), vec3<bool>(!var_1.x, var_1.x, false)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1228f, arg_0, -1055f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(925f, -323f, arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-466f, arg_0, -1001f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1764f, -1000f, -804f) * vec3<f32>(157f, arg_0, 1351f)))) - vec3<f32>(_wgslsmith_f_op_f32(min(arg_0, -1000f)), arg_0, -1031f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1126f, arg_0, _wgslsmith_f_op_f32(arg_0 - arg_0)), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), -125f, arg_0), global1.b.x))));
    var var_4 = ~vec4<i32>(-_wgslsmith_dot_vec2_i32(global4.a.yy & vec2<i32>(-1i, global1.a.x), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, global4.a.x), global4.a.xz)), ~(-(global1.a.x >> (1u % 32u))), -global4.a.x, _wgslsmith_mod_i32(~(var_2.a.a & 1i), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 18u)], 30u)]));
    return Struct_4(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-518f, 618f, -611f) * var_3), vec3<f32>(-1397f, -690f, var_3.x))), _wgslsmith_f_op_f32(267f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -1470f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1466f, _wgslsmith_f_op_f32(1348f - var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -511f), _wgslsmith_div_f32(-702f, -251f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-1000f * arg_0), -447f, arg_0, -924f))) - vec4<f32>(2478f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, -1615f)), _wgslsmith_f_op_f32(-1033f + 1405f)), arg_0, _wgslsmith_f_op_f32(-406f + _wgslsmith_f_op_f32(f32(-1f) * -226f)))), Struct_3(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(var_0.x, 30u)], -3324i, global4.a.x, 45659i), vec4<i32>(global1.a.x, 0i, -24871i, 0i)), global3[_wgslsmith_index_u32(1u, 30u)] ^ arg_1.a.c, 1i >> (u_input.a.x % 32u))), Struct_2(arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 18>();
    var var_0 = func_5(-1391f, Struct_2(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(241f, 1109f, 1383f)), _wgslsmith_f_op_f32(func_1(1603f, Struct_3(global4.a))))));
    var_0 = func_5(-877f, func_5(_wgslsmith_div_f32(var_0.b.x, var_0.b.x), func_5(_wgslsmith_f_op_f32(-737f - 546f), Struct_2(var_0.a)).e).e);
    var var_1 = global1.b.x;
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(~1u, abs(1u), ~(~1u), u_input.a.x), _wgslsmith_add_vec4_u32(min(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)], 12438u, firstTrailingBit(18031u), ~0u), select(max(vec4<u32>(global0.x, 0u, u_input.a.x, global0.x), vec4<u32>(global0.x, u_input.a.x, 0u, global0.x)), ~vec4<u32>(60821u, u_input.a.x, 0u, global0.x), !var_0.e.a.d.x)), ~vec4<u32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(8950u, global0.x), vec2<u32>(global0.x, 54177u)), 18u)], _wgslsmith_div_u32(0u, 1u), countOneBits(726u), ~1u)));
    var_1 = global1.b.x;
    var var_3 = Struct_1(1i ^ _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(var_2.x, 30u)], _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(~global0.x, 30u)], global3[_wgslsmith_index_u32(var_2.x, 30u)] << (u_input.a.x % 32u), func_5(var_0.c.x, var_0.e).e.a.b), _wgslsmith_add_i32(global4.a.x, _wgslsmith_clamp_i32(-1i, global4.a.x, global4.a.x))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, -34138i, 11501i), vec3<i32>(var_0.d.a.x, global4.a.x, -23146i)), ~vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 30u)], 7045i, -43424i)) ^ global3[_wgslsmith_index_u32(~(countOneBits(40280u) ^ (1u ^ global0.x)), 30u)], -29584i ^ -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_0.d.a.yz, global4.a.xy), -var_0.d.a.xz), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * _wgslsmith_f_op_f32(f32(-1f) * -232f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1338f, -819f))), var_0.e).e.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(var_0.c + var_0.b));
}

