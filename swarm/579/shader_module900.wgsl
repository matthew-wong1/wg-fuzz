struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1>;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: vec3<u32>;

var<private> global3: array<u32, 11> = array<u32, 11>(28066u, 4294967295u, 54197u, 4294967295u, 4294967295u, 65688u, 0u, 42869u, 20819u, 0u, 4294967295u);

var<private> global4: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_mod_u32(select(_wgslsmith_mod_u32(~arg_2.b, ~51587u), countOneBits(49022u) ^ ~arg_2.a.x, true), firstTrailingBit(u_input.c)) << (u_input.d.x % 32u);
    global4 = select(vec3<bool>(true, global4.x, !(false | (true & arg_0.a.x))), !vec3<bool>(true, _wgslsmith_clamp_u32(var_0, 0u, 57914u) >= ~7731u, global1.x), arg_0.a);
    var var_1 = arg_2;
    let var_2 = vec2<u32>(_wgslsmith_mult_u32(reverseBits(105441u | global2.x), ~_wgslsmith_dot_vec4_u32(var_1.a, var_1.a)) << (global3[_wgslsmith_index_u32(min(global3[_wgslsmith_index_u32(max(95103u, global3[_wgslsmith_index_u32(~51111u, 11u)]), 11u)], u_input.d.x), 11u)] % 32u), ~arg_2.a.x);
    let var_3 = Struct_5(vec3<i32>(-(i32(-1i) * -2147483647i), (-1i ^ _wgslsmith_add_i32(arg_2.c, -1i)) << (16910u % 32u), i32(-1i) * -(~arg_0.b.x)), Struct_1(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_2.x, 1u, var_2.x) | arg_2.a, select(vec4<u32>(1u, 55470u, global2.x, u_input.c), vec4<u32>(1u, var_0, 27790u, global2.x), vec4<bool>(arg_0.a.x, false, true, arg_0.a.x))), _wgslsmith_mod_u32(~var_0, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(var_1.a, var_1.a), var_2.x)), ~_wgslsmith_clamp_i32(u_input.a.x | -19512i, _wgslsmith_sub_i32(arg_2.c, 0i), _wgslsmith_sub_i32(u_input.a.x, 1i)), vec3<bool>(!any(arg_2.d), all(select(var_1.d, arg_0.a, arg_2.d)), false), false));
    return u_input.c;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_5(u_input.a ^ -u_input.a, Struct_1(~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.b, 1u, 1u), ~vec4<u32>(1u, u_input.d.x, global2.x, 4294967295u)), ~abs(u_input.d.x | 61557u), ~max(u_input.a.x, u_input.a.x << (global3[_wgslsmith_index_u32(1u, 11u)] % 32u)), !(!vec3<bool>(global1.x, true, false)), global4.x));
    global4 = !var_0.b.d;
    return Struct_3(!(!select(var_0.b.d.yx, select(vec2<bool>(global4.x, global4.x), vec2<bool>(var_0.b.e, true), vec2<bool>(true, global4.x)), select(global4.zz, var_0.b.d.yy, false))), Struct_1(var_0.b.a, func_3(Struct_2(vec3<bool>(global1.x, var_0.b.d.x, true), var_0.a.zz, -535f), vec2<f32>(665f, -1105f), var_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-159f, -391f, -1000f, 439f))) ^ var_0.b.a.x, countOneBits(var_0.b.c), !(!select(vec3<bool>(global4.x, true, var_0.b.e), var_0.b.d, var_0.b.d)), all(select(vec3<bool>(var_0.b.e, global1.x, false), vec3<bool>(global4.x, true, var_0.b.e), !var_0.b.d))), ~min(var_0.b.a.xxx, vec3<u32>(0u, global2.x, ~28535u)), vec3<i32>(firstTrailingBit(-(~(-8371i))), 7957i, ~_wgslsmith_add_i32(var_0.a.x, var_0.a.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, var_0.b.b, global2.x), vec4<u32>(1u, 1u, 11346u, u_input.d.x) ^ vec4<u32>(4294967295u, u_input.d.x, 1u, 73393u)) % 32u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5) -> vec3<bool> {
    var var_0 = 6756i;
    var var_1 = func_2().b.a.wzz;
    global0 = array<Struct_4, 1>();
    let var_2 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(arg_0.b.c, 2147483647i, -14866i)), u_input.a & arg_1.a) & reverseBits(firstLeadingBit(vec3<i32>(-20662i, 14177i, arg_0.d.x))), func_2().d) & vec3<i32>(_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(u_input.a.x, 2147483647i, arg_0.d.x, 2147483647i)), select(firstTrailingBit(vec4<i32>(-1i, -16245i, 0i, arg_0.d.x)), countOneBits(vec4<i32>(u_input.a.x, -2147483647i, 24578i, arg_0.d.x)), false || arg_1.b.e)), u_input.a.x, ~(-arg_1.a.x));
    var var_3 = ~arg_1.b.a.yyw;
    return arg_0.b.d;
}

