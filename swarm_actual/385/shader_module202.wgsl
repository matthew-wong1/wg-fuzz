struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(55946u);

var<private> global1: array<vec4<bool>, 6>;

var<private> global2: array<bool, 14> = array<bool, 14>(false, false, true, true, false, true, false, false, true, false, true, false, false, true);

var<private> global3: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(vec4<i32>(2147483647i, 1i, -14866i, 1i)), Struct_4(vec4<i32>(38802i, 21766i, 6340i, i32(-2147483648))), Struct_4(vec4<i32>(-3077i, 31146i, i32(-2147483648), -649i)), Struct_4(vec4<i32>(1i, -23325i, 10754i, -1i)), Struct_4(vec4<i32>(10215i, 7233i, 28701i, 0i)), Struct_4(vec4<i32>(11396i, 0i, -38209i, -853i)), Struct_4(vec4<i32>(2147483647i, 20231i, -39476i, 29392i)), Struct_4(vec4<i32>(8847i, 2147483647i, -15822i, 2147483647i)), Struct_4(vec4<i32>(42800i, 29723i, 24289i, 1i)), Struct_4(vec4<i32>(-19153i, 57799i, 2147483647i, 1i)), Struct_4(vec4<i32>(-15844i, 4302i, 24492i, 2513i)), Struct_4(vec4<i32>(30109i, -1i, 1i, 0i)), Struct_4(vec4<i32>(41564i, 19361i, 2147483647i, -101795i)), Struct_4(vec4<i32>(1i, 32265i, 1i, i32(-2147483648))), Struct_4(vec4<i32>(2147483647i, -21220i, 16749i, 62266i)), Struct_4(vec4<i32>(-13727i, 23225i, 379i, 32751i)), Struct_4(vec4<i32>(13119i, i32(-2147483648), 2147483647i, 2147483647i)), Struct_4(vec4<i32>(-24947i, 156i, 47600i, -57365i)), Struct_4(vec4<i32>(i32(-2147483648), 1i, 38227i, -22468i)), Struct_4(vec4<i32>(i32(-2147483648), 19147i, 7507i, -93914i)));

