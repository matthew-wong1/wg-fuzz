struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(949f, -759f, -2019f), vec3<f32>(1744f, -1000f, -1561f), vec3<f32>(-573f, 838f, -1000f), vec3<f32>(563f, -600f, -204f), vec3<f32>(537f, -1000f, 349f));

var<private> global2: vec2<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = !(global0.b == _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-357f, _wgslsmith_f_op_f32(847f + 1334f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + arg_1.b) * 146f)));
    global2 = vec2<bool>(arg_2.a.x && true, all(vec4<bool>(!all(vec3<bool>(true, true, true)), global0.a.x, true, false)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b));
    let var_2 = Struct_1(select(vec4<bool>(_wgslsmith_div_i32(arg_2.c, arg_1.c) != arg_1.c, !select(true, false, true), select(select(true, arg_2.a.x, arg_1.a.x), any(arg_1.a.xw), arg_2.a.x), global0.a.x), select(select(!vec4<bool>(true, arg_2.a.x, true, false), vec4<bool>(true, false, false, global2.x), !arg_2.a), vec4<bool>(all(vec2<bool>(arg_2.a.x, arg_1.a.x)), any(global0.a), global0.a.x, false), select(arg_1.a, global0.a, arg_2.a)), true), global0.b, -1i);
    let var_3 = global0.a.zx;
    return 128403u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> u32 {
    global0 = arg_2;
    var var_0 = max(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, firstTrailingBit(2477u), ~u_input.a.x), _wgslsmith_clamp_vec3_u32(u_input.a.www, u_input.a.xzy, u_input.a.yzx)), vec3<u32>(0u, 1096u, ~abs(u_input.a.x) & func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1346f, 520f), vec2<f32>(arg_3, arg_3), arg_1.a.x)), Struct_1(vec4<bool>(arg_0.a.x, arg_1.a.x, global0.a.x, arg_2.a.x), 414f, arg_0.c), Struct_1(arg_1.a, -152f, arg_0.c), u_input.a.x)));
    global0 = arg_1;
    var var_1 = vec2<bool>(global2.x, all(vec2<bool>(false, false)));
    var var_2 = vec2<i32>(~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-29039i, 2147483647i), vec2<i32>(0i, 2147483647i))) >> (func_3(vec2<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-465f - -1981f)), arg_1, arg_2, ~(~var_0.x)) % 32u), ~(-19616i));
    return abs(4294967295u);
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.a.wzz << (vec3<u32>(_wgslsmith_clamp_u32(24292u, firstTrailingBit(u_input.a.x) >> (select(u_input.a.x, 8963u, false) % 32u), u_input.a.x), 4294967295u, abs((u_input.a.x ^ 39015u) >> (max(10600u, u_input.a.x) % 32u))) % vec3<u32>(32u));
    var var_1 = _wgslsmith_mod_vec4_u32(u_input.a << (max(select(vec4<u32>(u_input.a.x, 2574u, u_input.a.x, 709u) | u_input.a, ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), global0.a), ~vec4<u32>(12435u, var_0.x, var_0.x, 4294967295u)) % vec4<u32>(32u)), max(min(vec4<u32>(~var_0.x, u_input.a.x, firstTrailingBit(u_input.a.x), func_2(Struct_1(global0.a, global0.b, global0.c), Struct_1(global0.a, global0.b, global0.c), Struct_1(global0.a, -443f, 2147483647i), global0.b)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, var_0.x), ~u_input.a)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(u_input.a), vec4<u32>(10612u, u_input.a.x, 26337u, 97606u), abs(u_input.a)), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x ^ var_0.x, ~var_0.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 74179u, 0u, var_0.x), vec4<u32>(var_0.x, u_input.a.x, 0u, 84572u) | vec4<u32>(4294967295u, 1u, u_input.a.x, 85363u)))));
    let var_2 = Struct_1(vec4<bool>(!all(select(vec2<bool>(true, global2.x), vec2<bool>(true, global0.a.x), vec2<bool>(true, global0.a.x))), false == global2.x, true, !global2.x), -580f, countOneBits(~_wgslsmith_add_i32(-global0.c, global0.c & -46603i)));
    var var_3 = abs(vec4<i32>(-global0.c, var_2.c, -1i, firstTrailingBit(min(global0.c, max(54220i, 1i)))));
    var var_4 = u_input.a;
    return Struct_1(!select(!vec4<bool>(global2.x, global0.a.x, global0.a.x, var_2.a.x), select(!global0.a, vec4<bool>(var_2.a.x, global2.x, false, var_2.a.x), !vec4<bool>(true, true, true, var_2.a.x)), select(!vec4<bool>(var_2.a.x, true, false, true), global0.a, global0.a)), _wgslsmith_f_op_f32(floor(-572f)), i32(-1i) * -_wgslsmith_dot_vec2_i32(var_3.yx, _wgslsmith_mod_vec2_i32(var_3.xx, vec2<i32>(-15821i, var_2.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global1 = array<vec3<f32>, 5>();
    let var_0 = 981f;
    let var_1 = func_1();
    let var_2 = var_1;
    let var_3 = vec3<i32>(-2147483647i, max(reverseBits((var_1.c << (u_input.a.x % 32u)) & -2147483647i), 1i), -45830i);
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, max(~u_input.a.x, u_input.a.x), _wgslsmith_add_u32(4294967295u, countOneBits(u_input.a.x)), u_input.a.x), ~(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4354u)))));
}

