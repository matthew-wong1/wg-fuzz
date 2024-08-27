struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: array<vec2<bool>, 16>;

var<private> global2: array<Struct_4, 30>;

var<private> global3: array<i32, 24>;

var<private> global4: array<vec3<f32>, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<f32> {
    global4 = array<vec3<f32>, 28>();
    global1 = array<vec2<bool>, 16>();
    var var_0 = arg_2.a;
    global1 = array<vec2<bool>, 16>();
    let var_1 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1306f, 622f) * vec2<f32>(131f, -1526f)) - vec2<f32>(1594f, -377f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-862f, 403f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(707f, 167f))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-330f, _wgslsmith_f_op_f32(step(883f, -399f))), vec2<f32>(_wgslsmith_div_f32(1013f, 819f), _wgslsmith_f_op_f32(859f * 197f)), global1[_wgslsmith_index_u32(~1u, 16u)]))), Struct_1(arg_2.a, vec2<i32>(-34291i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 1i, 4198i), u_input.a.yxy) << (57862u % 32u))), Struct_1(select(!vec4<bool>(false, var_0.x, arg_2.a.x, false), select(!vec4<bool>(var_0.x, var_0.x, var_0.x, global0.x), select(arg_2.a, arg_2.a, vec4<bool>(true, global0.x, var_0.x, true)), arg_2.b.x >= 32927i), all(!global1[_wgslsmith_index_u32(44141u, 16u)])), vec2<i32>(arg_0.x, select(arg_1, arg_2.b.x, true))), vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(101i, 5600i), vec2<i32>(global3[_wgslsmith_index_u32(arg_3.x, 24u)], arg_2.b.x)), i32(-1i) * -24829i, -119i) ^ u_input.a.zyy);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x), var_1.a))), _wgslsmith_f_op_vec2_f32(sign(var_1.a)));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> vec2<u32> {
    var var_0 = 1000f;
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(u_input.a.yz, 0i, Struct_1(vec4<bool>(true, false, global0.x, false), vec2<i32>(-58060i, arg_2)), abs(vec3<u32>(u_input.b, 1u, 25022u)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(256f, 1213f)) + vec2<f32>(2142f, 1113f)))));
    let var_3 = Struct_3(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 0i, global3[_wgslsmith_index_u32(0u, 24u)] & arg_2), u_input.a.yyz));
    global3 = array<i32, 24>();
    return _wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(select(vec2<u32>(13502u, 0u), reverseBits(vec2<u32>(31570u, u_input.b)), arg_1 | arg_1), vec2<u32>(4294967295u, 4294967295u) << (vec2<u32>(var_1, 1228u) % vec2<u32>(32u))), vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(4294967295u, ~var_1)), var_1));
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    global4 = array<vec3<f32>, 28>();
    global2 = array<Struct_4, 30>();
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 4294967295u), _wgslsmith_mod_vec2_u32(min(_wgslsmith_add_vec2_u32(vec2<u32>(33509u, u_input.b), vec2<u32>(u_input.b, u_input.b)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, 0u), vec2<u32>(20136u, 4294967295u))) | firstTrailingBit(func_2(Struct_3(u_input.a.wyy), global0.x, -1i)), _wgslsmith_add_vec2_u32(select(~vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, u_input.b), false), reverseBits(vec2<u32>(u_input.b, 16938u)) | vec2<u32>(u_input.b, u_input.b))));
    var var_1 = true;
    var var_2 = !all(!select(vec3<bool>(true, true, global0.x), vec3<bool>(false, true, false), arg_0 > -1000f));
    return Struct_1(vec4<bool>(global0.x, all(vec4<bool>(any(vec3<bool>(true, true, false)), true, true, all(global1[_wgslsmith_index_u32(u_input.b, 16u)]))), true, false), vec2<i32>(~(~(-2147483647i)), arg_1));
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = select(arg_0.a, vec4<bool>(!(!global0.x | true), any(!(!global1[_wgslsmith_index_u32(1u, 16u)])), false, !arg_0.a.x), true);
    global3 = array<i32, 24>();
    return select(select(select(!var_0.zxy, var_0.wwy, global0.x), func_1(_wgslsmith_f_op_f32(abs(-400f)), -36469i).a.wxw, _wgslsmith_sub_i32(u_input.a.x, firstTrailingBit(35359i)) > u_input.a.x), vec3<bool>(~(4294967295u >> (1u % 32u)) < min(u_input.b, ~37639u), true, false), select(select(var_0.yzy, !(!vec3<bool>(false, global0.x, false)), select(vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(var_0.x, arg_0.a.x, var_0.x), true)), arg_0.a.zzx, _wgslsmith_f_op_f32(-1926f - _wgslsmith_f_op_f32(trunc(-888f))) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-398f + 1702f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 24>();
    global0 = func_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2105f, 1217f)), _wgslsmith_f_op_f32(f32(-1f) * -423f))), -(~1i)));
    var var_0 = Struct_5((vec3<u32>(4294967295u | u_input.b, 22577u, 0u) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 1u)), vec3<u32>(70459u, 5041u, 13719u)) % vec3<u32>(32u))) | reverseBits(vec3<u32>(~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 0u, 0u), vec4<u32>(32276u, 4294967295u, 0u, 67688u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 40958u), vec2<u32>(u_input.b, u_input.b)))), abs(1u), false, !((true | global0.x) == false));
    var var_1 = -1107f;
    let var_2 = select(var_0.a.zz, _wgslsmith_clamp_vec2_u32(~var_0.a.xy, reverseBits(vec2<u32>(~53837u, 4294967295u)), select(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), var_0.a.yy), ~var_0.a.xx, vec2<bool>(true, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f) + _wgslsmith_f_op_f32(min(527f, -324f))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -371f))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

