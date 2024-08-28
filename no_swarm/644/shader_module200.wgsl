struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(true, vec3<i32>(i32(-2147483648), 0i, 34746i), 0u, vec4<bool>(true, false, false, true)), Struct_4(false, vec3<i32>(1i, -8971i, -21382i), 42276u, vec4<bool>(true, false, false, true)), Struct_4(true, vec3<i32>(1i, 0i, -10969i), 5200u, vec4<bool>(false, false, true, false)), Struct_4(true, vec3<i32>(38286i, i32(-2147483648), i32(-2147483648)), 7093u, vec4<bool>(true, true, true, true)), Struct_4(false, vec3<i32>(-5333i, -1i, -11550i), 4294967295u, vec4<bool>(false, true, false, false)), Struct_4(true, vec3<i32>(1i, i32(-2147483648), -14962i), 0u, vec4<bool>(true, false, true, false)), Struct_4(false, vec3<i32>(-1i, -31828i, 2147483647i), 4294967295u, vec4<bool>(true, false, false, false)), Struct_4(false, vec3<i32>(-4472i, 0i, -19575i), 4294967295u, vec4<bool>(true, true, true, false)), Struct_4(false, vec3<i32>(0i, 21545i, 11191i), 57620u, vec4<bool>(true, true, true, true)), Struct_4(true, vec3<i32>(-48872i, -1i, 40643i), 1u, vec4<bool>(true, false, false, false)), Struct_4(false, vec3<i32>(40453i, 21338i, i32(-2147483648)), 0u, vec4<bool>(false, false, true, false)), Struct_4(true, vec3<i32>(0i, -5807i, 2147483647i), 8513u, vec4<bool>(false, true, true, false)), Struct_4(false, vec3<i32>(1i, 2147483647i, -26275i), 44109u, vec4<bool>(false, false, false, false)), Struct_4(false, vec3<i32>(-1i, -4201i, 0i), 1u, vec4<bool>(true, false, true, false)), Struct_4(false, vec3<i32>(2147483647i, 0i, 24627i), 4294967295u, vec4<bool>(false, false, true, false)), Struct_4(false, vec3<i32>(-36036i, 15131i, -59438i), 0u, vec4<bool>(true, false, true, true)));

var<private> global1: Struct_3;

var<private> global2: Struct_2 = Struct_2(4294967295u, Struct_1(35749u, vec2<bool>(false, false), vec4<f32>(-244f, -557f, 1199f, -1025f)), 51223i);

var<private> global3: Struct_3;

var<private> global4: array<Struct_1, 20>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> Struct_3 {
    global4 = array<Struct_1, 20>();
    return Struct_3(global3.a, global2.b.c.xzx, -(~abs(firstTrailingBit(global1.c))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> vec2<i32> {
    var var_0 = global4[_wgslsmith_index_u32(~arg_1.c, 20u)];
    var var_1 = Struct_2(~global2.b.a, Struct_1(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(0u, 44458u, 15904u), _wgslsmith_div_vec3_u32(vec3<u32>(19620u, 1u, 5097u), vec3<u32>(arg_1.c, 0u, 85511u)), !vec3<bool>(true, global2.b.b.x, global1.a)), ~(~vec3<u32>(u_input.b, var_0.a, 4294967295u))), arg_1.d.wz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1538f - global1.b.x), -226f, -326f, global2.b.c.x))), global2.c);
    var var_2 = Struct_2(global2.a, Struct_1(~(~u_input.b), select(var_1.b.b, vec2<bool>(true, arg_0.a), any(!vec4<bool>(true, false, true, var_0.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(195f * global1.b.x), _wgslsmith_f_op_f32(-global3.b.x), -1657f, -806f))), 44930i);
    let var_3 = -arg_0.c;
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.b.c.x), -312f)), var_2.b.c.x) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-164f + _wgslsmith_f_op_f32(f32(-1f) * -608f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b.x)))), global3.b.x));
    return -var_3;
}

