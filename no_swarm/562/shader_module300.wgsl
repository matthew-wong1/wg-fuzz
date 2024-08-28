struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec2<i32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(42822u, 13018u, 10216u, 37706u, 4294967295u, 43378u);

var<private> global1: vec3<i32>;

var<private> global2: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32) -> Struct_4 {
    var var_0 = u_input.b & ~(~u_input.b);
    global0 = array<u32, 6>();
    var var_1 = vec4<u32>(~(~_wgslsmith_div_u32(~arg_0, 1u)), arg_0, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~79871u, 1u), 6u)], 6u)], ~(~25128u)) | _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.c, 6u)], 12739u, u_input.e.x), u_input.e), arg_0), 11305u << ((arg_0 << (1u % 32u)) % 32u));
    var var_2 = Struct_1(u_input.e.ywx);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-246f, 155f, -149f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1448f, -191f))))));
    return Struct_4(1i, u_input.d == var_2.a.x, global1.zy, 0u, Struct_2(vec2<u32>(_wgslsmith_add_u32(arg_0 << (var_2.a.x % 32u), var_2.a.x << (u_input.d % 32u)), 468u | global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, 25414u), 6u)])));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_4, arg_3: Struct_2) -> Struct_2 {
    global1 = vec3<i32>(reverseBits(_wgslsmith_add_i32(_wgslsmith_add_i32(arg_2.c.x, global1.x), func_2(global0[_wgslsmith_index_u32(12518u, 6u)]).a)), 2147483647i, -reverseBits(-22790i)) & select(abs(~vec3<i32>(arg_2.a, 0i, 0i)), ~abs(vec3<i32>(global1.x, arg_1, arg_1)), vec3<bool>(true, -942f > _wgslsmith_f_op_f32(round(-787f)), any(vec3<bool>(arg_2.b, true, arg_2.b))));
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1544f)) + 1572f)));
    let var_1 = arg_1 | -arg_1;
    var var_2 = !select(!select(select(vec4<bool>(arg_2.b, false, arg_2.b, false), vec4<bool>(arg_2.b, arg_2.b, true, arg_2.b), vec4<bool>(arg_2.b, arg_2.b, true, arg_2.b)), vec4<bool>(arg_2.b, false, true, true), vec4<bool>(true, true, arg_2.b, arg_2.b)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, arg_2.b, false, arg_2.b)), !vec4<bool>(any(vec3<bool>(arg_2.b, false, true)), true, !arg_2.b, true));
    let var_3 = arg_2;
    return Struct_2(~min(~(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(arg_3.a.x, 6u)]) >> (arg_3.a % vec2<u32>(32u))), ~vec2<u32>(108248u, arg_3.a.x)));
}

fn func_1() -> StorageBuffer {
    let var_0 = vec2<i32>(-3195i, global1.x);
    let var_1 = func_3(u_input.e.ww, 0i, func_2(min(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(u_input.d), 6u)], 6u)]), reverseBits(u_input.e.x))), func_2(~u_input.c).e);
    global0 = array<u32, 6>();
    let var_2 = _wgslsmith_mod_u32(~((global0[_wgslsmith_index_u32(u_input.e.x, 6u)] ^ 4294967295u) >> (_wgslsmith_mult_u32(u_input.c, u_input.c) % 32u)) | 12464u, u_input.d);
    var var_3 = Struct_3(!vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), true, !select(true, false, true), !select(true, true, false)), -(~_wgslsmith_div_i32(i32(-1i) * -1i, min(global1.x, 10031i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2349f - _wgslsmith_f_op_f32(f32(-1f) * -1114f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1548f, 204f))))), 4294967295u, Struct_1(u_input.e.www >> (~vec3<u32>(41184u, 0u, 60391u) % vec3<u32>(32u))));
    return StorageBuffer(_wgslsmith_add_vec4_u32(max(_wgslsmith_mult_vec4_u32(u_input.e, u_input.e), ~u_input.e), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2, 3974u), var_3.e.a.yx), ~1u), 1u, var_2, global0[_wgslsmith_index_u32(45385u, 6u)])), vec4<u32>(25041u, firstLeadingBit(~0u), _wgslsmith_mult_u32(4294967295u, var_3.e.a.x), var_3.d << (func_3(~vec2<u32>(12225u, u_input.d), -2147483647i, func_2(global0[_wgslsmith_index_u32(var_3.e.a.x, 6u)]), func_2(4294967295u).e).a.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

