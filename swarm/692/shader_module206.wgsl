struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
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

var<private> global0: vec3<f32> = vec3<f32>(802f, -750f, -1888f);

var<private> global1: array<Struct_1, 19>;

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<bool>, arg_3: vec2<i32>) -> vec4<bool> {
    var var_0 = global1[_wgslsmith_index_u32(~1u & _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~45945u, 1u)), _wgslsmith_clamp_u32(select(~80794u, ~12157u, all(arg_2)), 1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 79106u, 39532u), vec3<u32>(68105u, 35773u, 51577u)), _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 1u), ~46376u))), 19u)];
    var var_1 = ~arg_3.x;
    let var_2 = var_0.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(2397f, -1563f, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global0.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(global0.x + global0.x), arg_0.x && false)))));
    let var_4 = global0.x;
    return select(select(var_0.d, var_0.d, all(vec3<bool>(arg_0.x & true, var_0.b.x, !var_0.b.x))), !vec4<bool>(arg_0.x, false, arg_1, true), var_0.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> u32 {
    var var_0 = Struct_1(4294967295u, !vec4<bool>(false, !(arg_0.b.x && arg_1.d.x), func_3(arg_1.d.xy, arg_0.b.x, !arg_0.d.zzw, vec2<i32>(u_input.a.x, -2289i)).x, any(!arg_1.d.xy)), firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.b, 1i, -1i, u_input.c.x) << (vec4<u32>(15127u, arg_0.a, arg_1.a, 61341u) % vec4<u32>(32u))), -_wgslsmith_clamp_i32(-4420i, u_input.b, arg_1.c.x))), !vec4<bool>(!arg_2.x, arg_0.b.x, !arg_1.b.x, true));
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(global0.x - arg_3), 562f, global0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * arg_3)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-963f, global0.x)))), 686f)), !(!arg_1.d.yyz)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 158f) + _wgslsmith_f_op_f32(floor(1431f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1132f, arg_3, false))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + arg_3))) - 257f)) * _wgslsmith_f_op_f32(-global0.x));
    var_2 = -637f;
    return var_0.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    global1 = array<Struct_1, 19>();
    var var_0 = ~func_4(Struct_1(50704u, vec4<bool>(arg_0.d.x, arg_1.b.x && false, any(arg_1.d.yz), true), firstTrailingBit(_wgslsmith_mult_vec2_i32(arg_0.c, vec2<i32>(1i, arg_0.c.x))), select(func_3(arg_1.b.wx, false, vec3<bool>(arg_0.d.x, arg_1.b.x, true), arg_0.c), !arg_1.b, !arg_0.b)), Struct_1(~(arg_0.a & arg_1.a), !(!vec4<bool>(true, false, arg_0.b.x, arg_1.b.x)), arg_0.c, select(vec4<bool>(arg_1.b.x, false, true, false), !vec4<bool>(arg_0.b.x, arg_1.b.x, arg_0.d.x, false), arg_0.b.x)), select(arg_1.b.zz, select(func_3(vec2<bool>(arg_1.d.x, false), true, arg_1.d.xzz, arg_1.c).yy, !vec2<bool>(arg_0.d.x, arg_1.d.x), select(arg_0.b.zw, arg_0.d.zx, false)), true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1640f)))))));
    let var_1 = vec4<bool>(false, true, arg_1.b.x, func_3(vec2<bool>(arg_1.b.x, -200f > _wgslsmith_div_f32(global0.x, global0.x)), arg_0.d.x & arg_1.b.x, vec3<bool>(true, all(!arg_1.d.yxx), (-966i <= u_input.c.x) || all(vec3<bool>(arg_1.b.x, true, true))), _wgslsmith_div_vec2_i32(arg_1.c, reverseBits(-arg_1.c))).x);
    var var_2 = Struct_1(4294967295u, vec4<bool>(_wgslsmith_f_op_f32(649f + _wgslsmith_f_op_f32(floor(global0.x))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, global0.x)), var_1.x, true, !(~18545u <= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.a, 1u, arg_0.a), vec4<u32>(4294967295u, 77766u, 4288u, arg_1.a)))), arg_0.c >> (vec2<u32>(15028u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_0.a, arg_0.a), 23131u)) % vec2<u32>(32u)), !select(select(var_1, var_1, arg_0.b.x), !(!arg_1.b), true | !var_1.x));
    var var_3 = var_1.x;
    return ~(~arg_1.a) | _wgslsmith_sub_u32(countOneBits(4294967295u), _wgslsmith_sub_u32(arg_0.a, 4294967295u));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    global1 = array<Struct_1, 19>();
    let var_1 = select(_wgslsmith_add_vec4_u32(vec4<u32>(~(~30376u), func_2(Struct_1(14233u, vec4<bool>(true, true, false, false), arg_0.zz, vec4<bool>(false, false, false, true)), Struct_1(1783u, vec4<bool>(false, false, true, true), vec2<i32>(0i, u_input.c.x), vec4<bool>(true, true, false, false)), vec3<f32>(global0.x, -2523f, global0.x)) | abs(13219u), ~(~45938u), abs(1u)), select(~(~vec4<u32>(4294967295u, 11790u, 4422u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u), true | any(vec4<bool>(true, false, false, true)))), firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), true);
    var var_2 = true;
    let var_3 = !all(vec2<bool>(true, true));
    return global1[_wgslsmith_index_u32(1u, 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<i32>(u_input.b, abs(53105i), u_input.c.x));
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(countOneBits(func_1(vec3<i32>(u_input.a.x, -1i, var_0.c.x)).a), ~var_0.a), 1u, abs(var_0.a));
    var var_2 = -vec2<i32>(u_input.c.x, _wgslsmith_add_i32(-38301i, -10083i) << (~_wgslsmith_mult_u32(40808u, var_0.a) % 32u));
    global1 = array<Struct_1, 19>();
    var var_3 = func_1(u_input.a.yxz);
    let var_4 = Struct_1(var_3.a, var_3.d, vec2<i32>(var_3.c.x, _wgslsmith_mult_i32(min(var_2.x, func_1(vec3<i32>(-1i, u_input.b, 2147483647i)).c.x), var_3.c.x << (_wgslsmith_div_u32(var_3.a, var_3.a) % 32u))), !vec4<bool>(any(select(vec3<bool>(false, var_3.b.x, var_3.b.x), vec3<bool>(var_0.b.x, var_0.b.x, var_3.d.x), var_3.d.x)), true, select(var_3.b.x, var_0.b.x, var_3.a == 9563u), var_0.b.x));
    var_0 = Struct_1(max(_wgslsmith_mult_u32(var_4.a, var_0.a), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 33862u) << (vec3<u32>(var_0.a, var_4.a, 23293u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a, var_0.a, var_0.a), vec3<u32>(55507u, 34141u, var_3.a)))) << (var_0.a % 32u), func_1(_wgslsmith_mod_vec3_i32(firstLeadingBit(~u_input.a.xyz), ~(vec3<i32>(23133i, var_2.x, 1i) | vec3<i32>(var_4.c.x, var_2.x, var_3.c.x)))).b, firstLeadingBit(_wgslsmith_sub_vec2_i32(var_4.c, max(vec2<i32>(4142i, var_0.c.x), max(var_0.c, vec2<i32>(-25236i, 14287i))))), !(!select(var_3.b, select(vec4<bool>(true, var_0.d.x, var_4.d.x, true), vec4<bool>(var_4.b.x, false, var_4.b.x, false), vec4<bool>(var_4.b.x, var_4.d.x, true, var_0.d.x)), any(vec3<bool>(var_0.d.x, true, var_0.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(var_3.c.x, var_2.x), vec2<i32>(u_input.b, -2147483647i), true), abs(var_0.c)), -(~vec2<i32>(-2147483647i, -8685i))), vec2<i32>(-var_3.c.x >> (~1u % 32u), 0i)), ~var_3.c.x >> (_wgslsmith_clamp_u32(firstTrailingBit(func_4(Struct_1(var_0.a, vec4<bool>(false, var_3.d.x, false, var_3.b.x), vec2<i32>(var_0.c.x, var_3.c.x), vec4<bool>(var_3.b.x, var_3.d.x, var_3.b.x, false)), Struct_1(var_4.a, vec4<bool>(false, var_3.b.x, var_3.d.x, var_0.d.x), u_input.c, var_3.d), vec2<bool>(false, true), -1255f)), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a, 4294967295u), vec2<u32>(0u, 0u))), 1u) % 32u));
}

