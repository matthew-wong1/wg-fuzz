struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(i32(-2147483648), 31969i, -1i, 1i, i32(-2147483648), -39711i, i32(-2147483648), -26587i, 55544i, 1i, -6453i);

var<private> global1: bool;

var<private> global2: array<bool, 10> = array<bool, 10>(true, false, false, true, false, true, false, true, false, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_sub_u32(19991u, min(~u_input.b.x, 0u)) >= u_input.e;
    global1 = true;
    global2 = array<bool, 10>();
    var_0 = min(2147483647i, abs(-_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.c, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], u_input.d.x))) != abs(u_input.d.x);
    let var_1 = max(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.xy, _wgslsmith_clamp_vec2_u32(u_input.a.zy, u_input.b.yy | vec2<u32>(43810u, u_input.c), vec2<u32>(4294967295u, u_input.c))), ~vec2<u32>(~u_input.c, 4372u)), u_input.a.yz);
    return vec4<u32>(~select(38624u, u_input.e << (u_input.e % 32u), var_1.x > _wgslsmith_mod_u32(var_1.x, 123733u)), _wgslsmith_dot_vec4_u32(~min(vec4<u32>(4294967295u, 1u, u_input.b.x, 1u), vec4<u32>(22108u, 1u, 1u, u_input.b.x)) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.a.x, var_1.x, 15695u), vec4<u32>(4294967295u, var_1.x, 6968u, var_1.x)), select(u_input.c, 0u, false), min(var_1.x, var_1.x), abs(u_input.e)), ~(vec4<u32>(var_1.x, u_input.e, 0u, 1u) << (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, var_1.x, var_1.x), vec4<u32>(var_1.x, var_1.x, u_input.a.x, 80022u)) % vec4<u32>(32u)))), u_input.e, u_input.e << (~var_1.x % 32u));
}

