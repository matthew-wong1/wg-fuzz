struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-18415i, -33205i, -3129i);

var<private> global1: array<Struct_2, 23>;

var<private> global2: array<Struct_2, 19>;

var<private> global3: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(44642u, 1u, 37574u, 26316u), vec4<u32>(13993u, 1u, 52945u, 0u), vec4<u32>(48212u, 4294967295u, 0u, 0u), vec4<u32>(1u, 18068u, 36501u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<u32>(0u, 47083u, 31945u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 36181u), vec4<u32>(19074u, 4294967295u, 30976u, 4294967295u), vec4<u32>(5112u, 58366u, 4294967295u, 66978u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(39171u, 62374u, 1u, 0u), vec4<u32>(1u, 1u, 1u, 40770u), vec4<u32>(25035u, 1u, 27522u, 4294967295u), vec4<u32>(0u, 67678u, 61850u, 1u), vec4<u32>(10927u, 1u, 32369u, 0u), vec4<u32>(19872u, 67077u, 39254u, 0u), vec4<u32>(36864u, 1u, 4294967295u, 53245u), vec4<u32>(28137u, 0u, 56016u, 4294967295u), vec4<u32>(4294967295u, 35424u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 78577u, 74284u), vec4<u32>(5072u, 30968u, 22537u, 20116u), vec4<u32>(4294967295u, 0u, 23900u, 23940u), vec4<u32>(1u, 38990u, 4294967295u, 1u), vec4<u32>(8438u, 45103u, 721u, 4231u), vec4<u32>(33676u, 1u, 4294967295u, 53395u), vec4<u32>(43852u, 75388u, 1u, 1u), vec4<u32>(9724u, 4294967295u, 1u, 13683u), vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<u32>(0u, 40355u, 65218u, 4294967295u), vec4<u32>(0u, 4294967295u, 3919u, 4294967295u), vec4<u32>(51257u, 39054u, 4294967295u, 919u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> Struct_3 {
    global1 = array<Struct_2, 23>();
    var var_0 = arg_1;
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(1168u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, 18782u, arg_0), ~u_input.a.wxz)), firstTrailingBit(2201u)), 19u)]);
    var_0 = var_1.a.c;
    let var_2 = vec4<i32>(-1i) * -abs(vec4<i32>(-2147483647i | global0.x, abs(2147483647i), 0i, ~u_input.d.x));
    return var_1;
}

