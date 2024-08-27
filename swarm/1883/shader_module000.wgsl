struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> u32 {
    let var_0 = Struct_1(select(46198u, ~_wgslsmith_mod_u32(u_input.d.x, _wgslsmith_add_u32(1u, u_input.d.x)), false), vec3<bool>(true, true, global0[_wgslsmith_index_u32(arg_1, 22u)]), u_input.d, _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-51868i, i32(-1i) * -24626i, -61272i), vec3<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.b), ~0i, -6224i)), vec3<i32>(~u_input.c, -16360i << (max(0u, u_input.d.x) % 32u), select(u_input.c << (38253u % 32u), u_input.e, true)), min(-vec3<i32>(2147483647i, 42566i, u_input.b) | -vec3<i32>(0i, u_input.e, u_input.b), select(_wgslsmith_mod_vec3_i32(vec3<i32>(-7719i, 0i, -1i), vec3<i32>(13659i, u_input.c, 2147483647i)), firstTrailingBit(vec3<i32>(u_input.e, u_input.e, 0i)), select(vec3<bool>(false, global0[_wgslsmith_index_u32(28314u, 22u)], false), vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 22u)], global0[_wgslsmith_index_u32(34220u, 22u)], false), global0[_wgslsmith_index_u32(0u, 22u)])))));
    global0 = array<bool, 22>();
    global0 = array<bool, 22>();
    var var_1 = Struct_2(vec3<u32>(countOneBits(4294967295u), ~(~reverseBits(54057u)), 33310u));
    global0 = array<bool, 22>();
    return ~4294967295u;
}