fn func_2() -> bool {
    global0 = array<i32, 11>();
    var var_0 = vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x);
    let var_1 = vec4<i32>(~(3157i | global0[_wgslsmith_index_u32(firstLeadingBit(var_0.x), 11u)]), -countOneBits(global0[_wgslsmith_index_u32(var_0.x, 11u)]), ~(u_input.d.x << (select(0u, 64000u, global2[_wgslsmith_index_u32(u_input.e, 10u)]) % 32u)), 2147483647i) ^ _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(u_input.d, -reverseBits(vec4<i32>(-1i, 1i, global0[_wgslsmith_index_u32(var_0.x, 11u)], u_input.d.x))), ~vec4<i32>(-1i, -u_input.d.x, 2147483647i, global0[_wgslsmith_index_u32(reverseBits(var_0.x), 11u)]));
    var var_2 = func_3(Struct_2(!select(vec4<bool>(global2[_wgslsmith_index_u32(6012u, 10u)], global2[_wgslsmith_index_u32(22723u, 10u)], global2[_wgslsmith_index_u32(u_input.b.x, 10u)], global2[_wgslsmith_index_u32(0u, 10u)]), select(vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(var_0.x, 10u)]), vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(4294967295u, 10u)]), global2[_wgslsmith_index_u32(var_0.x, 10u)]), true)));
    let var_3 = Struct_4(Struct_1(vec3<u32>(var_0.x, u_input.c, ~44031u << (_wgslsmith_mult_u32(var_2.x, u_input.e) % 32u)), min(u_input.d.yyx, vec3<i32>(-2147483647i, ~global0[_wgslsmith_index_u32(19u, 11u)], -34985i)), ~select(vec4<u32>(68845u, 95266u, 60516u, var_0.x), vec4<u32>(var_0.x, 4294967295u, var_0.x, var_2.x), vec4<bool>(false, true, global2[_wgslsmith_index_u32(0u, 10u)], false)) << (~vec4<u32>(20596u, 4294967295u, u_input.e, 49592u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(1380f, -599f))), -1000f, _wgslsmith_f_op_f32(floor(-305f)) >= _wgslsmith_f_op_f32(-969f - 645f)))));
    return !(!(!(!global2[_wgslsmith_index_u32(~2860u, 10u)])));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>) -> Struct_2 {
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    let var_0 = Struct_1(u_input.b, arg_1, vec4<u32>(~_wgslsmith_div_u32(~u_input.a.x, ~u_input.e), func_3(Struct_2(select(vec4<bool>(false, true, false, arg_0.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], arg_0.x, true, true), global2[_wgslsmith_index_u32(1u, 10u)]))).x, ~5517u, _wgslsmith_mult_u32(1u, reverseBits(~4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1028f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, -331f, -594f, var_0.d)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, -608f, var_0.d, var_0.d) + vec4<f32>(-785f, var_0.d, var_0.d, var_0.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1235f, var_0.d, 1050f, var_0.d) * vec4<f32>(var_0.d, var_0.d, var_0.d, -1481f)), all(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 10u)], false, arg_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d, -272f, var_0.d, 2170f), vec4<f32>(var_0.d, var_0.d, var_0.d, -459f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1121f, -210f, var_0.d, -1094f)))) * vec4<f32>(-440f, _wgslsmith_f_op_f32(-589f + var_0.d), _wgslsmith_div_f32(var_0.d, var_0.d), _wgslsmith_f_op_f32(-var_0.d)))));
    global1 = !arg_0.x;
    return Struct_2(!vec4<bool>(54505u > _wgslsmith_div_u32(var_0.a.x, 94969u), !func_2(), !arg_0.x != func_2(), any(!vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 10u)], false, global2[_wgslsmith_index_u32(0u, 10u)]))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_4) -> vec3<i32> {
    return u_input.d.zwx << ((~(~abs(u_input.b)) ^ ~vec3<u32>(4294967295u, ~77255u, 30502u)) % vec3<u32>(32u));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(select(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(41548u, 10u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 10u)])), vec4<bool>(func_4(vec2<bool>(false, true), vec3<i32>(0i, -31582i, 0i)).a.x, global2[_wgslsmith_index_u32(23053u >> (1u % 32u), 10u)], any(vec4<bool>(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(arg_1.a.x, 10u)], global2[_wgslsmith_index_u32(arg_1.a.x, 10u)])), false), true)));
    global2 = array<bool, 10>();
    global2 = array<bool, 10>();
    global2 = array<bool, 10>();
    global0 = array<i32, 11>();
    return Struct_1(vec3<u32>(~41926u, u_input.a.x, ~arg_1.c.x), vec3<i32>(_wgslsmith_dot_vec2_i32(select(arg_1.b.xz | vec2<i32>(60399i, u_input.d.x), arg_0.zy, select(vec2<bool>(global2[_wgslsmith_index_u32(arg_1.a.x, 10u)], var_0.a.a.x), var_0.a.a.yw, global2[_wgslsmith_index_u32(4294967295u, 10u)])), vec2<i32>(func_5(vec3<f32>(arg_1.d, arg_1.d, -1113f), Struct_2(var_0.a.a), Struct_4(arg_1)).x, _wgslsmith_div_i32(-16926i, arg_0.x))), abs(arg_1.b.x), arg_1.b.x), min(arg_1.c, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.e, u_input.a.x, u_input.b.x) & vec4<u32>(arg_1.a.x, u_input.e, u_input.b.x, u_input.c), _wgslsmith_mod_vec4_u32(arg_1.c, arg_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2)));
}

