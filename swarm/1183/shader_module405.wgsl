struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: vec2<bool>;

var<private> global2: vec3<i32>;

var<private> global3: array<f32, 10> = array<f32, 10>(-700f, -1645f, -308f, -975f, 1708f, 613f, -2093f, -177f, -990f, 809f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> f32 {
    var var_0 = Struct_2(~(~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c, 4294967295u), ~u_input.b.x)), global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.c, ~u_input.c), 67353u), 28u)], Struct_1(global3[_wgslsmith_index_u32(u_input.b.x, 10u)]));
    var var_1 = -642f;
    let var_2 = global2.x;
    var var_3 = u_input.b.zx;
    let var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(319f, 1334f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(var_3.x, 10u)], global3[_wgslsmith_index_u32(28647u, 10u)]))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-522f, var_0.c.a)))), var_0.c.a))));
    return -861f;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 10u)]), -1373f)) - -590f));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 0u >> (u_input.c % 32u)), 28u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(!vec4<bool>(any(vec2<bool>(global1.x, true)), global1.x, global1.x, global1.x), !global1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, -2707f, true)) + 1338f));
    global1 = select(vec2<bool>(global1.x, !select(any(vec3<bool>(global1.x, true, true)), false, global1.x)), vec2<bool>(false, true), select(!select(!vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false), !vec2<bool>(global1.x, global1.x)), select(vec2<bool>(global1.x | true, true), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(global1.x, true, global1.x, true)), any(vec4<bool>(global1.x, global1.x, false, true)))), !vec2<bool>(select(true, false, global1.x), !global1.x)));
    var var_2 = global0[_wgslsmith_index_u32(109870u, 28u)];
    return 42898u;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> vec2<f32> {
    global1 = !select(select(select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x)), !(!vec2<bool>(false, global1.x)), !global1.x & any(vec4<bool>(true, true, global1.x, true))), select(!(!vec2<bool>(global1.x, false)), select(vec2<bool>(true, true), !vec2<bool>(true, global1.x), !global1.x), vec2<bool>(any(vec3<bool>(global1.x, true, true)), global1.x)), !(!vec2<bool>(global1.x, global1.x)));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -664f);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), -287f, arg_2.b.a, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 10u)] * arg_2.d.a)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(438f, var_0, -1000f, arg_0.a)) + _wgslsmith_div_vec4_f32(vec4<f32>(1179f, 227f, -937f, 1036f), vec4<f32>(-1586f, 1426f, arg_0.a, var_0)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(-arg_2.c.a)), -2265f, arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4056u, 10u)] + 1161f) + -884f)))) + vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(func_2(), 10u)] * arg_0.a), global3[_wgslsmith_index_u32(51914u & _wgslsmith_clamp_u32(func_2(), 32183u, ~97783u), 10u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_2.c.a)))))), arg_2.c.a));
    let var_2 = arg_1;
    let var_3 = arg_2.b;
    return var_1.wx;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2485f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_0.x, 10u)] * -499f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(global0[_wgslsmith_index_u32(func_2(), 28u)], u_input.a.x, Struct_2(16386u, Struct_1(global3[_wgslsmith_index_u32(71176u, 10u)]), global0[_wgslsmith_index_u32(arg_0.x, 28u)], Struct_1(global3[_wgslsmith_index_u32(34069u, 10u)])))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(29955u, 10u)], 101f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3[_wgslsmith_index_u32(26376u, 10u)], global3[_wgslsmith_index_u32(u_input.c, 10u)]), vec2<f32>(global3[_wgslsmith_index_u32(38370u, 10u)], -344f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(arg_0.x, 10u)], global3[_wgslsmith_index_u32(arg_0.x, 10u)])), _wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(1u, 10u)], -452f), vec2<f32>(global3[_wgslsmith_index_u32(49399u, 10u)], -2551f)), any(vec4<bool>(global1.x, false, global1.x, arg_1.x))))), true && arg_1.x)));
    let var_1 = ~12838u;
    var var_2 = global0[_wgslsmith_index_u32(select(~(~(~firstTrailingBit(28425u))), ~(~var_1), any(arg_1)), 28u)];
    var var_3 = global0[_wgslsmith_index_u32(12460u, 28u)];
    let var_4 = Struct_2(firstTrailingBit(4294967295u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a - -452f), 610f) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(firstLeadingBit(1u), 10u)] - _wgslsmith_f_op_f32(1924f + -1040f)))), Struct_1(_wgslsmith_f_op_f32(-var_3.a)), global0[_wgslsmith_index_u32(~1u, 28u)]);
    return Struct_1(_wgslsmith_f_op_f32(-359f + _wgslsmith_f_op_f32(func_3(!select(vec4<bool>(arg_1.x, false, false, arg_1.x), vec4<bool>(global1.x, true, arg_1.x, global1.x), vec4<bool>(arg_1.x, false, true, arg_1.x)), !global1.x))));
}

