struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, -1i, -6459i, 37315i);

var<private> global1: array<f32, 4> = array<f32, 4>(-458f, 1338f, 293f, 882f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = countOneBits(vec4<i32>(~max(1i, i32(-1i) * -2147483647i), -68990i << (~select(1u, u_input.a, true) % 32u), ~93806i, _wgslsmith_clamp_i32(~global0.x, global0.x, _wgslsmith_mult_i32(firstTrailingBit(global0.x), global0.x))));
    let var_1 = arg_1;
    let var_2 = var_1;
    global0 = arg_3.a.b;
    global1 = array<f32, 4>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_2, arg_3.b) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(433f * var_2.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(610f - -409f)))) + var_2.zy));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3(!all(vec4<bool>(false, true, false, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(683f, -735f, -1000f) * vec3<f32>(-113f, global1[_wgslsmith_index_u32(u_input.a, 4u)], 1533f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-159f, global1[_wgslsmith_index_u32(1u, 4u)], 1314f) - vec3<f32>(global1[_wgslsmith_index_u32(28358u, 4u)], global1[_wgslsmith_index_u32(1532u, 4u)], -748f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(32235u, 4u)], 1076f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(5036u, 4u)])))), Struct_3(Struct_1(global0.x, vec4<i32>(11023i, -1i, 1i, 40593i), -407f, 31324u, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(195f, global1[_wgslsmith_index_u32(1u, 4u)]))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-160f, global1[_wgslsmith_index_u32(u_input.a, 4u)])) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)])), vec2<f32>(global1[_wgslsmith_index_u32(53562u, 4u)], -957f), select(vec2<bool>(false, false), vec2<bool>(false, true), true)))))));
    var var_1 = true;
    var var_2 = abs(global0.wz);
    let var_3 = Struct_2(select(vec2<bool>(any(vec3<bool>(false, false, true)), true), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), true && all(vec3<bool>(false, true, true))), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), false))), !select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), false), Struct_1(-(~(-1i)), vec4<i32>(var_2.x, global0.x & 1i, countOneBits(~global0.x), global0.x), var_0.x, min(64646u, select(u_input.a, u_input.a, true) >> ((29461u >> (0u % 32u)) % 32u)), any(vec2<bool>(any(vec4<bool>(false, true, false, true)), true))), firstTrailingBit(select(-15116i, ~(-global0.x), all(vec3<bool>(true, true, true)))));
    let var_4 = Struct_4(var_3);
    return 4566u;
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = u_input.a ^ func_2();
    var var_1 = Struct_2(!select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), vec3<bool>(false, all(vec2<bool>(true, true)), true), Struct_1(0i, _wgslsmith_sub_vec4_i32(vec4<i32>(~5782i, 14835i, abs(global0.x), 1i), select(vec4<i32>(-15749i, global0.x, global0.x, 20732i), vec4<i32>(global0.x, 2147483647i, -11133i, 46158i), vec4<bool>(false, true, false, true)) << (select(vec4<u32>(0u, 40417u, 54002u, u_input.a), vec4<u32>(u_input.a, u_input.a, 43463u, 0u), true) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(895f * -303f) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(50082u, 4u)]))), u_input.a, true), -global0.x);
    var var_2 = var_1.c.b;
    var var_3 = -38733i;
    let var_4 = Struct_3(Struct_1(~12205i, _wgslsmith_mod_vec4_i32(abs(vec4<i32>(2147483647i, var_2.x, -52895i, var_2.x)), abs(var_1.c.b)), arg_0.x, countOneBits(112481u), var_1.c.e), _wgslsmith_f_op_vec2_f32(abs(arg_0)));
    return Struct_2(vec2<bool>(any(!select(var_1.b, var_1.b, var_1.b)), global0.x >= _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0.x, var_1.c.b.x), vec3<i32>(3227i, global0.x, 2409i))), !var_1.b, Struct_1(i32(-1i) * -2147483647i, vec4<i32>(~(i32(-1i) * -3377i), -5310i, i32(-1i) * -1i, ~var_1.d), var_4.b.x, ~(~_wgslsmith_mod_u32(var_4.a.d, 1u)), any(!vec4<bool>(false, var_4.a.e, var_1.b.x, false))), reverseBits(_wgslsmith_sub_i32(2147483647i, var_2.x)) << ((var_1.c.d | ~firstTrailingBit(var_1.c.d)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 4>();
    let var_0 = 89362u;
    let var_1 = false;
    let var_2 = -313f;
    var var_3 = global0.x;
    var var_4 = Struct_4(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(392f, -1575f), vec2<f32>(global1[_wgslsmith_index_u32(var_0, 4u)], var_2)))))));
    var var_5 = select(_wgslsmith_dot_vec3_u32(firstLeadingBit(~(~vec3<u32>(42117u, var_4.a.c.d, var_4.a.c.d))), firstTrailingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(42826u, 43834u, 0u), vec3<u32>(var_4.a.c.d, var_4.a.c.d, u_input.a), vec3<u32>(13794u, var_4.a.c.d, 40168u)))), func_2(), select(all(!vec4<bool>(var_4.a.a.x, var_4.a.a.x, false, true)), false, true));
    global0 = var_4.a.c.b;
    let var_6 = all(var_4.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0, 0u, u_input.a, 1u), vec4<u32>(u_input.a, var_4.a.c.d, 56202u, u_input.a))), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(23838u, var_0) | ~vec2<u32>(23296u, 43582u), vec2<u32>(_wgslsmith_sub_u32(13404u, var_0), 87368u), ~vec2<u32>(1u, 33635u)), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_4.a.c.d, u_input.a), vec2<u32>(var_4.a.c.d, 0u)), _wgslsmith_div_vec2_u32(vec2<u32>(43750u, var_4.a.c.d), vec2<u32>(35669u, 1u))), ~1u)), firstTrailingBit(vec2<u32>(min(~0u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(54241u, var_0, 4294967295u, var_0) ^ vec4<u32>(var_0, 8872u, var_0, u_input.a), ~vec4<u32>(u_input.a, 1u, 118370u, 1u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1002f, var_4.a.c.c, _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(max(926f, 1277f))), vec4<f32>(_wgslsmith_f_op_f32(-557f * var_2), 1506f, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(round(1625f)))))));
}

