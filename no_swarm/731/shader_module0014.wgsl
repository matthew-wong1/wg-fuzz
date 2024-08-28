struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_5, 9>;

var<private> global2: array<u32, 13>;

var<private> global3: bool;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_0, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(-1855f, arg_0.x), _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a.a.a.x, arg_0.x, 910f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, 662f, 120f), global0.a.a.a))))))), arg_0, true));
    global1 = array<Struct_5, 9>();
    global3 = true;
    let var_1 = ~(~global0.a.a.c);
    let var_2 = u_input.b;
    return var_0.x;
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = vec4<f32>(global0.a.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -215f), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(552f, global0.a.a.a.x, 1172f) - vec3<f32>(1983f, 1000f, -901f)))), -1513f))), _wgslsmith_f_op_f32(-global0.a.a.b));
    global2 = array<u32, 13>();
    var var_1 = Struct_4(Struct_2(global0.a.a, ~(~(u_input.b & vec2<u32>(u_input.e, u_input.b.x)))));
    global1 = array<Struct_5, 9>();
    var var_2 = ~countOneBits(u_input.d);
    return global0.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_5, arg_3: Struct_4) -> Struct_2 {
    global0 = Struct_4(func_2(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true)));
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1747f)), global0.a.a.a.x, _wgslsmith_f_op_f32(-409f - arg_3.a.a.a.x))))));
    var var_2 = _wgslsmith_dot_vec3_u32(firstLeadingBit(~(~(~vec3<u32>(446u, var_0.b.x, 4294967295u)))), max(func_2(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false)).a.c, vec3<u32>(19719u, var_0.b.x, 100782u)));
    var var_3 = select(any(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))), false, 962f >= _wgslsmith_f_op_f32(-global0.a.a.b));
    return func_2(vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), true, select(min(var_0.b.x, 0u), ~u_input.e, any(vec4<bool>(false, true, false, true))) >= ~0u, all(vec4<bool>(true, true, any(vec2<bool>(true, false)), var_0.a.x > 6819i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.d.x, 2147483647i) ^ vec3<i32>(0i, u_input.d.x, u_input.d.x), -vec3<i32>(u_input.a, u_input.a, -2147483647i)), vec3<i32>(_wgslsmith_div_i32(max(u_input.d.x, u_input.a), 42967i), -17108i, u_input.d.x)), ~19293u & _wgslsmith_div_u32(max(_wgslsmith_clamp_u32(14423u, 1u, 3706u), 21093u), global2[_wgslsmith_index_u32(0u, 13u)]), Struct_5(-vec4<i32>(~u_input.a, u_input.a, u_input.a, min(9373i, u_input.a)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(1u, 28622u, global0.a.a.c.x, global0.a.b.x), vec4<u32>(global0.a.a.c.x, u_input.b.x, 102108u, 59909u), true) & ~vec4<u32>(7050u, u_input.b.x, 4294967295u, 16521u), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, global0.a.b.x, 4294967295u, 5613u), vec4<u32>(86898u, global0.a.a.c.x, 60616u, global2[_wgslsmith_index_u32(u_input.b.x, 13u)]))))), Struct_4(Struct_2(Struct_1(vec3<f32>(509f, global0.a.a.a.x, -1267f), _wgslsmith_f_op_f32(-322f * 474f), select(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13218u, 13u)], 13u)], 13u)], u_input.c, global0.a.b.x), global0.a.a.c, true)), _wgslsmith_add_vec2_u32(select(vec2<u32>(global2[_wgslsmith_index_u32(u_input.e, 13u)], global0.a.b.x), global0.a.b, true), select(vec2<u32>(global2[_wgslsmith_index_u32(u_input.c, 13u)], global2[_wgslsmith_index_u32(u_input.e, 13u)]), u_input.b, vec2<bool>(true, false))))));
    var var_1 = Struct_4(Struct_2(func_2(vec4<bool>(false, true, true, true)).a, u_input.b));
    let var_2 = Struct_4(func_2(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.a.b, 710f, 692f))))), 499f, ~func_1(vec3<i32>(0i, -1i, -35386i), global2[_wgslsmith_index_u32(var_2.a.b.x, 13u)], global1[_wgslsmith_index_u32(28704u, 9u)], Struct_4(Struct_2(Struct_1(global0.a.a.a, var_2.a.a.b, vec3<u32>(var_0.a.c.x, 0u, 1u)), var_1.a.a.c.xy))).a.c & vec3<u32>(_wgslsmith_mod_u32(var_2.a.b.x, var_1.a.a.c.x), var_0.b.x, ~global2[_wgslsmith_index_u32(0u, 13u)])), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(var_0.a.c.zz, var_0.b, var_2.a.b), u_input.b), ~(var_1.a.a.c.yy & ~vec2<u32>(73460u, var_0.b.x))));
    let var_4 = 1i;
    global1 = array<Struct_5, 9>();
    global2 = array<u32, 13>();
    global2 = array<u32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.a.b * _wgslsmith_f_op_f32(round(-549f))), func_1(u_input.d.xzw, var_3.a.c.x, global1[_wgslsmith_index_u32(53801u, 9u)], var_2).a.a.xy);
}