fn func_2(arg_0: Struct_3) -> vec2<u32> {
    global4 = array<Struct_1, 20>();
    global0 = array<Struct_4, 16>();
    let var_0 = Struct_3(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b)) * _wgslsmith_f_op_vec3_f32(global1.b + global2.b.c.xyy)), max(func_3(arg_0, global0[_wgslsmith_index_u32(reverseBits(global2.a), 16u)]), vec2<i32>(reverseBits(i32(-1i) * -9995i), _wgslsmith_mult_i32(firstTrailingBit(global2.c), func_3(Struct_3(global1.a, vec3<f32>(-1000f, 1236f, global2.b.c.x), vec2<i32>(-21910i, arg_0.c.x)), global0[_wgslsmith_index_u32(u_input.b, 16u)]).x))));
    var var_1 = Struct_3(global3.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global2.b.c.yxz))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-1009f, global1.b.x)), global1.b.x, _wgslsmith_f_op_f32(global1.b.x - global3.b.x)), _wgslsmith_f_op_vec3_f32(ceil(global2.b.c.xxw)))), -((vec2<i32>(1i, 1i) & vec2<i32>(var_0.c.x, 835i)) << (vec2<u32>(global2.a, 0u) % vec2<u32>(32u))) ^ global1.c);
    var var_2 = Struct_2(68287u, global2.b, 2147483647i);
    return firstLeadingBit(vec2<u32>(~4294967295u, var_2.a));
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_2) -> StorageBuffer {
    global2 = arg_3;
    let var_0 = -1678f;
    let var_1 = vec2<i32>(reverseBits(_wgslsmith_mod_i32(i32(-1i) * -global2.c, global1.c.x)), -15246i);
    let var_2 = func_1(global2.b.c.yz, firstLeadingBit(func_2(func_1(vec2<f32>(1040f, 2037f), 476u)).x));
    var var_3 = vec4<bool>(arg_3.b.b.x, abs(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(9007u, 25770u, u_input.b)), vec3<u32>(global2.a, u_input.b, 83325u))) == 0u, all(vec3<bool>(arg_0 & any(vec4<bool>(global3.a, global1.a, true, true)), true, any(vec3<bool>(true, true, true)))), any(vec3<bool>(false, true, true)));
    return StorageBuffer(-u_input.a, _wgslsmith_sub_i32(-5716i, 12034i), vec2<f32>(global1.b.x, _wgslsmith_div_f32(global2.b.c.x, _wgslsmith_f_op_f32(-global2.b.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(global2.c, i32(-1i) * -global1.c.x);
    var var_1 = _wgslsmith_div_f32(global3.b.x, _wgslsmith_f_op_f32(-global2.b.c.x));
    var var_2 = vec3<i32>(-(~(~_wgslsmith_mod_i32(-43096i, global1.c.x))), _wgslsmith_add_i32(abs(-global3.c.x), abs(1i)), -7931i);
    let var_3 = Struct_3(global2.b.b.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(265f, -514f, global1.b.x), vec3<f32>(-567f, global3.b.x, global2.b.c.x))), global2.b.c.xzx, !vec3<bool>(global2.b.b.x, false, false))), select(vec2<i32>(abs(-1i), min(select(global3.c.x, u_input.a, true), -8567i)), -(~global3.c), vec2<bool>(true, true)));
    var var_4 = global2.b.c;
    let var_5 = var_4.zy;
    let x = u_input.a;
    s_output = func_4(any(!vec2<bool>(!var_3.a, global2.b.b.x)), vec2<u32>(32625u >> ((global2.a >> (u_input.b % 32u)) % 32u), 4294967295u) | ~func_2(func_1(vec2<f32>(global1.b.x, var_4.x), u_input.b)), global2.b.c.x, Struct_2(func_2(var_3).x, Struct_1(abs(firstLeadingBit(7461u)), global2.b.b, _wgslsmith_div_vec4_f32(vec4<f32>(var_4.x, global2.b.c.x, -831f, var_5.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-609f, var_4.x, -1713f, 1389f) - vec4<f32>(global2.b.c.x, 452f, 835f, -323f)))), var_0.x));
}

