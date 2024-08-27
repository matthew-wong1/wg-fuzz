struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
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

var<private> global0: array<Struct_1, 11>;

var<private> global1: vec3<u32> = vec3<u32>(47176u, 8012u, 0u);

var<private> global2: i32;

var<private> global3: array<i32, 30>;

var<private> global4: array<f32, 17> = array<f32, 17>(-724f, -817f, 1512f, 388f, 263f, 576f, -879f, -1071f, 1000f, 166f, 783f, -364f, 542f, 487f, 2276f, -301f, 2412f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<i32>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.x, ~global1.x), 30u)], global3[_wgslsmith_index_u32(33022u, 30u)]);
    var var_1 = global0[_wgslsmith_index_u32(~32866u, 11u)];
    return global0[_wgslsmith_index_u32(1u, 11u)];
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global3 = array<i32, 30>();
    global0 = array<Struct_1, 11>();
    var var_0 = arg_0;
    var var_1 = _wgslsmith_mult_u32(~arg_0.b.x, var_0.a.x);
    global1 = var_0.b;
    return select(select(select(vec3<bool>(arg_0.d.x, any(vec2<bool>(var_0.d.x, arg_0.d.x)), global1.x > global1.x), !arg_0.d, func_2().d.x), vec3<bool>(select(var_0.d.x, false, var_0.d.x) & true, all(select(arg_0.d, arg_0.d, var_0.d.x)), true | any(vec4<bool>(false, var_0.d.x, true, arg_0.d.x))), arg_0.d.x), select(func_2().d, !vec3<bool>(arg_0.d.x, var_0.d.x, false), arg_0.c <= arg_0.c), var_0.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_0.b, ~_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(47953u, 1u), ~arg_0.b.x, _wgslsmith_sub_u32(global1.x, arg_3.a.x)), vec3<u32>(arg_1.b.x, arg_1.b.x, arg_1.a.x) << (arg_0.b % vec3<u32>(32u))), ~max(abs(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(1u, 30u)], arg_3.c, 2147483647i)), global3[_wgslsmith_index_u32(global1.x, 30u)]), arg_1.d);
    let var_1 = func_2().d.x;
    var var_2 = arg_2.wzw;
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4[_wgslsmith_index_u32(8680u, 17u)], 917f), vec2<f32>(-311f, global4[_wgslsmith_index_u32(15998u, 17u)]))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1225f, -126f))))));
    return var_3;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = func_4(func_2(), Struct_1(~(~arg_1.b), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, global1.x, arg_0) & ~vec3<u32>(0u, arg_1.b.x, arg_1.b.x), firstTrailingBit(vec3<u32>(0u, arg_1.b.x, 26278u))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-17709i, 1i, global3[_wgslsmith_index_u32(6228u, 30u)], global3[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec4<i32>(-1i, arg_1.c, 47102i, global3[_wgslsmith_index_u32(0u, 30u)])), ~global3[_wgslsmith_index_u32(u_input.b, 30u)]), select(!select(vec3<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x), vec3<bool>(false, true, arg_1.d.x), arg_1.d.x), func_3(func_2()), !arg_1.d)), vec4<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.c, 1i, 0i, global3[_wgslsmith_index_u32(0u, 30u)]), vec4<i32>(1i, global3[_wgslsmith_index_u32(48834u, 30u)], -2147483647i, global3[_wgslsmith_index_u32(6509u, 30u)])), vec4<i32>(-1i) * -vec4<i32>(16607i, -2103i, global3[_wgslsmith_index_u32(4294967295u, 30u)], arg_1.c)), global3[_wgslsmith_index_u32(global1.x, 30u)], -firstLeadingBit(~global3[_wgslsmith_index_u32(7527u, 30u)]), 2147483647i), Struct_1(arg_1.b, func_2().b >> (func_2().b % vec3<u32>(32u)), -7052i, vec3<bool>(func_2().d.x, !(u_input.b <= 4294967295u), arg_1.d.x)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_add_u32(26847u, func_1(4294967295u, global0[_wgslsmith_index_u32(1u, 11u)]))) & ~60312u, _wgslsmith_mult_u32(abs(global1.x), max(4294967295u, ~4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), u_input.a)))), 11u)];
    var_0 = global0[_wgslsmith_index_u32(0u, 11u)];
    global3 = array<i32, 30>();
    var var_1 = ~(~_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(31419u, 30u)], global3[_wgslsmith_index_u32(1u, 30u)]), -2147483647i), -2147483647i));
    var var_2 = _wgslsmith_f_op_f32(ceil(-341f));
    let var_3 = Struct_1(countOneBits(~(~(~vec3<u32>(1511u, u_input.b, 29376u)))), var_0.b | ~min(reverseBits(var_0.a), var_0.b), _wgslsmith_add_i32(var_0.c, 11167i), var_0.d);
    var var_4 = !vec4<bool>(all(!func_4(var_3, global0[_wgslsmith_index_u32(u_input.b, 11u)], vec4<i32>(-18655i, -1i, var_0.c, -1i), var_3).d.xz), var_0.d.x, any(func_2().d) == (_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(46050u, 17u)], -2337f)) != _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 17u)] - global4[_wgslsmith_index_u32(var_0.b.x, 17u)])), var_0.d.x);
    let var_5 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(1i, firstLeadingBit(var_3.c << (var_3.b.x % 32u))), 32423u);
}

