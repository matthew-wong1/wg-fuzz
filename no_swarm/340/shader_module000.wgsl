struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<u32>;

var<private> global2: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(-288f, -1425f), vec2<f32>(-631f, 360f), vec2<f32>(-1145f, -1000f), vec2<f32>(-323f, -660f), vec2<f32>(-372f, -696f), vec2<f32>(1000f, 445f));

var<private> global3: Struct_2 = Struct_2(vec3<u32>(4294967295u, 1u, 25324u), Struct_1(41217u, vec3<u32>(1u, 21615u, 40426u), vec2<f32>(583f, 279f)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = Struct_3(i32(-1i) * -2147483647i, arg_0.b, vec4<u32>(reverseBits(~reverseBits(1u)), firstLeadingBit(~45676u), _wgslsmith_mod_u32(min(118549u, global3.b.a), ~1u) >> (global3.a.x % 32u), global1.x), Struct_2(vec3<u32>(_wgslsmith_mod_u32(global1.x & 14329u, ~18406u), max(arg_0.b.a, 21854u), arg_0.b.a), arg_0.b));
    global3 = var_0.d;
    var var_1 = !(!select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true))));
    global2 = array<vec2<f32>, 6>();
    let var_2 = ~(-reverseBits(vec4<i32>(~var_0.a, var_0.a, var_0.a & 1i, 58410i | var_0.a)));
    return ~min(min(var_2, ~vec4<i32>(-9411i, var_0.a, -1i, 47684i)), min(vec4<i32>(reverseBits(-22995i), -var_0.a, 1i, -2147483647i), var_2));
}

fn func_2() -> Struct_3 {
    var var_0 = vec4<i32>(1i, 1i, 2147483647i, 46847i) ^ func_3(Struct_2(~firstTrailingBit(vec3<u32>(65941u, 4294967295u, 21411u)), global3.b));
    let var_1 = _wgslsmith_mod_vec3_u32(~global3.a, global3.a);
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global3.b.c.x)), _wgslsmith_f_op_f32(global3.b.c.x + global3.b.c.x))) - -1000f), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(573f + _wgslsmith_f_op_f32(round(-540f)))))), global3.b.c.x, -760f, 669f);
    let var_3 = select(!(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), any(vec4<bool>(false, false, true, true)))), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), all(vec4<bool>(true, true, false, true))), vec2<bool>(all(vec3<bool>(true, true, false)), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true)))), true);
    var_2 = vec4<f32>(global3.b.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1221f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.b.c.x)) * _wgslsmith_f_op_f32(-global3.b.c.x)), all(vec2<bool>(var_3.x, false)) & ((var_0.x <= var_0.x) | true))), var_2.x, -357f);
    return Struct_3(var_0.x, Struct_1(countOneBits(~1u), vec3<u32>(var_1.x, ~abs(u_input.c.x), ~global1.x | ~0u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), 1000f)), (max(_wgslsmith_mult_vec4_u32(u_input.c, u_input.c), ~u_input.c) & ((u_input.c ^ vec4<u32>(81961u, 4294967295u, u_input.b.x, var_1.x)) | vec4<u32>(var_1.x, var_1.x, 1u, var_1.x))) | firstTrailingBit(u_input.c), Struct_2(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(var_1, vec3<u32>(29620u, 34446u, global3.b.a)) | var_1, ~vec3<u32>(4294967295u, var_1.x, 4294967295u)), global3.b));
}

fn func_1() -> i32 {
    let var_0 = -1225f;
    let var_1 = func_2();
    let var_2 = var_1;
    let var_3 = func_2().d;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1173f, var_0)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(100718u, 6u)])))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1554f * var_1.d.b.c.x)))));
    return abs(-max(-23729i, var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = reverseBits(i32(-1i) * -_wgslsmith_add_i32(_wgslsmith_sub_i32(11042i, 1i), ~(-1i)));
    let var_0 = true;
    let var_1 = -_wgslsmith_sub_vec2_i32(vec2<i32>(-25650i, _wgslsmith_dot_vec3_i32(vec3<i32>(15291i, -8871i, 0i), vec3<i32>(66288i, 25442i, -17246i)) ^ func_1()), vec2<i32>(_wgslsmith_div_i32(countOneBits(16172i), _wgslsmith_mult_i32(25577i, -40333i)), -_wgslsmith_mod_i32(-1i, 1i)));
    let var_2 = Struct_1(~(1120u | global1.x) ^ u_input.c.x, vec3<u32>(~select(abs(global1.x), abs(global1.x), false || var_0), _wgslsmith_mult_u32(31805u & firstTrailingBit(global3.b.b.x), ~0u), firstTrailingBit(_wgslsmith_mod_u32(~28751u, 11497u))), global2[_wgslsmith_index_u32(~(u_input.b.x & ~10167u), 6u)]);
    global1 = min(~vec2<u32>(~select(0u, 30118u, true), global1.x), ~(~select(vec2<u32>(1u, global3.b.a) & global3.a.zx, abs(global3.b.b.zz), select(vec2<bool>(var_0, false), vec2<bool>(false, var_0), var_0))));
    var var_3 = Struct_3(countOneBits(var_1.x), global3.b, select(u_input.c, vec4<u32>(~u_input.a, 35399u, abs(global1.x), global1.x), var_0 & false) & _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global3.a.x, global1.x, 67502u, 0u), _wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(2475u, global3.b.a, global1.x, 69476u))), abs(u_input.c)), Struct_2(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(59612u, 0u, global3.a.x), u_input.c.zyy)), Struct_1(var_2.b.x, ~global3.b.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(var_2.b.x, 6u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-706f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(var_3.b.c.x, -1940f)) + 1099f)), 1i, _wgslsmith_mult_u32(_wgslsmith_mult_u32(~var_3.c.x, _wgslsmith_mult_u32(min(1u, global3.a.x), var_3.d.b.a)), 1u), var_3.b.b, func_1());
}

