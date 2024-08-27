struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18>;

var<private> global1: i32 = -18492i;

var<private> global2: f32;

var<private> global3: array<vec2<u32>, 14>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = false;
    let var_1 = Struct_5(Struct_1(~select(1u, u_input.b | u_input.c, any(vec2<bool>(var_0, var_0))), vec2<i32>(-1i, -_wgslsmith_div_i32(0i, -34544i)), select(!var_0 || var_0, true, true), vec2<f32>(121f, _wgslsmith_div_f32(-738f, _wgslsmith_f_op_f32(f32(-1f) * -1112f)))), -2147483647i, Struct_1(select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u) ^ global3[_wgslsmith_index_u32(24684u, 14u)], vec2<u32>(u_input.a.x, 0u) << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))), firstTrailingBit(u_input.c), all(!vec4<bool>(true, true, true, var_0))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-9587i, -2147483647i), vec2<i32>(-2793i, 53373i), vec2<i32>(70238i, -48421i)) | vec2<i32>(1i, 8873i), all(vec3<bool>(true, false, u_input.b <= u_input.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1099f - -675f), _wgslsmith_div_f32(316f, 1000f)) - vec2<f32>(_wgslsmith_f_op_f32(max(-1726f, 277f)), _wgslsmith_f_op_f32(select(-2486f, 575f, true))))));
    global0 = array<vec4<i32>, 18>();
    let var_2 = !var_0 | false;
    global1 = abs(-32710i);
    return 0u ^ _wgslsmith_dot_vec2_u32(abs(reverseBits(global3[_wgslsmith_index_u32(u_input.a.x, 14u)])), select(abs(~u_input.a), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a.a, u_input.c), vec2<u32>(0u, u_input.b), u_input.a), select(select(vec2<bool>(false, true), vec2<bool>(var_0, var_1.a.c), var_1.a.c), select(vec2<bool>(false, var_2), vec2<bool>(false, false), true), false)));
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: vec4<u32>, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-27125i, -1i), -1i), arg_0.a.a.b.x);
    let var_1 = global0[_wgslsmith_index_u32(60814u, 18u)];
    var var_2 = Struct_2(Struct_1(func_3(), ~vec2<i32>(2147483647i, arg_0.a.a.b.x), true, vec2<f32>(_wgslsmith_f_op_f32(sign(-321f)), _wgslsmith_f_op_f32(abs(285f)))));
    var var_3 = Struct_2(arg_0.a.a);
    let var_4 = Struct_2(var_3.a);
    return Struct_2(var_2.a);
}

fn func_1(arg_0: Struct_4, arg_1: vec3<u32>) -> vec3<u32> {
    global2 = arg_0.a.a.d.x;
    var var_0 = -574f;
    var var_1 = 78031i;
    var var_2 = func_2(arg_0, 0u, select(arg_0.c, firstTrailingBit(_wgslsmith_mult_vec4_u32(arg_0.c, ~vec4<u32>(4294967295u, 8755u, 48934u, arg_0.e))), arg_0.d), !(!vec4<bool>(any(arg_0.d), arg_0.d.x, true, true)));
    global1 = min(var_2.a.b.x, var_2.a.b.x);
    return (reverseBits(vec3<u32>(u_input.b | 0u, _wgslsmith_div_u32(1u, 1u), ~4294967295u)) & arg_1) | vec3<u32>(~func_2(arg_0, 1u, _wgslsmith_div_vec4_u32(arg_0.c, vec4<u32>(arg_0.e, arg_0.e, arg_0.c.x, 1u)), select(vec4<bool>(arg_0.a.a.c, arg_0.a.a.c, false, false), vec4<bool>(true, false, var_2.a.c, arg_0.d.x), true)).a.a, ~func_2(arg_0, _wgslsmith_clamp_u32(var_2.a.a, 0u, 4294967295u), reverseBits(arg_0.c), vec4<bool>(true, var_2.a.c, false, true)).a.a, _wgslsmith_div_u32(29891u, _wgslsmith_mod_u32(arg_0.c.x, var_2.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 18>();
    var var_0 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~func_1(Struct_4(Struct_2(Struct_1(u_input.b, vec2<i32>(1i, 2147483647i), false, vec2<f32>(1091f, -307f))), vec4<f32>(888f, -337f, -729f, -1165f), vec4<u32>(51660u, 11027u, 1u, 15147u), vec4<bool>(true, true, false, true), u_input.b), vec3<u32>(u_input.a.x, 1u, u_input.c)), max(~vec3<u32>(23533u, 69941u, u_input.a.x), vec3<u32>(0u, 98252u, u_input.c))), ~vec3<u32>(~u_input.c, 74149u, countOneBits(57169u)), _wgslsmith_clamp_vec3_u32(~select(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.c, 16910u, u_input.a.x), true), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 56548u), ~vec3<u32>(17507u, u_input.b, u_input.c), vec3<u32>(u_input.b, 1u, 1u) >> (vec3<u32>(u_input.b, u_input.c, 1u) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(vec3<u32>(19567u, u_input.c, u_input.a.x), ~vec3<u32>(u_input.a.x, u_input.c, u_input.c))));
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(!((u_input.a.x != 22427u) == true), true));
    let var_2 = true;
    global0 = array<vec4<i32>, 18>();
    let var_3 = vec3<i32>(~(-_wgslsmith_mod_i32(i32(-1i) * -55863i, -2147483647i)), 0i, -reverseBits(min(-8578i, -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(22029i, var_0.x);
}

