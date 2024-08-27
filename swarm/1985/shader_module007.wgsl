struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(-4471i, 0i, 2147483647i), vec3<i32>(2147483647i, 4646i, -1i), vec3<i32>(-20699i, -43008i, 23254i), vec3<i32>(-48545i, i32(-2147483648), 20026i), vec3<i32>(-21138i, -69480i, -19424i), vec3<i32>(-9552i, 31606i, 1i));

var<private> global1: Struct_5 = Struct_5(vec2<bool>(false, false), true, Struct_2(-594f, vec4<bool>(true, false, false, false), vec3<u32>(76925u, 0u, 30242u), 65998i), vec4<i32>(30069i, i32(-2147483648), -11045i, 73076i));

var<private> global2: array<vec2<bool>, 27>;

var<private> global3: Struct_1 = Struct_1(-1083f, -640f, -1i);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.c.a, -935f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, global1.c.a), 1000f, true))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.a))), global1.c.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global1.c.a, 1322f))))))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1093f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global1.c.a)))), global1.c.a))));
    var var_1 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(global1.c.c, ~(~global1.c.c)), 1u, 13084u);
    global0 = array<vec3<i32>, 6>();
    return u_input.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4) -> vec2<bool> {
    global2 = array<vec2<bool>, 27>();
    let var_0 = -1324f;
    global2 = array<vec2<bool>, 27>();
    global2 = array<vec2<bool>, 27>();
    var var_1 = vec2<u32>(arg_1.a, 869u);
    return select(global1.a, select(!global1.a, vec2<bool>(arg_1.b.x, firstTrailingBit(u_input.a) == 39869u), !vec2<bool>(!arg_1.b.x, any(vec2<bool>(arg_1.b.x, global1.b)))), global1.b);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: i32) -> u32 {
    var var_0 = vec2<i32>(_wgslsmith_div_i32(0i, 1i), arg_2 << (abs(u_input.a) % 32u)) ^ _wgslsmith_clamp_vec2_i32(-(~vec2<i32>(-18625i, -61432i) ^ _wgslsmith_div_vec2_i32(vec2<i32>(89626i, 57581i), global1.d.yw)), -global1.d.zw, vec2<i32>(-arg_2 | -1i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.c, 31901i, -1i), global0[_wgslsmith_index_u32(17072u, 6u)]))));
    var var_1 = select(vec2<bool>(any(global1.c.b), all(vec3<bool>(all(vec3<bool>(global1.c.b.x, false, global1.a.x)), global1.a.x, all(global1.c.b)))), global1.a, global1.b);
    var var_2 = Struct_5(func_4(vec2<i32>(_wgslsmith_sub_i32(-17365i << (1u % 32u), -arg_2), 0i), Struct_4(func_3(~vec2<u32>(18550u, arg_0), select(global2[_wgslsmith_index_u32(arg_0, 27u)], global1.a, vec2<bool>(global1.c.b.x, var_1.x)), ~global1.c.c.zz, _wgslsmith_sub_i32(46614i, -1i)), vec4<bool>(false, false, true, var_1.x))), var_1.x, global1.c, _wgslsmith_mod_vec4_i32(global1.d, global1.d));
    let var_3 = global2[_wgslsmith_index_u32(func_3(~(~global1.c.c.yx << (vec2<u32>(global1.c.c.x, arg_0) % vec2<u32>(32u))), vec2<bool>(global1.a.x, any(global1.c.b)), global1.c.c.zz, 9798i), 27u)];
    var_0 = global1.d.wz;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, _wgslsmith_mod_u32(min(_wgslsmith_mod_u32(var_2.c.c.x, 113541u), _wgslsmith_mult_u32(4294967295u, var_2.c.c.x)), ~select(83294u, 14955u, false)), ~20585u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.c.x, 0u), global1.c.c.xy))), vec4<u32>(~(~40943u), _wgslsmith_div_u32(min(var_2.c.c.x, u_input.a), ~u_input.a), 4294967295u, ~global1.c.c.x));
}

fn func_1() -> bool {
    let var_0 = Struct_4(~5648u, vec4<bool>(global1.a.x, global1.a.x, all(vec3<bool>(all(global2[_wgslsmith_index_u32(u_input.a, 27u)]), true, global1.c.b.x)), true));
    var var_1 = 1i;
    let var_2 = _wgslsmith_dot_vec4_u32(~firstTrailingBit(~vec4<u32>(var_0.a, u_input.a, global1.c.c.x, 53001u)), vec4<u32>(8972u, abs(55372u), firstTrailingBit(_wgslsmith_clamp_u32(~var_0.a, 0u, countOneBits(global1.c.c.x))), ~(firstTrailingBit(23626u) | 4294967295u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(944f, global3.b)), global3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.a))) * global1.c.a));
    var var_4 = Struct_3(vec4<u32>(abs(func_2(reverseBits(var_2), 1f, -2147483647i)), _wgslsmith_div_u32(~35875u, 4294967295u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(~global1.c.c.x, _wgslsmith_mod_u32(0u, var_0.a), 4294967295u, var_2 >> (17956u % 32u)), vec4<u32>(1u, 1u, ~u_input.a, 1u))), true);
    return func_4(~vec2<i32>(firstTrailingBit(_wgslsmith_div_i32(8447i, 29235i)), global1.c.d), Struct_4(59543u, !select(global1.c.b, select(vec4<bool>(global1.b, global1.c.b.x, global1.a.x, true), var_0.b, true), select(var_0.b.x, global1.a.x, global1.c.b.x)))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec2<bool>(!global1.b, func_1()), func_4(global1.d.xy, Struct_4(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.c.x, u_input.a), global1.c.c.zx), !select(vec4<bool>(true, global1.b, global1.c.b.x, false), vec4<bool>(global1.b, global1.c.b.x, false, true), global1.b))), select(select(select(global1.c.b.yy, !global2[_wgslsmith_index_u32(u_input.a, 27u)], true), select(vec2<bool>(global1.b, true), global2[_wgslsmith_index_u32(global1.c.c.x, 27u)], all(vec4<bool>(global1.b, true, true, false))), any(vec3<bool>(global1.a.x, global1.c.b.x, global1.a.x))), vec2<bool>(true, global1.b), global2[_wgslsmith_index_u32(global1.c.c.x >> (~(0u & global1.c.c.x) % 32u), 27u)]));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1469f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.c.a), 581f)))), 1789f, _wgslsmith_dot_vec2_i32(global1.d.xy, -abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global3.c), global1.d.yy))));
    let var_2 = ~(~(~vec4<u32>(~0u, _wgslsmith_dot_vec2_u32(global1.c.c.xz, global1.c.c.yy), select(35918u, 4294967295u, global1.b), ~24385u)));
    let var_3 = Struct_3(_wgslsmith_clamp_vec4_u32(var_2, ~var_2, var_2), -_wgslsmith_mult_i32(select(-2485i, 64550i, true), 1i) == select(reverseBits(global1.d.x), ~(-1i), true));
    global0 = array<vec3<i32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(26060i), 7619i);
}

