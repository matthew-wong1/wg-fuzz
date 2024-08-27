struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(true, false, true, false), -349f);

var<private> global1: u32;

var<private> global2: u32 = 4294967295u;

var<private> global3: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(1092f, 572f, 750f, 1007f), vec4<f32>(671f, 642f, -1000f, -631f), vec4<f32>(552f, -362f, 1569f, -1338f), vec4<f32>(-1978f, -868f, -1346f, 205f), vec4<f32>(287f, 1000f, 343f, 1109f), vec4<f32>(1000f, -740f, 1000f, 1738f), vec4<f32>(-1000f, -1632f, -902f, 410f), vec4<f32>(996f, -840f, 1367f, -850f), vec4<f32>(555f, 1222f, 240f, 798f), vec4<f32>(-1000f, 539f, 1543f, 121f), vec4<f32>(1636f, -1105f, -442f, 297f), vec4<f32>(1700f, -691f, 1173f, 618f), vec4<f32>(1145f, -1842f, 553f, -1098f), vec4<f32>(1000f, -1000f, -303f, 319f), vec4<f32>(-1000f, 2016f, -1786f, -328f), vec4<f32>(-960f, 649f, 638f, -1077f), vec4<f32>(923f, -1433f, 2093f, -216f), vec4<f32>(1498f, 1000f, 963f, -1090f), vec4<f32>(-390f, 439f, 113f, -819f), vec4<f32>(-1102f, 135f, 742f, -634f), vec4<f32>(615f, -309f, 884f, -624f), vec4<f32>(1440f, 516f, -501f, -795f), vec4<f32>(-707f, 1134f, -848f, -2354f));

var<private> global4: Struct_2;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = firstLeadingBit(0u);
    var var_1 = 1074f;
    let var_2 = min(~0u, _wgslsmith_clamp_u32(47227u, ~1u, ~u_input.a.x));
    let var_3 = min(_wgslsmith_add_i32(47391i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -15549i, global4.a.d), vec3<i32>(-29729i, global4.a.d, 2147483647i)) << (_wgslsmith_dot_vec2_u32(u_input.a.ww, u_input.a.yx) % 32u)), ~_wgslsmith_div_i32(-11036i, 11256i) | global4.a.d) & (_wgslsmith_mod_i32(global4.a.d, ~abs(-11579i)) | (min(-24692i, ~global4.a.d) ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(5002i, 1i, global4.a.d, global4.a.d), abs(vec4<i32>(1i, 0i, global4.a.d, 0i)))));
    var_1 = _wgslsmith_f_op_f32(floor(global4.a.a.x));
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> vec2<u32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1183f, _wgslsmith_f_op_f32(-arg_0.a.a.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(435f, arg_0.a.a.x)))))), ~_wgslsmith_sub_vec2_u32(global4.a.b, vec2<u32>(global4.a.b.x, global4.a.b.x)) >> (_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(4294967295u, 76034u)), arg_0.a.b) % vec2<u32>(32u)), global4.a.c, 2126i), func_3(global0.b), select(global4.c, vec2<bool>(global0.a.x | false, !global0.a.x), vec2<bool>(arg_1, true | any(vec4<bool>(global4.b, arg_0.c.x, arg_1, arg_1)))));
    var var_1 = -_wgslsmith_div_vec2_i32(~vec2<i32>(global4.a.d, min(-25903i, var_0.a.d)), vec2<i32>(var_0.a.d, i32(-1i) * -1i));
    let var_2 = vec3<i32>(arg_0.a.d, -1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(abs(var_1.x), abs(var_0.a.d), arg_0.a.d, ~(-1i)), ~max(vec4<i32>(-37465i, arg_0.a.d, global4.a.d, 1i), vec4<i32>(-2147483647i, 8732i, 0i, arg_0.a.d))));
    global2 = ~(1u << (select(_wgslsmith_mod_u32(~4294967295u, 31500u), min(71285u | u_input.a.x, ~4294967295u), true) % 32u));
    var var_3 = ~select(_wgslsmith_div_vec4_i32(vec4<i32>(-arg_0.a.d, var_1.x, var_0.a.d, arg_0.a.d), abs(vec4<i32>(-741i, 0i, global4.a.d, var_2.x) >> (u_input.a % vec4<u32>(32u)))), -_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_0.a.d, 0i, -1i, var_1.x), vec4<i32>(-49024i, var_2.x, arg_0.a.d, arg_0.a.d)), all(select(select(vec4<bool>(true, false, var_0.a.c.x, arg_1), var_0.a.c, vec4<bool>(true, true, false, global0.a.x)), select(global4.a.c, global0.a, vec4<bool>(true, var_0.b, arg_1, false)), !global4.a.c.x)));
    return ~global4.a.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(281f, -1000f, global4.a.a.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(299f, global0.b, -719f) - vec3<f32>(arg_3.a.a.x, 174f, arg_1.a.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-204f, 760f, global4.a.a.x)))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1338f, 113f, arg_1.a.x) - vec3<f32>(arg_3.a.a.x, arg_3.a.a.x, arg_3.a.a.x)), vec3<f32>(300f, global4.a.a.x, 268f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.a.a), vec2<f32>(var_0.x, -238f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.a.a) - _wgslsmith_f_op_vec2_f32(-var_0.xy))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1612f)), -106f)), 555f))));
    global4 = Struct_2(arg_1, !global0.a.x, !vec2<bool>(true, !global0.a.x));
    let var_2 = Struct_3(select(arg_1.c, !select(arg_1.c, vec4<bool>(global0.a.x, false, arg_3.c.x, false), true), vec4<bool>(arg_3.c.x, true, global4.c.x, arg_1.c.x)), arg_1.a.x);
    global3 = array<vec4<f32>, 23>();
    return var_2.a;
}

