struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
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

var<private> global0: array<vec4<f32>, 29>;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(0i, 284f, vec3<i32>(0i, 2147483647i, 13059i));

var<private> global3: vec2<i32>;

var<private> global4: f32 = -254f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_mod_u32(0u, ~1u);
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, global2.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, arg_1.b))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.b, arg_1.b))) * vec2<f32>(var_1.b, 323f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(807f, _wgslsmith_f_op_f32(f32(-1f) * -686f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1679f, global1.b)))))), false));
    global0 = array<vec4<f32>, 29>();
    global1 = var_1;
    return -_wgslsmith_dot_vec2_i32(-arg_0.c.yy, max(~vec2<i32>(global1.c.x, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.c.x, 2147483647i) & var_1.c.yy, firstTrailingBit(arg_1.c.zz))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(~u_input.a, global1.b, _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, global2.c.x, ~(-49659i)), _wgslsmith_clamp_vec3_i32(global2.c, firstLeadingBit(global1.c), global2.c)));
    var var_1 = Struct_1(func_3(Struct_1(31847i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.b)), -1252f), _wgslsmith_mod_vec3_i32(vec3<i32>(-8791i, 2147483647i, 2147483647i), -vec3<i32>(global2.a, global2.a, -45451i))), Struct_1(u_input.a, _wgslsmith_f_op_f32(-1314f + global2.b), -var_0.c)), _wgslsmith_f_op_f32(-1516f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), countOneBits(abs(~vec3<i32>(global2.c.x, -25453i, 0i))));
    var_1 = Struct_1(~var_0.a, global1.b, _wgslsmith_div_vec3_i32(select(_wgslsmith_div_vec3_i32(global2.c, global1.c), vec3<i32>(u_input.a, 2147483647i, -2147483647i), true), max(vec3<i32>(var_1.a, global3.x, global1.a), vec3<i32>(23222i, 2147483647i, var_1.a))) | _wgslsmith_add_vec3_i32(~(-var_1.c), global1.c & select(global1.c, vec3<i32>(-2147483647i, global2.a, 1i), vec3<bool>(false, false, true))));
    global2 = Struct_1(-48418i, -747f, vec3<i32>(-var_0.a, ~(1i << (arg_0.x % 32u)), 1i));
    var var_2 = -select(firstTrailingBit(abs(vec4<i32>(1i, 1i, global1.c.x, global1.a))), abs(~(vec4<i32>(global3.x, 2160i, 48956i, 2147483647i) | vec4<i32>(-37539i, 7167i, global2.c.x, var_1.a))), vec4<bool>(false, all(vec4<bool>(true, false, true, false)), false, any(vec3<bool>(true, false, false))));
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = func_2(~vec2<u32>(77882u, 1u));
    global1 = func_2(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(11279u, 0u) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), vec2<u32>(1u, 1u))));
    var var_1 = select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false))), vec3<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), abs(countOneBits(global2.a)) <= _wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, -21051i), u_input.a), true), false);
    var_1 = vec3<bool>(any(var_1.yy), any(select(select(!vec4<bool>(var_1.x, var_1.x, false, true), select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false), var_1.x), var_1.x | var_1.x), vec4<bool>(all(vec2<bool>(true, var_1.x)), var_1.x, true, any(vec3<bool>(true, var_1.x, true))), select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, false, false, var_1.x), false), vec4<bool>(false, true, true, var_1.x), select(var_1.x, var_1.x, var_1.x)))), var_1.x);
    global0 = array<vec4<f32>, 29>();
    return func_2(~vec2<u32>(1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(Struct_1(u_input.a, _wgslsmith_f_op_f32(-global1.b), _wgslsmith_div_vec3_i32(~global2.c, global1.c) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~1u), 29u)]);
    global0 = array<vec4<f32>, 29>();
    global3 = vec2<i32>(~global1.c.x, _wgslsmith_add_i32(i32(-1i) * -(global3.x & -93472i), abs(2147483647i) | _wgslsmith_clamp_i32(-28354i & u_input.a, reverseBits(-1i), 40745i | global2.c.x)));
    global4 = global1.b;
    let var_0 = abs(vec2<i32>(_wgslsmith_sub_i32(-1i, -21958i) | -func_2(vec2<u32>(0u, 0u)).a, global1.a));
    var var_1 = vec3<bool>(true, true, all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec3<bool>(true, false, false))), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.b, global3.x, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 45384u, 1u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 62810u, 4294967295u, 72532u), vec4<u32>(1u, 21740u, 4294967295u, 62864u)))), vec4<u32>(0u, 1u, 4565u, ~61849u)), abs(vec4<i32>(-(~global1.c.x), countOneBits(1i) | var_0.x, global2.c.x, func_2(~vec2<u32>(1u, 4294967295u)).c.x)), vec3<f32>(-359f, global2.b, 1219f));
}

