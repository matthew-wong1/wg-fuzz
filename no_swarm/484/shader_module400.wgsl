struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22>;

var<private> global1: array<vec2<f32>, 29>;

var<private> global2: vec3<f32> = vec3<f32>(-1492f, 1000f, 789f);

var<private> global3: vec3<bool>;

var<private> global4: Struct_3;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> vec3<i32> {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.x, -720f, 1149f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 246f, global2.x))))))) + vec3<f32>(-361f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1115f, -511f) - _wgslsmith_f_op_f32(abs(939f))), global2.x)), global2.x));
    var var_0 = ~(firstTrailingBit(arg_0.a) >> ((arg_3.a.a >> (firstTrailingBit(arg_1.a) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = arg_1.a.x;
    var var_2 = _wgslsmith_f_op_f32(351f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * 1893f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.x * global2.x)))))));
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(global2.x, global2.x), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(1u, 29u)]));
    return u_input.a.zxx;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = Struct_3(vec3<i32>(-1i) * -(~(-vec3<i32>(global4.a.x, global4.a.x, global4.a.x))));
    let var_1 = Struct_3(_wgslsmith_div_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(u_input.e.x, global4.a.x, u_input.a.x)) & func_3(Struct_1(vec4<u32>(1u, 56727u, 7076u, 73324u), global3.xy), Struct_1(vec4<u32>(u_input.b, u_input.b, arg_0.x, 12583u), global3.yx), u_input.c, Struct_2(Struct_1(vec4<u32>(0u, 69831u, 0u, u_input.b), vec2<bool>(arg_1.x, true)))), u_input.e));
    var var_2 = (var_1.a.x >> (arg_0.x % 32u)) <= -28993i;
    global4 = Struct_3(_wgslsmith_div_vec3_i32(var_0.a, vec3<i32>(-abs(global4.a.x), -51808i, ~firstTrailingBit(var_1.a.x))));
    var_0 = Struct_3(vec3<i32>(firstLeadingBit(_wgslsmith_mult_i32(-18666i, u_input.d.x & 1i)), _wgslsmith_mult_i32(~(~global4.a.x), ~(-var_0.a.x)), var_1.a.x));
    return var_1;
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    global2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -740f) + -534f))), _wgslsmith_f_op_f32(step(1002f, _wgslsmith_f_op_f32(-1143f * global2.x))), global2.x);
    var var_0 = u_input.b > (abs(max(u_input.c, abs(73810u))) & 26049u);
    global3 = vec3<bool>(global3.x, u_input.a.x == u_input.d.x, false);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, 534f, 375f))) - vec3<f32>(global2.x, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-285f, 808f, -1590f), vec3<f32>(global2.x, global2.x, -741f)))), vec3<f32>(global2.x, -121f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2039f + global2.x)))));
    global0 = array<vec2<u32>, 22>();
    return Struct_3(-(_wgslsmith_sub_vec3_i32(u_input.a.zzz, u_input.e) << (select(vec3<u32>(u_input.b, 18319u, u_input.c), vec3<u32>(u_input.c, 0u, u_input.c), global3.x) % vec3<u32>(32u))) | u_input.a.zwx);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_3) -> i32 {
    let var_0 = func_4(func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(~0u, u_input.b, 1u), select(vec3<u32>(u_input.c, u_input.b, u_input.c), ~vec3<u32>(39474u, u_input.c, u_input.c), arg_1)), arg_2.yz));
    var var_1 = max(firstTrailingBit(min(50053u, u_input.b ^ 4294967295u)) | u_input.c, u_input.b);
    var var_2 = Struct_2(Struct_1((vec4<u32>(u_input.c, u_input.b, u_input.b, u_input.b) ^ (vec4<u32>(21240u, 37033u, 0u, u_input.c) << (vec4<u32>(28803u, u_input.c, 14570u, u_input.c) % vec4<u32>(32u)))) ^ vec4<u32>(1u << (u_input.c % 32u), 25446u, abs(0u), min(u_input.b, 12870u)), !select(vec2<bool>(arg_2.x, true), select(global3.yy, arg_2.xz, arg_1), any(arg_2.xz))));
    var_2 = Struct_2(var_2.a);
    global1 = array<vec2<f32>, 29>();
    return _wgslsmith_div_i32(abs(~firstTrailingBit(select(2240i, arg_3.a.x, false))), func_4(var_0).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_3(countOneBits(vec3<i32>(~u_input.a.x, global4.a.x, u_input.d.x) & vec3<i32>(func_1(-169f, false, vec3<bool>(true, global3.x, true), Struct_3(vec3<i32>(u_input.a.x, u_input.d.x, u_input.e.x))), countOneBits(u_input.a.x), global4.a.x >> (31861u % 32u))));
    let var_0 = Struct_1(vec4<u32>(u_input.c, ~1u, 41538u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 0u, 0u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 13014u)), firstTrailingBit(vec4<u32>(u_input.c, 38686u, 1u, u_input.b))) << ((_wgslsmith_mult_u32(u_input.c, 9154u) >> (~119993u % 32u)) % 32u)), !(!(!select(vec2<bool>(global3.x, true), vec2<bool>(global3.x, false), false))));
    var var_1 = Struct_2(var_0);
    var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(~var_0.a, vec4<u32>(u_input.c, 4294967295u, var_1.a.a.x, 162272u)) << (firstLeadingBit(vec4<u32>(0u, 1u, var_0.a.x, var_1.a.a.x)) % vec4<u32>(32u)), global3.xy));
    let var_2 = true;
    var var_3 = vec4<i32>(-11939i, global4.a.x, -56333i, min(1i, func_1(_wgslsmith_f_op_f32(sign(2587f)), !var_1.a.b.x, select(vec3<bool>(var_1.a.b.x, var_2, var_2), vec3<bool>(var_1.a.b.x, true, true), vec3<bool>(true, var_0.b.x, false)), Struct_3(global4.a))) ^ -u_input.d.x);
    global3 = vec3<bool>(var_1.a.b.x, !all(select(vec3<bool>(false, var_0.b.x, true), vec3<bool>(var_2, true, var_1.a.b.x), vec3<bool>(false, var_0.b.x, var_2))), any(!vec3<bool>(global2.x > global2.x, global3.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(~vec2<u32>(countOneBits(47362u), var_1.a.a.x), vec2<u32>(15329u, min(4294967295u, var_0.a.x)) << (var_0.a.wz % vec2<u32>(32u))), _wgslsmith_sub_vec4_u32(abs(~var_1.a.a), vec4<u32>(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(var_1.a.a.x, 22u)], var_1.a.a.zx), 1u, 34783u, _wgslsmith_dot_vec2_u32(var_1.a.a.xx, vec2<u32>(var_0.a.x, 4294967295u)))) | ~var_1.a.a, vec4<u32>(abs(~(~63264u)), _wgslsmith_dot_vec4_u32(var_1.a.a, ~_wgslsmith_div_vec4_u32(var_1.a.a, var_0.a)), 1u, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-503f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1438f - global2.x) + global2.x), any(!var_0.b)))));
}

