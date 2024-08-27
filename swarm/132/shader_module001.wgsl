struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(102f, Struct_1(vec2<u32>(0u, 17479u), vec2<u32>(38746u, 1u), -231f, vec3<u32>(0u, 0u, 0u)));

var<private> global1: array<vec2<u32>, 17>;

var<private> global2: Struct_2;

var<private> global3: i32;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<bool>) -> vec2<u32> {
    var var_0 = vec3<f32>(-314f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1290f))) - global0.a) + -1197f), -1236f);
    var var_1 = Struct_2(Struct_1(abs(min(global2.c.d.zz, countOneBits(global1[_wgslsmith_index_u32(global2.a.a.x, 17u)]))), u_input.a, _wgslsmith_f_op_f32(-714f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1051f, var_0.x)))), vec3<u32>(u_input.b.x, 19065u << (max(16206u, u_input.a.x) % 32u), global0.b.b.x)), select(!vec3<bool>(!arg_0.x, true, 1110f <= var_0.x), global2.b, true), Struct_1(global0.b.d.xz, u_input.a, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2.d.c, _wgslsmith_f_op_f32(-global2.c.c)))), ~(~vec3<u32>(15130u, global2.c.a.x, global0.b.d.x))), Struct_1(~(u_input.b.xx << (reverseBits(vec2<u32>(u_input.a.x, 0u)) % vec2<u32>(32u))), vec2<u32>(~(~global2.a.b.x), global2.d.b.x & _wgslsmith_mod_u32(15928u, global2.a.b.x)), global0.b.c, ~abs(_wgslsmith_mult_vec3_u32(global2.d.d, global0.b.d))));
    global0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.a, global0.b.c), -932f, true)) + -827f) * var_1.a.c), global0.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1082f), var_0.x, 972f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-980f, -1346f, -717f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global2.c.c, -206f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.d.c, 792f, -239f))), _wgslsmith_div_vec3_f32(vec3<f32>(576f, global0.b.c, 1000f), vec3<f32>(885f, 1143f, global0.b.c)), global2.b)) - vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.c), _wgslsmith_f_op_f32(global0.b.c - var_1.a.c), _wgslsmith_f_op_f32(var_0.x - 640f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.c, 381f, -596f) * vec3<f32>(936f, global2.a.c, global0.b.c)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.c, 718f, -1003f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-319f, 465f, global0.a)))))));
    var var_3 = vec4<i32>(~1i << (countOneBits(abs(global2.c.b.x)) % 32u), min(3395i, -(-1i << (global2.a.b.x % 32u))), (0i >> (global0.b.a.x % 32u)) | 1i, 1i);
    return _wgslsmith_add_vec2_u32(select(~vec2<u32>(1u, global0.b.b.x), vec2<u32>(global2.d.d.x, 1u), true), _wgslsmith_div_vec2_u32(global2.d.b, abs((vec2<u32>(global2.a.a.x, u_input.a.x) ^ vec2<u32>(u_input.b.x, global2.d.b.x)) & (u_input.a << (u_input.b.zx % vec2<u32>(32u))))));
}

fn func_2() -> Struct_2 {
    return Struct_2(Struct_1((~global1[_wgslsmith_index_u32(u_input.b.x, 17u)] >> (~vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))) ^ select(func_3(vec4<bool>(false, global2.b.x, global2.b.x, global2.b.x)), ~vec2<u32>(global0.b.d.x, 4294967295u), select(global2.b.yz, vec2<bool>(global2.b.x, global2.b.x), global2.b.xz)), global0.b.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(861f))), _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -866f)))), ~(~reverseBits(global0.b.d))), select(!global2.b, global2.b, all(!(!vec2<bool>(global2.b.x, false)))), Struct_1(vec2<u32>(~u_input.a.x, ~17326u) >> (vec2<u32>(68845u, ~global2.c.b.x) % vec2<u32>(32u)), vec2<u32>(u_input.a.x, global0.b.a.x), -538f, vec3<u32>(select(global2.a.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(85619u, u_input.a.x, 1u, 1u), vec4<u32>(84374u, global2.d.d.x, global2.a.d.x, 991u)), global0.a > -603f), abs(4294967295u), _wgslsmith_add_u32(global2.c.d.x, u_input.a.x))), global2.c);
}

fn func_1(arg_0: bool) -> vec3<u32> {
    global2 = func_2();
    let var_0 = func_2();
    var var_1 = Struct_3(select(var_0.b.zy, !select(!var_0.b.yz, !vec2<bool>(var_0.b.x, arg_0), vec2<bool>(false, false)), 1u != _wgslsmith_mult_u32(global0.b.a.x, _wgslsmith_div_u32(global0.b.a.x, 4294967295u))), true, func_2());
    global0 = Struct_5(var_0.a.c, Struct_1(abs(select(vec2<u32>(var_1.c.c.b.x, 0u), ~vec2<u32>(var_1.c.a.d.x, 28065u), func_2().b.x)), u_input.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2247f - global0.b.c) + -1461f))), global0.b.d));
    var var_2 = Struct_4(~(~_wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, 2147483647i, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -1i, -37529i), vec3<i32>(-2147483647i, 1i, 11622i)))), Struct_1(vec2<u32>(u_input.b.x, ~1u), abs(u_input.b.zx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.c + global2.a.c)), func_2().c.d), func_2().c, _wgslsmith_mult_vec2_i32(-abs(select(vec2<i32>(79121i, 1i), vec2<i32>(1i, -2147483647i), true)), _wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -18440i, min(-1i, -86720i)), ~vec2<i32>(1i, 1i))));
    return vec3<u32>(~(~(~3400u)), ~var_2.c.d.x, 47035u) & ~firstLeadingBit(_wgslsmith_div_vec3_u32(global0.b.d, vec3<u32>(0u, var_2.b.a.x, global2.d.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -(~_wgslsmith_mult_i32(_wgslsmith_mult_i32(~(-6002i), ~(-1i)), -11990i));
    let var_0 = ~(~((reverseBits(u_input.b.x) >> (firstLeadingBit(72580u) % 32u)) << (~0u % 32u)));
    let var_1 = reverseBits(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(func_1(global2.b.x), vec3<u32>(4294967295u, global0.b.b.x, 0u)) << (global0.b.b.x % 32u), reverseBits(~var_0) >> (u_input.b.x % 32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(154f, 1063f) - vec2<f32>(global0.b.c, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global2.c.c) - vec2<f32>(global2.a.c, 728f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-967f, _wgslsmith_f_op_f32(802f + global2.a.c)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, global0.a), vec2<f32>(-1276f, 1445f)), vec2<f32>(global0.a, -389f))))))));
    var var_3 = global2.b.zx;
    var var_4 = func_2();
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-1f), 856f);
    let x = u_input.a;
    s_output = StorageBuffer(abs(2147483647i), vec2<f32>(func_2().a.c, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_4.c.c)) * -748f))), ~1u, 18377u, -1000f);
}