fn func_1(arg_0: u32) -> f32 {
    global0 = Struct_3(func_4(max((u_input.a.yz << (vec2<u32>(global4.a.b.x, 17140u) % vec2<u32>(32u))) >> (func_2(Struct_2(global4.a, false, vec2<bool>(false, global0.a.x)), false) % vec2<u32>(32u)), vec2<u32>(u_input.a.x, ~1u)), global4.a, abs(vec2<i32>(abs(global4.a.d), global4.a.d)), Struct_2(global4.a, true, vec2<bool>(!global4.b, global4.c.x | true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * -739f) * _wgslsmith_f_op_f32(-global4.a.a.x))))));
    global2 = 0u >> (1u % 32u);
    global1 = min(~23421u << (arg_0 % 32u), global4.a.b.x);
    var var_0 = 13664u;
    var var_1 = Struct_4(vec4<u32>(_wgslsmith_mult_u32(arg_0, _wgslsmith_sub_u32(57914u, global4.a.b.x)), 50736u, 18279u, 4294967295u), Struct_3(!(!(!vec4<bool>(global4.b, false, global4.c.x, false))), _wgslsmith_f_op_f32(global4.a.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1048f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1234f))) + _wgslsmith_f_op_f32(max(-1000f, -954f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = Struct_3(select(select(vec4<bool>(true, all(global0.a), global4.a.b.x == u_input.a.x, all(global0.a)), vec4<bool>(true, false, all(global4.a.c.yxx), any(global4.a.c.xwz)), true), !vec4<bool>(all(global4.c), global4.a.c.x, false, true), false), _wgslsmith_f_op_f32(func_1(1u)));
    global1 = global4.a.b.x;
    let var_2 = global4.a.c;
    let var_3 = Struct_4(~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~u_input.a, u_input.a), vec4<u32>(39619u, u_input.a.x, u_input.a.x, 69892u) >> (_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(4294967295u, 1u, 4341u, global4.a.b.x)) % vec4<u32>(32u))), var_1);
    global1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zwy, global4.a.b.x, abs(-2147483647i), var_1.b);
}

