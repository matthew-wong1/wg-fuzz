struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> u32 {
    global0 = Struct_3(global1.a, !(!(!arg_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -265f), global2[_wgslsmith_index_u32(4294967295u, 28u)]);
    var var_0 = Struct_3(global0.a, global0.b || arg_0.c.x, -629f, Struct_1(vec2<i32>(global1.a.a.x, 0i), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.d.b.wxw, arg_0.d.b.ywx), ~arg_0.d.b.wwx), arg_0.d.a.x, i32(-1i) * -global0.d.b.x, ~_wgslsmith_dot_vec3_i32(global1.a.b.xyz, vec3<i32>(arg_0.d.b.x, global0.a.a.x, 2147483647i))), _wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, global0.a.c), vec3<u32>(4294967295u, 4294967295u, global0.d.e))), ~_wgslsmith_add_vec3_u32(vec3<u32>(global0.d.e, 4294967295u, u_input.c), vec3<u32>(u_input.c, arg_0.a.x, global0.d.c))), vec4<f32>(arg_0.d.d.x, arg_0.d.d.x, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.d.x))), global0.d.c));
    var var_1 = vec4<f32>(-1109f, _wgslsmith_f_op_f32(-arg_0.d.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.d.x)), -1236f);
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(~u_input.a.x, -2147483647i >> (arg_0.d.e % 32u), arg_0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(40517i, u_input.a.x), vec2<i32>(global1.a.a.x, global1.a.a.x))), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(max(_wgslsmith_mod_vec4_i32(arg_0.d.b, vec4<i32>(0i, global1.a.b.x, global0.a.a.x, -2147483647i)), global0.a.b), vec4<i32>(-1i) * -arg_0.d.b, select(~vec4<i32>(-29934i, -47046i, arg_0.d.a.x, global1.a.a.x), vec4<i32>(-13363i, global0.a.a.x, 2147483647i, 19696i), !global1.b)), abs(countOneBits(global1.a.b))));
    global0 = Struct_3(Struct_1(_wgslsmith_mod_vec2_i32(var_0.a.b.zz, vec2<i32>(2147483647i, -u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, arg_0.b, _wgslsmith_div_i32(global0.d.b.x, var_0.d.b.x), countOneBits(1i)), vec4<i32>(~(-26354i), _wgslsmith_sub_i32(-2147483647i, u_input.e), _wgslsmith_mod_i32(u_input.e, var_0.a.b.x), 2147483647i ^ var_0.a.b.x)), 64630u, _wgslsmith_div_vec4_f32(global0.d.d, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, global0.a.d.x, global0.c, global1.c), vec4<f32>(global0.d.d.x, -104f, global0.c, arg_0.d.d.x)))))), ~(~(~global1.d.e))), false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, -665f, global0.b)) * _wgslsmith_f_op_f32(arg_1 + arg_1)), _wgslsmith_f_op_f32(floor(373f)))))), arg_0.d);
    return ~abs(select(countOneBits(u_input.b), ~arg_0.d.e, false) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(59937u, global0.a.c, 5330u), vec3<u32>(52218u, 7842u, var_0.a.c)) % 32u));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: i32) -> Struct_3 {
    let var_0 = u_input.d.x;
    let var_1 = Struct_3(Struct_1(abs(u_input.a), -abs(global0.d.b), select(_wgslsmith_mod_u32(var_0, global0.a.e), _wgslsmith_mod_u32(22567u, 8999u), any(vec4<bool>(true, false, false, global1.b))) << (~_wgslsmith_sub_u32(global0.d.c, u_input.c) % 32u), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(241f, _wgslsmith_f_op_f32(min(-1000f, 595f)), -913f, _wgslsmith_f_op_f32(abs(-218f))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.d.d.x, 1213f, -809f, -421f), vec4<f32>(global1.c, 2202f, -1158f, -1963f)))), 0u), false, arg_0, global2[_wgslsmith_index_u32(func_3(Struct_2(~max(u_input.d, u_input.d), _wgslsmith_div_i32(global1.d.a.x, global0.a.a.x), select(vec4<bool>(true, global0.b, global0.b, false), !vec4<bool>(global1.b, true, global1.b, true), vec4<bool>(false, global1.b, true, false)), global1.d), -1000f), 28u)]);
    global1 = Struct_3(Struct_1(min(-(vec2<i32>(12769i, arg_2) << (vec2<u32>(1u, u_input.d.x) % vec2<u32>(32u))), vec2<i32>(1i, global0.d.a.x)), ~(~vec4<i32>(-49786i, -2147483647i, global1.a.a.x, global0.a.b.x)), ~1u, global0.d.d, global1.d.e | 1u), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_0)))) * _wgslsmith_f_op_f32(min(arg_0, -796f))), global0.a);
    var var_2 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(global0.d.e), _wgslsmith_div_u32(4294967295u, var_0), ~u_input.b, ~var_1.d.e), select(~vec4<u32>(4294967295u, var_1.d.c, var_1.d.e, 43212u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 28510u), vec4<u32>(4294967295u, 8263u, global1.d.c, 0u)), var_1.b)), ~max(~vec4<u32>(1u, global0.d.c, 4294967295u, 17539u), ~vec4<u32>(0u, global1.a.c, 0u, 19318u)));
    let var_3 = max(u_input.e, 0i);
    return Struct_3(Struct_1(-_wgslsmith_mult_vec2_i32(-vec2<i32>(arg_2, 39695i), ~vec2<i32>(arg_2, arg_2)), select(var_1.d.b, global0.d.b, select(select(vec4<bool>(var_1.b, global1.b, true, global0.b), vec4<bool>(false, true, var_1.b, global0.b), vec4<bool>(var_1.b, global0.b, false, true)), vec4<bool>(true, false, global0.b, var_1.b), vec4<bool>(true, global1.b, global0.b, false))), ~(~_wgslsmith_div_u32(1u, 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global0.a.d, _wgslsmith_f_op_vec4_f32(-global1.a.d))) - vec4<f32>(arg_0, 469f, -1211f, _wgslsmith_div_f32(arg_0, -128f))), 61719u), var_1.b, arg_0, Struct_1(firstLeadingBit(-vec2<i32>(u_input.e, 4340i)) >> (vec2<u32>(countOneBits(var_0), var_2.x) % vec2<u32>(32u)), abs(reverseBits(global0.a.b)), _wgslsmith_sub_u32(global0.a.c | _wgslsmith_sub_u32(36893u, 1u), global0.a.c), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, global1.d.d.x, arg_0, 1722f) - global1.a.d)))), var_2.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x << (u_input.b % 32u), u_input.b), select(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.e, 4294967295u, 79947u), vec3<u32>(4294967295u, 0u, 11572u)), global0.d.c), u_input.d, select(vec2<bool>(true, true), arg_0.c.wx, false))), arg_0.d.b.x, !select(vec4<bool>(false, true, all(vec4<bool>(arg_3, true, false, true)), true), select(arg_0.c, arg_0.c, arg_0.c.x), !vec4<bool>(false, true, global0.b, global1.b)), global2[_wgslsmith_index_u32(abs(~(~global0.a.e)), 28u)]);
    var var_1 = max(~(-1i), var_0.d.b.x);
    let var_2 = var_0.c;
    let var_3 = arg_0.d;
    var_1 = arg_0.b;
    return var_3;
}

