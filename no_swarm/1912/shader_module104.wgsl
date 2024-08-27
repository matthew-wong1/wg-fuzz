struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: vec4<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = ~_wgslsmith_mult_u32(1u, 1u) ^ ~(~firstTrailingBit(abs(1u)));
    var var_1 = ~(~(~vec3<u32>(77835u, 25623u, 0u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1725f, -1136f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(297f, -1000f), vec2<f32>(871f, 1330f))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(362f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(106f, -154f, global0.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-560f, 859f)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1485f) - vec2<f32>(1236f, -1551f)))))), true));
    var var_3 = -2280f;
    var_0 = 16407u;
    return true;
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> bool {
    var var_0 = -1i;
    global0 = !select(select(vec4<bool>(true, global0.x, true, false), vec4<bool>(true, all(vec4<bool>(global0.x, global0.x, true, false)), global0.x, !global0.x), global0.x), vec4<bool>(false || all(vec4<bool>(global0.x, true, global0.x, global0.x)), false, !all(global0.ww), true), func_2(_wgslsmith_add_i32(2147483647i, u_input.a)));
    var_0 = u_input.a;
    global0 = vec4<bool>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~arg_0.a.b.zz, vec2<u32>(39394u, arg_0.a.a.x)), ~_wgslsmith_add_u32(arg_1, 1u)) == 1u, !((u_input.a | 0i) >= -1i) && true, true, true);
    var var_1 = 1000f;
    return global0.x;
}

fn func_1() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1897f, _wgslsmith_f_op_f32(min(163f, -380f))))));
    global0 = select(vec4<bool>(_wgslsmith_f_op_f32(round(-338f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) * _wgslsmith_div_f32(var_0, 135f)), true, !global0.x, all(global0.xy) && true), vec4<bool>(false, global0.x, true, all(!(!vec4<bool>(global0.x, true, global0.x, global0.x)))), func_2(20314i));
    global0 = select(select(vec4<bool>(true, all(!global0.yxy), any(select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, false, false, true), false)), true || any(vec3<bool>(true, global0.x, global0.x))), !select(vec4<bool>(true, true, global0.x, global0.x), !vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(false, false, global0.x, false)), !select(!vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, true), true)), select(!select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, false, true, false), !vec4<bool>(false, true, global0.x, false)), select(vec4<bool>(select(false, true, true), func_2(u_input.a), !global0.x, global0.x), vec4<bool>(all(vec2<bool>(global0.x, true)), global0.x, !global0.x, var_0 < var_0), vec4<bool>(global0.x, func_2(0i), func_3(Struct_3(Struct_2(vec3<u32>(18190u, 1u, 25978u), vec3<u32>(0u, 38709u, 1u), Struct_1(vec3<i32>(15375i, u_input.a, u_input.a), vec2<f32>(695f, var_0)))), 53874u), global0.x)), func_2(~u_input.a)), all(global0.yz));
    return abs(abs(vec4<u32>(firstLeadingBit(~1u), min(1u, ~17128u), ~4294967295u, firstTrailingBit(13929u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(7962u, 6304u, 20683u, 1u)) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(12029u, 18126u, 4294967295u, 4294967295u), vec4<u32>(21104u, 5054u, 1u, 1u)), ~4294967295u, 1u, ~4964u) % vec4<u32>(32u)), func_1()) ^ countOneBits(vec4<u32>(~4294967295u, 0u, abs(4294967295u), countOneBits(30373u)) >> (firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 0u, 39542u)) % vec4<u32>(32u)));
    var var_1 = Struct_3(Struct_2(~(vec3<u32>(var_0.x, 1u, var_0.x) & _wgslsmith_sub_vec3_u32(var_0.yxy, var_0.yyy)), max(~abs(var_0.yyy), vec3<u32>(_wgslsmith_mult_u32(var_0.x, var_0.x), ~var_0.x, firstLeadingBit(var_0.x))), Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, -34685i), vec3<i32>(0i, 23505i, -2147483647i)), vec3<i32>(-11303i, u_input.a, 1i)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-372f, -108f), vec2<f32>(-448f, 722f), vec2<bool>(global0.x, false))))))));
    global0 = select(select(select(select(vec4<bool>(global0.x, global0.x, global0.x, true), !vec4<bool>(false, true, global0.x, false), all(vec4<bool>(global0.x, global0.x, global0.x, true))), select(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(true, global0.x, true, false)), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), global0.x), vec4<bool>(global0.x, true, global0.x, !(var_0.x <= 39648u)), select(select(select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, true, false, false)), select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, global0.x, true, global0.x), false), global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), !vec4<bool>(true, true, false, global0.x), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, false, true, global0.x), false)), global0.x)), select(vec4<bool>(true, global0.x, true, true), select(!select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(true, false, true, false), global0.x), vec4<bool>(all(vec4<bool>(false, global0.x, true, true)), false, true, false), select(vec4<bool>(global0.x, global0.x, false, false), !vec4<bool>(true, false, true, global0.x), vec4<bool>(true, true, true, true))), vec4<bool>(true & global0.x, !global0.x | true, func_3(Struct_3(Struct_2(vec3<u32>(var_1.a.a.x, var_0.x, 4294967295u), var_1.a.a, var_1.a.c)), var_0.x), global0.x)), any(!vec4<bool>(var_1.a.c.a.x == u_input.a, func_3(Struct_3(var_1.a), 4294967295u), !global0.x, true)));
    let var_2 = ~min(var_1.a.c.a.xx, vec2<i32>(abs(0i) & (var_1.a.c.a.x & -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, 62340i, var_1.a.c.a.x), vec4<i32>(var_1.a.c.a.x, u_input.a, u_input.a, -32392i)) >> (~var_1.a.b.x % 32u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(589f, -301f, var_1.a.c.b.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a.c.b.x, var_1.a.c.b.x, var_1.a.c.b.x), vec3<f32>(-1103f, var_1.a.c.b.x, var_1.a.c.b.x))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1738f, -1570f, 575f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * 1160f), _wgslsmith_f_op_f32(var_1.a.c.b.x + _wgslsmith_f_op_f32(ceil(var_1.a.c.b.x)))))));
}