fn func_5(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = func_1(_wgslsmith_clamp_vec4_u32(~(countOneBits(vec4<u32>(1u, 80514u, u_input.c, 0u)) >> (max(vec4<u32>(u_input.c, 10543u, 1u, arg_0.a), vec4<u32>(arg_0.a, 19655u, u_input.c, u_input.b.x)) % vec4<u32>(32u))), vec4<u32>(1u, ~u_input.b.x, ~62889u, u_input.b.x), firstTrailingBit(vec4<u32>(arg_0.a << (arg_0.a % 32u), countOneBits(arg_0.a), arg_0.a, 0u))), vec3<bool>(true, false, global1.x));
    var var_1 = -952f;
    let var_2 = ~select(~min(vec3<u32>(8595u, 83940u, 7954u), vec3<u32>(4294967295u, arg_0.a, 46112u)), vec3<u32>(_wgslsmith_clamp_u32(11003u, 26853u, arg_0.a), ~u_input.b.x, 88912u), !vec3<bool>(true, true, global1.x)) ^ min(u_input.b, ~min(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_0.a, arg_0.a), u_input.b), u_input.b & u_input.b));
    var_0 = Struct_1(-441f);
    var var_3 = select(select(select(vec2<bool>(false, false), !vec2<bool>(global1.x, global1.x), !global1.x || global1.x), select(!(!vec2<bool>(false, global1.x)), select(!vec2<bool>(true, global1.x), vec2<bool>(false, global1.x), any(vec2<bool>(false, global1.x))), !(!global1.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, -5596i, u_input.e.x, global2.x), vec4<i32>(4212i, global2.x, global2.x, global2.x)), i32(-1i) * -19269i) != (i32(-1i) * -1i)), select(select(!select(vec2<bool>(true, global1.x), vec2<bool>(false, global1.x), global1.x), select(!vec2<bool>(global1.x, global1.x), vec2<bool>(false, true), !vec2<bool>(global1.x, false)), global1.x), select(vec2<bool>(global1.x, any(vec4<bool>(false, global1.x, global1.x, true))), !(!vec2<bool>(global1.x, global1.x)), all(vec4<bool>(true, global1.x, global1.x, false))), true), select(!vec2<bool>(false & global1.x, any(vec2<bool>(global1.x, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x), global1.x), !vec2<bool>(global1.x, global1.x), false)), select(!select(vec2<bool>(global1.x, true), vec2<bool>(true, global1.x), global1.x), vec2<bool>(true, !global1.x), !select(vec2<bool>(true, false), vec2<bool>(false, global1.x), vec2<bool>(true, true)))));
    return !(!select(vec3<bool>(any(vec2<bool>(true, true)), u_input.d != 1i, any(vec4<bool>(var_3.x, global1.x, false, false))), vec3<bool>(true, true, true), select(vec3<bool>(var_3.x, true, false), vec3<bool>(global1.x, var_3.x, global1.x), select(vec3<bool>(global1.x, var_3.x, global1.x), vec3<bool>(false, global1.x, false), var_3.x))));
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(782f - global3[_wgslsmith_index_u32(u_input.c, 10u)]) * global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, 50976u, u_input.c), 31576u, max(21796u, u_input.b.x)), 10u)]) * -528f), _wgslsmith_f_op_f32(min(1219f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-410f * global3[_wgslsmith_index_u32(55600u, 10u)]) * 939f))))), false));
    var_0 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 10u)]);
    var var_1 = vec4<bool>(true, arg_0, true | any(arg_2.xy), false);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(!vec4<bool>(arg_2.x, var_1.x, var_1.x, false), (arg_2.x || var_1.x) || all(vec4<bool>(true, arg_2.x, false, arg_0)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-207f)), _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.b.x), 10u)])), arg_2.x))));
    global2 = firstTrailingBit(vec3<i32>(21506i, 0i, -6235i));
    return func_1(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.c, abs(25889u)) & vec4<u32>(4294967295u, ~63471u, 40779u, u_input.c), firstTrailingBit(vec4<u32>(u_input.b.x, min(u_input.c, 22180u), u_input.c << (u_input.c % 32u), 27870u))), !var_1.zxz);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<i32>(global2.x, -(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -47068i), select(vec2<i32>(global2.x, u_input.e.x), u_input.a.xz, vec2<bool>(false, global1.x))) >> (1u % 32u)), u_input.a.x | reverseBits(global2.x | global2.x));
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1038f))));
    global0 = array<Struct_1, 28>();
    var var_1 = func_6(any(!vec3<bool>(true == global1.x, true, global1.x)), global2.x, func_5(Struct_2(14020u, func_1(vec4<u32>(u_input.b.x, 29483u, u_input.c, u_input.c), select(vec3<bool>(global1.x, true, true), vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, global1.x, true))), func_1(~vec4<u32>(89101u, 53342u, u_input.b.x, 68368u), select(vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, true, global1.x), true)), Struct_1(_wgslsmith_f_op_f32(min(-649f, var_0))))));
    global2 = u_input.a;
    global0 = array<Struct_1, 28>();
    let var_2 = Struct_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, 17813u), vec4<u32>(u_input.b.x, u_input.c, 1u, 3251u)), 4294967295u, _wgslsmith_div_u32(u_input.c, u_input.c), 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.c), ~vec4<u32>(0u, u_input.c, u_input.b.x, 4294967295u))), global0[_wgslsmith_index_u32(u_input.b.x, 28u)], Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(2487u, 10u)])) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 10u)] - 2303f))))), Struct_1(1007f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_6(false, 23374i, vec3<bool>(false, global1.x, true)), global2.x, var_2)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.b.a, -332f), vec2<f32>(929f, -328f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3[_wgslsmith_index_u32(u_input.c, 10u)], global3[_wgslsmith_index_u32(var_2.a, 10u)]))), global1.x && global1.x)))), vec4<u32>(4294967295u, 51260u, 4294967295u, countOneBits(4294967295u)) | ((~vec4<u32>(var_2.a, u_input.c, 35530u, 0u) ^ vec4<u32>(u_input.c, var_2.a, 52196u, 33216u)) | vec4<u32>(39692u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.b.x, 0u), u_input.b), _wgslsmith_mult_u32(var_2.a, var_2.a), select(14235u, 47096u, global1.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1393f - var_0), _wgslsmith_f_op_f32(min(-938f, global3[_wgslsmith_index_u32(1u, 10u)])))))));
}

