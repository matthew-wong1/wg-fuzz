struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
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

var<private> global0: array<bool, 8> = array<bool, 8>(false, false, true, true, true, true, true, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-554f, -499f)), _wgslsmith_f_op_f32(-237f + 272f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -918f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1136f))))));
    global0 = array<bool, 8>();
    let var_1 = Struct_4(Struct_3(all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)])) || all(select(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 8u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 8u)], false), true)), u_input.c, abs(~(arg_0 ^ vec3<u32>(1u, 19345u, 84601u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2283f + -177f) + _wgslsmith_f_op_f32(505f + 1323f)), !all(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 8u)], false, false, global0[_wgslsmith_index_u32(1u, 8u)])), vec2<u32>(arg_0.x, 11191u), max(vec2<i32>(12998i, u_input.e), vec2<i32>(u_input.e, u_input.e)) ^ (u_input.b.yy ^ u_input.b.zz), _wgslsmith_div_u32(firstLeadingBit(39037u), arg_0.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 46683i, u_input.e, u_input.e), vec4<i32>(u_input.e, -19502i, -26442i, -19584i)), 2147483647i, 12824i), vec3<i32>(1i, u_input.c, -u_input.c))), (~32949u == (reverseBits(arg_0.x) | 0u)) && true, Struct_1(var_0.x, !all(vec2<bool>(global0[_wgslsmith_index_u32(75693u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)])), vec2<u32>(arg_0.x, _wgslsmith_sub_u32(arg_0.x, 63260u)), ~(u_input.b.xy >> (vec2<u32>(arg_1.x, arg_0.x) % vec2<u32>(32u))), 20027u ^ select(arg_1.x, ~u_input.a.x, true)));
    let var_2 = Struct_1(-1118f, false & var_1.c.b, vec2<u32>(4294967295u, arg_1.x), u_input.b.yz, _wgslsmith_add_u32(1u, _wgslsmith_add_u32(33320u, firstTrailingBit(39445u))));
    let var_3 = vec4<bool>(false, !any(select(!vec3<bool>(false, var_1.a.a, false), !vec3<bool>(var_1.c.b, false, var_2.b), all(vec3<bool>(true, false, true)))), false, all(!(!select(vec2<bool>(var_1.b, global0[_wgslsmith_index_u32(49729u, 8u)]), vec2<bool>(true, false), var_2.b))));
    return var_1.a.c;
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1256f, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -984f, 719f, -1542f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(949f, 1389f, arg_0, 1000f))))));
    var var_1 = select(!select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(u_input.d, 8u)]), select(vec3<bool>(true, true, true), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(18427u, 8u)], true), !vec3<bool>(global0[_wgslsmith_index_u32(71005u, 8u)], global0[_wgslsmith_index_u32(64309u, 8u)], global0[_wgslsmith_index_u32(u_input.d, 8u)])), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 8u)], true, global0[_wgslsmith_index_u32(1u, 8u)])), vec3<bool>(u_input.d < 4294967295u, !(~u_input.a.x > u_input.a.x), _wgslsmith_mod_u32(u_input.d << (u_input.d % 32u), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.d)) > ~u_input.d), !(true && global0[_wgslsmith_index_u32(~76217u, 8u)]));
    global0 = array<bool, 8>();
    var var_2 = Struct_2(var_0.a);
    return Struct_3(global0[_wgslsmith_index_u32(0u, 8u)], ~min(reverseBits(u_input.e), u_input.c), ~(~func_3(~vec3<u32>(u_input.a.x, 0u, u_input.d), ~u_input.a)), Struct_1(var_0.a.x, !all(!var_1.yy), vec2<u32>(~u_input.a.x, u_input.a.x) & countOneBits(u_input.a), select(select(-u_input.b.yy, abs(vec2<i32>(1i, 48724i)), var_1.yy), -vec2<i32>(u_input.e, 26104i), true), 14010u), vec3<i32>(~u_input.b.x, -8952i, -u_input.c));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_4(func_2(-438f), global0[_wgslsmith_index_u32(~(~min(12185u, u_input.d)), 8u)] || func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -840f))).a, func_2(296f).d);
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(658f)))) * var_0.c.a);
    return Struct_1(_wgslsmith_f_op_f32(var_0.a.d.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.d.a - var_0.a.d.a))), var_0.c.a)), true, u_input.a, u_input.b.zx, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(362f, global0[_wgslsmith_index_u32(u_input.d & ~u_input.a.x, 8u)], vec2<u32>(23892u, u_input.d), u_input.b.yy, (_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_sub_u32(1u, u_input.d)) | u_input.a.x) & 1u);
    global0 = array<bool, 8>();
    var var_1 = 804f;
    let var_2 = 1i;
    global0 = array<bool, 8>();
    let var_3 = -_wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_2, var_0.d.x, u_input.b.x), u_input.b) & select(vec3<i32>(2147483647i, var_2, u_input.c), _wgslsmith_sub_vec3_i32(u_input.b, u_input.b), select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 8u)], true), vec3<bool>(global0[_wgslsmith_index_u32(var_0.c.x, 8u)], true, var_0.b), var_0.b)), vec3<i32>((-26377i ^ u_input.b.x) ^ firstLeadingBit(var_2), reverseBits(i32(-1i) * -1i), firstLeadingBit(1i) << (0u % 32u)));
    var_0 = func_1();
    var var_4 = vec2<i32>(countOneBits(_wgslsmith_mult_i32(abs(1i), 47318i >> (1u % 32u))), i32(-1i) * -func_1().d.x);
    let var_5 = vec3<bool>(all(select(select(vec2<bool>(false, true), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], var_0.b), true), vec2<bool>(false | var_0.b, var_0.b), global0[_wgslsmith_index_u32(4294967295u, 8u)] || any(vec4<bool>(global0[_wgslsmith_index_u32(var_0.c.x, 8u)], false, false, global0[_wgslsmith_index_u32(1u, 8u)])))), var_0.b, !select(true, any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], true, var_0.b)), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(0i, -(~(i32(-1i) * -24516i))));
}

