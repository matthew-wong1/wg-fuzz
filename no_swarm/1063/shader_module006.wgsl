struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>) -> vec2<bool> {
    global1 = reverseBits(vec2<u32>(_wgslsmith_sub_u32(20241u, u_input.a.x), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_1.x, arg_1.x), 31086u, 0u & arg_0.x))) >> (_wgslsmith_div_vec2_u32(u_input.a.zz, vec2<u32>(~(u_input.a.x >> (global1.x % 32u)), 32162u)) % vec2<u32>(32u));
    global1 = u_input.a.xz;
    let var_0 = Struct_1(select(!vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(any(vec4<bool>(false, true, true, true)), select(true, any(vec4<bool>(true, false, true, true)), true)), vec2<bool>(true, _wgslsmith_dot_vec4_u32(vec4<u32>(28629u, 112483u, 4294967295u, 43978u), vec4<u32>(16192u, 814u, global1.x, 16612u)) < u_input.a.x)), select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true))), all(vec3<bool>(false, false, true))), false), _wgslsmith_div_i32(reverseBits(min(1i, _wgslsmith_div_i32(1i, -1i))), (_wgslsmith_div_i32(-16875i, 20470i) ^ firstTrailingBit(2147483647i)) << (firstTrailingBit(global1.x) % 32u)), !select(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), true), vec2<bool>(true, true)));
    global1 = select(~(~vec2<u32>(16822u, arg_0.x)), firstTrailingBit(~arg_0 ^ vec2<u32>(29925u, 32949u)), !var_0.a) & select(~(~vec2<u32>(36887u, arg_1.x)), ~vec2<u32>(_wgslsmith_div_u32(0u, 4294967295u), _wgslsmith_mult_u32(arg_1.x, 4294967295u)), true);
    global0 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.c, var_0.c, ~43215i, min(var_0.c, -40737i))), vec4<i32>(_wgslsmith_mult_i32(~(-92179i), min(-2147483647i, var_0.c)), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.c, -2147483647i), vec2<i32>(1i, 1i)), 13238i ^ var_0.c, var_0.c & -var_0.c)), _wgslsmith_mod_i32(var_0.c, -(~var_0.c) | ~(~var_0.c)));
    return select(!var_0.a, select(select(!vec2<bool>(var_0.b.x, var_0.d.x), vec2<bool>(var_0.b.x, arg_1.x > 4294967295u), var_0.a.x), !vec2<bool>(false || var_0.b.x, any(var_0.b)), select(!vec2<bool>(var_0.b.x, var_0.b.x), !select(vec2<bool>(var_0.d.x, var_0.a.x), var_0.a, var_0.b.x), vec2<bool>(!var_0.d.x, true))), var_0.a.x);
}

fn func_2(arg_0: i32) -> f32 {
    global0 = -(~(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 4134i, 12589i, arg_0), vec4<i32>(arg_0, 19568i, -1i, 2354i)) << (0u % 32u))) ^ arg_0;
    var var_0 = Struct_1(select(vec2<bool>(any(vec3<bool>(true, true, true)) || true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), true))), vec2<bool>(true, true), !any(vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true), arg_0, vec2<bool>(any(vec3<bool>(false, true, false)) | true, true));
    var var_1 = Struct_1(!func_3(~(~u_input.a.zx), vec4<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x), global1.x, _wgslsmith_sub_u32(1u, u_input.a.x))), select(select(vec4<bool>(var_0.b.x, !var_0.a.x, any(vec2<bool>(var_0.d.x, false)), true), var_0.b, false), !(!select(var_0.b, var_0.b, false)), all(select(vec3<bool>(false, var_0.d.x, var_0.b.x), var_0.b.zxy, !var_0.d.x))), arg_0, !(!vec2<bool>(false == var_0.d.x, true)));
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>((u_input.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.a.x), vec3<u32>(4294967295u, global1.x, global1.x)) % 32u)) ^ 1u, ~firstTrailingBit(~1u), global1.x), ~vec3<u32>(reverseBits(~u_input.a.x), 0u, global1.x));
    let var_3 = vec2<u32>(0u, _wgslsmith_mult_u32(global1.x, _wgslsmith_mult_u32(var_2, 17956u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-173f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1911f + 1129f))))));
}

fn func_1() -> StorageBuffer {
    global0 = _wgslsmith_add_i32(-(~(~(-1i))), _wgslsmith_div_i32(1i, firstTrailingBit(~(-1i))));
    let var_0 = Struct_1(vec2<bool>(_wgslsmith_f_op_f32(round(-1437f)) == _wgslsmith_f_op_f32(func_2(1i)), false | (any(vec4<bool>(true, true, true, false)) & true)), !(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)))), min(1i, 49366i), vec2<bool>(select(true, true, any(vec2<bool>(true, true))) & false, select(true, all(vec3<bool>(false, true, true)) & false, true)));
    let var_1 = var_0.c;
    var var_2 = abs(vec3<i32>(-firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, 53445i), vec2<i32>(34018i, var_0.c))), var_0.c, var_1));
    var var_3 = select(!var_0.b, select(!var_0.b, select(var_0.b, vec4<bool>(var_0.a.x || false, false, any(var_0.b), var_0.b.x), var_0.b.x), vec4<bool>(true, var_0.d.x, all(select(var_0.b.zyz, vec3<bool>(false, var_0.a.x, false), var_0.b.x)), true)), all(vec3<bool>(true, var_0.a.x, ~9034i <= var_2.x)));
    return StorageBuffer(i32(-1i) * -3743i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1271f)), 306f, true)), _wgslsmith_f_op_f32(f32(-1f) * -883f), u_input.a.x, -countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, var_0.c, var_1), vec3<i32>(var_2.x, var_1, 2147483647i)) >> (global1.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~vec4<u32>(global1.x, firstTrailingBit(global1.x), u_input.a.x, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, 1u)))));
    global0 = 0i;
    let x = u_input.a;
    s_output = func_1();
}

