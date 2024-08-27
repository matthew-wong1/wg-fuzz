struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: bool,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(65477u), Struct_1(1u), Struct_1(14753u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(77251u), Struct_1(48834u), Struct_1(7492u), Struct_1(0u), Struct_1(4294967295u), Struct_1(0u), Struct_1(16400u), Struct_1(30209u), Struct_1(8023u), Struct_1(22335u), Struct_1(4294967295u), Struct_1(34122u), Struct_1(1u), Struct_1(42357u), Struct_1(1u), Struct_1(4294967295u), Struct_1(64841u));

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(30927u), Struct_1(0u)), Struct_2(Struct_1(4294967295u), Struct_1(90430u)), Struct_2(Struct_1(52592u), Struct_1(0u)), Struct_2(Struct_1(0u), Struct_1(47328u)), Struct_2(Struct_1(3894u), Struct_1(58757u)), Struct_2(Struct_1(25449u), Struct_1(18015u)), Struct_2(Struct_1(42734u), Struct_1(0u)), Struct_2(Struct_1(78223u), Struct_1(6395u)), Struct_2(Struct_1(1u), Struct_1(22682u)), Struct_2(Struct_1(1073u), Struct_1(27056u)), Struct_2(Struct_1(12087u), Struct_1(0u)), Struct_2(Struct_1(4294967295u), Struct_1(4294967295u)), Struct_2(Struct_1(1u), Struct_1(56562u)), Struct_2(Struct_1(1u), Struct_1(0u)), Struct_2(Struct_1(4294967295u), Struct_1(84318u)), Struct_2(Struct_1(58780u), Struct_1(63854u)), Struct_2(Struct_1(0u), Struct_1(0u)), Struct_2(Struct_1(1u), Struct_1(4294967295u)), Struct_2(Struct_1(4294967295u), Struct_1(1u)), Struct_2(Struct_1(4294967295u), Struct_1(48507u)), Struct_2(Struct_1(60979u), Struct_1(1u)), Struct_2(Struct_1(0u), Struct_1(64927u)), Struct_2(Struct_1(36911u), Struct_1(1u)), Struct_2(Struct_1(37597u), Struct_1(1u)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0);
    let var_1 = arg_0;
    var var_2 = var_1;
    var_0 = -392f;
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -u_input.a, u_input.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, 1071f) * _wgslsmith_f_op_f32(-var_1)));
}

fn func_1(arg_0: vec4<f32>) -> StorageBuffer {
    global1 = array<Struct_1, 22>();
    let var_0 = abs(vec3<i32>(_wgslsmith_sub_i32(countOneBits(u_input.b.x), u_input.d.x), u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(~(-2147483647i), u_input.b.x & -1i), 4977i >> (u_input.e.x % 32u))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -881f)), arg_0.ww)), vec4<bool>((~u_input.e.x != (u_input.c ^ 1u)) || !all(vec2<bool>(true, false)), any(vec2<bool>(false, true)) | true, true, true), any(!vec4<bool>(409f == arg_0.x, any(vec4<bool>(true, true, true, false)), false, true)), select(!vec2<bool>(true, any(vec2<bool>(false, true))), vec2<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true)), true), vec2<bool>(!(arg_0.x <= arg_0.x), true)), -227f);
    global1 = array<Struct_1, 22>();
    var var_2 = _wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(var_1.e, _wgslsmith_f_op_f32(f32(-1f) * -248f))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(trunc(1585f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.e - arg_0.x), var_1.e), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.x, 584f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.yzz) - vec3<f32>(892f, 1126f, arg_0.x))))), 1063f, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -12674i;
    global2 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(425f, -1451f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(892f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -982f))), -563f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(171f, 939f, 344f, 314f))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(992f, 141f, 213f, 439f), vec4<f32>(-1000f, -1000f, 1282f, 792f)))))));
}

