struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<u32>(71771u, 54780u, 21584u), vec4<i32>(26778i, i32(-2147483648), -24792i, 0i)), Struct_1(vec3<u32>(4294967295u, 9963u, 0u), vec4<i32>(62233i, 4125i, 11483i, 0i)), Struct_1(vec3<u32>(58425u, 0u, 67433u), vec4<i32>(2147483647i, 2147483647i, -21599i, -63885i)), Struct_1(vec3<u32>(4294967295u, 72527u, 0u), vec4<i32>(-48945i, 44448i, -58052i, 33817i)), Struct_1(vec3<u32>(54764u, 1u, 77099u), vec4<i32>(-44507i, -78747i, 35606i, i32(-2147483648))), Struct_1(vec3<u32>(23218u, 1u, 65438u), vec4<i32>(-795i, i32(-2147483648), -1i, 0i)), Struct_1(vec3<u32>(75647u, 46170u, 4316u), vec4<i32>(-1i, 2147483647i, -14742i, -48862i)), Struct_1(vec3<u32>(72037u, 36624u, 4294967295u), vec4<i32>(0i, 205i, -34562i, -14529i)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec4<i32>(-1i, -1i, 0i, -9082i)), Struct_1(vec3<u32>(4294967295u, 65441u, 4294967295u), vec4<i32>(2147483647i, 50799i, 23617i, i32(-2147483648))), Struct_1(vec3<u32>(0u, 39659u, 1u), vec4<i32>(-58548i, 0i, -1i, 0i)), Struct_1(vec3<u32>(0u, 0u, 35946u), vec4<i32>(-1i, -1i, 9404i, 28208i)), Struct_1(vec3<u32>(26658u, 1u, 4294967295u), vec4<i32>(-1i, -15663i, -8463i, -1i)), Struct_1(vec3<u32>(0u, 9560u, 71586u), vec4<i32>(-1i, 2147483647i, 2147483647i, 1i)), Struct_1(vec3<u32>(65606u, 0u, 4294967295u), vec4<i32>(4189i, 20440i, i32(-2147483648), 32568i)), Struct_1(vec3<u32>(1u, 89862u, 0u), vec4<i32>(217i, -27093i, -1890i, -47999i)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, i32(-2147483648))), Struct_1(vec3<u32>(1u, 53939u, 26049u), vec4<i32>(0i, 2147483647i, 56946i, -1i)), Struct_1(vec3<u32>(0u, 4294967295u, 9937u), vec4<i32>(46382i, 1i, 0i, 0i)), Struct_1(vec3<u32>(16003u, 4294967295u, 25699u), vec4<i32>(2147483647i, -13946i, 1i, 23749i)), Struct_1(vec3<u32>(1u, 0u, 47020u), vec4<i32>(-39490i, 52606i, -15276i, 0i)), Struct_1(vec3<u32>(1u, 4294967295u, 0u), vec4<i32>(-17870i, -46571i, 20563i, 0i)), Struct_1(vec3<u32>(22762u, 71365u, 13757u), vec4<i32>(i32(-2147483648), 41447i, 1i, 3579i)), Struct_1(vec3<u32>(0u, 0u, 1u), vec4<i32>(-24231i, 0i, -11350i, 0i)), Struct_1(vec3<u32>(20240u, 28841u, 105260u), vec4<i32>(i32(-2147483648), -11015i, -1212i, 0i)), Struct_1(vec3<u32>(1u, 4294967295u, 5798u), vec4<i32>(-68190i, i32(-2147483648), 0i, -68809i)), Struct_1(vec3<u32>(82859u, 43414u, 4294967295u), vec4<i32>(-15667i, 73236i, 30326i, -42030i)), Struct_1(vec3<u32>(4294967295u, 2247u, 4294967295u), vec4<i32>(-22708i, 12294i, -15255i, 0i)), Struct_1(vec3<u32>(12732u, 4294967295u, 0u), vec4<i32>(9051i, 2147483647i, 0i, 1i)));

var<private> global2: array<f32, 4> = array<f32, 4>(-1016f, 220f, 1293f, 572f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> Struct_1 {
    global2 = array<f32, 4>();
    global2 = array<f32, 4>();
    var var_0 = ~(~_wgslsmith_mod_vec2_u32(abs(~vec2<u32>(4294967295u, u_input.c)), ~vec2<u32>(u_input.c, 22395u) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(65675u, u_input.c)) % vec2<u32>(32u))));
    var_0 = max(~(~(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 98u), vec2<u32>(72303u, 17583u)))), ~firstLeadingBit(_wgslsmith_add_vec2_u32(abs(vec2<u32>(5540u, u_input.c)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 27847u), vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, u_input.c)))));
    var_0 = vec2<u32>(select(~0u, var_0.x, !all(vec4<bool>(false, true, true, true))), u_input.c);
    return global1[_wgslsmith_index_u32(~var_0.x, 29u)];
}

