struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: Struct_2,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22>;

var<private> global1: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(1326f, Struct_2(Struct_1(4294967295u, vec2<f32>(-843f, 1036f), vec4<f32>(-391f, -858f, -1018f, -810f), -1i, 0u), vec2<i32>(i32(-2147483648), -25028i), 44468i, true)), Struct_3(1166f, Struct_2(Struct_1(10947u, vec2<f32>(1072f, -403f), vec4<f32>(565f, -1202f, 787f, -447f), 68236i, 4294967295u), vec2<i32>(10508i, -1i), 51097i, false)), Struct_3(-604f, Struct_2(Struct_1(0u, vec2<f32>(-1834f, -570f), vec4<f32>(427f, -270f, 217f, 159f), 1i, 9161u), vec2<i32>(i32(-2147483648), -9611i), 3516i, true)), Struct_3(2855f, Struct_2(Struct_1(41084u, vec2<f32>(699f, -202f), vec4<f32>(-103f, 1651f, -671f, 1000f), 1i, 4294967295u), vec2<i32>(0i, i32(-2147483648)), 1i, false)), Struct_3(-1422f, Struct_2(Struct_1(0u, vec2<f32>(-1632f, 677f), vec4<f32>(-159f, -1305f, 285f, -1274f), 37910i, 1u), vec2<i32>(i32(-2147483648), -58215i), i32(-2147483648), true)), Struct_3(-808f, Struct_2(Struct_1(7970u, vec2<f32>(-420f, -949f), vec4<f32>(-199f, -446f, 295f, -1380f), 5653i, 29558u), vec2<i32>(2586i, 24240i), -1i, false)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_3) -> vec2<u32> {
    global0 = array<vec3<f32>, 22>();
    let var_0 = arg_0;
    var var_1 = arg_0.b.a;
    global0 = array<vec3<f32>, 22>();
    let var_2 = arg_0.b.a;
    return vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 40776u, var_2.e), vec3<u32>(var_1.e, 15910u, arg_0.b.a.e)), 31514u, select(var_0.b.a.a, 12832u, true)), ~select(min(vec4<u32>(arg_0.b.a.e, var_1.a, 4294967295u, 0u), vec4<u32>(18304u, 12838u, 0u, arg_3.b.a.e)), _wgslsmith_add_vec4_u32(vec4<u32>(38299u, 6037u, var_1.a, 0u), vec4<u32>(arg_3.b.a.e, var_2.e, var_0.b.a.a, 69654u)), false)), 34350u);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec2_u32(func_3(global1[_wgslsmith_index_u32(firstTrailingBit(~0u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(68340u, 1u, 55063u), vec3<u32>(64669u, 28504u, 1u)) % 32u), 6u)], (all(vec3<bool>(arg_1.x, true, arg_1.x)) || true) || false, select(_wgslsmith_mult_vec4_i32(vec4<i32>(5660i, u_input.b, 0i, -3754i), -vec4<i32>(39866i, 2897i, -82212i, 3160i)), countOneBits(vec4<i32>(u_input.b, -2147483647i, -1i, u_input.b)) >> (~vec4<u32>(1u, 59468u, 20245u, 4294967295u) % vec4<u32>(32u)), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), global1[_wgslsmith_index_u32(49852u, 6u)]), vec2<u32>(func_3(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -442f), Struct_2(Struct_1(73346u, vec2<f32>(-2047f, 278f), vec4<f32>(arg_0, arg_0, -173f, -692f), u_input.c.x, 4294967295u), u_input.c.yx, 1i, arg_1.x)), !select(true, arg_1.x, arg_1.x), vec4<i32>(1i, u_input.a, u_input.c.x, 1i), global1[_wgslsmith_index_u32(~71389u, 6u)]).x, ~abs(abs(1032u))));
    global0 = array<vec3<f32>, 22>();
    var_0 = 4294967295u;
    global1 = array<Struct_3, 6>();
    var var_1 = ~(~(select(func_3(global1[_wgslsmith_index_u32(0u, 6u)], true, vec4<i32>(-1i, 76910i, u_input.a, u_input.c.x), Struct_3(arg_0, Struct_2(Struct_1(1u, vec2<f32>(413f, arg_0), vec4<f32>(1983f, arg_0, arg_0, arg_0), -4958i, 0u), u_input.c.xx, -12605i, arg_1.x))).x, 1u, arg_1.x) << (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(1u, 56195u, 1u))) % 32u)));
    return global1[_wgslsmith_index_u32(14316u, 6u)];
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> i32 {
    var var_0 = false;
    var var_1 = func_2(arg_2.a.b.x, vec3<bool>((_wgslsmith_dot_vec2_u32(vec2<u32>(17894u, arg_2.a.a), vec2<u32>(arg_2.a.a, arg_2.a.a)) >= _wgslsmith_mult_u32(arg_2.a.e, 4294967295u)) && (_wgslsmith_div_f32(675f, -103f) <= arg_0), arg_2.d, max(firstTrailingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(29385u, 26447u, 10490u, 47734u), vec4<u32>(1u, arg_2.a.a, arg_2.a.a, arg_2.a.a))) < select(arg_2.a.a, ~arg_2.a.a, true)));
    var var_2 = -2147483647i;
    var var_3 = func_2(_wgslsmith_f_op_f32(-arg_2.a.c.x), !vec3<bool>(-11162i == arg_1, -1262f >= var_1.a, any(!vec3<bool>(arg_2.d, var_1.b.d, true)))).b;
    let var_4 = ~(~vec2<u32>(arg_2.a.a, var_1.b.a.a));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-firstLeadingBit(countOneBits(u_input.c.x)));
    let var_1 = !(!vec2<bool>(any(vec3<bool>(true, true, true)), false));
    global0 = array<vec3<f32>, 22>();
    global0 = array<vec3<f32>, 22>();
    global0 = array<vec3<f32>, 22>();
    global0 = array<vec3<f32>, 22>();
    global1 = array<Struct_3, 6>();
    global0 = array<vec3<f32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(~21442i, -func_1(992f, 23122i, Struct_2(Struct_1(0u, vec2<f32>(-2773f, -781f), vec4<f32>(970f, 1309f, 832f, -261f), var_0, 1u), vec2<i32>(u_input.a, u_input.b), 7125i, var_1.x)), _wgslsmith_mod_i32(var_0, u_input.c.x & 2147483647i), 2147483647i));
}

