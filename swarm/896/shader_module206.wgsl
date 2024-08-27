struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<bool>(false, false, true), true), Struct_1(vec3<bool>(true, false, false), false), Struct_1(vec3<bool>(true, false, true), false), Struct_1(vec3<bool>(false, false, true), false), Struct_1(vec3<bool>(false, true, true), false), Struct_1(vec3<bool>(false, true, true), false), Struct_1(vec3<bool>(true, true, true), false), Struct_1(vec3<bool>(true, true, false), true), Struct_1(vec3<bool>(false, false, false), true), Struct_1(vec3<bool>(true, true, true), false), Struct_1(vec3<bool>(false, false, false), true), Struct_1(vec3<bool>(true, true, true), false), Struct_1(vec3<bool>(false, false, false), false), Struct_1(vec3<bool>(true, true, false), true), Struct_1(vec3<bool>(true, true, true), false), Struct_1(vec3<bool>(false, true, true), true), Struct_1(vec3<bool>(false, false, true), false), Struct_1(vec3<bool>(false, true, true), false), Struct_1(vec3<bool>(false, true, true), true));

var<private> global3: i32 = 14290i;

var<private> global4: array<Struct_2, 16>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(-127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1397f, _wgslsmith_f_op_f32(arg_0.c - -120f))))), -232f);
    global4 = array<Struct_2, 16>();
    global3 = -1i;
    var_0 = _wgslsmith_f_op_f32(floor(-284f));
    let var_1 = 20569u;
    return abs(max(vec3<i32>(min(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.d, global1.e), global1.b), reverseBits(-2147483647i)), abs(firstLeadingBit(global1.d)), ~(arg_3.d & 2147483647i)), vec3<i32>(-34618i, select(arg_0.b.b.x & arg_3.e, -9090i, true), _wgslsmith_mult_i32(arg_0.d.x, _wgslsmith_sub_i32(-33714i, arg_3.e)))));
}

