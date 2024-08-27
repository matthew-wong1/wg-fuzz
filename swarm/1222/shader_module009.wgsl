struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1507f, 636f, -165f, -136f);

var<private> global1: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(469f, -974f, 151f, 540f), vec4<f32>(-313f, -566f, 2123f, -459f), vec4<f32>(1684f, 645f, -1000f, -508f), vec4<f32>(603f, -1024f, 2560f, -321f), vec4<f32>(799f, -479f, 2565f, -370f), vec4<f32>(-558f, 583f, 743f, 1000f), vec4<f32>(-874f, -1305f, -1012f, -181f), vec4<f32>(-305f, -504f, -1491f, -1000f), vec4<f32>(380f, 244f, 770f, -839f), vec4<f32>(-375f, 374f, 813f, 1844f), vec4<f32>(1000f, -564f, 572f, -1000f), vec4<f32>(-237f, -1157f, 350f, -1123f), vec4<f32>(-300f, 681f, 1229f, 1000f), vec4<f32>(-1153f, 222f, 122f, 1428f), vec4<f32>(-511f, -513f, 2466f, 1000f), vec4<f32>(-2400f, 2857f, 678f, -912f), vec4<f32>(-1580f, 1115f, 586f, -539f), vec4<f32>(962f, -1262f, -181f, 1149f), vec4<f32>(-800f, 473f, -1000f, -602f), vec4<f32>(1318f, 286f, -1426f, 1440f), vec4<f32>(669f, 248f, -1000f, 1000f));

var<private> global2: array<Struct_1, 20>;

var<private> global3: array<Struct_3, 24>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> f32 {
    var var_0 = arg_0.b.b.x;
    global2 = array<Struct_1, 20>();
    let var_1 = Struct_3(all(vec3<bool>(true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), true)), arg_0.b, arg_0, !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
    var var_2 = -vec3<i32>(arg_0.b.b.x, u_input.c.x, 65185i);
    global3 = array<Struct_3, 24>();
    return global0.x;
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec4<bool>) -> vec3<u32> {
    let var_0 = Struct_3(arg_3.x, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_0.a, ~(~1u)) ^ u_input.d, 20u)], Struct_2(vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-509f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(global0.xy, Struct_1(-1772f, u_input.a)), arg_0))), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(arg_1.wy, u_input.e), -vec2<i32>(-29094i, arg_2.b.x)))), vec2<bool>((~arg_0.a >= _wgslsmith_div_u32(arg_0.a, u_input.d)) || any(select(arg_3.xww, vec3<bool>(arg_3.x, true, arg_3.x), arg_3.x)), all(!vec3<bool>(true, false, arg_3.x))));
    return vec3<u32>(~(~u_input.d) << ((u_input.d >> (~1u % 32u)) % 32u), 20049u, u_input.d);
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = Struct_3(true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, arg_0, 4294967295u) << (vec3<u32>(46135u, u_input.d, arg_0) % vec3<u32>(32u)), vec3<u32>(arg_0, 1u, 0u)), max(func_2(Struct_4(59705u), vec4<i32>(-42234i, u_input.c.x, u_input.e.x, u_input.b), Struct_1(global0.x, vec2<i32>(u_input.b, -13387i)), vec4<bool>(true, true, true, false)), vec3<u32>(4294967295u, u_input.d, u_input.d) << (vec3<u32>(u_input.d, 65057u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u << (u_input.d % 32u), 4294967295u, countOneBits(arg_0)), vec3<u32>(~12921u, abs(1u), u_input.d))), 20u)], Struct_2(vec2<f32>(global0.x, global0.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -225f) - -602f), u_input.e << (vec2<u32>(0u, 32565u) % vec2<u32>(32u)))), vec2<bool>(!select(true, 1i == u_input.b, select(true, false, true)), (1i << ((1u << (u_input.d % 32u)) % 32u)) <= countOneBits(10251i)));
    var var_1 = Struct_4(505u);
    let var_2 = var_0.d;
    global3 = array<Struct_3, 24>();
    global0 = vec4<f32>(global0.x, -204f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(446f)), _wgslsmith_f_op_f32(step(-1662f, var_0.c.a.x)))), -526f);
    return 1025f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1085f, global0.x))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-602f * 412f), _wgslsmith_f_op_f32(func_1(u_input.d)), all(vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-522f)))))), false, !(!any(vec4<bool>(true, true, true, true)) & false));
    let var_1 = ~_wgslsmith_mod_vec4_i32(min(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.e.x, u_input.c.x), vec4<i32>(2147483647i, -20072i, -2147483647i, u_input.a.x)), -vec4<i32>(u_input.b, -11751i, u_input.a.x, -32908i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a.x, 95423i, u_input.e.x, 0i), -vec4<i32>(-2147483647i, -1i, 1i, u_input.a.x))), _wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.a.x, 33590i, u_input.c.x, u_input.c.x) | vec4<i32>(-48565i, u_input.c.x, u_input.a.x, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(-45216i, -1i, u_input.c.x, u_input.e.x), vec4<i32>(-35683i, u_input.e.x, -2147483647i, u_input.b)), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), firstTrailingBit(select(vec4<i32>(u_input.b, -58250i, 1i, u_input.e.x), vec4<i32>(-31558i, 11335i, 31639i, -29480i), vec4<bool>(false, false, var_0.x, var_0.x)))));
    var var_2 = 1i;
    let var_3 = Struct_3(var_0.x == var_0.x, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1947f)))), select(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, u_input.e.x), ~var_1.zz), firstTrailingBit(vec2<i32>(10753i, 22838i) ^ vec2<i32>(u_input.b, -1i)), var_0.yy)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0.zw), global0.zz))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~5436u, ~(~u_input.d)), 20u)]), select(vec2<bool>(87104u >= (u_input.d & 34557u), (4294967295u > u_input.d) || !var_0.x), !(!var_0.zx), var_0.xx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(var_3.c, Struct_4(abs(u_input.d)))))), -(~vec3<i32>(_wgslsmith_div_i32(28171i, u_input.a.x), 3121i, 0i)), vec2<i32>(u_input.e.x ^ 1i, _wgslsmith_mod_i32(var_1.x, _wgslsmith_dot_vec4_i32(~var_1, vec4<i32>(6896i, 44524i, 56933i, u_input.b) ^ vec4<i32>(37089i, u_input.a.x, 2147483647i, 12155i)))));
}

