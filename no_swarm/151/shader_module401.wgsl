struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<f32>(664f, -1000f, 626f, 1004f));

var<private> global1: array<u32, 6>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(abs(4294967295u), _wgslsmith_sub_u32(933u, reverseBits(min(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(7872u, 6u)])))), vec2<u32>(global1[_wgslsmith_index_u32(~4294967295u, 6u)], arg_0.c.x));
    var var_1 = -10486i < countOneBits(~(~_wgslsmith_mod_i32(16714i, u_input.a)));
    var var_2 = global1[_wgslsmith_index_u32(arg_0.a.a.x, 6u)];
    var_0 = ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, arg_0.c.x), _wgslsmith_div_vec2_u32(arg_0.a.a, arg_0.c)), arg_0.a.a));
    return _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(step(-434f, _wgslsmith_f_op_f32(-global0.a.x))), 151f, _wgslsmith_div_f32(arg_0.b.x, -973f), _wgslsmith_f_op_f32(ceil(global0.a.x))), arg_0.b));
}

fn func_3(arg_0: vec2<i32>) -> vec4<f32> {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 6u)];
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(ceil(-777f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.a.x)), -596f), global0.a.x) * global0.a));
    let var_2 = var_1.a.x;
    global0 = var_1;
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.a.x, var_1.a.x))) - _wgslsmith_f_op_f32(-var_2)) + global0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), var_2)));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global0.a)), global0.a);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec2<bool>) -> vec4<bool> {
    let var_0 = ~(~min(vec4<i32>(-2147483647i, u_input.a, -1i, 2147483647i) << ((vec4<u32>(36081u, arg_0.a.x, arg_1.a.a.x, 0u) | vec4<u32>(global1[_wgslsmith_index_u32(1u, 6u)], 0u, 0u, arg_1.c.x)) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(-2147483647i, -7231i, 4555i, 46886i))));
    var var_1 = Struct_4(vec4<f32>(-524f, 547f, _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_3(Struct_1(arg_0.a, vec3<u32>(1u, 8586u, arg_1.a.a.x)), global0.a, vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6560u, 6u)], 6u)]), arg_1.d))).x, _wgslsmith_f_op_f32(step(1172f, _wgslsmith_f_op_f32(abs(global0.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + _wgslsmith_f_op_f32(451f * 1000f))));
    var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, -1547f, -758f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.x * global0.a.x))))));
    global0 = Struct_4(arg_1.b);
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(select(vec2<i32>(49287i, 11284i), var_0.zw, vec2<bool>(false, arg_3.x)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(0u, 6u)], 4294967295u), arg_1.a.b.yy) % vec2<u32>(32u)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2 - vec4<f32>(1403f, var_1.a.x, 259f, -675f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.x, 1000f, arg_2.x, -2089f)))))));
    return vec4<bool>(true, all(select(select(!arg_1.d, select(arg_1.d, vec4<bool>(false, arg_1.d.x, true, true), arg_1.d), vec4<bool>(false, arg_3.x, arg_1.d.x, arg_3.x)), !arg_1.d, arg_1.d.x || arg_1.d.x)), arg_1.d.x, 529f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_1(arg_1)).x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(func_1(Struct_3(Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], global1[_wgslsmith_index_u32(0u, 6u)]), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(99928u, 6u)], 6u)], 4294967295u)), global0.a, vec2<u32>(global1[_wgslsmith_index_u32(58985u, 6u)], 4294967295u), vec4<bool>(true, false, false, false))))))), _wgslsmith_div_vec4_f32(vec4<f32>(-818f, _wgslsmith_div_f32(734f, 202f), _wgslsmith_f_op_f32(2383f * global0.a.x), _wgslsmith_f_op_f32(min(-1000f, global0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-186f, -165f, global0.a.x, global0.a.x))))));
    var var_2 = vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], ~41739u << (_wgslsmith_dot_vec3_u32(max(~vec3<u32>(79944u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]), ~vec3<u32>(global1[_wgslsmith_index_u32(39570u, 6u)], 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 6u)])), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(67038u, global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 6u)]), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1590u, 6u)], 6u)], 6u)], global1[_wgslsmith_index_u32(0u, 6u)])))) % 32u), select(4294967295u, 119089u, (any(vec3<bool>(true, true, true)) == all(vec4<bool>(false, true, false, true))) & true));
    let var_3 = select(select(select(vec4<bool>(global0.a.x <= var_1.a.x, any(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, false, false)), all(vec2<bool>(false, false))), vec4<bool>(991f <= global0.a.x, false, true, true), vec4<bool>(false, false, true, all(vec3<bool>(false, false, false)))), select(func_2(Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7194u, 6u)], 6u)], global1[_wgslsmith_index_u32(var_2.x, 6u)]), vec3<u32>(4294967295u, 26943u, var_2.x)), Struct_3(Struct_1(var_2.zx, vec3<u32>(43037u, 65741u, 4294967295u)), global0.a, vec2<u32>(1u, var_2.x), vec4<bool>(true, false, false, true)), _wgslsmith_f_op_vec4_f32(floor(var_1.a)), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(false, false, false, true))), any(vec2<bool>(true, true))), vec4<bool>(all(vec3<bool>(-508f == global0.a.x, 449f <= var_1.a.x, false)), all(vec3<bool>(false, true, true)), false, true), true);
    let var_4 = func_2(Struct_1(var_2.yy, ~vec3<u32>(var_2.x, 1u, global1[_wgslsmith_index_u32(0u, 6u)]) << (vec3<u32>(max(var_2.x, global1[_wgslsmith_index_u32(4294967295u, 6u)]), _wgslsmith_add_u32(64496u, var_2.x), var_2.x) % vec3<u32>(32u))), Struct_3(Struct_1(~var_2.wx, reverseBits(~vec3<u32>(var_2.x, var_2.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.x, 6u)], 6u)], 6u)]))), _wgslsmith_f_op_vec4_f32(step(var_1.a, vec4<f32>(102f, _wgslsmith_f_op_f32(f32(-1f) * -218f), -1378f, -601f))), var_2.wz, select(!(!var_3), vec4<bool>(!var_3.x, true, all(vec4<bool>(true, true, var_3.x, false)), var_3.x & false), select(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), var_3, var_3.x & var_3.x))), _wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 261f, 2458f, -491f)) + _wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(-1000f, var_1.a.x, var_1.a.x, global0.a.x)))))), vec2<bool>(false, var_3.x)).x;
    let var_5 = all(vec4<bool>(var_4, !var_4, var_4, u_input.a == _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), vec4<i32>(2147483647i, 1i, -2147483647i, u_input.a)), ~u_input.a)));
    global1 = array<u32, 6>();
    let var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_1.a.xyz + _wgslsmith_f_op_vec3_f32(vec3<f32>(1306f, 414f, -1138f) * _wgslsmith_div_vec3_f32(var_1.a.zxy, _wgslsmith_f_op_vec3_f32(floor(var_6.a.xxz))))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, abs(u_input.a)), -u_input.a), firstLeadingBit(32526i), u_input.a), countOneBits(var_2.wxx));
}

