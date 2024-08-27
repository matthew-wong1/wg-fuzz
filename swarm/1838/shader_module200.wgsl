struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
    d: vec2<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: i32 = -34976i;

var<private> global2: array<Struct_1, 12>;

var<private> global3: vec3<i32> = vec3<i32>(-22856i, i32(-2147483648), 0i);

var<private> global4: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(335f - 1411f))))), 1394f);
    let var_0 = _wgslsmith_clamp_i32(-firstLeadingBit(~global3.x) ^ _wgslsmith_mod_i32(-2147483647i, u_input.a), abs(-1i) >> (~_wgslsmith_mult_u32(22303u, ~u_input.d) % 32u), abs(u_input.a) ^ global3.x);
    var var_1 = any(vec2<bool>(!global0.x, all(select(vec3<bool>(true, false, false), vec3<bool>(global0.x, true, false), any(vec4<bool>(global0.x, true, false, true))))));
    return 2147483647i;
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    global3 = vec3<i32>(-_wgslsmith_clamp_i32(0i, 13754i, arg_3.b.a.c.x >> (u_input.c % 32u)), _wgslsmith_mod_i32(global3.x, 1i), ~func_3() ^ 34442i) >> (vec3<u32>(41776u, 10226u, 4294967295u) % vec3<u32>(32u));
    var var_0 = arg_3.b;
    var var_1 = arg_1.a;
    global3 = ~_wgslsmith_mult_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(var_0.a.c.x, -56240i, u_input.b)) << (select(vec3<u32>(arg_3.a, u_input.d, var_0.a.a), firstLeadingBit(vec3<u32>(arg_1.a, arg_1.b.a.d, 4294967295u)), select(vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, false, global0.x), true)) % vec3<u32>(32u)), abs((vec3<i32>(3415i, 31431i, arg_1.b.a.c.x) << (vec3<u32>(11387u, arg_1.b.a.a, 4294967295u) % vec3<u32>(32u))) & -vec3<i32>(1i, -1i, arg_0)));
    let var_2 = vec4<u32>(var_0.a.d, ~40189u, arg_3.b.a.a, ~arg_1.a);
    return arg_1.b.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4) -> i32 {
    let var_0 = vec3<i32>(-28262i, ~_wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(func_2(3387i, arg_1.c, -2147483647i, Struct_3(82051u, Struct_2(arg_0), arg_1.e.c)).c.x, arg_2.c.b.a.c.x)), u_input.a);
    let var_1 = vec2<bool>(arg_2.b.a.c.x <= min(-2147483647i << ((35989u & arg_2.e.a) % 32u), firstTrailingBit(25688i)), false);
    global3 = ~vec3<i32>(2147483647i, 38449i, reverseBits(_wgslsmith_div_i32(arg_2.e.b.a.c.x, global3.x)) | ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, global3.x, -1i, 57158i), vec4<i32>(31718i, global3.x, arg_0.c.x, -1i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(arg_2.e.c, arg_2.c.c, select(vec3<bool>(!(!global0.x), var_1.x, all(global0.xy)), select(!vec3<bool>(global0.x, true, true), vec3<bool>(false, !global0.x, var_0.x < -31144i), select(!vec3<bool>(var_1.x, false, false), !vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, false, false))), arg_1.c.c.x != arg_0.b)));
    var var_3 = Struct_2(Struct_1(~arg_1.b.a.a, _wgslsmith_f_op_f32(sign(963f)), vec2<i32>(-1i) * -abs(vec2<i32>(-43027i, -25705i)), countOneBits(arg_2.a)));
    return global3.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> i32 {
    var var_0 = Struct_1(4294967295u, -350f, vec2<i32>(~(-min(2147483647i, global3.x)), max(~_wgslsmith_mod_i32(2147483647i, u_input.b), func_4(func_2(-36076i, Struct_3(u_input.d, Struct_2(global2[_wgslsmith_index_u32(u_input.c, 12u)]), vec3<f32>(-211f, 870f, -726f)), -1i, Struct_3(0u, Struct_2(global2[_wgslsmith_index_u32(0u, 12u)]), vec3<f32>(arg_1, -740f, arg_1))), Struct_4(u_input.c, Struct_2(Struct_1(10888u, -379f, vec2<i32>(global3.x, -2147483647i), u_input.c)), Struct_3(u_input.c, Struct_2(global2[_wgslsmith_index_u32(1u, 12u)]), vec3<f32>(arg_1, 756f, arg_1)), vec2<u32>(106491u, 51823u), Struct_3(u_input.c, Struct_2(Struct_1(u_input.d, arg_1, global3.xy, 4294967295u)), vec3<f32>(1155f, arg_1, -433f))), Struct_4(u_input.c, Struct_2(global2[_wgslsmith_index_u32(1u, 12u)]), Struct_3(u_input.d, Struct_2(Struct_1(u_input.c, 350f, global3.xx, 4294967295u)), vec3<f32>(138f, arg_1, arg_1)), vec2<u32>(u_input.c, u_input.d), Struct_3(u_input.d, Struct_2(Struct_1(u_input.c, -2147f, global3.xx, 0u)), vec3<f32>(-1178f, arg_1, arg_1)))))), max(~u_input.c, u_input.d));
    global3 = vec3<i32>(u_input.a, u_input.b, var_0.c.x);
    global1 = var_0.c.x;
    global4 = 387f;
    var var_1 = Struct_4(var_0.a, Struct_2(Struct_1(u_input.d, _wgslsmith_div_f32(-220f, _wgslsmith_f_op_f32(f32(-1f) * -871f)), global3.zz, abs(u_input.c) << (_wgslsmith_add_u32(var_0.d, var_0.d) % 32u))), Struct_3(countOneBits(u_input.c) << (~var_0.a % 32u), Struct_2(func_2(41171i, Struct_3(69157u, Struct_2(global2[_wgslsmith_index_u32(u_input.d, 12u)]), vec3<f32>(arg_1, var_0.b, arg_1)), ~u_input.b, Struct_3(45927u, Struct_2(Struct_1(0u, arg_1, var_0.c, u_input.c)), vec3<f32>(-479f, 1956f, 832f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-1185f * arg_1), _wgslsmith_f_op_f32(select(var_0.b, 1043f, arg_0.x)), _wgslsmith_f_op_f32(-1187f * var_0.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 1960f, 1727f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, arg_1, -523f)))))), abs(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(62663u, u_input.d)), ~(vec2<u32>(u_input.c, 1u) & vec2<u32>(u_input.d, 4294967295u)), vec2<u32>(u_input.c, 1u) ^ abs(vec2<u32>(39034u, u_input.d)))), Struct_3(var_0.a, Struct_2(func_2(~u_input.a, Struct_3(0u, Struct_2(global2[_wgslsmith_index_u32(5769u, 12u)]), vec3<f32>(-1000f, 367f, arg_1)), var_0.c.x, Struct_3(1u, Struct_2(Struct_1(var_0.d, 346f, vec2<i32>(-42593i, 110295i), u_input.d)), vec3<f32>(var_0.b, arg_1, var_0.b)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, _wgslsmith_f_op_f32(step(arg_1, 1056f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(global3.x, u_input.b, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, ~1i, func_1(vec3<bool>(false, true, true), -592f), -2147483647i), vec4<i32>(global3.x, ~global3.x, ~u_input.b, -u_input.a)) | 68194i);
    global2 = array<Struct_1, 12>();
    let var_1 = vec3<bool>(any(select(select(vec4<bool>(true, true, false, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), !vec4<bool>(global0.x, global0.x, true, false)), !vec4<bool>(false, false, global0.x, global0.x), select(select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(global0.x, global0.x, true, global0.x), global0.x), select(vec4<bool>(false, global0.x, true, true), vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(true, false, false, global0.x)), !global0.x))), all(!(!(!vec4<bool>(false, true, global0.x, global0.x)))), true);
    let var_2 = func_4(Struct_1(~(u_input.d >> (36986u % 32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(196f, -462f)))), min(global3.xz, vec2<i32>(u_input.b, global3.x) & vec2<i32>(-2147483647i, u_input.a)), u_input.c), Struct_4(~abs(u_input.d), Struct_2(Struct_1(4294967295u, 201f, var_0.zz, 52681u)), Struct_3(u_input.d, Struct_2(global2[_wgslsmith_index_u32(3267u, 12u)]), vec3<f32>(106f, 609f, 121f)), ~vec2<u32>(u_input.d, u_input.c), Struct_3(38802u, Struct_2(global2[_wgslsmith_index_u32(u_input.d, 12u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2167f, 875f, 959f) + vec3<f32>(1034f, -2049f, 1112f)))), Struct_4(func_2(func_3(), Struct_3(u_input.d, Struct_2(Struct_1(4294967295u, -739f, vec2<i32>(global3.x, 24210i), 0u)), vec3<f32>(-286f, 964f, 209f)), _wgslsmith_mult_i32(global3.x, u_input.b), Struct_3(u_input.d, Struct_2(Struct_1(0u, 1000f, vec2<i32>(-2147483647i, -1i), 1u)), vec3<f32>(771f, 399f, -275f))).d, Struct_2(global2[_wgslsmith_index_u32(u_input.d, 12u)]), Struct_3(u_input.d, Struct_2(Struct_1(23316u, -333f, vec2<i32>(var_0.x, u_input.a), u_input.c)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(985f, 874f, 1222f)))), vec2<u32>(~u_input.d, 1u), Struct_3(~u_input.c, Struct_2(global2[_wgslsmith_index_u32(u_input.d, 12u)]), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(459f, 1203f, -968f), vec3<f32>(-136f, -103f, 202f)))))) == reverseBits(var_0.x);
    global3 = ~(-var_0.xzy);
    var var_3 = Struct_1(~(~reverseBits(~48150u)), -1513f, -var_0.zz, u_input.d);
    let var_4 = var_1;
    var var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-829f))))), 1225f);
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.d, ~min(_wgslsmith_sub_u32(1u, var_3.d), ~u_input.c), any(select(!var_4.yx, vec2<bool>(var_2, false), true))), (_wgslsmith_div_i32(u_input.a, var_0.x) & _wgslsmith_sub_i32(i32(-1i) * -57418i, -10782i)) ^ (0i >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, 83910u, var_3.a), vec4<u32>(18859u, var_3.d, 41404u, 1u)) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, var_3.b, var_3.b), vec3<f32>(350f, var_3.b, var_3.b))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2172f, -345f, 2736f))))));
}

