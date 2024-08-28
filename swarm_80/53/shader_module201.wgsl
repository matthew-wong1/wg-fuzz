struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: Struct_3,
    e: vec4<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6>;

var<private> global1: array<vec4<u32>, 31>;

var<private> global2: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(Struct_2(-315f, true, 4294967295u, vec2<i32>(1i, -1i)), vec2<f32>(-1043f, 937f), 0u, vec2<bool>(false, true)), Struct_3(Struct_2(-705f, true, 16014u, vec2<i32>(10478i, -1i)), vec2<f32>(-513f, -309f), 1u, vec2<bool>(false, false)), Struct_3(Struct_2(-509f, true, 0u, vec2<i32>(0i, 2147483647i)), vec2<f32>(276f, 157f), 4294967295u, vec2<bool>(false, true)), Struct_3(Struct_2(-1137f, true, 17141u, vec2<i32>(32515i, 0i)), vec2<f32>(584f, -502f), 62593u, vec2<bool>(true, true)), Struct_3(Struct_2(-1390f, false, 7200u, vec2<i32>(-17916i, -1i)), vec2<f32>(174f, 1206f), 1u, vec2<bool>(true, false)), Struct_3(Struct_2(-687f, false, 0u, vec2<i32>(2147483647i, 1i)), vec2<f32>(355f, -921f), 12881u, vec2<bool>(false, false)), Struct_3(Struct_2(-407f, false, 5396u, vec2<i32>(0i, -23740i)), vec2<f32>(-1030f, 540f), 78111u, vec2<bool>(true, true)), Struct_3(Struct_2(-465f, false, 4294967295u, vec2<i32>(i32(-2147483648), -1i)), vec2<f32>(193f, 1000f), 4294967295u, vec2<bool>(true, false)), Struct_3(Struct_2(961f, true, 0u, vec2<i32>(2147483647i, -20435i)), vec2<f32>(-1452f, 1575f), 101436u, vec2<bool>(true, false)), Struct_3(Struct_2(-1000f, true, 0u, vec2<i32>(2147483647i, -1i)), vec2<f32>(-1046f, -1688f), 20044u, vec2<bool>(true, false)), Struct_3(Struct_2(120f, true, 61015u, vec2<i32>(0i, 0i)), vec2<f32>(1039f, 142f), 6601u, vec2<bool>(true, true)), Struct_3(Struct_2(-138f, true, 49150u, vec2<i32>(4619i, 1i)), vec2<f32>(-284f, 762f), 21740u, vec2<bool>(true, false)), Struct_3(Struct_2(1000f, true, 1u, vec2<i32>(-1i, -1i)), vec2<f32>(-1000f, 264f), 74652u, vec2<bool>(false, false)), Struct_3(Struct_2(268f, true, 39257u, vec2<i32>(1i, -44827i)), vec2<f32>(1011f, -1707f), 41570u, vec2<bool>(true, true)), Struct_3(Struct_2(930f, true, 16107u, vec2<i32>(2147483647i, 29710i)), vec2<f32>(974f, 1948f), 20353u, vec2<bool>(true, false)), Struct_3(Struct_2(-1154f, false, 0u, vec2<i32>(i32(-2147483648), 12167i)), vec2<f32>(1292f, -504f), 0u, vec2<bool>(true, true)), Struct_3(Struct_2(442f, false, 0u, vec2<i32>(2147483647i, -13629i)), vec2<f32>(-1005f, -419f), 1u, vec2<bool>(true, true)));

