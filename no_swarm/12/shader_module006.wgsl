struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: array<bool, 8> = array<bool, 8>(true, false, true, false, false, false, true, false);

var<private> global3: array<vec3<f32>, 23>;

var<private> global4: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(1033u, 36764u), vec2<u32>(48648u, 4294967295u), vec2<u32>(19974u, 55075u), vec2<u32>(1u, 1u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 27690u), vec2<u32>(19681u, 1u), vec2<u32>(1405u, 53005u), vec2<u32>(51923u, 4294967295u), vec2<u32>(4294967295u, 61728u), vec2<u32>(1u, 44432u), vec2<u32>(65942u, 0u), vec2<u32>(16917u, 0u), vec2<u32>(30441u, 12357u), vec2<u32>(113767u, 38595u), vec2<u32>(49439u, 0u), vec2<u32>(4294967295u, 57294u), vec2<u32>(1u, 4294967295u), vec2<u32>(31324u, 0u), vec2<u32>(25727u, 0u), vec2<u32>(1u, 1u), vec2<u32>(42543u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(58047u, 30446u), vec2<u32>(4294967295u, 51982u), vec2<u32>(4294967295u, 84951u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 42238u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(firstTrailingBit(0i << (countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 72860u), u_input.a)) % 32u)), -countOneBits(~(~11704i)));
    var var_1 = u_input.a;
    var var_2 = 1244i;
    global3 = array<vec3<f32>, 23>();
    let var_3 = global1.a;
    return Struct_1(_wgslsmith_f_op_f32(-global1.a));
}

fn func_1() -> Struct_1 {
    let var_0 = 2004f;
    global3 = array<vec3<f32>, 23>();
    let var_1 = func_2();
    let var_2 = Struct_1(var_0);
    var var_3 = Struct_1(-177f);
    return var_2;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    global1 = arg_1;
    var var_0 = ~u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.ww);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))));
    let var_3 = var_2;
    return _wgslsmith_mult_i32(_wgslsmith_sub_i32(~(i32(-1i) * -1i) >> (0u % 32u), reverseBits(39771i)), 0i);
}

fn func_4(arg_0: vec2<i32>) -> bool {
    global4 = array<vec2<u32>, 28>();
    var var_0 = abs(vec3<u32>(1u, min(countOneBits(u_input.a.x ^ 4294967295u), reverseBits(~u_input.a.x)), 52444u));
    global1 = func_1();
    global2 = array<bool, 8>();
    let var_1 = vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 8u)], false, !global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(35347u, 76444u), vec2<u32>(67321u, 60408u)), 8u)] & true);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = (_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -33304i >> (0u % 32u), max(-10667i, 34134i)), ~(~vec3<i32>(-25592i, -1i, -22852i))) << (vec3<u32>(_wgslsmith_add_u32(u_input.a.x << (u_input.a.x % 32u), ~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a.xy) << (u_input.a.x % 32u), u_input.a.x) % vec3<u32>(32u))) << (u_input.a.wzx % vec3<u32>(32u));
    global2 = array<bool, 8>();
    let var_2 = Struct_1(global1.a);
    let var_3 = -var_1.yy;
    global2 = array<bool, 8>();
    var var_4 = var_0.a;
    let var_5 = func_4(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(~(~vec2<i32>(-26905i, var_1.x)), vec2<i32>(var_1.x, -770i)), -vec2<i32>(_wgslsmith_mod_i32(1i, var_1.x), func_3(vec4<f32>(var_2.a, var_0.a, global1.a, var_0.a), var_2)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(var_3.x, 4142i), -vec2<i32>(var_1.x, var_1.x), any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 8u)]))), _wgslsmith_mod_vec2_i32(var_3, vec2<i32>(var_1.x, 10965i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-313f * var_2.a)))) + 133f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(4294967295u, 23u)] * vec3<f32>(664f, global1.a, -483f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, -674f, var_2.a) + global3[_wgslsmith_index_u32(77411u, 23u)]))) * global3[_wgslsmith_index_u32(abs(reverseBits(1u)), 23u)]), var_1.x);
}

