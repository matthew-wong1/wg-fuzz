struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec2<f32>;

var<private> global2: array<u32, 17> = array<u32, 17>(77957u, 0u, 1u, 4294967295u, 39546u, 1u, 41552u, 11378u, 53008u, 60393u, 4294967295u, 27736u, 35597u, 1u, 1u, 11232u, 12749u);

var<private> global3: array<vec2<f32>, 26>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = Struct_3(select(vec4<bool>(false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false))), true, any(vec3<bool>(false, true, true))), vec4<bool>(true, arg_0.a.b.a.x == _wgslsmith_f_op_f32(f32(-1f) * -516f), true, !all(vec2<bool>(false, false))), false), Struct_2(global1.x, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1058f, -310f)))), 1420f, abs(global0.d.d)), Struct_2(global0.d.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.c, -1279f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(234f, -1000f)))), -361f, min(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-20492i, arg_1.d.x), vec2<i32>(u_input.b, -31463i)), ~vec2<i32>(-34085i, 624i), arg_0.d.d), ~vec2<i32>(global0.c.d.x, -2147483647i))), arg_1);
    global2 = array<u32, 17>();
    global3 = array<vec2<f32>, 26>();
    global1 = arg_1.b.a;
    global0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-421f))), global0.c.b, 554f, firstLeadingBit(arg_1.d >> (u_input.a.yz % vec2<u32>(32u))) | ~select(arg_1.d, arg_0.c.d, true)), arg_0.b, Struct_2(global1.x, global0.c.b, var_0.b.b.a.x, vec2<i32>(-1i, ~_wgslsmith_clamp_i32(-2147483647i, u_input.b, global0.c.d.x))), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + _wgslsmith_f_op_f32(max(-143f, arg_1.b.a.x))))), var_0.b.b, global0.d.b.a.x, vec2<i32>(-1i) * -var_0.b.d));
    return _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(-var_0.b.d, var_0.c.d), arg_0.c.d), ~_wgslsmith_clamp_vec2_i32(reverseBits(-arg_0.d.d), ~_wgslsmith_div_vec2_i32(vec2<i32>(var_0.d.d.x, global0.a.d.x), var_0.c.d), select(-vec2<i32>(-1i, 0i), countOneBits(arg_0.c.d), false)));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_4(global0.c, global0.c.a, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(min(873f, 842f)))), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.a.b.a - global3[_wgslsmith_index_u32(4294967295u, 26u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-677f * 140f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1210f)))), vec2<i32>(-(~global0.a.d.x), ~(~u_input.b))), global0.a);
    var_0 = Struct_4(Struct_2(-173f, Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(1448u, 26u)] - vec2<f32>(var_0.a.b.a.x, global0.a.b.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-489f * var_0.a.a), _wgslsmith_f_op_f32(global0.b + 1731f))), _wgslsmith_div_vec2_i32(func_3(Struct_4(Struct_2(global1.x, global0.d.b, -1279f, var_0.a.d), 1155f, Struct_2(global0.d.a, Struct_1(vec2<f32>(1191f, global1.x)), 1188f, vec2<i32>(-1i, -1i)), Struct_2(global0.d.c, Struct_1(global3[_wgslsmith_index_u32(u_input.a.x, 26u)]), global1.x, vec2<i32>(0i, 1i))), Struct_2(global0.a.c, Struct_1(vec2<f32>(global0.c.b.a.x, var_0.d.c)), 2207f, global0.c.d)), abs(var_0.c.d))), 608f, global0.c, global0.a);
    var var_1 = _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 11691u, max(~(~u_input.a.x ^ u_input.a.x), abs(36341u)));
    global2 = array<u32, 17>();
    var var_2 = var_0.c.b;
    return select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), vec2<bool>(true, true)), select(vec2<bool>(all(vec3<bool>(false, true, true)), true), vec2<bool>(true, any(vec3<bool>(true, true, true))), vec2<bool>(any(vec3<bool>(true, true, true)), true)), true), !(!vec2<bool>(true, all(vec3<bool>(true, true, true)))), false);
}