var<private> global3: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(32999u, 0u), vec2<u32>(29806u, 2251u), vec2<u32>(4294967295u, 0u), vec2<u32>(40839u, 1u), vec2<u32>(1u, 34329u), vec2<u32>(41845u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(27661u, 0u), vec2<u32>(19864u, 57439u), vec2<u32>(1u, 1u), vec2<u32>(1u, 0u), vec2<u32>(0u, 44738u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(103984u, 88249u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 102105u), vec2<u32>(15064u, 43215u), vec2<u32>(61324u, 4294967295u), vec2<u32>(101340u, 4294967295u), vec2<u32>(54448u, 1u), vec2<u32>(54029u, 12638u), vec2<u32>(48182u, 1439u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 22774u), vec2<u32>(53018u, 89219u), vec2<u32>(0u, 50938u), vec2<u32>(1u, 0u), vec2<u32>(19659u, 0u), vec2<u32>(7231u, 59779u));

var<private> global4: Struct_3 = Struct_3(Struct_2(-1213f, true, 107553u, vec2<i32>(9318i, 16486i)), vec2<f32>(719f, -604f), 0u, vec2<bool>(true, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> vec2<f32> {
    global1 = array<vec4<u32>, 31>();
    let var_0 = true || all(select(!vec3<bool>(global4.a.b, false, global4.a.b), !select(vec3<bool>(false, false, global4.a.b), vec3<bool>(global4.d.x, global4.d.x, false), vec3<bool>(false, global4.a.b, false)), !(17581u < global4.c)));
    let var_1 = ~(vec3<i32>(2147483647i, ~(i32(-1i) * -1i), ~u_input.a.x ^ u_input.a.x) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global4.a.c, 0u, 48013u), ~vec3<u32>(81379u, 4294967295u, 67042u)), vec3<u32>(global4.c, ~0u, ~global4.a.c)) % vec3<u32>(32u)));
    let var_2 = vec3<bool>(global4.d.x, true, !global4.d.x);
    global1 = array<vec4<u32>, 31>();
    return global4.b;
}

