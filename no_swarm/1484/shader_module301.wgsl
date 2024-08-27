struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec2<bool> {
    var var_0 = reverseBits(~_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.c, 2259i, 1i, 1i), vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c), vec4<bool>(false, true, false, true)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 29999u), vec4<u32>(4294967295u, 0u, 36568u, 90357u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), -26524i, u_input.c, 1i)));
    let var_1 = !vec3<bool>(select(all(vec2<bool>(false, false)), true, true) && true, !all(vec2<bool>(true, false)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, false, false, false))));
    var var_2 = _wgslsmith_f_op_f32(ceil(213f));
    let var_3 = _wgslsmith_div_vec4_u32(abs(~firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u))) >> ((min(~vec4<u32>(u_input.a.x, 44788u, u_input.a.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, 0u, u_input.a.x)) >> (firstTrailingBit(~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), firstTrailingBit(countOneBits(~(~vec4<u32>(u_input.a.x, 4294967295u, 0u, 4294967295u)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1889f)), _wgslsmith_f_op_f32(select(892f, _wgslsmith_f_op_f32(f32(-1f) * -856f), false))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-406f, 581f))))))))));
    return select(var_1.zy, select(vec2<bool>(!(u_input.b.x <= -44629i), true), select(select(!vec2<bool>(var_1.x, true), !var_1.zx, u_input.c < var_0.x), var_1.zx, var_0.x == (1i << (0u % 32u))), select(!vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, !var_1.x), var_1.zx)), !select(var_1.xy, var_1.xx, var_1.zz));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec3<i32>) -> f32 {
    var var_0 = u_input.a.xy;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -136f), arg_0)))), 504f, -993f);
    let var_2 = Struct_3(Struct_2(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(75553u, var_0.x, 0u, 4294967295u), vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x)), vec4<u32>(u_input.a.x, min(u_input.a.x, 31502u), 0u, ~var_0.x)), func_3(), Struct_1(vec2<i32>(u_input.b.x, -10273i)), all(vec3<bool>(true, select(false, true, false), true)), Struct_1(-(arg_2.zz | vec2<i32>(0i, 1i)))));
    let var_3 = var_1.zy;
    var var_4 = _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -116f) * var_1.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), arg_0))))));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -626f), _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, u_input.b.x, u_input.c, 25957i), -vec4<i32>(2147483647i, 42897i, u_input.b.x, -7458i)), vec3<i32>(_wgslsmith_mod_i32(u_input.c, 1i), 1i, countOneBits(5614i)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-768f, 1f, true))))));
    var var_1 = Struct_3(Struct_2(select(~(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u)), firstTrailingBit(vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), Struct_1(-(~u_input.b.xz)), false, Struct_1(abs(vec2<i32>(33950i, u_input.c)))));
    var_1 = Struct_3(var_1.a);
    var_1 = Struct_3(var_1.a);
    var var_2 = var_1.a.e;
    return -(~var_1.a.e.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = ~vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, (u_input.b.x & u_input.c) ^ func_1()), -u_input.b.x >> (min(~11181u, reverseBits(var_0)) % 32u), _wgslsmith_sub_i32(~0i, -2147483647i), _wgslsmith_add_i32(countOneBits(u_input.c | 22608i), u_input.c));
    let var_2 = select(~var_0, 1u, !any(vec4<bool>(all(vec4<bool>(false, true, false, true)), true, true, select(false, true, false))));
    var var_3 = ~abs(select(47153u, u_input.a.x >> (0u % 32u), false)) << (max(reverseBits(1u), 120447u) % 32u);
    var var_4 = abs(1i);
    var_4 = ~(~(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, var_1.x), -var_1.zw) ^ var_1.x));
    var_4 = -var_1.x;
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_i32(0i, 1i) ^ -reverseBits(var_1.x), 2515i), _wgslsmith_dot_vec2_i32(reverseBits(-(vec2<i32>(29982i, u_input.c) | u_input.b.xx)), select(var_1.zx, u_input.b.yy, func_3())), 2147483647i);
}

