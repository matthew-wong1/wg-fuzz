struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(Struct_3(Struct_1(vec3<bool>(true, false, true)), vec3<i32>(2147483647i, 1i, i32(-2147483648)), Struct_2(vec4<bool>(false, false, false, false), -54292i), 0u), Struct_2(vec4<bool>(true, false, true, false), i32(-2147483648)), true, -1513f), Struct_4(Struct_3(Struct_1(vec3<bool>(false, true, false)), vec3<i32>(2147483647i, 2147483647i, 1i), Struct_2(vec4<bool>(true, true, true, true), 1i), 4294967295u), Struct_2(vec4<bool>(false, true, false, false), -1i), false, 1019f), Struct_4(Struct_3(Struct_1(vec3<bool>(true, true, true)), vec3<i32>(8223i, -1i, -3584i), Struct_2(vec4<bool>(true, false, false, true), 2394i), 55565u), Struct_2(vec4<bool>(true, false, false, true), -5300i), true, 1000f));

var<private> global2: bool;

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global3 = Struct_2(select(vec4<bool>(global3.a.x | !global3.a.x, any(global3.a.zzz), false, all(vec3<bool>(global3.a.x, global3.a.x, true))), !vec4<bool>(any(vec2<bool>(global3.a.x, global3.a.x)), true, global3.a.x, false), !(!(global3.a.x != global3.a.x))), ~u_input.a.x);
    global2 = false;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1053f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + global0.x), -1000f)) * _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global0.x, -1000f)), global0.x)))));
    var var_1 = ~(~1u);
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1686f, 693f, -1297f, -1000f), vec4<f32>(global0.x, global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -2741f, global0.x, global0.x) - vec4<f32>(global0.x, 882f, global0.x, global0.x)), !global3.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.x, global0.x, global0.x) - vec4<f32>(-124f, global0.x, 1192f, global0.x)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, global0.x, -348f, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(800f, global0.x, global0.x, 1958f)))))))));
    return select(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(1u, 18075u), ~1u, 1u) & ~_wgslsmith_clamp_u32(1u, 1u, 1u), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(11561u, 0u), vec2<u32>(39921u, 0u)), 0u)), ~vec2<u32>(1u, 1u)), select(true, select(true, u_input.a.x < _wgslsmith_sub_i32(-8465i, -2147483647i), !(global3.a.x != global3.a.x)), true));
}

fn func_4(arg_0: u32) -> i32 {
    global2 = true;
    let var_0 = vec3<i32>(~(-29614i), -1i, countOneBits(_wgslsmith_dot_vec2_i32(abs(~vec2<i32>(32764i, 31327i)), vec2<i32>(abs(global3.b), ~global3.b))));
    global2 = true;
    let var_1 = Struct_1(global3.a.yzy);
    global3 = Struct_2(vec4<bool>(!(arg_0 < (arg_0 >> (arg_0 % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-851f)) + _wgslsmith_f_op_f32(f32(-1f) * -629f)), all(!vec2<bool>(var_1.a.x, global3.a.x)), any(global3.a.xxw) == global3.a.x), countOneBits(var_0.x) | global3.b);
    return 18551i;
}

fn func_2() -> f32 {
    global3 = Struct_2(vec4<bool>(true, (29872i | _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)) >= func_4(func_3()), any(select(!global3.a, select(vec4<bool>(true, global3.a.x, global3.a.x, true), global3.a, global3.a.x), true)), true), _wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(~u_input.a.x, 11503i)));
    var var_0 = Struct_5(global0.x, vec4<u32>(11446u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 1u, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(74314u, 22141u, 4294967295u), vec3<u32>(67424u, 20376u, 33172u)), true), _wgslsmith_clamp_vec3_u32(vec3<u32>(31943u, 0u, 77863u), vec3<u32>(0u, 4294967295u, 267u), vec3<u32>(43632u, 4294967295u, 41086u)) | vec3<u32>(1u, 1u, 1u)), max(~_wgslsmith_sub_u32(0u, 0u), 4294967295u), _wgslsmith_clamp_u32(~5006u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(39128u, 13859u)), 57709u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global0.x)))))), ~reverseBits(vec4<u32>(1u, 4294967295u, 1u, 4294967295u)), global0.x);
    global3 = Struct_2(vec4<bool>(all(global3.a) || true, !any(select(global3.a.zyw, vec3<bool>(global3.a.x, global3.a.x, global3.a.x), vec3<bool>(true, global3.a.x, false))), all(select(!global3.a, global3.a, true)), true), 30317i | _wgslsmith_mod_i32(u_input.a.x, u_input.a.x));
    return -1200f;
}

fn func_1(arg_0: u32) -> vec4<bool> {
    global2 = true & global3.a.x;
    var var_0 = !global3.a.zz;
    global1 = array<Struct_4, 3>();
    let var_1 = u_input.a.x;
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, -524f, -1000f, -820f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(851f, global0.x, -1506f, global0.x)) - vec4<f32>(global0.x, global0.x, global0.x, -1146f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(global0.x + global0.x), -1000f), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), 1f, _wgslsmith_f_op_f32(exp2(global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(663f, -311f, -472f, global0.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, -1000f, -752f), vec4<f32>(-692f, 979f, global0.x, -777f), vec4<bool>(var_0.x, global3.a.x, global3.a.x, var_0.x))))), select(global3.a, global3.a, any(global3.a.wz)))));
    return vec4<bool>(!all(global3.a), true, var_0.x, (!(-818f == global0.x) && all(select(global3.a.zw, global3.a.yz, true))) & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(315f * global0.x) * _wgslsmith_f_op_f32(min(global0.x, 499f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(185f, -413f, global0.x, 740f) - vec4<f32>(global0.x, global0.x, global0.x, -213f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-602f, global0.x, 1047f, global0.x) * vec4<f32>(-1253f, 1015f, -881f, global0.x)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -174f, global0.x, global0.x) + vec4<f32>(global0.x, global0.x, -829f, global0.x)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 683f, global0.x, 445f) - vec4<f32>(global0.x, global0.x, global0.x, global0.x)))))), !select(func_1(0u), vec4<bool>(true, global3.a.x, global3.a.x, false), global3.a.x))));
    var var_0 = u_input.a;
    var var_1 = vec3<bool>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(1i, -6850i, -10273i, global3.b), reverseBits(vec4<i32>(-14568i, u_input.a.x, -2147483647i, 2147483647i))), ~abs(vec4<i32>(-28224i, -2147483647i, var_0.x, var_0.x))) != (-7419i ^ (_wgslsmith_clamp_i32(0i, global3.b, 4745i) ^ 16307i)), any(select(select(vec3<bool>(false, true, false), global3.a.yxy, vec3<bool>(false, global3.a.x, global3.a.x)), select(vec3<bool>(global3.a.x, false, global3.a.x), !global3.a.wxx, vec3<bool>(true, global3.a.x, global3.a.x)), vec3<bool>(global3.a.x, true, true))), true);
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, -277f, global0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -652f), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1296f), _wgslsmith_f_op_f32(trunc(723f))) - vec4<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(select(1245f, global0.x, false)), 1081f, _wgslsmith_f_op_f32(-global0.x))), global3.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(397f, -601f, global0.x, 249f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1704f, -198f, global0.x, global0.x), vec4<f32>(global0.x, -1345f, global0.x, -1000f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-610f, global0.x, -855f, -1448f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(168f, 754f, -138f, -2454f)))))), !select(global3.a, global3.a, global3.a)));
    global1 = array<Struct_4, 3>();
    global1 = array<Struct_4, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 630f, -1464f);
}

