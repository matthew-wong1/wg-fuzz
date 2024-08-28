struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(56604u, 0u, 0u, 43230u), vec4<u32>(25341u, 1u, 1u, 1u), vec4<u32>(11234u, 4294967295u, 1u, 5870u), vec4<u32>(1u, 0u, 0u, 4294967295u), vec4<u32>(14297u, 4294967295u, 1u, 53855u), vec4<u32>(2811u, 30851u, 1u, 22045u), vec4<u32>(0u, 11852u, 61501u, 42431u), vec4<u32>(15842u, 13833u, 62873u, 4294967295u), vec4<u32>(1u, 4294967295u, 54029u, 1u), vec4<u32>(4294967295u, 0u, 3084u, 1u), vec4<u32>(1u, 1u, 36728u, 0u), vec4<u32>(0u, 17850u, 4294967295u, 71292u));

var<private> global2: vec3<i32> = vec3<i32>(11857i, i32(-2147483648), 0i);

var<private> global3: vec4<bool>;

var<private> global4: u32 = 17182u;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(global3.xwx, ~(abs(abs(vec2<u32>(4294967295u, 60525u))) ^ (select(u_input.d.yx, u_input.d.xy, vec2<bool>(global3.x, global3.x)) >> (vec2<u32>(24233u, u_input.e) % vec2<u32>(32u)))), global0[_wgslsmith_index_u32(~abs(u_input.d.x), 9u)]);
    let var_1 = !(!select(vec3<bool>(true, false, var_0.b.x < 32811u), !global3.zxx, var_0.a.x));
    return ~_wgslsmith_div_u32(~reverseBits(var_0.b.x), var_0.b.x) >> (u_input.d.x % 32u);
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(91003u, func_3(), 1u, u_input.c), vec4<u32>(countOneBits(~u_input.c), abs(_wgslsmith_clamp_u32(u_input.d.x, u_input.e, 45496u)), 89068u, 1u));
    global1 = array<vec4<u32>, 12>();
    var var_1 = vec2<i32>(2147483647i, reverseBits(u_input.b));
    let var_2 = Struct_1(select(!vec3<bool>(all(vec2<bool>(arg_0.x, true)), all(vec3<bool>(false, false, arg_0.x)), true), global3.zww, global3.wzx), vec2<u32>(u_input.e, 0u), 1468f);
    global3 = select(!select(select(!vec4<bool>(global3.x, true, arg_0.x, global3.x), vec4<bool>(false, var_2.a.x, false, arg_0.x), select(global3.x, false, true)), vec4<bool>(global3.x, arg_0.x, arg_0.x, !arg_0.x), vec4<bool>(any(vec3<bool>(true, false, global3.x)), global3.x != true, false, any(global3.zyx))), !vec4<bool>(false, global3.x, reverseBits(36295u) < ~u_input.c, var_2.a.x), var_2.a.x);
    return var_2;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global0 = array<f32, 9>();
    let var_0 = func_2(select(vec2<bool>(global3.x | true, true), !(!vec2<bool>(false, global3.x)), global3.zz));
    var var_1 = u_input.c;
    let var_2 = global0[_wgslsmith_index_u32(0u, 9u)];
    let var_3 = var_0;
    return var_3;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(select(!global3.zwz, global3.wwz, !vec3<bool>(false, true, !arg_1.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(~arg_1.b.x, arg_1.b.x), select(vec2<u32>(arg_1.b.x, 56505u), u_input.d.zy, false) >> (~vec2<u32>(66065u, 0u) % vec2<u32>(32u))) ^ _wgslsmith_div_vec2_u32(vec2<u32>(20559u, abs(u_input.c)), ~(~vec2<u32>(u_input.d.x, 4294967295u))), -328f);
    let var_1 = _wgslsmith_mult_u32(u_input.e, ~(u_input.d.x | 4294967295u)) >> (arg_1.b.x % 32u);
    var var_2 = ~_wgslsmith_add_vec4_u32(abs(~vec4<u32>(1u, 23652u, 4294967295u, var_1)), global1[_wgslsmith_index_u32(func_3(), 12u)]);
    let var_3 = countOneBits(global2.zy);
    global0 = array<f32, 9>();
    return select(var_3.x, -2147483647i, global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = u_input.d.x;
    var var_0 = abs(vec2<i32>(-37937i, 1i));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1324f)) * global0[_wgslsmith_index_u32(u_input.e, 9u)]) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~u_input.d.x, 9u)], _wgslsmith_f_op_f32(-362f * global0[_wgslsmith_index_u32(u_input.e, 9u)]))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -483f) - _wgslsmith_f_op_f32(146f * global0[_wgslsmith_index_u32(0u, 9u)])))), 1208f, 1000f);
    let var_2 = global2.x;
    global4 = ~reverseBits(u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(0u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.e, 19411u), vec3<u32>(u_input.c, 1u, u_input.c))), u_input.e), select(u_input.a, abs(vec4<i32>(2147483647i, -2147483647i, -2147483647i, u_input.a.x)), true) | vec4<i32>(abs(~(-1298i)), var_0.x, -18565i, func_4(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 9u)], -862f, -468f, var_1.x), func_1(global2.xz))));
}

