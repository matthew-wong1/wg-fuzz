struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10>;

var<private> global1: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(71873u, 23081u, 40381u), vec3<u32>(4294967295u, 11881u, 57176u), vec3<u32>(0u, 9449u, 57100u), vec3<u32>(1u, 74552u, 1u), vec3<u32>(0u, 1u, 0u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 39723u, 27701u), vec3<u32>(1u, 19947u, 34481u), vec3<u32>(72491u, 1u, 66672u), vec3<u32>(82186u, 0u, 2474u), vec3<u32>(55918u, 41513u, 68701u));

var<private> global2: Struct_2 = Struct_2(0i, 1i);

var<private> global3: Struct_4;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> i32 {
    let var_0 = _wgslsmith_mod_u32(arg_1.c.x >> (u_input.b % 32u), ~103617u);
    global1 = array<vec3<u32>, 11>();
    var var_1 = countOneBits(abs(_wgslsmith_add_i32(u_input.a, -3058i)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_3 = Struct_4(global3.a, arg_1.b, ~(~global3.c));
    return u_input.a;
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    global1 = array<vec3<u32>, 11>();
    var var_0 = Struct_2(abs(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(-12438i, u_input.a), firstLeadingBit(global2.b)), global2.b)), (_wgslsmith_add_i32(_wgslsmith_mult_i32(global2.a, global2.b), ~0i) << (0u % 32u)) << (global3.c.x % 32u));
    global2 = Struct_2(-u_input.a, u_input.a);
    var_0 = Struct_2(~reverseBits(func_3(false, global0[_wgslsmith_index_u32(u_input.b, 10u)])), -1i);
    var_0 = Struct_2(-(~u_input.a), var_0.b);
    return global3.a;
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = abs(vec3<i32>(u_input.a >> (~global3.a.a % 32u), ~_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_0.b, 2147483647i), vec2<i32>(u_input.a, 19209i), vec2<bool>(true, true)), vec2<i32>(-18427i, u_input.a) ^ vec2<i32>(arg_0.a, 29805i)), u_input.a >> (0u % 32u)));
    let var_1 = 0i;
    let var_2 = Struct_4(func_2(global0[_wgslsmith_index_u32(~global3.a.a, 10u)]), _wgslsmith_div_vec2_f32(global3.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b))), countOneBits(~vec2<u32>(global3.a.a, u_input.b)) & global3.c);
    global3 = var_2;
    global3 = Struct_4(Struct_3(~global3.c.x), global3.b, vec2<u32>(2114u, ~_wgslsmith_clamp_u32(~20607u, var_2.a.a, 2319u)));
    return i32(-1i) * -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), false)), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec2<bool>(true, true))), vec2<bool>((global3.a.a & 22410u) == 53526u, true), false), !(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), false))));
    let var_1 = ~global1[_wgslsmith_index_u32(min(~(~_wgslsmith_mult_u32(4294967295u, global3.c.x)), global3.a.a), 11u)];
    var var_2 = Struct_1(!var_0.x, vec3<i32>(-u_input.a, u_input.a, func_1(Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-48522i, global2.a, -1i), vec3<i32>(11990i, u_input.a, 2147483647i)), _wgslsmith_sub_i32(u_input.a, 6603i)))));
    var var_3 = global0[_wgslsmith_index_u32(reverseBits(min(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1.x, global3.c.x, 34535u), vec4<u32>(53179u, var_1.x, var_1.x, global3.c.x)), vec4<u32>(global3.a.a, global3.c.x, 20254u, 1u)), vec4<u32>(u_input.b, var_1.x, ~4294967295u, global3.a.a)))), 10u)];
    let var_4 = global0[_wgslsmith_index_u32(global3.c.x, 10u)];
    let var_5 = func_2(Struct_4(func_2(global0[_wgslsmith_index_u32(1u, 10u)]), vec2<f32>(var_3.b.x, -951f), _wgslsmith_add_vec2_u32(global3.c, countOneBits(global3.c) << (var_3.c % vec2<u32>(32u)))));
    global1 = array<vec3<u32>, 11>();
    global3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 1u >> (0u % 32u)), vec3<u32>(1u, ~countOneBits(4294967295u), _wgslsmith_dot_vec2_u32(var_1.xz, vec2<u32>(4294967295u, var_4.c.x)) >> (var_5.a % 32u))), 11u)], global1[_wgslsmith_index_u32(firstTrailingBit(1u), 11u)]), 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(~_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, var_2.b.x, -49991i), vec3<i32>(-30556i, -2147483647i, var_2.b.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_4.b.x, global3.b.x, global3.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.x, -2080f, global3.b.x) * vec3<f32>(global3.b.x, var_4.b.x, var_3.b.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-698f, var_3.b.x, 1000f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.b.x, var_4.b.x, -501f))), !vec3<bool>(var_2.a, true, true)))))));
}