fn func_1() -> vec4<bool> {
    var var_0 = func_4(Struct_2(u_input.d, ~(~(~global0.a.b.x)), !select(!vec4<bool>(global0.b, true, false, true), !vec4<bool>(global0.b, global1.b, false, global0.b), true), global2[_wgslsmith_index_u32(39449u, 28u)]), vec3<f32>(global0.a.d.x, -459f, global1.a.d.x), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(120f, -1000f)))), global1.d.b.x, abs(max(_wgslsmith_mod_i32(0i, -15100i), -global1.d.a.x))), select(all(vec3<bool>(true, true, global1.b)), false, any(!vec3<bool>(global0.b, global0.b, global0.b)) || global1.b));
    var_0 = func_4(Struct_2(select(u_input.d, vec2<u32>(1u, firstLeadingBit(696u)), _wgslsmith_f_op_f32(max(global1.d.d.x, global0.c)) == _wgslsmith_f_op_f32(trunc(-677f))), 2147483647i, vec4<bool>(!global0.b, !global1.b && false, global1.b, true), Struct_1(vec2<i32>(select(13731i, global1.d.b.x, false), -1i), vec4<i32>(2147483647i, global0.d.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, -2147483647i, var_0.b.x), vec4<i32>(1i, -4151i, 12565i, 13226i)), global1.d.a.x), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(596u, 4294967295u, 67472u)), vec3<u32>(global0.a.e, global0.d.c, u_input.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.d + vec4<f32>(107f, -446f, 1343f, var_0.d.x)), _wgslsmith_f_op_vec4_f32(global1.d.d * vec4<f32>(global1.a.d.x, var_0.d.x, var_0.d.x, -1178f)), global0.b)), var_0.c)), vec3<f32>(1622f, 879f, global0.a.d.x), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.a.d.x - global0.d.d.x), _wgslsmith_f_op_f32(max(global0.d.d.x, global1.c))))), -72186i, ~(-62162i)), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c * -317f) * _wgslsmith_f_op_f32(select(global1.d.d.x, global0.a.d.x, false)))), ~1i, var_0.b.x).b);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a.d.x, global0.c, global1.d.d.x, -715f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1813f, global0.a.d.x, 332f, 670f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1858f, var_0.d.x, global0.d.d.x, -1000f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, global0.d.d.x, 346f, global0.c)) - global1.d.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.d.x, -1883f, -720f, global0.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-358f, global1.c, global1.a.d.x, var_0.d.x))))), global1.b));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -447f);
    var var_3 = true;
    return select(!(!select(!vec4<bool>(false, global0.b, true, true), vec4<bool>(global1.b, false, global0.b, global1.b), !vec4<bool>(global1.b, global0.b, false, false))), select(!(!(!vec4<bool>(false, true, global0.b, false))), !(!(!vec4<bool>(false, false, global1.b, global1.b))), true), !(!select(vec4<bool>(true, global1.b, global1.b, true), vec4<bool>(false, true, global0.b, global0.b), false & global1.b)));
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> Struct_3 {
    let var_0 = func_2(func_2(-449f, -arg_0 & (i32(-1i) * -arg_0), arg_1.d.a.x).d.d.x, countOneBits(global0.a.b.x), select(_wgslsmith_clamp_i32(u_input.e, -arg_1.b, -9651i), -26631i, false)).c;
    var var_1 = vec3<f32>(arg_1.d.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0)) - _wgslsmith_f_op_f32(min(-928f, _wgslsmith_div_f32(arg_1.d.d.x, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), !global0.b)), -743f);
    let var_2 = -max(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(global0.d.b.wx, abs(vec2<i32>(0i, arg_0))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-14058i, global1.d.b.x), arg_1.d.a), vec2<i32>(global0.d.a.x, arg_0))), global0.d.b.zw);
    let var_3 = _wgslsmith_div_i32(i32(-1i) * -1i, -global0.d.a.x);
    var var_4 = var_2.x;
    return func_2(var_0, 0i, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.e;
    global2 = array<Struct_1, 28>();
    global2 = array<Struct_1, 28>();
    global0 = func_5(-u_input.e, Struct_2(_wgslsmith_mult_vec2_u32(u_input.d & u_input.d, ~u_input.d) & ((u_input.d << (u_input.d % vec2<u32>(32u))) >> (_wgslsmith_clamp_vec2_u32(u_input.d, vec2<u32>(79175u, 43353u), vec2<u32>(1u, global0.a.c)) % vec2<u32>(32u))), global0.a.b.x, vec4<bool>(all(func_1()), global0.b, true, all(vec3<bool>(true, true, true))), global2[_wgslsmith_index_u32(34453u, 28u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.d.x - global1.d.d.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.c), global0.a.d.x)))), vec2<u32>(firstTrailingBit(0u), 27985u), 35529u, vec4<i32>(-reverseBits(1i), firstLeadingBit(-max(2147483647i, u_input.a.x)), func_5(global1.d.b.x, Struct_2(u_input.d, global1.a.b.x, vec4<bool>(global1.b, global0.b, global1.b, true), Struct_1(vec2<i32>(u_input.a.x, global1.d.b.x), vec4<i32>(u_input.e, 12214i, 1i, -12496i), 4294967295u, vec4<f32>(-1490f, 888f, global0.a.d.x, global1.a.d.x), u_input.c))).d.b.x << (u_input.c % 32u), _wgslsmith_mod_i32(u_input.e, ~u_input.e)));
}

