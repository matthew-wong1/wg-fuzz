struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(-13479i, vec4<f32>(445f, -1055f, -1561f, -149f)), Struct_2(1i, vec4<f32>(1202f, 420f, -378f, -1293f)), Struct_2(-22229i, vec4<f32>(373f, 165f, -557f, 967f)), Struct_2(17427i, vec4<f32>(563f, 228f, 659f, -251f)), Struct_2(2147483647i, vec4<f32>(-582f, -668f, -1000f, -240f)), Struct_2(-4265i, vec4<f32>(-310f, -392f, 1011f, -346f)), Struct_2(i32(-2147483648), vec4<f32>(-638f, -927f, 170f, -881f)), Struct_2(-1i, vec4<f32>(-1171f, -363f, 1433f, -770f)), Struct_2(0i, vec4<f32>(-898f, 1044f, -1000f, -1533f)), Struct_2(37914i, vec4<f32>(747f, -532f, -1041f, 368f)));

var<private> global2: array<u32, 26>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(abs(-932f));
    var var_1 = -vec3<i32>(0i, -1i, -21467i >> (~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(77892u, 26u)], 26u)]) % 32u));
    let var_2 = Struct_1(u_input.a, vec2<bool>(!(-546f >= var_0) & (select(var_1.x, 1i, true) < -1i), any(vec3<bool>(true, true, true))));
    let var_3 = ~(~_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, u_input.a), 4294967295u << (_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(var_2.a, 26u)], u_input.a) % 32u)));
    global2 = array<u32, 26>();
    return false;
}

fn func_2() -> Struct_1 {
    var var_0 = !any(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, true)), true)));
    let var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32((vec3<u32>(48251u, 51268u, 8854u) | vec3<u32>(0u, 4294967295u, global2[_wgslsmith_index_u32(u_input.a, 26u)])) & (vec3<u32>(u_input.a, 1u, 2419u) & vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 26u)], 0u)), ~vec3<u32>(4594u, 1u, 0u) << ((vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(36933u, 26u)], 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], 4294967295u) | vec3<u32>(1u, u_input.a, 4294967295u)) % vec3<u32>(32u))) ^ countOneBits(vec3<u32>(4294967295u, 60366u, 4294967295u) | vec3<u32>(1u, global2[_wgslsmith_index_u32(u_input.a, 26u)], 57886u)), vec3<u32>(u_input.a, 11325u, ~global2[_wgslsmith_index_u32(19139u, 26u)]), vec3<u32>(11380u, ~49099u, 47604u));
    global0 = true;
    var var_2 = Struct_3(false, vec4<bool>(!(func_3() && any(vec4<bool>(true, false, true, true))), false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)))), true), global1[_wgslsmith_index_u32(~(~1u) << (global2[_wgslsmith_index_u32(20787u, 26u)] % 32u), 10u)], Struct_1(global2[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(var_1.x ^ u_input.a, ~4294967295u), u_input.a), 26u)], select(vec2<bool>(true, false), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), any(vec3<bool>(true, true, true)))), ~abs(_wgslsmith_clamp_u32(1u, 6886u, abs(0u))));
    var var_3 = Struct_2(-1i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -362f), _wgslsmith_f_op_f32(step(-285f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2.c.b.x)), _wgslsmith_f_op_f32(-var_2.c.b.x)))), _wgslsmith_f_op_f32(select(var_2.c.b.x, _wgslsmith_f_op_f32(-var_2.c.b.x), func_3())), var_2.c.b.x));
    return var_2.d;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3) -> i32 {
    let var_0 = Struct_3(arg_2.b.x, vec4<bool>(true, arg_1.x, arg_2.a, true), global1[_wgslsmith_index_u32(20469u, 10u)], func_2(), 13055u);
    var var_1 = Struct_1(283u, !(!arg_1));
    let var_2 = Struct_3(true, select(var_0.b, var_0.b, !any(vec3<bool>(arg_1.x, arg_0.b.x, arg_2.b.x)) | false), arg_2.c, func_2(), _wgslsmith_mod_u32(var_0.e, 1u));
    let var_3 = arg_2.c.a & min(countOneBits(-1i), ~(-arg_2.c.a));
    let var_4 = abs(vec2<i32>(var_0.c.a, arg_2.c.a)) & select(u_input.b & _wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(1i, 1i)), abs(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(var_3, var_0.c.a)), _wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(0i, -2147483647i)))), vec2<bool>(!all(var_1.b), !select(var_0.b.x, false, false)));
    return -1i;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> Struct_3 {
    return arg_2;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_add_i32(_wgslsmith_sub_i32(firstTrailingBit(arg_0.a) & arg_0.a, _wgslsmith_mod_i32(u_input.b.x | -46433i, arg_0.a)), arg_0.a), _wgslsmith_f_op_vec4_f32(arg_0.b + arg_0.b));
    let var_1 = func_5(arg_0.a, func_4(func_2(), vec2<bool>(true, any(vec3<bool>(false, true, false))), Struct_3(false, vec4<bool>(func_2().b.x, true, any(vec4<bool>(true, true, true, true)), func_2().b.x), Struct_2(-1i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1387f, 1000f, 1096f, var_0.b.x), vec4<f32>(186f, -613f, arg_1.x, -992f), false))), func_2(), 4294967295u)), Struct_3(all(vec3<bool>(true, true, true)) || true, vec4<bool>(select(false, all(vec2<bool>(true, false)), false), select(true, false, true), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), any(vec4<bool>(true, true, true, true))), arg_0, Struct_1(1u, vec2<bool>(true, true)), ~select(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.a, 26u)]), u_input.a & u_input.a, all(vec2<bool>(false, false)))));
    let var_2 = _wgslsmith_add_vec2_i32(~u_input.b, ~select(_wgslsmith_clamp_vec2_i32(reverseBits(u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -14391i), u_input.b), vec2<i32>(var_1.c.a, var_0.a)), firstLeadingBit(~vec2<i32>(-32188i, 3578i)), all(var_1.b)));
    var var_3 = var_2;
    global2 = array<u32, 26>();
    return var_1.d;
}