fn func_3(arg_0: Struct_5) -> u32 {
    let var_0 = ~_wgslsmith_add_i32(u_input.a.x, firstLeadingBit(1i)) & 2147483647i;
    global0 = array<Struct_4, 6>();
    let var_1 = _wgslsmith_add_vec4_i32(-(~(~(vec4<i32>(-1i, global4.a.d.x, -3716i, var_0) & vec4<i32>(var_0, 2147483647i, 8207i, 1i)))), vec4<i32>(-2147483647i, ~var_0, global4.a.d.x, 0i));
    return _wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(min(1u, _wgslsmith_clamp_u32(global4.c, 47586u, 0u)), 1u) | 1u, global4.a.c);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(arg_0.x, _wgslsmith_mult_u32(global4.a.c, 34576u)), ~0u), ~(~global4.a.c), ~func_3(Struct_5(1i)) >= ~_wgslsmith_dot_vec4_u32(~global1[_wgslsmith_index_u32(arg_0.x, 31u)], global1[_wgslsmith_index_u32(9530u, 31u)]));
    global1 = array<vec4<u32>, 31>();
    var var_1 = _wgslsmith_add_u32(firstLeadingBit(0u) ^ ~countOneBits(global4.a.c | 5539u), 52131u);
    var_0 = Struct_1(var_0.a, ~abs(var_0.a), !any(select(select(global4.d, vec2<bool>(var_0.c, var_0.c), global4.d), select(vec2<bool>(var_0.c, false), global4.d, global4.d.x), var_0.c)));
    global2 = array<Struct_3, 17>();
    return Struct_2(global4.a.a, true, 40476u, vec2<i32>(countOneBits(-2147483647i), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global4.a.d.x << (global4.c % 32u), _wgslsmith_mult_i32(u_input.a.x, arg_1.a), u_input.a.x ^ arg_2.x), -13848i, 1i)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    global0 = array<Struct_4, 6>();
    let var_0 = !vec3<bool>(!arg_1.b, false, false);
    let var_1 = select(-_wgslsmith_add_i32(u_input.a.x, u_input.a.x), _wgslsmith_clamp_i32(-_wgslsmith_div_i32(28470i, arg_0.a.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-62310i, ~arg_0.a.d.x, arg_1.d.x, global4.a.d.x), ~(-vec4<i32>(arg_1.d.x, 1i, u_input.a.x, arg_0.a.d.x))), u_input.a.x), !var_0.x);
    var var_2 = -(~u_input.a.x);
    global0 = array<Struct_4, 6>();
    return -821f;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global4.b.x, -2171f))))), true, global4.c, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(global4.a.d, ~u_input.a), ~(~vec2<i32>(global4.a.d.x, 30660i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) + global4.b) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -188f), 724f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-893f, 1304f), global4.b) + _wgslsmith_f_op_vec2_f32(abs(global4.b))))), _wgslsmith_dot_vec2_u32(vec2<u32>(global4.c, global4.a.c ^ ~12868u), vec2<u32>(global4.a.c, max(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.c, 1u), global3[_wgslsmith_index_u32(global4.c, 29u)]), _wgslsmith_clamp_u32(global4.c, 1u, global4.c)))), select(select(vec2<bool>(false, -451f <= global4.b.x), vec2<bool>(global4.a.b, any(global4.d)), select(true, true, global4.d.x)), global4.d, false));
    global0 = array<Struct_4, 6>();
    let var_0 = global4.b.x;
    var var_1 = ~_wgslsmith_clamp_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4.c, global4.c), 29u)], global3[_wgslsmith_index_u32(~96431u, 29u)])), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global4.a.c, global4.c), 29u)], vec2<u32>(~(~global4.a.c), global4.c));
    var var_2 = !vec4<bool>(select(any(global4.d), global4.d.x, global4.d.x), _wgslsmith_div_u32(1u, var_1.x) <= global4.a.c, true, _wgslsmith_dot_vec2_u32(vec2<u32>(global4.c, var_1.x) | vec2<u32>(global4.c, global4.a.c), firstTrailingBit(global3[_wgslsmith_index_u32(1u, 29u)])) >= var_1.x);
    global4 = Struct_3(global4.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1473f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.x - 1000f) * global4.b.x))), select(global4.a.c, 26u, global4.a.b), vec2<bool>(!any(select(global4.d, var_2.zw, var_2.x)), (true || any(vec3<bool>(false, global4.d.x, true))) || any(!vec2<bool>(true, global4.d.x))));
    global4 = Struct_3(Struct_2(_wgslsmith_f_op_f32(func_4(Struct_3(func_2(vec3<u32>(global4.c, global4.a.c, global4.c), Struct_5(u_input.a.x), vec3<i32>(0i, 2147483647i, 1i)), vec2<f32>(global4.a.a, 545f), var_1.x << (global4.a.c % 32u), select(vec2<bool>(false, false), global4.d, var_2.wx)), Struct_2(_wgslsmith_f_op_f32(601f - -1385f), !global4.a.b, countOneBits(var_1.x), ~u_input.a))), var_2.x, global4.c, abs(global4.a.d)), global4.b, global4.c, vec2<bool>(true, !(true & !global4.a.b)));
    let var_3 = select(~(~vec3<u32>(0u, 47419u, var_1.x) & ~(~vec3<u32>(global4.c, 4294967295u, var_1.x))), ~select(~vec3<u32>(var_1.x, var_1.x, 1u), ~vec3<u32>(56779u, 4294967295u, 0u), var_2.xxz), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)) == _wgslsmith_f_op_f32(-global4.b.x)));
    global2 = array<Struct_3, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~abs(0i)), _wgslsmith_clamp_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 57251u), var_3.xx, var_3.xx & vec2<u32>(10119u, var_3.x)), var_3.yy, ~(vec2<u32>(var_3.x, 15491u) | vec2<u32>(var_3.x, 39806u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.a, 1419f, global4.a.a, global4.a.a)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(136f, 517f, global4.b.x, 1007f)))), vec4<f32>(global4.a.a, global4.b.x, global4.a.a, _wgslsmith_f_op_f32(-1235f * -620f))))), vec4<u32>(var_3.x, _wgslsmith_sub_u32(~global4.a.c, global4.a.c) & ~_wgslsmith_mod_u32(7604u, var_1.x), ~(58759u ^ global4.a.c), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1999u) << (var_3.xx % vec2<u32>(32u)), vec2<u32>(4294967295u, global4.a.c)), _wgslsmith_dot_vec3_u32(~var_3, var_3))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.a, _wgslsmith_f_op_f32(trunc(global4.b.x)), _wgslsmith_f_op_f32(abs(-382f))))));
}

