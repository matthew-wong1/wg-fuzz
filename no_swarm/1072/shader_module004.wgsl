struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: Struct_3;

var<private> global2: Struct_3;

var<private> global3: array<u32, 26>;

var<private> global4: vec3<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> vec3<bool> {
    global0 = array<Struct_1, 24>();
    var var_0 = global2.c;
    let var_1 = vec3<u32>(u_input.b, global1.c.e, var_0.e);
    var var_2 = firstLeadingBit(vec2<u32>(~var_1.x, ~(~41814u)));
    return global2.b.xwz;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<bool>) -> Struct_3 {
    global2 = Struct_3(~(~4294967295u) != firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(global2.c.e, global1.c.e), global1.c.e << (4077u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 104425u), vec2<u32>(9466u, 23625u)))), !global2.b, Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 84741u, u_input.b), vec3<u32>(0u, 4294967295u, global3[_wgslsmith_index_u32(u_input.b, 26u)])), u_input.b), 24u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b + global1.c.c.yx))), global1.c.c, _wgslsmith_f_op_vec3_f32(sign(global2.c.c.xzx)), 4294967295u), 288f);
    let var_0 = global1.c;
    var var_1 = Struct_3(!all(vec3<bool>(true, all(vec4<bool>(false, global1.b.x, global1.b.x, arg_1)), false)), vec4<bool>(true, all(!vec3<bool>(false, true, arg_1)), var_0.e != global1.c.e, !(!func_2().x)), global1.c, -817f);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-131f)))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.d))) * 591f)), -2298f);
    let var_3 = -1i;
    return Struct_3(global2.b.x, !(!(!select(vec4<bool>(global1.b.x, var_1.a, global1.a, arg_2.x), global2.b, var_1.b.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global2.d)), 405f, -1479f), arg_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b, -342f, -146f, -1052f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.c.x, 1256f, 362f, var_2.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, 505f, arg_0.d.x)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global2.c.c.zxx)))), global3[_wgslsmith_index_u32(~abs(_wgslsmith_div_u32(46649u, arg_0.e)), 26u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c.x)))) + _wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(abs(var_1.d)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>) -> bool {
    let var_0 = 135f;
    var var_1 = 27415u;
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    let var_2 = func_3(global2.c, any(func_2()), vec2<bool>(_wgslsmith_div_f32(global1.c.b.x, -2443f) != var_0, false || (u_input.a < _wgslsmith_dot_vec4_i32(vec4<i32>(global4.x, -61603i, global4.x, global4.x), vec4<i32>(global4.x, u_input.a, 6438i, global4.x)))));
    return any(vec4<bool>(false, !var_2.b.x, global1.a, 29569i != -u_input.a)) && (!global2.b.x & (~(~global4.x) >= countOneBits(~2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 26>();
    let var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_f32(round(1551f));
    let var_2 = Struct_3(global2.a, select(vec4<bool>(_wgslsmith_f_op_f32(-959f * 2029f) > _wgslsmith_f_op_f32(min(187f, var_1)), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1308f, global2.d, global1.d, global1.d)), _wgslsmith_f_op_vec3_f32(select(global2.c.c.yxx, global2.c.d, true))), all(global2.b.ywy), true), func_3(func_3(Struct_2(global2.c.a, global1.c.b, vec4<f32>(var_1, 2655f, 545f, -2711f), vec3<f32>(global2.d, 2562f, global2.c.d.x), global2.c.e), global2.b.x != true, select(global2.b.yw, global1.b.xw, true)).c, false, global2.b.yy).b, vec4<bool>(all(!vec4<bool>(global1.b.x, false, global2.a, global1.a)), global2.b.x, !(!global2.a), true)), Struct_2(func_3(func_3(Struct_2(global0[_wgslsmith_index_u32(16440u, 24u)], vec2<f32>(global2.d, global2.d), vec4<f32>(var_1, var_1, global1.c.a.a, 727f), global1.c.c.xyx, 8708u), global4.x < -32626i, select(global2.b.zx, vec2<bool>(global2.b.x, false), false)).c, select(4294967295u, 21397u, global1.b.x) == ~global2.c.e, func_2().xz).c.a, global2.c.c.zx, _wgslsmith_f_op_vec4_f32(trunc(global2.c.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1037f, var_1))) + vec3<f32>(var_1, _wgslsmith_f_op_f32(ceil(global2.d)), -2344f)), 0u), global2.c.c.x);
    global3 = array<u32, 26>();
    let var_3 = global1.d;
    let var_4 = abs(~(~vec2<u32>(49101u, 67380u) >> (~_wgslsmith_add_vec2_u32(vec2<u32>(0u, var_2.c.e), vec2<u32>(global1.c.e, var_2.c.e)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -441f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, 1205f)))))), select(~vec4<i32>(var_0, var_0, var_0, -26234i), vec4<i32>(1i, 74199i, u_input.a, -u_input.a), vec4<bool>(all(global1.b.yy), any(global2.b.xzw), true, false)) & (reverseBits(reverseBits(vec4<i32>(var_0, -1i, global4.x, 33054i))) ^ min(abs(vec4<i32>(global4.x, 43629i, u_input.a, global4.x)), -vec4<i32>(global4.x, global4.x, u_input.a, -2147483647i))), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_2.c.e, 12659u), ~90311u), ~var_4.x, func_3(global2.c, global1.a, func_3(var_2.c, global1.b.x, var_2.b.zz).b.wy).c.e, var_4.x) | ~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(global1.c.e, u_input.b, 1u, global3[_wgslsmith_index_u32(global1.c.e, 26u)])), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 26u)], global1.c.e, 41623u, global2.c.e) ^ vec4<u32>(u_input.b, 36455u, global2.c.e, var_4.x)));
}

