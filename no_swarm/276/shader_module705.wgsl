struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: Struct_2;

var<private> global2: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(-289f, 267f), vec2<f32>(2065f, 554f), vec2<f32>(-356f, -931f), vec2<f32>(-445f, -322f), vec2<f32>(-743f, 399f), vec2<f32>(-349f, -1000f), vec2<f32>(-448f, 716f), vec2<f32>(-226f, -832f), vec2<f32>(902f, 1207f), vec2<f32>(402f, -753f), vec2<f32>(-279f, 543f), vec2<f32>(745f, 389f), vec2<f32>(916f, -239f), vec2<f32>(520f, -964f));

var<private> global3: u32 = 1u;

var<private> global4: array<u32, 14> = array<u32, 14>(1u, 67079u, 92378u, 23829u, 29501u, 2531u, 4294967295u, 37732u, 0u, 51921u, 1u, 85463u, 0u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: i32) -> bool {
    var var_0 = Struct_4(Struct_3(~global1.b, true, 18362u), vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_2, 31178i, -1i, arg_2) | vec4<i32>(2147483647i, 2147483647i, 2147483647i, arg_2), -vec4<i32>(arg_2, 66598i, arg_2, arg_2), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, true), arg_0.x)), vec4<i32>(-55767i, 1i, 13613i, select(global1.b.x, 2199i, true))), global1.b.x), vec2<i32>(-39591i, arg_2), 308f, Struct_3(-vec3<i32>(_wgslsmith_mult_i32(arg_2, arg_2), _wgslsmith_clamp_i32(0i, arg_2, global1.b.x), ~(-2147483647i)), all(vec4<bool>(arg_0.x, global1.a > -582f, false, all(vec4<bool>(false, false, arg_0.x, false)))), ~firstLeadingBit(1u & u_input.b.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-142f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1271f)) * 1691f));
    global4 = array<u32, 14>();
    var var_2 = Struct_4(var_0.e, firstTrailingBit(var_0.a.a.zz), countOneBits(~(~vec2<i32>(global1.b.x, global1.b.x))), _wgslsmith_f_op_f32(trunc(arg_1)), var_0.e);
    var_2 = Struct_4(var_2.e, vec2<i32>(28954i, ~(~abs(39061i))), vec2<i32>(abs(abs(0i)), -1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-439f - -764f)))), var_0.d), var_0.a);
    return true;
}

fn func_2(arg_0: bool) -> Struct_4 {
    var var_0 = vec3<bool>(func_3(vec2<bool>(false, !(!arg_0)), _wgslsmith_f_op_f32(-global1.a), -global1.b.x), func_3(select(vec2<bool>(!arg_0, !arg_0), select(vec2<bool>(true, true), !vec2<bool>(true, arg_0), false), all(!vec2<bool>(arg_0, true))), _wgslsmith_f_op_f32(596f + -1000f), ~global1.b.x), !(!arg_0));
    return Struct_4(Struct_3(reverseBits(_wgslsmith_mod_vec3_i32(global1.b, vec3<i32>(-2147483647i, global1.b.x, 2147483647i))), -22188i >= -firstTrailingBit(global1.b.x), _wgslsmith_clamp_u32(countOneBits(~4294967295u), firstTrailingBit(u_input.b.x), 4294967295u)), -vec2<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(global1.b.yx), vec2<i32>(global1.b.x, global1.b.x)), _wgslsmith_dot_vec3_i32(-vec3<i32>(global1.b.x, -2147483647i, global1.b.x), global1.b)), -select(countOneBits(vec2<i32>(-37194i, global1.b.x)), vec2<i32>(global1.b.x, global1.b.x) & global1.b.zz, arg_0) & vec2<i32>(_wgslsmith_sub_i32(~2147483647i, global1.b.x), -global1.b.x << (_wgslsmith_div_u32(u_input.b.x, u_input.b.x) % 32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), -101f))), global1.a)), Struct_3(~vec3<i32>(_wgslsmith_mult_i32(global1.b.x, -13185i), global1.b.x, abs(global1.b.x)), true, ~_wgslsmith_sub_u32(4294967295u, global4[_wgslsmith_index_u32(10002u, 14u)]) ^ global4[_wgslsmith_index_u32(u_input.b.x, 14u)]));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: f32, arg_3: u32) -> i32 {
    var var_0 = reverseBits(~(~(~20382u)) >> (1u % 32u));
    let var_1 = func_2(any(!vec2<bool>(select(false, false, true), all(vec3<bool>(false, true, true)))));
    let var_2 = global1.b.zy;
    var_0 = u_input.b.x;
    let var_3 = ~vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_1.e.c, 0u, global4[_wgslsmith_index_u32(arg_3, 14u)])), vec3<u32>(31675u, arg_0.x, 6057u)), func_2(!var_1.e.b).a.c), arg_0.x);
    return var_1.c.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_4) -> StorageBuffer {
    return StorageBuffer(-1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 14>();
    let x = u_input.a;
    s_output = func_4(select(!vec4<bool>(any(vec3<bool>(true, true, true)), global1.a >= -862f, true, true), !vec4<bool>(true, global1.a < global1.a, true, 22570u != u_input.a), !((-2147483647i << (u_input.a % 32u)) < func_1(u_input.b.xx, global1.b, -1326f, u_input.a))), func_2(1u < u_input.b.x).e, func_2(!all(vec3<bool>(true, true, true))));
}

