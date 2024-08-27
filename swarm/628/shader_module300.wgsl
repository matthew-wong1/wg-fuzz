struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<i32>, 13>;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<u32, 26> = array<u32, 26>(4741u, 28225u, 1u, 31366u, 37127u, 1u, 21053u, 95879u, 1u, 1u, 47597u, 50799u, 7861u, 1u, 4294967295u, 74185u, 29530u, 11087u, 13137u, 12090u, 1u, 4294967295u, 1u, 0u, 9021u, 4294967295u);

var<private> global4: Struct_2 = Struct_2(vec3<i32>(15320i, -21042i, -1i), 4294967295u, Struct_1(35379u, 581u, 53869i, vec4<f32>(-1694f, 866f, 349f, 140f)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> bool {
    global4 = Struct_2(vec3<i32>(~_wgslsmith_clamp_i32(-1i, arg_0, global4.a.x), ~2147483647i, ~(-1i)) >> (~vec3<u32>(u_input.d.x, 4294967295u, max(54558u, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_sub_u32(firstTrailingBit(24456u) | min(0u, 76696u), ~33446u) ^ select(global3[_wgslsmith_index_u32(global4.c.b, 26u)], 33286u, true), Struct_1(firstLeadingBit(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 26u)], 26u)]) >> (_wgslsmith_add_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4.b, 4294967295u), 26u)], select(15802u, u_input.b, true)) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(select(u_input.d.x, 1u, false), u_input.b), ~(~arg_1)), -(~(61354i ^ arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-844f, -1598f, 328f, global4.c.d.x)) * _wgslsmith_f_op_vec4_f32(-global4.c.d)))));
    let var_0 = abs(~(_wgslsmith_clamp_i32(20954i, -2147483647i, arg_0) >> (_wgslsmith_clamp_u32(32220u, 4294967295u, 19017u) % 32u)) | -2147483647i);
    global4 = Struct_2(reverseBits(vec3<i32>(1i, var_0, ~(-u_input.c))), u_input.d.x, Struct_1(~82486u, 76185u, -(~(-1i & arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(global4.c.d)))))));
    var var_1 = Struct_2(vec3<i32>(_wgslsmith_mod_i32(arg_0, select(0i ^ u_input.c, 19268i, 90202u == arg_1.x)), -2147483647i, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_sub_i32(-global4.c.c, _wgslsmith_sub_i32(-2147483647i, u_input.c)))), 1u, Struct_1(max(~(1u | global4.c.a), global4.c.a), 10986u, abs(-1i), _wgslsmith_f_op_vec4_f32(max(global4.c.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4.c.d - vec4<f32>(-198f, -1528f, global4.c.d.x, global4.c.d.x)))))));
    let var_2 = global4.c;
    return global2.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>) -> bool {
    global0 = false;
    global3 = array<u32, 26>();
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.d.x >> (_wgslsmith_clamp_u32(min(global3[_wgslsmith_index_u32(~0u, 26u)], global4.b), 50143u, 1u) % 32u), 13u)], 1u, Struct_1(1u, _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global4.c.a, 26u)], 34352u), u_input.d.zx), ~(u_input.b | 0u)), _wgslsmith_clamp_i32(2147483647i, 1i, (global4.a.x << (global4.b % 32u)) >> (firstTrailingBit(u_input.b) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(320f, 1000f, global4.c.d.x, -446f) * vec4<f32>(-709f, -702f, global4.c.d.x, global4.c.d.x)))));
    global3 = array<u32, 26>();
    var var_1 = Struct_1(var_0.c.b | u_input.b, countOneBits(_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 5510u, global3[_wgslsmith_index_u32(4294967295u, 26u)], var_0.b), vec4<u32>(1u, global3[_wgslsmith_index_u32(global4.b, 26u)], var_0.b, 42054u))), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(50u, 17369u, 1u, var_0.c.a), vec4<u32>(18545u, 0u, u_input.d.x, 4294967295u))))), -abs(0i), _wgslsmith_div_vec4_f32(vec4<f32>(-767f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-226f, 2126f))), _wgslsmith_f_op_f32(348f + -1454f), 492f), _wgslsmith_f_op_vec4_f32(var_0.c.d * vec4<f32>(-830f, _wgslsmith_f_op_f32(min(-351f, 434f)), 877f, _wgslsmith_f_op_f32(min(var_0.c.d.x, 1052f))))));
    return false;
}

