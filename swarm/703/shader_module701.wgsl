struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 11759u;

var<private> global1: Struct_2;

var<private> global2: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(0u, 4294967295u, 15702u, 80693u), vec4<u32>(27300u, 0u, 73448u, 49324u), vec4<u32>(4294967295u, 1u, 34559u, 0u), vec4<u32>(1u, 1u, 1629u, 13127u), vec4<u32>(36309u, 1u, 0u, 46328u), vec4<u32>(0u, 39676u, 1u, 0u), vec4<u32>(4294967295u, 1u, 8278u, 72783u), vec4<u32>(39416u, 12896u, 8562u, 36768u), vec4<u32>(1u, 41250u, 1u, 0u), vec4<u32>(1u, 4294967295u, 1u, 30315u), vec4<u32>(1u, 0u, 31389u, 1u), vec4<u32>(15062u, 27466u, 1u, 1498u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 39218u, 142890u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(3560u, 0u, 21401u, 44089u), vec4<u32>(1u, 1u, 1u, 0u), vec4<u32>(85203u, 17866u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<u32>(90793u, 4294967295u, 4294967295u, 19804u), vec4<u32>(0u, 7621u, 30681u, 65727u), vec4<u32>(28920u, 1u, 21706u, 1u), vec4<u32>(0u, 0u, 4294967295u, 19302u), vec4<u32>(1u, 4294967295u, 45348u, 1u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec3<bool> {
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(405f)), global1.b.e.x)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.e.x)), vec3<u32>(~(~4294967295u), abs(1u) & _wgslsmith_div_u32(u_input.b.x, 39887u), ~4294967295u), max(firstLeadingBit(-vec2<i32>(u_input.a.x, 14596i)), global1.b.c), ~vec2<u32>(32666u, _wgslsmith_div_u32(36953u, 49066u)), vec4<f32>(1406f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.e.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1097f, global1.b.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, global1.b.e.x))))), Struct_1(false, ~vec3<u32>(~u_input.c.x, 64198u, 1u & u_input.e), _wgslsmith_add_vec2_i32(max(vec2<i32>(-2147483647i, 0i), vec2<i32>(u_input.a.x, 0i)), u_input.a.yz << (~vec2<u32>(arg_0, 0u) % vec2<u32>(32u))), u_input.b.xy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(global1.b.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-987f, 1000f, -400f, -711f)))))));
    var var_0 = vec4<bool>(true, true, any(!(!vec4<bool>(global1.a.a, global1.b.a, true, false))), false);
    let var_1 = global1.b.e.x;
    var var_2 = firstLeadingBit(abs(~(~min(vec4<i32>(-30997i, -8517i, global1.b.c.x, 0i), vec4<i32>(-2147483647i, u_input.a.x, global1.a.c.x, 19215i)))));
    let var_3 = Struct_1(any(!vec2<bool>(var_0.x, false)), abs(global1.b.b) & vec3<u32>(global1.a.b.x, 9096u, select(u_input.c.x, ~arg_0, true | var_0.x)), max(min(_wgslsmith_add_vec2_i32(var_2.yx, _wgslsmith_clamp_vec2_i32(global1.a.c, vec2<i32>(var_2.x, var_2.x), global1.b.c)), _wgslsmith_add_vec2_i32(var_2.yw, u_input.a.xz)), -select(vec2<i32>(15121i, 1i), max(vec2<i32>(var_2.x, global1.a.c.x), vec2<i32>(-24550i, u_input.a.x)), -554f == global1.b.e.x)), vec2<u32>(abs(~11195u & firstLeadingBit(global1.b.b.x)), _wgslsmith_mod_u32(abs(4294967295u), ~85658u)), vec4<f32>(-132f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.a.e.x + global1.b.e.x))), _wgslsmith_f_op_f32(-global1.a.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.e.x * 199f) - _wgslsmith_f_op_f32(max(global1.b.e.x, global1.a.e.x))))));
    return vec3<bool>(!(!all(!vec4<bool>(var_3.a, false, true, var_3.a))), any(select(!var_0.yx, vec2<bool>(7830i < u_input.a.x, true), false || !var_0.x)), !var_3.a);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = select(func_3(~firstLeadingBit(abs(1u))), !func_3(~u_input.e), any(func_3(arg_1.b.b.x)));
    global2 = array<vec4<u32>, 24>();
    let var_1 = select(4294967295u, ~(~abs(83828u) & u_input.c.x), false);
    global1 = Struct_2(Struct_1(any(select(arg_0, var_0, select(false, global1.a.a, true))), vec3<u32>(arg_1.a.d.x, ~var_1, global1.b.b.x), vec2<i32>(-24823i, 42023i), vec2<u32>(arg_1.a.b.x, ~u_input.e), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-global1.b.e.x), -1256f, _wgslsmith_f_op_f32(arg_1.a.e.x + -1109f), global1.a.e.x)))), Struct_1(global1.b.b.x > _wgslsmith_div_u32(~var_1, select(arg_1.a.b.x, 0u, arg_1.b.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a.b.x, 101187u, _wgslsmith_sub_u32(0u, u_input.e)), vec3<u32>(global1.b.b.x, 4485u, 78u)), ~(vec2<i32>(-47160i, arg_1.b.c.x) | (u_input.a.xx | global1.b.c)), vec2<u32>(26823u, u_input.c.x), vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.e.x - _wgslsmith_f_op_f32(abs(2017f))), -208f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.e.x * global1.a.e.x)), -916f)));
    global2 = array<vec4<u32>, 24>();
    return Struct_2(Struct_1(func_3(~24626u).x, u_input.b, u_input.a.zy, u_input.b.xz, _wgslsmith_f_op_vec4_f32(-arg_1.b.e)), global1.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_vec2_i32(-(~(u_input.a.yy << (arg_0.a.d % vec2<u32>(32u))) ^ u_input.a.yy), arg_1.b.b.c);
    global2 = array<vec4<u32>, 24>();
    let var_1 = firstTrailingBit(vec4<i32>(-87879i, _wgslsmith_mult_i32(var_0.x, -2147483647i), firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-23220i, var_0.x, -8055i, arg_1.b.a.c.x), vec4<i32>(4007i, u_input.a.x, var_0.x, u_input.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, var_0.x, -2147483647i, arg_1.b.b.c.x), vec4<i32>(arg_1.b.a.c.x, 1i, var_0.x, u_input.a.x)))), 1i));
    var var_2 = arg_1.b.b.e.x;
    global0 = _wgslsmith_dot_vec3_u32(global1.b.b, vec3<u32>(4294967295u, ~_wgslsmith_add_u32(firstLeadingBit(8523u), _wgslsmith_mult_u32(arg_1.b.b.d.x, 4294967295u)), _wgslsmith_clamp_u32(arg_1.b.b.b.x, abs(arg_0.a.b.x), 24829u)));
    return vec4<bool>(true, true, true, !arg_0.a.a);
}