fn func_1() -> vec4<i32> {
    global1 = _wgslsmith_f_op_vec2_f32(select(global0.d.b.a, global3[_wgslsmith_index_u32(~min(abs(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)]), ~4294967295u), 26u)], func_2()));
    var var_0 = global0.a.b;
    global2 = array<u32, 17>();
    var var_1 = 4294967295u >> (u_input.a.x % 32u);
    global0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(global0.d.b.a), -203f, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b << (23830u % 32u), 29310i))), 662f, global0.c, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-250f, var_0.a.x, false)), global0.c.c) - -1535f), global0.c.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -603f))), global0.a.d));
    return _wgslsmith_div_vec4_i32(abs(-vec4<i32>(-1i, u_input.b, u_input.b, 2147483647i)), ~firstTrailingBit(-vec4<i32>(2147483647i, u_input.b, 0i, 2147483647i))) << (vec4<u32>(1u >> (((u_input.a.x >> (2354u % 32u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xz)) % 32u), ~u_input.a.x, ~16667u, ~(~u_input.a.x) | 5919u) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -max(vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -2147483647i, -u_input.b), select(_wgslsmith_mult_i32(global0.c.d.x, 48255i), _wgslsmith_div_i32(global0.a.d.x, global0.d.d.x), true), -(global0.a.d.x >> (u_input.a.x % 32u)), -20999i), _wgslsmith_mod_vec4_i32(select(func_1(), vec4<i32>(-2147483647i, u_input.b, -1i, global0.a.d.x), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true)), vec4<i32>(func_3(Struct_4(Struct_2(-150f, Struct_1(global3[_wgslsmith_index_u32(4294967295u, 26u)]), global0.a.b.a.x, global0.a.d), 364f, global0.a, global0.d), global0.c).x, -global0.c.d.x, u_input.b, _wgslsmith_sub_i32(2147483647i, u_input.b))));
    let var_1 = global2[_wgslsmith_index_u32(~(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 1u) | 24575u), 17u)];
    let var_2 = Struct_4(Struct_2(-1298f, global0.a.b, global0.a.b.a.x, global0.c.d), _wgslsmith_f_op_f32(-global1.x), Struct_2(650f, Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(global0.a.b.a, vec2<f32>(global0.b, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(923f, 1007f) * global3[_wgslsmith_index_u32(u_input.a.x, 26u)])))), -105f, _wgslsmith_add_vec2_i32(vec2<i32>(global0.c.d.x, 2147483647i) & vec2<i32>(-2125i, 2147483647i), vec2<i32>(-1i, _wgslsmith_sub_i32(global0.d.d.x, 31184i)))), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - global1.x))), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global0.a.b.a - vec2<f32>(global0.d.b.a.x, 149f))))), _wgslsmith_div_f32(global0.d.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.c.b.a.x)))), vec2<i32>(-1i, _wgslsmith_add_i32(var_0.x, -global0.a.d.x))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_2.a.b.a * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 499f) + global0.a.b.a), var_2.c.b.a))))));
    var var_4 = Struct_3(select(vec4<bool>(true, any(vec3<bool>(true, false, false)), all(vec2<bool>(false, false)) && true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), var_2.c, global0.d, Struct_2(global0.d.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.b.a) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.a.x, var_3.a.x), vec2<f32>(var_2.a.c, 742f), true)))), var_3.a.x, _wgslsmith_sub_vec2_i32(~(-var_2.d.d), func_1().xy)));
    var var_5 = global0.a;
    var var_6 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(328f, -291f), var_2.a.b.a)));
    let var_7 = var_2;
    var var_8 = 1974f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(86951u, 1u, 1u, global2[_wgslsmith_index_u32(17644u, 17u)]), abs(vec4<u32>(0u, u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)], 4294967295u)))));
}

