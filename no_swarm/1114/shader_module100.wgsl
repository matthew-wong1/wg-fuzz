struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    var var_0 = select(vec2<bool>(true, (12801u | _wgslsmith_add_u32(u_input.b.x, 49254u)) < ~u_input.a), select(vec2<bool>(true, true), !vec2<bool>(4294967295u <= arg_0.x, true), _wgslsmith_dot_vec3_i32(max(vec3<i32>(-35197i, -2147483647i, 0i), vec3<i32>(-2147483647i, -2147483647i, 2147483647i)), reverseBits(vec3<i32>(1i, -1i, -2147483647i))) > reverseBits(reverseBits(0i))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !any(vec3<bool>(false, false, true)))));
    var var_1 = select(vec3<bool>(true, true, true), !vec3<bool>(false, select(!var_0.x, true, !var_0.x), var_0.x), vec3<bool>(any(vec4<bool>(true, any(vec3<bool>(true, true, var_0.x)), any(vec3<bool>(var_0.x, false, var_0.x)), select(true, true, false))), true, any(!select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true), var_0.x))));
    var_0 = vec2<bool>(any(vec2<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(var_1.x, var_1.x, true, var_0.x)))), all(select(select(select(vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, var_0.x, var_0.x), false), select(vec3<bool>(true, true, false), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, var_0.x, false)), vec3<bool>(false, false, var_0.x)), !select(vec3<bool>(var_0.x, var_1.x, false), vec3<bool>(var_0.x, var_1.x, var_0.x), true), select(select(vec3<bool>(var_0.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_0.x), vec3<bool>(false, false, var_0.x)), !vec3<bool>(false, var_1.x, var_1.x), arg_0.x != 26873u))));
    var var_2 = min(~12116u, arg_0.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -151f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1317f)) * _wgslsmith_f_op_f32(abs(1133f)))), _wgslsmith_f_op_f32(trunc(1f)))), abs(countOneBits(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-18495i, 2854i), vec2<i32>(0i, 1i))))));
    return 38852i;
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -272f))) + _wgslsmith_div_f32(-1456f, _wgslsmith_f_op_f32(-690f - -549f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(561f)) + -1367f))), -7997i ^ firstLeadingBit(func_3(abs(u_input.b.zz))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a - var_0.a))), -25242i);
    let var_2 = arg_0;
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.a)), var_0.a)) * _wgslsmith_f_op_f32(select(var_1.a, var_0.a, u_input.a > u_input.b.x)))), var_0.a, 1000f);
    let var_4 = !vec3<bool>(var_2, true, false);
    return 22543i;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = (select(~_wgslsmith_mult_vec4_u32(vec4<u32>(41579u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.a, u_input.b.x, u_input.a, u_input.a)), vec4<u32>(u_input.b.x, 4294967295u, 32667u, 115081u) << (countOneBits(vec4<u32>(6076u, u_input.a, u_input.a, u_input.b.x)) % vec4<u32>(32u)), any(vec2<bool>(true, true))) >> (~(abs(vec4<u32>(4294967295u, u_input.a, u_input.a, 35032u)) << (~vec4<u32>(u_input.b.x, u_input.a, u_input.a, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))) | ~vec4<u32>(u_input.a, 1086u, ~0u >> (u_input.b.x % 32u), ~reverseBits(u_input.b.x));
    let var_1 = vec2<u32>(63566u, ~_wgslsmith_dot_vec2_u32(u_input.b.zy, ~vec2<u32>(64070u, 86654u)));
    var var_2 = vec2<i32>(i32(-1i) * -2147483647i, countOneBits(arg_0.b & arg_0.b));
    var_2 = vec2<i32>(~(-(~1i)), arg_0.b);
    global0 = array<vec4<i32>, 27>();
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1000f)))), 0i);
}

fn func_1() -> bool {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1462f, -807f)) + _wgslsmith_f_op_f32(-1000f - 145f)))), ~_wgslsmith_clamp_i32(func_2(false), countOneBits(-2147483647i), 1i)));
    var var_1 = !(!select(vec2<bool>(any(vec2<bool>(true, true)), true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), true));
    global0 = array<vec4<i32>, 27>();
    global0 = array<vec4<i32>, 27>();
    global0 = array<vec4<i32>, 27>();
    return var_1.x && any(!select(vec3<bool>(true, true, true), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, var_1.x, var_1.x), var_1.x), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!any(vec2<bool>(true, true)), func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-551f - -555f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-374f * -1189f), _wgslsmith_f_op_f32(1263f * 1744f)))) >= 322f);
    let var_1 = Struct_1(1f, 50730i);
    global0 = array<vec4<i32>, 27>();
    var var_2 = Struct_1(-314f, _wgslsmith_clamp_i32(2147483647i, reverseBits(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(reverseBits(0u), 27u)], vec4<i32>(var_1.b, 0i, 10842i, 21258i))), _wgslsmith_add_i32(-1i, var_1.b)));
    var var_3 = select(all(!var_0), !any(var_0.xz), !select(true, (1u <= u_input.b.x) & true, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xx);
}

