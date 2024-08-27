struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(34659u, vec4<f32>(-844f, -1566f, -898f, 959f));

var<private> global1: Struct_4;

var<private> global2: array<vec4<bool>, 2>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.x))));
    global1 = Struct_4(firstTrailingBit(global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, _wgslsmith_div_f32(global0.b.x, 802f), var_1, var_1)));
    global0 = Struct_4(0u, _wgslsmith_f_op_vec4_f32(floor(global1.b)));
    global0 = Struct_4(_wgslsmith_dot_vec3_u32(~u_input.d.zwy, vec3<u32>(~u_input.c.x, abs(global1.a >> (global0.a % 32u)), global1.a)), global0.b);
    return Struct_2(true, Struct_1(_wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(-global1.b.x), true)), var_0 && var_0, global2[_wgslsmith_index_u32(u_input.d.x, 2u)]));
}

fn func_3(arg_0: f32, arg_1: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(global0.b)))) - vec4<f32>(_wgslsmith_f_op_f32(global0.b.x * arg_0), _wgslsmith_f_op_f32(global0.b.x * global0.b.x), 356f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))));
    global2 = array<vec4<bool>, 2>();
    let var_1 = Struct_4(u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - global1.b.x)))), -919f, _wgslsmith_f_op_f32(floor(func_2().b.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b.x))), -1687f)));
    global1 = Struct_4(firstTrailingBit(~u_input.a.x), vec4<f32>(func_2().b.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(790f + var_1.b.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(928f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -947f), _wgslsmith_f_op_f32(func_2().b.a - _wgslsmith_f_op_f32(-799f - -542f))))));
    let var_2 = ~u_input.d.xzw;
    return func_2();
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = 800f;
    return func_2();
}

fn func_5(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(902f, global0.b.x))))));
    return min(_wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.e | ~1i, _wgslsmith_sub_i32(u_input.e, -1i) | (u_input.e >> (u_input.c.x % 32u)), ~countOneBits(62271i), _wgslsmith_mod_i32(~u_input.e, i32(-1i) * -1i)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-44106i, 5425i, 1i, u_input.e) & vec4<i32>(u_input.e, 1i, -30710i, 13156i), vec4<i32>(-2147483647i, u_input.e, u_input.e, -24940i), select(vec4<i32>(u_input.e, u_input.e, 2147483647i, u_input.e), vec4<i32>(u_input.e, 0i, u_input.e, 10593i), vec4<bool>(false, arg_0.b.c.x, var_0, var_0)))), -vec4<i32>(abs(u_input.e), max(u_input.e, ~42166i), reverseBits(6239i | u_input.e), -abs(0i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> Struct_2 {
    let var_0 = ~func_5(func_4(arg_1, func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1124f) * _wgslsmith_f_op_f32(global1.b.x - 1000f)), func_3(_wgslsmith_f_op_f32(275f + global1.b.x), 1u)));
    let var_1 = vec4<i32>(var_0.x, -24262i, 0i, 2147483647i);
    var var_2 = select(select(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true), func_2().b.c.zzx, select(vec3<bool>(func_2().a, 2147483647i < arg_0.x, true), func_2().b.c.zzw, _wgslsmith_f_op_f32(trunc(-471f)) != -324f)), select(func_4(-13043i, func_3(_wgslsmith_f_op_f32(global0.b.x + 667f), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 1u), u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -581f), func_4(~arg_1, Struct_2(false, Struct_1(491f, true, global2[_wgslsmith_index_u32(u_input.c.x, 2u)])), _wgslsmith_f_op_f32(-global1.b.x), Struct_2(false, Struct_1(global0.b.x, false, global2[_wgslsmith_index_u32(global0.a, 2u)])))).b.c.zyw, vec3<bool>(arg_0.x < var_0.x, true, any(global2[_wgslsmith_index_u32(u_input.b.x, 2u)])), true), (global0.a < 35320u) & true);
    global0 = Struct_4(~global0.a, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + _wgslsmith_f_op_f32(ceil(465f))))), -1498f, _wgslsmith_f_op_f32(max(global1.b.x, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(150f)))));
    var var_3 = select(var_2.xx, !func_3(global0.b.x, u_input.a.x).b.c.yy, vec2<bool>(true, any(func_4(-9998i, func_3(global0.b.x, 23442u), _wgslsmith_f_op_f32(589f * global0.b.x), Struct_2(true, Struct_1(-2024f, var_2.x, global2[_wgslsmith_index_u32(103023u, 2u)]))).b.c.xzy)));
    return func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-220f * -1481f)), global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(u_input.e < 1i);
    var var_1 = u_input.d.x & global1.a;
    global0 = Struct_4(global1.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1936f, 246f, 652f, global1.b.x))) * _wgslsmith_f_op_vec4_f32(-global1.b)))));
    let var_2 = Struct_5(func_1(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.e) << (vec2<u32>(4168u, global0.a) % vec2<u32>(32u)), vec2<i32>(u_input.e, u_input.e)), 43997i), u_input.e), ~vec3<u32>(~global1.a, u_input.b.x, 5438u), ~vec4<u32>(u_input.b.x, ~4294967295u, 0u, countOneBits(global1.a)) & _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, global0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 24153u, u_input.d.x), u_input.b), max(global0.a, 22870u), ~global1.a), ~(~vec4<u32>(79912u, 13153u, 34016u, 1u))), select(select(func_4(~u_input.e, Struct_2(false, Struct_1(global1.b.x, false, global2[_wgslsmith_index_u32(global1.a, 2u)])), _wgslsmith_f_op_f32(step(global0.b.x, -1414f)), func_3(global1.b.x, 1u)).b.c.zw, vec2<bool>(true, true), any(vec4<bool>(false, false, false, false))), func_1(max(_wgslsmith_sub_vec2_i32(vec2<i32>(-30433i, -21600i), vec2<i32>(8003i, u_input.e)), ~vec2<i32>(u_input.e, -14336i)), u_input.e).b.c.zw, func_2().b.c.yy));
    let var_3 = var_2;
    var var_4 = func_2();
    global0 = Struct_4(global1.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.a)) + var_2.a.b.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(func_2().b.a, var_4.b.a)))), global1.b.x, -762f));
    let var_5 = Struct_3(u_input.c.x, vec3<f32>(global0.b.x, var_3.a.b.a, var_2.a.b.a), vec3<bool>(var_3.a.a, var_2.d.x, var_4.a), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, -503f, 124f)) - _wgslsmith_f_op_vec3_f32(-var_5.b))));
}

