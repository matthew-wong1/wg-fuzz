struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec3<u32>;

var<private> global2: array<vec3<i32>, 25>;

var<private> global3: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(10142i, -31661i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, -9786i), vec2<i32>(1i, -1i));

var<private> global4: vec2<u32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec4<f32>) -> vec2<u32> {
    global4 = _wgslsmith_sub_vec2_u32(arg_1.xz, global1.zy);
    var var_0 = global0.b;
    var var_1 = global0.a.x & !global0.b;
    global3 = array<vec2<i32>, 4>();
    var var_2 = 1u;
    return select(arg_1.yz, vec2<u32>(3549u, 20482u), global0.a);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(global4.x, global1.x), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(global1.x, global4.x), select(func_3(vec2<i32>(1i, 0i), vec4<u32>(global1.x, 38406u, 1u, u_input.a.x), vec4<f32>(-846f, 479f, 1137f, -1527f)), u_input.a.xy, all(vec4<bool>(false, global0.a.x, true, global0.b))), max(firstTrailingBit(global1.yx), vec2<u32>(global1.x, u_input.a.x))));
    let var_1 = reverseBits(-9374i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -571f));
    let var_3 = Struct_1(!select(!select(vec4<bool>(global0.a.x, true, false, false), vec4<bool>(false, true, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, true, global0.b, true)), !select(vec4<bool>(false, global0.a.x, global0.a.x, global0.b), vec4<bool>(false, global0.a.x, global0.a.x, true), false), !select(vec4<bool>(true, true, global0.a.x, false), vec4<bool>(global0.b, global0.b, false, global0.a.x), true)), vec2<u32>(var_0.x, _wgslsmith_div_u32(firstTrailingBit(select(global1.x, 1116u, true)), 1u)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1098f, -903f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(827f)) + -1000f), 1f)), -520f), ~vec3<u32>(global4.x, global1.x, 1u), global2[_wgslsmith_index_u32(37951u, 25u)]);
    var var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(var_3.c.zz)), _wgslsmith_f_op_vec2_f32(var_3.c.yz - vec2<f32>(303f, -1316f)), !global0.a))) + vec2<f32>(-774f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.x - var_3.c.x)))), var_3.c.zz, global0.b));
    return _wgslsmith_f_op_f32(floor(var_4.x));
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_1(!(!(!vec4<bool>(global0.b, false, false, false))), _wgslsmith_div_vec2_u32(firstTrailingBit(global1.zy), u_input.a.yz), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1498f))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(sign(2025f))), ~(~min(u_input.a, u_input.a)) | vec3<u32>(23126u, ~firstLeadingBit(17994u), u_input.a.x | 1u), vec3<i32>(-_wgslsmith_mod_i32(-21114i, 24543i), -1i, 24292i));
    let var_1 = var_0.c.x;
    var var_2 = ~_wgslsmith_add_u32(~((4294967295u << (0u % 32u)) << (func_3(var_0.e.zx, vec4<u32>(4294967295u, u_input.a.x, var_0.d.x, 0u), vec4<f32>(-1084f, var_0.c.x, var_0.c.x, var_0.c.x)).x % 32u)), min(4294967295u, max(global4.x, var_0.b.x) & abs(4294967295u)));
    global2 = array<vec3<i32>, 25>();
    let var_3 = _wgslsmith_f_op_f32(-var_0.c.x);
    return (reverseBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.x, -14322i, -1i, 1i), vec4<i32>(var_0.e.x, -40425i, var_0.e.x, 0i)), -13933i, -var_0.e.x, 1i)) | ~(-vec4<i32>(1i, 25277i, var_0.e.x, 39757i))) | _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(0i, var_0.e.x, ~var_0.e.x, var_0.e.x)), vec4<i32>(~min(-1i, 49950i), 0i, ~101975i, _wgslsmith_mult_i32(-1i >> (1u % 32u), var_0.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-_wgslsmith_mod_i32(i32(-1i) * -2147483647i, -1i), -1i);
    let var_1 = Struct_5(global4.x, u_input.a, 16612u, _wgslsmith_add_vec4_i32(~_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(24890i, 16013i, var_0.x, var_0.x)), vec4<i32>(1i, 24785i, 664i, 0i), func_1()), vec4<i32>(~(var_0.x >> (global4.x % 32u)), 0i & max(var_0.x, 1i), 18105i, -var_0.x)));
    let var_2 = 4294967295u;
    let var_3 = vec2<u32>(_wgslsmith_div_u32(1u, var_1.b.x) ^ ~54381u, _wgslsmith_dot_vec4_u32(~(~max(vec4<u32>(0u, 4294967295u, var_1.a, 39175u), vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x))), vec4<u32>(var_1.c, u_input.a.x, abs(_wgslsmith_sub_u32(4294967295u, global1.x)), 1u)));
    var var_4 = abs(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(33470u, 31641u, 36153u, 1u), ~abs(vec4<u32>(4294967295u, var_3.x, 21908u, var_3.x)), vec4<u32>(_wgslsmith_mult_u32(global1.x, 57641u), 1u, _wgslsmith_add_u32(25290u, var_1.b.x), ~50971u)), vec4<u32>(1u, global4.x, _wgslsmith_div_u32(27447u, var_2), ~global1.x) ^ vec4<u32>(min(4294967295u, 0u), firstLeadingBit(4294967295u), global4.x, _wgslsmith_mult_u32(u_input.a.x, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32((var_4.x << (u_input.a.x % 32u)) ^ global4.x, ~global4.x), countOneBits(min(abs(global3[_wgslsmith_index_u32(var_1.c, 4u)] | var_1.d.yy), ~global3[_wgslsmith_index_u32(4294967295u, 4u)] >> (_wgslsmith_clamp_vec2_u32(var_1.b.xz, var_1.b.yy, vec2<u32>(0u, 55415u)) % vec2<u32>(32u)))), var_1.d.x);
}

