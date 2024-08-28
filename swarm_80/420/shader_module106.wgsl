struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
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

var<private> global0: array<f32, 28> = array<f32, 28>(1000f, -331f, -465f, 301f, -1400f, -866f, 939f, -2677f, -365f, 918f, 449f, 518f, -629f, 434f, -802f, -1634f, -1333f, 737f, 1731f, 713f, -1365f, -1319f, 1092f, 1203f, -1000f, 300f, 1304f, -897f);

var<private> global1: array<vec4<i32>, 31>;

var<private> global2: array<Struct_1, 31>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec2<f32>) -> vec3<u32> {
    let var_0 = global1[_wgslsmith_index_u32(4477u, 31u)] & ~vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.xy, _wgslsmith_sub_vec2_i32(u_input.e.yx, vec2<i32>(-11581i, 2147483647i))), u_input.e.x, ~max(1i, u_input.b.x), _wgslsmith_add_i32(min(u_input.e.x, u_input.e.x), u_input.e.x ^ u_input.e.x));
    var var_1 = -2147483647i;
    let var_2 = ~_wgslsmith_sub_vec3_i32(var_0.xyw, ~_wgslsmith_sub_vec3_i32(max(var_0.zyw, vec3<i32>(-1i, u_input.e.x, -1i)), -u_input.e));
    var_1 = 16831i & var_0.x;
    var_1 = 25808i;
    return arg_1;
}

fn func_2() -> Struct_1 {
    let var_0 = ~countOneBits(min(-2147483647i, u_input.b.x));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 28u)])), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-731f - -1989f) * 1360f) * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.d, func_3(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(u_input.c, 28u)], global0[_wgslsmith_index_u32(u_input.c, 28u)]), vec3<u32>(154392u, u_input.a, 0u), vec2<f32>(124f, 1301f))), 28u)])), any(vec3<bool>(true, _wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(25262u, 28u)]) >= -449f, all(vec2<bool>(false, false))))));
    let var_2 = global2[_wgslsmith_index_u32(u_input.a, 31u)];
    var var_3 = var_2.c.x;
    let var_4 = true;
    return global2[_wgslsmith_index_u32(25762u, 31u)];
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b.x, arg_1.b.x, arg_1.b.x), u_input.d) | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.b.x, u_input.a, 4294967295u), vec4<u32>(arg_2.b.x, u_input.c, 21879u, u_input.d.x))), 28u)]) * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-949f * -971f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.c, 28u)] + global0[_wgslsmith_index_u32(22613u, 28u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 28u)] + global0[_wgslsmith_index_u32(8194u, 28u)]))))));
    global0 = array<f32, 28>();
    global1 = array<vec4<i32>, 31>();
    var var_1 = !arg_1.a;
    var var_2 = func_2().c;
    return 3023u;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = vec2<i32>(reverseBits(-2147483647i), -9376i);
    var var_1 = vec3<i32>(-2147483647i, var_0.x >> (20483u % 32u), _wgslsmith_sub_i32(var_0.x, u_input.e.x)) >> (vec3<u32>(func_4(vec3<bool>(u_input.c <= 4294967295u, false, true), func_2(), Struct_1(arg_3 | arg_2.a, _wgslsmith_div_vec2_u32(vec2<u32>(36981u, 0u), u_input.d.xy), vec3<bool>(arg_2.a, true, true)), arg_0), select(~(~u_input.c), u_input.a, arg_3), min(16653u, u_input.c)) % vec3<u32>(32u));
    global2 = array<Struct_1, 31>();
    let var_2 = func_2();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(707f, 243f, true))) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(745f))), global0[_wgslsmith_index_u32(arg_2.b.x, 28u)])), select(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(min(var_2.b, var_2.b), abs(arg_1.zx)), var_2.b), ~arg_2.b, vec2<bool>(true, true)), var_2.c);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1557f))) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 28u)]));
    let var_2 = _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(func_1(vec2<i32>(u_input.b.x, u_input.b.x), vec3<u32>(u_input.c, 16354u, 4294967295u), global2[_wgslsmith_index_u32(u_input.a, 31u)], false), 4294967295u) | reverseBits(1u)), 28u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(12487u, 28u)])), global0[_wgslsmith_index_u32(~71597u, 28u)]) - global0[_wgslsmith_index_u32(0u, 28u)]) * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(firstLeadingBit(countOneBits(u_input.a)), 28u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(1144f + global0[_wgslsmith_index_u32(0u, 28u)]), _wgslsmith_f_op_f32(f32(-1f) * -853f)))));
    let var_3 = func_2();
    global1 = array<vec4<i32>, 31>();
    global2 = array<Struct_1, 31>();
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 28u)] - -348f))), global0[_wgslsmith_index_u32(15433u, 28u)])));
    let var_5 = vec4<bool>(var_3.c.x, all(vec3<bool>(all(select(vec2<bool>(false, var_3.c.x), vec2<bool>(true, var_3.a), var_3.c.x)), false, true)), any(vec3<bool>(true, true, var_3.a)), true);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, var_3.b.x);
}

