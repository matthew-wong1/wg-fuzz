struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<i32>(i32(-2147483648), -1014i, -1i, 14279i), vec2<i32>(-1i, 13855i), 2147483647i, false, 4294967295u), Struct_1(vec4<i32>(-19183i, -1i, i32(-2147483648), i32(-2147483648)), vec2<i32>(-19715i, 53977i), 2147483647i, true, 6569u), Struct_1(vec4<i32>(99951i, 17921i, -13338i, i32(-2147483648)), vec2<i32>(0i, -56824i), 18299i, true, 0u), Struct_1(vec4<i32>(-1i, 51033i, 48345i, i32(-2147483648)), vec2<i32>(-40149i, -1i), 2147483647i, false, 1u), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -34815i, 1i), vec2<i32>(0i, 0i), 12788i, false, 1u), Struct_1(vec4<i32>(32495i, 1i, 2147483647i, -55233i), vec2<i32>(2147483647i, 15191i), -1i, true, 1u), Struct_1(vec4<i32>(-22159i, 43700i, 18760i, 33957i), vec2<i32>(12112i, i32(-2147483648)), 0i, false, 29821u), Struct_1(vec4<i32>(54258i, 20294i, 1i, 0i), vec2<i32>(-1033i, 2147483647i), 0i, true, 92265u), Struct_1(vec4<i32>(i32(-2147483648), -6960i, 15076i, i32(-2147483648)), vec2<i32>(10732i, -27132i), 37878i, false, 4294967295u), Struct_1(vec4<i32>(0i, 0i, 3262i, 11771i), vec2<i32>(-30485i, 11213i), -26842i, true, 28774u), Struct_1(vec4<i32>(-32481i, 1i, 0i, 0i), vec2<i32>(14208i, -36415i), 4718i, true, 4294967295u), Struct_1(vec4<i32>(-1i, 1i, 51927i, -15414i), vec2<i32>(i32(-2147483648), 17785i), 28818i, true, 93322u), Struct_1(vec4<i32>(1i, 2147483647i, 2147483647i, 0i), vec2<i32>(14994i, 2147483647i), i32(-2147483648), true, 4294967295u), Struct_1(vec4<i32>(0i, -27453i, 13269i, 1i), vec2<i32>(5840i, 2147483647i), 53518i, true, 1u), Struct_1(vec4<i32>(38039i, 55205i, -88366i, 0i), vec2<i32>(2147483647i, 37527i), 1622i, false, 80404u), Struct_1(vec4<i32>(1i, -13480i, -1i, 2147483647i), vec2<i32>(23597i, -1i), 2147483647i, true, 0u));

