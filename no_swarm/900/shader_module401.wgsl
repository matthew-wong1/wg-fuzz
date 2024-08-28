struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(4294967295u, 17889u);

var<private> global1: Struct_3 = Struct_3(875f);

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: u32) -> vec2<bool> {
    let var_0 = Struct_3(-1997f);
    let var_1 = u_input.b.x | 14626i;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-860f, global1.a, var_0.a), vec3<f32>(var_0.a, -1997f, 905f), arg_1.yxz)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1115f, 1912f, global1.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, global1.a, global1.a), vec3<f32>(-315f, var_0.a, 329f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a, _wgslsmith_f_op_f32(-global1.a), var_0.a)))));
    let var_3 = Struct_2(u_input.b.x, Struct_1(~vec2<u32>(max(global0[_wgslsmith_index_u32(arg_2, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)]), u_input.a >> (arg_2 % 32u)), var_1, countOneBits(countOneBits(vec2<i32>(var_1, -1i))), ~(~arg_2), ~(~var_1 ^ abs(-1i))), Struct_1(vec2<u32>(arg_0.x, 23694u), -2147483647i, vec2<i32>(_wgslsmith_mod_i32(var_1, u_input.b.x), ~_wgslsmith_dot_vec2_i32(u_input.b.yz, u_input.b.yx)), ~(~arg_0.x), ~var_1), vec4<i32>(-9075i, countOneBits(-48283i) ^ var_1, u_input.b.x, ~(-2147483647i)), arg_1);
    global0 = array<u32, 2>();
    return select(var_3.e.xw, arg_1.ww, vec2<bool>((_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 126752u, var_3.c.d), arg_0) <= abs(4294967295u)) || !all(vec3<bool>(true, true, false)), any(!(!arg_1.yzw))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: vec2<i32>) -> vec3<bool> {
    global0 = array<u32, 2>();
    var var_0 = true || global2.x;
    let var_1 = !func_3(firstLeadingBit(vec3<u32>(~40807u, ~4294967295u, ~u_input.a)), !(!vec4<bool>(true, global2.x, true, false)), 0u);
    var var_2 = 66223u;
    let var_3 = countOneBits(arg_3);
    return vec3<bool>(global2.x, all(var_1), any(vec4<bool>(!(!global2.x), any(!vec3<bool>(global2.x, false, true)), -43856i >= firstLeadingBit(arg_3.x), false)));
}

fn func_1() -> vec4<i32> {
    let var_0 = !select(!vec3<bool>(true, true, global2.x), !(!func_2(Struct_3(-1000f), global0[_wgslsmith_index_u32(0u, 2u)], global1.a, vec2<i32>(1i, u_input.b.x))), _wgslsmith_div_i32(select(-2147483647i, u_input.b.x, true), i32(-1i) * -38072i) == -(~u_input.b.x));
    let var_1 = min(~(~countOneBits(u_input.c.yx) << (vec2<u32>(global0[_wgslsmith_index_u32(~u_input.c.x, 2u)], countOneBits(0u)) % vec2<u32>(32u))), vec2<u32>(1u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(31976u, u_input.c.x), 2u)], _wgslsmith_dot_vec3_u32(min(u_input.c, vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)])), u_input.c))));
    var var_2 = -_wgslsmith_mod_i32(-1i, u_input.b.x);
    global0 = array<u32, 2>();
    global3 = ~max(~select(reverseBits(u_input.b.x), u_input.b.x, true), min(u_input.b.x, _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), firstLeadingBit(u_input.b.x))));
    return _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, firstLeadingBit(u_input.b.x), u_input.b.x), countOneBits(~countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -1i), vec4<i32>(-21953i, -36773i, 26421i, 32749i)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = arg_1.c;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-global1.a));
    let var_2 = !global2.x;
    var var_3 = Struct_1(var_0.a, arg_1.b.c.x, _wgslsmith_div_vec2_i32(~arg_0.zx, _wgslsmith_div_vec2_i32(-(~vec2<i32>(var_0.b, arg_0.x)), abs(~vec2<i32>(var_0.e, arg_1.a)))), var_0.a.x, -8419i);
    let var_4 = arg_0.ywz;
    return vec2<bool>(var_2, false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(!(!func_4(func_1(), Struct_2(u_input.b.x, Struct_1(vec2<u32>(82243u, 4294967295u), -2373i, u_input.b.xz, global0[_wgslsmith_index_u32(28037u, 2u)], 50185i), Struct_1(u_input.c.xy, u_input.b.x, u_input.b.yz, 67410u, -2147483647i), vec4<i32>(-34499i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<bool>(false, global2.x, global2.x, global2.x)))), vec2<bool>(!func_4(vec4<i32>(u_input.b.x, 9039i, u_input.b.x, 2147483647i), Struct_2(70419i, Struct_1(u_input.c.yx, u_input.b.x, vec2<i32>(-10057i, u_input.b.x), 0u, -16384i), Struct_1(u_input.c.zx, 58919i, vec2<i32>(u_input.b.x, u_input.b.x), 1u, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -42457i, 30849i), vec4<bool>(false, true, global2.x, global2.x))).x, select(true, true, all(!vec4<bool>(global2.x, global2.x, true, false)))), vec2<bool>(global2.x, true | global2.x));
    var var_0 = 0i;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(min(2371f, 441f)));
    var var_2 = Struct_1(_wgslsmith_sub_vec2_u32(abs(countOneBits(~u_input.c.zy)), u_input.c.yy), 0i, ~((vec2<i32>(-2147483647i, u_input.b.x) ^ -u_input.b.zy) << (max(u_input.c.zx, abs(vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(85955u, 2u)]))) % vec2<u32>(32u))), u_input.c.x, u_input.b.x);
    let var_3 = !vec4<bool>(any(vec3<bool>(true, global2.x | global2.x, any(vec2<bool>(global2.x, global2.x)))), global2.x, global2.x, !any(!vec4<bool>(true, false, global2.x, global2.x)));
    var var_4 = ~firstLeadingBit(73645u);
    let var_5 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1418f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a)) + _wgslsmith_f_op_f32(var_1.a * global1.a))))));
    global1 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(~1u);
}