fn func_3() -> u32 {
    global1 = array<Struct_1, 29>();
    var var_0 = u_input.c;
    var var_1 = func_1();
    var var_2 = Struct_1(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.c, abs(u_input.c), _wgslsmith_div_u32(var_1.a.x, var_1.a.x))), vec3<u32>(func_1().a.x, var_1.a.x, _wgslsmith_mult_u32(u_input.c, 1u))), vec4<i32>(-1i) * -(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, var_1.b.x, var_1.b.x, var_1.b.x), u_input.b) << (~vec4<u32>(var_1.a.x, 0u, 4294967295u, var_1.a.x) % vec4<u32>(32u))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(146f, global0.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-890f, global0.x), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global2[_wgslsmith_index_u32(4763u, 4u)]), vec2<f32>(global2[_wgslsmith_index_u32(23072u, 4u)], 191f)), vec2<bool>(true, true))))));
    return 18615u;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<i32>) -> u32 {
    global2 = array<f32, 4>();
    var var_0 = _wgslsmith_add_u32(0u, _wgslsmith_add_u32(1u, u_input.c)) >> (_wgslsmith_add_u32(abs(~func_1().a.x), 21210u) % 32u);
    let var_1 = u_input.a.x;
    let var_2 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(min(arg_1, arg_1 | arg_1), arg_1, func_1().a), u_input.b << (min(vec4<u32>(4294967295u, arg_1.x, 36693u, 0u) ^ vec4<u32>(arg_1.x, 58677u, u_input.c, u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 77662u, 4294967295u), vec4<u32>(61732u, arg_1.x, arg_1.x, 59333u))) % vec4<u32>(32u))), Struct_1(_wgslsmith_add_vec3_u32(arg_1, reverseBits(arg_1)), u_input.b));
    global0 = vec2<f32>(-1183f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 4u)] - 1000f))))))));
    return 0u;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = func_4(all(vec3<bool>(arg_1.x, true, false)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u << (func_3() % 32u), 25820u, u_input.c), vec3<u32>((0u | u_input.c) | abs(u_input.c), 54099u, _wgslsmith_mod_u32(select(u_input.c, u_input.c, false), countOneBits(u_input.c)))), u_input.d.xy << (_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.c, u_input.c)), abs(vec2<u32>(1u, 0u) << (vec2<u32>(u_input.c, 24443u) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    global1 = array<Struct_1, 29>();
    let var_1 = vec4<i32>(arg_0.x, abs(-6635i), abs(-1i), _wgslsmith_dot_vec2_i32(func_1().b.zw, ~(u_input.d.xy & u_input.a.yx)) >> (var_0 % 32u));
    global1 = array<Struct_1, 29>();
    let var_2 = vec3<bool>(all(!select(!vec2<bool>(true, arg_1.x), !vec2<bool>(arg_1.x, arg_1.x), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstTrailingBit(29019u), 4u)]) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1128f, global0.x))) != _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(u_input.c, var_0), _wgslsmith_sub_u32(var_0, var_0)), 4u)] + global2[_wgslsmith_index_u32(4294967295u, 4u)]), !all(select(vec3<bool>(arg_1.x, true, arg_1.x), select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.ywx, arg_1.wzx), !arg_1.xww)));
    return ~(_wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(4294967295u, ~u_input.c)) << (_wgslsmith_mult_u32(firstLeadingBit(var_0 << (var_0 % 32u)), 70896u) % 32u));
}

fn func_5(arg_0: u32) -> vec2<bool> {
    let var_0 = global1[_wgslsmith_index_u32(~max(_wgslsmith_add_u32(arg_0, u_input.c), arg_0), 29u)];
    let var_1 = false;
    global1 = array<Struct_1, 29>();
    let var_2 = Struct_2(global1[_wgslsmith_index_u32((var_0.a.x << (~17710u % 32u)) | 1u, 29u)], Struct_1(min(firstTrailingBit(var_0.a) | var_0.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 35262u, 1u) << (vec3<u32>(arg_0, 4294967295u, 0u) % vec3<u32>(32u)), vec3<u32>(4294967295u, arg_0, arg_0), func_1().a)), -firstTrailingBit(min(vec4<i32>(u_input.d.x, var_0.b.x, u_input.b.x, u_input.a.x), u_input.b))));
    return vec2<bool>(var_1, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = select(vec2<bool>(true, true), func_5(max(func_2(vec4<i32>(1236i, -2147483647i, var_0.b.x, -10191i), vec4<bool>(false, true, false, false)), abs(0u)) >> (_wgslsmith_sub_u32(abs(3382u), ~4294967295u) % 32u)), false);
    let var_2 = Struct_2(func_1(), func_1());
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(27766u, 4u)])), _wgslsmith_f_op_f32(exp2(global0.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1550f, global2[_wgslsmith_index_u32(0u, 4u)]) + 965f), 2103f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(20105u, 4u)], global0.x) * vec2<f32>(-1197f, global2[_wgslsmith_index_u32(u_input.c, 4u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1393f, global0.x)))))));
    global2 = array<f32, 4>();
    var var_3 = Struct_2(func_1(), Struct_1(~(~select(vec3<u32>(1u, 0u, var_2.a.a.x), vec3<u32>(66856u, 0u, 0u), true)), ~_wgslsmith_mod_vec4_i32(var_2.b.b, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-849f * global0.x), _wgslsmith_f_op_f32(trunc(global0.x))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1302f, global0.x))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-375f, global2[_wgslsmith_index_u32(u_input.c, 4u)]))))))), ~var_2.b.b.x, ~var_3.a.b.wy, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(round(567f)), -1541f))));
}

