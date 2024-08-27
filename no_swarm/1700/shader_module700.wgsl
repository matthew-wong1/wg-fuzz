struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(-120f, 1629f, 342f), vec3<f32>(-1359f, 911f, 156f), vec3<f32>(-859f, 735f, 1027f), vec3<f32>(538f, -1981f, 279f), vec3<f32>(220f, -850f, -267f), vec3<f32>(-439f, 403f, -477f), vec3<f32>(-671f, -551f, 568f), vec3<f32>(-722f, 1000f, -809f), vec3<f32>(-391f, -882f, -1380f), vec3<f32>(2315f, 502f, 1060f));

var<private> global1: Struct_2 = Struct_2(vec4<bool>(true, true, false, true));

var<private> global2: bool = false;

var<private> global3: array<vec2<f32>, 13>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> u32 {
    global3 = array<vec2<f32>, 13>();
    global0 = array<vec3<f32>, 10>();
    global3 = array<vec2<f32>, 13>();
    let var_0 = Struct_2(global1.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1601f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) * arg_0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(133f, arg_0.x)) + 1000f)), arg_0.x) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))))), -1000f, -1360f, _wgslsmith_f_op_f32(-arg_0.x)));
    return _wgslsmith_add_u32(arg_1, _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(~vec2<u32>(8315u, 1u), u_input.d.yx), vec2<u32>(~0u, ~abs(1u))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> i32 {
    global2 = false;
    let var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d.xyy >> (~u_input.c.zzz % vec3<u32>(32u)), max(~vec3<u32>(31435u, u_input.d.x, 35385u), reverseBits(max(vec3<u32>(u_input.c.x, u_input.b.x, 4294967295u), vec3<u32>(51939u, u_input.d.x, 1u))))), vec3<u32>(_wgslsmith_mult_u32(abs(1u) << (u_input.c.x % 32u), ~u_input.d.x), func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -142f, 564f) + vec3<f32>(1155f, -738f, 1245f)), vec3<f32>(arg_0, arg_0, -933f), global1.a.zzx)), ~62307u), select(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 88739u), u_input.d.xy), ~u_input.b.x ^ u_input.b.x, false)));
    let var_1 = reverseBits(vec2<i32>(~56696i, ~u_input.e.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1215f - -217f), arg_0, -160f, arg_0))));
    let var_3 = ~var_0.x;
    return -1i;
}

fn func_1() -> Struct_1 {
    var var_0 = -_wgslsmith_clamp_i32(-1i, (u_input.a & func_2(-403f, u_input.e.x, Struct_1(true))) | abs(firstLeadingBit(u_input.a)), 2147483647i);
    var var_1 = countOneBits(~_wgslsmith_clamp_vec4_u32(u_input.d, reverseBits(vec4<u32>(39763u, 0u, 4294967295u, u_input.b.x)), u_input.d));
    var var_2 = ~countOneBits(~max(u_input.c, ~vec4<u32>(4294967295u, var_1.x, 30294u, 117086u)));
    var var_3 = all(global1.a);
    var var_4 = !(!global1.a.zwy);
    return Struct_1(var_4.x);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    global1 = arg_3;
    let var_0 = select(arg_3.a.xw, !(!global1.a.ww), !select(arg_3.a.wx, !select(global1.a.yy, vec2<bool>(global1.a.x, true), vec2<bool>(arg_1.a, arg_1.a)), any(!global1.a)));
    var var_1 = u_input.e.x;
    var var_2 = func_1();
    global0 = array<vec3<f32>, 10>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -978f)))) > _wgslsmith_f_op_f32(f32(-1f) * -199f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(1u, func_1(), !(all(select(global1.a.zzw, vec3<bool>(false, global1.a.x, global1.a.x), global1.a.xzz)) | global1.a.x), Struct_2(vec4<bool>(any(!global1.a.zwy), true, (-1i >> (u_input.d.x % 32u)) <= (-94438i ^ u_input.a), false)));
    global2 = any(select(vec2<bool>(var_0.a, any(vec2<bool>(false, var_0.a)) && !var_0.a), vec2<bool>(func_1().a, any(global1.a.yzy)), select(!(!vec2<bool>(true, var_0.a)), vec2<bool>(true != global1.a.x, true), !all(vec4<bool>(var_0.a, var_0.a, false, var_0.a)))));
    var var_1 = _wgslsmith_mult_vec3_u32(u_input.d.zyx, vec3<u32>(u_input.b.x, _wgslsmith_clamp_u32(0u, reverseBits(min(u_input.b.x, 56312u)), u_input.c.x), _wgslsmith_dot_vec4_u32(~select(u_input.c, u_input.d, global1.a), vec4<u32>(u_input.c.x >> (u_input.d.x % 32u), min(u_input.b.x, 1u), select(u_input.b.x, 0u, true), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.d.x, 0u))))));
    var var_2 = select(global1.a.yy, global1.a.wz, !var_0.a);
    var var_3 = _wgslsmith_sub_u32(~(~reverseBits(var_1.x)), countOneBits(var_1.x));
    let var_4 = func_1().a;
    global0 = array<vec3<f32>, 10>();
    var var_5 = Struct_2(select(!select(select(vec4<bool>(var_0.a, var_4, false, var_0.a), vec4<bool>(false, global1.a.x, var_0.a, false), false), select(vec4<bool>(var_2.x, global1.a.x, true, false), global1.a, global1.a), func_4(54169u, Struct_1(var_2.x), var_4, Struct_2(global1.a)).a), select(select(vec4<bool>(false, true, var_0.a, global1.a.x), !global1.a, u_input.a <= u_input.a), vec4<bool>(true, var_4, global1.a.x, false), func_1().a), !global1.a));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.e.zz);
}

