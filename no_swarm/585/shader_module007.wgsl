struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(vec4<u32>(4294967295u, 0u, 6597u, 4294967295u), 4294967295u), Struct_4(vec4<u32>(4294967295u, 44648u, 14114u, 15669u), 21659u), Struct_4(vec4<u32>(48035u, 3571u, 1u, 4294967295u), 1u), Struct_4(vec4<u32>(27613u, 1u, 91439u, 75164u), 49184u), Struct_4(vec4<u32>(5197u, 4294967295u, 4294967295u, 4294967295u), 37386u), Struct_4(vec4<u32>(20376u, 12644u, 1u, 40547u), 45190u), Struct_4(vec4<u32>(4294967295u, 12333u, 0u, 0u), 45117u), Struct_4(vec4<u32>(56754u, 7022u, 1u, 1u), 62338u), Struct_4(vec4<u32>(199u, 59674u, 68840u, 1u), 13397u), Struct_4(vec4<u32>(12327u, 42308u, 28448u, 28979u), 0u), Struct_4(vec4<u32>(4294967295u, 0u, 1u, 81434u), 0u), Struct_4(vec4<u32>(9493u, 0u, 0u, 4294967295u), 25956u), Struct_4(vec4<u32>(1u, 40792u, 18523u, 5429u), 0u), Struct_4(vec4<u32>(1u, 29243u, 2796u, 17369u), 9331u), Struct_4(vec4<u32>(1u, 0u, 4878u, 0u), 4294967295u), Struct_4(vec4<u32>(26858u, 32640u, 0u, 4771u), 1u), Struct_4(vec4<u32>(1u, 24043u, 1u, 4294967295u), 4294967295u), Struct_4(vec4<u32>(0u, 3689u, 0u, 30959u), 38019u), Struct_4(vec4<u32>(5064u, 87052u, 1u, 1u), 13349u), Struct_4(vec4<u32>(13286u, 60523u, 1u, 61174u), 74013u), Struct_4(vec4<u32>(55659u, 1u, 28437u, 0u), 0u), Struct_4(vec4<u32>(4294967295u, 0u, 1u, 25574u), 50064u), Struct_4(vec4<u32>(0u, 3579u, 4294967295u, 78710u), 37199u), Struct_4(vec4<u32>(1u, 4294967295u, 7746u, 35087u), 54737u), Struct_4(vec4<u32>(0u, 51180u, 0u, 0u), 1u), Struct_4(vec4<u32>(45325u, 4294967295u, 0u, 1u), 13755u), Struct_4(vec4<u32>(89511u, 0u, 20265u, 4294967295u), 4294967295u), Struct_4(vec4<u32>(17497u, 0u, 4294967295u, 1u), 5793u), Struct_4(vec4<u32>(26397u, 2112u, 4294967295u, 6379u), 4366u));

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> vec4<bool> {
    let var_0 = ~global0.a.a.xy;
    var var_1 = min(firstTrailingBit(max(vec3<i32>(~global0.c.x, 1i, 35644i >> (global0.a.a.x % 32u)), ~global0.c.yzw | reverseBits(global0.c.zyw))), -global0.c.zxy);
    var var_2 = vec4<i32>(u_input.b.x, var_1.x, -2147483647i, -1i);
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.c.zxw), arg_0.xyw), 29u)];
    let var_4 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(arg_0.x, 1u) ^ _wgslsmith_div_u32(8791u, var_3.a.x)), 29u)];
    return select(select(select(!vec4<bool>(false, global0.a.b.a.x, true, true), select(vec4<bool>(global0.a.c.a.x, global0.a.c.a.x, global0.a.b.a.x, false), !vec4<bool>(false, global0.a.d.a.x, global0.d.a.x, true), select(vec4<bool>(global0.d.a.x, global0.a.d.a.x, global0.d.a.x, global0.a.c.a.x), vec4<bool>(global0.a.d.a.x, global0.d.a.x, global0.d.a.x, global0.d.a.x), false)), !vec4<bool>(global0.a.d.a.x, true, global0.a.d.a.x, false)), !select(select(vec4<bool>(false, true, global0.a.c.a.x, global0.a.d.a.x), vec4<bool>(true, global0.a.d.a.x, false, global0.d.a.x), vec4<bool>(false, global0.d.a.x, global0.d.a.x, true)), vec4<bool>(global0.a.d.a.x, global0.d.a.x, global0.a.d.a.x, global0.d.a.x), !global0.d.a.x), false), !(!select(vec4<bool>(false, global0.a.b.a.x, true, false), select(vec4<bool>(global0.d.a.x, global0.d.a.x, true, global0.a.b.a.x), vec4<bool>(global0.d.a.x, global0.a.c.a.x, global0.a.c.a.x, false), global0.a.b.a.x), vec4<bool>(global0.d.a.x, global0.a.b.a.x, false, global0.a.c.a.x))), select(vec4<bool>(all(global0.d.a.yz), global0.d.a.x & (var_1.x >= 15744i), all(global0.d.a), arg_0.x >= (global0.a.a.x | 1u)), !vec4<bool>(global0.a.d.a.x, false, true, global0.a.c.a.x), arg_1 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2023f - arg_1))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_2(~arg_2.a, global0.a.c, global2[_wgslsmith_index_u32(select(u_input.c.x, _wgslsmith_dot_vec4_u32(select(global0.a.a << (vec4<u32>(global0.a.a.x, arg_2.b, 4294967295u, arg_1.x) % vec4<u32>(32u)), u_input.c << (vec4<u32>(46213u, 13109u, global0.a.a.x, 1u) % vec4<u32>(32u)), false), firstTrailingBit(u_input.c)), global0.a.b.a.x), 8u)], global0.a.d);
    global2 = array<Struct_1, 8>();
    let var_1 = global0.c.x & global0.c.x;
    var var_2 = Struct_4(u_input.c, ~(~arg_2.b));
    let var_3 = _wgslsmith_f_op_vec3_f32(arg_3.zyx - _wgslsmith_f_op_vec3_f32(arg_3.yxx - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(arg_3.zwy, _wgslsmith_div_vec3_f32(arg_3.wyx, vec3<f32>(871f, -1102f, global0.b.x))))))));
    return vec3<bool>(var_0.d.a.x, false, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_1, -1i), vec2<i32>(~var_1, _wgslsmith_mod_i32(1i, u_input.b.x))) <= ~(~_wgslsmith_sub_i32(global0.c.x, var_1)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> bool {
    let var_0 = select(abs(u_input.b.x), -_wgslsmith_add_i32(_wgslsmith_sub_i32(-34771i << (global0.a.a.x % 32u), 50447i), 11532i), true);
    var var_1 = global2[_wgslsmith_index_u32(1u, 8u)];
    var_1 = arg_1.b;
    var var_2 = 0i;
    var var_3 = select(func_4(select(!vec4<bool>(var_1.a.x, arg_1.c.a.x, true, false), select(func_3(vec4<u32>(4294967295u, arg_1.a.x, arg_1.a.x, arg_1.a.x), -186f), vec4<bool>(false, global0.a.d.a.x, var_1.a.x, global0.d.a.x), vec4<bool>(true, true, true, false)), vec4<bool>(!var_1.a.x, 1385f >= global0.b.x, true, global0.b.x > -828f)), vec4<u32>(~_wgslsmith_add_u32(39500u, 40419u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(arg_1.a, u_input.c), abs(4294967295u)), u_input.c.x ^ ~arg_1.a.x, 20302u), global1[_wgslsmith_index_u32(~1u, 29u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.b.x, global0.b.x, 267f, 694f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -1009f, global0.b.x, global0.b.x)), all(global0.a.c.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1917f, global0.b.x, -768f, global0.b.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1635f, -139f, -835f, global0.b.x))), vec4<bool>(false, var_1.a.x, false, var_1.a.x))))), func_4(!(!vec4<bool>(var_1.a.x, global0.d.a.x, true, arg_1.d.a.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, u_input.c.x, global0.a.a.x, arg_1.a.x), ~u_input.c), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, ~vec4<u32>(4294967295u, 0u, global0.a.a.x, 0u)), 29u)], _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b.x, 960f, global0.b.x, -1333f)))))))), var_1.a.x);
    return ~(~_wgslsmith_add_u32(u_input.c.x, ~arg_1.a.x)) < _wgslsmith_div_u32(~4294967295u, 4294967295u);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    let var_0 = arg_2.a;
    global1 = array<Struct_4, 29>();
    let var_1 = reverseBits(vec3<u32>(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(19345u, arg_0.a.x, var_0.a.x, arg_2.a.a.x)), ~vec4<u32>(arg_0.b, u_input.c.x, arg_2.a.a.x, global0.a.a.x)), arg_2.a.a.x), 0u, global0.a.a.x));
    var var_2 = Struct_3(Struct_2(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 29912u, global0.a.a.x, 12776u) | u_input.c, ~arg_0.a), Struct_1(!vec3<bool>(true, true, global0.a.c.a.x)), global0.a.c, Struct_1(var_0.d.a)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), global0.b.x), arg_2.b)), _wgslsmith_mult_vec4_i32(global0.c, _wgslsmith_mult_vec4_i32(global0.c, global0.c)), global0.a.c);
    global1 = array<Struct_4, 29>();
    return global2[_wgslsmith_index_u32(select(0u, abs(44816u), global0.a.d.a.x), 8u)];
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_1(global0.d.a);
    var var_1 = Struct_2(u_input.c, func_5(Struct_4(u_input.c, _wgslsmith_add_u32(38317u, firstTrailingBit(47857u))), Struct_1(vec3<bool>(select(var_0.a.x, var_0.a.x, false), func_2(vec2<i32>(global0.c.x, 0i), Struct_2(global0.a.a, var_0, global2[_wgslsmith_index_u32(10243u, 8u)], Struct_1(vec3<bool>(true, global0.a.d.a.x, true)))), false)), Struct_3(Struct_2(vec4<u32>(43927u, 9509u, u_input.c.x, u_input.c.x) | u_input.c, Struct_1(vec3<bool>(global0.a.b.a.x, false, false)), global0.d, global2[_wgslsmith_index_u32(~global0.a.a.x, 8u)]), global0.b, global0.c, Struct_1(func_4(vec4<bool>(true, global0.d.a.x, global0.d.a.x, false), vec4<u32>(u_input.c.x, 4294967295u, 1u, 4294967295u), global1[_wgslsmith_index_u32(4294967295u, 29u)], vec4<f32>(125f, global0.b.x, 1600f, global0.b.x)))), -(i32(-1i) * -global0.c.x)), func_5(global1[_wgslsmith_index_u32(global0.a.a.x, 29u)], Struct_1(func_3(vec4<u32>(u_input.c.x, global0.a.a.x, 4294967295u, u_input.c.x), _wgslsmith_f_op_f32(1384f + global0.b.x)).xyw), Struct_3(global0.a, vec2<f32>(814f, -303f), global0.c, global2[_wgslsmith_index_u32(max(u_input.c.x ^ u_input.c.x, u_input.c.x | u_input.c.x), 8u)]), 62i), Struct_1(!var_0.a));
    var_1 = global0.a;
    var var_2 = global0.a;
    global1 = array<Struct_4, 29>();
    return !vec4<bool>(var_2.d.a.x, false, select(var_1.d.a.x, false, global0.a.d.a.x), var_2.d.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = func_1();
    let var_2 = Struct_1(!var_1.yzy);
    let var_3 = !var_1.wy;
    global0 = Struct_3(Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.a.x, u_input.c.x, firstLeadingBit(0u), u_input.c.x), min(~u_input.c, vec4<u32>(0u, 1u, 22056u, 0u) & global0.a.a)), func_5(Struct_4(vec4<u32>(77361u, 75315u, global0.a.a.x, var_0) & u_input.c, min(global0.a.a.x, u_input.c.x)), func_5(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, 61590u), 29u)], func_5(global1[_wgslsmith_index_u32(u_input.c.x, 29u)], Struct_1(vec3<bool>(false, false, global0.a.d.a.x)), Struct_3(global0.a, vec2<f32>(global0.b.x, -955f), vec4<i32>(-1i, u_input.b.x, -1i, 2147483647i), global0.d), global0.c.x), Struct_3(Struct_2(vec4<u32>(26751u, u_input.c.x, var_0, 11972u), Struct_1(global0.a.d.a), Struct_1(vec3<bool>(var_2.a.x, true, var_3.x)), global0.d), vec2<f32>(1239f, global0.b.x), vec4<i32>(0i, 2054i, -8511i, 49474i), global0.a.b), -12796i), Struct_3(global0.a, vec2<f32>(global0.b.x, 807f), vec4<i32>(60172i, u_input.b.x, 35500i, 1i), func_5(Struct_4(global0.a.a, 1u), global2[_wgslsmith_index_u32(u_input.c.x, 8u)], Struct_3(global0.a, global0.b, global0.c, Struct_1(global0.a.c.a)), -16663i)), 24161i), func_5(Struct_4(u_input.c, 1u), var_2, Struct_3(Struct_2(vec4<u32>(1u, global0.a.a.x, 12301u, 47229u), Struct_1(var_2.a), Struct_1(global0.d.a), Struct_1(var_1.zwx)), _wgslsmith_f_op_vec2_f32(exp2(global0.b)), global0.c, Struct_1(var_1.xwy)), -1i), Struct_1(var_1.zxz)), vec2<f32>(-567f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -453f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b.x + 1711f))))), abs(select(-select(vec4<i32>(-22669i, 12963i, 59282i, 0i), vec4<i32>(global0.c.x, global0.c.x, -47065i, global0.c.x), vec4<bool>(global0.a.c.a.x, false, true, true)), -vec4<i32>(2147483647i, -14161i, global0.c.x, -38751i), var_1)), global0.d);
    let var_4 = global0.c.xxz;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(-2147483647i)), u_input.c.x);
}

