struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(388f, 913f, -100f, -1491f);

var<private> global1: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(vec3<f32>(1523f, 460f, 547f)), Struct_3(vec3<f32>(1683f, 1109f, 159f)), Struct_3(vec3<f32>(-208f, -872f, 1172f)), Struct_3(vec3<f32>(-1011f, -1370f, -1000f)), Struct_3(vec3<f32>(1220f, 1000f, 285f)), Struct_3(vec3<f32>(-201f, 1229f, 1353f)), Struct_3(vec3<f32>(-2020f, 1085f, -1722f)), Struct_3(vec3<f32>(-1534f, -1283f, 1104f)), Struct_3(vec3<f32>(412f, -128f, 1578f)));

var<private> global2: vec4<i32> = vec4<i32>(27190i, 1i, -5943i, 0i);

var<private> global3: f32 = 823f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = global2.xz;
    let var_1 = Struct_2(Struct_1(vec4<u32>(firstTrailingBit(firstTrailingBit(0u)), 4294967295u, 1u, u_input.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1047f, global0.x, 404f, 685f) * vec4<f32>(-549f, global0.x, -1000f, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-2099f)), global0.x))), u_input.b.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(71718u, 1u, 0u), false) & vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(u_input.d, u_input.c, 1u)))));
    global0 = var_1.a.b;
    var var_2 = global1[_wgslsmith_index_u32(var_1.a.a.x, 9u)];
    let var_3 = var_1;
    return ~(~_wgslsmith_mod_u32(u_input.c, ~u_input.a));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_mult_u32(43042u & u_input.d, func_3()), (u_input.a >> (u_input.a % 32u)) >> (countOneBits(u_input.d) % 32u), firstLeadingBit(_wgslsmith_mod_u32(u_input.a, 4294967295u)), ~min(u_input.c, u_input.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x))), global0.x, select(firstTrailingBit(u_input.b.x), -23904i, 1u < u_input.c), ~(~71256u)));
    let var_1 = var_0.a;
    var var_2 = Struct_3(var_0.a.b.yyw);
    let var_3 = var_2.a.x;
    var_2 = global1[_wgslsmith_index_u32(u_input.d, 9u)];
    return Struct_2(Struct_1(~vec4<u32>(_wgslsmith_sub_u32(u_input.a, var_0.a.e), _wgslsmith_sub_u32(var_0.a.a.x, u_input.a), var_0.a.a.x, _wgslsmith_div_u32(u_input.d, u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.a.x, global0.x, 448f, var_2.a.x), vec4<f32>(1000f, -1427f, -2093f, var_1.b.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.c, var_1.b.x, var_0.a.b.x, var_1.b.x))))), var_2.a.x, 26777i, 4294967295u));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = arg_0.a;
    var var_1 = !all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    var var_2 = arg_2.a;
    var_1 = any(!select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(true, true, true)), true), true));
    let var_3 = arg_0.a.a.wxy & vec3<u32>(12477u, var_2.a.x, var_2.a.x);
    return vec4<f32>(_wgslsmith_f_op_f32(var_2.b.x + arg_0.a.b.x), _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, false), false).a.c * arg_2.a.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1248f)), _wgslsmith_f_op_f32(arg_0.a.b.x + -806f)))), -1163f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.c)) + arg_0.a.b.x))));
}

fn func_1() -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_div_f32(global0.x, -2194f), 441f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(global0.x, -626f)), global0.x))) + _wgslsmith_f_op_vec4_f32(func_4(func_2(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), any(vec4<bool>(false, true, false, false))), vec2<i32>(16707i, -1i), func_2(vec3<bool>(any(vec3<bool>(false, false, false)), true, 30309u > u_input.d), false))));
    global1 = array<Struct_3, 9>();
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_f32(-434f - global0.x);
    let var_2 = vec2<u32>(~_wgslsmith_mod_u32(u_input.a >> (4227u % 32u), max(u_input.c, 2501u)), u_input.a) << (_wgslsmith_mod_vec2_u32(max(min(vec2<u32>(u_input.a, 37876u), vec2<u32>(1u, 57073u)), func_2(vec3<bool>(false, false, true), false).a.a.zz), ~vec2<u32>(36119u, 0u)) % vec2<u32>(32u));
    return vec4<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(max(u_input.a, u_input.a) == 27837u, reverseBits(68199u) >= u_input.a, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), (global2.x == 0i) & all(vec3<bool>(false, false, false)))), all(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), all(vec2<bool>(true, true)))), ~(~15730u << (_wgslsmith_dot_vec4_u32(vec4<u32>(102788u, 12043u, 858u, 62291u), vec4<u32>(var_2.x, u_input.d, var_2.x, 1u)) % 32u)) >= min(u_input.c, _wgslsmith_mod_u32(~48869u, var_2.x >> (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(abs(4018u) == u_input.c, !(0i != u_input.b.x), any(func_1())), vec3<bool>(!select(false, true, true), true, !all(vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(global0.x - global0.x))) == func_2(vec3<bool>(true, true, true), true).a.c);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.zwx + vec3<f32>(-1000f, _wgslsmith_f_op_f32(global0.x * -981f), -1000f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global0.zzw, vec3<f32>(-352f, _wgslsmith_f_op_f32(global0.x * global0.x), global0.x)), vec3<f32>(_wgslsmith_div_f32(-399f, _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -697f)), _wgslsmith_f_op_f32(-1453f * global0.x)), !func_1().zxz)));
    var var_2 = u_input.b.x;
    let var_3 = _wgslsmith_div_f32(-219f, 276f);
    let var_4 = !vec3<bool>(select(var_0.x, any(func_1().wy), var_0.x || any(vec3<bool>(false, true, var_0.x))), !all(!vec3<bool>(true, var_0.x, var_0.x)), !all(vec3<bool>(var_0.x, var_0.x, true)));
    global2 = -_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(firstTrailingBit(-u_input.b), ~(~u_input.b), u_input.b), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_3, func_3(), 1u, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, ~2147483647i, 24106i), u_input.b.ywz));
}

