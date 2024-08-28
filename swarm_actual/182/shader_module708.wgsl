struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(0u, 31510u, 20185u), vec3<u32>(15171u, 4294967295u, 0u), vec3<u32>(4152u, 19804u, 57905u), vec3<u32>(1u, 17287u, 18244u), vec3<u32>(21079u, 27004u, 99716u), vec3<u32>(13509u, 0u, 0u), vec3<u32>(0u, 30769u, 1u), vec3<u32>(4294967295u, 1u, 13638u), vec3<u32>(1u, 0u, 0u), vec3<u32>(34696u, 27447u, 38352u), vec3<u32>(15381u, 4294967295u, 3048u), vec3<u32>(4294967295u, 0u, 6772u), vec3<u32>(29364u, 25402u, 9164u), vec3<u32>(4294967295u, 44006u, 1u), vec3<u32>(0u, 15313u, 1u), vec3<u32>(4294967295u, 1489u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u));

var<private> global1: array<f32, 15> = array<f32, 15>(-1048f, -265f, 486f, 1603f, 770f, -1316f, 132f, -262f, 220f, -195f, -463f, -1817f, -160f, -413f, -921f);

var<private> global2: bool = true;

var<private> global3: array<i32, 19>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32) -> i32 {
    global2 = 454f == global1[_wgslsmith_index_u32(0u, 15u)];
    global0 = array<vec3<u32>, 18>();
    let var_0 = vec2<i32>(u_input.d.x & arg_0, 2147483647i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 15u)]));
    let var_2 = reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 6263u, _wgslsmith_sub_u32(~109569u, _wgslsmith_mod_u32(1u, 1u)), 5285u), min(countOneBits(vec4<u32>(6692u, 1u, 92983u, 12624u)), ~vec4<u32>(1u, 1u, 1u, 1u))));
    return _wgslsmith_sub_i32(-11928i, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_clamp_i32(-global3[_wgslsmith_index_u32(28044u, 19u)], 1i, var_0.x >> (var_2 % 32u)) << (_wgslsmith_div_u32(_wgslsmith_add_u32(var_2, var_2), var_2) % 32u), i32(-1i) * -1i));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<f32>) -> i32 {
    global3 = array<i32, 19>();
    global3 = array<i32, 19>();
    var var_0 = arg_1.a;
    let var_1 = vec2<f32>(1000f, _wgslsmith_f_op_f32(181f - -910f));
    var var_2 = arg_1;
    return -((func_3(2147483647i) & _wgslsmith_add_i32(global3[_wgslsmith_index_u32(0u, 19u)], var_0.b)) >> (firstTrailingBit(4294967295u) % 32u)) ^ 1i;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = abs(-reverseBits(vec4<i32>(~1i, -2147483647i, func_2(vec3<f32>(-404f, global1[_wgslsmith_index_u32(0u, 15u)], 1304f), Struct_2(Struct_1(vec3<i32>(6860i, -67872i, 0i), -1i, true, true, global1[_wgslsmith_index_u32(1u, 15u)]), Struct_1(vec3<i32>(u_input.d.x, u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 19u)]), -2147483647i, true, false, 817f), global1[_wgslsmith_index_u32(22550u, 15u)], Struct_1(vec3<i32>(u_input.b, 0i, global3[_wgslsmith_index_u32(arg_0, 19u)]), 2147483647i, false, false, global1[_wgslsmith_index_u32(1u, 15u)]), vec2<bool>(true, false)), Struct_2(Struct_1(u_input.d, u_input.c, true, false, global1[_wgslsmith_index_u32(12931u, 15u)]), Struct_1(vec3<i32>(-22611i, 1i, 32245i), 2043i, true, false, -958f), global1[_wgslsmith_index_u32(1u, 15u)], Struct_1(u_input.a, global3[_wgslsmith_index_u32(arg_0, 19u)], true, true, 1000f), vec2<bool>(false, true)), vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 15u)], -1000f)), global3[_wgslsmith_index_u32(2591u, 19u)] & u_input.c)));
    var var_1 = Struct_2(Struct_1(firstLeadingBit(~select(u_input.d, u_input.a, true)), _wgslsmith_sub_i32(abs(0i), -2147483647i), (_wgslsmith_f_op_f32(round(-1301f)) != _wgslsmith_f_op_f32(2252f - -1044f)) && true, true, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(min(7068u, arg_0)), 15u)])), Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(min(u_input.d, vec3<i32>(var_0.x, global3[_wgslsmith_index_u32(4294967295u, 19u)], 1i)), vec3<i32>(1i, global3[_wgslsmith_index_u32(arg_0, 19u)], var_0.x)), max(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, -1i, 1i), var_0.wyy), _wgslsmith_mult_vec3_i32(var_0.wyy, var_0.ywy))), global3[_wgslsmith_index_u32(countOneBits(arg_0 << (arg_0 % 32u)), 19u)], all(vec4<bool>(true, true, true, true)), -57004i <= (_wgslsmith_clamp_i32(-1i, global3[_wgslsmith_index_u32(arg_0, 19u)], global3[_wgslsmith_index_u32(arg_0, 19u)]) & min(1i, 43569i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(65116u, 15u)] + _wgslsmith_div_f32(3261f, -285f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 15u)] + global1[_wgslsmith_index_u32(arg_0, 15u)]))))), _wgslsmith_f_op_f32(round(540f)), Struct_1(vec3<i32>(countOneBits(_wgslsmith_sub_i32(u_input.c, -9082i)), firstTrailingBit(-u_input.a.x), 0i), ~(~min(u_input.a.x, global3[_wgslsmith_index_u32(arg_0, 19u)])), true, all(vec4<bool>(false, true, true, any(vec3<bool>(true, true, false)))), global1[_wgslsmith_index_u32(abs(arg_0), 15u)]), !vec2<bool>(false, (arg_0 & 9745u) > countOneBits(0u)));
    var var_2 = !all(vec3<bool>(var_1.d.c && true, false, _wgslsmith_f_op_f32(ceil(673f)) != var_1.d.e));
    let var_3 = Struct_2(var_1.d, var_1.a, var_1.c, var_1.b, !select(!var_1.e, select(select(var_1.e, var_1.e, var_1.e), var_1.e, var_1.e), var_1.e));
    let var_4 = Struct_1(vec3<i32>(-28247i, _wgslsmith_sub_i32(-(~var_3.b.b), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 44740u), max(1u, arg_0)), 19u)]), var_0.x), var_3.a.b, !any(vec3<bool>(var_3.b.c, all(vec4<bool>(true, var_3.a.c, var_1.a.d, true)), true)), var_3.d.c | var_1.e.x, _wgslsmith_f_op_f32(step(var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return var_3;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-414f, global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(arg_0.x, 15u)], -898f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.e, -2656f, arg_1.a.e, -1000f) * vec4<f32>(-512f, 2863f, -1000f, 1000f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1196f, -1565f, arg_1.a.e, -447f), vec4<f32>(arg_1.a.e, -1197f, arg_1.d.e, arg_1.c), arg_1.b.d))))))));
    let var_1 = arg_1;
    let var_2 = arg_1.b.d;
    var var_3 = 2147483647i;
    var var_4 = func_1((1u << (arg_0.x % 32u)) << (4294967295u % 32u));
    return func_1(~50282u).b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 19>();
    let var_0 = func_4(vec2<u32>(1u, 1u), func_1(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 9219u, 15843u), ~vec4<u32>(1u, 46866u, 16704u, 110448u)))));
    let var_1 = -1000f;
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(22697i, func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(6749u, 15u)], var_0.e, var_0.e)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-304f, 978f, var_0.e)))), Struct_2(var_0, var_0, _wgslsmith_f_op_f32(-var_0.e), var_0, select(vec2<bool>(false, var_0.d), vec2<bool>(false, false), vec2<bool>(var_0.d, true))), Struct_2(func_4(vec2<u32>(8048u, 493u), Struct_2(Struct_1(u_input.a, var_0.a.x, true, false, -908f), var_0, var_1, Struct_1(u_input.d, 2147483647i, var_0.d, var_0.c, var_1), vec2<bool>(var_0.d, true))), var_0, _wgslsmith_f_op_f32(f32(-1f) * -745f), Struct_1(u_input.d, 1i, false, var_0.c, var_0.e), select(vec2<bool>(var_0.d, var_0.c), vec2<bool>(var_0.c, var_0.d), vec2<bool>(var_0.c, false))), vec2<f32>(673f, _wgslsmith_f_op_f32(1689f + global1[_wgslsmith_index_u32(18064u, 15u)])))), -9596i, ~(-57230i), min(_wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, -var_0.b), ~(~33935i)), ~0i));
    var var_3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, 4294967295u, -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1931f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-700f * global1[_wgslsmith_index_u32(707u, 15u)]) + 1438f) + -685f)), min(-26410i, -15786i));
}

