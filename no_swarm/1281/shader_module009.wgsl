struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: i32 = -9811i;

var<private> global2: array<i32, 20> = array<i32, 20>(1i, 13711i, 14667i, -22902i, -26577i, i32(-2147483648), -15373i, 0i, -1i, 42889i, -27562i, 0i, 23076i, -14587i, -1i, 2147483647i, -30731i, -38526i, 1i, -58655i);

var<private> global3: u32;

var<private> global4: array<i32, 32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_vec3_u32(select(u_input.b.yzy & u_input.b.zwy, _wgslsmith_add_vec3_u32(firstLeadingBit(u_input.b.zxx), _wgslsmith_clamp_vec3_u32(u_input.b.wzx, vec3<u32>(u_input.c, 0u, u_input.b.x), vec3<u32>(4294967295u, 4294967295u, 1u))), true || all(vec2<bool>(false, false))), _wgslsmith_div_vec3_u32(u_input.b.yxy, u_input.b.yxw)));
    return -170f;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec3<i32>, arg_3: vec3<u32>) -> bool {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(1u), ~firstTrailingBit(~1u) << (~abs(arg_3.x) % 32u)), 32u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(floor(808f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-529f, arg_1)))), _wgslsmith_f_op_f32(-arg_1))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, arg_1, 2379f))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * var_1.x) * var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-661f)) - _wgslsmith_f_op_f32(func_3())), arg_1)));
    let var_3 = _wgslsmith_add_i32(u_input.a, 19018i ^ _wgslsmith_mult_i32(~_wgslsmith_mod_i32(global4[_wgslsmith_index_u32(u_input.b.x, 32u)], u_input.a), _wgslsmith_dot_vec2_i32(arg_2.xy & arg_2.zx, _wgslsmith_div_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 20u)], 9469i), vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 20u)])))));
    var var_4 = Struct_1(arg_3 & max(arg_3, vec3<u32>(_wgslsmith_mod_u32(73039u, 62370u), u_input.c, ~1u)));
    return select(any(vec3<bool>(!(!arg_0), -164f == arg_1, _wgslsmith_f_op_f32(-633f + var_1.x) < 1542f)), all(select(!(!vec3<bool>(arg_0, false, arg_0)), select(!vec3<bool>(arg_0, arg_0, false), !vec3<bool>(true, false, arg_0), var_4.a.x < 1u), select(arg_0, true, false) & any(vec2<bool>(arg_0, arg_0)))), _wgslsmith_add_i32(select(select(global2[_wgslsmith_index_u32(39539u, 20u)], -2147483647i, false), _wgslsmith_dot_vec3_i32(vec3<i32>(var_3, u_input.a, global4[_wgslsmith_index_u32(u_input.b.x, 32u)]), arg_2), var_4.a.x < 26276u), -1i) <= var_3);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec3<bool> {
    let var_0 = max(1i, ~global2[_wgslsmith_index_u32(u_input.c, 20u)]);
    global1 = abs(2147483647i ^ _wgslsmith_add_i32(2147483647i, global2[_wgslsmith_index_u32(~(arg_0.a.x << (15405u % 32u)), 20u)]));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(2003f, -688f), -191f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-151f, -253f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1217f, 913f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-871f, -1566f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1340f, 1306f)))), vec2<bool>(!arg_1, any(select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1)))))));
    var var_2 = -14022i;
    var var_3 = ~(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u >> (arg_0.a.x % 32u), 65678u, countOneBits(60497u), ~arg_0.a.x), select(firstLeadingBit(vec4<u32>(4294967295u, arg_0.a.x, u_input.c, arg_0.a.x)), u_input.b | vec4<u32>(4294967295u, arg_0.a.x, 29744u, 7195u), vec4<bool>(arg_1, arg_1, arg_1, false))) & ~vec4<u32>(17731u, firstLeadingBit(arg_0.a.x), _wgslsmith_mod_u32(67851u, arg_0.a.x), 0u));
    return vec3<bool>(arg_1, select(!arg_1, true, false), arg_1);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> vec2<i32> {
    let var_0 = ((~(~vec2<u32>(arg_1.a.x, 27839u)) << ((abs(vec2<u32>(0u, 1u)) | (vec2<u32>(arg_0.a.x, 0u) << (vec2<u32>(0u, arg_0.a.x) % vec2<u32>(32u)))) % vec2<u32>(32u))) & u_input.b.xw) & ~u_input.b.yw;
    let var_1 = select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_4(arg_0, func_2(false, 1120f, vec3<i32>(1i, global2[_wgslsmith_index_u32(u_input.c, 20u)], global4[_wgslsmith_index_u32(arg_1.a.x, 32u)]), u_input.b.zwz)), any(vec4<bool>(true, true, true, true))), vec3<bool>(select(false, true, all(vec2<bool>(false, false))), all(vec2<bool>(true, true)), false), true), vec3<bool>(any(vec2<bool>(true, true)), true, !func_4(arg_0, true).x), vec3<bool>(false, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false))) | select(true, all(vec3<bool>(false, true, true)), true), all(vec4<bool>(true, false, false, false)) | (_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(1u, 20u)]), vec2<i32>(global2[_wgslsmith_index_u32(8225u, 20u)], 2147483647i)) < global4[_wgslsmith_index_u32(arg_0.a.x, 32u)])));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1941f) - arg_2.x), 1161f) * _wgslsmith_f_op_f32(-arg_2.x)));
    var var_3 = arg_1;
    let var_4 = arg_0;
    return _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(-select(vec2<i32>(global4[_wgslsmith_index_u32(56143u, 32u)], global2[_wgslsmith_index_u32(0u, 20u)]), vec2<i32>(-2147483647i, global4[_wgslsmith_index_u32(4294967295u, 32u)]), false), vec2<i32>(-1i | (global2[_wgslsmith_index_u32(57987u, 20u)] << (var_3.a.x % 32u)), _wgslsmith_add_i32(i32(-1i) * -18741i, abs(global4[_wgslsmith_index_u32(var_0.x, 32u)])))), ~(~(_wgslsmith_add_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(arg_0.a.x, 20u)], global4[_wgslsmith_index_u32(14351u, 32u)]), vec2<i32>(34879i, u_input.a)) << ((var_3.a.yx ^ vec2<u32>(arg_1.a.x, 4294967295u)) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~(~(~87814u)), 30u)];
    global2 = array<i32, 20>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(1719f, -701f), vec2<f32>(-231f, -400f)))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -278f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 310f, var_1.x), vec3<f32>(-264f, -515f, var_1.x), false)))))));
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(-func_1(Struct_1(u_input.b.zwx), Struct_1(var_0.a), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, -1685f), var_1))), _wgslsmith_f_op_f32(floor(-452f)));
}

