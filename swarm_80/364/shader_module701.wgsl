struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<u32, 9> = array<u32, 9>(11374u, 20138u, 4294967295u, 35295u, 0u, 0u, 23622u, 0u, 54234u);

var<private> global2: Struct_4;

var<private> global3: Struct_3 = Struct_3(1u, vec4<bool>(true, true, true, true), Struct_2(Struct_1(vec2<u32>(32478u, 39079u), 1020f, vec4<i32>(0i, 1i, -9651i, -27545i), vec3<f32>(-1116f, -820f, 161f), vec3<i32>(-19522i, 2147483647i, i32(-2147483648))), Struct_1(vec2<u32>(14763u, 43535u), -2349f, vec4<i32>(26902i, -19587i, -10726i, 0i), vec3<f32>(-230f, -1717f, 1188f), vec3<i32>(49058i, -1i, 1i)), Struct_1(vec2<u32>(74334u, 39871u), -873f, vec4<i32>(-1i, -66477i, -33577i, i32(-2147483648)), vec3<f32>(-106f, -865f, -1207f), vec3<i32>(1i, -30659i, -1i)), vec2<f32>(1504f, 467f), 12526i));

var<private> global4: Struct_1 = Struct_1(vec2<u32>(26329u, 4294967295u), -250f, vec4<i32>(0i, 25989i, 10920i, 0i), vec3<f32>(230f, -440f, -518f), vec3<i32>(76180i, 32638i, -19955i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_1 {
    let var_0 = !vec4<bool>(false, -103f <= global4.b, !(~7487u > global3.a), global2.c.b.x);
    var var_1 = global2.c.c.a.c.xy;
    global1 = array<u32, 9>();
    global1 = array<u32, 9>();
    let var_2 = _wgslsmith_dot_vec3_u32(u_input.d.yyy, ~u_input.d.zzx);
    return global0[_wgslsmith_index_u32(29545u, 31u)];
}

fn func_3() -> i32 {
    global0 = array<Struct_1, 31>();
    global4 = Struct_1(select(global2.c.c.a.a, global4.a, true), 1000f, _wgslsmith_div_vec4_i32(countOneBits(global4.c), countOneBits(~global3.c.a.c)), global4.d, ~reverseBits(vec3<i32>(~u_input.a, global4.c.x, global3.c.e)));
    let var_0 = vec2<i32>(~_wgslsmith_mod_i32(min(_wgslsmith_dot_vec2_i32(vec2<i32>(global4.c.x, -20164i), vec2<i32>(-26345i, global4.c.x)), 12857i ^ u_input.b.x), -global2.c.c.e), global4.c.x | ~abs(0i));
    let var_1 = 0u;
    var var_2 = func_2();
    return firstLeadingBit(u_input.a);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: i32) -> Struct_3 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 1115f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a.c.a.b, 2050f)) + -433f), global3.c.c.b)), -2919f, _wgslsmith_f_op_f32(195f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global4.d.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b + -1000f), _wgslsmith_f_op_f32(round(-566f)), global3.b.x)))));
    global3 = Struct_3(31100u << ((global1[_wgslsmith_index_u32(max(~32439u, abs(1u)), 9u)] ^ ~(~4294967295u)) % 32u), vec4<bool>(false, arg_0.a.b.x, true, any(arg_0.a.b.yww)), Struct_2(global2.a.c.a, global3.c.b, Struct_1(vec2<u32>(u_input.d.x, _wgslsmith_mult_u32(4294967295u, arg_0.c.c.b.a.x)), 1f, -firstTrailingBit(arg_0.a.c.a.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1385f, -116f, -654f) * global3.c.b.d), ~(~u_input.b)), vec2<f32>(-3603f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1189f * -654f) + arg_0.a.c.d.x)), ~(u_input.a & -56941i)));
    global4 = func_2();
    global3 = Struct_3(_wgslsmith_mod_u32(~(~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(23120u, 9u)], 0u)), arg_0.c.a), select(global2.a.b, global2.c.b, vec4<bool>(any(global3.b.xxy), !global3.b.x && (global3.b.x & true), true, !all(global2.a.b.zzy))), global2.c.c);
    global1 = array<u32, 9>();
    return global2.a;
}