var<private> global1: vec4<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> bool {
    var var_0 = Struct_1(vec4<i32>(-1i) * -select(_wgslsmith_mult_vec4_i32(arg_2.a, arg_2.a), firstTrailingBit(vec4<i32>(0i, 2147483647i, 0i, 60659i)), true), global1.xz, 17099i, !(!(!any(vec3<bool>(arg_2.d, false, true)))), arg_2.e);
    return arg_2.d;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<i32> {
    var var_0 = !(!(!vec2<bool>(arg_1.b.x == -18425i, true & arg_2.x)));
    let var_1 = Struct_1(select(vec4<i32>(27469i, countOneBits(-2147483647i), global1.x, ~13822i) ^ (abs(vec4<i32>(-35816i, -10724i, global1.x, arg_1.b.x)) | vec4<i32>(u_input.d, u_input.e.x, -2583i, -7822i)), -arg_1.a, !vec4<bool>(true, false, var_0.x, false)), abs(vec2<i32>(~max(2147483647i, -2147483647i), arg_1.b.x)), u_input.c.x, !select(u_input.a.x > ~0u, true, false), abs(~u_input.b));
    let var_2 = _wgslsmith_div_vec2_u32(u_input.a, u_input.a);
    var var_3 = Struct_1(vec4<i32>(countOneBits(-1i), u_input.e.x << (~arg_1.e % 32u), _wgslsmith_add_i32(firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec3_i32(select(u_input.e, u_input.c, vec3<bool>(true, false, arg_0)), arg_1.a.xyw)), _wgslsmith_dot_vec2_i32(~(vec2<i32>(global1.x, 1807i) >> (var_2 % vec2<u32>(32u))), reverseBits(vec2<i32>(arg_1.a.x, -43827i)))), vec2<i32>(u_input.c.x, abs(u_input.e.x)), select(i32(-1i) * -2147483647i, min(_wgslsmith_mult_i32(1i, global1.x), var_1.b.x), false), !(!(arg_0 | true)), 4294967295u >> (var_1.e % 32u));
    global0 = array<Struct_1, 16>();
    return var_1.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = ~arg_1.a;
    var var_0 = vec3<f32>(1f, _wgslsmith_f_op_f32(min(720f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -492f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-833f - -909f)))))), _wgslsmith_f_op_f32(ceil(-791f)));
    var var_1 = arg_1.c;
    let var_2 = arg_1;
    var_1 = u_input.e.x;
    return Struct_1(~_wgslsmith_sub_vec4_i32(~vec4<i32>(-6429i, global1.x, -28679i, arg_0.a.x), func_4(func_3(50554u, arg_1.e, Struct_1(arg_1.a, vec2<i32>(-40781i, 27670i), var_2.b.x, arg_1.d, u_input.b), -478f), Struct_1(vec4<i32>(arg_1.c, arg_1.a.x, arg_0.c, u_input.c.x), vec2<i32>(23996i, var_2.a.x), u_input.e.x, arg_0.d, arg_0.e), !vec3<bool>(true, arg_1.d, true))), _wgslsmith_mult_vec2_i32(u_input.e.xy, vec2<i32>(17060i, ~arg_0.b.x)), arg_0.c, arg_0.d, arg_1.e);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 140f, -316f) - vec3<f32>(-284f, -310f, arg_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -453f, arg_2))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, 484f), vec3<f32>(arg_2, -870f, arg_2))))))), _wgslsmith_div_vec3_f32(vec3<f32>(169f, _wgslsmith_f_op_f32(-arg_2), 276f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(670f, -1002f)) + 1957f), -494f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) * _wgslsmith_f_op_f32(-arg_2)))));
    let var_1 = arg_3.x;
    global1 = -vec4<i32>(-45560i, -(var_1 & (u_input.c.x & 27594i)), reverseBits(u_input.d & -2147483647i), _wgslsmith_mod_i32(-global1.x, ~arg_0.b.x));
    global0 = array<Struct_1, 16>();
    var var_2 = _wgslsmith_f_op_vec3_f32(var_0 - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(select(-1561f, 1494f, !arg_1.d)), arg_2))));
    return ~_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, arg_0.a.x << (arg_0.e % 32u)), vec2<i32>(~u_input.e.x, ~(i32(-1i) * -1i)));
}

fn func_1() -> i32 {
    global0 = array<Struct_1, 16>();
    let var_0 = false;
    global0 = array<Struct_1, 16>();
    global1 = vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.c.x, -21133i), reverseBits(vec2<i32>(-26120i, global1.x)), vec2<i32>(-2147483647i, -8267i)), max(firstLeadingBit(u_input.e.zy), u_input.e.yx), global1.zx), u_input.e.yz), u_input.d ^ u_input.c.x, 52752i, -22095i);
    return _wgslsmith_add_i32(reverseBits(func_5(func_2(global0[_wgslsmith_index_u32(8452u, 16u)], Struct_1(vec4<i32>(0i, 0i, 42023i, 23991i), vec2<i32>(global1.x, 28283i), global1.x, false, 21043u)), func_2(Struct_1(vec4<i32>(-81i, -1i, u_input.e.x, 3505i), global1.zx, u_input.c.x, var_0, u_input.a.x), func_2(global0[_wgslsmith_index_u32(23700u, 16u)], Struct_1(vec4<i32>(2147483647i, u_input.c.x, global1.x, -7273i), global1.xz, global1.x, var_0, 0u))), -201f, u_input.e.xz)), u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~0u), u_input.b), 16u)];
    global1 = vec4<i32>(-39275i, func_1(), countOneBits(firstLeadingBit(-func_1())), -(_wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483647i, u_input.d), ~24709i) << (14168u % 32u)));
    let var_1 = Struct_1(~(~var_0.a), vec2<i32>(global1.x, -32023i) >> (~u_input.a % vec2<u32>(32u)), ~(-var_0.a.x), true, ~8542u << (~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), ~u_input.a) % 32u));
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(73870i, -countOneBits(_wgslsmith_add_i32(-2147483647i, 1i)), -1i, abs(-global1.x)), 17711u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(205f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1323f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1062f, 1801f)))));
}

