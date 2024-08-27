struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<i32, 4> = array<i32, 4>(-1i, -38268i, 1i, 2147483647i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global1 = array<i32, 4>();
    global1 = array<i32, 4>();
    var var_0 = -vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a, -15896i, global1[_wgslsmith_index_u32(1u, 4u)]), abs(38560i), ~u_input.a) << (54936u % 32u), max(abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 5108u, u_input.b), vec3<u32>(46441u, u_input.b, 0u)), 4u)]), countOneBits(~global1[_wgslsmith_index_u32(19595u, 4u)])), u_input.a);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-214f + -375f))), _wgslsmith_f_op_f32(229f + _wgslsmith_f_op_f32(-global0.x))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1081f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1867f, global0.x) * vec2<f32>(-607f, global0.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1460f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(313f, 1709f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(385f, -564f)))))));
    global1 = array<i32, 4>();
    return u_input.b;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: bool) -> u32 {
    let var_0 = -u_input.a;
    let var_1 = select(-(~(var_0 << (16269u % 32u))) >> (~(~func_3(vec3<bool>(false, arg_0, arg_2))) % 32u), _wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(global1[_wgslsmith_index_u32(16617u, 4u)], var_0)), abs(vec2<i32>(global1[_wgslsmith_index_u32(1u, 4u)], -2147483647i))), _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 4u)], -1i, global1[_wgslsmith_index_u32(u_input.b, 4u)], u_input.a), vec4<i32>(0i, var_0, var_0, -1i)), var_0)), false);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), 0u, ((i32(-1i) * -7570i) == var_1) || true);
    global1 = array<i32, 4>();
    var var_3 = vec2<bool>(true, true);
    return 51193u ^ u_input.b;
}

fn func_1(arg_0: vec2<i32>) -> vec2<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(-1076f, -610f, true))))), func_2(select(_wgslsmith_f_op_f32(-global0.x) == _wgslsmith_f_op_f32(global0.x + global0.x), false, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 544f, 1000f, global0.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -699f) - vec4<f32>(global0.x, -750f, global0.x, global0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -341f) > _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x))), all(vec3<bool>(all(vec3<bool>(true, true, true)), false, _wgslsmith_mod_u32(u_input.b, u_input.b) >= ~0u)));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x + 531f))), 322f)), u_input.b, any(!(!vec3<bool>(true, var_0.c, var_0.c)))), Struct_1(442f, !select(!vec3<bool>(false, true, var_0.c), !vec3<bool>(var_0.c, false, false), select(vec3<bool>(false, true, var_0.c), vec3<bool>(true, false, true), true)), select(select(select(vec2<bool>(var_0.c, false), vec2<bool>(true, false), var_0.c), vec2<bool>(var_0.c, true), vec2<bool>(var_0.c, var_0.c)), !select(vec2<bool>(true, var_0.c), vec2<bool>(false, true), vec2<bool>(var_0.c, var_0.c)), true), select(!vec2<bool>(false, var_0.c), vec2<bool>(var_0.a < var_0.a, any(vec2<bool>(var_0.c, var_0.c))), vec2<bool>(!var_0.c, true))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -834f), select(select(select(vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(var_0.c, var_0.c, var_0.c), false), !vec3<bool>(var_0.c, var_0.c, var_0.c), true), !select(vec3<bool>(true, true, var_0.c), vec3<bool>(var_0.c, var_0.c, true), var_0.c), true), !(!vec2<bool>(var_0.c, var_0.c)), !select(select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, var_0.c)), vec2<bool>(var_0.c, var_0.c), select(vec2<bool>(true, true), vec2<bool>(true, var_0.c), var_0.c))));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_u32(var_1.a.b, var_0.b), false), var_1.c, Struct_1(var_1.b.a, var_1.b.b, select(vec2<bool>(all(vec4<bool>(var_0.c, false, false, var_1.c.b.x)), any(var_1.b.b.zy)), vec2<bool>(false, global0.x <= global0.x), !var_1.c.d.x), select(vec2<bool>(true, true), !var_1.c.c, var_0.c)));
    let var_3 = ~(~(~vec2<u32>(var_2.a.b, ~15847u)));
    var var_4 = var_1.b;
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(var_2.c.a + var_0.a)), -969f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-311f, var_0.a), vec2<f32>(1128f, -1132f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-196f, var_2.a.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(func_1(abs(-vec2<i32>(select(global1[_wgslsmith_index_u32(u_input.b, 4u)], u_input.a, false), firstTrailingBit(-1i)))));
    global0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_div_f32(433f, global0.x))));
    var var_0 = false;
    var var_1 = u_input.a << (4294967295u % 32u);
    global1 = array<i32, 4>();
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(-global0.x);
    let var_4 = _wgslsmith_div_u32(~u_input.b, 4294967295u);
    var var_5 = Struct_2(_wgslsmith_f_op_f32(-var_3), ~4294967295u, var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1368f, -370f, 689f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1496f, global0.x))))), vec2<f32>(var_5.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1500f)))), ~(vec3<u32>(35783u, 4294967295u, 33055u) ^ (vec3<u32>(0u, 56557u, var_5.b) >> (vec3<u32>(var_5.b, u_input.b, 4294967295u) % vec3<u32>(32u)))) >> (~vec3<u32>(~var_5.b, 29528u, _wgslsmith_sub_u32(u_input.b, 1u)) % vec3<u32>(32u)), firstTrailingBit(max(max(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], 2147483647i, -79100i, global1[_wgslsmith_index_u32(var_5.b, 4u)]) >> (vec4<u32>(10160u, 43658u, var_5.b, 25820u) % vec4<u32>(32u)), ~vec4<i32>(9300i, global1[_wgslsmith_index_u32(0u, 4u)], u_input.a, -1i)), select(vec4<i32>(u_input.a, -39518i, global1[_wgslsmith_index_u32(u_input.b, 4u)], -1i), ~vec4<i32>(global1[_wgslsmith_index_u32(1u, 4u)], u_input.a, u_input.a, -43544i), vec4<bool>(true, true, var_5.c, var_5.c)))), vec2<u32>(0u, _wgslsmith_add_u32(~(u_input.b & u_input.b), 4294967295u)));
}

