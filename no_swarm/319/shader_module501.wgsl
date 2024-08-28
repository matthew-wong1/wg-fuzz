struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec4<i32>) -> f32 {
    let var_0 = arg_0;
    var var_1 = arg_1.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.b, 743f, var_1.a.b, var_1.a.b)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1179f, var_0.a.a.b, 1010f, arg_0.a.a.b))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.a.a.b, 329f, arg_1.a.a.b, 1567f), vec4<f32>(arg_1.a.a.b, arg_0.a.a.b, arg_0.a.a.b, -716f))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.a.b, arg_0.a.a.b, -430f, 1000f), vec4<f32>(arg_0.a.a.b, var_1.a.b, arg_0.a.a.b, var_0.a.a.b)))))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1150f)))), _wgslsmith_f_op_f32(-arg_0.a.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1955f))), 489f))));
    let var_3 = arg_0.a.a.b;
    let var_4 = vec4<bool>(true, any(!(!select(vec3<bool>(false, true, true), vec3<bool>(var_0.a.a.c, var_0.a.a.c, false), true))), select(!var_0.a.a.c, !(!var_1.a.c), arg_1.a.a.c), any(select(select(vec4<bool>(arg_0.a.a.c, false, arg_0.a.a.c, false), !vec4<bool>(arg_1.a.a.c, var_1.a.c, false, var_1.a.c), vec4<bool>(var_0.a.a.c, true, false, var_1.a.c)), !vec4<bool>(arg_0.a.a.c, var_0.a.a.c, var_1.a.c, true), select(!vec4<bool>(var_0.a.a.c, false, false, false), vec4<bool>(true, var_0.a.a.c, var_0.a.a.c, true), arg_0.a.a.c))));
    return 680f;
}

fn func_2() -> bool {
    let var_0 = ~(-49939i);
    var var_1 = Struct_3(Struct_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_5(Struct_2(Struct_1(1u, 1005f, true)), -21477i), Struct_5(Struct_2(Struct_1(u_input.b, 245f, false)), u_input.c.x), u_input.a)), -453f)), false || (_wgslsmith_f_op_f32(abs(-1720f)) == _wgslsmith_f_op_f32(step(-241f, -1000f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.b, 113f)));
    let var_3 = Struct_1(~u_input.b, var_1.a.b, (~1u == u_input.b) & select(any(!vec2<bool>(var_1.a.c, var_1.a.c)), true, u_input.a.x > (u_input.c.x << (43799u % 32u))));
    var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(var_3.b - var_1.a.b), false & var_3.c)), -868f))));
    return !var_3.c;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: vec2<f32>) -> vec2<f32> {
    var var_0 = abs(0u);
    let var_1 = select(~_wgslsmith_mult_vec4_u32(vec4<u32>(9934u, 1u, 4294967295u, 4294967295u) ^ vec4<u32>(37892u, arg_1.a.a, 0u, u_input.b), ~vec4<u32>(38733u, arg_1.a.a, 1u, 37047u)) >> (max(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 26939u, arg_1.a.a), vec4<u32>(arg_1.a.a, u_input.b, 4294967295u, 62532u)), vec4<u32>(~arg_1.a.a, 88353u, 39135u, ~arg_1.a.a)) % vec4<u32>(32u)), vec4<u32>(~(~(~0u)), arg_1.a.a, _wgslsmith_mod_u32(u_input.b, ~(~9661u)), u_input.b), select(vec4<bool>(!(arg_2 < arg_2), !arg_1.a.c, true, !(!arg_1.a.c)), vec4<bool>(!(arg_1.a.c & arg_1.a.c), arg_1.a.c, true, arg_1.a.c), vec4<bool>(true, any(select(vec3<bool>(arg_1.a.c, arg_1.a.c, arg_1.a.c), vec3<bool>(false, arg_1.a.c, false), vec3<bool>(true, arg_1.a.c, true))), false, func_2())));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), 599f)));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(546f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -787f)))), -863f);
    var var_3 = false && any(select(!(!vec2<bool>(arg_1.a.c, arg_1.a.c)), vec2<bool>(true, true), select(vec2<bool>(true, true), !vec2<bool>(arg_1.a.c, arg_1.a.c), !arg_1.a.c)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, arg_3.x) - arg_3), arg_3, vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(arg_3, arg_3), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-466f, arg_1.a.b), vec2<f32>(-904f, arg_1.a.b))), arg_3, select(vec2<bool>(arg_1.a.c, false), vec2<bool>(false, false), vec2<bool>(arg_1.a.c, arg_1.a.c)))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), !vec2<bool>(arg_1.a.c, false), select(vec2<bool>(arg_1.a.c, false), vec2<bool>(arg_1.a.c, arg_1.a.c), vec2<bool>(arg_1.a.c, true))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-745f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1177f, 1155f))))));
    var var_1 = -19893i;
    var_1 = -u_input.c.x;
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(4294967295u, 9082u, u_input.b, u_input.b)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(46587u, u_input.b, u_input.b, 0u), min(vec4<u32>(17960u, u_input.b, 22006u, 4294967295u), vec4<u32>(16661u, u_input.b, 1u, u_input.b))) % vec4<u32>(32u)), vec4<u32>(~(~u_input.b), ~u_input.b, 1u, 64834u)), var_0.x, true);
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(u_input.c.x, Struct_3(Struct_1(0u, var_0.x, false)), u_input.a.x, var_0)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(var_2.b, var_0.x)), _wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0 + vec2<f32>(-340f, var_2.b)))), vec2<bool>(false, false))))));
    var_1 = _wgslsmith_sub_i32(~u_input.c.x, u_input.c.x);
    let var_4 = Struct_2(Struct_1(~(~(~46810u)), var_0.x, var_2.c));
    var_2 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_4.a.b, var_4.a.b, -582f, -1332f))), vec4<f32>(var_2.b, -1000f, var_2.b, 301f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(760f, var_3.x, -1369f, 1078f))))))), u_input.b, vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(-u_input.a.x, -u_input.c.x), reverseBits(2147483647i)), u_input.c.x, u_input.c.x << (1u % 32u)), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(_wgslsmith_add_u32(u_input.b, u_input.b), u_input.b >> (48839u % 32u)), vec2<u32>(abs(23138u), var_4.a.a), select(!vec2<bool>(var_2.c, false), select(vec2<bool>(true, var_2.c), vec2<bool>(var_4.a.c, false), vec2<bool>(true, var_4.a.c)), vec2<bool>(var_4.a.c, var_2.c))), vec2<u32>(_wgslsmith_div_u32(var_4.a.a, var_4.a.a), var_2.a), vec2<u32>(var_4.a.a, var_4.a.a)));
}

