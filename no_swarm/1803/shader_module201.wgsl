struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14>;

var<private> global1: array<Struct_2, 2>;

var<private> global2: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(3372u, 1u, 0u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>) -> u32 {
    var var_0 = vec4<bool>(all(vec4<bool>(select(any(vec2<bool>(false, false)), select(false, true, true), true), any(vec4<bool>(true, true, true, true)), true, true)), all(vec2<bool>(select(true, true, true), false)), true, !((true | all(vec4<bool>(false, true, true, false))) | !select(true, false, true)));
    return reverseBits(arg_1.x);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_4(Struct_3(Struct_1(true), ~(select(4294967295u, 0u, false) << (1u % 32u))));
    let var_1 = ~vec4<u32>(_wgslsmith_mult_u32(4294967295u >> (func_3(vec3<i32>(1i, u_input.b, u_input.d.x), vec2<u32>(29600u, var_0.a.b)) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 61001u), ~vec2<u32>(69774u, 13377u))), 0u, var_0.a.b & ~var_0.a.b, ~var_0.a.b);
    let var_2 = ~(~(~var_0.a.b));
    var var_3 = max(_wgslsmith_mod_u32(0u, _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_2, var_0.a.b), 1u), func_3(vec3<i32>(u_input.b, -1i, u_input.a.x), var_1.yx))), 49531u);
    var_3 = _wgslsmith_div_u32(var_0.a.b >> (firstLeadingBit(var_2 | var_1.x) % 32u), var_0.a.b);
    return Struct_1(false);
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = vec2<u32>(_wgslsmith_clamp_u32(0u, 0u, _wgslsmith_mod_u32(4021u, 1u)), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), ~vec4<u32>(20330u, 26594u, 28588u, 67386u)), ~95022u));
    let var_1 = func_2();
    var var_2 = Struct_4(Struct_3(func_2(), ~var_0.x));
    return Struct_2(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~u_input.c.zy);
    var var_1 = 917f;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(122f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1925f), 285f)))));
    global0 = array<vec2<bool>, 14>();
    let var_2 = var_0;
    let var_3 = ~68271u << (countOneBits(firstTrailingBit(abs(_wgslsmith_add_u32(42793u, 40885u)))) % 32u);
    let var_4 = -vec3<i32>(select(abs(1i), -2147483647i, var_2.a.a), _wgslsmith_add_i32(u_input.c.x, u_input.c.x), u_input.b);
    global2 = array<vec3<u32>, 1>();
    global0 = array<vec2<bool>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1019f, 1943f, -1856f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-215f, 1135f, 1015f) - vec3<f32>(1856f, 824f, -141f)), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1118f, 1087f, -1620f) + vec3<f32>(808f, -1507f, 565f))), var_0.a.a))), vec3<i32>(i32(-1i) * -1i, -(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(15739i, -33144i, 12779i, 2147483647i)) ^ _wgslsmith_clamp_i32(-7158i, u_input.c.x, u_input.d.x)), -2147483647i), _wgslsmith_clamp_vec3_i32(min(-min(var_4, vec3<i32>(var_4.x, 0i, 1i)), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(18015i, var_4.x)), max(2147483647i, -47813i), -1i)), vec3<i32>(reverseBits(firstTrailingBit(u_input.b)), -u_input.c.x, _wgslsmith_mod_i32(0i, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, var_4.x, var_4.x) >> (global2[_wgslsmith_index_u32(var_3, 1u)] % vec3<u32>(32u)), var_4) >> (~(~vec3<u32>(var_3, var_3, 57414u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-271f))))));
}

