struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
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

var<private> global0: f32;

var<private> global1: array<Struct_1, 4>;

var<private> global2: Struct_1 = Struct_1(0u, vec4<bool>(false, true, true, false), 1063f);

var<private> global3: vec2<i32>;

var<private> global4: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: f32) -> bool {
    global1 = array<Struct_1, 4>();
    return global2.b.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> vec4<bool> {
    global3 = ~(~select(-vec2<i32>(global3.x, global3.x), vec2<i32>(_wgslsmith_sub_i32(global3.x, global3.x), _wgslsmith_sub_i32(global3.x, 0i)), vec2<bool>(arg_1.b.x, all(global2.b))));
    var var_0 = global1[_wgslsmith_index_u32(~global2.a & ~u_input.c, 4u)];
    let var_1 = global3.x;
    var_0 = global1[_wgslsmith_index_u32(u_input.d.x, 4u)];
    let var_2 = u_input.d;
    return vec4<bool>(!arg_1.b.x, arg_1.b.x, true && (!all(vec3<bool>(true, var_0.b.x, var_0.b.x)) && (func_2(vec4<i32>(global3.x, global3.x, -2147483647i, 0i), u_input.c, 271f) & all(global2.b.yy))), var_0.b.x);
}

fn func_3() -> f32 {
    var var_0 = Struct_1(~_wgslsmith_div_u32(~(~43398u), select(~global2.a, _wgslsmith_dot_vec2_u32(u_input.d.xy, vec2<u32>(global2.a, 0u)), global2.b.x)), vec4<bool>(global3.x <= _wgslsmith_div_i32(21919i, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, global3.x, global3.x), vec3<i32>(-13812i, global3.x, 1i))), !(!any(vec4<bool>(false, true, false, global2.b.x))), global2.b.x, false), global2.c);
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 4u)];
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(23464i, -10777i, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(global3.x, abs(7006i), ~(-2147483647i)), reverseBits(-vec3<i32>(global3.x, global3.x, global3.x))) >> (u_input.d % vec3<u32>(32u)));
    let var_3 = reverseBits(~firstLeadingBit(abs(vec4<u32>(var_1.a, u_input.d.x, global2.a, 0u) | vec4<u32>(global2.a, 4294967295u, var_0.a, var_0.a))));
    var var_4 = select(!(!select(select(vec2<bool>(global2.b.x, global2.b.x), global4[_wgslsmith_index_u32(global2.a, 27u)], true), vec2<bool>(false, global2.b.x), var_0.b.x | global2.b.x)), vec2<bool>(var_1.b.x, true), true);
    return -165f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(39892u, select(select(select(global2.b, !global2.b, global2.b.x), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c, global2.c) - vec2<f32>(-224f, 489f)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.a, 15897u), 4u)]), true), select(vec4<bool>(global2.b.x, false, false, select(global2.b.x, true, false)), select(select(global2.b, global2.b, global2.b.x), vec4<bool>(false, false, global2.b.x, false), vec4<bool>(global2.b.x, true, global2.b.x, true)), any(vec3<bool>(global2.b.x, false, false)) | true), global2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(func_3()))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -723f))));
    var_0 = Struct_1(43194u, func_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-global2.c), var_0.c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1163f, global2.c) * vec2<f32>(var_0.c, var_0.c)), vec2<f32>(1f, 1f)))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(125207u, var_0.a), ~global2.a, abs(var_0.a)), _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 4294967295u), ~1u)), 4u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(f32(-1f) * -590f));
    global3 = max(firstTrailingBit(abs(~vec2<i32>(-1i, -1i)) ^ ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-23421i, -917i), vec2<i32>(global3.x, 0i), vec2<i32>(global3.x, -3558i))), -_wgslsmith_add_vec2_i32(min(~vec2<i32>(-2147483647i, 4880i), ~vec2<i32>(global3.x, global3.x)), max(~vec2<i32>(global3.x, -59259i), ~vec2<i32>(global3.x, -1i))));
    let var_2 = global1[_wgslsmith_index_u32(~var_0.a, 4u)];
    let var_3 = vec3<bool>(true, (-(global3.x >> (36239u % 32u)) != ~(global3.x & -83971i)) && true, !select(global2.b.x, false, !any(global2.b.zy)));
    let var_4 = -(~_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global3.x, global3.x), vec2<i32>(59649i, -2147483647i)), vec2<i32>(2147483647i, global3.x) ^ vec2<i32>(global3.x, 1i)) & vec2<i32>(_wgslsmith_sub_i32(36840i, _wgslsmith_dot_vec4_i32(vec4<i32>(9690i, 0i, global3.x, -5016i), vec4<i32>(global3.x, global3.x, global3.x, global3.x))), reverseBits(global3.x) & countOneBits(global3.x)));
    global4 = array<vec2<bool>, 27>();
    let var_5 = Struct_1(0u, vec4<bool>(global2.b.x, !(!var_3.x & var_0.b.x), all(var_2.b.wzy), true), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-611f, var_0.c));
}