fn func_1(arg_0: vec2<i32>) -> vec3<u32> {
    global0 = ~u_input.e;
    var var_0 = !any(!(!(!vec3<bool>(true, global1.a.a, global1.b.a))));
    global0 = min(~(global1.a.d.x << (16254u % 32u)), _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(u_input.c >> (u_input.c % vec4<u32>(32u)), ~vec4<u32>(1u, global1.a.d.x, 4294967295u, 30439u)), 1u));
    let var_1 = Struct_2(global1.a, Struct_1(all(func_4(func_2(vec3<bool>(true, false, false), Struct_2(Struct_1(false, vec3<u32>(global1.a.b.x, global1.b.b.x, global1.b.d.x), global1.b.c, vec2<u32>(95669u, global1.b.d.x), global1.a.e), Struct_1(global1.b.a, vec3<u32>(global1.a.b.x, 34652u, u_input.b.x), u_input.a.yy, vec2<u32>(u_input.b.x, 4294967295u), vec4<f32>(810f, 398f, global1.b.e.x, global1.b.e.x)))), Struct_3(global1.b.c.x, Struct_2(global1.b, global1.b), vec4<f32>(380f, -130f, global1.a.e.x, global1.a.e.x)))), firstLeadingBit(u_input.c.wwy), global1.a.c, min(_wgslsmith_add_vec2_u32(~global1.b.d, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(global1.b.b.x, 1u))), vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.b.b.x, u_input.e), u_input.b))), _wgslsmith_f_op_vec4_f32(global1.a.e * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1632f, global1.b.e.x, -250f, global1.b.e.x)))))));
    let var_2 = ~vec2<u32>(11598u, min(_wgslsmith_dot_vec2_u32(u_input.d.yz, vec2<u32>(global1.b.b.x, var_1.a.b.x)), global1.a.b.x)) & var_1.a.d;
    return global1.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.e.x;
    let var_1 = Struct_3(-2147483647i, Struct_2(Struct_1(!global1.a.a & any(vec3<bool>(true, global1.b.a, false)), func_1(-vec2<i32>(u_input.a.x, -2147483647i)), global1.b.c, vec2<u32>(u_input.e | 23717u, ~u_input.e), _wgslsmith_f_op_vec4_f32(global1.a.e - _wgslsmith_f_op_vec4_f32(abs(global1.a.e)))), global1.b), global1.a.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.b.e.x) - func_2(!vec3<bool>(var_1.b.a.a, var_1.b.b.a, var_1.b.a.a), var_1.b).a.e.x), 7757u ^ _wgslsmith_mult_u32(27025u, _wgslsmith_mod_u32(1u, ~u_input.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.a.e.x, -1731f), var_1.b.b.e.x)) * _wgslsmith_f_op_f32(-var_1.b.a.e.x))), abs(~var_1.b.b.b) | _wgslsmith_clamp_vec3_u32(u_input.d, u_input.b, var_1.b.a.b));
}

