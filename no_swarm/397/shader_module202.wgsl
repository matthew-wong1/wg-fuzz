struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec2<f32>(-417f, 1000f)), Struct_2(vec2<f32>(-362f, 1439f)), Struct_2(vec2<f32>(-908f, 1091f)), Struct_2(vec2<f32>(-342f, -1127f)), Struct_2(vec2<f32>(187f, -1036f)), Struct_2(vec2<f32>(1158f, 480f)), Struct_2(vec2<f32>(262f, -740f)), Struct_2(vec2<f32>(510f, -1122f)), Struct_2(vec2<f32>(-743f, 1240f)), Struct_2(vec2<f32>(-1277f, 612f)), Struct_2(vec2<f32>(882f, 257f)), Struct_2(vec2<f32>(1162f, -613f)), Struct_2(vec2<f32>(-410f, 254f)), Struct_2(vec2<f32>(347f, -1302f)), Struct_2(vec2<f32>(872f, -399f)), Struct_2(vec2<f32>(-163f, -801f)), Struct_2(vec2<f32>(-394f, -1733f)), Struct_2(vec2<f32>(-751f, 724f)), Struct_2(vec2<f32>(416f, 1517f)), Struct_2(vec2<f32>(988f, -960f)), Struct_2(vec2<f32>(-1093f, 513f)), Struct_2(vec2<f32>(1896f, -241f)), Struct_2(vec2<f32>(813f, 1582f)), Struct_2(vec2<f32>(-508f, -1000f)));

var<private> global1: array<vec3<u32>, 5>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: f32) -> bool {
    var var_0 = reverseBits(_wgslsmith_dot_vec2_u32(u_input.a ^ u_input.a, vec2<u32>(u_input.a.x, 13758u)));
    var var_1 = reverseBits(global1[_wgslsmith_index_u32(~countOneBits(0u), 5u)]);
    let var_2 = arg_0;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, 352f)), 303f))), arg_2);
    let var_4 = -vec3<i32>(~(_wgslsmith_mod_i32(u_input.b.x, arg_1.x) & ~34103i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, -1i), -vec3<i32>(-6421i, -1i, -1i)), i32(-1i) * -1i);
    return true;
}

fn func_3(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = false;
    global0 = array<Struct_2, 24>();
    var var_1 = Struct_3(!select(!(!vec4<bool>(false, var_0, var_0, var_0)), vec4<bool>(all(vec4<bool>(false, true, var_0, var_0)), true, all(vec2<bool>(var_0, var_0)), false), select(!vec4<bool>(true, var_0, var_0, var_0), select(vec4<bool>(true, true, var_0, true), vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, var_0, var_0, true)), !var_0)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-427f, -192f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2153f, -685f))))));
    var_1 = Struct_3(vec4<bool>(any(select(vec3<bool>(var_1.a.x, var_1.a.x, var_0), select(vec3<bool>(true, true, true), vec3<bool>(false, false, var_1.a.x), var_1.a.wxy), var_1.a.x)), var_1.a.x, var_1.a.x, var_0), Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-459f, var_1.b.a.x)), _wgslsmith_f_op_vec2_f32(min(var_1.b.a, vec2<f32>(var_1.b.a.x, 354f)))))))));
    let var_2 = firstLeadingBit(firstLeadingBit(66158u));
    return Struct_3(var_1.a, global0[_wgslsmith_index_u32(95009u, 24u)]);
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_2, 24>();
    let var_0 = -1i;
    let var_1 = _wgslsmith_div_vec3_i32(-u_input.b, countOneBits(_wgslsmith_add_vec3_i32(select(vec3<i32>(-44124i, -1i, u_input.b.x), -u_input.b, u_input.b.x < var_0), -u_input.b)));
    var var_2 = 61439u;
    global1 = array<vec3<u32>, 5>();
    return func_3(select(_wgslsmith_mod_vec2_u32(vec2<u32>(abs(u_input.a.x), 1u), u_input.a), u_input.a, !func_2(true, u_input.b, _wgslsmith_f_op_f32(2254f - 398f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 24>();
    var var_0 = func_1();
    var var_1 = ~(~u_input.a) >> (u_input.a % vec2<u32>(32u));
    let var_2 = func_1();
    var var_3 = var_0.a;
    let var_4 = _wgslsmith_div_vec4_i32(~(~max(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), -vec4<i32>(2147483647i, -1i, u_input.b.x, -55262i))), -(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x), reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-8569i), _wgslsmith_add_i32(-1i, abs(firstLeadingBit(u_input.b.x) << (u_input.a.x % 32u))));
}

