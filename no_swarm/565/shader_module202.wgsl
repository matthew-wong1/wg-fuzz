struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(21027i, 8984i, 1i, 1i, -6390i, 34337i, -1i, -7080i, 0i, i32(-2147483648), 28720i, -1i, -10460i, 37960i, -5102i, -18446i, 0i);

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<i32>(0i, 25233i)), Struct_1(vec2<i32>(4161i, 18033i)), Struct_1(vec2<i32>(5073i, 0i)), Struct_1(vec2<i32>(1i, 0i)), Struct_1(vec2<i32>(43341i, -19207i)), Struct_1(vec2<i32>(57831i, 2147483647i)), Struct_1(vec2<i32>(-23495i, 37890i)), Struct_1(vec2<i32>(-1i, -6636i)), Struct_1(vec2<i32>(-2298i, 1i)), Struct_1(vec2<i32>(0i, 51612i)), Struct_1(vec2<i32>(-12836i, 1i)), Struct_1(vec2<i32>(2730i, 23959i)), Struct_1(vec2<i32>(-11782i, 5110i)), Struct_1(vec2<i32>(0i, 18995i)), Struct_1(vec2<i32>(14672i, 1i)), Struct_1(vec2<i32>(1i, 2147483647i)));

var<private> global2: vec4<i32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    var var_0 = Struct_2(Struct_1(global2.xz));
    global0 = array<i32, 17>();
    var var_1 = Struct_1(global2.wz);
    var_0 = Struct_2(global1[_wgslsmith_index_u32(~min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x) << (vec4<u32>(0u, 0u, 3451u, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 55507u)), ~_wgslsmith_mult_u32(u_input.a.x, 27112u)), 16u)]);
    let var_2 = u_input.a.x;
    return ~global2.x;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = ~(select(~(-17544i), max(arg_0, arg_1.a.x) << (3481u % 32u), !all(vec3<bool>(false, true, false))) >> (62861u % 32u));
    var var_1 = _wgslsmith_div_u32(97070u, 10532u);
    var var_2 = Struct_1(arg_1.a);
    let var_3 = arg_1;
    var var_4 = global1[_wgslsmith_index_u32(abs(u_input.a.x), 16u)];
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-331f, 129f)))));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>) -> vec4<i32> {
    global1 = array<Struct_1, 16>();
    global2 = vec4<i32>(global2.x, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a.x << (u_input.a.x % 32u), 17u)], _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.x, global2.x, -2147483647i, 0i), vec4<i32>(global2.x, -1i, 37213i, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec4<i32>(0i, -7156i, global2.x, global0[_wgslsmith_index_u32(u_input.a.x, 17u)])), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-9461i, global0[_wgslsmith_index_u32(7348u, 17u)], -2147483647i, 28124i), vec4<i32>(global2.x, global2.x, global2.x, global2.x)))), abs(firstLeadingBit(global0[_wgslsmith_index_u32(1u, 17u)])), global0[_wgslsmith_index_u32(u_input.a.x, 17u)]);
    global1 = array<Struct_1, 16>();
    global2 = -vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -1i, -_wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], -1i)), _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global2.x, 0i), vec4<i32>(global0[_wgslsmith_index_u32(519u, 17u)], global2.x, 50116i, global2.x)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(21876u, 17u)], -27725i, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec4<i32>(61350i, global0[_wgslsmith_index_u32(43783u, 17u)], 60612i, global2.x)), countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global2.x, 2147483647i, 2147483647i)))), abs(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-57858i, -1i, 1i, global2.x), vec4<i32>(36098i, 1i, 22203i, global0[_wgslsmith_index_u32(1u, 17u)])))), -(~(-2147483647i)));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, 197f, arg_0, arg_1.x), arg_1)) + vec4<f32>(arg_0, -1712f, arg_1.x, 1463f))))));
    return vec4<i32>(firstLeadingBit(global2.x), global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global2.x, ~global2.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = global2.x;
    global2 = (func_4(_wgslsmith_f_op_f32(func_3(func_2(vec3<f32>(-1673f, -331f, -1382f)), arg_2.a)), vec4<f32>(1f, 1f, 1f, 1f)) << (vec4<u32>(arg_3.x, 0u, 21636u, 0u) % vec4<u32>(32u))) & firstLeadingBit(vec4<i32>(arg_1.x, -abs(global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), -arg_1.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, global2.x, arg_2.a.a.x, arg_2.a.a.x), vec4<i32>(arg_1.x, global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)], arg_2.a.a.x))));
    var var_1 = reverseBits(83234u);
    return Struct_2(Struct_1(min(select(_wgslsmith_sub_vec2_i32(arg_2.a.a, vec2<i32>(-1i, -1i)), -vec2<i32>(7989i, arg_1.x), vec2<bool>(true, false)), _wgslsmith_add_vec2_i32(-global2.yx, vec2<i32>(global2.x, arg_1.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec3<f32>) -> u32 {
    let var_0 = -1113i;
    global1 = array<Struct_1, 16>();
    let var_1 = arg_3;
    let var_2 = vec4<u32>(~max(~4294967295u ^ _wgslsmith_sub_u32(u_input.a.x, arg_1.x), 1u), ~arg_1.x, abs(65188u), 34349u);
    var var_3 = arg_0.a.x;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(4294967295u, u_input.a.x, ~_wgslsmith_add_u32(reverseBits(u_input.a.x), func_5(Struct_1(global2.xx), vec3<u32>(26374u, u_input.a.x, 4294967295u) << (vec3<u32>(u_input.a.x, 78298u, 25184u) % vec3<u32>(32u)), func_1(vec2<bool>(true, true), vec4<i32>(global2.x, global2.x, -28160i, -8839i), Struct_2(Struct_1(global2.wy)), vec3<u32>(u_input.a.x, u_input.a.x, 56289u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-279f, -1142f, 876f) - vec3<f32>(-2085f, 299f, 1250f)))));
    global1 = array<Struct_1, 16>();
    global1 = array<Struct_1, 16>();
    global0 = array<i32, 17>();
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1112f, -996f, -708f, -1769f))))))));
    global2 = _wgslsmith_add_vec4_i32(-_wgslsmith_div_vec4_i32(select(firstLeadingBit(vec4<i32>(global2.x, global0[_wgslsmith_index_u32(0u, 17u)], -10698i, global0[_wgslsmith_index_u32(4294967295u, 17u)])), min(vec4<i32>(6131i, global2.x, 50047i, global2.x), vec4<i32>(global0[_wgslsmith_index_u32(1u, 17u)], -1i, global2.x, global2.x)), vec4<bool>(true, true, false, true)), ~(-vec4<i32>(-33928i, 2147483647i, -19282i, -2147483647i))), abs(vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, var_0.x, u_input.a.x, u_input.a.x), vec4<u32>(1u, var_0.x, 66519u, var_0.x)), vec4<u32>(100192u, 4294967295u, var_0.x, 4294967295u) ^ vec4<u32>(55138u, 0u, u_input.a.x, 4294967295u)), 17u)], 20832i, 0i, _wgslsmith_mult_i32(countOneBits(global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), reverseBits(1i)))));
    let var_2 = !vec3<bool>(!(any(vec4<bool>(false, false, false, false)) || true), select(all(vec4<bool>(true, true, true, true)), !select(true, true, true), true), !(~global2.x <= ~global0[_wgslsmith_index_u32(0u, 17u)]));
    var var_3 = _wgslsmith_mod_u32(4294967295u, ~u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -655f)) + var_1.zw) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), -513f))), vec2<i32>(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(1221f, -373f, 376f), var_1.wzz)) ^ global0[_wgslsmith_index_u32(var_0.x, 17u)], ~(-global2.x)));
}

