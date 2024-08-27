struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 3>;

var<private> global2: array<u32, 3>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3) -> bool {
    let var_0 = ~(~(~vec3<u32>(~14513u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34686u, 3u)], 3u)], 3u)]), 3u)], 3u)], _wgslsmith_add_u32(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21344u, 3u)], 3u)]))));
    let var_1 = -(~vec3<i32>(firstLeadingBit(0i), global0.c & global0.c, -1i) << ((_wgslsmith_mod_vec3_u32(var_0, _wgslsmith_add_vec3_u32(var_0, u_input.a.xwy)) | _wgslsmith_add_vec3_u32(var_0, vec3<u32>(global2[_wgslsmith_index_u32(1u, 3u)], var_0.x, u_input.a.x))) % vec3<u32>(32u)));
    global0 = Struct_3(global0.b, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2174f - arg_1.a), global0.b)), _wgslsmith_f_op_f32(sign(global0.a))))), _wgslsmith_clamp_i32(var_1.x, -(-1979i >> (global1[_wgslsmith_index_u32(u_input.a.x, 3u)] % 32u)), _wgslsmith_div_i32(arg_0.x, select(-19713i, 1i, true))) << (0u % 32u));
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a + 141f), _wgslsmith_f_op_f32(trunc(arg_1.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-664f, 2114f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(471f * _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(f32(-1f) * -725f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -abs(vec2<i32>(global0.c, arg_0.x)), vec2<i32>(16212i >> (var_0.x % 32u), 33780i) >> (~firstLeadingBit(vec2<u32>(u_input.a.x, 21670u)) % vec2<u32>(32u))));
    let var_2 = Struct_1(-1i, ~arg_0.x, ~4294967295u, false);
    return !var_2.d;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, 1710f)), Struct_1(global0.c, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(global0.c), global0.c), vec2<i32>(i32(-1i) * -1i, global0.c & -58955i)), 16458u, !(true & any(vec4<bool>(true, false, false, false)))));
    global2 = array<u32, 3>();
    let var_1 = select(vec3<bool>(!(!all(vec2<bool>(var_0.b.d, var_0.b.d))), !func_3(~vec3<i32>(-4696i, 20152i, -1i), Struct_3(1453f, var_0.a.x, var_0.b.a)), var_0.b.d), !vec3<bool>(false, var_0.b.d, var_0.b.d), all(vec2<bool>(global2[_wgslsmith_index_u32(abs(4294967295u), 3u)] != var_0.b.c, any(select(vec2<bool>(var_0.b.d, var_0.b.d), vec2<bool>(true, var_0.b.d), false)))));
    global0 = Struct_3(_wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_div_f32(var_0.a.x, var_0.a.x))), global0.b, -(~(-var_0.b.a) ^ _wgslsmith_sub_i32(1i, ~7833i)));
    let var_2 = true;
    return var_0.b;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1024f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-130f)) - global0.a)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-383f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, global0.b)))), func_2());
    let var_1 = ~(~_wgslsmith_div_vec3_i32(max(vec3<i32>(global0.c, 36346i, -7810i), vec3<i32>(global0.c, 1i, 41383i)), max(vec3<i32>(-294i, 0i, 2147483647i), vec3<i32>(2147483647i, global0.c, 0i))) & ~(-vec3<i32>(0i, -3630i, var_0.b.a)));
    var var_2 = firstLeadingBit(1u) << (countOneBits(~min(~32442u, var_0.b.c >> (4294967295u % 32u))) % 32u);
    var var_3 = Struct_2(vec2<f32>(-773f, global0.b), var_0.b);
    let var_4 = Struct_2(var_0.a, var_0.b);
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(751f)), 284f, !var_3.b.d))) + -836f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -824f))), var_3.a.x)), -var_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = true;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, reverseBits(u_input.a.x << (17927u % 32u))), 3u)];
    global2 = array<u32, 3>();
    let var_2 = Struct_3(-640f, global0.a, _wgslsmith_clamp_i32(-8259i, global0.c, global0.c) & global0.c);
    var var_3 = 54054i;
    let var_4 = var_2.c;
    global1 = array<u32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(global0.b)), ~u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.a + var_2.a), _wgslsmith_f_op_f32(-1202f + 735f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1702f, global0.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1510f, -567f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-291f, global0.a))))), abs(abs(select(vec2<i32>(-224i, global0.c), vec2<i32>(4463i, global0.c), vec2<bool>(false, false)))) << (u_input.a.zx % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, -291f, var_2.b))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1880f, -1000f, var_2.b)))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b + global0.a) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-748f - global0.a), _wgslsmith_div_f32(1626f, global0.b)))));
}

