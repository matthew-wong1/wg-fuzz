struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-12220i, 2147483647i);

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_2(vec3<u32>(0u, 1u, 0u)), vec3<i32>(i32(-2147483648), 35170i, -22863i)), Struct_3(Struct_2(vec3<u32>(1u, 1u, 20280u)), vec3<i32>(27232i, 0i, 3413i)), Struct_3(Struct_2(vec3<u32>(4294967295u, 48225u, 4294967295u)), vec3<i32>(-1i, 1i, i32(-2147483648))), Struct_3(Struct_2(vec3<u32>(1u, 14595u, 4735u)), vec3<i32>(-28892i, -34605i, -18496i)), Struct_3(Struct_2(vec3<u32>(43087u, 1u, 1u)), vec3<i32>(1i, -14099i, i32(-2147483648))), Struct_3(Struct_2(vec3<u32>(4294967295u, 1u, 88855u)), vec3<i32>(-77173i, 0i, -3215i)), Struct_3(Struct_2(vec3<u32>(1u, 4294967295u, 11992u)), vec3<i32>(11370i, -1i, 2147483647i)), Struct_3(Struct_2(vec3<u32>(0u, 64380u, 7807u)), vec3<i32>(0i, -11385i, -45424i)), Struct_3(Struct_2(vec3<u32>(4294967295u, 17454u, 35953u)), vec3<i32>(1819i, -9279i, i32(-2147483648))), Struct_3(Struct_2(vec3<u32>(20074u, 0u, 60675u)), vec3<i32>(21090i, 3655i, 2147483647i)), Struct_3(Struct_2(vec3<u32>(4294967295u, 7309u, 1u)), vec3<i32>(-4063i, -9159i, -27360i)), Struct_3(Struct_2(vec3<u32>(42114u, 4294967295u, 1u)), vec3<i32>(36178i, 2147483647i, 0i)), Struct_3(Struct_2(vec3<u32>(57399u, 1u, 107343u)), vec3<i32>(46647i, 0i, -13843i)));

var<private> global2: vec2<f32> = vec2<f32>(-135f, 184f);

var<private> global3: Struct_2;

var<private> global4: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 18631u, _wgslsmith_dot_vec3_u32(select(global3.a, global3.a, global4.x), firstTrailingBit(vec3<u32>(4294967295u, 4314u, 27307u)))), vec3<u32>(18692u, u_input.a, 0u)));
    let var_1 = _wgslsmith_sub_u32(4294967295u, firstTrailingBit(max(u_input.a, 794u)));
    var var_2 = global2.x;
    var var_3 = 1i;
    var var_4 = Struct_3(Struct_2(var_0.a), u_input.c.yzw);
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-652f, -491f))), global2.x, _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(min(global2.x, global2.x)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, -463f) * vec3<f32>(global2.x, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1002f, global2.x, global2.x) * vec3<f32>(-525f, global2.x, global2.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1504f, 409f, global2.x))), vec3<bool>(!global4.x, true, false)))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    let var_0 = 746f;
    global1 = array<Struct_3, 13>();
    var var_1 = Struct_2(~(_wgslsmith_sub_vec3_u32(firstTrailingBit(global3.a), select(vec3<u32>(global3.a.x, global3.a.x, 4294967295u), vec3<u32>(0u, u_input.a, 1u), vec3<bool>(global4.x, global4.x, true))) >> (_wgslsmith_mult_vec3_u32(~global3.a, countOneBits(vec3<u32>(global3.a.x, 0u, global3.a.x))) % vec3<u32>(32u))));
    var var_2 = global1[_wgslsmith_index_u32(var_1.a.x, 13u)];
    var var_3 = Struct_2(~countOneBits(vec3<u32>(max(var_1.a.x, 52077u), max(u_input.a, var_2.a.a.x), global3.a.x)));
    return !vec4<bool>(global4.x, true, any(global4.wz), u_input.a != ~var_2.a.a.x);
}

fn func_1() -> Struct_3 {
    global4 = !select(!select(!vec4<bool>(global4.x, false, false, false), vec4<bool>(false, false, global4.x, false), true), vec4<bool>(true, true, global2.x == -260f, false), select(func_3(func_2(u_input.a), func_2(0u).a.x, func_2(31685u), ~u_input.c.x), vec4<bool>(global4.x, true, 32764u > global3.a.x, true), vec4<bool>(true, true, true, true)));
    global1 = array<Struct_3, 13>();
    let var_0 = func_2(u_input.a);
    global4 = vec4<bool>(!global4.x, global4.x, true, false);
    var var_1 = reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, min(~global3.a.x, global3.a.x << (1u % 32u))), firstTrailingBit(firstTrailingBit(vec2<u32>(global3.a.x, u_input.a)))));
    return global1[_wgslsmith_index_u32(~global3.a.x, 13u)];
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(max(-698f, arg_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-604f)) - _wgslsmith_f_op_f32(-global2.x)), arg_1.a.x)));
    global4 = vec4<bool>(false, global4.x, false, arg_2.x);
    global3 = Struct_2(global3.a);
    let var_1 = Struct_1(vec3<f32>(560f, _wgslsmith_f_op_f32(-921f * _wgslsmith_div_f32(global2.x, var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(floor(-2411f)))))));
    let var_2 = arg_0.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a.x, _wgslsmith_f_op_f32(global2.x * var_0.x))) - _wgslsmith_f_op_f32(round(global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_4(func_1(), func_2(u_input.a), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, global4.x, false), select(vec4<bool>(global4.x, global4.x, global4.x, false), vec4<bool>(true, false, global4.x, global4.x), vec4<bool>(global4.x, true, global4.x, global4.x))))), global2.x, 1348f));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-434f, -1595f, -1092f, 420f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1602f, var_0.a.x, global2.x, var_0.a.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-168f, 450f, -1287f, -740f) - vec4<f32>(var_0.a.x, global2.x, global2.x, var_0.a.x)))))));
    global4 = !vec4<bool>(global4.x, true, all(vec2<bool>(true, all(vec3<bool>(true, false, global4.x)))), true);
    global1 = array<Struct_3, 13>();
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(step(-872f, _wgslsmith_f_op_f32(var_0.a.x * -1998f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(307f)))), var_1.yy)), func_2(var_2.a.a.x).a.x, -1i, -33170i, _wgslsmith_mod_vec2_u32(firstTrailingBit(countOneBits(~vec2<u32>(global3.a.x, var_2.a.a.x))), vec2<u32>(_wgslsmith_dot_vec3_u32(var_2.a.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(36852u, u_input.a, var_2.a.a.x), global3.a, vec3<u32>(28554u, 8193u, 4294967295u))), _wgslsmith_mod_u32(firstTrailingBit(3479u), 31154u >> (u_input.a % 32u)))));
}

