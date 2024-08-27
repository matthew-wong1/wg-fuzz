struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false));

var<private> global1: array<Struct_4, 24>;

var<private> global2: array<Struct_3, 1>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec2<bool>) -> i32 {
    return min(_wgslsmith_dot_vec3_i32((-vec3<i32>(9636i, arg_0.a.c, u_input.d) >> (firstLeadingBit(u_input.a) % vec3<u32>(32u))) | ~_wgslsmith_sub_vec3_i32(vec3<i32>(16115i, arg_1.a.c, arg_1.a.c), vec3<i32>(-1i, arg_1.a.c, arg_0.a.c)), _wgslsmith_clamp_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.a.c, 14222i, -2147483647i), vec3<i32>(u_input.d, arg_0.a.c, 0i)), vec3<i32>(arg_0.a.c, arg_1.a.c, arg_1.a.c) & vec3<i32>(-16999i, 0i, 2147483647i), true), -(~vec3<i32>(-1i, arg_0.a.c, arg_0.a.c)), vec3<i32>(i32(-1i) * -1i, -19606i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(-42710i, 2147483647i))))), select(~(-abs(arg_0.a.c)), -42337i, false));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(958f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -608f)))))));
    var var_1 = (reverseBits(firstTrailingBit(vec4<i32>(-2147483647i, u_input.d, u_input.d, arg_0))) | _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, -1i, -2147483647i, arg_0), vec4<i32>(64625i, -3638i, u_input.d, -1i)) & _wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_0, u_input.d, arg_0), vec4<i32>(u_input.d, 0i, u_input.d, -2147483647i)), -vec4<i32>(arg_0, 0i, 1i, u_input.d) >> (~vec4<u32>(arg_1.x, arg_1.x, 4294967295u, 4294967295u) % vec4<u32>(32u)))) | -select(-_wgslsmith_div_vec4_i32(vec4<i32>(-83675i, -2147483647i, arg_0, arg_0), vec4<i32>(1i, -1i, arg_0, u_input.d)), (vec4<i32>(arg_0, arg_0, -2147483647i, u_input.d) >> (vec4<u32>(56571u, 1u, arg_1.x, u_input.a.x) % vec4<u32>(32u))) & ~vec4<i32>(-31184i, 2147483647i, arg_0, 0i), all(vec4<bool>(true, true, true, true)));
    let var_2 = !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(118u, ~4294967295u), 111695u), 8u)];
    var_1 = firstTrailingBit((-(~vec4<i32>(u_input.d, -19984i, -2147483647i, -17663i)) | (vec4<i32>(var_1.x, 20285i, 2147483647i, -2147483647i) << (~vec4<u32>(37424u, arg_1.x, 70414u, arg_1.x) % vec4<u32>(32u)))) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, arg_1.x, u_input.b.x, u_input.a.x), ~vec4<u32>(24491u, u_input.c, arg_1.x, u_input.c)) % vec4<u32>(32u)));
    var var_3 = false;
    return Struct_1(false, vec2<bool>(true, true), func_3(Struct_3(Struct_1(var_2.x, !vec2<bool>(false, var_2.x), var_1.x)), Struct_3(Struct_1(any(vec4<bool>(var_2.x, false, true, true)), var_2.yy, 28044i)), global0[_wgslsmith_index_u32(arg_1.x, 8u)], var_2.yx));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_2(func_2(1i, vec3<u32>(arg_3.x << (4294967295u % 32u), arg_2, u_input.b.x) | u_input.b), Struct_1(false & !(arg_1.x >= -861f), vec2<bool>(true, true), -func_3(Struct_3(Struct_1(true, vec2<bool>(false, false), u_input.d)), Struct_3(Struct_1(false, vec2<bool>(false, false), u_input.d)), !global0[_wgslsmith_index_u32(u_input.b.x, 8u)], select(vec2<bool>(false, false), vec2<bool>(true, false), true))), 14010i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1961f, -626f, 375f)), _wgslsmith_f_op_vec3_f32(-arg_1.yzx)))))));
    var var_2 = countOneBits(~vec2<u32>(_wgslsmith_add_u32(1u, select(0u, 49807u, var_0.b.b.x)), min(1u, arg_2)));
    return func_2(abs(21434i), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(-(~vec3<i32>(2147483647i, 2147483647i, 57116i)), select(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 2147483647i, u_input.d), vec3<i32>(u_input.d, 0i, u_input.d)), ~vec3<i32>(-2147483647i, -2147483647i, u_input.d), _wgslsmith_sub_u32(u_input.c, 29900u) >= _wgslsmith_sub_u32(4294967295u, u_input.a.x)), true) >> (vec3<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(12530u, u_input.b.x, u_input.a.x), max(~u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.c))), min((u_input.a.x & u_input.b.x) ^ u_input.b.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 33818u, 20716u, u_input.a.x), vec4<u32>(4294967295u, u_input.b.x, u_input.c, u_input.b.x)))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(730f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1595f) + _wgslsmith_f_op_f32(f32(-1f) * -1963f))) + -329f);
    global0 = array<vec3<bool>, 8>();
    global0 = array<vec3<bool>, 8>();
    var var_2 = func_1(~u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_1 - -1572f), _wgslsmith_f_op_f32(var_1 - -470f), -1068f, _wgslsmith_f_op_f32(var_1 - var_1))))), u_input.b.x, u_input.a);
    global1 = array<Struct_4, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~firstTrailingBit(~var_0.xy)), 1u);
}