fn func_1() -> i32 {
    var var_0 = !global4.x;
    var var_1 = global4.xz;
    var var_2 = !select(!select(vec3<bool>(false, false, var_1.x), vec3<bool>(global1.x, global4.x, global4.x), global4.x), select(!vec3<bool>(true, var_1.x, global1.x), func_4(func_2(), Struct_5(u_input.a, Struct_1(vec4<u32>(1u, global2.x, global2.x, 59055u), global3[_wgslsmith_index_u32(global2.x, 11u)], -2147483647i, vec3<bool>(global1.x, global1.x, true), false))), var_1.x), select(func_4(func_2(), Struct_5(u_input.a, Struct_1(vec4<u32>(u_input.d.x, 0u, global2.x, global3[_wgslsmith_index_u32(u_input.c, 11u)]), global2.x, -1i, vec3<bool>(false, false, true), false))), func_2().b.d, vec3<bool>(var_1.x, global1.x, global3[_wgslsmith_index_u32(1u, 11u)] != global2.x)));
    global1 = !select(global4.yy, func_4(Struct_3(vec2<bool>(global4.x, var_1.x), func_2().b, vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 11u)], global2.x, 1u), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(22934i, 0i, 49524i))), Struct_5(~u_input.a, Struct_1(vec4<u32>(26868u, 1u, u_input.b, global3[_wgslsmith_index_u32(15711u, 11u)]), global3[_wgslsmith_index_u32(73382u, 11u)], 8860i, vec3<bool>(global1.x, global1.x, global4.x), true))).zz, vec2<bool>(var_1.x, true));
    var var_3 = -4470i;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1();
    global4 = select(vec3<bool>(global4.x, false, global4.x), !(!select(vec3<bool>(false, false, global1.x), !vec3<bool>(global1.x, true, false), u_input.c > global2.x)), ((var_0 > u_input.a.x) || (all(global4.yx) | true)) && any(global4.yx));
    var var_1 = countOneBits(~vec4<u32>(~(1u | global2.x), _wgslsmith_sub_u32(~u_input.c, global3[_wgslsmith_index_u32(global2.x << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 11u)], 11u)] % 32u), 11u)]), 1u, global2.x));
    global1 = select(global4.zy, vec2<bool>(global4.x, global4.x), !global4.yx);
    let var_2 = ~var_1.x;
    var var_3 = Struct_4(~(abs(~vec3<u32>(global3[_wgslsmith_index_u32(12043u, 11u)], 0u, 4294967295u)) ^ var_1.xwz));
    let var_4 = abs(var_1.zzy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-256f, 155f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1926f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1911f, _wgslsmith_f_op_f32(round(-1605f)), true)) + _wgslsmith_f_op_f32(-1f))), 2147483647i, 1u ^ u_input.d.x);
}

