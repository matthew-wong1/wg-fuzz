struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-1083f, 145f, -380f), 23698i, 1i);

var<private> global1: f32 = -1176f;

var<private> global2: array<Struct_1, 7>;

var<private> global3: vec2<i32> = vec2<i32>(2147483647i, 14667i);

var<private> global4: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_1(vec3<f32>(1977f, -1230f, -1159f), 7390i, 0i), vec3<u32>(35853u, 4294967295u, 12494u)), Struct_3(Struct_1(vec3<f32>(-766f, 296f, -1539f), -1i, -1i), vec3<u32>(25826u, 4294967295u, 16638u)), Struct_3(Struct_1(vec3<f32>(-193f, 665f, 985f), i32(-2147483648), 1i), vec3<u32>(56546u, 44297u, 69800u)), Struct_3(Struct_1(vec3<f32>(419f, -391f, 601f), -25473i, 0i), vec3<u32>(1u, 0u, 1u)), Struct_3(Struct_1(vec3<f32>(790f, 830f, 1510f), -46546i, 2147483647i), vec3<u32>(0u, 0u, 1u)), Struct_3(Struct_1(vec3<f32>(-687f, -624f, 539f), 2147483647i, 0i), vec3<u32>(1u, 49484u, 4294967295u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> i32 {
    global4 = array<Struct_3, 6>();
    let var_0 = _wgslsmith_dot_vec2_u32(~(~_wgslsmith_mod_vec2_u32(u_input.e.xy, vec2<u32>(17644u, arg_0))) ^ vec2<u32>(48458u, 6514u), u_input.e.yx);
    let var_1 = global2[_wgslsmith_index_u32(arg_0, 7u)];
    let var_2 = u_input.e.x;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1483f, global0.a.x, global0.a.x))), -(global0.b ^ global3.x) >> (37940u % 32u), _wgslsmith_sub_i32(_wgslsmith_div_i32(-20718i, -2147483647i), -13652i)), global2[_wgslsmith_index_u32(11967u, 7u)], false, select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true)), false), vec4<bool>(any(vec4<bool>(false, false, true, true)), -global3.x < ~26741i, !select(true, false, true), (var_0 | 0u) >= ~0u), any(vec4<bool>(true, true, true, true))));
    return _wgslsmith_sub_i32(-22332i, 26746i);
}

fn func_2() -> Struct_5 {
    global1 = _wgslsmith_f_op_f32(-global0.a.x);
    global0 = Struct_1(vec3<f32>(-134f, _wgslsmith_f_op_f32(select(1148f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-242f + global0.a.x) + _wgslsmith_f_op_f32(global0.a.x + -838f)), !all(vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-771f + _wgslsmith_f_op_f32(abs(845f)))))), ~select(u_input.c.x, _wgslsmith_div_i32(func_3(u_input.e.x), _wgslsmith_mod_i32(-2147483647i, global3.x)), select(true, false, u_input.e.x != u_input.e.x)), 8449i);
    return Struct_5(_wgslsmith_div_vec4_f32(vec4<f32>(-519f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - global0.a.x), 1633f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global0.a.x * global0.a.x), _wgslsmith_f_op_f32(round(global0.a.x)), -245f, global0.a.x), vec4<f32>(-616f, _wgslsmith_f_op_f32(exp2(global0.a.x)), _wgslsmith_f_op_f32(max(global0.a.x, 508f)), 1436f), vec4<bool>(true, true, false, false)))), Struct_2(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, 4895u, 4294967295u, u_input.e.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 52716u, u_input.e.x), vec4<u32>(u_input.e.x, u_input.e.x, 1u, 18400u))), ~abs(vec4<u32>(1u, 4294967295u, 1u, 17199u))), 7u)], false, vec4<bool>(any(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), true, false)));
}

fn func_4(arg_0: i32, arg_1: Struct_5) -> bool {
    let var_0 = 1000f;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-420f)) * _wgslsmith_f_op_f32(global0.a.x * -437f)))));
    let var_1 = u_input.c.wy;
    var var_2 = max(_wgslsmith_sub_vec2_u32(~u_input.e.yz, select(vec2<u32>(u_input.e.x << (77041u % 32u), _wgslsmith_sub_u32(18486u, 0u)), ~vec2<u32>(1u, u_input.e.x), !any(vec4<bool>(true, true, true, false)))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(~3348u, 53065u), u_input.e.zx));
    global2 = array<Struct_1, 7>();
    return !all(arg_1.b.d);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a));
    let var_1 = !(!vec2<bool>(func_4(i32(-1i) * -17434i, func_2()), true));
    global4 = array<Struct_3, 6>();
    let var_2 = vec3<i32>(~firstTrailingBit(-2147483647i), global3.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(42780i, ~global0.b), ~(-2147483647i)), global0.c | -31492i));
    global2 = array<Struct_1, 7>();
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global2[_wgslsmith_index_u32(~(~u_input.e.x), 7u)]);
    let var_1 = ~(~u_input.c.wx);
    global2 = array<Struct_1, 7>();
    let var_2 = Struct_5(vec4<f32>(var_0.a.a.x, -720f, _wgslsmith_f_op_f32(2970f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x + 1563f), -1414f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -685f))) * 987f)), func_1());
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(8067i, _wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(0u, u_input.e.x), 5355u), ~u_input.e.xz), abs(vec2<i32>(13198i, ~countOneBits(-27278i))), min(-_wgslsmith_mult_vec4_i32(vec4<i32>(global0.c, var_0.a.c, 0i, global3.x), vec4<i32>(-1i, -24385i, 0i, var_0.a.b) & vec4<i32>(u_input.d, 2147483647i, 47502i, var_1.x)), ~vec4<i32>(u_input.d, u_input.c.x & u_input.c.x, _wgslsmith_sub_i32(global0.c, var_1.x), -23323i)));
}

