struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: u32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: i32;

var<private> global2: vec3<u32>;

var<private> global3: vec2<u32>;

var<private> global4: vec2<f32> = vec2<f32>(695f, -948f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_5) -> vec3<bool> {
    global3 = ~vec2<u32>(~0u, abs(global3.x));
    let var_0 = arg_1.d;
    global1 = -_wgslsmith_add_i32(arg_2.a.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, abs(28082i), ~15553i, -36791i), (vec4<i32>(arg_1.a.x, arg_2.a.a.x, -30095i, 2616i) ^ vec4<i32>(17299i, -22473i, arg_1.a.x, -1i)) | ~vec4<i32>(1i, arg_1.a.x, 52851i, arg_2.a.a.x)));
    let var_1 = 34943i;
    global2 = countOneBits(firstLeadingBit(~(~vec3<u32>(arg_2.a.c, 0u, global3.x))));
    return vec3<bool>(!(true || !arg_0.a.a) || true, !global0[_wgslsmith_index_u32(~(~(arg_1.c ^ global3.x)), 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)]);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> vec2<i32> {
    let var_0 = Struct_4(Struct_3(arg_1.a, Struct_2(arg_0), u_input.b.x, vec3<bool>(arg_1.b.a.a, arg_0.a, true)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -705f)), 762f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1000f)), global4.x)), arg_0.b), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(866f, 1084f, global4.x, 739f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -463f, global4.x, arg_0.b))))))), Struct_3(-_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 0i) >> (global2.yy % vec2<u32>(32u)), arg_1.a ^ vec2<i32>(1i, 2147483647i)), arg_1.b, firstLeadingBit(18158u), func_3(arg_1.b, arg_1, Struct_5(Struct_3(arg_1.a, arg_1.b, 65136u, arg_1.d)))), abs(global3.x));
    let var_1 = var_0.a;
    global1 = -13427i;
    global2 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_1.c << (~global3.x % 32u), ~1u), ~min(vec3<u32>(0u, var_1.c, u_input.a), ~vec3<u32>(4294967295u, var_1.c, var_1.c)));
    global0 = array<bool, 29>();
    return ~arg_1.a;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_5 {
    var var_0 = ~(~0u);
    let var_1 = vec3<bool>(true, global0[_wgslsmith_index_u32(~16817u, 29u)], all(select(select(vec2<bool>(true, false), vec2<bool>(false, global0[_wgslsmith_index_u32(global2.x, 29u)]), false), !vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 29u)]), vec2<bool>(arg_1.a, true))) & arg_1.a);
    let var_2 = var_1.x;
    var var_3 = Struct_5(Struct_3(-func_2(arg_1, Struct_3(vec2<i32>(-1i, 0i), Struct_2(arg_1), global3.x, vec3<bool>(arg_1.a, false, false)), _wgslsmith_div_i32(1i, -13739i), 1u), Struct_2(arg_1), 1u, var_1));
    global3 = ~firstLeadingBit(u_input.b | vec2<u32>(~global2.x, 1u));
    return Struct_5(var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(951f, Struct_1(global0[_wgslsmith_index_u32(33422u, 29u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(422f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-483f, global4.x)))));
    var var_1 = Struct_4(Struct_3(~vec2<i32>(var_0.a.a.x & var_0.a.a.x, abs(-1883i)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -373f), var_0.a.b.a).a.b, u_input.b.x, !vec3<bool>(-52263i < var_0.a.a.x, true, false)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b.a.b, 148f, var_0.a.b.a.b, -1000f) + vec4<f32>(-1139f, global4.x, var_0.a.b.a.b, var_0.a.b.a.b)), vec4<f32>(global4.x, var_0.a.b.a.b, 245f, 228f), true)) * vec4<f32>(378f, global4.x, _wgslsmith_f_op_f32(f32(-1f) * -602f), _wgslsmith_f_op_f32(abs(-1304f)))))), func_1(var_0.a.b.a.b, func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1325f, 1216f, false)), var_0.a.b.a.b)), Struct_1(any(vec3<bool>(global0[_wgslsmith_index_u32(63027u, 29u)], true, var_0.a.d.x)), _wgslsmith_f_op_f32(step(161f, -796f)))).a.b.a).a, max(global3.x, _wgslsmith_sub_u32(reverseBits(~1u), 41187u)));
    var_1 = Struct_4(func_1(global4.x, var_1.a.b.a).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, var_1.b.x, var_0.a.b.a.b, var_0.a.b.a.b) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(var_1.b)), _wgslsmith_f_op_vec4_f32(sign(var_1.b)), select(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), vec4<bool>(true, true, false, true), var_1.a.d.x))))), var_1.c, 11065u);
    global4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.b.zz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 1000f)))) - var_1.b.zz), !var_0.a.d.yx));
    var var_2 = _wgslsmith_sub_vec2_i32(-var_0.a.a ^ ~firstLeadingBit(func_1(var_0.a.b.a.b, var_1.c.b.a).a.a), vec2<i32>(-5089i, _wgslsmith_sub_i32(10196i, abs(firstLeadingBit(var_0.a.a.x)))));
    let var_3 = var_1.c.b.a.a;
    var var_4 = !func_1(-238f, func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.b.a.b * -387f), 1425f)), var_0.a.b.a).a.b.a).a.d.xx;
    var var_5 = func_1(397f, var_1.c.b.a).a.d;
    global4 = var_1.b.wx;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec2_i32(vec2<i32>(-32625i, firstLeadingBit(var_2.x)), vec2<i32>(var_1.c.a.x, var_1.c.a.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_0.a.c | u_input.a), global2.yx), vec4<u32>(8456u, _wgslsmith_div_u32(~(var_0.a.c << (u_input.b.x % 32u)), 14548u), ~_wgslsmith_div_u32(var_0.a.c, var_1.c.c), global2.x), vec4<i32>(-1i, 2147483647i, -11220i, ~(i32(-1i) * -var_1.c.a.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(2364f, 971f, _wgslsmith_f_op_f32(global4.x * var_0.a.b.a.b)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1258f, var_1.a.b.a.b, var_0.a.b.a.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -880f), global4.x, var_0.a.b.a.b)), false)));
}

