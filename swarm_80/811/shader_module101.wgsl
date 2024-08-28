struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
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

var<private> global0: bool;

var<private> global1: array<bool, 22> = array<bool, 22>(false, true, false, true, true, true, true, true, false, false, true, false, false, true, true, true, false, true, true, false, false, true);

var<private> global2: vec3<i32> = vec3<i32>(22349i, 1i, 2147483647i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> i32 {
    global2 = vec3<i32>(global2.x, -1i, reverseBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.e >> (u_input.d % vec3<u32>(32u)), vec3<i32>(u_input.c, u_input.e.x, 2147483647i) ^ arg_0.c.b), ~arg_1.d.a.a.x, i32(-1i) * -3490i)));
    let var_0 = Struct_1(vec2<i32>(u_input.e.x << (~(~0u) % 32u), reverseBits(~58289i) & arg_0.c.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_1.d.a.b.x, 738f), _wgslsmith_f_op_f32(arg_1.d.a.b.x * -1257f), _wgslsmith_f_op_f32(-arg_1.d.a.b.x)))), firstTrailingBit(arg_0.c.a.c));
    let var_1 = vec3<bool>(!(!arg_0.a.x), _wgslsmith_f_op_f32(max(arg_1.b.b.x, -960f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), true);
    global1 = array<bool, 22>();
    let var_2 = vec3<i32>(u_input.e.x, u_input.e.x, -(_wgslsmith_div_i32(~arg_0.c.a.a.x, abs(1i)) | min(var_0.a.x, -14239i)));
    return var_0.a.x;
}