var<private> global4: array<f32, 19>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: i32) -> Struct_3 {
    let var_0 = 1044f;
    global1 = array<vec4<bool>, 6>();
    var var_1 = vec3<bool>(any(vec2<bool>(true, select(!global2[_wgslsmith_index_u32(arg_1.d, 14u)], global2[_wgslsmith_index_u32(~103839u, 14u)], false))), global2[_wgslsmith_index_u32(u_input.c, 14u)], true);
    global0 = array<u32, 1>();
    global2 = array<bool, 14>();
    return Struct_3(select(vec3<u32>(~47793u << (~4294967295u % 32u), ~7388u, arg_1.d << (50221u % 32u)), vec3<u32>(18387u, abs(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(87744u, 1u)], arg_1.c.x)), arg_1.c.x), !vec3<bool>(u_input.c == global0[_wgslsmith_index_u32(1u, 1u)], false && var_1.x, global2[_wgslsmith_index_u32(~38280u, 14u)])), !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(47573u, 1u, arg_1.d, ~u_input.c), ~vec4<u32>(43156u, global0[_wgslsmith_index_u32(1u, 1u)], arg_1.c.x, global0[_wgslsmith_index_u32(arg_1.c.x, 1u)]) << (firstTrailingBit(vec4<u32>(4294967295u, u_input.c, arg_1.d, 4294967295u)) % vec4<u32>(32u))), 14u)], vec2<bool>(var_1.x, true));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec4<f32>) -> i32 {
    global3 = array<Struct_4, 20>();
    var var_0 = vec4<bool>(func_1(arg_3.zww, arg_0, firstTrailingBit(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b, u_input.a, u_input.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 27716i, -1i), vec3<i32>(u_input.a, u_input.b, -1i)))), -1i).c.x, arg_1.c.x, arg_1.b, true);
    var_0 = !vec4<bool>(func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_3.zwz))), Struct_1(-791f, _wgslsmith_f_op_f32(2762f - -554f), ~arg_0.c, ~arg_0.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 4806i, 41067i), vec3<i32>(-7087i, 1i, -8186i), vec3<i32>(65819i, u_input.a, 0i)) >> (_wgslsmith_clamp_vec3_u32(arg_1.a, arg_1.a, vec3<u32>(u_input.c, arg_0.d, arg_1.a.x)) % vec3<u32>(32u)), -5303i).b, !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(71194u, 0u, arg_0.d, arg_0.c.x) & vec4<u32>(4294967295u, 4294967295u, 25724u, arg_1.a.x), ~vec4<u32>(arg_1.a.x, global0[_wgslsmith_index_u32(28089u, 1u)], 71135u, arg_1.a.x)), 14u)], !all(select(var_0.yw, vec2<bool>(true, var_0.x), true)), arg_1.c.x && !(!global2[_wgslsmith_index_u32(34477u, 14u)]));
    let var_1 = arg_1.a.x;
    let var_2 = Struct_3(_wgslsmith_mod_vec3_u32(arg_1.a, ~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 55186u, 1u), arg_1.a), vec3<u32>(arg_1.a.x, 72224u, 0u), arg_1.a)), arg_1.c.x, select(!(!arg_1.c), vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(26127u, 1u)], var_1)), 14u)], !(!global2[_wgslsmith_index_u32(var_1, 14u)])), var_0.zx));
    return _wgslsmith_dot_vec2_i32(abs(countOneBits(max(-vec2<i32>(-2147483647i, 30802i), select(vec2<i32>(u_input.a, -39936i), vec2<i32>(u_input.b, u_input.b), var_0.zw)))), vec2<i32>(-6655i >> (abs(var_1) % 32u), -2147483647i) ^ _wgslsmith_sub_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, 2147483647i)), ~(~vec2<i32>(u_input.a, 1i))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<u32>) -> f32 {
    let var_0 = vec3<bool>(!arg_2.c.x, func_3(Struct_1(456f, 256f, arg_2.a.xz, _wgslsmith_add_u32(4294967295u, u_input.c)), arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(37111u, 19u)], 2528f, arg_0.b), vec3<f32>(-993f, 773f, 1000f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4[_wgslsmith_index_u32(28929u, 19u)], 881f, arg_0.b, 730f), vec4<f32>(-252f, -893f, -1422f, arg_0.b), arg_2.b)), vec4<f32>(1068f, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 19u)], -1079f, 1000f)))) <= ~0i, arg_2.c.x);
    global1 = array<vec4<bool>, 6>();
    global3 = array<Struct_4, 20>();
    global2 = array<bool, 14>();
    let var_1 = _wgslsmith_clamp_i32(~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(-38147i, 0i, 1i)), -u_input.a), -58116i, _wgslsmith_mult_i32(-u_input.b, _wgslsmith_mod_i32(-48435i, u_input.b) ^ _wgslsmith_clamp_i32(8219i, u_input.a, -1i))) | ~2147483647i;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 19>();
    let var_0 = Struct_2(vec4<u32>(firstTrailingBit(~global0[_wgslsmith_index_u32(1u, 1u)]), u_input.c, firstTrailingBit(0u), ~u_input.c), Struct_1(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(select(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(26609u, 1u)], 0u), 0u, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 1u)], 14u)]), 19u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-492f, global4[_wgslsmith_index_u32(0u, 19u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(global4[_wgslsmith_index_u32(u_input.c, 19u)], global4[_wgslsmith_index_u32(13573u, 19u)], vec2<u32>(1u, global0[_wgslsmith_index_u32(u_input.c, 1u)]), u_input.c), Struct_3(vec3<u32>(u_input.c, u_input.c, u_input.c), false, vec2<bool>(true, global2[_wgslsmith_index_u32(65601u, 14u)])), func_1(vec3<f32>(-2079f, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24677u, 1u)], 19u)], global4[_wgslsmith_index_u32(8319u, 19u)]), Struct_1(-414f, global4[_wgslsmith_index_u32(22694u, 19u)], vec2<u32>(60105u, 43239u), u_input.c), vec3<i32>(0i, u_input.b, -1i), -2147483647i), ~vec4<u32>(4294967295u, u_input.c, u_input.c, global0[_wgslsmith_index_u32(4294967295u, 1u)]))) + _wgslsmith_f_op_f32(abs(606f))), ~func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(859f, 652f, 2188f), vec3<f32>(global4[_wgslsmith_index_u32(1u, 19u)], -422f, 537f), vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(15444u, 14u)]))), Struct_1(638f, 154f, vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 1u)], global0[_wgslsmith_index_u32(40726u, 1u)]), u_input.c), firstTrailingBit(vec3<i32>(2147483647i, u_input.b, -2147483647i)), u_input.b << (u_input.c % 32u)).a.yy, ~4294967295u), -1987f, ~1u, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1068f - -1955f), global4[_wgslsmith_index_u32(~123773u, 19u)])))), global4[_wgslsmith_index_u32(29766u, 19u)]));
    let var_1 = vec4<f32>(var_0.b.b, -978f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_0.e.x, -972f, global2[_wgslsmith_index_u32(4294967295u, 14u)])), 734f)))), 1f);
    let var_2 = func_1(var_1.yww, var_0.b, -(~(vec3<i32>(u_input.b, u_input.b, -25275i) >> (vec3<u32>(u_input.c, 0u, 4294967295u) % vec3<u32>(32u))) >> (abs(var_0.a.xwz) % vec3<u32>(32u))), u_input.b);
    global4 = array<f32, 19>();
    global4 = array<f32, 19>();
    var var_3 = Struct_4(-(countOneBits(vec4<i32>(-6742i, u_input.b, -19580i, u_input.b)) << (~var_0.a % vec4<u32>(32u))));
    var var_4 = Struct_3(firstLeadingBit(vec3<u32>(~_wgslsmith_div_u32(var_0.a.x, 4294967295u), ~var_2.a.x, _wgslsmith_mod_u32(firstLeadingBit(global0[_wgslsmith_index_u32(1u, 1u)]), ~4294967295u))), any(select(!(!vec3<bool>(false, var_2.c.x, true)), !select(vec3<bool>(false, global2[_wgslsmith_index_u32(var_2.a.x, 14u)], global2[_wgslsmith_index_u32(var_0.b.c.x, 14u)]), vec3<bool>(var_2.b, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 14u)], true), global2[_wgslsmith_index_u32(var_2.a.x, 14u)]), var_2.b)), func_1(vec3<f32>(_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.a.x, 19737u, global0[_wgslsmith_index_u32(108123u, 1u)]), 19u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a * global4[_wgslsmith_index_u32(var_0.a.x, 19u)]) - 438f), 1115f), var_0.b, vec3<i32>(-u_input.b, 1i, 1i), var_3.a.x).c);
    var var_5 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-(0i ^ var_3.a.x));
}

