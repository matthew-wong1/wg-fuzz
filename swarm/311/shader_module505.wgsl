struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(0u, 1u, 1u, 1u, 69717u, 32708u, 4294967295u, 1u, 70201u, 1u, 5834u, 37903u, 0u, 9358u, 54063u, 4294967295u, 0u, 22000u, 33611u, 0u, 46300u, 4294967295u, 3931u, 17539u);

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(Struct_1(vec2<i32>(-19412i, 0i), vec3<u32>(14476u, 1u, 1u), vec3<u32>(30231u, 0u, 26478u)), 108f), Struct_4(Struct_1(vec2<i32>(0i, -7997i), vec3<u32>(3612u, 13592u, 8441u), vec3<u32>(4225u, 1u, 54799u)), 1088f));

var<private> global3: array<Struct_1, 10>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = vec3<bool>(global1.x, global1.x, true);
    global2 = array<Struct_4, 2>();
    let var_1 = true;
    let var_2 = arg_0;
    var var_3 = Struct_2(~(~firstTrailingBit(abs(global0[_wgslsmith_index_u32(u_input.a, 24u)]))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-160f - 352f)))))));
}

fn func_3() -> f32 {
    var var_0 = vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -11244i, u_input.b.x)) >> (global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)] | global0[_wgslsmith_index_u32(u_input.e.x, 24u)], global0[_wgslsmith_index_u32(~1u, 24u)]), 24u)] % 32u), u_input.b.x, u_input.b.x) | vec3<i32>(u_input.b.x, -max(abs(u_input.b.x), 8644i), ((u_input.b.x ^ -2147483647i) << (1u % 32u)) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(34430u, 24u)], u_input.e.x), u_input.c), select(0u, global0[_wgslsmith_index_u32(u_input.a, 24u)], global1.x)) % 32u));
    var_0 = vec3<i32>(_wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 1i, u_input.b.x), u_input.b), -1i), -17758i, 7616i);
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    var var_1 = Struct_3(~min(_wgslsmith_clamp_u32(60416u, _wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(7512u, 24u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), 24u)]), 0u), Struct_1(u_input.b.zy, firstLeadingBit(~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(55186u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)])), u_input.d.xwy | select(vec3<u32>(0u, 9517u, u_input.e.x), u_input.d.zyw, all(vec3<bool>(global1.x, global1.x, global1.x)))));
    return _wgslsmith_f_op_f32(min(1864f, 1568f));
}

fn func_1() -> vec2<bool> {
    global2 = array<Struct_4, 2>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(651f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-2147483647i))), 1136f, _wgslsmith_f_op_f32(func_3())));
    global3 = array<Struct_1, 10>();
    var var_1 = -818f;
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d.wzw, ~u_input.d.wxx) | ~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(7534u, 24u)], 24u)], 10u)];
    return !vec2<bool>(var_0.x < var_0.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 10>();
    let var_0 = vec2<bool>(select(true, global1.x, true), (_wgslsmith_mod_u32(u_input.e.x, ~4294967295u) <= reverseBits(~0u)) | false);
    let var_1 = Struct_2(~(~_wgslsmith_sub_u32(~22596u, global0[_wgslsmith_index_u32(u_input.c.x, 24u)])));
    global2 = array<Struct_4, 2>();
    global3 = array<Struct_1, 10>();
    let var_2 = !(!select(select(!vec2<bool>(true, var_0.x), func_1(), vec2<bool>(global1.x, global1.x)), select(vec2<bool>(false, global1.x), var_0, !vec2<bool>(global1.x, var_0.x)), var_0));
    var var_3 = var_0;
    var var_4 = vec4<i32>(u_input.b.x, -reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, u_input.b.x), -vec3<i32>(1i, u_input.b.x, 57854i))), -585i, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -1135f, vec4<i32>(~(~var_4.x), reverseBits(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.x, var_4.x, 2147483647i, -1i) & vec4<i32>(-68618i, u_input.b.x, var_4.x, u_input.b.x), -vec4<i32>(11627i, var_4.x, -2147483647i, var_4.x)) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(56641u, 4294967295u, var_1.a), vec3<u32>(48417u, global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)]) & u_input.d.zyz) % 32u), -9579i));
}

