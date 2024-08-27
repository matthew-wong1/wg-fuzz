struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<i32, 30> = array<i32, 30>(i32(-2147483648), 24795i, -54870i, 1i, 64624i, 1i, -46514i, 1i, 65470i, 1i, -31529i, -21558i, 2147483647i, 21431i, 0i, i32(-2147483648), i32(-2147483648), -71068i, i32(-2147483648), 1i, 2147483647i, 2147483647i, 20381i, -6086i, 17854i, -8377i, -1i, -36213i, -1i, 35744i);

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false));

var<private> global3: array<i32, 1> = array<i32, 1>(-8922i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = arg_0.c;
    let var_1 = abs(vec2<i32>(8774i, 2147483647i));
    var var_2 = arg_0.b;
    global3 = array<i32, 1>();
    global2 = array<Struct_1, 26>();
    return all(select(select(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, arg_0.b.a), vec2<bool>(arg_0.b.a, arg_3.a)), all(vec3<bool>(arg_0.b.a, false, arg_0.b.a))), !vec2<bool>(var_2.a, arg_3.a), vec2<bool>(var_2.a, false)), !vec2<bool>(true, any(vec3<bool>(arg_2.a, arg_3.a, arg_0.b.a))), vec2<bool>(var_2.a, true)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec3<u32> {
    global3 = array<i32, 1>();
    let var_0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -464f), arg_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1964f, -2459f)))))), arg_0.c.x));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global0.x));
    global1 = array<i32, 30>();
    var var_1 = firstLeadingBit(4294967295u);
    return _wgslsmith_div_vec3_u32(arg_0.a, ~vec3<u32>(_wgslsmith_add_u32(39266u, u_input.d), 40737u, arg_0.d.c) | vec3<u32>(~_wgslsmith_sub_u32(arg_1.c, u_input.d), 34218u, min(34374u, 14591u)));
}

fn func_2() -> bool {
    var var_0 = Struct_3(firstTrailingBit(~func_3(Struct_3(vec3<u32>(1u, u_input.d, u_input.d), vec4<i32>(u_input.a.x, 14072i, global3[_wgslsmith_index_u32(u_input.d, 1u)], u_input.b.x), vec2<f32>(global0.x, 634f), Struct_2(global0.x, global2[_wgslsmith_index_u32(4294967295u, 26u)], u_input.d)), Struct_2(global0.x, global2[_wgslsmith_index_u32(u_input.d, 26u)], u_input.d))), ~u_input.a, _wgslsmith_div_vec2_f32(vec2<f32>(224f, _wgslsmith_f_op_f32(f32(-1f) * -186f)), vec2<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_div_f32(1529f, _wgslsmith_f_op_f32(149f - -1057f)))), Struct_2(-197f, Struct_1(_wgslsmith_f_op_f32(floor(489f)) >= _wgslsmith_f_op_f32(select(504f, global0.x, true))), _wgslsmith_add_u32(countOneBits(19279u & u_input.d), ~_wgslsmith_div_u32(104459u, u_input.d))));
    var var_1 = _wgslsmith_mult_vec4_u32(~(~abs(vec4<u32>(var_0.a.x, 141485u, 0u, var_0.a.x))), vec4<u32>(func_3(Struct_3(vec3<u32>(49093u, 41639u, var_0.a.x), vec4<i32>(33633i, 40049i, var_0.b.x, 0i), vec2<f32>(var_0.d.a, var_0.c.x), Struct_2(global0.x, var_0.d.b, u_input.d)), var_0.d).x, min(reverseBits(1u), ~19218u), 4294967295u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(74485u, 26091u, 1u), vec3<u32>(u_input.d, var_0.d.c, u_input.d), var_0.d.b.a), vec3<u32>(var_0.a.x, u_input.d, 4294967295u)))) << (_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(u_input.d, u_input.d, 8327u, 0u) ^ vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.d)), ~(vec4<u32>(48229u, u_input.d, 84863u, 5393u) << (vec4<u32>(0u, 59616u, 25823u, 31296u) % vec4<u32>(32u)))), ~(~vec4<u32>(var_0.a.x, 1u, u_input.d, 50130u)) << (~vec4<u32>(var_0.d.c, 5865u, u_input.d, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.c, _wgslsmith_f_op_vec2_f32(var_0.c + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1315f, var_0.c.x))))))));
    let var_2 = !select(!vec4<bool>(var_0.d.b.a && var_0.d.b.a, var_0.d.b.a || var_0.d.b.a, var_0.d.b.a || var_0.d.b.a, var_0.d.b.a), !vec4<bool>(all(vec4<bool>(false, false, var_0.d.b.a, false)), true, false, false), any(!vec2<bool>(false, var_0.d.b.a)));
    return !select(any(vec4<bool>(false, var_0.d.b.a, var_0.d.b.a, var_2.x)) || true, var_0.d.b.a, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true);
    let var_1 = false;
    let var_2 = _wgslsmith_div_f32(-358f, 943f);
    global1 = array<i32, 30>();
    var var_3 = !(!(!vec4<bool>(var_1 || var_0.a, func_1(Struct_2(var_2, var_0, u_input.d), vec2<i32>(u_input.a.x, 31129i), var_0, Struct_1(true)), false, true)));
    var_3 = vec4<bool>(false, false, true, func_2());
    var_3 = !select(vec4<bool>(func_1(Struct_2(612f, Struct_1(true), 4294967295u), u_input.c, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(27184u, u_input.d, u_input.d), vec3<u32>(4294967295u, u_input.d, 58703u)), 26u)], var_0), (i32(-1i) * -50524i) > min(global1[_wgslsmith_index_u32(40337u, 30u)], 35594i), var_1, var_2 < 676f), select(vec4<bool>(var_0.a, var_1, any(vec2<bool>(var_1, var_0.a)), var_3.x), select(!vec4<bool>(true, true, true, var_0.a), vec4<bool>(var_1, var_3.x, var_0.a, var_3.x), false), true), select(!vec4<bool>(var_1, false, false, true), select(vec4<bool>(false, var_1, var_1, false), select(vec4<bool>(false, var_1, false, true), vec4<bool>(var_3.x, var_1, var_3.x, var_3.x), true), !var_1), vec4<bool>(!var_0.a, any(vec4<bool>(true, var_3.x, true, var_1)), var_0.a == var_0.a, any(vec2<bool>(var_3.x, false)))));
    var var_4 = (false || all(select(var_3.xzx, !vec3<bool>(var_0.a, false, false), false & var_1))) || var_1;
    global2 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_mult_u32(u_input.d, u_input.d) | 1u, 1u));
}

