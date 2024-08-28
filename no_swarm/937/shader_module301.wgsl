struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(-18324i, -18453i, 0i), vec3<i32>(12649i, -1i, 1i), vec3<i32>(1i, 12910i, 25052i), vec3<i32>(-13666i, i32(-2147483648), 1i), vec3<i32>(0i, -20030i, 2147483647i), vec3<i32>(-1i, -33296i, -1i), vec3<i32>(-19692i, -1i, -6926i), vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(0i, 2147483647i, 12020i), vec3<i32>(37089i, 9390i, 47796i));

var<private> global2: array<f32, 1>;

var<private> global3: vec2<f32>;

var<private> global4: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(false, 1u, vec3<bool>(true, false, true)), Struct_1(true, 1u, vec3<bool>(false, true, false)), Struct_1(false, 11623u, vec3<bool>(true, false, true)), Struct_1(true, 51521u, vec3<bool>(true, true, true)), Struct_1(true, 10128u, vec3<bool>(true, true, false)), Struct_1(false, 0u, vec3<bool>(false, true, true)), Struct_1(false, 23975u, vec3<bool>(false, false, false)), Struct_1(false, 42186u, vec3<bool>(false, false, false)), Struct_1(false, 4294967295u, vec3<bool>(false, true, true)), Struct_1(true, 52774u, vec3<bool>(true, false, false)), Struct_1(true, 44493u, vec3<bool>(false, false, false)), Struct_1(true, 1u, vec3<bool>(false, true, true)), Struct_1(false, 58399u, vec3<bool>(true, false, false)), Struct_1(false, 0u, vec3<bool>(true, true, true)), Struct_1(true, 38081u, vec3<bool>(false, false, false)), Struct_1(false, 0u, vec3<bool>(true, true, false)), Struct_1(true, 23794u, vec3<bool>(true, false, false)), Struct_1(true, 1u, vec3<bool>(false, false, true)), Struct_1(true, 1u, vec3<bool>(false, true, true)), Struct_1(false, 4294967295u, vec3<bool>(false, true, false)), Struct_1(true, 8952u, vec3<bool>(false, false, true)), Struct_1(false, 4294967295u, vec3<bool>(false, false, false)), Struct_1(true, 48452u, vec3<bool>(true, false, false)), Struct_1(false, 4294967295u, vec3<bool>(false, false, true)), Struct_1(false, 1u, vec3<bool>(false, true, false)), Struct_1(false, 4294967295u, vec3<bool>(true, false, false)), Struct_1(true, 39884u, vec3<bool>(true, false, false)), Struct_1(false, 4294967295u, vec3<bool>(true, false, false)), Struct_1(true, 202u, vec3<bool>(true, true, false)), Struct_1(false, 48849u, vec3<bool>(true, false, false)), Struct_1(true, 22686u, vec3<bool>(false, false, true)), Struct_1(false, 67277u, vec3<bool>(true, false, true)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    let var_0 = true;
    var var_1 = Struct_1(var_0, countOneBits(25562u), !vec3<bool>(global2[_wgslsmith_index_u32(~6187u, 1u)] == -1000f, firstTrailingBit(u_input.c) <= 23017i, (false || var_0) || var_0));
    global3 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_1.b, 18u)], 1876f))))), 446f)), -1285f);
    global4 = array<Struct_1, 32>();
    let var_2 = firstLeadingBit(firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, u_input.a.x, u_input.a.x), vec3<u32>(1u, u_input.b, 40119u))));
    return var_0;
}

fn func_2() -> i32 {
    let var_0 = u_input.c << (1u % 32u);
    var var_1 = !(!func_3() & (all(vec2<bool>(true, true)) | true));
    let var_2 = -194f;
    global2 = array<f32, 1>();
    global2 = array<f32, 1>();
    return ~(-6514i);
}

fn func_1(arg_0: Struct_1) -> bool {
    global2 = array<f32, 1>();
    var var_0 = abs(_wgslsmith_sub_vec4_i32(vec4<i32>(19420i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-2147483647i, u_input.c), u_input.c << (u_input.b % 32u)), _wgslsmith_add_i32(u_input.c, u_input.c), ~1i | u_input.c), vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, -2147483647i, 40433i), vec4<i32>(u_input.c, -2147483647i, u_input.c, -2147483647i)), -1i), func_2(), 2147483647i, 2147483647i)));
    let var_1 = select(arg_0.c.zz, !select(select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.c.x, arg_0.a), vec2<bool>(false, arg_0.a)), select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.c.x, true), vec2<bool>(arg_0.c.x, true)), arg_0.c.xx), arg_0.c.xz);
    global4 = array<Struct_1, 32>();
    let var_2 = all(var_1);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(any(vec3<bool>(any(vec2<bool>(false, true)), true, false)), func_1(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), 32u)]), false, false);
    var var_1 = !vec2<bool>(!any(select(var_0, var_0, false)), func_1(global4[_wgslsmith_index_u32(select(reverseBits(u_input.b), abs(514u), !var_0.x), 32u)]));
    global3 = vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(17103u, 18u)]);
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(u_input.a >> (~u_input.a % vec4<u32>(32u)), vec4<u32>(u_input.b, 4294967295u, reverseBits(4294967295u), 0u)) >> (u_input.a % vec4<u32>(32u)), u_input.a), 32u)];
    var var_3 = global4[_wgslsmith_index_u32(var_2.b, 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

