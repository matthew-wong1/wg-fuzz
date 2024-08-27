struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<vec4<bool>, 30>;

var<private> global3: f32 = -126f;

var<private> global4: Struct_3 = Struct_3(true, Struct_1(51403u, vec3<bool>(false, false, false), false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 6u)], !global2[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 6u)]);
    let var_1 = abs(global4.b.a);
    global1 = array<Struct_1, 6>();
    var var_2 = ~(-2147483647i);
    global4 = Struct_3(!any(var_0.a.b), Struct_1(~4294967295u << (~global4.b.a % 32u), select(global4.b.b, select(select(var_0.a.b, global4.b.b, global4.b.b), select(vec3<bool>(true, global4.b.b.x, false), vec3<bool>(true, global4.a, global4.b.c), global4.b.b), global4.b.b), true), true));
    return vec2<bool>(var_0.b.x, all(vec3<bool>(!global4.a, any(!vec3<bool>(false, false, var_0.c.c)), true)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(ceil(-2291f));
    var var_1 = global4.b;
    var var_2 = var_1.c;
    var_2 = !(any(func_3()) == any(vec3<bool>(global4.b.c, global4.b.c, global4.b.c))) & any(!select(vec3<bool>(true, true, true), vec3<bool>(var_1.b.x, true, global4.b.b.x), select(vec3<bool>(var_1.b.x, global4.a, var_1.b.x), global4.b.b, var_1.b.x)));
    global1 = array<Struct_1, 6>();
    return Struct_2(global4.b, vec4<bool>(all(vec3<bool>(var_1.b.x, true, false)), true, -1164f != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1319f))), all(select(global4.b.b.xx, select(vec2<bool>(global4.b.c, global4.a), vec2<bool>(global4.b.c, var_1.c), global4.b.b.yz), var_1.b.x))), Struct_1(global4.b.a, var_1.b, var_1.c));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(~0i, arg_1.x, -1i)), max(vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, arg_1.x), min(20172i, -33740i), -2147483647i), _wgslsmith_mod_vec3_i32(u_input.b.yxx, vec3<i32>(-33057i, -2147483647i, u_input.a.x) | u_input.a.wxz)) & (reverseBits(vec3<i32>(arg_1.x, u_input.a.x, -61727i) << (vec3<u32>(4294967295u, 14446u, 1u) % vec3<u32>(32u))) & vec3<i32>(i32(-1i) * -1i, ~u_input.b.x, reverseBits(2147483647i))));
    global2 = array<vec4<bool>, 30>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -120f) + -810f);
    var var_2 = func_2();
    return true && !(!(arg_1.x > -2147483647i));
}

fn func_1() -> bool {
    global4 = Struct_3(func_4(func_2(), vec2<i32>(select(u_input.b.x, u_input.a.x, false), _wgslsmith_add_i32(u_input.b.x, u_input.a.x)) & u_input.a.ww), func_2().c);
    global4 = global0[_wgslsmith_index_u32(abs(firstLeadingBit(max(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 31207u, global4.b.a, 66093u), ~vec4<u32>(29688u, 4168u, global4.b.a, global4.b.a)), 1u))), 32u)];
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(212f, -476f, 225f)))))))));
    global0 = array<Struct_3, 32>();
    global2 = array<vec4<bool>, 30>();
    return select(!(!global4.a), global4.b.c, select(func_2().a.b.x, _wgslsmith_sub_i32(-u_input.a.x, -u_input.a.x) != (i32(-1i) * -u_input.a.x), global4.a));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>) -> vec2<f32> {
    var var_0 = select(u_input.b.zw, select(u_input.a.ww, vec2<i32>(-1i, ~0i), vec2<bool>(func_1(), _wgslsmith_f_op_f32(select(-656f, 1346f, global4.a)) == _wgslsmith_f_op_f32(f32(-1f) * -693f))), true);
    let var_1 = Struct_3(global4.b.c, global1[_wgslsmith_index_u32(1u, 6u)]);
    let var_2 = !(52939u >= ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(53702u, arg_1.a.a)));
    let var_3 = Struct_1(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(51672u, global4.b.a)), vec2<u32>(arg_1.a.a, 4294967295u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0, 89208u), select(vec2<u32>(var_1.b.a, global4.b.a), vec2<u32>(arg_1.a.a, global4.b.a), arg_1.c.b.xy))), func_2().a.b, any(vec4<bool>(any(vec4<bool>(true, true, true, true)), func_3().x, global4.a, arg_1.b.x)));
    global1 = array<Struct_1, 6>();
    return vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1134f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-455f, -787f, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 6>();
    var var_0 = -(~(~u_input.a.x));
    global1 = array<Struct_1, 6>();
    global0 = array<Struct_3, 32>();
    var var_1 = _wgslsmith_f_op_vec2_f32(func_5(0u, Struct_2(global4.b, vec4<bool>(false, true, global4.a, func_1()), global1[_wgslsmith_index_u32(abs(global4.b.a), 6u)]), !global4.b.b.xx));
    global1 = array<Struct_1, 6>();
    global0 = array<Struct_3, 32>();
    global4 = global0[_wgslsmith_index_u32(global4.b.a, 32u)];
    let var_2 = vec2<u32>(global4.b.a, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(i32(-1i) * -6877i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) + 677f)), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-744f + _wgslsmith_f_op_f32(-var_1.x)))));
}

