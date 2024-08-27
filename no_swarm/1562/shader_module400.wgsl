struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

var<private> global3: array<Struct_3, 11>;

var<private> global4: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec4<u32>(18575u, 1u, 32141u, 4294967295u), vec2<u32>(12131u, 22735u), Struct_1(-756f, 0i)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    global2 = array<vec3<bool>, 9>();
    var var_0 = ~vec2<u32>(~(~(1u & u_input.b.x)), 55679u);
    global1 = Struct_1(_wgslsmith_f_op_f32(floor(global1.a)), 0i);
    var var_1 = select(global2[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec4_u32(max(vec4<u32>(var_0.x, 58224u, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, var_0.x, u_input.b.x)), ~vec4<u32>(27184u, var_0.x, var_0.x, 4294967295u))), 9u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, ~_wgslsmith_mult_u32(var_0.x, 0u), 48698u), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(var_0.x, 1u, 4294967295u)), reverseBits(~vec3<u32>(var_0.x, 1u, var_0.x)))), 9u)], vec3<bool>(false | !any(vec2<bool>(true, false)), !all(vec4<bool>(false, true, true, false)), false));
    global4 = array<Struct_3, 1>();
    return u_input.b.x;
}

fn func_2() -> u32 {
    global4 = array<Struct_3, 1>();
    var var_0 = u_input.b;
    var var_1 = !((any(vec4<bool>(true, true, false, false)) == true) && false) || any(vec3<bool>(true, true, false));
    var_0 = ~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.x, 29u, u_input.b.x), u_input.b.x), u_input.b.x), func_3());
    global0 = 0u;
    return var_0.x;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: Struct_2) -> vec3<bool> {
    global0 = ~_wgslsmith_mod_u32(arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(29616u, u_input.b.x, arg_3.a), 1u, _wgslsmith_add_u32(4294967295u, arg_0)), ~(vec3<u32>(arg_3.a, arg_0, 4294967295u) << (vec3<u32>(arg_2.x, arg_0, arg_0) % vec3<u32>(32u)))));
    global0 = ~(15129u << (_wgslsmith_mult_u32(~(1u >> (arg_0 % 32u)), func_2()) % 32u));
    let var_0 = arg_0 & max(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, arg_0, 86608u, 49976u), vec4<u32>(arg_2.x, arg_0, 20818u, arg_3.a)), reverseBits(vec4<u32>(arg_2.x, arg_0, 4294967295u, 0u))) & min(78338u, 1u), 1u);
    let var_1 = min(firstLeadingBit(vec2<i32>(abs(firstLeadingBit(u_input.d.x)), _wgslsmith_sub_i32(-u_input.d.x, u_input.a))), -vec2<i32>(abs(0i), ~_wgslsmith_dot_vec3_i32(u_input.c.zzy, vec3<i32>(38099i, -7014i, u_input.a))));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.a, global1.a, global1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a)))), vec4<f32>(global1.a, -1009f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2307f)))))));
    return vec3<bool>(any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(false, false, false, false)), true, u_input.a <= -5627i))), true, !(!(!any(vec3<bool>(true, true, false)))));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = -2147483647i;
    let var_1 = func_4(func_2(), ~vec2<i32>(10748i, global1.b ^ 0i) >> (arg_1.xz % vec2<u32>(32u)), max(~firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b, arg_1.zz)), firstTrailingBit(~arg_1.xz) | _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b.x, 4294967295u), arg_1.xz)), Struct_2(arg_1.x));
    var var_2 = global4[_wgslsmith_index_u32(~abs(reverseBits(u_input.b.x)), 1u)];
    var var_3 = -(min(vec4<i32>(0i, -2147483647i, 13224i, -1i) >> (var_2.a % vec4<u32>(32u)), vec4<i32>(var_2.c.b, -4330i, u_input.d.x, 1i)) | (-(u_input.c << (vec4<u32>(arg_1.x, 7210u, 0u, 13996u) % vec4<u32>(32u))) ^ vec4<i32>(max(76328i, var_2.c.b), var_2.c.b >> (0u % 32u), 13034i, reverseBits(-1i))));
    let var_4 = var_2.c;
    return vec3<bool>(~(~reverseBits(34589u)) >= (var_2.a.x | abs(_wgslsmith_mult_u32(var_2.b.x, 20523u))), false, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global2[_wgslsmith_index_u32(~abs(u_input.b.x), 9u)], select(vec3<bool>(true, true, !all(global2[_wgslsmith_index_u32(u_input.b.x, 9u)])), vec3<bool>(true == (1u < u_input.b.x), true, true), !func_1(_wgslsmith_f_op_f32(global1.a * 146f), vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x) >> (vec4<u32>(0u, u_input.b.x, 1u, u_input.b.x) % vec4<u32>(32u)))), select(vec3<bool>(!any(vec2<bool>(false, false)), select(true, true, true), true), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(87033u, u_input.b.x), ~vec2<u32>(u_input.b.x, 52729u)), 9u)], true || (_wgslsmith_f_op_f32(max(global1.a, -939f)) <= -1224f)));
    let var_1 = vec3<u32>(1u >> (u_input.b.x % 32u), firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 0u) | vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(u_input.b.x, 99080u, 43923u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 53517u), u_input.b >> (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))) & _wgslsmith_add_u32(1u >> (_wgslsmith_mult_u32(1807u, u_input.b.x) % 32u), 75476u));
    var var_2 = 70804u;
    let x = u_input.a;
    s_output = StorageBuffer(~((-1i << (firstTrailingBit(1u) % 32u)) ^ (select(global1.b, -1i, var_0.x) & ~u_input.a)), var_1.zy, u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~_wgslsmith_dot_vec2_u32(var_1.zx, vec2<u32>(var_1.x, 1u)), u_input.b.x), var_1));
}