fn func_1() -> Struct_2 {
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    var var_0 = func_6(func_5(vec3<f32>(-695f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-315f * -334f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(854f, -985f, true)))), func_4(vec2<bool>(func_2(), global2[_wgslsmith_index_u32(1u, 10u)]), -u_input.d.wxz), Struct_4(Struct_1(firstLeadingBit(vec3<u32>(u_input.e, u_input.c, u_input.e)), ~vec3<i32>(u_input.d.x, global0[_wgslsmith_index_u32(u_input.e, 11u)], -1i), ~vec4<u32>(22772u, 1u, 22252u, u_input.a.x), -170f))), Struct_1(~vec3<u32>(60733u, u_input.a.x << (u_input.b.x % 32u), abs(5681u)), vec3<i32>(~global0[_wgslsmith_index_u32(max(39941u, u_input.e), 11u)], firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.c), 11u)]), 15105i), vec4<u32>(~countOneBits(u_input.a.x), u_input.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(34281u, u_input.b.x, u_input.a.x), vec3<u32>(u_input.b.x, u_input.c, u_input.a.x)) % 32u), u_input.b.x, 1u), 1f), _wgslsmith_f_op_f32(f32(-1f) * -194f));
    var_0 = Struct_1(~vec3<u32>(u_input.e, 1u, 4316u), ~vec3<i32>(1i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, var_0.a.x)), 11u)], func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1310f, -565f, var_0.d) * vec3<f32>(1031f, 700f, var_0.d)), func_4(vec2<bool>(false, false), vec3<i32>(u_input.d.x, var_0.b.x, 20792i)), Struct_4(Struct_1(vec3<u32>(u_input.e, 4294967295u, u_input.b.x), vec3<i32>(var_0.b.x, u_input.d.x, global0[_wgslsmith_index_u32(0u, 11u)]), vec4<u32>(u_input.b.x, 37672u, var_0.c.x, 19596u), -347f))).x), vec4<u32>(select(~var_0.a.x, _wgslsmith_mod_u32(var_0.a.x ^ 1u, ~39030u), all(vec3<bool>(false, global2[_wgslsmith_index_u32(var_0.a.x, 10u)], false))), firstTrailingBit(95224u), ~u_input.c, var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    return func_4(select(vec2<bool>(true, false), select(vec2<bool>(!global2[_wgslsmith_index_u32(var_0.a.x, 10u)], true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 10u)])), global2[_wgslsmith_index_u32(var_0.c.x << (_wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(7369u, var_0.a.x, 1u, u_input.c)) % 32u), 10u)]), func_4(select(func_4(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], true), var_0.b).a.zw, select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(u_input.c, 10u)]), vec2<bool>(global2[_wgslsmith_index_u32(61739u, 10u)], global2[_wgslsmith_index_u32(112520u, 10u)])), select(vec2<bool>(global2[_wgslsmith_index_u32(var_0.c.x, 10u)], global2[_wgslsmith_index_u32(22764u, 10u)]), vec2<bool>(global2[_wgslsmith_index_u32(0u, 10u)], false), vec2<bool>(false, true))), var_0.b).a.wy), (_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b.x, u_input.d.x, var_0.b.x), ~u_input.d.xyx) & select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, 2147483647i, var_0.b.x), vec3<i32>(-4602i, -2147483647i, -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.x, -2147483647i, 40049i), u_input.d.zwx), !vec3<bool>(global2[_wgslsmith_index_u32(var_0.c.x, 10u)], true, global2[_wgslsmith_index_u32(83503u, 10u)]))) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(81817u, 66433u, 341u) | var_0.c.wwz, vec3<u32>(6306u, 39129u, 2215u)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1());
    var var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(~(~abs(u_input.b.yy)), max(vec2<u32>(1u, 1u), abs(~vec2<u32>(10818u, 68662u)))), u_input.a.x, ~(54903u << (u_input.c % 32u)) | u_input.c, firstLeadingBit(_wgslsmith_sub_u32(~u_input.a.x, 48383u | u_input.b.x) | u_input.a.x));
    var_1 = ~(~_wgslsmith_mod_vec4_u32(func_6(vec3<i32>(u_input.d.x, -10166i, global0[_wgslsmith_index_u32(u_input.e, 11u)]), Struct_1(u_input.b, u_input.d.ywy, vec4<u32>(1u, u_input.b.x, 2035u, u_input.b.x), 1000f), 1094f).c, vec4<u32>(1u, 47132u, 67866u, var_1.x))) ^ vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~0u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, var_1.x, 39240u, 8756u), vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, 56363u))), 23266u);
    global0 = array<i32, 11>();
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(994f + -1545f)), 574f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(697f, 1838f) + _wgslsmith_div_f32(-1000f, -446f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-851f, -941f, 357f), vec3<f32>(_wgslsmith_f_op_f32(step(-125f, 935f)), _wgslsmith_div_f32(818f, 391f), -378f), true))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, _wgslsmith_f_op_f32(-821f + -1192f), _wgslsmith_f_op_f32(min(-975f, -597f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, 1128f) * vec3<f32>(1628f, -1130f, 1238f)) + vec3<f32>(-281f, 523f, -1000f)))))), var_0.a.a.x == global2[_wgslsmith_index_u32(u_input.b.x, 10u)]));
    var var_3 = ~2147483647i;
    let var_4 = u_input.d;
    let var_5 = !var_0.a.a;
    var_2 = vec3<f32>(var_2.x, -2875f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(827f, _wgslsmith_f_op_f32(var_2.x + -309f), var_1.x != 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.d.x, ~(func_6(vec3<i32>(-41604i, var_4.x, u_input.d.x), Struct_1(vec3<u32>(var_1.x, 1u, 4294967295u), var_4.zyz, vec4<u32>(u_input.b.x, 21918u, var_1.x, var_1.x), var_2.x), var_2.x).b.x | -925i)));
}

