struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(1i, 0i), vec2<i32>(1i, -13291i), vec2<i32>(18293i, -47161i), vec2<i32>(31857i, 2147483647i), vec2<i32>(0i, 16485i), vec2<i32>(1i, 0i), vec2<i32>(-11480i, i32(-2147483648)), vec2<i32>(1i, -920i), vec2<i32>(38989i, 86316i), vec2<i32>(1i, -9600i), vec2<i32>(-39179i, 2147483647i), vec2<i32>(24682i, 2147483647i), vec2<i32>(17464i, -10746i), vec2<i32>(1i, 39871i), vec2<i32>(-1i, -9443i), vec2<i32>(-1i, 59636i), vec2<i32>(73503i, 1i), vec2<i32>(47791i, 0i), vec2<i32>(-16367i, -1i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: Struct_5) -> vec2<i32> {
    var var_0 = abs(arg_1.x);
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    let var_1 = u_input.a;
    global0 = array<i32, 11>();
    return u_input.a.yz;
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec4<i32>) -> vec2<i32> {
    return -arg_3.wx;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> u32 {
    return abs(_wgslsmith_mult_u32(~arg_1.b.c.x, arg_1.b.c.x));
}

fn func_1() -> f32 {
    var var_0 = Struct_1(1i == ~_wgslsmith_dot_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)]), func_2(false, vec3<u32>(0u, 15673u, 4294967295u), vec2<bool>(true, true), Struct_5(vec3<f32>(134f, -724f, -409f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-224f, 342f) - vec2<f32>(1867f, 1000f))))), ~abs(vec4<u32>(25563u, ~34198u, ~0u, abs(4294967295u))));
    var var_1 = _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(0u, 11u)], 28355i);
    let var_2 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(-var_0.b.x))), vec4<u32>(~var_0.c.x, ~_wgslsmith_dot_vec2_u32(var_0.c.wz, _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.c.x, 4294967295u), var_0.c.yy)), var_0.c.x, func_4(select(vec2<i32>(62867i, -51977i), func_3(false, u_input.a, Struct_3(vec2<bool>(var_0.a, var_0.a), 0i, Struct_2(vec3<bool>(var_0.a, true, var_0.a), Struct_1(true, vec2<f32>(var_0.b.x, var_0.b.x), vec4<u32>(59449u, 4294967295u, var_0.c.x, var_0.c.x))), Struct_1(true, vec2<f32>(-1558f, -725f), vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x))), vec4<i32>(31660i, -38120i, global0[_wgslsmith_index_u32(8484u, 11u)], global0[_wgslsmith_index_u32(var_0.c.x, 11u)])), var_0.a), Struct_2(vec3<bool>(var_0.a, true, var_0.a), Struct_1(var_0.a, var_0.b, var_0.c)), ~(~(-2147483647i)), u_input.a.x)));
    var var_3 = Struct_4(firstLeadingBit(func_3(var_2.a, u_input.a, Struct_3(vec2<bool>(false, var_0.a), 2147483647i, Struct_2(vec3<bool>(var_0.a, false, var_0.a), var_2), Struct_1(var_2.a, vec2<f32>(-248f, -449f), vec4<u32>(4294967295u, 1u, var_2.c.x, var_2.c.x))), select(~vec4<i32>(global0[_wgslsmith_index_u32(var_0.c.x, 11u)], global0[_wgslsmith_index_u32(var_2.c.x, 11u)], u_input.a.x, 0i), -vec4<i32>(2394i, u_input.a.x, -18611i, -1i), select(vec4<bool>(var_0.a, var_0.a, var_2.a, true), vec4<bool>(false, false, var_0.a, var_2.a), vec4<bool>(var_2.a, true, var_2.a, true))))));
    global1 = array<vec2<i32>, 19>();
    return 1004f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(-vec2<i32>(-37324i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 41852u), vec2<u32>(11481u, 1582u))), 11u)]));
    let var_1 = 24834u;
    var var_2 = Struct_2(vec3<bool>((-230f < _wgslsmith_f_op_f32(func_1())) & false, true, select(-1i > _wgslsmith_add_i32(u_input.a.x, -2147483647i), true, false)), Struct_1(true, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))), vec4<u32>(68601u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 34030u), vec2<u32>(1u, 17313u)), var_1), var_1, var_1)));
    let var_3 = var_2.a;
    global1 = array<vec2<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(countOneBits(vec2<u32>(var_1, var_1))), vec2<u32>(abs(var_2.b.c.x), 70296u)), (min(39353u, var_2.b.c.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(80644u, var_1, 4294967295u), vec3<u32>(var_1, 37484u, var_2.b.c.x)) % 32u)) << (_wgslsmith_add_u32(var_1, 4294967295u) % 32u)), -select(vec2<i32>(_wgslsmith_add_i32(21451i, global0[_wgslsmith_index_u32(var_1, 11u)]), 1i), u_input.a.xx, select(all(vec4<bool>(var_2.b.a, false, var_3.x, var_2.b.a)), false, var_3.x || var_3.x)), 20669i, ((_wgslsmith_mult_u32(var_1, var_2.b.c.x) & var_1) ^ var_2.b.c.x) << (select(0u, ~var_2.b.c.x >> (0u % 32u), all(vec4<bool>(true, false, var_2.a.x, var_3.x))) % 32u));
}

