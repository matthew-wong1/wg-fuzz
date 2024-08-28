struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: Struct_2,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_4, 28>;

var<private> global2: array<vec4<i32>, 19>;

var<private> global3: array<f32, 8>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    var var_0 = Struct_1(arg_2.a, firstLeadingBit(select(~arg_1.b, ~arg_3 | (arg_0 | arg_1.b), vec2<bool>(true, arg_2.b.x >= 0u))));
    global0 = 1000f;
    let var_1 = Struct_2(arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(275f, -1000f)), vec4<bool>(false | select(false, true, all(vec4<bool>(true, true, true, false))), all(vec4<bool>(true, u_input.a >= 6614i, any(vec3<bool>(false, false, true)), any(vec3<bool>(true, true, false)))), all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(67882u, 8u)], global3[_wgslsmith_index_u32(arg_0.x, 8u)]))) >= -1031f), !(!vec4<bool>(true, false, all(vec4<bool>(false, true, true, false)), true)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(-1000f))));
    var_0 = var_1.a;
    var var_2 = vec2<u32>(~(_wgslsmith_dot_vec3_u32(vec3<u32>(2577u, u_input.b.x, arg_1.b.x), reverseBits(u_input.b)) | (~arg_2.a >> (1u % 32u))), ~arg_0.x);
    return var_1.b.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>) -> bool {
    global1 = array<Struct_4, 28>();
    var var_0 = arg_0;
    global3 = array<f32, 8>();
    var var_1 = 803f;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(func_3(arg_1, Struct_1(select(25373u ^ u_input.b.x, max(u_input.b.x, 0u), any(vec4<bool>(true, arg_0.x, false, false))), vec2<u32>(0u, min(1u, 25340u))), Struct_1(~_wgslsmith_add_u32(1u, arg_1.x), firstLeadingBit(~vec2<u32>(29812u, 25475u))), vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, 959u) >> (_wgslsmith_clamp_u32(1u, arg_1.x, u_input.b.x) % 32u), arg_1.x))), ~countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 0u, 5579u, arg_1.x), vec4<u32>(2930u, 40963u, 52343u, 25948u)) << (abs(vec4<u32>(41898u, 59160u, arg_1.x, 45621u)) % vec4<u32>(32u))), Struct_2(Struct_1(~(~u_input.b.x), vec2<u32>(~43532u, arg_1.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(13402u, 8u)], -1300f)), -464f), !(!(!vec4<bool>(false, arg_0.x, var_0.x, var_0.x))), !(!select(vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(false, arg_0.x, true, arg_0.x), arg_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1215f, global3[_wgslsmith_index_u32(u_input.b.x, 8u)]) + vec2<f32>(-1000f, 769f))))), select(!vec3<bool>(var_0.x, true, arg_0.x), !(!select(vec3<bool>(false, false, true), arg_0, vec3<bool>(false, true, arg_0.x))), any(vec3<bool>(false, true, false))), Struct_2(Struct_1(arg_1.x, ~(vec2<u32>(1u, arg_1.x) | vec2<u32>(arg_1.x, u_input.b.x))), vec2<f32>(1000f, 412f), vec4<bool>(u_input.a >= -26043i, true, any(select(arg_0, arg_0, arg_0.x)), arg_0.x), vec4<bool>(select(any(arg_0), all(vec4<bool>(true, var_0.x, var_0.x, arg_0.x)), all(arg_0)), true, arg_0.x | (u_input.c.x < 61873i), arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(abs(1u), 8u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_1.x, 8u)] + -801f)))));
    return !(false || (!(var_0.x || true) | var_2.d.x));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<f32>) -> u32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -616f))), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1833f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))));
    let var_1 = all(!vec4<bool>(select(all(vec2<bool>(true, true)), true, func_2(vec3<bool>(false, true, true), arg_1)), !all(vec2<bool>(false, false)), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), true));
    var var_2 = vec3<u32>(select(abs(0u), var_0.b, true) << (_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(arg_1.x, 17718u), firstTrailingBit(reverseBits(var_0.b)), arg_1.x) % 32u), var_0.b, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(u_input.b ^ u_input.b), select(u_input.b, vec3<u32>(64225u, 0u, arg_1.x), arg_1.x == var_0.b)), arg_1.x));
    let var_3 = u_input.b.x;
    var var_4 = global3[_wgslsmith_index_u32(var_0.b, 8u)];
    return ~max(~arg_1.x, _wgslsmith_mult_u32(arg_1.x, countOneBits(max(var_3, var_3))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 28>();
    let var_0 = Struct_3(2200f, ~select(~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 36703u), vec4<u32>(_wgslsmith_sub_u32(4294967295u, u_input.b.x), 41627u, max(1u, u_input.b.x), func_1(global3[_wgslsmith_index_u32(4294967295u, 8u)], vec2<u32>(u_input.b.x, 4294967295u), vec4<f32>(539f, -1101f, 2225f, 890f))), false), Struct_2(Struct_1(firstTrailingBit(0u) >> ((u_input.b.x & 39577u) % 32u), u_input.b.yy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-285f, global3[_wgslsmith_index_u32(u_input.b.x, 8u)]) - vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 8u)], -1000f)))), vec4<bool>(true, true, true, true), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(1u, 8u)]) + vec2<f32>(866f, global3[_wgslsmith_index_u32(u_input.b.x, 8u)]))))), !vec3<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, false)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b.x, 8u)] - -478f) >= _wgslsmith_f_op_f32(735f + 1787f)), Struct_2(Struct_1(u_input.b.x, ~_wgslsmith_mult_vec2_u32(u_input.b.yy, u_input.b.xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 8u)], -390f) + vec2<f32>(1099f, global3[_wgslsmith_index_u32(u_input.b.x, 8u)]))))), select(vec4<bool>(false, true, true, select(false, true, true)), vec4<bool>(true, all(vec3<bool>(true, false, true)), true, true), vec4<bool>(all(vec4<bool>(true, false, true, false)), true, true, any(vec3<bool>(true, false, false)))), vec4<bool>(true, 968f != _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 8u)]), false, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(1u, 8u)]))))));
    global1 = array<Struct_4, 28>();
    global3 = array<f32, 8>();
    global1 = array<Struct_4, 28>();
    global3 = array<f32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(~vec4<i32>(7432i, _wgslsmith_mod_i32(-35946i, u_input.c.x), countOneBits(39564i), -u_input.a), firstLeadingBit(_wgslsmith_mult_vec4_i32(global2[_wgslsmith_index_u32(var_0.e.a.a, 19u)], vec4<i32>(-26495i, u_input.a, u_input.c.x, 1i))), global2[_wgslsmith_index_u32(u_input.b.x, 19u)]), _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(-223f + _wgslsmith_f_op_f32(var_0.e.e.x + _wgslsmith_div_f32(var_0.e.b.x, var_0.a))))), (vec3<u32>(abs(4294967295u), 1u, var_0.b.x) << (vec3<u32>(0u, select(83604u, 70856u, true), var_0.b.x) % vec3<u32>(32u))) >> (~var_0.b.yxx % vec3<u32>(32u)));
}

