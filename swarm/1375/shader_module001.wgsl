struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -43505i;

var<private> global1: array<Struct_1, 19>;

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> bool {
    var var_0 = arg_0.c.xz;
    var var_1 = 1f;
    let var_2 = ~min(_wgslsmith_div_vec3_u32(~firstLeadingBit(u_input.a), arg_0.d.yzx), ~firstTrailingBit(u_input.a & vec3<u32>(arg_0.d.x, u_input.a.x, 53006u)));
    var var_3 = global1[_wgslsmith_index_u32(u_input.a.x, 19u)];
    var var_4 = ~(var_2.x ^ var_3.d.x);
    return false;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(-(-(i32(-1i) * -1i) | min(min(59139i, -1i), _wgslsmith_add_i32(u_input.c.x, u_input.c.x))), vec4<bool>(false, false, func_3(Struct_1(firstTrailingBit(u_input.c.x), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), false), vec3<bool>(false, true, false), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 104185u)), vec4<bool>(true, true, false, true)), u_input.c.x), true), !select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), all(vec2<bool>(true, true))), reverseBits(~vec4<u32>(1u, countOneBits(6982u), 4294967295u, _wgslsmith_mult_u32(u_input.a.x, 50490u))), select(vec4<bool>(true, -697f <= _wgslsmith_f_op_f32(round(758f)), false, false), select(vec4<bool>(any(vec3<bool>(true, true, false)), true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true));
    global0 = 28744i;
    let var_1 = Struct_1(~u_input.c.x, !(!select(vec4<bool>(false, var_0.e.x, var_0.e.x, var_0.c.x), vec4<bool>(var_0.e.x, var_0.b.x, var_0.b.x, var_0.c.x), select(true, var_0.b.x, false))), !var_0.e.ywy, reverseBits(var_0.d), !vec4<bool>(var_0.c.x, all(var_0.e), !(2850i > u_input.b.x), (0u >> (0u % 32u)) >= var_0.d.x));
    global1 = array<Struct_1, 19>();
    var var_2 = 18022i;
    return var_1;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = Struct_1(i32(-1i) * -1i, var_0.e, vec3<bool>(true, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(floor(-720f))) == 949f, !(!var_0.b.x)), abs(_wgslsmith_mult_vec4_u32(var_0.d, arg_0.d)), var_0.e);
    let var_2 = func_2();
    var var_3 = var_2;
    let var_4 = func_2();
    return func_2();
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = 1000f;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -501f) + vec3<f32>(arg_1, var_0, -454f))))));
    let var_2 = !vec3<bool>(all(vec4<bool>(false, arg_0.x, arg_2.c.x & true, true)), select(all(!arg_2.c), all(arg_2.b), true), func_3(func_1(func_2()), (arg_2.a >> (arg_3.d.x % 32u)) << (4294967295u % 32u)));
    global1 = array<Struct_1, 19>();
    var var_3 = i32(-1i) * -(-4334i << (1u % 32u));
    return false;
}

fn func_5(arg_0: vec4<bool>, arg_1: bool) -> StorageBuffer {
    global2 = _wgslsmith_add_i32(u_input.c.x, -u_input.c.x) ^ ~(~0i);
    let var_0 = func_2();
    var var_1 = Struct_1(select(0i, -1i, arg_0.x), func_1(func_1(global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 19u)])).b, vec3<bool>(true, select(select(var_0.b.x & var_0.b.x, arg_0.x, any(vec4<bool>(false, var_0.c.x, arg_0.x, true))), var_0.b.x, all(func_1(Struct_1(-2147483647i, var_0.b, arg_0.wxy, vec4<u32>(0u, 37614u, 14182u, var_0.d.x), vec4<bool>(var_0.e.x, true, false, arg_1))).e.yx)), !all(select(vec4<bool>(false, false, true, var_0.e.x), arg_0, vec4<bool>(false, var_0.e.x, arg_1, true)))), vec4<u32>(46988u, u_input.a.x, ~_wgslsmith_mod_u32(u_input.a.x, ~var_0.d.x), firstTrailingBit(abs(u_input.a.x >> (4294967295u % 32u)))), vec4<bool>(true, func_1(Struct_1(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(var_0.a, 62897i, 10596i, 2147483647i)), !arg_0, func_2().c, var_0.d, arg_0)).c.x, any(vec2<bool>(false, true)), false));
    let var_2 = abs(func_1(Struct_1(-var_1.a << (u_input.a.x % 32u), !(!vec4<bool>(arg_1, var_1.c.x, true, true)), vec3<bool>(all(vec3<bool>(false, false, arg_1)), false, arg_0.x), var_0.d, select(!vec4<bool>(var_0.c.x, var_1.c.x, true, arg_1), vec4<bool>(var_0.b.x, true, false, true), true))).a);
    global2 = -23445i;
    return StorageBuffer(u_input.a.x, vec2<f32>(_wgslsmith_f_op_f32(abs(-479f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1465f, 1958f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global1 = array<Struct_1, 19>();
    global0 = -2147483647i;
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 19u)];
    global0 = u_input.b.x;
    global0 = select(firstLeadingBit(firstTrailingBit(~(-23967i))) ^ ~(~var_1.a & _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), -52291i, var_1.b.x);
    let var_2 = ~14054u;
    let x = u_input.a;
    s_output = func_5(vec4<bool>(var_1.c.x, any(!vec4<bool>(var_1.c.x, false, var_1.c.x, var_1.c.x)), false, func_4(!vec3<bool>(false, var_1.b.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1347f * -918f) - -128f), Struct_1(-1i, var_1.e, var_1.e.wyy, ~vec4<u32>(u_input.a.x, 35729u, 1u, var_1.d.x), var_1.e), func_1(Struct_1(u_input.b.x, vec4<bool>(true, var_1.e.x, var_1.b.x, true), var_1.c, var_1.d, var_1.b)))), (var_1.a >> (~var_1.d.x % 32u)) >= u_input.c.x);
}

