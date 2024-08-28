struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: vec2<i32>;

var<private> global2: Struct_2;

var<private> global3: array<i32, 9> = array<i32, 9>(2147483647i, i32(-2147483648), 1i, 0i, -8404i, -16671i, -1i, -1i, -12675i);

var<private> global4: array<f32, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<bool> {
    let var_0 = -23377i;
    global1 = global2.b.a.zy;
    let var_1 = _wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_mult_vec2_u32(global2.b.c.yw, u_input.a));
    global2 = Struct_2(~(~4294967295u), Struct_1(countOneBits(-(~vec3<i32>(global0[_wgslsmith_index_u32(var_1, 14u)], global1.x, global2.b.a.x))), global2.b.b, ~abs(countOneBits(global2.b.c))));
    global1 = reverseBits(firstLeadingBit(~(global2.b.a.zz ^ vec2<i32>(4206i, 1i))) ^ global2.b.a.zx);
    return vec2<bool>(!(_wgslsmith_mult_i32(3620i ^ global2.b.a.x, ~(-9235i)) > 1i), all(select(vec2<bool>(true, global4[_wgslsmith_index_u32(global2.a, 22u)] == -1348f), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, false)), true))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-643f, _wgslsmith_f_op_f32(global2.b.b.x * _wgslsmith_f_op_f32(step(1132f, arg_2.b.b.x))), -2419f, -842f));
    global4 = array<f32, 22>();
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a, 29257u, 0u ^ ~arg_2.a, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.c.x, global2.a), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.a, arg_2.a), u_input.a))), arg_2.b.c) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(29968u, arg_2.b.c.x), global2.b.c.xz) >> (_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(4294967295u, 44457u)) % vec2<u32>(32u)), ~max(vec2<u32>(u_input.a.x, 80839u), vec2<u32>(arg_1.a, 0u)), ~vec2<u32>(u_input.a.x, u_input.a.x)), select(_wgslsmith_sub_vec2_u32(vec2<u32>(16311u, 53256u), vec2<u32>(u_input.a.x, 0u) << (arg_1.b.c.wz % vec2<u32>(32u))), vec2<u32>(64374u, arg_2.a), func_3())) % 32u);
    var var_2 = Struct_2(var_1, arg_1.b);
    var var_3 = vec2<i32>(-firstLeadingBit(_wgslsmith_mult_i32(i32(-1i) * -11398i, global3[_wgslsmith_index_u32(var_2.a, 9u)] << (4294967295u % 32u))), 9621i);
    return Struct_2(~(~arg_1.b.c.x), Struct_1(arg_1.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.b.x, 476f))), select(~vec4<u32>(var_1, u_input.a.x, 0u, arg_2.a), reverseBits(firstLeadingBit(arg_2.b.c)), all(vec3<bool>(true, true, true)))));
}

fn func_1() -> Struct_2 {
    global4 = array<f32, 22>();
    var var_0 = true;
    global0 = array<i32, 14>();
    let var_1 = func_2(vec4<i32>(global2.b.a.x, -_wgslsmith_div_i32(-2147483647i, 1i), 1i, firstTrailingBit(global3[_wgslsmith_index_u32(u_input.a.x, 9u)])) >> (vec4<u32>(4294967295u, select(global2.b.c.x, u_input.a.x, all(vec4<bool>(false, false, false, false))), ~(u_input.a.x & 1u), _wgslsmith_clamp_u32(min(1u, u_input.a.x), ~0u, countOneBits(47064u))) % vec4<u32>(32u)), Struct_2(firstLeadingBit(global2.b.c.x), global2.b), Struct_2(7987u, Struct_1(global2.b.a << (_wgslsmith_sub_vec3_u32(vec3<u32>(24177u, 4777u, 4294967295u), global2.b.c.xzz) % vec3<u32>(32u)), global2.b.b, vec4<u32>(abs(global2.b.c.x), global2.a, 38281u, 4294967295u))));
    var var_2 = ~(~(~countOneBits(u_input.a.x)));
    return Struct_2(~4294967295u, global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = -2612f;
    global2 = func_1();
    let var_2 = select((_wgslsmith_add_i32(1i, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.a.x, 9u)], global1.x)) << (firstLeadingBit(1u) % 32u)) < ~_wgslsmith_mult_i32(-2147483647i, 0i ^ global1.x), !(!any(!vec2<bool>(var_0, var_0))), true | var_0);
    var var_3 = func_2(vec4<i32>(_wgslsmith_div_i32(global1.x, -global1.x), 1i, 41896i, -10765i), Struct_2(_wgslsmith_div_u32(1u, u_input.a.x), Struct_1(vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(8205u, 71960u), 9u)], 30391i, i32(-1i) * -5014i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.b.b + global2.b.b) * vec2<f32>(993f, global4[_wgslsmith_index_u32(global2.b.c.x, 22u)])), global2.b.c)), Struct_2(_wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.a.x, global2.a), ~(~global2.b.c.x)), global2.b)).b.c.xxw;
    var var_4 = func_1().b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(-vec4<i32>(var_4.a.x, global1.x, -1i, global0[_wgslsmith_index_u32(40881u, 14u)]), func_1(), Struct_2(var_4.c.x, Struct_1(var_4.a, vec2<f32>(var_1, global4[_wgslsmith_index_u32(global2.a, 22u)]), global2.b.c))).b.b.x, func_1().b.b.x, 1124f)), _wgslsmith_dot_vec3_u32(func_1().b.c.xzx, _wgslsmith_add_vec3_u32(vec3<u32>(~var_4.c.x, ~var_4.c.x, var_3.x), vec3<u32>(global2.b.c.x, 4931u, ~var_3.x))));
}

