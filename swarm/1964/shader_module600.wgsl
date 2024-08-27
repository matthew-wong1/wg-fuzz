struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

var<private> global2: array<u32, 29>;

var<private> global3: Struct_4 = Struct_4(vec3<i32>(-23844i, 45818i, -1i), Struct_3(false, true, false, Struct_1(false, vec3<f32>(-847f, -1284f, -1000f), vec4<i32>(7523i, -27467i, 178i, 1i), -802f, 1u), vec4<bool>(true, false, false, false)), 1u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: i32) -> Struct_2 {
    return Struct_2(-137f);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = reverseBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(23081u, abs(4294967295u), global2[_wgslsmith_index_u32(~global3.b.d.e, 29u)], _wgslsmith_sub_u32(global3.c, 0u)), ~min(vec4<u32>(1u, 4294967295u, arg_2.e, global3.b.d.e), select(vec4<u32>(arg_2.e, 18665u, 73077u, global2[_wgslsmith_index_u32(28874u, 29u)]), vec4<u32>(2689u, arg_2.e, global2[_wgslsmith_index_u32(global3.b.d.e, 29u)], global3.c), global3.b.e.x))));
    return (vec3<i32>(-1i) * -u_input.a.www) | global3.b.d.c.yyw;
}

fn func_1() -> f32 {
    var var_0 = func_2(4294967295u, global3.b.d, ~vec3<u32>(max(_wgslsmith_sub_u32(1394u, global2[_wgslsmith_index_u32(global3.b.d.e, 29u)]), max(1u, global3.c)), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(84205u, 29u)], 29u)] >> (~global3.c % 32u), _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(1u, 89872u))), -1i);
    global3 = Struct_4(~max(func_3(func_2(3745u, Struct_1(global3.b.c, global3.b.d.b, vec4<i32>(-1i, 0i, -2147483647i, u_input.a.x), var_0.a, global2[_wgslsmith_index_u32(global3.b.d.e, 29u)]), vec3<u32>(global2[_wgslsmith_index_u32(global3.c, 29u)], 92854u, 1u), 1i), !global3.b.e.zxw, global3.b.d), select(vec3<i32>(u_input.a.x, 63503i, global3.a.x), -u_input.a.yxy, !global3.b.c)), global3.b, global3.c);
    var_0 = Struct_2(var_0.a);
    var_0 = func_2(global3.b.d.e, global3.b.d, ~(vec3<u32>(abs(37922u), global3.c, global3.b.d.e) & ((vec3<u32>(0u, 31782u, global2[_wgslsmith_index_u32(global3.b.d.e, 29u)]) >> (vec3<u32>(4294967295u, 4294967295u, global3.c) % vec3<u32>(32u))) >> (vec3<u32>(8203u, 8875u, 1u) % vec3<u32>(32u)))), u_input.a.x);
    let var_1 = select(vec2<bool>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 65251i, 0i), global3.a) >= ~_wgslsmith_dot_vec3_i32(global3.a, vec3<i32>(25658i, 55066i, u_input.a.x)), true), !(!global3.b.e.zw), true);
    return 1003f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global3.b.d.b.x, _wgslsmith_f_op_f32(f32(-1f) * -471f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), max(~(min(vec3<u32>(68954u, 0u, global3.b.d.e), vec3<u32>(global3.c, global3.b.d.e, 35083u)) | ~vec3<u32>(1u, global3.b.d.e, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 29u)])), vec3<u32>(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~global3.b.d.e, 29u)], 29u)], 47213u, global2[_wgslsmith_index_u32(~global3.b.d.e, 29u)])), u_input.a.x);
}

