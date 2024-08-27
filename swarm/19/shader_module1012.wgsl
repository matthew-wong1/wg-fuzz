struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(vec2<bool>(true, true), Struct_1(vec3<i32>(0i, 59046i, 1i), -308f), Struct_1(vec3<i32>(-1i, -4866i, 1i), 727f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<bool>) -> vec3<i32> {
    let var_0 = 64685u;
    let var_1 = ~(~(~_wgslsmith_mult_u32(~u_input.d, ~0u)));
    let var_2 = 78902i;
    global1 = Struct_3(!select(arg_2.zx, !vec2<bool>(arg_2.x, global1.a.x), false), Struct_1(select(select(-global1.c.a, _wgslsmith_mult_vec3_i32(global0.a, global1.c.a), arg_2), _wgslsmith_add_vec3_i32(~global0.a, global1.b.a), global1.a.x), -268f), global1.b);
    global1 = Struct_3(!select(!(!arg_2.yz), select(vec2<bool>(arg_2.x, false), !arg_2.yx, !arg_2.x), !(48250i >= var_2)), Struct_1(reverseBits(select(-vec3<i32>(59827i, arg_0, global1.c.a.x), global0.a, !global1.a.x)), _wgslsmith_f_op_f32(165f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-600f * 1127f))))), Struct_1(-vec3<i32>(global0.a.x, u_input.c, var_2), 310f));
    return -(~abs(global1.c.a));
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(global0.a, vec3<i32>(_wgslsmith_dot_vec3_i32(global1.b.a, vec3<i32>(-1i, global0.a.x, 0i)), -global0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -1i, 1i), vec3<i32>(global0.a.x, 2147483647i, global0.a.x)))), -175f));
    let var_1 = -903f;
    var var_2 = Struct_3(global1.a, Struct_1(func_3(-1i, var_0.a.a.xx, !select(vec3<bool>(global1.a.x, global1.a.x, true), vec3<bool>(global1.a.x, true, false), vec3<bool>(global1.a.x, global1.a.x, false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + 714f))))), Struct_1(vec3<i32>(var_0.a.a.x, -2147483647i, ~(-34552i)), _wgslsmith_f_op_f32(trunc(-1007f))));
    var var_3 = ~u_input.c ^ u_input.e;
    var_2 = Struct_3(vec2<bool>(all(select(select(vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(true, true, global1.a.x, true), true), vec4<bool>(true, false, false, var_2.a.x), select(vec4<bool>(global1.a.x, var_2.a.x, global1.a.x, global1.a.x), vec4<bool>(true, true, false, var_2.a.x), global1.a.x))), all(global1.a)), var_2.c, Struct_1(vec3<i32>(-2147483647i, countOneBits(-var_0.a.a.x), ~global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-320f)) + 407f)));
    return abs(u_input.a.zzy) << (u_input.a.wwx % vec3<u32>(32u));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = -vec4<i32>(-2147483647i, -58340i, -92231i, u_input.e);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.b));
    var_0 = ~vec4<i32>(-var_0.x, firstTrailingBit(var_0.x), -535i, _wgslsmith_dot_vec2_i32(~(-vec2<i32>(global0.a.x, -1i)), -var_0.xy << (~u_input.a.zz % vec2<u32>(32u))));
    var var_2 = true;
    let var_3 = ~(~(_wgslsmith_div_vec3_u32(func_2(), ~vec3<u32>(4294967295u, 25052u, u_input.b.x)) >> (~(~vec3<u32>(u_input.d, 5512u, u_input.d)) % vec3<u32>(32u))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(25346u, ~select(u_input.d, ~1u, all(select(global1.a, global1.a, false))));
    global0 = func_1(global1.b, select(select(!select(vec2<bool>(false, global1.a.x), global1.a, global1.a), global1.a, !select(vec2<bool>(false, global1.a.x), vec2<bool>(false, true), global1.a.x)), !(!global1.a), !any(!vec4<bool>(false, true, global1.a.x, global1.a.x))));
    var var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~u_input.a, ~vec4<u32>(1u, ~25540u, ~1u, ~0u)), vec4<u32>(~u_input.a.x, ~0u, (3100u << (u_input.d % 32u)) >> (39322u % 32u), var_0));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-204f, -590f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(exp2(global0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.c.b, global1.c.b, global1.b.b, global1.b.b), vec4<f32>(global0.b, 341f, global1.b.b, 444f))))))))));
    let var_3 = Struct_3(!global1.a, func_1(global1.c, vec2<bool>(global1.a.x, true)), Struct_1(countOneBits(-(vec3<i32>(-1i, -63923i, global0.a.x) & global0.a)), -599f));
    var_1 = ~u_input.a;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b, global0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(max(reverseBits(firstLeadingBit(_wgslsmith_dot_vec2_u32(var_1.yy, u_input.b))), u_input.a.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.wy + var_2.zw)))));
}

