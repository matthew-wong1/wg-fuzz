struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(71647u, 49985u, 57455u, 4294967295u), -681f);

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<u32>(0u, 1u, 2167u, 0u), -255f), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 73583u), -1083f), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 10684u), -665f), Struct_1(vec4<u32>(0u, 31565u, 24049u, 15661u), 1000f), Struct_1(vec4<u32>(9424u, 4294967295u, 92814u, 10741u), -871f), Struct_1(vec4<u32>(1u, 42957u, 18730u, 23100u), 559f), Struct_1(vec4<u32>(22824u, 4294967295u, 49869u, 1u), 783f), Struct_1(vec4<u32>(4294967295u, 92664u, 4294967295u, 30870u), 574f), Struct_1(vec4<u32>(63234u, 22514u, 39239u, 0u), -665f), Struct_1(vec4<u32>(4294967295u, 23337u, 0u, 50834u), -269f), Struct_1(vec4<u32>(69310u, 4294967295u, 1u, 20368u), 512f), Struct_1(vec4<u32>(30739u, 1u, 4294967295u, 47061u), -1759f), Struct_1(vec4<u32>(4294967295u, 29115u, 1u, 8484u), 1065f), Struct_1(vec4<u32>(0u, 4294967295u, 2737u, 14508u), -614f), Struct_1(vec4<u32>(4294967295u, 1u, 110133u, 56212u), 333f), Struct_1(vec4<u32>(1u, 37202u, 0u, 10070u), 1604f), Struct_1(vec4<u32>(28392u, 0u, 13636u, 32482u), 241f), Struct_1(vec4<u32>(0u, 116228u, 1u, 12769u), -436f), Struct_1(vec4<u32>(0u, 43156u, 45996u, 4294967295u), -515f));

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec4<u32>(46448u, 0u, 4294967295u, 25739u), 1090f), vec2<i32>(35100i, 0i)), Struct_2(Struct_1(vec4<u32>(16225u, 1u, 1u, 0u), -1000f), vec2<i32>(-3553i, 24442i)), Struct_2(Struct_1(vec4<u32>(50741u, 1u, 1u, 4546u), 1523f), vec2<i32>(18028i, i32(-2147483648))), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 46657u), 1000f), vec2<i32>(-1i, -1i)), Struct_2(Struct_1(vec4<u32>(36774u, 578u, 33160u, 1u), -198f), vec2<i32>(19002i, -36925i)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(704f))) * global0.b)) - global0.b);
    let var_1 = Struct_3(Struct_1(~global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + global0.b) * _wgslsmith_f_op_f32(select(global0.b, global0.b, true)))), global3[_wgslsmith_index_u32(min(~global0.a.x, select(u_input.a, ~global0.a.x, true)), 5u)], global2[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(~global0.a.xx, global0.a.wz & vec2<u32>(global0.a.x, 1u))), 19u)]);
    return global0.b;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: f32) -> Struct_1 {
    var var_0 = true;
    global0 = global2[_wgslsmith_index_u32(u_input.a, 19u)];
    var var_1 = arg_1.yy;
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(func_3()));
    let var_2 = ~global0.a.x;
    return Struct_1(_wgslsmith_clamp_vec4_u32(~(~global0.a), vec4<u32>(0u, ~_wgslsmith_div_u32(30434u, 100612u), ~0u, firstTrailingBit(70998u)), global0.a), arg_1.x);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: u32) -> Struct_3 {
    var var_0 = !(_wgslsmith_f_op_f32(max(-834f, global0.b)) >= -293f);
    global2 = array<Struct_1, 19>();
    global0 = func_2(false, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.b, _wgslsmith_f_op_f32(-global0.b), global0.b))), global0.a.wx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1432f, _wgslsmith_f_op_f32(-103f + global0.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1257f + 1654f) * _wgslsmith_f_op_f32(-355f + 636f))) - global0.b));
    global0 = func_2(!any(select(select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), arg_1), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), vec2<bool>(false, arg_1)), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(948f, global0.b, 337f)))), global0.a.wz, _wgslsmith_div_f32(-2866f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * global0.b)))));
    let var_1 = abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-1i, -38699i, -1i, -1i), abs(vec4<i32>(-9317i, -1i, -8662i, 10458i))), ~(~vec4<i32>(-26352i, -6163i, -1i, -2147483647i))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(50942i, -1i), 0i, firstLeadingBit(-30007i)), -1i)));
    return Struct_3(Struct_1(global0.a, global0.b), global3[_wgslsmith_index_u32(1u, 5u)], Struct_1(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, arg_0, 4033u), vec4<u32>(25971u, 0u, 37000u, global0.a.x))) | firstLeadingBit(global0.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1037f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~select(14661u << (0u % 32u), global0.a.x, select(all(vec2<bool>(false, true)), true, all(vec2<bool>(true, false)))), false, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(-1i) << (~(47928u & global0.a.x) % 32u)), var_0.b.b.x, func_1(max(global1.x ^ 45849u, var_0.a.a.x) >> (abs(~var_0.a.a.x) % 32u), all(vec2<bool>(true, true)), func_1(29337u & firstTrailingBit(var_0.c.a.x), false, ~20293u).b.a.a.x).b.b.x, ~select(abs(vec4<u32>(var_0.b.a.a.x, 1u, 1u, global0.a.x)), global0.a, true), -1605f);
}

