struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
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

var<private> global0: vec3<f32> = vec3<f32>(1000f, -233f, -999f);

var<private> global1: array<vec3<u32>, 18>;

var<private> global2: array<Struct_1, 3>;

var<private> global3: Struct_1 = Struct_1(vec2<i32>(24367i, 27348i), vec2<i32>(0i, 1i));

var<private> global4: array<bool, 9> = array<bool, 9>(false, false, true, false, false, false, true, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = arg_2;
    let var_1 = arg_1;
    let var_2 = Struct_1(vec2<i32>(2147483647i, arg_1.b.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, ~(i32(-1i) * -16394i)), ~_wgslsmith_add_vec2_i32(vec2<i32>(16148i, var_1.b.x), arg_1.b << (u_input.a % vec2<u32>(32u))), ~vec2<i32>(~(-2147483647i), -arg_1.b.x)));
    return abs(12638i);
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = vec3<bool>(true, false, !((-2147483647i >= firstTrailingBit(2147483647i)) == !(!global4[_wgslsmith_index_u32(26786u, 9u)])));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * -1000f), 103f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) * _wgslsmith_f_op_f32(abs(-737f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(141f, global0.x)))), false)));
    let var_1 = 35505i << (~u_input.b % 32u);
    let var_2 = Struct_1(countOneBits(-u_input.c), u_input.c);
    global1 = array<vec3<u32>, 18>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -791f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x))));
}

fn func_2() -> u32 {
    let var_0 = u_input.c.x;
    global1 = array<vec3<u32>, 18>();
    let var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a.x, 0u)), _wgslsmith_mult_vec2_u32(countOneBits(~vec2<u32>(u_input.b, 75603u)), vec2<u32>(~1u, ~u_input.b))), 3u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(abs(~vec2<i32>(-18646i, 1i)), u_input.c))));
    global4 = array<bool, 9>();
    return ~30517u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!(!vec2<bool>(true, any(vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 9u)], global4[_wgslsmith_index_u32(0u, 9u)])))));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-612f, global0.x, _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2003f, -1237f, -246f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_div_f32(1000f, -546f), _wgslsmith_f_op_f32(-global0.x))))));
    let var_1 = Struct_1(vec2<i32>(func_1(var_0, Struct_1(global3.b, u_input.c), _wgslsmith_div_u32(0u, u_input.b) <= _wgslsmith_mod_u32(4297u, 4294967295u)), u_input.c.x), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(global3.a, -countOneBits(vec2<i32>(global3.b.x, global3.a.x))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(global3.b.x, 6885i), vec2<i32>(1i, u_input.c.x))));
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2(), u_input.b), 3u)];
    let var_2 = !(!vec4<bool>(!(!var_0), global4[_wgslsmith_index_u32(12695u, 9u)], global4[_wgslsmith_index_u32(4294967295u, 9u)], var_0));
    let var_3 = select(var_2, select(vec4<bool>(any(var_2), 1659f <= _wgslsmith_f_op_f32(-global0.x), global0.x <= -106f, any(select(vec2<bool>(false, false), var_2.wy, vec2<bool>(var_0, false)))), var_2, var_2), vec4<bool>(true, false, var_0, any(var_2.ww)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(max(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, u_input.b, u_input.b), vec4<u32>(1u, 4543u, 23008u, 4294967295u)), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 39169u, u_input.b), vec4<u32>(4294967295u, 37269u, u_input.b, 0u)))));
}

