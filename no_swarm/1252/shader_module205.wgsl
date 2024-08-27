struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: f32;

var<private> global2: array<bool, 12> = array<bool, 12>(true, false, false, false, true, false, true, false, true, false, true, true);

var<private> global3: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> vec2<bool> {
    global0 = array<f32, 14>();
    global2 = array<bool, 12>();
    return vec2<bool>(false, global3.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    global2 = array<bool, 12>();
    global0 = array<f32, 14>();
    let var_0 = 604f;
    var var_1 = vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
    let var_2 = Struct_2(arg_2, global2[_wgslsmith_index_u32(u_input.e.x >> (reverseBits(29441u) % 32u), 12u)], !(!vec2<bool>(global3.x & global2[_wgslsmith_index_u32(u_input.d.x, 12u)], any(vec4<bool>(true, true, global3.x, true)))));
    return select(4294967295u, arg_3.x & 1u, false);
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> i32 {
    let var_0 = Struct_3(vec2<i32>((-1i << (u_input.d.x % 32u)) ^ u_input.a.x, u_input.a.x) ^ -abs(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(-2147483647i, -1i))), _wgslsmith_add_i32(select(u_input.a.x, ~18571i, any(vec2<bool>(false, global2[_wgslsmith_index_u32(42875u, 12u)])) == true), u_input.a.x), _wgslsmith_div_u32(~1u, 1u), max(reverseBits(0i), abs(~u_input.a.x)));
    global0 = array<f32, 14>();
    let var_1 = Struct_2(Struct_1(~(-reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), abs(vec4<i32>(~u_input.a.x, -var_0.b, select(u_input.a.x, u_input.a.x, global3.x), var_0.a.x >> (u_input.b % 32u)))), any(vec3<bool>(true, arg_1.x > global0[_wgslsmith_index_u32(u_input.b, 14u)], func_1(-127f, var_0).x)) || false, !(!select(func_1(global0[_wgslsmith_index_u32(60191u, 14u)], var_0), vec2<bool>(global3.x, global3.x), global2[_wgslsmith_index_u32(1u & var_0.c, 12u)])));
    var var_2 = var_0;
    let var_3 = firstLeadingBit((~(-var_1.a.b.x) | (-var_1.a.a.x | ~u_input.a.x)) << (var_0.c % 32u));
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = select(!select(!(!vec2<bool>(global3.x, global2[_wgslsmith_index_u32(u_input.b, 12u)])), select(vec2<bool>(true, true), !vec2<bool>(global3.x, true), !vec2<bool>(true, global3.x)), false), vec2<bool>(global2[_wgslsmith_index_u32(~89481u, 12u)], (false | global3.x) || global2[_wgslsmith_index_u32(u_input.e.x | _wgslsmith_clamp_u32(u_input.d.x, u_input.c, u_input.b), 12u)]), !vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, global2[_wgslsmith_index_u32(62716u, 12u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.e.x, 12u)]))), global2[_wgslsmith_index_u32(~u_input.d.x, 12u)]));
    var var_0 = vec3<bool>(all(select(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(0u, u_input.c, 1u, 61477u)), 12u)], global2[_wgslsmith_index_u32(1u, 12u)]), !func_1(global0[_wgslsmith_index_u32(5087u, 14u)], Struct_3(vec2<i32>(-14323i, u_input.a.x), u_input.a.x, 23479u, u_input.a.x)), !global3.x)), !global2[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 12u)], false);
    let var_1 = Struct_3(u_input.a.yy, select(-2147483647i, u_input.a.x, true), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, func_2(vec4<f32>(-1495f, global0[_wgslsmith_index_u32(u_input.c, 14u)], global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(u_input.e.x, 14u)]), vec4<f32>(2478f, -1000f, -1399f, global0[_wgslsmith_index_u32(23850u, 14u)]), Struct_1(vec4<i32>(15957i, u_input.a.x, -2147483647i, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 51849i)), ~u_input.e), u_input.e.x, reverseBits(abs(u_input.e.x))), ~firstTrailingBit(~u_input.d)), _wgslsmith_sub_i32(-32366i ^ func_3(global3.x, vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(59654u, 14u)])), 1i << ((89782u | u_input.e.x) % 32u)) | _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(25397i, 2147483647i, u_input.a.x, -1i), vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x) & vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x)), min(-23329i, 38205i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, 46098u), u_input.d.yw >> (vec2<u32>(var_1.c, u_input.b) % vec2<u32>(32u))), 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(u_input.c), 14u)]))))));
    global0 = array<f32, 14>();
    let var_3 = vec3<i32>(-_wgslsmith_clamp_i32(1i, var_1.d, select(61645i, 0i, global3.x) >> (~41889u % 32u)), ~(-(i32(-1i) * -var_1.b)), -u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer((u_input.c ^ ~min(u_input.c, 4294967295u)) >> (firstLeadingBit(~_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(var_1.c, 4294967295u))) % 32u), vec4<f32>(-682f, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.d.zy, vec2<u32>(var_1.c, var_1.c)), 14u)], var_2.x)), _wgslsmith_f_op_f32(abs(1563f)), -1000f), 0i, 0u, ~(vec3<u32>(~var_1.c, abs(u_input.b), var_1.c ^ 4294967295u) & u_input.d.wzy));
}