fn func_2(arg_0: f32) -> bool {
    return func_4(vec4<bool>(!func_3(_wgslsmith_mod_i32(1i, u_input.c), _wgslsmith_clamp_vec2_u32(u_input.d.zz, vec2<u32>(4294967295u, global4.c.b), u_input.d.yz)), global2.x, global2.x, false), select(vec3<bool>(func_3(~0i, select(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.d.x, 1u), true)), _wgslsmith_mod_i32(global4.a.x, 0i) > 1225i, any(vec3<bool>(true, global2.x, false))), vec3<bool>(select(global2.x, global2.x, true) || any(vec3<bool>(false, false, global2.x)), !global2.x, true), !any(vec2<bool>(global2.x, true))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = ~0u;
    global0 = !(false & func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x * 442f) * _wgslsmith_f_op_f32(-arg_0.d.x))));
    global3 = array<u32, 26>();
    var var_1 = any(vec4<bool>(!(_wgslsmith_add_u32(4294967295u, var_0) > ~global3[_wgslsmith_index_u32(0u, 26u)]), any(!select(vec2<bool>(false, global2.x), vec2<bool>(false, global2.x), vec2<bool>(true, global2.x))), !select(global2.x, !global2.x, global2.x), u_input.d.x >= 49763u));
    let var_2 = Struct_2(vec3<i32>(-firstTrailingBit(u_input.c), arg_1, max(u_input.a.x, arg_1)), 1u, arg_0);
    return global4.c;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    global3 = array<u32, 26>();
    let var_0 = Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-5464i, arg_0.x, 1i), global4.c.c ^ u_input.c), (2147483647i ^ global4.a.x) | _wgslsmith_mult_i32(0i, u_input.c), 2147483647i | global4.a.x), -(vec3<i32>(-1i) * -vec3<i32>(arg_0.x, 24425i, 1i))), ~4294967295u, func_1(Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(arg_1.a, 26u)], 0u), 26u)] ^ ~arg_1.a, global4.b, arg_1.c, vec4<f32>(func_1(Struct_1(0u, 42912u, global4.a.x, vec4<f32>(-1375f, -1733f, -890f, arg_1.d.x)), u_input.a.x).d.x, global4.c.d.x, _wgslsmith_div_f32(global4.c.d.x, global4.c.d.x), _wgslsmith_f_op_f32(f32(-1f) * -117f))), -1i));
    var var_1 = var_0.c.d;
    let var_2 = var_0.c;
    global0 = !(!global2.x);
    return Struct_1(_wgslsmith_dot_vec3_u32(u_input.d, firstLeadingBit(vec3<u32>(var_2.a, global3[_wgslsmith_index_u32(arg_1.b, 26u)], 4294967295u))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d.x, ~var_2.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, global3[_wgslsmith_index_u32(var_2.b, 26u)], arg_1.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 26u)], 26u)]), vec4<u32>(61410u, 4294967295u, global4.c.b, global4.b)), 4294967295u ^ var_0.b)), _wgslsmith_sub_vec4_u32(min(abs(vec4<u32>(0u, arg_1.a, u_input.d.x, global4.b)), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.a, 19753u, 0u, 1u), vec4<u32>(var_0.b, var_2.b, 31103u, var_2.b))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d.x, global4.b, 4294967295u, 86459u), ~vec4<u32>(23367u, var_2.b, 1u, global3[_wgslsmith_index_u32(u_input.d.x, 26u)])))), 26u)], _wgslsmith_mult_i32(-_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_0.a.zy, vec2<i32>(-2147483647i, arg_0.x)), global4.c.c), firstTrailingBit(var_0.a.x | 2147483647i)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) - _wgslsmith_f_op_f32(var_0.c.d.x - 986f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.d.x)))), var_0.c.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1611f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.d.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(vec2<bool>(true, global2.x | true));
    let var_0 = func_5(-reverseBits(~u_input.a), func_1(global4.c, u_input.c));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1380f - global4.c.d.x))))) + var_0.d.x);
    let var_2 = global4.c;
    let var_3 = global3[_wgslsmith_index_u32(func_1(func_1(Struct_1(~global4.b, ~var_2.a | func_1(global4.c, 11632i).b, max(u_input.c, -u_input.a.x), vec4<f32>(-474f, -156f, var_2.d.x, 1729f)), global4.a.x), var_2.c).b, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(-295f * func_1(var_0, var_0.c).d.x))), 1000f, false)), var_2.b, ~u_input.a.x, u_input.d);
}

