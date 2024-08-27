struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: vec2<f32>,
    d: Struct_4,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12>;

var<private> global1: vec3<u32>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

var<private> global3: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global4: array<vec4<i32>, 4>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> bool {
    return false | (28985u < u_input.c.x);
}

fn func_2() -> f32 {
    var var_0 = !vec4<bool>(global2.x, global2.x, !(!global2.x) || func_3(), global2.x);
    let var_1 = ~vec2<u32>(reverseBits(u_input.d), reverseBits(~countOneBits(25757u)));
    global2 = select(var_0.xzz, vec3<bool>(true, false, var_0.x), vec3<bool>(true, select(true, global2.x, func_3()), all(select(select(vec4<bool>(true, var_0.x, global2.x, false), vec4<bool>(false, var_0.x, var_0.x, var_0.x), false), !vec4<bool>(true, true, false, global2.x), true))));
    var var_2 = ~_wgslsmith_clamp_vec2_u32(var_1, ~reverseBits(firstLeadingBit(vec2<u32>(42195u, 1u))), countOneBits(u_input.c.xy));
    let var_3 = ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.e.yz, ~_wgslsmith_mult_vec2_i32(u_input.e.zy, u_input.e.zy)), _wgslsmith_dot_vec4_i32(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(var_2.x), u_input.c.x, ~var_2.x), 4u)], vec4<i32>(max(u_input.e.x, u_input.b), _wgslsmith_dot_vec2_i32(u_input.e.yy, vec2<i32>(2147483647i, u_input.b)), 1i, _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(-2147483647i, u_input.b, u_input.e.x)))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1f))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(13370i, 2147483647i), _wgslsmith_mod_vec2_i32(u_input.e.xz, u_input.e.xy));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(135f)) + _wgslsmith_f_op_f32(trunc(-243f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_2 = Struct_2(vec4<bool>(global2.x, global2.x, any(!(!vec2<bool>(false, global2.x))), !global2.x));
    let var_3 = Struct_5(false & (_wgslsmith_dot_vec4_i32(global4[_wgslsmith_index_u32(~global1.x, 4u)], _wgslsmith_add_vec4_i32(global4[_wgslsmith_index_u32(global1.x, 4u)], vec4<i32>(u_input.e.x, -42080i, var_0.x, u_input.e.x))) > -reverseBits(var_0.x)), ~104163u, _wgslsmith_f_op_vec2_f32(sign(var_1)), global0[_wgslsmith_index_u32(~select(~_wgslsmith_add_u32(u_input.c.x, 4294967295u), ~countOneBits(global1.x), true), 12u)], Struct_2(!select(select(var_2.a, vec4<bool>(global2.x, false, var_2.a.x, global2.x), var_2.a), select(var_2.a, vec4<bool>(var_2.a.x, false, var_2.a.x, global2.x), vec4<bool>(var_2.a.x, var_2.a.x, true, global2.x)), !vec4<bool>(false, false, true, var_2.a.x))));
    let var_4 = select(select(var_3.e.a, select(select(var_3.e.a, select(vec4<bool>(true, var_3.d.a, false, var_2.a.x), var_2.a, global2.x), select(var_3.e.a, var_2.a, var_2.a.x)), select(vec4<bool>(false, var_2.a.x, true, true), select(var_3.e.a, vec4<bool>(true, global2.x, var_3.e.a.x, false), false), func_3()), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, var_2.a.x, global2.x), true | global2.x)), var_2.a.x), !select(select(!vec4<bool>(false, var_3.d.a, true, true), !var_3.e.a, all(vec2<bool>(false, true))), !var_2.a, any(select(var_3.e.a.zxx, vec3<bool>(var_2.a.x, var_2.a.x, true), false))), select(!var_3.e.a, vec4<bool>(all(vec2<bool>(true, false)) | any(vec3<bool>(false, global2.x, var_2.a.x)), var_3.a, false, all(select(vec4<bool>(false, false, false, var_2.a.x), var_3.e.a, global2.x))), select(select(var_2.a, var_2.a, select(vec4<bool>(global2.x, false, var_2.a.x, true), vec4<bool>(var_2.a.x, var_3.a, false, false), var_3.e.a)), var_3.e.a, false)));
    return 4294967295u;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>) -> vec2<u32> {
    let var_0 = Struct_2(select(select(vec4<bool>(all(vec3<bool>(false, global2.x, false)), global2.x, true, true), !select(vec4<bool>(true, global2.x, true, global2.x), vec4<bool>(global2.x, global2.x, global2.x, true), global2.x), false), !vec4<bool>(true, true, global2.x, any(vec3<bool>(false, true, true))), select(select(!vec4<bool>(global2.x, true, false, global2.x), !vec4<bool>(global2.x, true, true, global2.x), !vec4<bool>(global2.x, global2.x, false, global2.x)), !vec4<bool>(global2.x, true, global2.x, global2.x), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(368f, 663f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1980f, -1215f))))), vec2<f32>(_wgslsmith_f_op_f32(round(-825f)), _wgslsmith_f_op_f32(311f - -238f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(abs(1174f)), _wgslsmith_f_op_f32(-1270f * -1362f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(280f, -1000f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(730f, 509f))))))))));
    global4 = array<vec4<i32>, 4>();
    global0 = array<Struct_4, 12>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1133f)))), -(~min(arg_0.x, arg_0.x)), vec3<i32>(_wgslsmith_mod_i32(select(firstTrailingBit(-1i), abs(u_input.e.x), true), firstTrailingBit(max(arg_0.x, -1i))), arg_0.x, ~(-1i)), arg_0.x, global4[_wgslsmith_index_u32(4294967295u, 4u)]);
    return select(~u_input.a, vec2<u32>(_wgslsmith_clamp_u32(302u, ~(~4294967295u), 25861u), _wgslsmith_sub_u32(~abs(77536u), firstTrailingBit(abs(u_input.d)))), var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-445f, 592f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-298f))))), func_4(u_input.e, vec4<u32>(min(_wgslsmith_dot_vec2_u32(global1.zx, vec2<u32>(4294967295u, global1.x)), func_1()), global1.x, _wgslsmith_clamp_u32(32934u, _wgslsmith_div_u32(global1.x, 0u), global1.x), global1.x)));
}