fn func_2(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: f32, arg_3: i32) -> f32 {
    global2 = vec3<i32>(-arg_0.c.a.a.x << (countOneBits(countOneBits(~3457u)) % 32u), max(u_input.e.x, func_3(arg_0, Struct_3(arg_0.a.zyx, arg_0.c.a, _wgslsmith_sub_vec2_u32(u_input.d.xy, arg_0.c.a.c.xz), Struct_2(arg_0.c.a, vec3<i32>(global2.x, arg_1.x, u_input.a)), arg_0.a.x & global1[_wgslsmith_index_u32(arg_0.c.a.c.x, 22u)]))), reverseBits(-17588i));
    let var_0 = arg_3;
    var var_1 = 4243i;
    var var_2 = arg_0.c.a.b.x;
    let var_3 = !(!global1[_wgslsmith_index_u32(79081u, 22u)]);
    return arg_2;
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_2(arg_2, vec3<i32>(_wgslsmith_div_i32(arg_2.a.x, _wgslsmith_mod_i32(-1i, 1i)), -3798i, 26378i));
    var var_1 = Struct_4(select(!vec4<bool>(false, !global1[_wgslsmith_index_u32(31000u, 22u)], arg_0.a.x, true), vec4<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, arg_3, global1[_wgslsmith_index_u32(4294967295u, 22u)], arg_0.e), vec4<bool>(arg_3, arg_0.e, global1[_wgslsmith_index_u32(arg_0.d.a.c.x, 22u)], arg_0.a.x))), global1[_wgslsmith_index_u32(1u, 22u)], true, false), select(vec4<bool>(global1[_wgslsmith_index_u32(arg_2.c.x, 22u)] == arg_3, any(arg_0.a), true, all(vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 22u)], arg_0.e))), vec4<bool>(select(false, false, false), arg_2.c.x < u_input.d.x, global1[_wgslsmith_index_u32(1u, 22u)], false), !select(vec4<bool>(arg_0.e, true, global1[_wgslsmith_index_u32(var_0.a.c.x, 22u)], arg_3), vec4<bool>(false, true, arg_0.e, global1[_wgslsmith_index_u32(1u, 22u)]), arg_0.a.x))), 1081f, Struct_2(Struct_1(vec2<i32>(_wgslsmith_sub_i32(-2147483647i, -1i), -53728i), _wgslsmith_f_op_vec3_f32(-var_0.a.b), vec3<u32>(~1u, u_input.b, min(90308u, u_input.d.x))), -abs(arg_0.d.b)));
    let var_2 = ~(i32(-1i) * -4269i);
    let var_3 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.a.x, -28664i), vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.c.a.a, max(var_0.a.a, vec2<i32>(-2147483647i, 37560i))), max(var_2 ^ -1i, -arg_0.b.a.x))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1, -154f))), -132f)), _wgslsmith_f_op_f32(-var_0.a.b.x), _wgslsmith_f_op_f32(-arg_0.b.b.x)), select(abs(_wgslsmith_add_vec3_u32(arg_0.b.c, var_1.c.a.c)), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, var_0.a.c.x, 1u), vec3<u32>(var_0.a.c.x, 0u, var_1.c.a.c.x), vec3<u32>(var_1.c.a.c.x, 61845u, var_0.a.c.x)), arg_2.c | vec3<u32>(arg_0.d.a.c.x, var_0.a.c.x, 1u)), vec3<u32>(0u, arg_2.c.x, ~arg_2.c.x)), vec3<bool>(true, all(!vec4<bool>(arg_0.e, arg_3, true, global1[_wgslsmith_index_u32(0u, 22u)])), arg_0.a.x)));
    let var_4 = 0i;
    return arg_0.b;
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = arg_1.d.b ^ firstTrailingBit(vec3<i32>(u_input.c, i32(-1i) * -12376i, -_wgslsmith_mod_i32(arg_1.b.a.x, -2147483647i)));
    let var_1 = Struct_3(arg_1.a, func_4(arg_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_4(vec4<bool>(arg_1.e, arg_1.a.x, false, global1[_wgslsmith_index_u32(12719u, 22u)]), arg_1.b.b.x, Struct_2(arg_1.b, vec3<i32>(-25772i, 1346i, 11300i))), vec2<i32>(arg_3.d.a.a.x, arg_1.d.a.a.x), -1000f, i32(-1i) * -10385i)), arg_1.d.a.b.x), arg_3.d.a, !select(all(vec3<bool>(false, arg_0, arg_1.a.x)), any(vec3<bool>(true, global1[_wgslsmith_index_u32(arg_3.c.x, 22u)], arg_3.e)), arg_1.e && true)), arg_1.d.a.c.xx, Struct_2(arg_1.b, abs(_wgslsmith_add_vec3_i32(min(vec3<i32>(3873i, arg_3.d.b.x, global2.x), arg_3.d.b), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 1i, -1i), vec3<i32>(-22301i, 2147483647i, -1i))))), all(select(vec2<bool>(all(arg_1.a.yy), true), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 22u)]), !any(arg_3.a.yy))));
    var var_2 = func_3(Struct_4(select(vec4<bool>(false & global1[_wgslsmith_index_u32(var_1.d.a.c.x, 22u)], any(arg_1.a.xz), arg_0, arg_0), !select(vec4<bool>(true, arg_1.e, false, var_1.a.x), vec4<bool>(true, arg_1.e, var_1.a.x, false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 22u)], true, true, true)), select(vec4<bool>(false, var_1.a.x, false, false), vec4<bool>(true, var_1.a.x, arg_1.e, arg_0), !vec4<bool>(global1[_wgslsmith_index_u32(30948u, 22u)], arg_3.e, global1[_wgslsmith_index_u32(0u, 22u)], arg_3.e))), arg_1.b.b.x, Struct_2(func_4(Struct_3(var_1.a, Struct_1(arg_2, vec3<f32>(-111f, -574f, 1525f), vec3<u32>(4294967295u, 0u, arg_1.c.x)), arg_3.b.c.zy, arg_1.d, true), _wgslsmith_f_op_f32(f32(-1f) * -289f), arg_3.d.a, any(vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.d.x, 22u)], false))), countOneBits(arg_1.d.b))), Struct_3(select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(arg_3.b.c.x, 22u)], arg_3.e), vec3<bool>(true, true, true), var_1.e), vec3<bool>(true, !arg_1.e, var_1.e), !vec3<bool>(arg_0, arg_3.e, true)), func_4(arg_3, _wgslsmith_f_op_f32(step(530f, -1163f)), func_4(Struct_3(arg_3.a, arg_1.b, arg_1.d.a.c.yy, Struct_2(Struct_1(vec2<i32>(arg_2.x, arg_2.x), vec3<f32>(607f, var_1.b.b.x, 2054f), u_input.d), vec3<i32>(-2147483647i, 1i, global2.x)), false), arg_3.b.b.x, func_4(Struct_3(arg_3.a, var_1.b, arg_1.b.c.zx, arg_1.d, arg_0), arg_1.b.b.x, arg_1.b, arg_0), any(vec2<bool>(false, arg_3.a.x))), all(vec4<bool>(true, true, false, true))), _wgslsmith_div_vec2_u32(arg_1.b.c.zy, _wgslsmith_clamp_vec2_u32(var_1.b.c.yy, ~u_input.d.zx, abs(vec2<u32>(var_1.d.a.c.x, 67123u)))), arg_3.d, 40830u == firstLeadingBit(u_input.b)));
    let var_3 = Struct_3(var_1.a, func_4(Struct_3(arg_1.a, Struct_1(var_0.xz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.b.x, -1000f, arg_1.b.b.x)), var_1.d.a.c), ~(var_1.d.a.c.yy | var_1.c), arg_3.d, select(any(vec3<bool>(arg_0, arg_3.e, arg_1.a.x)), any(var_1.a), false)), _wgslsmith_f_op_f32(sign(-728f)), Struct_1(vec2<i32>(-1i, arg_3.d.a.a.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-194f, arg_3.d.a.b.x, arg_3.d.a.b.x)))), _wgslsmith_mod_vec3_u32(func_4(arg_1, arg_1.b.b.x, arg_3.d.a, true).c, vec3<u32>(arg_1.c.x, 0u, var_1.d.a.c.x))), !all(select(vec4<bool>(true, var_1.e, false, global1[_wgslsmith_index_u32(u_input.d.x, 22u)]), vec4<bool>(true, true, true, true), vec4<bool>(arg_0, arg_0, var_1.e, true)))), vec2<u32>(19228u, 18690u), Struct_2(func_4(Struct_3(!vec3<bool>(arg_1.e, arg_0, var_1.a.x), func_4(Struct_3(vec3<bool>(arg_1.a.x, false, arg_1.a.x), Struct_1(vec2<i32>(var_1.d.b.x, -14105i), var_1.d.a.b, arg_1.d.a.c), vec2<u32>(var_1.c.x, u_input.b), Struct_2(Struct_1(arg_1.b.a, var_1.b.b, vec3<u32>(1u, 1u, 0u)), vec3<i32>(global2.x, -49287i, 1i)), false), -1005f, var_1.d.a, arg_0), vec2<u32>(1u, 20714u) | vec2<u32>(1u, arg_1.c.x), Struct_2(arg_1.d.a, vec3<i32>(var_1.b.a.x, -1i, -9404i)), true), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-670f, 788f))), var_1.d.a, !all(vec4<bool>(arg_0, true, arg_1.a.x, false))), _wgslsmith_mod_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, arg_3.d.a.a.x, 0i), arg_3.d.b, vec3<i32>(global2.x, arg_2.x, var_0.x))), vec3<i32>(global2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1.d.a.a.x, -1i), u_input.e), var_1.d.b.x | var_1.b.a.x))), !any(!(!vec2<bool>(arg_3.a.x, false))));
    return Struct_1(global2.yx, _wgslsmith_f_op_vec3_f32(var_3.b.b - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(2027f, var_1.d.a.b.x, arg_3.d.a.b.x), vec3<f32>(var_3.d.a.b.x, arg_1.b.b.x, 650f)), _wgslsmith_f_op_vec3_f32(-arg_3.b.b)))))), vec3<u32>(u_input.d.x, 80285u, ~(~arg_1.b.c.x)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool) -> Struct_4 {
    var var_0 = arg_1;
    var var_1 = Struct_3(vec3<bool>(any(!arg_1.a.wy) != true, var_0.a.x, 0i <= countOneBits(~u_input.c)), Struct_1(min(vec2<i32>(-55782i, global2.x), global2.zz), arg_1.c.a.b, vec3<u32>(~u_input.b, min(~1415u, 71856u), u_input.d.x)), _wgslsmith_mult_vec2_u32(var_0.c.a.c.zx, vec2<u32>(~firstTrailingBit(var_0.c.a.c.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.d.x, u_input.b, 43029u), vec4<u32>(arg_1.c.a.c.x, arg_0.c.x, 1u, arg_0.c.x)))), var_0.c, _wgslsmith_f_op_f32(var_0.c.a.b.x + arg_0.b.x) >= _wgslsmith_f_op_f32(trunc(arg_1.c.a.b.x)));
    var var_2 = arg_0.c.x;
    var var_3 = ~(~(~vec4<u32>(~var_1.b.c.x, _wgslsmith_div_u32(arg_0.c.x, var_0.c.a.c.x), abs(4294967295u), arg_1.c.a.c.x)));
    var var_4 = vec4<i32>(0i, 63289i, _wgslsmith_add_i32(i32(-1i) * -(arg_1.c.b.x << (var_3.x % 32u)), abs(-2615i)), _wgslsmith_sub_i32(firstLeadingBit(11097i) & _wgslsmith_div_i32(-1i, u_input.a), arg_1.c.a.a.x));
    return arg_1;
}