fn func_2(arg_0: Struct_4, arg_1: vec2<u32>) -> vec2<i32> {
    var var_0 = func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-646f, -1527f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1453f, -1453f))))), ~_wgslsmith_div_u32(select(0u, arg_1.x, global0[_wgslsmith_index_u32(arg_1.x, 22u)]) | ~63740u, _wgslsmith_div_u32(select(1u, arg_1.x, true), ~arg_1.x)));
    let var_1 = Struct_2(vec3<u32>(firstTrailingBit(_wgslsmith_div_u32(1u, 6842u)), u_input.a, _wgslsmith_sub_u32(u_input.a & u_input.d.x, arg_1.x)) << (~u_input.d.xzw % vec3<u32>(32u)));
    var var_2 = select(select(!(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 22u)], global0[_wgslsmith_index_u32(29445u, 22u)]))), vec3<bool>(true, select(select(true, arg_0.a, true), all(vec4<bool>(arg_0.a, global0[_wgslsmith_index_u32(var_1.a.x, 22u)], arg_0.b, true)), global0[_wgslsmith_index_u32(~var_1.a.x, 22u)]), global0[_wgslsmith_index_u32(32365u, 22u)]), true), vec3<bool>(any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, arg_0.b), vec3<bool>(arg_0.b, true, false))), true, arg_0.a), select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 22u)], true, !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(56207u, var_1.a.x), 22u)]), !(!(!vec3<bool>(arg_0.b, true, arg_0.b))), !arg_0.a));
    let var_3 = reverseBits(~vec4<u32>(u_input.d.x, var_1.a.x, var_1.a.x >> (_wgslsmith_clamp_u32(22583u, var_1.a.x, 0u) % 32u), _wgslsmith_add_u32(4294967295u, u_input.a)));
    var var_4 = Struct_1(countOneBits(var_1.a.x), vec3<bool>(arg_0.a, false, any(vec2<bool>(any(vec3<bool>(arg_0.b, false, true)), !global0[_wgslsmith_index_u32(4294967295u, 22u)]))), vec4<u32>(max(_wgslsmith_sub_u32(1u, ~var_1.a.x), _wgslsmith_mod_u32(1u, 1u)), 51303u ^ _wgslsmith_add_u32(4294967295u >> (0u % 32u), var_1.a.x & u_input.a), reverseBits(35287u) >> (firstTrailingBit(abs(47375u)) % 32u), u_input.d.x >> ((u_input.d.x >> (20601u % 32u)) % 32u)), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.c, select(_wgslsmith_mult_i32(u_input.c, -2147483647i), _wgslsmith_div_i32(u_input.e, u_input.b), true)), vec3<i32>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(-42866i, 40891i)), 2147483647i >> (var_3.x % 32u)), u_input.c, ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.e), vec2<i32>(u_input.b, u_input.b)))));
    return var_4.d.xy;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_4) -> Struct_3 {
    global0 = array<bool, 22>();
    var var_0 = i32(-1i) * -_wgslsmith_dot_vec2_i32(func_2(arg_2, vec2<u32>(u_input.a, u_input.a)) >> (~vec2<u32>(arg_0.x, 0u) % vec2<u32>(32u)), vec2<i32>(u_input.b, ~(-2147483647i)));
    var var_1 = _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, -2147483647i, 26829i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, u_input.b), vec2<i32>(1i, 1i))), vec4<i32>(-(~countOneBits(u_input.c)), _wgslsmith_add_i32(~u_input.b & 2147483647i, u_input.b & _wgslsmith_mod_i32(u_input.c, -50071i)), u_input.e, 1i));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 4294967295u, arg_0.x), vec4<u32>(arg_0.x, 9213u, u_input.d.x, 1u) << (u_input.d % vec4<u32>(32u))), vec4<u32>(0u, arg_0.x, max(0u, arg_0.x), 55112u)), u_input.a, _wgslsmith_div_u32(4294967295u, min(18725u << (arg_0.x % 32u), _wgslsmith_mod_u32(arg_0.x, arg_0.x)))) | vec3<u32>(1u, _wgslsmith_div_u32(4294967295u, arg_0.x), 1u);
    var var_3 = vec2<i32>(_wgslsmith_sub_i32(-9626i, -u_input.e), i32(-1i) * -u_input.e);
    return Struct_3(Struct_1(~var_2.x, !select(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 22u)], arg_1.x), select(arg_1, arg_1, vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a, 22u)])), !vec3<bool>(arg_1.x, arg_2.b, arg_2.a)), vec4<u32>(var_2.x, abs(var_2.x), _wgslsmith_dot_vec2_u32(arg_0.zy, vec2<u32>(arg_0.x, u_input.a)), min(4294967295u, 1u)), _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(1i, 0i, var_3.x)) & reverseBits(vec3<i32>(var_3.x, 55839i, -55014i)), max(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.e, u_input.e), vec3<i32>(var_3.x, -5640i, var_3.x)), ~vec3<i32>(u_input.b, 1i, 21537i)))));
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: Struct_3) -> Struct_1 {
    global0 = array<bool, 22>();
    global0 = array<bool, 22>();
    var var_0 = _wgslsmith_div_u32(arg_3.a.c.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 19328u, arg_3.a.c.x, u_input.a)), 64705u, reverseBits(arg_3.a.c.x), _wgslsmith_clamp_u32(59594u, 68855u, u_input.a)), vec4<u32>(func_1(vec3<u32>(arg_3.a.a, 4294967295u, 4294967295u), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 22u)], true), arg_2).a.c.x, ~78854u, 22834u, select(u_input.d.x, u_input.d.x, true))));
    global0 = array<bool, 22>();
    global0 = array<bool, 22>();
    return Struct_1(~1973u, !(!vec3<bool>(global0[_wgslsmith_index_u32(abs(arg_3.a.c.x), 22u)], arg_3.a.b.x, all(arg_3.a.b))), func_1(vec3<u32>(arg_3.a.a, u_input.a >> (1u % 32u), 0u), select(arg_3.a.b, arg_3.a.b, !(!arg_3.a.b)), Struct_4(all(select(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 22u)]), vec2<bool>(true, arg_3.a.b.x), arg_3.a.b.yy)), !any(vec2<bool>(true, false)))).a.c, arg_3.a.d);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_mult_u32(select(0u ^ u_input.a, _wgslsmith_mult_u32(16361u, arg_2.a.c.x), arg_0.b.x & false), ~(~10828u)), arg_2.a.b, (func_4(u_input.e, arg_0.d.zy, Struct_4(arg_2.a.b.x, arg_0.b.x), arg_1).c | (vec4<u32>(u_input.d.x, 0u, 3837u, 4294967295u) >> (vec4<u32>(1u, 4294967295u, 1u, arg_0.c.x) % vec4<u32>(32u)))) & arg_2.a.c, ~vec3<i32>(56351i, arg_0.d.x, i32(-1i) * -1i)));
    let var_1 = _wgslsmith_f_op_f32(trunc(-1252f));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -120f))), _wgslsmith_f_op_f32(abs(var_1))) * vec2<f32>(923f, _wgslsmith_f_op_f32(f32(-1f) * -373f)));
    let var_3 = false;
    var var_4 = select(vec4<bool>(any(arg_1.a.b.xz), arg_0.b.x, any(arg_2.a.b.zx), var_0.a.b.x | func_4(31871i, arg_0.d.zz, Struct_4(false, arg_0.b.x), Struct_3(var_0.a)).b.x), !(!select(select(vec4<bool>(arg_0.b.x, arg_1.a.b.x, false, false), vec4<bool>(true, var_3, false, true), true), !vec4<bool>(true, false, arg_0.b.x, false), all(var_0.a.b))), !vec4<bool>(func_1(~var_0.a.c.zwx, arg_0.b, Struct_4(false, arg_0.b.x)).a.b.x, false, arg_0.b.x, -494f < _wgslsmith_f_op_f32(round(var_1))));
    return Struct_2(vec3<u32>(~(~67464u), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.a, 18481u, 23051u), _wgslsmith_div_vec3_u32(arg_0.c.zxx, vec3<u32>(0u, 1u, 1u))), 2475u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 22>();
    let var_0 = func_5(func_4(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-23792i, u_input.c, u_input.e), vec3<i32>(2147483647i, u_input.e, u_input.b)), -vec3<i32>(u_input.b, u_input.e, 0i), max(vec3<i32>(u_input.c, u_input.b, -24085i), vec3<i32>(-2008i, -2147483647i, 21531i))), ~vec3<i32>(0i, 2147483647i, u_input.e) | select(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(18241i, u_input.e, 28067i), global0[_wgslsmith_index_u32(73294u, 22u)])), vec2<i32>(~(-u_input.c), ~u_input.c), Struct_4(all(vec4<bool>(true, false, true, true)) | (u_input.c == u_input.b), select(false, any(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 22u)])), !global0[_wgslsmith_index_u32(u_input.a, 22u)])), func_1(u_input.d.zwz, !(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(u_input.d.x, 22u)])), Struct_4(true, global0[_wgslsmith_index_u32(u_input.d.x, 22u)] == false))), Struct_3(Struct_1(u_input.a, !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 22u)], false), ~u_input.d, -max(vec3<i32>(-47964i, u_input.c, 51136i), vec3<i32>(0i, u_input.e, 21446i)))), func_1(abs(u_input.d.yxz), !(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.d.x, 22u)])), Struct_4(!global0[_wgslsmith_index_u32(72984u, 22u)] || all(vec2<bool>(false, false)), true)));
    let var_1 = func_5(func_4(-_wgslsmith_dot_vec2_i32(~vec2<i32>(26118i, -2147483647i), ~vec2<i32>(u_input.c, u_input.b)), vec2<i32>(-u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-21982i, u_input.e, u_input.c, u_input.b), vec4<i32>(-55743i, u_input.b, u_input.c, -2147483647i))), Struct_4(any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 22u)], true, false, false)), any(vec2<bool>(false, true))), func_1(~(~vec3<u32>(var_0.a.x, 43873u, var_0.a.x)), func_4(-u_input.b, vec2<i32>(1i, 1i), Struct_4(global0[_wgslsmith_index_u32(var_0.a.x, 22u)], global0[_wgslsmith_index_u32(u_input.a, 22u)]), func_1(vec3<u32>(var_0.a.x, var_0.a.x, 4294967295u), vec3<bool>(true, false, false), Struct_4(false, global0[_wgslsmith_index_u32(1916u, 22u)]))).b, Struct_4(global0[_wgslsmith_index_u32(u_input.d.x, 22u)], all(vec4<bool>(global0[_wgslsmith_index_u32(21031u, 22u)], true, false, global0[_wgslsmith_index_u32(var_0.a.x, 22u)]))))), func_1(~vec3<u32>(1u, min(var_0.a.x, u_input.a), 4294967295u), func_1(vec3<u32>(var_0.a.x, 650u, ~57152u), !(!vec3<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 22u)], true, true)), Struct_4(all(vec2<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 22u)], global0[_wgslsmith_index_u32(var_0.a.x, 22u)])), !global0[_wgslsmith_index_u32(u_input.a, 22u)])).a.b, Struct_4(!all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 22u)], false, false, true)), any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(u_input.d.x, 22u)])))), func_1(~(vec3<u32>(u_input.a, u_input.a, 4294967295u) | var_0.a), !(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]))), Struct_4(!(u_input.e < 12872i), all(!vec3<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 22u)], global0[_wgslsmith_index_u32(var_0.a.x, 22u)], true)))));
    var var_2 = !(!(!any(func_1(u_input.d.yyz, vec3<bool>(true, true, true), Struct_4(global0[_wgslsmith_index_u32(10014u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)])).a.b.yx)));
    var_2 = false == global0[_wgslsmith_index_u32(var_0.a.x, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(firstTrailingBit(u_input.e) ^ u_input.c, -countOneBits(_wgslsmith_sub_i32(0i, u_input.e))), 2147483647i);
}

