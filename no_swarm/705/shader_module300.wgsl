struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 247u, 58724u, 1u), vec4<u32>(4185u, 28843u, 70127u, 4281u), vec4<u32>(6543u, 0u, 0u, 0u), vec4<u32>(1u, 29399u, 4294967295u, 2898u), vec4<u32>(4294967295u, 26074u, 1u, 50783u), vec4<u32>(4882u, 25069u, 1u, 1139u), vec4<u32>(4294967295u, 58537u, 12161u, 0u), vec4<u32>(15016u, 0u, 26356u, 7374u), vec4<u32>(0u, 39592u, 6888u, 3303u), vec4<u32>(30522u, 0u, 1u, 80128u), vec4<u32>(4294967295u, 43451u, 1u, 5574u), vec4<u32>(46487u, 32579u, 4294967295u, 30296u), vec4<u32>(4294967295u, 60222u, 38402u, 47231u), vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 38655u, 70626u, 4210u), vec4<u32>(4294967295u, 31987u, 0u, 4294967295u));

var<private> global1: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(11828i, -77286i, 0i), vec3<i32>(-54240i, -6187i, 0i), vec3<i32>(-48037i, 2147483647i, -24983i), vec3<i32>(33810i, 17023i, 57029i), vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(33556i, 16157i, -57545i), vec3<i32>(-2064i, -21417i, 1i), vec3<i32>(-50277i, 41487i, 1i), vec3<i32>(1i, 5385i, 13787i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(0i, 37828i, -43601i), vec3<i32>(0i, i32(-2147483648), 2147483647i));

var<private> global2: array<i32, 24> = array<i32, 24>(54223i, 44262i, i32(-2147483648), i32(-2147483648), -22517i, 2218i, 36663i, -32226i, 2147483647i, 2153i, -1i, 28617i, -19699i, 28100i, -30025i, 40635i, -1i, 0i, -1i, 4365i, -1i, -26930i, 0i, 36879i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = true;
    let var_1 = ~_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 72618u), u_input.b.zxx), vec3<u32>(4294967295u, u_input.b.x, 27206u)), _wgslsmith_dot_vec2_u32(~u_input.b.zw, ~vec2<u32>(1u, 0u))), u_input.b.x);
    let var_2 = vec4<i32>(u_input.a, select(18377i, abs(~(-1i >> (u_input.b.x % 32u))), arg_1), 0i, 0i);
    var var_3 = firstLeadingBit(16004i);
    var var_4 = -firstTrailingBit(~var_2);
    return vec4<bool>(arg_3.a, !all(select(vec2<bool>(true, arg_1), !vec2<bool>(true, arg_3.a), any(vec2<bool>(arg_1, arg_3.a)))), !(-1i == ~firstTrailingBit(2147483647i)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + -173f)) != 322f));
}

fn func_2() -> Struct_1 {
    var var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), _wgslsmith_div_u32(u_input.b.x, 1u) <= u_input.b.x, all(vec3<bool>(true, false, true))), true);
    global0 = array<vec4<u32>, 17>();
    global0 = array<vec4<u32>, 17>();
    let var_1 = ~u_input.b.x;
    global1 = array<vec3<i32>, 12>();
    return Struct_1(false, 585f);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> u32 {
    var var_0 = u_input.b.x;
    var var_1 = func_2();
    let var_2 = vec4<i32>(~arg_1.x, 0i, -1i, u_input.a) >> (~abs(~u_input.b) % vec4<u32>(32u));
    let var_3 = func_2();
    var var_4 = !(u_input.a != _wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(var_2.x, ~(-59034i), -1i)));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 24>();
    global2 = array<i32, 24>();
    global2 = array<i32, 24>();
    let var_0 = Struct_1(all(select(!func_1(global2[_wgslsmith_index_u32(6978u, 24u)], true, vec3<f32>(-1214f, -959f, 1601f), Struct_1(false, 932f)), vec4<bool>(true, true, func_1(u_input.a, true, vec3<f32>(-328f, 1049f, 1000f), Struct_1(false, 354f)).x, false), vec4<bool>(true, any(vec2<bool>(false, true)), func_1(28873i, true, vec3<f32>(674f, 1825f, 268f), Struct_1(true, 1033f)).x, any(vec2<bool>(true, true))))), -701f);
    let var_1 = func_2();
    let var_2 = _wgslsmith_div_u32(u_input.b.x, 1u);
    var var_3 = true;
    var var_4 = _wgslsmith_mod_vec2_u32(u_input.b.yz, vec2<u32>(4294967295u, func_3(Struct_1(true, var_1.b), ~_wgslsmith_div_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(46756u, 24u)], 1i, -39924i), vec3<i32>(global2[_wgslsmith_index_u32(var_2, 24u)], global2[_wgslsmith_index_u32(32687u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)])))));
    var_4 = u_input.b.zw;
    let x = u_input.a;
    s_output = StorageBuffer(954f, ~(~(vec2<u32>(1u, 1u) & _wgslsmith_clamp_vec2_u32(vec2<u32>(var_4.x, 0u), u_input.b.xy, u_input.b.wz))), u_input.b.x, firstTrailingBit(~(~u_input.b.x)));
}

