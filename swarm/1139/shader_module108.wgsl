struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -860f;

var<private> global1: array<Struct_1, 18>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_3) -> vec2<bool> {
    global0 = -1729f;
    let var_0 = vec2<i32>(countOneBits(-u_input.b), _wgslsmith_add_i32(-11500i, _wgslsmith_mult_i32(u_input.b, _wgslsmith_dot_vec4_i32(~vec4<i32>(-586i, 0i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)))));
    var var_1 = -2045f;
    return arg_2.b.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    let var_0 = u_input.b;
    global0 = _wgslsmith_div_f32(arg_0.x, 1995f);
    var var_1 = Struct_4(vec3<bool>(u_input.b != -1i, false, arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -702f)) - _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(ceil(arg_0.x)))), arg_0.x, global1[_wgslsmith_index_u32(4294967295u << (_wgslsmith_mod_u32(_wgslsmith_sub_u32(~13006u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), _wgslsmith_sub_u32(~34366u, _wgslsmith_div_u32(u_input.a.x, 4294967295u))) % 32u), 18u)]);
    var var_2 = ~(~_wgslsmith_sub_vec2_u32(countOneBits(~vec2<u32>(4294967295u, var_1.d.b.x)), ~(vec2<u32>(var_1.d.b.x, 77008u) << (vec2<u32>(0u, 9724u) % vec2<u32>(32u)))));
    let var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d.a) * var_1.d.a), var_1.d.b, func_3(!vec2<bool>(arg_1.x, false), Struct_4(vec3<bool>(arg_2, true, true), var_1.b, 1589f, Struct_1(vec4<f32>(var_1.b, 1165f, -858f, arg_0.x), var_1.d.b, var_1.a.xz)), Struct_3(Struct_2(global1[_wgslsmith_index_u32(55729u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], var_1.d, var_1.a), Struct_1(var_1.d.a, vec2<u32>(29259u, 1u), arg_1)))), var_1.d, global1[_wgslsmith_index_u32(~var_2.x, 18u)], vec3<bool>((2147483647i ^ var_0) >= ~1i, !all(vec3<bool>(true, false, var_1.d.c.x)), arg_1.x)), global1[_wgslsmith_index_u32(11117u, 18u)]);
    return _wgslsmith_mult_u32(~abs(var_1.d.b.x), select(var_2.x, _wgslsmith_mult_u32(33354u, 14054u), arg_1.x));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec2<bool>, arg_3: f32) -> f32 {
    var var_0 = vec2<u32>(~func_2(_wgslsmith_div_vec3_f32(vec3<f32>(611f, -1164f, -1000f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, -1000f, arg_3)))), vec2<bool>(true, true), !(true | arg_2.x)), ~countOneBits(arg_0));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.x | _wgslsmith_div_u32(_wgslsmith_mult_u32(29416u, u_input.a.x), _wgslsmith_add_u32(arg_0, 87639u)), 1u), 18u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(33094u, u_input.a.x), 18u)], Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, arg_1, 215f, -1241f)))))), ~u_input.a.yx, arg_2), select(select(select(select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(false, arg_2.x, arg_2.x), true), select(vec3<bool>(true, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, true), true), select(vec3<bool>(arg_2.x, true, arg_2.x), vec3<bool>(arg_2.x, false, true), vec3<bool>(true, true, arg_2.x))), !select(vec3<bool>(true, arg_2.x, false), vec3<bool>(arg_2.x, false, true), false), !select(vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(false, arg_2.x, arg_2.x), arg_2.x)), !vec3<bool>(false, any(vec2<bool>(true, arg_2.x)), all(vec3<bool>(false, false, true))), arg_2.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, _wgslsmith_f_op_f32(1348f - -396f)) - _wgslsmith_f_op_vec2_f32(abs(var_1.b.a.wy)));
    var var_3 = u_input.b;
    var_0 = vec2<u32>(1u, 13011u);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 961f;
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(-718f, -602f, !any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(303f + -2373f) + _wgslsmith_div_f32(-1000f, -176f))), 389f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1207f))))));
    let var_1 = ~firstTrailingBit(reverseBits(vec3<i32>(-27316i, -30357i, 2147483647i) << (u_input.a % vec3<u32>(32u)))) | vec3<i32>(reverseBits(~2147483647i << (u_input.a.x % 32u)), 1i, abs(-2147483647i));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -725f)))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(func_1(43017u, 674f, vec2<bool>(true, true), -159f)))))), func_3(!select(func_3(vec2<bool>(false, false), Struct_4(vec3<bool>(true, true, true), var_0.x, -1983f, Struct_1(var_0, vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(true, true))), Struct_3(Struct_2(Struct_1(var_0, u_input.a.zz, vec2<bool>(true, true)), global1[_wgslsmith_index_u32(u_input.a.x, 18u)], Struct_1(vec4<f32>(var_0.x, var_0.x, 1000f, var_0.x), vec2<u32>(1u, 5736u), vec2<bool>(true, true)), vec3<bool>(false, true, false)), global1[_wgslsmith_index_u32(4294967295u, 18u)])), vec2<bool>(true, true), true), Struct_4(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true)), -996f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1111f)))), Struct_1(_wgslsmith_f_op_vec4_f32(var_0 + var_0), vec2<u32>(u_input.a.x, u_input.a.x), select(vec2<bool>(true, false), vec2<bool>(false, false), true))), Struct_3(Struct_2(Struct_1(vec4<f32>(var_0.x, var_0.x, 744f, var_0.x), vec2<u32>(u_input.a.x, 4294967295u), vec2<bool>(false, false)), global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], vec3<bool>(true, true, true)), Struct_1(vec4<f32>(var_0.x, var_0.x, var_0.x, 767f), vec2<u32>(u_input.a.x, u_input.a.x), func_3(vec2<bool>(true, true), Struct_4(vec3<bool>(true, true, true), -560f, -215f, global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), Struct_3(Struct_2(Struct_1(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), u_input.a.xx, vec2<bool>(false, false)), global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(0u, 18u)], vec3<bool>(false, true, false)), Struct_1(var_0, u_input.a.xz, vec2<bool>(true, false))))))).x));
    var var_2 = select(!vec3<bool>(true, select(true, any(vec2<bool>(false, true)), any(vec2<bool>(false, true))), false), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false)), !vec3<bool>(all(vec4<bool>(false, false, true, true)), true, -112f != var_0.x)), any(vec2<bool>(true, true)));
    var var_3 = _wgslsmith_add_u32(~(~max(1u, u_input.a.x)), ~(~0u)) << (min(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-491f, -872f, 1289f) + var_0.wwx), !(!var_2.xy), any(var_2.xy)), u_input.a.x) % 32u);
    global0 = _wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * -703f), _wgslsmith_div_f32(-193f, var_0.x), !var_2.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * _wgslsmith_f_op_f32(var_0.x + var_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(4294967295u, var_0.x, var_2.xy, _wgslsmith_f_op_f32(-1114f - var_0.x)))))));
    var var_4 = min(firstLeadingBit(~min(vec4<i32>(var_1.x, u_input.b, var_1.x, u_input.b), vec4<i32>(u_input.b, -2147483647i, u_input.b, 1i))), -(~(-vec4<i32>(1i, var_1.x, -54257i, var_1.x)))) << (vec4<u32>(u_input.a.x, ~_wgslsmith_dot_vec2_u32(min(u_input.a.zx, vec2<u32>(u_input.a.x, 54805u)), vec2<u32>(9477u, u_input.a.x)), _wgslsmith_dot_vec2_u32(u_input.a.yy | select(vec2<u32>(28316u, u_input.a.x), vec2<u32>(u_input.a.x, 0u), true), (vec2<u32>(0u, u_input.a.x) >> (vec2<u32>(30399u, 66614u) % vec2<u32>(32u))) | ~u_input.a.zx), min(4294967295u, u_input.a.x)) % vec4<u32>(32u));
    var_4 = vec4<i32>(reverseBits(-2147483647i), -31597i, ~_wgslsmith_add_i32(-13679i, 0i), u_input.b & u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1 << (countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a), abs(u_input.a))) % vec3<u32>(32u)));
}

