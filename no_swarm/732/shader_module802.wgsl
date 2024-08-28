struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_4 {
    return Struct_4(Struct_3(vec3<i32>(u_input.a, 1i, 2147483647i), arg_2.b, _wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.c.x, 1i, 0i, 0i), vec4<i32>(-35491i, arg_3.x, 16603i, 18300i))), global1.c << (u_input.c % vec4<u32>(32u)))), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_3.x, countOneBits(_wgslsmith_div_i32(arg_2.c.x, 31440i))), global1.c.wy), -38875i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(162f + arg_2.b.a.c.x), _wgslsmith_f_op_f32(global1.b.a.c.x + 593f))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4) -> Struct_3 {
    var var_0 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(43138u, 4294967295u, 24515u, 4294967295u), vec4<u32>(1u, u_input.c.x, arg_1.a.b.a.b, 59830u)), global1.b.a.b, 42383u, u_input.c.x >> (1u % 32u)), u_input.c));
    return func_2(vec2<bool>(false, true), ~36861u, func_2(vec2<bool>(true, select(true, false, 1263f <= global1.b.a.c.x)), 4294967295u, arg_1.a, ~_wgslsmith_mod_vec3_i32(~vec3<i32>(1i, arg_1.a.c.x, 2147483647i), -global1.a)).a, -_wgslsmith_clamp_vec3_i32(global1.c.zyy, reverseBits(vec3<i32>(global1.b.a.a, -54031i, -28376i) | global1.a), _wgslsmith_mod_vec3_i32(-arg_1.a.a, global1.a & arg_1.a.c.yxx))).a;
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = true;
    var var_1 = ~(~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(u_input.c.zw), _wgslsmith_sub_vec2_u32(u_input.c.zz, u_input.c.xz)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.b.a.b, 20080u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(106171u, 53142u))));
    var var_2 = global1.b.a;
    var_1 = ~u_input.c.xz;
    var var_3 = !all(!select(select(vec2<bool>(false, var_0), vec2<bool>(var_0, true), false), vec2<bool>(true, var_0), any(vec2<bool>(true, var_0))));
    return func_3(global1.c.yy, Struct_4(func_3(~vec2<i32>(-39262i, u_input.b), Struct_4(func_3(arg_0.c.xz, Struct_4(Struct_3(vec3<i32>(u_input.b, -2147483647i, 0i), Struct_2(arg_0.b.a, var_2.a), global1.c), arg_0.a.zx, 2147483647i, arg_0.b.a.c.zx)), arg_0.a.xy, countOneBits(-3295i), _wgslsmith_f_op_vec2_f32(vec2<f32>(1110f, global1.b.a.c.x) + var_2.c.zz))), vec2<i32>(-1i, u_input.b), func_2(vec2<bool>(var_0, false), var_2.b ^ 25840u, arg_0, vec3<i32>(arg_0.c.x, var_2.a, global1.c.x)).c << (_wgslsmith_dot_vec2_u32(abs(u_input.c.xz), ~vec2<u32>(var_1.x, 25106u)) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b.a.c.yz) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.a.c.x, arg_0.b.a.c.x) + _wgslsmith_f_op_vec2_f32(ceil(global1.b.a.c.xx))))));
}

fn func_1(arg_0: Struct_3) -> u32 {
    var var_0 = vec2<i32>(u_input.b, -5504i | u_input.a);
    global1 = func_4(func_3(arg_0.c.xy | _wgslsmith_sub_vec2_i32(~arg_0.c.yy, global1.a.zx | global1.a.yx), func_2(vec2<bool>(true, true), 29968u, Struct_3(~arg_0.a, Struct_2(global1.b.a, 0i), _wgslsmith_mod_vec4_i32(global1.c, global1.c)), ~(~vec3<i32>(var_0.x, 0i, 0i)))));
    let var_1 = u_input.c.xw;
    global0 = array<vec4<f32>, 8>();
    var_0 = vec2<i32>(global1.b.a.a, -global1.a.x) & vec2<i32>(~u_input.b, _wgslsmith_sub_i32(global1.b.a.a, ~global1.c.x) << (~6864u % 32u));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.a.b, arg_0.b.a.b), ~min(~(vec2<u32>(92986u, 19944u) & var_1), ~vec2<u32>(var_1.x, 30064u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1f;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.a.c.x - _wgslsmith_f_op_f32(global1.b.a.c.x + global1.b.a.c.x)) - -415f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(global1.b.a.c.x - -204f))))))));
    let var_1 = Struct_1(1i, ~func_1(Struct_3(_wgslsmith_add_vec3_i32(global1.c.zzy, vec3<i32>(u_input.b, global1.a.x, -1i)), Struct_2(global1.b.a, u_input.b), vec4<i32>(global1.c.x, u_input.b, 9123i, u_input.a))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(global1.b.a.c.x, global1.b.a.c.x), _wgslsmith_f_op_f32(select(263f, -1117f, any(vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(385f + -351f), global1.b.a.c.x))));
    global0 = array<vec4<f32>, 8>();
    let var_2 = firstLeadingBit(var_1.a);
    var var_3 = Struct_4(func_3(global1.c.yy, Struct_4(Struct_3(global1.a, Struct_2(Struct_1(-1i, 18248u, global1.b.a.c), u_input.b), global1.c), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, 10850i, var_1.a), vec4<i32>(u_input.b, 23663i, -2147483647i, -22119i)), abs(-2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2, -13765i, u_input.b, var_1.a), vec4<i32>(var_2, global1.c.x, 0i, 2147483647i)) ^ ~u_input.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1570f, var_1.c.x) * var_1.c.yz))))), func_4(Struct_3(reverseBits(global1.c.ywx), global1.b, vec4<i32>(~0i, _wgslsmith_dot_vec4_i32(global1.c, vec4<i32>(global1.a.x, u_input.b, var_2, 1i)), abs(-2147483647i), _wgslsmith_mult_i32(var_1.a, 8586i)))).c.xy, _wgslsmith_dot_vec2_i32(select(~max(global1.a.xz, vec2<i32>(23928i, var_1.a)), ~(global1.a.zx ^ vec2<i32>(0i, 2147483647i)), 17116i == _wgslsmith_div_i32(u_input.b, 34285i)), (global1.a.yx ^ -global1.a.xz) ^ vec2<i32>(countOneBits(-2147483647i), -45533i)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1.c.zz))) + var_1.c.yw), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.b.a.c.x)) - 1168f), global1.b.a.c.x))));
    let var_4 = Struct_3(vec3<i32>(var_2, 69406i, -7150i), Struct_2(func_4(Struct_3(abs(var_3.a.c.yzx), func_4(var_3.a).b, global1.c)).b.a, -54307i), max(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(var_3.a.c, vec4<i32>(global1.c.x, var_1.a, var_1.a, 36554i)), ~select(vec4<i32>(var_1.a, global1.a.x, var_2, -1i), global1.c, vec4<bool>(true, true, false, false))), reverseBits(-var_3.a.c)));
    let x = u_input.a;
    s_output = StorageBuffer(~98856u, var_4.a.xz, reverseBits(_wgslsmith_dot_vec2_i32(global1.a.yy, vec2<i32>(global1.b.b, var_2)) | -2147483647i) << (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(84559u, u_input.c.x, 55090u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 0u, 115621u, 4294967295u), u_input.c, _wgslsmith_div_vec4_u32(vec4<u32>(var_1.b, var_4.b.a.b, var_4.b.a.b, 1u), vec4<u32>(var_3.a.b.a.b, u_input.c.x, u_input.c.x, 29113u)))) % 32u));
}