fn func_1(arg_0: bool) -> StorageBuffer {
    global3 = global2.a;
    global3 = func_4(Struct_4(Struct_3(~(~63742u), select(!vec4<bool>(global2.c.b.x, true, global2.c.b.x, false), select(vec4<bool>(global3.b.x, global3.b.x, false, global3.b.x), vec4<bool>(global2.a.b.x, false, arg_0, true), global2.a.b.x), true), Struct_2(func_2(), func_2(), func_2(), vec2<f32>(global3.c.d.x, global4.b), global2.b)), ~func_3(), global2.a, !any(!global3.b)), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1260f - _wgslsmith_f_op_f32(global3.c.b.b * -264f))), _wgslsmith_f_op_f32(-global2.c.c.b.b), global4.d.x), min(countOneBits(u_input.a), global2.c.c.a.e.x));
    let var_0 = vec2<f32>(global4.b, global4.d.x);
    let var_1 = Struct_4(func_4(Struct_4(global2.a, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-17193i, u_input.a), 1i), func_4(Struct_4(Struct_3(global2.c.c.c.a.x, vec4<bool>(false, true, arg_0, global2.c.b.x), Struct_2(global2.a.c.c, global2.a.c.b, Struct_1(vec2<u32>(1u, global4.a.x), -517f, global2.a.c.c.c, vec3<f32>(global4.b, -558f, 857f), u_input.b), vec2<f32>(-176f, global4.b), 2147483647i)), global3.c.c.c.x, global2.c, true), Struct_5(1000f, -2254f, global2.c.c.c.b), global3.c.a.c.x), arg_0), Struct_5(global4.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1456f))), 910f), global2.a.c.e ^ _wgslsmith_mult_i32(global4.c.x, global4.e.x)), -u_input.c, global2.c, any(select(!select(global3.b.wxx, global2.a.b.zyw, vec3<bool>(arg_0, false, true)), global2.c.b.zwx, global2.c.b.x)));
    var var_2 = select(global4.c.zxy, ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, global4.e.x ^ -2147483647i, select(-2147483647i, -1i, global2.c.b.x)), global3.c.b.e, u_input.b), any(!select(func_4(var_1, Struct_5(global3.c.a.b, var_0.x, global3.c.a.b), global2.c.c.e).b.wy, !global3.b.yy, all(vec2<bool>(var_1.c.b.x, arg_0)))));
    return StorageBuffer(func_4(var_1, Struct_5(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(sign(-309f))), _wgslsmith_f_op_f32(f32(-1f) * -2210f), _wgslsmith_f_op_f32(-147f - var_1.a.c.b.d.x)), _wgslsmith_sub_i32(firstLeadingBit(1i), global2.c.c.b.c.x)).c.d.x, ~1u, vec3<i32>(min(_wgslsmith_add_i32(i32(-1i) * -2147483647i, global3.c.a.e.x), var_2.x ^ 2147483647i), global4.e.x, _wgslsmith_mult_i32(-11124i, countOneBits(global2.c.c.a.e.x & 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(-743f, _wgslsmith_f_op_f32(sign(global3.c.a.d.x)), global4.b);
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(~global2.c.a, select(global1[_wgslsmith_index_u32(13067u, 9u)], global3.c.c.a.x, global2.c.b.x)) >> (u_input.d.x % 32u)), 9u)], !(!global2.a.b), global2.c.c);
    global0 = array<Struct_1, 31>();
    let var_2 = _wgslsmith_add_u32(reverseBits(u_input.d.x), max(~(~global3.c.c.a.x), ~73003u));
    var var_3 = global3.b.x;
    let var_4 = _wgslsmith_f_op_f32(-var_0.c);
    var var_5 = select(!vec3<bool>(false, !(!global2.c.b.x), var_1.b.x), var_1.b.xyx, vec3<bool>(!var_1.b.x, all(vec4<bool>(5819u < global1[_wgslsmith_index_u32(29404u, 9u)], var_1.b.x, any(vec2<bool>(true, global2.a.b.x)), true)), !any(!var_1.b)));
    let x = u_input.a;
    s_output = func_1(false);
}

