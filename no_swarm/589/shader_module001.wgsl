struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1i, vec4<f32>(-314f, 1816f, -1000f, -1000f), 0i, false, vec4<bool>(false, true, false, true));

var<private> global1: array<Struct_1, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<bool>) -> Struct_1 {
    global1 = array<Struct_1, 16>();
    global0 = arg_0;
    var var_0 = global0.c;
    let var_1 = u_input.b;
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, ~67897u), 16u)];
    return Struct_1(arg_0.c >> ((var_1.x >> (~0u % 32u)) % 32u), arg_0.b, global0.c, true, arg_0.e);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.b.x, global0.b.x)))) - _wgslsmith_f_op_f32(-321f - _wgslsmith_div_f32(353f, -305f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * -742f)))));
    var var_1 = vec4<i32>(abs(~global0.a), 0i, min(global0.a << (abs(47300u) % 32u), arg_1.a), global0.c);
    var var_2 = func_2(func_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.c), max(u_input.b.yx, vec2<u32>(3453u, 4294967295u))), ~0u), 16u)], vec3<i32>(firstLeadingBit(reverseBits(-25005i)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-5278i, var_1.x), _wgslsmith_sub_i32(global0.a, -21865i), _wgslsmith_div_i32(-22714i, arg_1.a)), _wgslsmith_mod_i32(var_1.x, 0i)), select(!global0.e.xyz, arg_1.e.xwy, !(!vec3<bool>(arg_1.e.x, false, true)))), abs(_wgslsmith_div_vec3_i32(vec3<i32>(min(global0.a, 0i), arg_1.a << (u_input.c % 32u), 1720i), -var_1.wzx)), !func_2(Struct_1(firstLeadingBit(u_input.e), _wgslsmith_f_op_vec4_f32(-global0.b), u_input.e, global0.e.x, func_2(Struct_1(-18711i, vec4<f32>(arg_1.b.x, -1000f, global0.b.x, -980f), 7626i, true, vec4<bool>(arg_1.e.x, true, global0.d, global0.d)), vec3<i32>(-42237i, arg_1.c, -1i), global0.e.yyy).e), firstTrailingBit(abs(vec3<i32>(1i, 6631i, -2147483647i))), arg_1.e.xyw).e.xwy).a;
    var var_3 = Struct_2(func_2(func_2(func_2(Struct_1(var_1.x, vec4<f32>(645f, 128f, 1203f, 132f), arg_0, arg_1.e.x, vec4<bool>(true, global0.d, global0.d, true)), max(var_1.zww, vec3<i32>(-7292i, var_1.x, -6864i)), vec3<bool>(false, false, true)), var_1.yxw, !(!vec3<bool>(global0.d, false, true))), -vec3<i32>(arg_0, u_input.a.x >> (u_input.d % 32u), 2147483647i << (u_input.b.x % 32u)), !vec3<bool>(global0.d, u_input.b.x > 43383u, !arg_1.e.x)));
    let var_4 = min(min(var_3.a.a, -27308i), ~(i32(-1i) * -1i));
    return 67282u;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_1.a;
    let var_1 = ~((arg_1.a.c >> (_wgslsmith_div_u32(select(arg_0, arg_0, var_0.e.x), _wgslsmith_div_u32(arg_0, 6708u)) % 32u)) | -firstLeadingBit(-2147483647i));
    var var_2 = arg_1;
    let var_3 = true;
    var var_4 = min(u_input.b.yx, vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(u_input.c, u_input.b.x, arg_0) << (vec3<u32>(0u, arg_0, 1u) % vec3<u32>(32u))) << ((select(u_input.d, 5522u, arg_1.a.d) << (~u_input.c % 32u)) % 32u), 76738u));
    return var_2.a;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = global0.b.x;
    global0 = Struct_1(2147483647i, global0.b, -1i, global0.b.x >= arg_0.x, vec4<bool>(any(func_2(arg_1, vec3<i32>(16881i, global0.c, arg_1.a), vec3<bool>(arg_2, arg_1.e.x, true)).e) && any(!vec3<bool>(arg_2, arg_1.d, arg_1.d)), global0.d, arg_1.e.x, arg_1.d));
    var var_1 = ~(~(-49434i & abs(arg_1.a))) > -1i;
    var var_2 = global1[_wgslsmith_index_u32(1u, 16u)];
    var var_3 = select(-select(func_4(~1u, Struct_2(Struct_1(96301i, vec4<f32>(-1027f, 1107f, arg_1.b.x, arg_0.x), -2147483647i, global0.e.x, vec4<bool>(arg_1.e.x, false, true, true))), func_2(Struct_1(36646i, vec4<f32>(arg_1.b.x, -1331f, global0.b.x, var_2.b.x), 5873i, true, vec4<bool>(arg_1.d, false, false, false)), vec3<i32>(-1i, 0i, var_2.a), vec3<bool>(arg_1.d, true, true))).c, firstLeadingBit(1i), var_2.d), abs(var_2.c >> (_wgslsmith_mult_u32(u_input.d, u_input.d) % 32u)), false);
    return Struct_1(_wgslsmith_add_i32(i32(-1i) * -select(var_2.c, 2147483647i, global0.d), -2147483647i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-737f, func_4(u_input.d, Struct_2(global1[_wgslsmith_index_u32(0u, 16u)]), arg_1).b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * 528f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b.x)))), 1000f), 0i, false, !func_2(func_4(1u, Struct_2(Struct_1(-2147483647i, vec4<f32>(var_2.b.x, arg_0.x, arg_0.x, 1464f), -9598i, arg_2, vec4<bool>(false, arg_2, true, arg_2))), Struct_1(u_input.a.x, var_2.b, var_2.c, true, vec4<bool>(global0.d, var_2.e.x, true, true))), vec3<i32>(-1i) * -vec3<i32>(arg_1.a, arg_1.a, 23365i), vec3<bool>(all(vec2<bool>(arg_2, arg_2)), !var_2.e.x, true)).e);
}

