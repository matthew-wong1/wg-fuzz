struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 7>;

var<private> global3: vec3<u32>;

var<private> global4: Struct_4 = Struct_4(vec3<bool>(false, true, false));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    global0 = !(!select(true, false, global1.b.x == (true || global1.b.x)));
    var var_0 = Struct_3(-2147483647i, Struct_2(firstLeadingBit(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(39438u, global3.x, global3.x, global3.x), vec4<u32>(1u, u_input.b.x, 43461u, global3.x))))), 1u, select(vec2<bool>(_wgslsmith_f_op_f32(-global1.c) < _wgslsmith_f_op_f32(global1.c + -351f), global1.b.x & true), global4.a.yy, !global4.a.yx), Struct_2(~(~(~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, global1.a)))));
    var var_1 = vec2<i32>(~min(-u_input.c, ~_wgslsmith_sub_i32(global1.d.x, -20521i)), 1i);
    let var_2 = global1.c;
    global0 = global1.b.x != (!(!(!global1.b.x)) & (global1.b.x & var_0.d.x));
    return 82997u;
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-global1.e.x);
    var var_1 = any(!select(select(!vec4<bool>(false, false, global4.a.x, false), !vec4<bool>(global4.a.x, false, true, true), select(vec4<bool>(global4.a.x, true, global4.a.x, false), vec4<bool>(true, global1.b.x, false, false), vec4<bool>(global4.a.x, false, global4.a.x, true))), select(!vec4<bool>(true, true, true, global1.b.x), vec4<bool>(global4.a.x, false, true, true), !vec4<bool>(global4.a.x, true, true, true)), global4.a.x));
    var var_2 = min(~select(~(~4294967295u), ~firstTrailingBit(global3.x), true), firstTrailingBit(abs(13849u)));
    let var_3 = vec4<bool>(global4.a.x, (true & ((u_input.a ^ global1.d.x) == (u_input.a ^ u_input.a))) | global1.b.x, false, true);
    var var_4 = Struct_3(~u_input.a, Struct_2(vec4<u32>(17049u, _wgslsmith_mod_u32(~global3.x, ~8908u), 4294967295u, ~u_input.b.x)), 0u, var_3.wz, Struct_2(firstLeadingBit(~(~vec4<u32>(51086u, u_input.b.x, 40526u, 1091u)))));
    return select(!vec3<bool>(true, (0u >> (global3.x % 32u)) < _wgslsmith_dot_vec4_u32(vec4<u32>(12005u, global3.x, var_4.b.a.x, global3.x), vec4<u32>(1794u, global3.x, 58593u, global3.x)), true), global4.a, global4.a);
}

fn func_1(arg_0: vec3<i32>) -> Struct_4 {
    global4 = Struct_4(global4.a);
    var var_0 = select(vec4<u32>(~0u, func_2(), 0u, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 48112u, global1.a) | vec3<u32>(u_input.b.x, global3.x, 4294967295u), vec3<u32>(u_input.b.x, 73149u, u_input.b.x) >> (vec3<u32>(global1.a, u_input.b.x, global1.a) % vec3<u32>(32u))))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(global3.x, global1.a, global1.a, 0u)), vec4<u32>(~44835u, 1u, 1u, reverseBits(global1.a))), ~(_wgslsmith_add_vec4_u32(vec4<u32>(global1.a, global3.x, 58235u, 0u), vec4<u32>(u_input.b.x, 4294967295u, global1.a, u_input.b.x)) ^ vec4<u32>(u_input.b.x, 55338u, 8598u, 4294967295u))), false);
    let var_1 = !all(func_3());
    var_0 = ~abs(vec4<u32>(~global1.a, 1u, global3.x, global3.x));
    let var_2 = vec4<u32>(~global1.a, global1.a, global3.x, abs(~(firstLeadingBit(u_input.b.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, var_0.x, var_0.x), vec3<u32>(global1.a, u_input.b.x, 1u)))));
    return Struct_4(vec3<bool>(true, any(vec3<bool>(true, var_1 & var_1, true)), !var_1));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_4(global1.b);
    var var_1 = arg_0;
    global0 = arg_0.a.x;
    let var_2 = global1.c;
    let var_3 = arg_0;
    return Struct_2(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 0u, global1.a, 0u), vec4<u32>(32170u, arg_1, 32514u, arg_1)) >> (~func_2() % 32u), 64839u, ~arg_1, 10841u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, global1.a, 1u, arg_1), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 39156u, 1u, 4294967295u), vec4<u32>(global1.a, 30009u, 0u, global1.a), vec4<u32>(global3.x, 74155u, arg_1, 47119u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1((_wgslsmith_add_vec3_i32(vec3<i32>(global1.d.x, u_input.c, u_input.c), vec3<i32>(u_input.a, global1.d.x, global1.d.x)) << (~vec3<u32>(u_input.b.x, global1.a, 1u) % vec3<u32>(32u))) ^ vec3<i32>(11146i, u_input.c, ~27507i)), 21135u);
    var var_1 = Struct_3(-(~(global1.d.x << (global3.x % 32u))) << ((_wgslsmith_mod_u32(1u >> (var_0.a.x % 32u), 4294967295u) & abs(abs(4294967295u))) % 32u), Struct_2(max(firstLeadingBit(var_0.a), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global1.a, global1.a, var_0.a.x), var_0.a), countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, global3.x, 1u)), abs(var_0.a)))), var_0.a.x, !func_3().zx, var_0);
    global3 = select(~_wgslsmith_div_vec3_u32(var_0.a.zyy, ~(var_1.b.a.yyw >> (var_1.b.a.zwx % vec3<u32>(32u)))), vec3<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, var_0.a.x), vec3<u32>(30235u, var_1.e.a.x, 1u)), ~var_0.a.x, _wgslsmith_sub_u32(4294967295u, ~1u)), true);
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, ~select(global3.x, 1u, false)), 7u)];
    var var_3 = reverseBits(~global1.d.x);
    let var_4 = firstTrailingBit(abs(global1.d & firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(1i, global1.d.x), vec2<i32>(12056i, 21215i)))));
    var var_5 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.e.x, global1.c, 1545f, -2492f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, 1042f, global1.c, global1.c)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, global1.c, 135f, -230f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1488f, var_2.c, var_2.e.x, -375f))))))), _wgslsmith_clamp_vec3_u32(~var_1.e.a.yzx, vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 4294967295u, 53039u, 5212u), vec4<u32>(60017u, 35307u, 4294967295u, 34720u)), _wgslsmith_dot_vec2_u32(global3.yz, u_input.b)), 1u | max(global1.a, var_2.a), ~(~global1.a)), firstLeadingBit(var_1.b.a.xwz)), global1.a, -vec2<i32>(-1i, u_input.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.e.x, -207f)))))));
}