fn func_3() -> vec3<bool> {
    global2 = array<Struct_1, 19>();
    var var_0 = all(vec4<bool>(global1.a, all(vec4<bool>(true, true, true, true)) == (~global1.e < global1.b.x), global1.a && false, true));
    global1 = Struct_2(!(-14940i > global1.e), global1.b, u_input.a, -global1.e, global1.d);
    var var_1 = firstLeadingBit(~(~(~vec2<u32>(global1.c, 810u) >> (~vec2<u32>(56222u, 4294967295u) % vec2<u32>(32u)))));
    let var_2 = vec2<u32>(1u, 1u) & _wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(0u, global1.c)), min(vec2<u32>(28914u, 7361u), vec2<u32>(global1.c, 72443u))), vec2<u32>(global1.c, _wgslsmith_dot_vec3_u32(vec3<u32>(113976u, u_input.a, var_1.x), vec3<u32>(14651u, u_input.a, 0u) ^ vec3<u32>(4294967295u, 57760u, u_input.a))), _wgslsmith_mult_vec2_u32(vec2<u32>(3733u >> (global1.c % 32u), 1u), vec2<u32>(_wgslsmith_div_u32(1u, var_1.x), u_input.a)));
    return !(!(!vec3<bool>(global1.a, global1.a, global1.a)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(!(!(!func_3())), global1.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(trunc(-658f))))), _wgslsmith_f_op_f32(f32(-1f) * -1175f))));
    var var_2 = vec4<i32>(~global1.b.x, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.e, global1.e, 57250i), vec3<i32>(37741i, -16602i, -40644i)), firstLeadingBit(global1.e)), 24173i, ~global1.d) << ((abs(~vec4<u32>(33283u, 27171u, global1.c, u_input.a)) & vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 12884u, 1u), vec3<u32>(global1.c, global1.c, global1.c) >> (vec3<u32>(global1.c, global1.c, u_input.a) % vec3<u32>(32u))), firstTrailingBit(select(u_input.a, 4294967295u, global1.a)), global1.c)) % vec4<u32>(32u));
    let var_3 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, reverseBits(global1.c >> (4294967295u % 32u)), _wgslsmith_clamp_u32(global1.c, 1u, global1.c ^ global1.c)), vec3<u32>(max(~u_input.a, abs(4294967295u)), _wgslsmith_clamp_u32(~20507u, global1.c, u_input.a), 0u)), 16u)];
    global2 = array<Struct_1, 19>();
    return Struct_1(var_0.a, global1.a);
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<u32> {
    global0 = abs(1i >> (~arg_3.c % 32u));
    global3 = abs(0i);
    global3 = _wgslsmith_dot_vec4_i32(-countOneBits(-vec4<i32>(-68377i, -2147483647i, arg_1.x, arg_3.e)), vec4<i32>(-26939i, -3914i ^ countOneBits(global1.d), -2147483647i, arg_3.b.x)) << (_wgslsmith_add_u32(~(abs(arg_3.c) | 1u), 61986u) % 32u);
    var var_0 = Struct_3(firstTrailingBit(~(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 68329u), vec2<u32>(4294967295u, global1.c)) ^ vec2<u32>(arg_3.c, global1.c))), arg_3, _wgslsmith_f_op_f32(min(446f, 1f)), vec2<i32>(arg_1.x ^ _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1.x, -1i), arg_1.xz), i32(-1i) * -firstLeadingBit(arg_1.x)));
    let var_1 = Struct_3(reverseBits(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_0.a.x), var_0.a), _wgslsmith_sub_vec2_u32(var_0.a, vec2<u32>(4294967295u, var_0.a.x))) | ~(var_0.a ^ vec2<u32>(15354u, 71160u))), global4[_wgslsmith_index_u32(0u, 16u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, 817f)), var_0.c) * _wgslsmith_div_f32(-1002f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.c)))))), ~_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(global1.b, -vec2<i32>(8365i, 66634i)), reverseBits(global1.b), ~(~arg_3.b)));
    return ~max(min(~firstLeadingBit(vec2<u32>(var_1.a.x, 21854u)), var_0.a), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_clamp_vec2_u32(select(func_4(true, func_1(Struct_3(vec2<u32>(global1.c, 28857u), global4[_wgslsmith_index_u32(u_input.a, 16u)], 888f, vec2<i32>(-65439i, -1i)), Struct_1(vec3<bool>(global1.a, true, global1.a), global1.a), global2[_wgslsmith_index_u32(u_input.a, 19u)], Struct_2(global1.a, global1.b, global1.c, global1.b.x, 18601i)), func_2(), global4[_wgslsmith_index_u32(~1u, 16u)]), vec2<u32>(firstLeadingBit(u_input.a), min(84730u, 20724u)), vec2<bool>(global1.a, !global1.a)), vec2<u32>(60234u, global1.c), ~func_4(true, vec3<i32>(2147483647i, 24539i, 8516i) << (vec3<u32>(4294967295u, u_input.a, 343u) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(~41574u, 19u)], global4[_wgslsmith_index_u32(54358u, 16u)])), global4[_wgslsmith_index_u32(0u, 16u)], -1059f, -vec2<i32>(func_1(Struct_3(vec2<u32>(0u, 4294967295u), global4[_wgslsmith_index_u32(global1.c, 16u)], -1000f, global1.b), Struct_1(vec3<bool>(false, global1.a, true), true), Struct_1(vec3<bool>(global1.a, false, global1.a), global1.a), global4[_wgslsmith_index_u32(1u << (0u % 32u), 16u)]).x, _wgslsmith_dot_vec4_i32(vec4<i32>(-19821i, 43374i, 0i, -35513i), vec4<i32>(-5005i, global1.b.x, 2147483647i, 11960i))));
    var var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(min(~vec4<u32>(1u, 0u, u_input.a, u_input.a), vec4<u32>(global1.c, var_0.b.c, u_input.a, global1.c)), firstLeadingBit(max(vec4<u32>(var_0.b.c, u_input.a, global1.c, 0u), vec4<u32>(var_0.a.x, 24655u, 26376u, 74607u)))), vec4<u32>(~abs(26790u), ~0u, var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a), ~vec3<u32>(global1.c, 89815u, 16551u))))), 19u)];
    global0 = 0i << (~_wgslsmith_clamp_u32(firstLeadingBit(var_0.b.c | global1.c), reverseBits(0u), _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.c, global1.c, 17047u), ~vec3<u32>(34502u, 1u, u_input.a))) % 32u);
    var var_2 = var_0.b.a;
    var var_3 = true;
    var_2 = abs(_wgslsmith_add_i32(var_0.d.x, var_0.b.e)) < -var_0.d.x;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.c))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-438f, 416f) * vec2<f32>(var_0.c, 573f)))))));
    var var_5 = all(vec2<bool>(select(!var_0.b.a, true, var_0.b.a), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, global1.c, _wgslsmith_div_f32(var_4.x, var_0.c));
}

