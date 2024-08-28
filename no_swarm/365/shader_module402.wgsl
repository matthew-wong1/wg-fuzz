struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 2> = array<vec3<f32>, 2>(vec3<f32>(502f, -586f, -1577f), vec3<f32>(-128f, 118f, 957f));

var<private> global1: array<vec4<f32>, 11>;

var<private> global2: array<Struct_4, 2>;

var<private> global3: array<vec2<u32>, 16>;

var<private> global4: f32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<u32> {
    global1 = array<vec4<f32>, 11>();
    var var_0 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false))));
    global2 = array<Struct_4, 2>();
    let var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(17394u, ~_wgslsmith_div_u32(4294967295u, u_input.a), firstTrailingBit(u_input.b | arg_1.a), 4294967295u), ~min(firstLeadingBit(vec4<u32>(u_input.b, u_input.a, 63547u, 3708u)), ~vec4<u32>(48170u, arg_1.a, u_input.b, u_input.a))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(52299u, 1u, arg_1.a, u_input.a), vec4<u32>(1u, 4294967295u, arg_1.b, 0u)) | vec4<u32>(~23841u, ~u_input.b, ~53141u, ~u_input.a)));
    global0 = array<vec3<f32>, 2>();
    return global3[_wgslsmith_index_u32(u_input.a, 16u)];
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = global2[_wgslsmith_index_u32(17975u, 2u)];
    var_0 = Struct_4(global0[_wgslsmith_index_u32(arg_1.a, 2u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, arg_1.b.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 1000f) - arg_1.b.d))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(324f, var_0.b.x)), _wgslsmith_f_op_f32(step(var_0.a.x, 481f))))));
    let var_1 = arg_0.d;
    global2 = array<Struct_4, 2>();
    var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.d.x, arg_1.b.d.x, var_0.a.x) + global0[_wgslsmith_index_u32(13431u, 2u)]))) * var_0.a)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(764f, arg_1.b.d.x), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, 1925f), var_0.b)), _wgslsmith_f_op_vec2_f32(abs(arg_1.b.d)))))));
    return select(vec4<i32>(-72341i, u_input.d.x, ~2147483647i, 2147483647i), vec4<i32>(_wgslsmith_clamp_i32(4562i, 2147483647i, u_input.c), -29157i, _wgslsmith_mult_i32(u_input.c, -29253i), abs((u_input.c >> (0u % 32u)) >> (u_input.b % 32u))), false);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(~reverseBits(1u), _wgslsmith_clamp_u32(u_input.a, u_input.a, arg_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-664f, -474f) + 1f)) * _wgslsmith_f_op_f32(256f + _wgslsmith_div_f32(518f, _wgslsmith_f_op_f32(-824f + 1000f)))), _wgslsmith_f_op_vec2_f32(arg_1.d - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-688f, -378f))))))));
    let var_1 = Struct_2(arg_1.b, Struct_1(50166u, 26673u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.d.x))))), _wgslsmith_div_vec2_f32(arg_2.d, arg_2.d)));
    global3 = array<vec2<u32>, 16>();
    global0 = array<vec3<f32>, 2>();
    let var_2 = -func_4(Struct_5(true, _wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(u_input.a, 16u)], firstTrailingBit(global3[_wgslsmith_index_u32(arg_2.a, 16u)])), func_3(-2147483647i, Struct_1(10839u, u_input.b, 2187f, var_1.b.d)), reverseBits(vec3<u32>(u_input.a, 0u, arg_1.b) ^ vec3<u32>(arg_2.b, var_1.a, 4294967295u)), false), var_1);
    return vec3<u32>(var_0.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.b, 4294967295u >> (var_0.b % 32u), var_1.a), vec3<u32>(0u, arg_2.b, 1u)), arg_1.b);
}

fn func_1() -> vec3<u32> {
    var var_0 = Struct_5(false, _wgslsmith_mult_u32(1u, u_input.a), vec2<u32>(u_input.a, 22979u), ~vec3<u32>(min(27559u, u_input.a), firstLeadingBit(~78932u), _wgslsmith_dot_vec2_u32(~global3[_wgslsmith_index_u32(u_input.b, 16u)], _wgslsmith_mod_vec2_u32(global3[_wgslsmith_index_u32(3573u, 16u)], vec2<u32>(u_input.a, u_input.a)))), true);
    global2 = array<Struct_4, 2>();
    let var_1 = Struct_2(~53524u, Struct_1((_wgslsmith_dot_vec2_u32(var_0.c, vec2<u32>(0u, 17647u)) & _wgslsmith_mult_u32(u_input.a, u_input.a)) ^ var_0.b, u_input.a >> (var_0.b % 32u), _wgslsmith_f_op_f32(ceil(1000f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1112f, 843f) + -631f), _wgslsmith_f_op_f32(select(-131f, _wgslsmith_f_op_f32(1159f - -1530f), var_0.a)))));
    let var_2 = 22863u;
    return ~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(func_2(-vec2<i32>(7212i, 79221i), Struct_1(4294967295u, 82507u, var_1.b.c, vec2<f32>(-204f, var_1.b.c)), Struct_1(4294967295u, 4294967295u, var_1.b.c, var_1.b.d)), vec3<u32>(var_0.d.x, 1u, _wgslsmith_clamp_u32(u_input.b, 17490u, 20508u)), var_0.d), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(u_input.c >> ((max(~u_input.b, ~0u) << (~0u % 32u)) % 32u));
    let var_1 = Struct_1(~_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(1u, 56545u, 4294967295u)), func_1()), u_input.b, -727f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1359f, 246f))), _wgslsmith_f_op_f32(step(2052f, 1000f)))));
    var_0 = ~(-(i32(-1i) * -2147483647i));
    var var_2 = !(!select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, false, false, false)), true, false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))));
    global4 = var_1.c;
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, -36002i, _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(u_input.d.zz, vec2<i32>(u_input.d.x, 1i))) & (vec2<i32>(2147483647i, 30696i) >> (~global3[_wgslsmith_index_u32(1u, 16u)] % vec2<u32>(32u))), vec2<i32>(~(-14023i), ~u_input.c)));
}

