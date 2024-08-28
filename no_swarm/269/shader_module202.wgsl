struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(8052u, 14874u, 70753u, 0u);

var<private> global1: Struct_3 = Struct_3(false, 6509u, Struct_1(vec3<bool>(false, true, false), vec4<u32>(1u, 1u, 42689u, 66938u), -1319f));

var<private> global2: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true));

var<private> global3: Struct_3 = Struct_3(true, 1u, Struct_1(vec3<bool>(true, true, false), vec4<u32>(30473u, 48559u, 0u, 0u), 1507f));

var<private> global4: f32 = 1390f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1267f, global1.c.c, -977f, global3.c.c))) + vec4<f32>(global1.c.c, arg_0.x, -1057f, 1039f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1177f), global1.c.c, _wgslsmith_f_op_f32(round(560f)), _wgslsmith_f_op_f32(select(global1.c.c, 196f, false)))), !(!select(vec4<bool>(false, false, global3.c.a.x, global3.a), global2[_wgslsmith_index_u32(global1.c.b.x, 19u)], vec4<bool>(global3.a, global1.a, false, global1.c.a.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.c.c, 2925f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1552f * global3.c.c), _wgslsmith_f_op_f32(-global3.c.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-105f * _wgslsmith_f_op_f32(floor(global3.c.c))))));
    let var_1 = min(countOneBits(select(max(u_input.a, ~vec3<i32>(u_input.a.x, -2147483647i, -16259i)), u_input.a >> (global0.zwz % vec3<u32>(32u)), vec3<bool>(46826u < global3.b, global3.a, true))), _wgslsmith_div_vec3_i32(u_input.a, u_input.a));
    global3 = Struct_3(!global3.c.a.x, 0u, global1.c);
    let var_2 = global3.c.c;
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(arg_0.xx, arg_0.yy))));
    return all(!(!select(global1.c.a, select(vec3<bool>(false, true, false), vec3<bool>(global1.c.a.x, true, false), true), vec3<bool>(true, true, global3.c.a.x))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<u32>) -> u32 {
    let var_0 = abs(_wgslsmith_mult_vec4_u32(global3.c.b, abs(_wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.b, global1.b, u_input.c, 11660u), vec4<u32>(7659u, 0u, 50159u, global1.b)), ~vec4<u32>(51751u, global0.x, 7289u, arg_2.x)))));
    let var_1 = Struct_2(global1.c.b.x, global1.c.a, Struct_1(vec3<bool>(!func_3(vec3<f32>(arg_0.c.c, global3.c.c, global3.c.c)), true, any(arg_0.c.a)), reverseBits(~(~vec4<u32>(global3.c.b.x, 1u, global3.c.b.x, 4294967295u))), _wgslsmith_f_op_f32(ceil(175f))), min(~(~u_input.a), select(abs(~vec3<i32>(arg_1.x, u_input.a.x, 52317i)), ~vec3<i32>(-48717i, u_input.a.x, arg_1.x) | ~vec3<i32>(u_input.a.x, -33399i, u_input.a.x), all(global2[_wgslsmith_index_u32(1u, 19u)]))));
    let var_2 = vec3<bool>(!all(vec2<bool>(true, true)), !arg_0.a, true);
    var var_3 = arg_0;
    global3 = arg_0;
    return 0u;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: i32) -> Struct_3 {
    return Struct_3(select(!all(select(vec3<bool>(global1.c.a.x, global1.a, false), global1.c.a, vec3<bool>(true, global1.c.a.x, false))), all(!(!vec3<bool>(true, true, global3.c.a.x))), global3.a), u_input.b, global3.c);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec2<f32>) -> Struct_3 {
    global1 = func_4(reverseBits(select(countOneBits(func_2(Struct_3(false, u_input.b, Struct_1(vec3<bool>(global3.a, arg_0, false), vec4<u32>(32734u, global1.c.b.x, 4294967295u, u_input.c), global3.c.c)), vec2<i32>(19756i, arg_1), global3.c.b.ww)), abs(0u), func_3(vec3<f32>(1005f, arg_2.x, global3.c.c)))), ~vec3<i32>(u_input.a.x, -10603i, 13248i), ~(8761i | _wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, -2147483647i), 1i, countOneBits(2147483647i))));
    global4 = 1890f;
    global0 = global1.c.b;
    let var_0 = u_input.a.x;
    global2 = array<vec4<bool>, 19>();
    return func_4(15904u, u_input.a >> (~global0.wyy % vec3<u32>(32u)), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(global1.c.a.x, u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.c.c, 212f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(116f, -919f))))))));
    var var_0 = select(85157i, -2147483647i, true);
    let var_1 = -u_input.a.x;
    var_0 = _wgslsmith_sub_i32(-firstTrailingBit(36029i), -4194i);
    let var_2 = firstTrailingBit(~(((var_1 | var_1) & ~u_input.a.x) & _wgslsmith_div_i32(abs(var_1), -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1160f, -1000f) - vec2<f32>(global1.c.c, global1.c.c))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(550f)), _wgslsmith_f_op_f32(sign(-1020f))) - vec2<f32>(_wgslsmith_f_op_f32(-1621f - global3.c.c), _wgslsmith_f_op_f32(-global1.c.c)))));
}