fn func_1() -> Struct_1 {
    global0 = global1[_wgslsmith_index_u32(1u, 16u)];
    var var_0 = firstTrailingBit(_wgslsmith_mod_vec3_i32(max(vec3<i32>(global0.a, global0.a, 1i), vec3<i32>(-10910i, u_input.a.x, u_input.a.x)) | (_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, 2147483647i, 2147483647i), vec3<i32>(-9993i, -2147483647i, u_input.e)) | select(vec3<i32>(-42892i, u_input.a.x, 72512i), vec3<i32>(-25771i, -16215i, global0.a), false)), (vec3<i32>(u_input.a.x, u_input.e, u_input.e) ^ countOneBits(vec3<i32>(u_input.e, -1i, 0i))) ^ -(~vec3<i32>(-4181i, 83888i, 25437i))));
    let var_1 = global1[_wgslsmith_index_u32(u_input.c, 16u)];
    let var_2 = _wgslsmith_f_op_f32(sign(global0.b.x));
    let var_3 = func_5(var_1.b.zx, func_4(_wgslsmith_sub_u32(~(u_input.c & u_input.c), func_3(-1i, func_2(global1[_wgslsmith_index_u32(u_input.c, 16u)], vec3<i32>(-1i, u_input.e, 1i), var_1.e.zxz))), Struct_2(global1[_wgslsmith_index_u32(select(u_input.c, u_input.b.x, !var_1.e.x), 16u)]), global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(firstLeadingBit(14023u), firstLeadingBit(33418u))), 16u)]), true);
    return func_4(_wgslsmith_sub_u32(u_input.d, _wgslsmith_div_u32(36091u, 4294967295u)), Struct_2(func_4(select(~4294967295u, ~u_input.d, var_3.e.x), Struct_2(func_2(Struct_1(global0.a, vec4<f32>(var_2, 271f, var_3.b.x, 1851f), 2147483647i, false, vec4<bool>(global0.e.x, var_3.e.x, true, global0.e.x)), vec3<i32>(11413i, var_0.x, var_0.x), vec3<bool>(var_1.d, true, true))), func_2(Struct_1(27376i, var_3.b, global0.a, var_3.e.x, vec4<bool>(false, true, false, var_1.e.x)), vec3<i32>(14642i, var_1.c, var_1.c), select(vec3<bool>(global0.e.x, true, false), var_3.e.ywz, true)))), global1[_wgslsmith_index_u32(u_input.c, 16u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1());
    let var_1 = -vec2<i32>(~(~_wgslsmith_add_i32(u_input.a.x, 0i)), abs(func_2(func_4(35741u, Struct_2(var_0.a), var_0.a), firstTrailingBit(vec3<i32>(-22878i, -29660i, u_input.e)), global0.e.xzy).c));
    var_0 = Struct_2(Struct_1(~(u_input.e ^ u_input.e) | min(_wgslsmith_add_i32(0i, 2147483647i), var_0.a.c >> (99487u % 32u)), _wgslsmith_f_op_vec4_f32(-global0.b), 1i, global0.d, var_0.a.e));
    global0 = Struct_1(func_1().a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), 1294f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-445f)))), var_0.a.b, !var_0.a.e.x)), select(~var_1.x, _wgslsmith_div_i32(select(_wgslsmith_sub_i32(var_0.a.c, 2147483647i), ~u_input.e, true), 0i), global0.d), var_0.a.d, vec4<bool>(var_0.a.e.x, !(!(!global0.d)), var_0.a.d, any(func_2(global1[_wgslsmith_index_u32(abs(u_input.d), 16u)], vec3<i32>(4427i, u_input.a.x, global0.c), func_4(u_input.b.x, Struct_2(Struct_1(-42203i, var_0.a.b, 1i, var_0.a.e.x, global0.e)), Struct_1(u_input.a.x, global0.b, 2147483647i, false, var_0.a.e)).e.yzz).e)));
    var var_2 = global0.e.zw;
    global1 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.b.x, select(-_wgslsmith_mult_vec2_i32(var_1 | vec2<i32>(2147483647i, u_input.e), -vec2<i32>(u_input.a.x, 46292i)), _wgslsmith_clamp_vec2_i32(~(~vec2<i32>(var_1.x, 18620i)), var_1, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(1656i, 1i), vec2<i32>(0i, 54645i), vec2<i32>(var_0.a.a, global0.a))), all(vec2<bool>(global0.e.x, func_4(7296u, Struct_2(Struct_1(global0.a, var_0.a.b, var_0.a.c, false, global0.e)), global1[_wgslsmith_index_u32(4294967295u, 16u)]).e.x))), var_0.a.a, var_0.a.b.zz);
}