fn func_3() -> bool {
    var var_0 = global0.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1318f * 649f))) - -1647f))) * 1f);
    let var_2 = true;
    let var_3 = func_2(u_input.b.x, func_2(~0u, Struct_1(!(!vec2<bool>(var_2, var_2)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(711f, -1545f, 382f) - vec3<f32>(-125f, -1177f, -372f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-232f, -1545f, 140f)))), var_2), !(!select(vec4<bool>(true, true, true, var_2), vec4<bool>(true, true, false, var_2), false)), _wgslsmith_clamp_i32(1i, global0.x, _wgslsmith_mult_i32(1i, firstLeadingBit(1i)))).a.c, !vec4<bool>(var_2, var_2, true, false), global0.x >> (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.zy, ~vec2<u32>(1134u, 73533u)), firstTrailingBit(~u_input.b)) % 32u));
    let var_4 = _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.d.x, var_3.a.a, ~(-3041i), _wgslsmith_dot_vec2_i32(u_input.c, ~global0.xz)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(1i, min(var_3.a.a, var_3.a.a)), abs(i32(-1i) * -26070i), -firstLeadingBit(global0.x), 2147483647i), firstLeadingBit(vec4<i32>(var_3.a.a, u_input.d.x, -var_3.a.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-12537i, 1i, global0.x, -38729i), vec4<i32>(-2147483647i, -1i, u_input.d.x, var_3.a.a)))), countOneBits(select(vec4<i32>(u_input.c.x, global0.x, 26276i, u_input.d.x), reverseBits(vec4<i32>(global0.x, global0.x, -2147483647i, var_3.a.a)), var_3.a.b.x))));
    return !(!any(!select(vec2<bool>(var_3.a.b.x, false), var_3.a.b.zz, false)));
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = !vec4<bool>(true, true, all(!vec4<bool>(arg_0.d, false, arg_0.a.x, false)), arg_0.d);
    var var_1 = Struct_1(vec2<bool>(-1000f != arg_0.b.x, !any(select(var_0, var_0, true))), arg_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.b.x, arg_0.c.x, -214f))), arg_0.b, func_2(0u, arg_0, vec4<bool>(true, true, var_0.x, arg_0.d), 1i).a.b))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.c.x, 832f, arg_0.b.x), vec3<f32>(1000f, 468f, arg_0.b.x))) + vec3<f32>(-270f, arg_0.b.x, 692f))))), func_2(u_input.a.x, Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0.b + vec3<f32>(-1012f, arg_0.b.x, arg_0.b.x)))), vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b.x), !any(vec3<bool>(true, arg_0.d, true))), vec4<bool>(arg_0.d, ~u_input.b.x > 1u, var_0.x, true), firstTrailingBit(~(~(-2147483647i)))).a.b.x);
    var var_2 = _wgslsmith_dot_vec2_i32(min(_wgslsmith_div_vec2_i32(global0.zx ^ -u_input.d.zz, (vec2<i32>(-33588i, global0.x) >> (vec2<u32>(u_input.a.x, u_input.b.x) % vec2<u32>(32u))) ^ global0.xx), vec2<i32>(-1i) * -min(vec2<i32>(global0.x, -2147483647i), global0.zy)), global0.xy);
    global2 = array<Struct_2, 19>();
    var_1 = Struct_1(!func_2(_wgslsmith_clamp_u32(u_input.a.x, 24905u, firstLeadingBit(41372u)), arg_0, vec4<bool>(all(vec4<bool>(false, false, false, true)), func_2(0u, arg_0, vec4<bool>(true, var_1.d, var_1.a.x, var_1.a.x), -2147483647i).a.c.d, true, var_1.a.x), ~u_input.c.x).a.c.a, _wgslsmith_f_op_vec3_f32(select(var_1.b, _wgslsmith_f_op_vec3_f32(-arg_0.b), false)), vec3<f32>(1452f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(arg_0.b.x + var_1.c.x)))), arg_0.c.x), arg_0.a.x);
    return any(var_0);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2.c;
    let var_1 = func_2(u_input.a.x >> (4294967295u % 32u), arg_2.c, !(!vec4<bool>(true | arg_0, !var_0.d, arg_0, false)), i32(-1i) * -2147483647i);
    var var_2 = arg_2.c;
    global1 = array<Struct_2, 23>();
    var var_3 = func_4(Struct_1(vec2<bool>(func_3(), true), vec3<f32>(129f, -3451f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1066f) - var_0.c.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_1.a.c.c))), global0.x < -(arg_1 << (0u % 32u))));
    return func_2(firstTrailingBit(_wgslsmith_dot_vec4_u32(~u_input.a, ~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 86951u)))), Struct_1(!select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), var_0.a.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1513f, -1445f, 1307f)) * vec3<f32>(675f, var_0.b.x, 654f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.c.b.x, -1000f, var_0.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(991f, arg_2.c.b.x, -606f) - var_0.b)) * func_2(u_input.b.x, func_2(u_input.b.x, Struct_1(arg_2.c.a, arg_2.c.b, var_2.b, true), vec4<bool>(false, false, true, arg_0), -24675i).a.c, select(vec4<bool>(var_2.a.x, false, false, true), vec4<bool>(false, var_2.d, false, false), vec4<bool>(true, false, var_0.d, arg_0)), _wgslsmith_dot_vec3_i32(u_input.d, u_input.d)).a.c.c), false), !(!(!select(vec4<bool>(false, var_1.a.c.d, var_0.d, true), vec4<bool>(false, var_1.a.c.a.x, false, var_0.a.x), vec4<bool>(true, false, var_1.a.b.x, var_1.a.b.x)))), _wgslsmith_dot_vec2_i32(global0.xz, global0.xy)).a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(select(-64394i, ~(~67552i), all(vec3<bool>(true, true, true))), !vec3<bool>(all(vec4<bool>(false, true, true, false)), false, true), func_1(73572u == (u_input.b.x & u_input.b.x), -2147483647i, Struct_2(2147483647i, vec3<bool>(false, true, false), Struct_1(vec2<bool>(false, true), vec3<f32>(-1255f, -1000f, -464f), vec3<f32>(-517f, -793f, 822f), false)))));
    var var_1 = var_0.a.b.yx;
    var var_2 = 377f;
    var var_3 = u_input.b;
    let var_4 = global0.x;
    global2 = array<Struct_2, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~var_3.x), var_0.a.c.b.x);
}