fn func_6(arg_0: Struct_4) -> bool {
    var var_0 = arg_0.c.a.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(arg_0.c.a.b.x + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1714f), _wgslsmith_f_op_f32(-arg_0.c.a.b.x)))))));
    var var_2 = Struct_4(arg_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1011f))), func_5(arg_0.c.a, Struct_4(!func_5(Struct_1(vec2<i32>(42586i, 2147483647i), vec3<f32>(var_0.x, var_0.x, var_0.x), arg_0.c.a.c), arg_0, arg_0.a.x).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), Struct_2(arg_0.c.a, ~vec3<i32>(27520i, global2.x, u_input.c))), arg_0.a.x).c);
    global1 = array<bool, 22>();
    var var_3 = func_5(func_1(all(vec3<bool>(arg_0.a.x, false, false)) & true, Struct_3(arg_0.a.yww, Struct_1(_wgslsmith_sub_vec2_i32(u_input.e.zz, var_2.c.a.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 580f, 872f) + vec3<f32>(var_0.x, 1046f, var_0.x)), min(vec3<u32>(var_2.c.a.c.x, 10406u, 17232u), arg_0.c.a.c)), arg_0.c.a.c.zz, arg_0.c, !global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, arg_0.c.a.c.x), 22u)]), min(vec2<i32>(global2.x, global2.x) & select(arg_0.c.b.xy, vec2<i32>(-1i, 0i), var_2.a.xx), var_2.c.a.a), Struct_3(!select(vec3<bool>(false, false, false), arg_0.a.xxx, vec3<bool>(arg_0.a.x, var_2.a.x, var_2.a.x)), Struct_1(~global2.xx, var_1.zwx, ~var_2.c.a.c), ~vec2<u32>(1u, 1u), Struct_2(Struct_1(var_2.c.b.yy, var_1.wzx, u_input.d), ~arg_0.c.b), !all(arg_0.a))), arg_0, !(!all(vec4<bool>(var_2.a.x, arg_0.a.x, false, false)))).c.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)] == global1[_wgslsmith_index_u32(31153u, 22u)], func_6(func_5(func_1(global1[_wgslsmith_index_u32(0u, 22u)], Struct_3(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], global1[_wgslsmith_index_u32(u_input.d.x, 22u)], false), Struct_1(vec2<i32>(global2.x, u_input.c), vec3<f32>(-539f, 105f, 1661f), vec3<u32>(4294967295u, 0u, u_input.b)), u_input.d.zx, Struct_2(Struct_1(global2.zx, vec3<f32>(-739f, -349f, 295f), vec3<u32>(4294967295u, 27312u, u_input.b)), vec3<i32>(u_input.c, 53752i, u_input.a)), false), u_input.e.yy, Struct_3(vec3<bool>(global1[_wgslsmith_index_u32(38752u, 22u)], false, global1[_wgslsmith_index_u32(60513u, 22u)]), Struct_1(vec2<i32>(2845i, u_input.e.x), vec3<f32>(-362f, -1000f, 1197f), u_input.d), vec2<u32>(1u, 0u), Struct_2(Struct_1(vec2<i32>(u_input.c, u_input.c), vec3<f32>(1000f, 373f, -877f), u_input.d), vec3<i32>(1i, global2.x, global2.x)), global1[_wgslsmith_index_u32(u_input.b, 22u)])), Struct_4(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 22u)], false, false), -1480f, Struct_2(Struct_1(vec2<i32>(global2.x, 35184i), vec3<f32>(-2879f, 2009f, -346f), vec3<u32>(1u, u_input.b, 1u)), vec3<i32>(u_input.c, global2.x, global2.x))), true)), !global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, 88766u, 4294967295u), 22u)] & false, (0i <= u_input.c) == any(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(0u, 22u)]))));
    global2 = vec3<i32>(u_input.e.x, func_5(Struct_1(vec2<i32>(2147483647i, firstTrailingBit(u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1511f, -382f, -524f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1230f, 2312f, -1199f))), abs(_wgslsmith_sub_vec3_u32(u_input.d, vec3<u32>(u_input.b, u_input.b, 9294u)))), Struct_4(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 22u)], global1[_wgslsmith_index_u32(43590u, 22u)], global1[_wgslsmith_index_u32(12287u, 22u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)]), vec4<bool>(global1[_wgslsmith_index_u32(42337u, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)], false, global1[_wgslsmith_index_u32(u_input.d.x, 22u)]), global1[_wgslsmith_index_u32(u_input.d.x, 22u)]), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], false, true, global1[_wgslsmith_index_u32(u_input.b, 22u)])), _wgslsmith_f_op_f32(-func_5(Struct_1(vec2<i32>(global2.x, global2.x), vec3<f32>(-677f, -109f, 1318f), u_input.d), Struct_4(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], global1[_wgslsmith_index_u32(u_input.d.x, 22u)], false, global1[_wgslsmith_index_u32(u_input.d.x, 22u)]), -1209f, Struct_2(Struct_1(global2.yy, vec3<f32>(-440f, -933f, 1121f), u_input.d), u_input.e)), false).c.a.b.x), func_5(Struct_1(u_input.e.zx, vec3<f32>(-311f, -848f, -2296f), vec3<u32>(0u, u_input.d.x, 1u)), Struct_4(vec4<bool>(true, true, global1[_wgslsmith_index_u32(3497u, 22u)], global1[_wgslsmith_index_u32(14475u, 22u)]), -2783f, Struct_2(Struct_1(vec2<i32>(-3966i, 2147483647i), vec3<f32>(828f, -1453f, -199f), vec3<u32>(34217u, 25249u, 4294967295u)), u_input.e)), true).c), false).c.b.x, firstTrailingBit(-62052i));
    global0 = true;
    global1 = array<bool, 22>();
    var var_1 = Struct_3(vec3<bool>(select(func_5(Struct_1(vec2<i32>(2147483647i, -35661i), vec3<f32>(189f, -171f, 1235f), u_input.d), Struct_4(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 22u)], false, global1[_wgslsmith_index_u32(86778u, 22u)]), -256f, Struct_2(Struct_1(vec2<i32>(55587i, u_input.e.x), vec3<f32>(2502f, 1925f, 2332f), u_input.d), u_input.e)), true).c.a.c.x > u_input.b, global1[_wgslsmith_index_u32(min(55598u | u_input.d.x, 27353u), 22u)], true), global1[_wgslsmith_index_u32(u_input.b, 22u)], func_6(Struct_4(select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 22u)], true, global1[_wgslsmith_index_u32(40539u, 22u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.d.x, 22u)], false), global1[_wgslsmith_index_u32(90987u, 22u)]), func_5(Struct_1(vec2<i32>(2147483647i, u_input.a), vec3<f32>(805f, 486f, -1227f), u_input.d), Struct_4(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], false), 842f, Struct_2(Struct_1(vec2<i32>(2795i, -2147483647i), vec3<f32>(-1370f, 2340f, -1021f), u_input.d), vec3<i32>(2147483647i, 63859i, u_input.a))), true).b, func_5(Struct_1(vec2<i32>(global2.x, -2147483647i), vec3<f32>(-940f, 2827f, 1950f), u_input.d), Struct_4(vec4<bool>(false, global1[_wgslsmith_index_u32(63653u, 22u)], true, false), 1000f, Struct_2(Struct_1(u_input.e.zy, vec3<f32>(972f, -734f, -1045f), vec3<u32>(62834u, 0u, 29594u)), vec3<i32>(-71596i, global2.x, global2.x))), false).c))), func_4(Struct_3(!(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(1u, 22u)])), Struct_1(~vec2<i32>(-20271i, -12338i), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1730f, -1723f, -1328f))), _wgslsmith_add_vec3_u32(u_input.d, u_input.d)), ~vec2<u32>(u_input.b, u_input.d.x), func_5(Struct_1(vec2<i32>(global2.x, 9607i), vec3<f32>(-1931f, 1029f, -1921f), u_input.d), Struct_4(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(u_input.d.x, 22u)]), -1033f, Struct_2(Struct_1(vec2<i32>(global2.x, 13031i), vec3<f32>(-596f, -506f, -508f), vec3<u32>(4294967295u, u_input.b, u_input.b)), u_input.e)), false).c, all(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(53661u, 22u)], true, global1[_wgslsmith_index_u32(4294967295u, 22u)]))), 1202f, Struct_1(u_input.e.yy, vec3<f32>(_wgslsmith_f_op_f32(select(-359f, 932f, true)), 507f, _wgslsmith_f_op_f32(select(930f, -341f, false))), (vec3<u32>(42926u, u_input.b, u_input.b) | vec3<u32>(u_input.b, u_input.d.x, 3927u)) << (~u_input.d % vec3<u32>(32u))), any(func_5(func_1(true, Struct_3(vec3<bool>(true, false, false), Struct_1(u_input.e.xz, vec3<f32>(735f, -1313f, -941f), vec3<u32>(0u, u_input.b, 0u)), vec2<u32>(23066u, u_input.d.x), Struct_2(Struct_1(global2.xz, vec3<f32>(-669f, 746f, 1554f), u_input.d), u_input.e), global1[_wgslsmith_index_u32(u_input.b, 22u)]), u_input.e.zy, Struct_3(vec3<bool>(global1[_wgslsmith_index_u32(1u, 22u)], true, true), Struct_1(vec2<i32>(-3039i, u_input.c), vec3<f32>(1677f, 991f, -1517f), u_input.d), u_input.d.zz, Struct_2(Struct_1(vec2<i32>(-1i, 0i), vec3<f32>(629f, -1086f, 108f), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec3<i32>(global2.x, 15880i, global2.x)), false)), func_5(Struct_1(vec2<i32>(0i, u_input.e.x), vec3<f32>(392f, -443f, -312f), u_input.d), Struct_4(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 22u)], true, true, false), -364f, Struct_2(Struct_1(global2.xz, vec3<f32>(441f, 456f, -409f), vec3<u32>(u_input.b, 0u, u_input.b)), vec3<i32>(-16861i, -22328i, global2.x))), global1[_wgslsmith_index_u32(70286u, 22u)]), false).a.wwx)), vec2<u32>(~42300u, 27513u), func_5(func_1(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, ~u_input.b), 22u)], Struct_3(!vec3<bool>(true, global1[_wgslsmith_index_u32(32660u, 22u)], true), Struct_1(vec2<i32>(0i, u_input.c), vec3<f32>(-785f, -311f, -630f), u_input.d), u_input.d.yz, func_5(Struct_1(u_input.e.xx, vec3<f32>(208f, -418f, -235f), u_input.d), Struct_4(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)]), -834f, Struct_2(Struct_1(vec2<i32>(7587i, -23936i), vec3<f32>(1615f, -427f, 730f), u_input.d), vec3<i32>(global2.x, 18471i, global2.x))), false).c, any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)], true, false))), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, -2147483647i)) >> (select(vec2<u32>(1u, u_input.b), vec2<u32>(4294967295u, u_input.b), global1[_wgslsmith_index_u32(u_input.d.x, 22u)]) % vec2<u32>(32u)), Struct_3(func_5(Struct_1(vec2<i32>(56446i, 10191i), vec3<f32>(228f, 1883f, -2054f), vec3<u32>(0u, 1u, u_input.d.x)), Struct_4(vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.d.x, 22u)], false), 1292f, Struct_2(Struct_1(global2.xx, vec3<f32>(1064f, -1462f, -699f), vec3<u32>(1u, 0u, u_input.d.x)), vec3<i32>(-29353i, 1598i, 1556i))), global1[_wgslsmith_index_u32(u_input.b, 22u)]).a.xzy, Struct_1(u_input.e.yz, vec3<f32>(571f, -237f, -1167f), u_input.d), vec2<u32>(22646u, 0u), func_5(Struct_1(vec2<i32>(global2.x, -14464i), vec3<f32>(-464f, -1134f, -1139f), u_input.d), Struct_4(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 22u)], false, global1[_wgslsmith_index_u32(u_input.b, 22u)]), -1640f, Struct_2(Struct_1(vec2<i32>(global2.x, 24504i), vec3<f32>(248f, 590f, 1000f), vec3<u32>(u_input.d.x, 0u, 29583u)), u_input.e)), true).c, 62430u < u_input.d.x)), Struct_4(vec4<bool>(u_input.b > u_input.d.x, u_input.e.x != -2147483647i, false, u_input.b == u_input.d.x), _wgslsmith_f_op_f32(-368f + _wgslsmith_f_op_f32(abs(-648f))), Struct_2(func_4(Struct_3(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 22u)], false, false), Struct_1(vec2<i32>(u_input.c, 16196i), vec3<f32>(-852f, 1162f, -1000f), u_input.d), u_input.d.yx, Struct_2(Struct_1(vec2<i32>(u_input.a, u_input.a), vec3<f32>(-883f, -689f, 1348f), vec3<u32>(69229u, 21456u, 4294967295u)), u_input.e), true), 682f, Struct_1(u_input.e.xz, vec3<f32>(870f, 950f, -295f), vec3<u32>(61130u, u_input.b, 21760u)), false), vec3<i32>(2147483647i, 2147483647i, global2.x))), false).c, countOneBits(abs(~u_input.b)) == max(~0u, u_input.d.x));
    var var_2 = ~vec4<u32>(func_4(Struct_3(vec3<bool>(false, global1[_wgslsmith_index_u32(var_1.d.a.c.x, 22u)], true), var_1.b, vec2<u32>(u_input.b, var_1.b.c.x), Struct_2(var_1.d.a, var_1.d.b), true), 1643f, func_1(true, Struct_3(vec3<bool>(false, true, var_1.e), Struct_1(vec2<i32>(0i, u_input.e.x), vec3<f32>(1310f, var_1.b.b.x, var_1.d.a.b.x), var_1.d.a.c), u_input.d.yy, Struct_2(Struct_1(vec2<i32>(global2.x, -1i), vec3<f32>(var_1.d.a.b.x, var_1.d.a.b.x, var_1.d.a.b.x), u_input.d), vec3<i32>(6525i, 0i, u_input.c)), var_1.e), var_1.d.b.yy, Struct_3(vec3<bool>(var_1.e, global1[_wgslsmith_index_u32(var_1.d.a.c.x, 22u)], false), Struct_1(var_1.d.a.a, var_1.d.a.b, var_1.b.c), vec2<u32>(u_input.b, var_1.d.a.c.x), var_1.d, false)), false).c.x << (var_1.d.a.c.x % 32u), max(var_1.c.x, u_input.b), ~926u, u_input.d.x);
    let var_3 = Struct_2(func_5(var_1.d.a, Struct_4(vec4<bool>(var_1.e, true, global1[_wgslsmith_index_u32(u_input.d.x, 22u)], any(var_1.a)), _wgslsmith_f_op_f32(-func_5(Struct_1(vec2<i32>(0i, u_input.e.x), vec3<f32>(var_1.b.b.x, var_1.b.b.x, var_1.b.b.x), u_input.d), Struct_4(vec4<bool>(false, global1[_wgslsmith_index_u32(15061u, 22u)], var_1.e, true), var_1.b.b.x, Struct_2(Struct_1(vec2<i32>(u_input.c, -2147483647i), vec3<f32>(var_1.d.a.b.x, 196f, var_1.d.a.b.x), vec3<u32>(u_input.b, var_2.x, u_input.b)), vec3<i32>(u_input.e.x, global2.x, 30263i))), var_1.a.x).b), Struct_2(Struct_1(vec2<i32>(29229i, 45817i), var_1.d.a.b, var_2.wzw), _wgslsmith_mult_vec3_i32(u_input.e, vec3<i32>(global2.x, var_1.d.a.a.x, 22596i)))), global1[_wgslsmith_index_u32(u_input.b, 22u)]).c.a, _wgslsmith_clamp_vec3_i32(var_1.d.b, vec3<i32>(-1i, ~9128i, var_1.d.b.x), vec3<i32>(46628i, -_wgslsmith_mult_i32(-9861i, 18517i), _wgslsmith_add_i32(13373i, 0i) << (1u % 32u))));
    var var_4 = select(var_1.a.xz, !(!var_1.a.zx), false);
    var_4 = var_1.a.zx;
    let x = u_input.a;
    s_output = StorageBuffer(func_3(Struct_4(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(90956u, 22u)], true, false)), _wgslsmith_f_op_f32(-var_3.a.b.x), var_3), Struct_3(vec3<bool>(any(var_1.a.yx), func_5(var_1.d.a, Struct_4(vec4<bool>(false, var_1.a.x, true, true), var_3.a.b.x, Struct_2(Struct_1(var_3.a.a, vec3<f32>(-1000f, 105f, var_3.a.b.x), vec3<u32>(4294967295u, 48016u, 4294967295u)), var_3.b)), false).a.x, false), var_3.a, vec2<u32>(~0u, ~var_1.d.a.c.x), var_3, 153f < _wgslsmith_f_op_f32(562f - var_3.a.b.x))));
}

