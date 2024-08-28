struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<f32>(-291f, -1049f), vec2<i32>(i32(-2147483648), 0i), vec3<i32>(4398i, -66834i, 2147483647i), vec4<i32>(2147483647i, 1i, -3160i, -30341i), vec3<u32>(0u, 1u, 10717u)), Struct_1(vec2<f32>(-431f, 758f), vec2<i32>(i32(-2147483648), 0i), vec3<i32>(-1i, 0i, -6227i), vec4<i32>(42938i, -57917i, 26918i, 0i), vec3<u32>(6532u, 2270u, 1u)), Struct_1(vec2<f32>(310f, 135f), vec2<i32>(-93240i, -81396i), vec3<i32>(31934i, -1i, 25186i), vec4<i32>(-19464i, 28511i, 40023i, 0i), vec3<u32>(23524u, 1u, 39003u)), Struct_1(vec2<f32>(682f, -959f), vec2<i32>(7462i, 22753i), vec3<i32>(i32(-2147483648), 0i, 65085i), vec4<i32>(8425i, 47707i, -45150i, 1i), vec3<u32>(14148u, 0u, 65448u)), Struct_1(vec2<f32>(600f, -1373f), vec2<i32>(-1i, 47120i), vec3<i32>(1i, i32(-2147483648), 1i), vec4<i32>(2147483647i, 1i, i32(-2147483648), 4168i), vec3<u32>(1914u, 4294967295u, 47120u)), Struct_1(vec2<f32>(1637f, 339f), vec2<i32>(-14670i, -1i), vec3<i32>(-14954i, -20222i, 0i), vec4<i32>(2147483647i, -1i, -38034i, 8819i), vec3<u32>(53026u, 38160u, 0u)), Struct_1(vec2<f32>(2123f, -825f), vec2<i32>(-31258i, -55031i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec4<i32>(1i, 1i, -20390i, -1i), vec3<u32>(4294967295u, 28683u, 1u)), Struct_1(vec2<f32>(1193f, -1198f), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, 30383i, 34272i), vec4<i32>(i32(-2147483648), 0i, 2147483647i, 9293i), vec3<u32>(62829u, 1u, 29086u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<i32> {
    global3 = array<Struct_1, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2706f, _wgslsmith_f_op_f32(f32(-1f) * -1534f), _wgslsmith_f_op_f32(f32(-1f) * -273f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1302f), _wgslsmith_f_op_f32(ceil(arg_2.a.x)))))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~(~67829u ^ arg_0.x), ~arg_0.x), 1u), 5u)];
    return ~arg_2.d.wx;
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = true;
    global3 = array<Struct_1, 8>();
    var var_1 = vec3<bool>(true, !(~global2.e.x >= ~4294967295u), true);
    global0 = array<Struct_1, 5>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(625f, -1178f)) - global2.a), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2799f, arg_0.a.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a) - global2.a)), _wgslsmith_clamp_vec2_i32(func_3(global2.e.zy, vec3<bool>(true, all(vec2<bool>(true, var_1.x)), var_1.x), Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-609f, -1812f))), select(vec2<i32>(u_input.a, 47148i), vec2<i32>(arg_0.c.x, 48975i), vec2<bool>(false, false)), reverseBits(arg_0.c), _wgslsmith_sub_vec4_i32(vec4<i32>(-18569i, arg_0.b.x, arg_0.c.x, global2.c.x), arg_0.d), arg_0.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(391f, arg_0.a.x, -767f))), vec2<i32>(arg_0.b.x, -33190i & (25283i & u_input.a)), -(~vec2<i32>(0i, 2147483647i))), vec3<i32>(_wgslsmith_dot_vec4_i32(abs(arg_0.d), _wgslsmith_mult_vec4_i32(global2.d, -global2.d)), arg_0.d.x >> (global2.e.x % 32u), reverseBits(-global2.d.x)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, global2.d.x, -24962i, 2147483647i) | select(vec4<i32>(4432i, arg_0.d.x, 2147483647i, arg_0.c.x), vec4<i32>(arg_0.c.x, 1i, 0i, arg_0.b.x), vec4<bool>(true, true, var_1.x, var_1.x)), countOneBits(vec4<i32>(u_input.a, -21125i, u_input.a, u_input.a))), firstTrailingBit(vec4<i32>(select(u_input.a, 1i, true), _wgslsmith_dot_vec3_i32(global2.d.yzw, arg_0.c), global2.d.x, ~global2.c.x))), ~abs(max(~vec3<u32>(4294967295u, arg_0.e.x, arg_0.e.x), arg_0.e)));
    return global2.a.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<f32>) -> vec2<u32> {
    let var_0 = global3[_wgslsmith_index_u32(global2.e.x, 8u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global3[_wgslsmith_index_u32(4294967295u, 8u)])) - -986f);
    global2 = global0[_wgslsmith_index_u32(121071u, 5u)];
    global1 = global2.e.x;
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~var_0.e, var_0.e), 8u)];
    return ~_wgslsmith_sub_vec2_u32(vec2<u32>(firstLeadingBit(4151u), 25385u), var_0.e.xz);
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<u32>) -> vec3<i32> {
    var var_0 = !(!(!select(!vec4<bool>(true, arg_1, true, arg_1), select(vec4<bool>(false, true, true, arg_1), vec4<bool>(arg_1, false, true, arg_1), true), !arg_1)));
    let var_1 = Struct_1(vec2<f32>(-754f, _wgslsmith_f_op_f32(min(global2.a.x, 1f))), reverseBits(select(global2.b, vec2<i32>(u_input.a, -15749i), true) ^ ~(global2.c.xy << (arg_2.zz % vec2<u32>(32u)))), global2.d.xyy, _wgslsmith_mult_vec4_i32(global2.d, global2.d), vec3<u32>(~arg_2.x | max(arg_0.x, global2.e.x), _wgslsmith_sub_u32(1u, arg_2.x), ~34701u) >> (reverseBits(~arg_2) % vec3<u32>(32u)));
    var var_2 = i32(-1i) * -1i;
    global1 = ~max(48080u, ~arg_3.x);
    var var_3 = global0[_wgslsmith_index_u32(~4294967295u, 5u)];
    return vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.d.x, abs(var_3.b.x) << (~arg_2.x % 32u), 1i, ~(~u_input.a)), vec4<i32>(-1i, _wgslsmith_sub_i32(var_1.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d.x, -13423i), var_1.c.xy)), u_input.a & u_input.a, -15204i)), global2.d.x, i32(-1i) * -27108i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2.a, vec2<i32>(1i, -global2.c.x) | vec2<i32>(_wgslsmith_clamp_i32(firstLeadingBit(u_input.a), -2147483647i, u_input.a), abs(2147483647i)), ~func_4(global2.e.yz, any(vec2<bool>(true, true)) | true, ~global2.e, func_1(vec3<u32>(0u, 0u, global2.e.x), _wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-434f, -111f, global2.a.x, global2.a.x)))), -vec4<i32>(-1i, _wgslsmith_mod_i32(-1i, global2.d.x), ~_wgslsmith_div_i32(global2.d.x, global2.c.x), -1i), ~vec3<u32>(max(global2.e.x, 110581u) >> (firstLeadingBit(0u) % 32u), 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.e.x, global2.e.x, global2.e.x, 24005u), vec4<u32>(92506u, global2.e.x, 4294967295u, 44152u)), vec4<u32>(4294967295u, global2.e.x, global2.e.x, 71811u) ^ vec4<u32>(4294967295u, global2.e.x, 1u, global2.e.x))));
    var var_1 = select(true, any(vec3<bool>(var_0.a.x == _wgslsmith_f_op_f32(-1367f * 1083f), true || select(true, true, false), select(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(global2.a, global2.c.zy, vec3<i32>(global2.b.x, var_0.c.x, -1i), vec4<i32>(-26044i, var_0.b.x, 6583i, -2147483647i), vec3<u32>(var_0.e.x, 23290u, 1u)))))) < -232f);
    let var_2 = _wgslsmith_div_i32(firstLeadingBit(-abs(min(23259i, global2.d.x))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, 0i), -vec2<i32>(global2.d.x, 6104i)), firstLeadingBit(69785i), max(u_input.a, -19781i)));
    global2 = Struct_1(var_0.a, countOneBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, -15039i, var_2), vec4<i32>(var_2, -1i, 14921i, 2147483647i) ^ global2.d), global2.d.x)), reverseBits(_wgslsmith_clamp_vec3_i32(-global2.d.yxy, abs(vec3<i32>(-20961i, u_input.a, var_2)), _wgslsmith_div_vec3_i32(vec3<i32>(global2.c.x, 7914i, 0i), global2.d.ywy))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_2) ^ vec2<i32>(u_input.a, u_input.a), -vec2<i32>(-1i, var_2)) << (firstTrailingBit(_wgslsmith_mult_u32(1u, 61065u)) % 32u), u_input.a ^ -2948i, _wgslsmith_sub_i32(-2147483647i, var_2), 0i), var_0.e);
    global3 = array<Struct_1, 8>();
    var_0 = global0[_wgslsmith_index_u32(var_0.e.x, 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_0.b.x ^ 21668i);
}

