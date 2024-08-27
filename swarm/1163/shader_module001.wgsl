struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_3, 8>;

var<private> global2: array<u32, 13> = array<u32, 13>(46144u, 0u, 6002u, 57962u, 4294967295u, 13151u, 0u, 83723u, 1u, 10972u, 27357u, 0u, 58624u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> vec3<u32> {
    var var_0 = -max(-vec3<i32>(u_input.b.x, u_input.b.x, 0i) << (countOneBits(~vec3<u32>(90459u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), -select(firstTrailingBit(u_input.b.yww), vec3<i32>(-19565i, u_input.b.x, u_input.b.x), true));
    let var_1 = var_0.x;
    var_0 = u_input.b.zwy;
    let var_2 = 2147483647i;
    let var_3 = global0.xy;
    return select(firstLeadingBit(abs(vec3<u32>(~1u, ~u_input.a.x, max(u_input.a.x, global2[_wgslsmith_index_u32(1u, 13u)])))), abs(vec3<u32>(47161u, ~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 13u)], 13u)] ^ u_input.a.x), ~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(68845u, 13u)], 13u)] >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 13u)] % 32u)))), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec4<bool>(true, false, false, false)))), 13174i > ~u_input.b.x, true));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = select(vec4<bool>(true, true, true, true), !vec4<bool>(true, all(vec3<bool>(false, true, true)), -3057i <= u_input.b.x, any(vec3<bool>(true, false, false)) || false), vec4<bool>(0i <= (abs(u_input.b.x) << ((u_input.a.x >> (29795u % 32u)) % 32u)), true, any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), true)), false));
    let var_1 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, arg_0.x, arg_0.x), arg_0)), arg_0), var_0.zy, Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 13u)] & global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)], _wgslsmith_dot_vec3_u32(arg_0, arg_0)), func_3(_wgslsmith_f_op_f32(max(global0.x, global0.x))), max(arg_0, vec3<u32>(12995u, global2[_wgslsmith_index_u32(6385u, 13u)], 31652u) << (vec3<u32>(4294967295u, arg_0.x, 1u) % vec3<u32>(32u)))), ~select(arg_0, _wgslsmith_mod_vec3_u32(arg_0, vec3<u32>(global2[_wgslsmith_index_u32(0u, 13u)], 19790u, 1u)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.yzy, var_0.wwx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-2362f, global0.x))))))));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-658f, 375f)) * -1059f))));
    global1 = array<Struct_3, 8>();
    global1 = array<Struct_3, 8>();
    return var_1.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> i32 {
    global0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.d.x, arg_0.d.x, true)))), 1205f, global0.x, global0.x)));
    return ~0i ^ ~_wgslsmith_clamp_i32(u_input.b.x, -(u_input.b.x | 46230i), _wgslsmith_sub_i32(-2147483647i, u_input.b.x) >> (~arg_0.c.a.x % 32u));
}

fn func_1() -> f32 {
    var var_0 = Struct_4(~(-_wgslsmith_add_i32(2950i, _wgslsmith_add_i32(-2169i, 7263i))), vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -535f) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(ceil(global0.x))));
    global2 = array<u32, 13>();
    var var_1 = vec3<u32>(reverseBits(u_input.a.x), 1u, 25980u);
    let var_2 = !(~(-u_input.b.x) >= _wgslsmith_mod_i32(8117i, -u_input.b.x)) && true;
    let var_3 = Struct_4(~func_4(Struct_2(func_2(vec3<u32>(0u, 0u, global2[_wgslsmith_index_u32(0u, 13u)])), select(vec2<bool>(false, var_2), vec2<bool>(false, var_2), vec2<bool>(var_2, true)), func_2(vec3<u32>(var_1.x, 0u, 21049u)), vec2<f32>(-193f, 437f)), global1[_wgslsmith_index_u32(firstLeadingBit(~u_input.a.x), 8u)], var_2), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b * global0.xzy) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-642f, var_0.b.x, var_0.b.x), _wgslsmith_f_op_vec3_f32(-var_0.b)))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(485f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-516f - _wgslsmith_f_op_f32(-var_3.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -859f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!all(vec3<bool>(true, true, true)) | true);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.xzy, vec3<f32>(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.x)))), _wgslsmith_f_op_f32(trunc(173f)))));
    let var_2 = u_input.b.x;
    global0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1291f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_1.x, 564f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(-258f + var_1.x), -719f);
    let var_4 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(var_2, -1i, select(-10443i, u_input.b.x, any(vec4<bool>(true, true, false, true)))), vec3<i32>(~countOneBits(u_input.b.x), (1i & u_input.b.x) | _wgslsmith_mod_i32(88535i, u_input.b.x), 13974i));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, _wgslsmith_f_op_f32(ceil(-975f)), -1607f, _wgslsmith_f_op_f32(2441f + _wgslsmith_f_op_f32(sign(var_3.x)))))));
    let var_5 = _wgslsmith_add_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.a.x, 13u)], 13u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 13u)], global2[_wgslsmith_index_u32(u_input.a.x | u_input.a.x, 13u)] & ~50067u), func_3(_wgslsmith_f_op_f32(round(542f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(var_3.zx)));
}

