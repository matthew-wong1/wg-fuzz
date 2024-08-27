struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 28>;

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, -41948i, 0i);

var<private> global3: i32;

var<private> global4: array<vec3<f32>, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: f32) -> u32 {
    global4 = array<vec3<f32>, 21>();
    var var_0 = global1[_wgslsmith_index_u32(select(reverseBits(~0u) << (global0.x % 32u), arg_0.a.x, false), 28u)];
    var_0 = Struct_1(_wgslsmith_div_vec2_u32(~(~(~var_0.a)), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.d, 40769u), vec2<u32>(u_input.d, arg_0.a.x) << (arg_0.a % vec2<u32>(32u))) & countOneBits(global0.zx)), arg_1.x);
    let var_1 = _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(-689f - arg_0.b));
    let var_2 = Struct_1(vec2<u32>(var_0.a.x, countOneBits(arg_0.a.x)), _wgslsmith_f_op_f32(step(var_1, 959f)));
    return abs(~15625u << (u_input.c % 32u));
}

fn func_2() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(global0.x, 28u)];
    return (_wgslsmith_mult_u32(_wgslsmith_add_u32(func_3(Struct_1(vec2<u32>(var_0.a.x, 67727u), -342f), vec3<f32>(var_0.b, 957f, -2032f), global0.x, var_0.b), 38525u), var_0.a.x) >> (~(~firstLeadingBit(46872u)) % 32u)) & u_input.d;
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    global4 = array<vec3<f32>, 21>();
    global4 = array<vec3<f32>, 21>();
    global4 = array<vec3<f32>, 21>();
    var var_0 = Struct_1(vec2<u32>(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global0.x, 4294967295u, 25058u) | abs(vec4<u32>(1u, 654u, 27118u, global0.x)), vec4<u32>(u_input.d, global0.x, ~global0.x, ~1u))), _wgslsmith_f_op_f32(f32(-1f) * -736f));
    var var_1 = 2147483647i;
    return min(max(func_2(), 0u) | ~u_input.c, ~var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    var var_1 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, _wgslsmith_mod_u32(u_input.d, 37611u)), _wgslsmith_div_vec2_u32(global0.xy, global0.zz)) | ~global0.xx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1000f)), 665f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(808f, -521f)))));
    var var_2 = reverseBits(~vec3<u32>(1u, _wgslsmith_mult_u32(firstLeadingBit(4294967295u), func_1(vec4<bool>(false, true, false, true))), u_input.c));
    global1 = array<Struct_1, 28>();
    var var_3 = ~86678u;
    var_2 = (firstTrailingBit(~firstTrailingBit(vec3<u32>(34754u, var_2.x, u_input.c))) ^ (_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, global0.x, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, var_2.x, u_input.c), vec3<u32>(0u, 0u, 4294967295u))) >> (~(~vec3<u32>(var_1.a.x, global0.x, var_1.a.x)) % vec3<u32>(32u)))) >> ((vec3<u32>(reverseBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(75105u, var_2.x, 1u, 13374u), ~vec4<u32>(var_1.a.x, 28850u, 1u, var_1.a.x)), 55453u) & ((~vec3<u32>(20011u, var_2.x, 59427u) | _wgslsmith_sub_vec3_u32(vec3<u32>(0u, global0.x, 0u), vec3<u32>(9183u, 0u, u_input.c))) << ((countOneBits(vec3<u32>(global0.x, 1u, 0u)) | (vec3<u32>(0u, 24659u, global0.x) & vec3<u32>(1u, 45537u, global0.x))) % vec3<u32>(32u)))) % vec3<u32>(32u));
    var var_4 = global1[_wgslsmith_index_u32(36651u, 28u)];
    var_1 = global1[_wgslsmith_index_u32(var_4.a.x, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(global2.x);
}

