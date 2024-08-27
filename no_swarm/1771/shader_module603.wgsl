struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 46782i;

var<private> global1: Struct_1 = Struct_1(0i, vec2<u32>(41389u, 13846u), 1207f);

var<private> global2: f32;

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(2147483647i, vec2<u32>(4294967295u, 0u), -617f), Struct_1(-1i, vec2<u32>(1u, 43571u), 963f), Struct_1(46467i, vec2<u32>(50913u, 0u), -436f), Struct_1(1i, vec2<u32>(0u, 0u), -1179f), Struct_1(1i, vec2<u32>(48970u, 18243u), 467f), Struct_1(2147483647i, vec2<u32>(4132u, 15014u), -1406f), Struct_1(-1i, vec2<u32>(42622u, 1u), 823f), Struct_1(1i, vec2<u32>(4294967295u, 86335u), 479f), Struct_1(-1i, vec2<u32>(117888u, 4294967295u), -1249f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    global1 = Struct_1(global1.a, ~(~arg_1.b), _wgslsmith_f_op_f32(min(451f, arg_1.c)));
    global0 = _wgslsmith_dot_vec2_i32(~(arg_0.xy << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 25654u), max(vec2<u32>(global1.b.x, 1u), vec2<u32>(4294967295u, 72284u))) % vec2<u32>(32u))), vec2<i32>(-2026i, (_wgslsmith_clamp_i32(1i, global3.a, -32909i) & 50252i) << ((u_input.a << ((39802u & global1.b.x) % 32u)) % 32u)));
    let var_0 = false;
    return ~(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, 9185u), _wgslsmith_mult_u32(6046u, 41504u)), global3.b.x) >> (~(~(arg_1.b.x << (arg_1.b.x % 32u))) % 32u));
}

fn func_3() -> vec2<u32> {
    let var_0 = global4[_wgslsmith_index_u32(~u_input.a, 9u)];
    let var_1 = vec3<i32>(2147483647i, global1.a, var_0.a);
    var var_2 = _wgslsmith_div_i32(1i, -_wgslsmith_div_i32(global3.a, -9277i));
    var var_3 = all(select(vec2<bool>(true, (u_input.a <= 4965u) || true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, global1.c < -1268f)), any(vec3<bool>(true, false, any(vec4<bool>(true, false, true, false))))));
    var var_4 = true;
    return vec2<u32>(6679u, ~(~47126u));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>) -> vec2<u32> {
    global0 = -9263i;
    var var_0 = arg_1.x;
    global3 = Struct_1(-2147483647i, ~(vec2<u32>(select(60942u, arg_1.x, true), 4294967295u) >> (~(~global3.b) % vec2<u32>(32u))), 555f);
    let var_1 = u_input.a;
    global2 = _wgslsmith_f_op_f32(abs(arg_0.x));
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>((u_input.a & (~u_input.a | ~global3.b.x)) >> (~56060u % 32u), u_input.a, 17495u, _wgslsmith_div_u32(0u << (1u % 32u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(27508u, 18669u, 47504u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 67173u, 1154u), min(vec3<u32>(u_input.a, 4294967295u, global3.b.x), vec3<u32>(0u, global1.b.x, 1u))))));
    global1 = Struct_1(~(-_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, global3.a), _wgslsmith_mod_vec2_i32(vec2<i32>(global3.a, global3.a), vec2<i32>(-12837i, global3.a)))), var_0.wy, global3.c);
    global2 = _wgslsmith_f_op_f32(floor(global1.c));
    let var_1 = Struct_1(-6621i, _wgslsmith_clamp_vec2_u32(select(~(vec2<u32>(52663u, 2792u) << (vec2<u32>(var_0.x, u_input.a) % vec2<u32>(32u))), vec2<u32>(func_1(vec3<i32>(-1i, global3.a, global1.a), Struct_1(global3.a, global3.b, global1.c), vec4<bool>(false, true, true, true)), var_0.x), vec2<bool>(all(vec2<bool>(true, false)), false)), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1041f, -1000f, global1.c) + vec3<f32>(global1.c, 1489f, global1.c)) - vec3<f32>(global1.c, -691f, -1150f)), ~vec2<u32>(4294967295u, global3.b.x)), ~func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, -1000f, -301f)), vec2<u32>(var_0.x, 89323u) ^ var_0.yy)), _wgslsmith_f_op_f32(min(-169f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(929f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_2 = (global1.b.x << (global1.b.x % 32u)) <= ~u_input.a;
    var var_3 = var_1;
    var var_4 = vec4<bool>(!(13483i < abs(~global1.a)), true, false, select(all(vec4<bool>(true, all(vec2<bool>(true, true)), all(vec2<bool>(true, true)), -1701f != global3.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.c, -416f)) == -170f, false));
    var var_5 = -1388f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -244f), var_1.c, _wgslsmith_f_op_f32(global1.c * 643f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, global3.c, var_1.c) + vec3<f32>(385f, var_1.c, var_1.c)))))));
}

