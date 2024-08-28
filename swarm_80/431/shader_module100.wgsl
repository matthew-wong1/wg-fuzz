struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: vec2<f32>;

var<private> global2: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(5097u, 46475u, 13108u), vec3<u32>(9281u, 4294967295u, 0u), vec3<u32>(92307u, 42114u, 23904u), vec3<u32>(17813u, 36309u, 0u), vec3<u32>(98268u, 0u, 4294967295u), vec3<u32>(52991u, 8979u, 51206u), vec3<u32>(140965u, 61630u, 12974u), vec3<u32>(4294967295u, 59362u, 20154u), vec3<u32>(1u, 1u, 66689u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 57334u), vec3<u32>(15421u, 0u, 0u), vec3<u32>(45618u, 48286u, 24254u));

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

var<private> global4: vec2<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: f32) -> u32 {
    let var_0 = vec2<u32>(firstTrailingBit(max(69055u, 0u)) >> (68431u % 32u), u_input.c) ^ vec2<u32>((firstTrailingBit(u_input.c) ^ 24475u) << (_wgslsmith_add_u32(countOneBits(4294967295u), _wgslsmith_sub_u32(4294967295u, 36483u)) % 32u), 1u);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-836f - _wgslsmith_f_op_f32(-arg_2))))), _wgslsmith_f_op_f32(round(arg_2)), 224f);
    return ~(~_wgslsmith_sub_u32(55917u, 1u));
}

fn func_2(arg_0: bool) -> Struct_4 {
    var var_0 = 399f;
    let var_1 = ~u_input.c;
    var var_2 = Struct_3(Struct_1(true, ~(-2149i), vec2<i32>(-u_input.d.x, 26283i) | firstTrailingBit(u_input.d.zx), global1.x, _wgslsmith_div_vec4_u32(~max(vec4<u32>(4294967295u, 0u, 0u, u_input.c), vec4<u32>(var_1, 2462u, var_1, u_input.c)), ~(vec4<u32>(47821u, 38751u, var_1, u_input.c) ^ vec4<u32>(u_input.c, u_input.c, 51681u, 0u)))), _wgslsmith_f_op_f32(-global1.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x)))), _wgslsmith_mult_u32(func_3(global0.xww, select(global3.zx, global3.zy, all(global0.yww)), global1.x), 21543u));
    var var_3 = var_2.a.b;
    var var_4 = vec3<u32>(31325u, firstLeadingBit(_wgslsmith_mult_u32(1u, countOneBits(~1u))), _wgslsmith_dot_vec4_u32(~var_2.a.e, _wgslsmith_sub_vec4_u32(vec4<u32>(var_1, var_2.a.e.x, var_2.c, var_2.a.e.x), var_2.a.e) & ~(~var_2.a.e)));
    return Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-198f + _wgslsmith_f_op_f32(-var_2.a.d)), var_2.a.d, all(select(vec4<bool>(true, true, global3.x, false), vec4<bool>(global3.x, arg_0, false, var_2.b), var_2.b)))))));
}

fn func_4(arg_0: Struct_4) -> vec3<f32> {
    global3 = !(!select(vec3<bool>(false, true, true), global0.xyz, !(!global0.zxz)));
    var var_0 = -28404i;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, global1.x) - vec2<f32>(-1301f, global1.x)), _wgslsmith_div_vec2_f32(vec2<f32>(167f, 1779f), vec2<f32>(-160f, arg_0.a))), vec2<f32>(434f, arg_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(560f, 1148f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) - vec2<f32>(arg_0.a, arg_0.a)))))));
    global4 = vec2<i32>(u_input.d.x, -31465i);
    global3 = !global0.yyx;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1276f, 524f)))));
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_4(global1.x);
    let var_1 = Struct_4(global1.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_div_f32(-211f, 1817f), -2529f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, 1426f))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_4(func_2(global3.x)))))));
    var var_3 = Struct_3(Struct_1(global3.x, firstLeadingBit(~firstTrailingBit(13802i)), abs(u_input.d.yz), var_0.a, _wgslsmith_sub_vec4_u32(vec4<u32>(12974u, u_input.c, u_input.c, ~5210u), vec4<u32>(77045u, u_input.c, 4294967295u, u_input.c) | vec4<u32>(0u, 0u, u_input.c, 1u))), true, 4294967295u);
    var var_4 = Struct_2(global1.x, ~(~reverseBits(u_input.d.zy)), Struct_1(true, global4.x, vec2<i32>(i32(-1i) * -u_input.a, ~global4.x), -1000f, _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.c, 4294967295u, var_3.c, var_3.c) & vec4<u32>(4294967295u, var_3.a.e.x, 1u, 1u), var_3.a.e)), (var_3.a.c >> (var_3.a.e.yx % vec2<u32>(32u))) << (vec2<u32>(45321u, reverseBits(u_input.c)) % vec2<u32>(32u)));
    return global0.xzx;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !func_1();
    let var_0 = -1080f;
    global3 = !(!global0.yzz);
    let var_1 = global0.xw;
    global3 = select(vec3<bool>(!all(!vec4<bool>(global0.x, true, false, var_1.x)), select(global4.x >= u_input.a, global0.x, global4.x > u_input.a) && global3.x, !global0.x), !select(!select(global0.zzy, global0.wyy, vec3<bool>(true, global0.x, global3.x)), select(!vec3<bool>(global3.x, true, var_1.x), vec3<bool>(false, global0.x, var_1.x), global3.x), all(vec4<bool>(var_1.x, false, global3.x, false))), global0.xwz);
    global0 = !(!select(!(!vec4<bool>(global0.x, false, global3.x, false)), !select(vec4<bool>(var_1.x, var_1.x, var_1.x, global0.x), vec4<bool>(false, global3.x, global0.x, false), vec4<bool>(false, var_1.x, false, false)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, var_1.x, global0.x), vec4<bool>(global0.x, false, global0.x, var_1.x)), !vec4<bool>(global3.x, true, true, true), select(vec4<bool>(false, global3.x, global0.x, false), vec4<bool>(true, false, true, global0.x), vec4<bool>(global3.x, true, true, var_1.x)))));
    global0 = !select(!(!vec4<bool>(global3.x, true, true, global3.x)), vec4<bool>(true, !(98316u > u_input.c), 1u >= _wgslsmith_div_u32(u_input.c, u_input.c), func_1().x), firstLeadingBit(global4.x) > abs(-1i));
    global3 = global0.wwx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.x), vec4<i32>(global4.x, 29623i, global4.x, firstLeadingBit(~global4.x)), select(firstTrailingBit(~vec4<u32>(1u, 0u, 4294967295u, 0u)), ~abs(vec4<u32>(u_input.c, 1u, u_input.c, 27400u)), !select(vec4<bool>(var_1.x, global0.x, global3.x, false), vec4<bool>(global0.x, true, true, global0.x), true)) << (vec4<u32>(~(~u_input.c), _wgslsmith_mod_u32(1u, 41676u), 37756u, 1u) % vec4<u32>(32u)), u_input.d.xy);
}

