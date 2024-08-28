struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 20>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(vec3<u32>(78889u, 67351u, 4294967295u)), Struct_5(vec3<u32>(6701u, 4294967295u, 10048u)), Struct_5(vec3<u32>(1u, 6335u, 1u)), Struct_5(vec3<u32>(4581u, 1u, 4294967295u)), Struct_5(vec3<u32>(1u, 42898u, 0u)), Struct_5(vec3<u32>(34469u, 1u, 1u)), Struct_5(vec3<u32>(66262u, 7638u, 28391u)), Struct_5(vec3<u32>(1u, 111218u, 1u)));

var<private> global3: array<vec3<u32>, 1>;

var<private> global4: vec4<f32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = all(!select(!vec2<bool>(false, global1.c), !vec2<bool>(global1.c, true), vec2<bool>(global1.c, true)));
    var var_1 = Struct_3(~(~(~global1.a)), min(~u_input.a, ~u_input.a), all(vec3<bool>(~33368u <= _wgslsmith_clamp_u32(4294967295u, u_input.b, global1.a.x), false, var_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, 825f, -1541f)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.e + vec3<f32>(-1860f, global1.d.x, -1612f)))))), global4.zwx);
    let var_2 = u_input.b >= u_input.c.x;
    let var_3 = ~max(countOneBits(vec4<u32>(u_input.b, ~var_1.a.x, _wgslsmith_clamp_u32(16657u, 1u, 17571u), 1u)), vec4<u32>(~min(17413u, var_1.a.x), countOneBits(select(4294967295u, global1.a.x, var_2)), ~max(0u, 81502u), ~max(1u, 4294967295u)));
    var var_4 = _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(select(global1.a.xyx, global1.a.yyw, any(vec4<bool>(var_0, global1.c, var_0, global1.c))), vec3<u32>(var_3.x >> (18954u % 32u), global1.a.x, 0u)), countOneBits(var_3.x) & _wgslsmith_dot_vec3_u32(vec3<u32>(123683u, 60922u, 0u), global3[_wgslsmith_index_u32(global1.a.x, 1u)] << (vec3<u32>(0u, 19156u, u_input.c.x) % vec3<u32>(32u)))), global1.a.x);
    return _wgslsmith_f_op_f32(min(-1863f, _wgslsmith_f_op_f32(-var_1.d.x)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3) -> u32 {
    let var_0 = ~firstLeadingBit(vec2<i32>(1i, u_input.a));
    var var_1 = arg_1.a;
    let var_2 = global2[_wgslsmith_index_u32(4294967295u, 8u)];
    global4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), 2058f, arg_1.d.x, 393f);
    global4 = vec4<f32>(1212f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.d.x)))) + _wgslsmith_f_op_f32(round(global4.x))), _wgslsmith_f_op_f32(round(global1.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-887f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1.b))))) - 259f));
    return arg_1.a.x;
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(344f + -995f)) - _wgslsmith_f_op_f32(min(global1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -2001f)))), -1382f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1011f - global1.e.x))))));
    let var_1 = ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(func_2(vec4<bool>(arg_0, false, false, global1.c), Struct_3(global1.a, global1.b, global1.c, global4.wyz, vec3<f32>(-472f, 1000f, -600f))), _wgslsmith_mod_u32(global1.a.x, global1.a.x)), ~7549u), func_2(vec4<bool>(select(false, global1.c, arg_0), true, arg_0 | global1.c, global1.c), Struct_3(select(vec4<u32>(global1.a.x, 17052u, u_input.c.x, 1u), global1.a, vec4<bool>(false, true, true, true)), 0i, true, _wgslsmith_f_op_vec3_f32(-var_0), _wgslsmith_f_op_vec3_f32(global1.e + global1.e))));
    var var_2 = true;
    var var_3 = ~vec3<u32>(_wgslsmith_div_u32(0u, 33033u | u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.x, u_input.c.x), select(global1.a.xz, vec2<u32>(var_1, 4294967295u), vec2<bool>(false, true))), 1u) >> (_wgslsmith_add_vec3_u32(global3[_wgslsmith_index_u32(1u, 1u)], ~(u_input.c.wzw ^ ~vec3<u32>(u_input.c.x, u_input.b, 1u))) % vec3<u32>(32u));
    let var_4 = u_input.a;
    return Struct_2(~(~4294967295u));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32) -> u32 {
    let var_0 = ~(~arg_0.b.wz);
    var var_1 = -2147483647i;
    global0 = array<Struct_5, 20>();
    let var_2 = 44308i;
    var_1 = global1.b;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_4(u_input.a, reverseBits(vec4<i32>(-42838i, ~u_input.a, _wgslsmith_mod_i32(global1.b, global1.b), u_input.a)), vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(u_input.a, u_input.a, 0i)), u_input.c.zw), func_1(false), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~(~(vec4<u32>(u_input.c.x, 4294967295u, global1.a.x, u_input.c.x) | vec4<u32>(u_input.b, 17438u, 45387u, 1u))), u_input.c ^ select(_wgslsmith_mult_vec4_u32(global1.a, vec4<u32>(0u, 1u, 4294967295u, 4294967295u)), u_input.c, global1.c)));
}

