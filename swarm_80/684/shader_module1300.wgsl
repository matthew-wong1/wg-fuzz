struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<bool>(true, false, true), 42534i, Struct_1(vec3<f32>(-1397f, 2470f, -896f), vec4<bool>(true, false, false, true), vec4<u32>(0u, 4294967295u, 0u, 0u)));

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_3) -> f32 {
    let var_0 = global1.b;
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, arg_2.c.a.x))), -2147483647i);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1467f * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.a.x - -1000f), _wgslsmith_div_f32(-1014f, -3406f)))))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.c.c.x, u_input.c.xz, Struct_3(global0.a, 9611i, Struct_1(arg_2.c.a, arg_2.c.b, arg_2.c.c)))))))));
    var_0 = _wgslsmith_div_f32(295f, global1.a);
    let var_1 = global0.c.c.x & arg_2.c.c.x;
    global0 = arg_2;
    var var_2 = _wgslsmith_f_op_vec2_f32(max(arg_2.c.a.yy, arg_2.c.a.yz));
    return Struct_3(!global0.a, max(_wgslsmith_div_i32(0i, ~(u_input.a << (0u % 32u))), max(global0.b, _wgslsmith_dot_vec3_i32(u_input.c.zzw, -u_input.c.ywx))), Struct_1(global0.c.a, !(!select(vec4<bool>(false, true, arg_2.a.x, true), vec4<bool>(arg_2.c.b.x, false, true, arg_0), vec4<bool>(arg_0, arg_0, arg_2.c.b.x, true))), countOneBits(select(select(vec4<u32>(arg_1, var_1, 94964u, u_input.d.x), vec4<u32>(4294967295u, arg_2.c.c.x, var_1, arg_1), true), ~vec4<u32>(1u, global0.c.c.x, 17243u, arg_1), global0.c.b.x))));
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a, _wgslsmith_f_op_f32(-global1.a), global0.c.b.x | false)));
    global0 = func_2(!(!(~7576i <= _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -1i, -1i), vec3<i32>(global0.b, 2147483647i, 29744i)))), (~(4294967295u >> (0u % 32u)) >> (0u % 32u)) & abs(~u_input.e.x), Struct_3(vec3<bool>(false, all(!vec3<bool>(global0.a.x, false, false)), global0.a.x), abs(i32(-1i) * -global0.b), global0.c));
    var var_1 = select(_wgslsmith_add_vec2_u32(~select(u_input.e, global0.c.c.ww, global0.c.b.x) | _wgslsmith_mod_vec2_u32(vec2<u32>(global0.c.c.x, 4294967295u), ~u_input.d.yz), u_input.e), ~vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, global0.c.c.x), ~u_input.e), ~(~4294967295u)), true);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(min(422f, -1160f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0)))), 1i);
    global0 = func_2(global0.a.x, u_input.e.x, Struct_3(vec3<bool>(true, false, true), ~(-2147483647i), func_2(!all(vec2<bool>(global0.a.x, global0.c.b.x)), 41025u, func_2(global0.a.x, select(global0.c.c.x, global0.c.c.x, true), Struct_3(vec3<bool>(global0.c.b.x, true, global0.c.b.x), u_input.a, Struct_1(vec3<f32>(-118f, global0.c.a.x, var_0), vec4<bool>(true, true, false, global0.a.x), u_input.d)))).c));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-435f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = Struct_5(-611f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-102f, _wgslsmith_f_op_f32(ceil(global0.c.a.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1129f, global0.c.a.x), vec2<f32>(-472f, 2709f), !vec2<bool>(true, global0.c.b.x))), global0.c.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(495f, global1.a))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-474f, -2052f)))), (~global0.c.c.x > ~0u) | true)), Struct_3(!select(vec3<bool>(global0.c.b.x, global0.c.b.x, false), !global0.c.b.zww, global0.c.b.x), -reverseBits(2147483647i), global0.c), select(var_0, -abs(var_0 >> (vec4<u32>(u_input.d.x, 75670u, 27757u, global0.c.c.x) % vec4<u32>(32u))), vec4<bool>(false, !global0.c.b.x & global0.c.b.x, global0.c.b.x, any(!vec3<bool>(global0.c.b.x, global0.a.x, true)))));
    let var_2 = var_1.c.c.c;
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -457f)) + _wgslsmith_f_op_f32(func_1(~vec3<i32>(global1.b, var_0.x, 1i) | vec3<i32>(0i, var_1.c.b, -43542i)))), _wgslsmith_add_i32(min(-40416i, func_2(false, global0.c.c.x, Struct_3(global0.c.b.zzz, 2147483647i, var_1.c.c)).b), ~u_input.b) & global0.b);
    let var_3 = var_0.yyy;
    global1 = Struct_2(global1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(~(i32(-1i) * -19350i), func_2(global0.a.x, _wgslsmith_mod_u32(50648u, var_2.x), Struct_3(vec3<bool>(var_1.c.a.x, global0.c.b.x, global0.a.x), u_input.c.x, global0.c)).b, (79897i << (0u % 32u)) & (1i << (global0.c.c.x % 32u))), vec3<i32>(-select(4927i, -2147483647i, false), i32(-1i) * -29044i, _wgslsmith_sub_i32(-var_0.x, -1i))));
    let var_4 = func_2(true, 17061u, Struct_3(select(!vec3<bool>(true, var_1.c.c.b.x, global0.a.x), global0.c.b.yxz, func_2(true, min(var_1.c.c.c.x, 1u), var_1.c).c.b.wwx), -24201i, func_2(all(select(vec3<bool>(var_1.c.a.x, var_1.c.a.x, false), vec3<bool>(global0.a.x, var_1.c.a.x, false), vec3<bool>(global0.a.x, false, global0.a.x))), var_1.c.c.c.x, Struct_3(global0.a, ~(-2147483647i), Struct_1(var_1.c.c.a, var_1.c.c.b, u_input.d))).c));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(firstTrailingBit(reverseBits(-2147483647i)) ^ _wgslsmith_div_i32(-1i, func_2(false, 17378u, Struct_3(vec3<bool>(false, true, false), var_3.x, Struct_1(vec3<f32>(-1000f, -848f, var_1.a), vec4<bool>(false, var_4.a.x, true, var_4.c.b.x), vec4<u32>(1u, var_2.x, u_input.d.x, 4294967295u)))).b)), reverseBits(~var_1.c.c.c), vec4<u32>(~17301u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_2.x, var_2.x), var_4.c.c.x), global0.c.c.x, global0.c.c.x) ^ u_input.d, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, -select(u_input.c, var_0, false)), var_0), _wgslsmith_add_u32(u_input.e.x, ~global0.c.c.x) | var_4.c.c.x);
}

