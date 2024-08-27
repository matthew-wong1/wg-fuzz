struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_1) -> u32 {
    return arg_0.d >> (abs(_wgslsmith_div_u32(arg_0.d & arg_0.d, arg_0.d)) % 32u);
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = select(~firstTrailingBit(firstLeadingBit(vec4<u32>(arg_0.c.d, arg_0.b, arg_0.b, arg_0.b))) >> (vec4<u32>(max(10956u, _wgslsmith_mod_u32(arg_0.b, 78418u)), 1u, select(53781u, 15012u << (arg_0.c.d % 32u), arg_0.c.b.x), 17067u) % vec4<u32>(32u)), firstTrailingBit(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(43761u, arg_0.c.d, 31720u, arg_0.c.d), vec4<u32>(1u, arg_0.c.d, arg_0.b, 1u), vec4<u32>(8944u, 4294967295u, arg_0.b, 4294967295u)), vec4<u32>(35079u, 50848u, 4294967295u, 26507u), true) << (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 6957u, arg_0.b, 1u) & vec4<u32>(0u, arg_0.c.d, 4294967295u, arg_0.b), ~vec4<u32>(arg_0.b, arg_0.c.d, arg_0.c.d, arg_0.c.d)) % vec4<u32>(32u))), select(!vec4<bool>(arg_0.b > 4294967295u, arg_0.c.b.x || arg_0.c.c.x, arg_0.c.b.x & arg_0.c.c.x, true), select(!(!vec4<bool>(arg_0.c.c.x, arg_0.c.b.x, arg_0.c.b.x, true)), !vec4<bool>(true, arg_0.c.b.x, arg_0.c.c.x, false), vec4<bool>(arg_0.c.c.x, false | arg_0.c.c.x, arg_0.c.b.x, !arg_0.c.c.x)), select(!vec4<bool>(false, arg_0.c.b.x, arg_0.c.b.x, arg_0.c.c.x), vec4<bool>(all(vec2<bool>(false, true)), false | arg_0.c.b.x, u_input.c.x < 1i, arg_0.c.b.x), arg_0.c.b.x)));
    var var_1 = arg_0.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.yy)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.a.x, -450f)))));
    return ~4294967295u;
}

fn func_2() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~1u, 5u)];
    var var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(abs(min(vec4<u32>(45602u, 9096u, 18050u, 0u), vec4<u32>(0u, var_0.d, var_0.d, 35977u)) ^ max(vec4<u32>(var_0.d, var_0.d, var_0.d, 52678u), vec4<u32>(1u, 1u, var_0.d, var_0.d))), ~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 51751u, var_0.d, var_0.d), vec4<u32>(4294967295u, 1u, var_0.d, var_0.d)))), ~vec4<u32>(var_0.d, ~func_3(Struct_2(vec3<f32>(257f, 519f, 417f), 4294967295u, Struct_1(var_0.a, var_0.b, vec3<bool>(true, false, true), 1083u))), ~4294967295u, 1110u), _wgslsmith_mult_vec4_u32(~vec4<u32>(19910u, ~37166u, 5273u, func_3(Struct_2(vec3<f32>(-314f, 967f, -1109f), var_0.d, Struct_1(var_0.a, var_0.c, var_0.b, var_0.d)))), vec4<u32>(max(2443u, _wgslsmith_sub_u32(var_0.d, 15916u)), (var_0.d >> (4294967295u % 32u)) ^ 1u, var_0.d, func_3(Struct_2(vec3<f32>(-732f, 511f, 430f), 7316u, Struct_1(-44650i, vec3<bool>(false, true, var_0.c.x), var_0.b, 42906u))))));
    global0 = array<Struct_1, 5>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-974f, -1000f, -1575f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(385f, 636f, 1259f))))), var_0.d, Struct_1(abs(-u_input.d), vec3<bool>(any(vec2<bool>(var_0.c.x, true)), true, all(select(var_0.c, var_0.c, false))), !(!(!vec3<bool>(true, var_0.b.x, var_0.b.x))), abs(_wgslsmith_add_u32(24233u, _wgslsmith_div_u32(var_0.d, var_0.d)))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_2.a.x)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.a.x + var_2.a.x), -551f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a.x))))));
    return Struct_1(u_input.b, vec3<bool>(true, any(var_2.c.b) | any(var_0.c.zx), (_wgslsmith_mod_u32(4294967295u, var_2.c.d) ^ var_0.d) < var_2.c.d), select(!var_2.c.c, select(var_2.c.c, vec3<bool>(false, true, true), true), false), func_1(var_2.c));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = u_input.a | ~(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(arg_1.a, u_input.d, 2147483647i, -2147483647i)), reverseBits(u_input.a)) ^ abs(u_input.a));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2000f, -821f)))));
    let var_3 = var_0.x;
    var var_4 = _wgslsmith_mult_i32(-u_input.b, var_3);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(857f, var_2.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1182f, var_2.x) - vec2<f32>(var_2.x, 530f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(30709u, _wgslsmith_mod_u32(1u, func_1(global0[_wgslsmith_index_u32(82159u, 5u)]))), max(vec2<u32>(1u, 49455u), vec2<u32>(1u, ~1u))), u_input.a, _wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(true, true, true, true), func_2())), abs(1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(135f, -344f, 868f))))) * vec3<f32>(_wgslsmith_f_op_f32(883f * -414f), _wgslsmith_f_op_f32(-1194f - 1351f), -1190f))));
}

