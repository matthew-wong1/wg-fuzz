struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(26580u, 0u);

var<private> global1: f32 = 383f;

var<private> global2: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(963f, 1680f), vec2<f32>(1000f, 348f), vec2<f32>(649f, -476f), vec2<f32>(-512f, -224f), vec2<f32>(-1137f, -995f), vec2<f32>(209f, 1000f), vec2<f32>(-719f, 581f), vec2<f32>(-1320f, -1000f), vec2<f32>(806f, -168f), vec2<f32>(849f, 1020f), vec2<f32>(1831f, -1000f), vec2<f32>(364f, -477f), vec2<f32>(-635f, -1000f), vec2<f32>(521f, 568f), vec2<f32>(664f, 271f));

var<private> global3: vec4<bool>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -488f))));
    var var_1 = Struct_1(firstTrailingBit(firstLeadingBit(u_input.a)), firstLeadingBit(vec2<u32>(abs(0u), ~(~arg_0.x))));
    let var_2 = select(_wgslsmith_dot_vec3_i32(abs(-vec3<i32>(arg_2, arg_2, 5613i)) | (abs(vec3<i32>(-794i, arg_2, -43936i)) & ~vec3<i32>(u_input.b, u_input.d, u_input.b)), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-2147483647i, -90440i, 1i)), ~(~vec3<i32>(arg_2, arg_2, 69887i)))), _wgslsmith_sub_i32(arg_2, u_input.b), u_input.b == firstLeadingBit(arg_2));
    let var_3 = arg_3;
    var var_4 = Struct_1(abs(vec4<u32>(~(~56468u), u_input.a.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.a.xxx), vec3<u32>(1u, var_3.c, 10227u)), 1u)), _wgslsmith_div_vec2_u32(min(vec2<u32>(1u, var_1.b.x), ~arg_0.zy), abs(arg_0.zx)));
    return arg_0.zx << (vec2<u32>(0u, max(1u, var_3.c)) % vec2<u32>(32u));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: f32, arg_3: u32) -> vec4<bool> {
    var var_0 = arg_1.wzy;
    global3 = !vec4<bool>(!all(!vec4<bool>(false, false, false, arg_0.x)), global3.x, arg_0.x, global3.x);
    let var_1 = Struct_1(u_input.a, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.yy, _wgslsmith_add_vec2_u32(u_input.a.xy, func_3(vec3<u32>(32943u, global0.x, 62242u), global2[_wgslsmith_index_u32(4294967295u, 15u)], 0i, Struct_2(arg_0.x, true, u_input.c)))), abs(_wgslsmith_clamp_vec2_u32(u_input.a.zy, _wgslsmith_mod_vec2_u32(u_input.a.yw, u_input.a.zz), _wgslsmith_mod_vec2_u32(u_input.a.yx, vec2<u32>(0u, 21138u))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 321f, 1598f, arg_2))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-680f, _wgslsmith_f_op_f32(921f + arg_2), arg_2, _wgslsmith_div_f32(1826f, -1000f))))));
    var var_3 = !(!arg_1.x);
    return arg_1;
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(vec3<bool>(global3.x, !any(vec4<bool>(true, global3.x, global3.x, false)), global3.x), !vec4<bool>(global3.x, any(global3.xy) | false, false, !(!global3.x)), _wgslsmith_f_op_f32(1638f * -1491f), u_input.c >> (reverseBits(29728u) % 32u));
    return Struct_2(true, false, max(global0.x, u_input.c >> (global0.x % 32u)));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = 1738f;
    let var_1 = Struct_2(!any(vec3<bool>(false & arg_0.b, global3.x && arg_0.b, true)), arg_0.a, func_1().c);
    var var_2 = Struct_2(all(global3.wz), true, u_input.c);
    let var_3 = !(!(!func_2(select(vec3<bool>(true, true, arg_0.b), global3.zww, global3.zyz), vec4<bool>(false, true, false, false), -173f, 35382u)));
    global0 = vec2<u32>(var_2.c, reverseBits(global0.x));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-468f - 1929f))))));
    var var_0 = vec2<bool>(all(select(global3.yx, vec2<bool>(true, global3.x), false)), global3.x);
    let var_1 = func_4(func_1());
    var var_2 = Struct_1(select(~reverseBits(u_input.a), u_input.a, any(vec4<bool>(false, true, func_2(vec3<bool>(var_1.a, true, var_1.b), vec4<bool>(true, false, false, false), 116f, 4294967295u).x, global3.x))), u_input.a.yy);
    var var_3 = u_input.a.zx;
    global3 = !vec4<bool>(u_input.b >= _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, u_input.b), -vec3<i32>(-50908i, 1i, u_input.d)), all(func_2(!vec3<bool>(global3.x, true, global3.x), select(vec4<bool>(false, var_1.b, false, var_1.b), vec4<bool>(false, true, true, false), vec4<bool>(false, var_0.x, true, true)), _wgslsmith_f_op_f32(trunc(-231f)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 44839u, 4294967295u), var_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(997f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-559f))), func_2(!(!global3.zwz), !select(vec4<bool>(true, global3.x, false, var_0.x), vec4<bool>(true, global3.x, false, var_0.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-280f - -2281f)), 6798u).x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~u_input.a.x, 4294967295u << (0u % 32u), ~abs(35170u)));
}

