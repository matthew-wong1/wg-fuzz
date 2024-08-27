struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: f32;

var<private> global2: Struct_2 = Struct_2(Struct_1(false, 178f, vec4<f32>(-875f, -331f, 321f, -1896f), vec2<f32>(118f, -369f), vec3<u32>(1u, 1u, 0u)), Struct_1(true, -1000f, vec4<f32>(291f, -505f, -975f, -507f), vec2<f32>(-538f, 1002f), vec3<u32>(1u, 15703u, 1u)), 724f, 43212u);

var<private> global3: array<vec4<u32>, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: f32) -> bool {
    return arg_1;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = vec3<f32>(126f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.b - -423f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(538f + 562f), _wgslsmith_f_op_f32(f32(-1f) * -857f)))), 1157f, func_3(vec2<i32>(u_input.b, -1i), true & (global2.a.c.x <= 428f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global2.a.c.x, global2.a.b))))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.d), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1426f * -1494f) - _wgslsmith_f_op_f32(-global2.b.d.x)), global2.b.d.x)));
    let var_2 = Struct_1(!global2.a.a, _wgslsmith_f_op_f32(f32(-1f) * -2184f), global2.a.c, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 236f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global2.b.d.x, var_1.x)), _wgslsmith_f_op_f32(-global2.c), !global2.b.a))), vec2<f32>(var_1.x, 230f), u_input.b < 1i)), ~(~(~arg_0)));
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>) -> vec3<bool> {
    global2 = Struct_2(func_2(min(reverseBits(_wgslsmith_clamp_vec3_u32(arg_0.e, global2.a.e, u_input.c.wzx)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c.x, 18520u), arg_0.e | vec3<u32>(arg_1.a.e.x, arg_0.e.x, 23470u)))), func_2(arg_1.b.e >> (vec3<u32>(select(global2.d, 81330u, arg_0.a), u_input.d.x | 26613u, arg_1.d) % vec3<u32>(32u))), 212f, _wgslsmith_mod_u32(global0.x, ~(~reverseBits(u_input.c.x))));
    return select(vec3<bool>(true, select(any(vec2<bool>(false, false)), false, arg_0.a), !global2.a.a), vec3<bool>(true, all(select(select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(true, arg_1.b.a, arg_1.a.a), true), select(vec3<bool>(true, true, arg_0.a), vec3<bool>(global2.b.a, true, true), vec3<bool>(false, false, global2.b.a)), vec3<bool>(arg_0.a, global2.b.a, arg_0.a))), !select(true, true, true)), !select((arg_2.x > arg_2.x) || (true && arg_1.b.a), (global2.b.a && false) | !global2.b.a, any(!vec3<bool>(true, arg_1.b.a, arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 282f;
    let var_0 = Struct_2(global2.a, global2.b, _wgslsmith_f_op_f32(-global2.a.b), 1u);
    var var_1 = all(func_1(Struct_1(!global2.b.a & true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c.x) - -1838f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1025f, 433f, global2.b.c.x, var_0.c)))), vec2<f32>(global2.b.c.x, _wgslsmith_f_op_f32(round(global2.a.d.x))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(140756u, 22381u), global2.b.e.zy), ~global0.x, global0.x)), var_0, select(vec4<i32>(-2147483647i, u_input.b, u_input.b, -29687i), select(vec4<i32>(1i, u_input.b, u_input.b, u_input.b), vec4<i32>(23361i, 30238i, 2147483647i, 0i), vec4<bool>(global2.b.a, var_0.b.a, global2.a.a, global2.a.a)), all(vec2<bool>(global2.a.a, var_0.a.a))) << (~u_input.c % vec4<u32>(32u))));
    let var_2 = func_2(vec3<u32>(abs(~(global2.a.e.x | global0.x)), ~_wgslsmith_sub_u32(global0.x, global2.d), firstTrailingBit(_wgslsmith_dot_vec4_u32(firstLeadingBit(global3[_wgslsmith_index_u32(global2.b.e.x, 2u)]), vec4<u32>(u_input.c.x, var_0.d, 7050u, 42979u)))));
    let var_3 = _wgslsmith_sub_i32(select(countOneBits(firstTrailingBit(~(-1i))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 1i, 27865i), vec3<i32>(u_input.b, u_input.b, 0i)), vec3<i32>(u_input.b, -6235i, u_input.b)) | ~(-u_input.b), global2.b.a), firstTrailingBit(abs(~countOneBits(-1293i))));
    var var_4 = ~21037u;
    let var_5 = Struct_2(Struct_1(var_0.a.a & false, -1184f, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0.c)))), func_2(countOneBits(vec3<u32>(global2.a.e.x, 0u, 0u))).b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -341f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2082f, var_2.d.x), global2.b.c.zw, true)))))), ~vec3<u32>(0u, ~var_0.d, 20027u)), func_2(_wgslsmith_sub_vec3_u32(~var_2.e, vec3<u32>(~50078u, 32798u, ~global2.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_2.b)), var_0.c, false)))), _wgslsmith_f_op_f32(466f + global2.b.d.x)), var_2.e.x);
    global2 = Struct_2(Struct_1(~abs(var_2.e.x) < ~min(1u, 0u), func_2(u_input.c.ywz).b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(193f, -879f, -1000f, _wgslsmith_f_op_f32(step(var_2.b, global2.b.b))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(abs(global2.c)), -772f, _wgslsmith_f_op_f32(global2.b.c.x - global2.b.d.x)), false)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.b, global2.b.d.x)))), vec2<f32>(var_0.b.d.x, _wgslsmith_f_op_f32(select(1000f, -593f, var_2.a)))), global2.b.e), Struct_1(true, _wgslsmith_f_op_f32(abs(-849f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.c)), vec4<f32>(_wgslsmith_f_op_f32(ceil(1451f)), _wgslsmith_div_f32(-1926f, var_2.b), global2.b.b, var_2.b), !vec4<bool>(var_5.a.a, false, false, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, global2.a.d.x)), _wgslsmith_f_op_vec2_f32(-var_2.c.zw))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.a.d))), vec3<u32>(0u, ~var_0.d, 4294967295u) ^ _wgslsmith_sub_vec3_u32(var_5.a.e, _wgslsmith_div_vec3_u32(u_input.c.wyx, vec3<u32>(var_5.d, 4294967295u, var_0.d)))), _wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(653f)))))), var_2.e.x);
    var var_6 = 21829u;
    let x = u_input.a;
    s_output = StorageBuffer(557u, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, firstTrailingBit(u_input.b), u_input.b), -_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-38477i, var_3, u_input.b)), select(vec3<i32>(-60176i, var_3, u_input.b), vec3<i32>(var_3, 43297i, 0i), vec3<bool>(true, var_5.a.a, var_2.a)))), var_3, ~(~abs(global0.x)));
}

