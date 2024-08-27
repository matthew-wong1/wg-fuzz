struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(0u, 4111u, 4294967295u, 22540u, 80708u, 1u, 57477u);

var<private> global1: array<f32, 3>;

var<private> global2: array<f32, 19>;

var<private> global3: array<Struct_1, 26>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1.a;
    global1 = array<f32, 3>();
    var var_1 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 3u)] - _wgslsmith_f_op_f32(-916f - _wgslsmith_f_op_f32(532f * _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(~4294967295u, 19u)])))));
    global2 = array<f32, 19>();
    var var_2 = arg_1;
    return ~arg_1.c | u_input.a;
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = ~u_input.a;
    var var_1 = arg_0;
    global0 = array<u32, 7>();
    var_0 = max(_wgslsmith_sub_i32(-48678i, arg_0.c), var_1.c);
    var_0 = 67616i;
    return 25967i;
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    let var_0 = global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(max(arg_0.x, 1u), global0[_wgslsmith_index_u32(arg_0.x, 7u)]), 7u)], 7u)], 26u)];
    var var_1 = global3[_wgslsmith_index_u32(~abs(max(~arg_0.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(40685u, global0[_wgslsmith_index_u32(38378u, 7u)], 0u, arg_0.x), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 1u, 21354u), var_0.a.x), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 7u)], 7u)], arg_0.x, global0[_wgslsmith_index_u32(1u, 7u)], arg_0.x)))), 26u)];
    let var_2 = select(var_0.a.xw, var_0.a.zw, !any(var_1.a.wzz));
    var var_3 = var_1.a.x;
    let var_4 = ~(vec2<i32>(max(u_input.a, func_1(0u, global3[_wgslsmith_index_u32(18127u, 26u)])), _wgslsmith_sub_i32(1i, var_1.c)) >> (arg_0 % vec2<u32>(32u)));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 19>();
    let var_0 = global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 26u)];
    global3 = array<Struct_1, 26>();
    var var_1 = ~(-_wgslsmith_sub_vec3_i32(vec3<i32>(func_1(global0[_wgslsmith_index_u32(75585u, 7u)], Struct_1(var_0.a, var_0.c, 9652i, var_0.d, vec3<i32>(29716i, var_0.b, 10991i))), var_0.b, func_2(Struct_1(var_0.a, 10542i, u_input.b.x, vec2<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 19u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24192u, 7u)], 7u)], 19u)]), var_0.e))), var_0.e));
    global1 = array<f32, 3>();
    let var_2 = select(vec3<i32>(select(-u_input.a, -13778i, true), func_2(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(28023u), 7u)], 7u)], 7u)], 26u)]), -26374i) ^ var_0.e, vec3<i32>(abs(0i), var_1.x, _wgslsmith_mult_i32(9562i, -_wgslsmith_clamp_i32(-2147483647i, var_0.b, 1i))), select(select(vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(true, !var_0.a.x, false), var_0.a.x && select(false, var_0.a.x, var_0.a.x)), !var_0.a.zww, true));
    global1 = array<f32, 3>();
    global1 = array<f32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(var_0.e, vec3<i32>(_wgslsmith_mult_i32(var_0.e.x, var_1.x) >> (abs(0u) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-26626i, 14641i, u_input.a), var_0.e), vec3<i32>(var_1.x, var_0.b, u_input.b.x) | var_2), _wgslsmith_clamp_i32(var_2.x, func_3(vec2<u32>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(6492u, 7u)])), var_1.x))));
}

