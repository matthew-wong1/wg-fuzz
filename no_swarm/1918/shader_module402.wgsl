struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, false, false, false, true, true, true, false, true, true, true, true, false, false, true, false, true, true, false, false, false, false, true, true, false, false, true, true, false, true);

var<private> global1: array<vec2<i32>, 23>;

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<f32>(1000f, 412f), vec2<f32>(-664f, -1529f), vec4<i32>(-21807i, -12227i, 1i, 1i), -1045f), Struct_1(vec2<f32>(-148f, -1318f), vec2<f32>(-205f, -194f), vec4<i32>(2147483647i, 2147483647i, -15033i, -1i), -552f), Struct_1(vec2<f32>(-744f, 788f), vec2<f32>(-1281f, -2105f), vec4<i32>(-1i, 1194i, -32867i, -9474i), -1034f), Struct_1(vec2<f32>(2039f, 168f), vec2<f32>(1037f, 1065f), vec4<i32>(1i, 2147483647i, -1i, i32(-2147483648)), 564f));

var<private> global4: Struct_1 = Struct_1(vec2<f32>(-927f, 828f), vec2<f32>(-267f, -369f), vec4<i32>(13202i, 0i, -28309i, 25364i), -1248f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> u32 {
    return ~1u;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = global3[_wgslsmith_index_u32(~72726u, 4u)];
    let var_1 = global3[_wgslsmith_index_u32((func_3(Struct_1(vec2<f32>(global4.a.x, -1678f), vec2<f32>(global4.d, arg_1.b.x), vec4<i32>(arg_0, arg_0, -45748i, var_0.c.x), _wgslsmith_f_op_f32(max(var_0.a.x, global4.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.x, -290f), vec2<f32>(-160f, var_0.a.x), global0[_wgslsmith_index_u32(u_input.b, 30u)])), _wgslsmith_f_op_vec2_f32(-var_0.a), ~vec4<i32>(2147483647i, -1i, 13259i, 63888i), global2.x), _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.zy), vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(u_input.b, u_input.a.x))) << (4294967295u % 32u)) & ~_wgslsmith_mult_u32(reverseBits(~u_input.b), _wgslsmith_add_u32(0u, 4294967295u)), 4u)];
    var var_2 = vec2<i32>(-39842i, abs(-arg_0)) ^ select(~vec2<i32>(~var_0.c.x, _wgslsmith_mult_i32(arg_0, -2147483647i)), ~global1[_wgslsmith_index_u32(select(~26461u, u_input.b, false | global0[_wgslsmith_index_u32(1u, 30u)]), 23u)], global0[_wgslsmith_index_u32(~(max(u_input.b, 1u) << (_wgslsmith_sub_u32(37589u, 16400u) % 32u)), 30u)]);
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(5006u, _wgslsmith_sub_u32(~max(1u, u_input.b), ~(~u_input.b))), 4u)];
    var var_4 = ~vec2<u32>(33999u << (1u % 32u), 1u);
    return !(!(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 30u)]))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(-global4.b), arg_1.a, abs(arg_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(-global4.a.x)))));
    var var_0 = 0i;
    let var_1 = select(select(select(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(78344u, 30u)])), vec2<bool>(!global0[_wgslsmith_index_u32(u_input.b, 30u)], any(vec2<bool>(arg_0, arg_0))), vec2<bool>(true, true)), select(vec2<bool>(all(vec3<bool>(arg_0, true, false)), true | global0[_wgslsmith_index_u32(4294967295u, 30u)]), select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<bool>(arg_0, arg_0), false), select(vec2<bool>(true, arg_0), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 30u)], arg_0), true), true), arg_0), !all(vec3<bool>(arg_0, false, true))), func_2(13805i, arg_2), all(vec3<bool>(arg_0, any(vec3<bool>(true, true, arg_0)), false)));
    var var_2 = u_input.b ^ ~(~(~(~66241u)));
    global3 = array<Struct_1, 4>();
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> i32 {
    let var_0 = arg_2;
    var var_1 = ~4294967295u;
    var_1 = firstLeadingBit((_wgslsmith_dot_vec4_u32(vec4<u32>(41414u, u_input.a.x, 36898u, 1u), vec4<u32>(1u, 65652u, 4294967295u, u_input.a.x)) ^ _wgslsmith_mod_u32(u_input.b, 0u)) << (~_wgslsmith_div_u32(50747u, u_input.a.x) % 32u)) << (1u % 32u);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-477f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global3[_wgslsmith_index_u32(u_input.a.x, 4u)], Struct_1(global4.b, vec2<f32>(-959f, -703f), vec4<i32>(0i, var_0.c.x, arg_0.c.x, arg_1), -218f), global4.c.x).a.x) * _wgslsmith_f_op_f32(abs(134f))), _wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.d))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -827f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, global4.d, arg_0.b.x, 465f)) - vec4<f32>(1000f, 825f, 590f, -2955f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.d, arg_2.a.x, arg_2.d, arg_2.a.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.a.x, -849f, -400f, 748f))) * vec4<f32>(var_0.b.x, -2083f, 1575f, arg_0.d)))));
    let var_3 = _wgslsmith_f_op_f32(-func_1(true, func_1(global0[_wgslsmith_index_u32(u_input.b, 30u)], func_1(any(vec2<bool>(global0[_wgslsmith_index_u32(47475u, 30u)], false)), var_0, func_1(true, arg_0, Struct_1(vec2<f32>(global2.x, arg_0.a.x), global2.zy, arg_2.c, 1160f), var_0.c.x), ~2147483647i), func_1(true, global3[_wgslsmith_index_u32(~u_input.b, 4u)], func_1(false, arg_0, arg_0, 37078i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.c.x, 2147483647i, arg_1), vec4<i32>(arg_1, global4.c.x, -7579i, arg_1))), min(1i, 1i)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2049f, var_0.a.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(var_0.a)))), vec4<i32>(-1i) * -var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -367f)), firstLeadingBit(arg_1) ^ ~arg_0.c.x).a.x);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    let var_0 = !select(!vec2<bool>(2147483647i < global4.c.x, global0[_wgslsmith_index_u32(~u_input.a.x, 30u)]), !select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], false), vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], false)), select(vec2<bool>(global0[_wgslsmith_index_u32(6555u, 30u)], global0[_wgslsmith_index_u32(91117u, 30u)]), vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(64111u, 30u)], false))), select(vec2<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(14165u, 30u)], global0[_wgslsmith_index_u32(u_input.b, 30u)])), false), vec2<bool>(global0[_wgslsmith_index_u32(5316u, 30u)] || false, true), global2.x == _wgslsmith_f_op_f32(f32(-1f) * -1486f)));
    let var_1 = u_input.b;
    global0 = array<bool, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(global4.d, _wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.x * global2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, global2.x, global2.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1849f, global4.a.x, global2.x))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1278f, -1154f, global4.b.x))))))), _wgslsmith_f_op_f32(-global2.x), abs(firstTrailingBit(func_4(func_1(global0[_wgslsmith_index_u32(u_input.b, 30u)], global3[_wgslsmith_index_u32(var_1, 4u)], global3[_wgslsmith_index_u32(11980u, 4u)], -1i), i32(-1i) * -38149i, global3[_wgslsmith_index_u32(u_input.a.x, 4u)]))), select(_wgslsmith_div_vec3_i32(firstTrailingBit(global4.c.zwx), -global4.c.wwz), _wgslsmith_mult_vec3_i32(firstLeadingBit(~global4.c.zwx), global4.c.ywz), select(!vec3<bool>(global0[_wgslsmith_index_u32(var_1, 30u)], var_0.x, var_0.x), !select(vec3<bool>(false, false, false), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, true, false)), any(vec3<bool>(true, true, true)))), ~abs(vec4<u32>(~1u, ~4294967295u, 1u, 62379u)));
}

