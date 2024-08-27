struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(10853u, 115454u, 55829u, 1234u), vec4<u32>(0u, 4294967295u, 3773u, 0u), vec4<u32>(0u, 1u, 12804u, 0u), vec4<u32>(23531u, 51716u, 16820u, 22136u), vec4<u32>(66543u, 121371u, 33436u, 0u), vec4<u32>(0u, 17351u, 54380u, 1u), vec4<u32>(0u, 25096u, 11169u, 17426u), vec4<u32>(14357u, 93173u, 28527u, 0u), vec4<u32>(51980u, 1u, 0u, 65631u), vec4<u32>(4294967295u, 22610u, 11479u, 12423u), vec4<u32>(4294967295u, 4294967295u, 57882u, 0u), vec4<u32>(6119u, 1u, 0u, 9364u), vec4<u32>(4294967295u, 27035u, 14440u, 4294967295u), vec4<u32>(1u, 1u, 1u, 28383u), vec4<u32>(7660u, 49692u, 21374u, 25432u), vec4<u32>(10220u, 9700u, 51911u, 8023u), vec4<u32>(4707u, 1u, 18672u, 1u), vec4<u32>(31047u, 32048u, 17256u, 15376u), vec4<u32>(0u, 1u, 1u, 15177u), vec4<u32>(20365u, 47973u, 0u, 45839u), vec4<u32>(34245u, 35459u, 58481u, 30993u), vec4<u32>(18935u, 26263u, 4294967295u, 1u));

var<private> global2: array<Struct_3, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = arg_0.b.d;
    var var_1 = Struct_5(~firstLeadingBit(4294967295u) ^ ~(~(~arg_0.a)), Struct_4(Struct_3(arg_0.b.b, arg_0.b, -2147483647i), arg_0.b));
    global2 = array<Struct_3, 3>();
    var var_2 = 786f;
    global0 = vec3<bool>(!(global0.x | global0.x), !all(!vec3<bool>(global0.x, true, true)), true);
    return 2706i & u_input.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> Struct_5 {
    let var_0 = 4294967295u;
    let var_1 = false;
    let var_2 = -func_3(global2[_wgslsmith_index_u32(abs(var_0), 3u)]);
    var var_3 = arg_0.x;
    let var_4 = -2147483647i;
    return Struct_5(var_0, Struct_4(global2[_wgslsmith_index_u32(var_0, 3u)], Struct_1(vec2<i32>(-1i) * -vec2<i32>(u_input.a, 32520i), var_0, ~4456u, _wgslsmith_f_op_f32(floor(-424f)))));
}

fn func_4(arg_0: bool, arg_1: Struct_5) -> vec2<f32> {
    let var_0 = firstLeadingBit(global1[_wgslsmith_index_u32(firstLeadingBit(reverseBits(~(~36682u))), 22u)]);
    global2 = array<Struct_3, 3>();
    global2 = array<Struct_3, 3>();
    let var_1 = ~(~vec3<u32>(arg_1.a, 0u, select(arg_1.b.a.a, _wgslsmith_clamp_u32(arg_1.a, 53304u, var_0.x), global0.x)));
    global2 = array<Struct_3, 3>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(-609f, -199f));
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    global1 = array<vec4<u32>, 22>();
    let var_0 = global1[_wgslsmith_index_u32(~(select(1u, 4294967295u >> (1u % 32u), arg_1) << (4294967295u % 32u)) | (_wgslsmith_mod_u32(~9077u, _wgslsmith_div_u32(113251u, 48593u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 43869u, 3429u, 30220u), global1[_wgslsmith_index_u32(2138u, 22u)]) % 32u)) << (7532u % 32u)), 22u)];
    var var_1 = ~_wgslsmith_sub_vec3_u32(var_0.zzz, vec3<u32>(var_0.x << (firstLeadingBit(var_0.x) % 32u), ~(var_0.x | 30708u), ~77781u));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_4(true, func_2(!vec2<bool>(arg_1, false), _wgslsmith_f_op_f32(1094f - 1000f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-586f, 340f), vec2<f32>(769f, -689f), arg_1)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(236f, 842f), vec2<f32>(1052f, -189f))))))));
    let var_3 = func_3(Struct_3(_wgslsmith_add_u32(select(var_1.x, countOneBits(var_0.x), true), ~var_0.x), func_2(global0.yx, _wgslsmith_f_op_f32(1397f * _wgslsmith_f_op_f32(select(var_2.x, -1000f, true)))).b.a.b, -31730i));
    return func_2(vec2<bool>(any(!select(vec4<bool>(false, false, false, arg_0), vec4<bool>(global0.x, global0.x, true, false), global0.x)), any(!(!vec2<bool>(true, global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_2.x)), var_2.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) * -136f) - -1001f))).b.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 22>();
    global1 = array<vec4<u32>, 22>();
    global1 = array<vec4<u32>, 22>();
    global2 = array<Struct_3, 3>();
    var var_0 = func_1(false, !(!(true | global0.x)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * func_1(global0.x, global0.x).d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -737f) * 336f)) - _wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d, 1000f) - _wgslsmith_f_op_f32(-var_0.d)))));
    global0 = select(vec3<bool>(select(true, all(select(vec2<bool>(false, global0.x), global0.zy, vec2<bool>(global0.x, global0.x))), all(select(global0.yy, vec2<bool>(true, false), vec2<bool>(false, global0.x)))), !any(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x))), true), vec3<bool>(true, true, true), !global0.x);
    var var_2 = !select(vec2<bool>(true, true), select(!global0.zz, !select(global0.xy, vec2<bool>(global0.x, global0.x), global0.yz), select(vec2<bool>(global0.x, true), global0.zy, false)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(u_input.a, _wgslsmith_clamp_i32(_wgslsmith_div_i32(2147483647i, -38976i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-7545i, 2147483647i, -17174i, u_input.a), vec4<i32>(var_0.a.x, -34874i, u_input.a, var_0.a.x)), -59222i)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.d)))), var_1.x), func_1(true, true).d, var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0.d))))));
}

