struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(Struct_1(769f), 0u, vec4<u32>(23079u, 4294967295u, 4294967295u, 52521u), 0u, Struct_3(4294967295u, Struct_1(-826f), vec4<f32>(1510f, -663f, 1865f, -472f))), Struct_5(Struct_1(-1077f), 0u, vec4<u32>(4294967295u, 4294967295u, 0u, 79828u), 56528u, Struct_3(14796u, Struct_1(-440f), vec4<f32>(-766f, -1207f, 1565f, -1390f))), Struct_5(Struct_1(2376f), 4294967295u, vec4<u32>(0u, 4294967295u, 31212u, 91406u), 56754u, Struct_3(2729u, Struct_1(-1200f), vec4<f32>(373f, 2663f, 1000f, -419f))), Struct_5(Struct_1(-364f), 1u, vec4<u32>(0u, 0u, 0u, 58825u), 0u, Struct_3(16314u, Struct_1(1362f), vec4<f32>(956f, 914f, 745f, -2380f))), Struct_5(Struct_1(516f), 59837u, vec4<u32>(35922u, 20194u, 0u, 4294967295u), 82754u, Struct_3(27962u, Struct_1(-1272f), vec4<f32>(543f, 1413f, 1326f, -146f))));

var<private> global1: Struct_2;

var<private> global2: Struct_5;

var<private> global3: f32;

var<private> global4: array<bool, 26> = array<bool, 26>(false, false, true, true, false, true, false, false, false, false, false, true, true, false, true, false, true, false, true, false, true, true, false, false, true, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> u32 {
    var var_0 = ~(~_wgslsmith_mod_vec3_u32(~vec3<u32>(80690u, 0u, 4294967295u), _wgslsmith_add_vec3_u32(global2.c.yxy, global2.c.yzy)));
    var_0 = ~(~reverseBits(abs(global2.c.wwy)));
    let var_1 = Struct_2(global1.a, global1.b);
    var var_2 = var_1.a;
    let var_3 = max(~(~(~(~global2.c.x))), global2.c.x);
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, ~abs(4294967295u), _wgslsmith_dot_vec3_u32(global2.c.zzy, global2.c.www), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.d, 57316u), firstTrailingBit(var_0.zz))), vec4<u32>(~var_3, ~_wgslsmith_sub_u32(global2.e.a, 35169u), var_0.x, 4294967295u)), 31420u);
}

fn func_1() -> Struct_4 {
    var var_0 = global4[_wgslsmith_index_u32(106218u, 26u)];
    let var_1 = !(!global4[_wgslsmith_index_u32(1u, 26u)]);
    var var_2 = -u_input.a.x;
    var var_3 = 18721u;
    var_3 = func_2();
    return Struct_4(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1033f))));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec3<f32>) -> f32 {
    global0 = array<Struct_5, 5>();
    var var_0 = arg_1.a;
    var var_1 = u_input.a.xy;
    let var_2 = Struct_3(max(_wgslsmith_dot_vec3_u32(select(global2.c.yxx, vec3<u32>(14470u, 85351u, 4294967295u), all(arg_2.ww)), vec3<u32>(~5486u, firstLeadingBit(30198u), firstLeadingBit(4294967295u))), firstLeadingBit(~31336u | func_2())), global2.e.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global2.e.c))));
    global0 = array<Struct_5, 5>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-130f))) - global2.a.a)));
}

fn func_4(arg_0: f32) -> Struct_1 {
    global4 = array<bool, 26>();
    global3 = global1.b.a;
    return Struct_1(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_4(_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec2_u32(global2.c.zw, _wgslsmith_sub_vec2_u32(global2.c.xw, vec2<u32>(global2.e.a, global2.d))), func_1(), vec4<bool>(true, true, true, true), global2.e.c.yzx))), global2.d, vec4<u32>(global2.e.a, 0u, 1u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~global2.c.x, global2.d), 4294967295u, ~4294967295u)), min(_wgslsmith_add_u32(abs(global2.e.a), _wgslsmith_add_u32(global2.d, 1u)), global2.b) >> (min(~(~global2.b), 1u) % 32u), global2.e);
    let var_1 = u_input.a.zz;
    global0 = array<Struct_5, 5>();
    var var_2 = all(!vec4<bool>(global4[_wgslsmith_index_u32(~global2.b, 26u)], global4[_wgslsmith_index_u32(100208u, 26u)] || true, true, true)) && (var_0.a.a > func_4(var_0.a.a).a);
    var var_3 = -2147483647i;
    var_2 = true | global4[_wgslsmith_index_u32(var_0.b, 26u)];
    var var_4 = ~abs(firstLeadingBit(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 66966u), ~78274u, global2.c.x)));
    global0 = array<Struct_5, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(4294967295u, abs(_wgslsmith_add_u32(~68799u, var_0.c.x))), ~11998u, -countOneBits(_wgslsmith_div_vec2_i32(min(vec2<i32>(var_1.x, 23422i), vec2<i32>(u_input.a.x, var_1.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(1i, -3049i)))), ~global1.a >> (abs(var_0.e.a) % 32u));
}

