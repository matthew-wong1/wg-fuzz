struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(45404u, 1u, 67001u, 4294967295u), vec4<u32>(62086u, 4294967295u, 1u, 30790u), vec4<u32>(57357u, 82743u, 57982u, 4294967295u), vec4<u32>(37424u, 1u, 1u, 18477u), vec4<u32>(44428u, 4294967295u, 50825u, 1u), vec4<u32>(53421u, 65427u, 4294967295u, 65085u), vec4<u32>(0u, 1u, 47382u, 16602u), vec4<u32>(4294967295u, 24977u, 4294967295u, 0u), vec4<u32>(1u, 1u, 4294967295u, 1u), vec4<u32>(15406u, 0u, 4294967295u, 46912u), vec4<u32>(16751u, 59148u, 7335u, 0u), vec4<u32>(28645u, 113624u, 59007u, 46608u), vec4<u32>(1u, 4294967295u, 117628u, 36380u), vec4<u32>(18612u, 0u, 6421u, 7693u), vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 68534u, 47811u), vec4<u32>(64588u, 1u, 4294967295u, 17191u), vec4<u32>(13244u, 4294967295u, 4700u, 3169u), vec4<u32>(1u, 43371u, 1u, 8460u), vec4<u32>(0u, 1u, 1u, 18429u), vec4<u32>(18678u, 24127u, 28813u, 4294967295u), vec4<u32>(6673u, 0u, 4294967295u, 49692u), vec4<u32>(4294967295u, 44292u, 0u, 61683u), vec4<u32>(4294967295u, 48624u, 53525u, 62158u), vec4<u32>(65802u, 1u, 1u, 39722u));

var<private> global1: array<bool, 12> = array<bool, 12>(false, true, false, false, true, false, false, true, true, false, false, true);

var<private> global2: array<vec3<i32>, 2>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> vec2<bool> {
    return vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]);
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = select(arg_0.a.xz, func_2(), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a.x & ~80478u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, 31018u), _wgslsmith_mod_u32(u_input.a.x, 29392u))), 12u)]);
    var var_1 = u_input.a;
    var var_2 = Struct_2(~_wgslsmith_add_vec4_u32(u_input.a, u_input.a), arg_0, ~(~1624u));
    global2 = array<vec3<i32>, 2>();
    var var_3 = var_2.b.a;
    return 0u;
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: u32) -> vec4<bool> {
    let var_0 = countOneBits(vec4<u32>(_wgslsmith_add_u32(116974u, arg_2), max(reverseBits(u_input.a.x), 29497u) & 28358u, ~u_input.a.x, 4294967295u));
    global1 = array<bool, 12>();
    global0 = array<vec4<u32>, 26>();
    var var_1 = global1[_wgslsmith_index_u32(38425u, 12u)];
    var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 12u)];
    return select(!vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, arg_2), 12u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~var_0.x, _wgslsmith_clamp_u32(arg_2, 1u, 6409u), ~u_input.a.x), 12u)], any(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(arg_2, 12u)], true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 12u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(arg_2, 12u)], global1[_wgslsmith_index_u32(arg_2, 12u)]))), false & (global1[_wgslsmith_index_u32(28199u, 12u)] || global1[_wgslsmith_index_u32(var_0.x, 12u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(~39735u, 12u)], true, true, true), select(select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], true, global1[_wgslsmith_index_u32(arg_2, 12u)]), select(vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(arg_2, 12u)]), vec4<bool>(global1[_wgslsmith_index_u32(1070u, 12u)], global1[_wgslsmith_index_u32(826u, 12u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), global1[_wgslsmith_index_u32(var_0.x, 12u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], true, true, true)), !vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 12u)], true, true), !(!vec4<bool>(global1[_wgslsmith_index_u32(50645u, 12u)], true, global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(var_0.x, 12u)]))), true), vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(var_0.x, 12u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(func_1(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)], false), 0i, vec3<f32>(-763f, 1000f, -1226f))), 12u)], true), !select(vec4<bool>(true, true, true, true), !vec4<bool>(global1[_wgslsmith_index_u32(26831u, 12u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], vec4<u32>(31648u, 4294967295u, 19495u, 23280u)), 12u)]), vec4<bool>(any(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], false)), true, true, true)));
    global2 = array<vec3<i32>, 2>();
    let var_1 = _wgslsmith_f_op_f32(ceil(1f));
    let var_2 = select(select(vec4<bool>(true, true && any(vec3<bool>(var_0, global1[_wgslsmith_index_u32(4363u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)])), (u_input.a.x >= 0u) & all(vec3<bool>(var_0, false, global1[_wgslsmith_index_u32(u_input.a.x, 12u)])), all(func_3(1i, vec2<f32>(var_1, 2294f), u_input.a.x))), func_3(abs(-2147483647i), vec2<f32>(_wgslsmith_f_op_f32(select(-532f, var_1, true)), _wgslsmith_f_op_f32(trunc(var_1))), 2724u), select(!select(vec4<bool>(true, true, var_0, true), vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec4<bool>(global1[_wgslsmith_index_u32(55668u, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)], true, false)), select(!vec4<bool>(var_0, false, true, false), vec4<bool>(false, true, var_0, var_0), select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], var_0, false, global1[_wgslsmith_index_u32(0u, 12u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], var_0, var_0, true), vec4<bool>(false, var_0, true, false))), all(vec4<bool>(var_0, global1[_wgslsmith_index_u32(18482u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], true)))), select(!(!select(vec4<bool>(true, var_0, false, var_0), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)], var_0, false), vec4<bool>(global1[_wgslsmith_index_u32(10863u, 12u)], var_0, global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)]))), !(!vec4<bool>(var_0, var_0, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(9498u, 12u)])), true), !(!(!vec4<bool>(true, var_0, global1[_wgslsmith_index_u32(3618u, 12u)], true))));
    var var_3 = -25284i;
    let var_4 = Struct_1(vec4<bool>(var_2.x, u_input.a.x >= 0u, func_2().x, ((global1[_wgslsmith_index_u32(u_input.a.x, 12u)] | global1[_wgslsmith_index_u32(1u, 12u)]) | all(vec2<bool>(false, true))) | var_0), (~min(-2147483647i, 1i) ^ min(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-32516i, -9088i, -1066i, 0i), vec4<i32>(0i, -39048i, -49384i, 20149i)))) << (1301u % 32u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 1000f, -1324f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, 582f) + vec3<f32>(1057f, 1100f, -1174f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -817f, var_1) + vec3<f32>(210f, 372f, var_1)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(207f, var_1, -872f)))))));
    global1 = array<bool, 12>();
    var var_5 = countOneBits(var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_mult_vec2_i32(~_wgslsmith_div_vec2_i32(-vec2<i32>(var_4.b, -9960i), firstTrailingBit(vec2<i32>(-96144i, -16132i))), -firstLeadingBit(vec2<i32>(0i, var_4.b)) & select(vec2<i32>(1i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_4.b), vec2<i32>(53529i, var_4.b)), vec2<bool>(true, true))), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, select(-9281i >> (u_input.a.x % 32u), var_4.b, var_4.a.x), var_4.b, -41698i), reverseBits(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(20151i, -1i, 0i, var_4.b), vec4<i32>(var_4.b, var_4.b, var_4.b, var_4.b), vec4<i32>(2147483647i, var_4.b, var_4.b, var_4.b)), abs(vec4<i32>(1i, var_4.b, var_4.b, var_4.b))))), _wgslsmith_mult_u32(1u, 1u));
}

