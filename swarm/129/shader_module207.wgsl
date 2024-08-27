struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: bool,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global2: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(-261f, -102f, -414f, 524f), vec4<f32>(-1329f, 1390f, -1717f, 972f), vec4<f32>(555f, -1624f, -1000f, -200f), vec4<f32>(946f, -732f, -691f, -1000f), vec4<f32>(-1000f, -481f, -1166f, 358f), vec4<f32>(-891f, -550f, 804f, -1000f), vec4<f32>(562f, 639f, 162f, -1224f), vec4<f32>(-1019f, -388f, -1000f, -584f), vec4<f32>(247f, 694f, 1802f, -1389f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> vec4<i32> {
    return -countOneBits(select((vec4<i32>(16113i, 1i, global0.b.a.x, -91998i) | vec4<i32>(-49833i, global0.b.a.x, -45428i, -2147483647i)) << (select(vec4<u32>(arg_0.e.a, 0u, global0.a, 4294967295u), vec4<u32>(u_input.a.x, arg_1, arg_1, arg_0.e.a), arg_0.c) % vec4<u32>(32u)), max(~vec4<i32>(30248i, -40030i, arg_0.b, -10799i), vec4<i32>(arg_0.b, -13263i, arg_0.e.b.a.x, global0.b.a.x) >> (global0.c % vec4<u32>(32u))), all(!vec2<bool>(arg_0.c, false))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: vec3<u32>) -> vec2<bool> {
    var var_0 = arg_1.a;
    let var_1 = select(vec2<bool>(arg_0.d, false), arg_1.d, all(select(!select(vec3<bool>(false, arg_1.d.x, arg_1.a), vec3<bool>(arg_0.d, arg_1.a, arg_0.d), vec3<bool>(false, true, arg_0.d)), vec3<bool>(true, arg_1.a, all(vec4<bool>(true, arg_0.d, arg_1.c, arg_0.d))), vec3<bool>(!arg_1.c, !arg_1.c, true))));
    let var_2 = arg_1.e;
    let var_3 = vec2<i32>(~(arg_0.a.x | 42826i) << (firstLeadingBit(4661u) % 32u), ~select(_wgslsmith_mult_i32(min(-61382i, arg_0.a.x), 0i), 1i, all(vec4<bool>(var_1.x, var_1.x, arg_0.d, false))));
    let var_4 = arg_0.a.x;
    return select(vec2<bool>(all(select(var_1, arg_1.d, select(vec2<bool>(var_1.x, arg_1.d.x), var_1, var_1.x))), var_1.x), vec2<bool>(false, false), all(select(vec3<bool>(arg_0.d, arg_1.a, true), vec3<bool>(true, false, any(vec3<bool>(false, false, var_1.x))), 1u > global0.a)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec4<i32>) -> Struct_4 {
    return Struct_4(!arg_1.d, _wgslsmith_mult_i32(arg_2.x, arg_2.x), !any(!global1[_wgslsmith_index_u32(4294967295u, 32u)]), !(!(!func_3(Struct_3(arg_1.a, vec2<u32>(4294967295u, 83094u), 5432u, true), Struct_4(arg_1.d, arg_2.x, arg_0.x, vec2<bool>(false, arg_1.d), Struct_2(4294967295u, global0.b, vec4<u32>(100903u, arg_1.c, u_input.a.x, arg_1.b.x), vec2<f32>(-1000f, global0.d.x))), vec2<u32>(32202u, arg_1.b.x), vec3<u32>(0u, 0u, u_input.a.x)))), Struct_2(reverseBits(arg_1.b.x), global0.b, ~vec4<u32>(arg_1.c, u_input.a.x, 4294967295u, ~u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, global0.d.x) + global0.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 9>();
    var var_0 = Struct_1(vec3<i32>(global0.b.a.x, ~global0.b.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b.a.x, global0.b.a.x, global0.b.a.x, -2147483647i), select(vec4<i32>(global0.b.a.x, 18654i, global0.b.a.x, 0i), vec4<i32>(global0.b.a.x, -1i, 0i, global0.b.a.x), vec4<bool>(true, false, true, true)), func_1(Struct_4(false, global0.b.a.x, false, vec2<bool>(false, true), Struct_2(global0.c.x, Struct_1(vec3<i32>(-2147483647i, global0.b.a.x, 21141i)), vec4<u32>(u_input.a.x, 4294967295u, global0.c.x, 98473u), global0.d)), global0.c.x)), min(firstTrailingBit(vec4<i32>(global0.b.a.x, -2147483647i, -45292i, -2147483647i)), -vec4<i32>(-1704i, -8i, global0.b.a.x, global0.b.a.x)))));
    global2 = array<vec4<f32>, 9>();
    var_0 = global0.b;
    var var_1 = func_2(!vec2<bool>(~4294967295u >= _wgslsmith_sub_u32(u_input.a.x, 11308u), -173f <= _wgslsmith_f_op_f32(select(global0.d.x, global0.d.x, false))), Struct_3(global0.b.a, vec2<u32>(~4294967295u, select(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, 1u, u_input.a.x, u_input.a.x), vec4<u32>(3951u, global0.c.x, 1u, 51215u)), true)), ~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a.x, 52187u)), ~u_input.a.wy), true), vec4<i32>(_wgslsmith_mult_i32(-2147483647i, ~0i), var_0.a.x, 1i, ~_wgslsmith_clamp_i32(-global0.b.a.x, 14989i, global0.b.a.x)));
    var var_2 = true;
    global2 = array<vec4<f32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.e.d.x), var_1.e.d.x) - vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global0.d.x, 1360f)), var_1.e.d.x)), -1031f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x * global0.d.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-476f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global0.d, global0.d))), _wgslsmith_f_op_vec2_f32(step(global0.d, vec2<f32>(118f, -1043f))))), global0.a, ~(~(~global0.c.x)), func_1(Struct_4(true, var_0.a.x, true, !select(vec2<bool>(true, true), vec2<bool>(var_1.c, true), true), func_2(vec2<bool>(true, var_1.d.x), Struct_3(var_0.a, vec2<u32>(global0.a, 0u), u_input.a.x, var_1.c), max(vec4<i32>(var_1.b, var_1.b, 0i, global0.b.a.x), vec4<i32>(var_0.a.x, -41014i, -2147483647i, 0i))).e), firstLeadingBit(max(_wgslsmith_mod_u32(global0.a, 15655u), ~u_input.a.x))).xwy);
}

