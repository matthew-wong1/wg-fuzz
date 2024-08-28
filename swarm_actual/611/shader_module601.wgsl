struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(Struct_2(false, Struct_1(vec3<u32>(51989u, 0u, 67917u)), Struct_1(vec3<u32>(48792u, 66226u, 3061u))), vec3<f32>(-505f, 1025f, 498f), 48521u), Struct_3(Struct_2(false, Struct_1(vec3<u32>(0u, 1u, 27152u)), Struct_1(vec3<u32>(0u, 65994u, 0u))), vec3<f32>(-863f, 1110f, 1285f), 0u), Struct_3(Struct_2(true, Struct_1(vec3<u32>(116860u, 4294967295u, 0u)), Struct_1(vec3<u32>(38486u, 4294967295u, 7117u))), vec3<f32>(-140f, -1679f, -1520f), 1u), Struct_3(Struct_2(true, Struct_1(vec3<u32>(1u, 1u, 0u)), Struct_1(vec3<u32>(0u, 56953u, 33941u))), vec3<f32>(-164f, -330f, 1022f), 1u), Struct_3(Struct_2(true, Struct_1(vec3<u32>(0u, 443u, 14503u)), Struct_1(vec3<u32>(4294967295u, 19160u, 4294967295u))), vec3<f32>(-123f, -1000f, -530f), 0u), Struct_3(Struct_2(true, Struct_1(vec3<u32>(32347u, 35041u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u))), vec3<f32>(696f, -1718f, -429f), 0u), Struct_3(Struct_2(true, Struct_1(vec3<u32>(17475u, 11558u, 27977u)), Struct_1(vec3<u32>(1u, 1u, 0u))), vec3<f32>(-183f, -1313f, -1013f), 0u));

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(true, Struct_1(vec3<u32>(13064u, 44831u, 28185u)), Struct_1(vec3<u32>(19278u, 49681u, 1u))), Struct_2(true, Struct_1(vec3<u32>(54840u, 0u, 39996u)), Struct_1(vec3<u32>(0u, 0u, 55168u))), Struct_2(false, Struct_1(vec3<u32>(16611u, 1u, 53336u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 26302u))), Struct_2(true, Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(0u, 44022u, 43159u))), Struct_2(true, Struct_1(vec3<u32>(4294967295u, 7620u, 24080u)), Struct_1(vec3<u32>(4294967295u, 5341u, 1u))), Struct_2(true, Struct_1(vec3<u32>(39734u, 1u, 1u)), Struct_1(vec3<u32>(4294967295u, 0u, 577u))), Struct_2(true, Struct_1(vec3<u32>(4294967295u, 4294967295u, 28160u)), Struct_1(vec3<u32>(15196u, 69222u, 0u))), Struct_2(true, Struct_1(vec3<u32>(0u, 36442u, 1u)), Struct_1(vec3<u32>(20817u, 1u, 0u))));

var<private> global3: bool;

var<private> global4: bool = false;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_4, arg_3: f32) -> f32 {
    var var_0 = Struct_3(arg_2.b.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b.b)))), _wgslsmith_f_op_vec3_f32(arg_2.b.b - arg_2.b.b)), u_input.a.x);
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.b.a.c.a.x, arg_0.b.a.x), 8u)];
    let var_2 = _wgslsmith_add_vec4_u32(select(vec4<u32>(firstLeadingBit(var_0.a.b.a.x), 68092u, _wgslsmith_dot_vec3_u32(u_input.a.yxx, arg_0.c.a), 3877u << (u_input.a.x % 32u)), abs(vec4<u32>(var_0.a.c.a.x, var_0.a.c.a.x, arg_0.c.a.x, arg_0.c.a.x)), select(!vec4<bool>(arg_0.a, false, true, arg_2.b.a.a), vec4<bool>(var_0.a.a, true, var_0.a.a, var_1.a), select(vec4<bool>(arg_1, true, arg_0.a, false), vec4<bool>(arg_1, false, arg_1, arg_0.a), false))), ~u_input.a) >> ((_wgslsmith_mult_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(~u_input.a, u_input.a)) ^ vec4<u32>(var_0.c, min(_wgslsmith_dot_vec3_u32(vec3<u32>(46366u, var_1.c.a.x, var_1.c.a.x), var_1.c.a), 1u), ~(~arg_0.b.a.x), ~(~var_1.b.a.x))) % vec4<u32>(32u));
    let var_3 = ~(~u_input.a.xz);
    var var_4 = 49618i;
    return var_0.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global2 = array<Struct_2, 8>();
    let var_0 = _wgslsmith_mult_vec2_i32(global1.wy, firstTrailingBit(-(vec2<i32>(24065i, global1.x) >> (vec2<u32>(arg_2.a.x, arg_0.c.a.x) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0, true, Struct_4(global1.xwx, Struct_3(global2[_wgslsmith_index_u32(0u, 8u)], vec3<f32>(-1581f, 535f, -1066f), arg_0.c.a.x)), _wgslsmith_f_op_f32(select(845f, 1066f, true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1786f, 1075f, true)))) + 788f)));
    var var_2 = ~(_wgslsmith_mod_i32(~(-1i ^ global1.x), firstTrailingBit(1i << (0u % 32u))) ^ _wgslsmith_mult_i32(var_0.x, abs(global1.x)));
    let var_3 = arg_1;
    return arg_0.b;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global4 = arg_0.x;
    return func_2(global2[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zy) & countOneBits(~0u)), 8u)], false, Struct_1(select(reverseBits(vec3<u32>(u_input.a.x, 34899u, u_input.a.x)) | (vec3<u32>(46384u, 0u, u_input.a.x) & u_input.a.wzy), u_input.a.zxx, all(arg_0))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: Struct_1) -> i32 {
    let var_0 = 18005i;
    var var_1 = Struct_3(Struct_2(arg_1.x, Struct_1(~u_input.a.yxy), arg_2), vec3<f32>(1f, 1f, 1f), 4294967295u);
    var var_2 = var_1.a.b;
    var var_3 = -vec2<i32>(var_0 & 68735i, 2147483647i);
    var var_4 = !select(arg_1, select(select(!arg_1, vec2<bool>(false, arg_1.x), !var_1.a.a), !arg_1, vec2<bool>(true, 1u != var_2.a.x)), arg_1);
    return ~(~(-var_0 << (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~(~u_input.a.yw), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), func_1(vec4<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), false, ~u_input.a.x > (u_input.a.x & 49748u), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))))));
    var var_1 = global1.x;
    var var_2 = 57102u;
    var var_3 = u_input.a.x;
    var var_4 = Struct_2(true, Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x) >> (min(u_input.a.xyx, u_input.a.wyz) % vec3<u32>(32u)), ~u_input.a.xyz)), Struct_1(~u_input.a.yyy));
    global0 = array<Struct_3, 7>();
    var var_5 = global2[_wgslsmith_index_u32(1u, 8u)];
    var var_6 = _wgslsmith_mult_i32(~global1.x, ~abs(global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(_wgslsmith_sub_i32(global1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, -1i), global1.xz)), global1.x), ~var_4.c.a.x, global1.zwx);
}