fn func_6(arg_0: Struct_3) -> f32 {
    let var_0 = func_5(-3749i, arg_0.c.a, Struct_3(false, arg_0.b, func_5(firstTrailingBit(1i), 34520i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 0i), vec4<i32>(-2147483647i, 1i, 61430i, u_input.b.x)), arg_0).c, arg_0.d, u_input.a));
    var var_1 = -718f;
    let var_2 = arg_0.c.b.x;
    return _wgslsmith_f_op_f32(arg_0.c.b.x * _wgslsmith_f_op_f32(ceil(1f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_6(Struct_3(any(vec3<bool>(false, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), false), Struct_2(1i, vec4<f32>(1000f, 1107f, -1146f, -1123f)), func_1(Struct_2(u_input.b.x, vec4<f32>(647f, 577f, -1000f, 2380f)), vec3<f32>(622f, 683f, -659f)), _wgslsmith_div_u32(82591u, 35067u)))), 300f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -415f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1084f * 844f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1323f)))));
    global2 = array<u32, 26>();
    let var_0 = _wgslsmith_sub_u32(u_input.a, u_input.a);
    let var_1 = _wgslsmith_f_op_f32(-func_5(_wgslsmith_clamp_i32(68857i, 2147483647i, min(u_input.b.x, _wgslsmith_mult_i32(1i, -34508i))), -70012i, Struct_3(true, !func_5(u_input.b.x, u_input.b.x, Struct_3(true, vec4<bool>(false, true, false, false), global1[_wgslsmith_index_u32(44943u, 10u)], Struct_1(global2[_wgslsmith_index_u32(59182u, 26u)], vec2<bool>(false, false)), 54663u)).b, Struct_2(-2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 413f, -474f, -233f) - vec4<f32>(665f, 1076f, 746f, 1000f))), Struct_1(_wgslsmith_div_u32(u_input.a, 0u), vec2<bool>(true, true)), var_0)).c.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(2136f, _wgslsmith_sub_vec2_i32(~(-vec2<i32>(u_input.b.x, u_input.b.x)), abs(~(vec2<i32>(u_input.b.x, 1i) & vec2<i32>(u_input.b.x, 47271i)))), vec4<u32>(4294967295u, firstTrailingBit(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(0u, 26u)], firstTrailingBit(0u))), ~_wgslsmith_sub_u32(52939u, min(u_input.a, u_input.a)), _wgslsmith_clamp_u32(abs(func_1(Struct_2(u_input.b.x, vec4<f32>(-591f, -490f, 1290f, var_1)), vec3<f32>(var_1, var_1, -424f)).a), countOneBits(var_0) ^ 7528u, 11783u >> (firstLeadingBit(global2[_wgslsmith_index_u32(u_input.a, 26u)]) % 32u))));
}

