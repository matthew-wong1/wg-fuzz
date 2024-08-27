struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: Struct_2,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(11160u, 1u, 0u, 62362u), vec4<u32>(37006u, 4294967295u, 70490u, 11736u), vec4<u32>(83442u, 1u, 0u, 81845u), vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(4294967295u, 100955u, 1u, 36329u), vec4<u32>(4294967295u, 15166u, 4294967295u, 20396u), vec4<u32>(11675u, 1u, 6000u, 0u), vec4<u32>(45768u, 40482u, 63125u, 26468u), vec4<u32>(1u, 3519u, 32961u, 42049u), vec4<u32>(26671u, 1u, 0u, 0u), vec4<u32>(14270u, 1u, 4294967295u, 51710u));

var<private> global1: array<Struct_2, 6>;

var<private> global2: array<vec4<u32>, 28>;

var<private> global3: f32;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec2<i32> {
    global1 = array<Struct_2, 6>();
    var var_0 = arg_1;
    var var_1 = u_input.a;
    global3 = 1000f;
    var_0 = arg_1;
    return countOneBits(_wgslsmith_mult_vec2_i32(var_0.a.zz, vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(var_0.a.zy, var_0.a.yy)) | _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.a.x, var_1.x), -u_input.b.wz)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(u_input.b.x, vec2<i32>(-2147483647i, ~u_input.a.x), global1[_wgslsmith_index_u32(~54688u, 6u)], vec2<u32>(0u, 4294967295u), abs(select(abs(_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(u_input.b.x, u_input.a.x), vec2<i32>(18339i, 84657i))), func_3(vec3<bool>(false, false, true), Struct_1(u_input.b)) & vec2<i32>(u_input.b.x, u_input.a.x), true)));
    global0 = array<vec4<u32>, 11>();
    global3 = 538f;
    let var_1 = any(select(vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, var_0.d.x == var_0.d.x, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, false)), false)));
    var var_2 = min(var_0.c.c, _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -min(1i, -2147483647i), abs(u_input.a.x), 1i), countOneBits(-abs(vec4<i32>(u_input.a.x, var_0.b.x, u_input.b.x, 5857i)))));
    return var_0.c;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>) -> Struct_3 {
    return Struct_3(-arg_0.c.x >> (abs(~(32117u >> (0u % 32u))) % 32u), ~arg_2.yz, arg_0, select(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(1u, 1u)), arg_1), ~_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(u_input.b.x, 2147483647i)) ^ reverseBits(arg_2.zx));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> vec2<u32> {
    let var_0 = arg_0;
    let var_1 = func_4(func_2(), var_0, ~_wgslsmith_clamp_vec4_i32((u_input.b & vec4<i32>(-9269i, -1167i, u_input.b.x, -2948i)) << (max(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), global0[_wgslsmith_index_u32(arg_1.x, 11u)]) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(-vec4<i32>(0i, u_input.b.x, u_input.a.x, u_input.b.x), vec4<i32>(u_input.a.x, -19319i, u_input.b.x, 56355i)), ~vec4<i32>(32408i, -71726i, u_input.a.x, u_input.a.x)));
    let var_2 = abs(~max(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.d.x, arg_1.x, 1u), vec3<u32>(111365u, 0u, arg_1.x))), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, 54436u, arg_1.x), vec3<u32>(var_1.d.x, var_1.d.x, var_1.d.x) >> (vec3<u32>(1u, 56508u, arg_1.x) % vec3<u32>(32u)))));
    global1 = array<Struct_2, 6>();
    let var_3 = var_1.c.a.x;
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -839f), _wgslsmith_div_f32(1404f, 188f), 818f, _wgslsmith_f_op_f32(-818f * -580f)), vec4<f32>(559f, _wgslsmith_f_op_f32(step(482f, 502f)), _wgslsmith_f_op_f32(f32(-1f) * -159f), -935f), all(vec3<bool>(false, false, false))))), 5238i, min(-vec4<i32>(-39515i, 4152i, 0i, u_input.b.x), u_input.b << (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(7617u, 23858u, 0u), vec3<u32>(1u, 28629u, 0u)), 28u)] % vec4<u32>(32u))) ^ (_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, -1i), -vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.a.x)) ^ -(vec4<i32>(2147483647i, 48917i, u_input.b.x, u_input.b.x) & vec4<i32>(-73491i, -24037i, u_input.a.x, u_input.b.x))), _wgslsmith_f_op_f32(-979f + 628f));
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(43285u, 15251u))) << (func_1(any(vec2<bool>(true, true)), ~vec2<u32>(4294967295u, 44747u)) % vec2<u32>(32u)));
    global3 = 630f;
    global1 = array<Struct_2, 6>();
    global1 = array<Struct_2, 6>();
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(-400f * var_0.d)), _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-221f * -1046f) - -1000f)), 1000f), -22777i, var_0.c);
    var_2 = global1[_wgslsmith_index_u32(var_1.x, 6u)];
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)) * _wgslsmith_f_op_f32(round(455f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.x * -1814f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(228f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.a.x * -727f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), 393f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, -var_2.b, _wgslsmith_sub_u32(~(~6890u) >> (func_4(Struct_2(var_3, var_0.b, vec4<i32>(u_input.b.x, var_0.b, u_input.b.x, u_input.b.x)), select(true, false, false), ~var_0.c).d.x % 32u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 53526u, var_1.x)), vec3<u32>(_wgslsmith_add_u32(1u, 22924u), 1u, abs(1u)))));
}

