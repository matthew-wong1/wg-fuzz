struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(95930u, 32765u, 8256u, 0u, 4294967295u, 1u, 1u, 4294967295u, 67577u, 4406u, 1u, 4294967295u, 17097u, 0u);

var<private> global1: Struct_3;

var<private> global2: array<vec4<u32>, 10>;

var<private> global3: array<Struct_3, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> u32 {
    global3 = array<Struct_3, 11>();
    return ~26594u;
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = vec4<bool>(any(select(!(!vec2<bool>(arg_1.a.d.a.x, false)), arg_1.a.c.xy, !global1.a.d.a.x || !global1.a.c.x)), select(select(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(4294967295u, 10u)], vec4<u32>(68951u, 16559u, 21567u, 4294967295u)), 35302u, false) <= firstLeadingBit(arg_0 ^ 67969u), select(all(vec3<bool>(false, global1.a.d.a.x, global1.a.c.x)), 20769i != arg_1.a.b.x, arg_1.a.d.a.x), true), any(vec4<bool>(!arg_1.a.d.a.x, any(select(vec3<bool>(arg_1.a.c.x, true, false), vec3<bool>(false, true, false), vec3<bool>(arg_1.a.d.a.x, true, true))), arg_1.a.c.x, global1.a.e <= _wgslsmith_f_op_f32(1042f + arg_1.a.e))), !all(vec2<bool>(global1.a.d.a.x, any(vec2<bool>(arg_1.a.d.a.x, global1.a.c.x)))));
    global2 = array<vec4<u32>, 10>();
    var var_1 = global1.a.d;
    var var_2 = ~u_input.b.x;
    let var_3 = 4294967295u;
    return vec4<i32>(0i, 1i, _wgslsmith_clamp_i32(0i, u_input.b.x, -3491i >> (~arg_1.a.d.d.x % 32u)), -20530i);
}

fn func_2() -> f32 {
    var var_0 = ~0u;
    var var_1 = Struct_3(Struct_2(global1.a.a << (~min(global2[_wgslsmith_index_u32(0u, 10u)], vec4<u32>(global1.a.d.c, 48779u, global1.a.d.d.x, 4294967295u)) % vec4<u32>(32u)), vec2<i32>(~min(global1.a.d.b.x, u_input.a.x), countOneBits(-u_input.a.x)), vec4<bool>(global1.a.c.x, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(3127u, 14u)], global1.a.d.d.x, 55960u) <= _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 14u)], 140270u), global1.a.c.x, false), Struct_1(select(global1.a.d.a, select(global1.a.c.yzx, vec3<bool>(false, false, global1.a.c.x), vec3<bool>(global1.a.c.x, global1.a.c.x, global1.a.c.x)), true), global1.a.d.b, select(global1.a.d.d.x, 4294967295u, true), firstLeadingBit(global1.a.d.d << (global1.a.d.d % vec3<u32>(32u)))), _wgslsmith_f_op_f32(global1.a.e - 759f)));
    var var_2 = Struct_2(func_3(max(global0[_wgslsmith_index_u32(~1u, 14u)], var_1.a.d.c), global3[_wgslsmith_index_u32(0u, 11u)]), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, _wgslsmith_div_i32(-1i << (global1.a.d.d.x % 32u), 1i)), var_1.a.a.zz), select(global1.a.c, vec4<bool>(true, !(var_1.a.d.c > var_1.a.d.d.x), true, all(!vec4<bool>(true, global1.a.d.a.x, var_1.a.c.x, global1.a.d.a.x))), global1.a.d.a.x), global1.a.d, -1000f);
    let var_3 = Struct_2(abs(_wgslsmith_clamp_vec4_i32(func_3(global1.a.d.c, Struct_3(global1.a)), global1.a.a, var_2.a)), select(u_input.a.xy, ~(-var_2.d.b ^ u_input.b.xy), select(var_1.a.d.a.yx, vec2<bool>(var_1.a.d.a.x, !global1.a.d.a.x), !global1.a.d.a.xy)), global1.a.c, Struct_1(select(var_2.c.zxy, select(vec3<bool>(false, var_2.d.a.x, global1.a.d.a.x), vec3<bool>(false, global1.a.c.x, var_2.d.a.x), !var_2.d.a), var_1.a.c.x), var_1.a.a.ww, ~4294967295u, ~vec3<u32>(firstLeadingBit(4294967295u), var_1.a.d.c, var_2.d.d.x)), -255f);
    var var_4 = true;
    return var_3.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 14u)], ~35244u), abs(13265u)), ~(~global1.a.d.c | global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~22702u, ~global0[_wgslsmith_index_u32(4294967295u, 14u)]), 14u)]));
    var var_1 = global1.a.b.x;
    let var_2 = global3[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.a.d.c, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(4601u, 14u)]), vec3<u32>(global1.a.d.d.x, 0u, global0[_wgslsmith_index_u32(11641u, 14u)]) << (global1.a.d.d % vec3<u32>(32u))))), 11u)];
    let var_3 = ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 14u)], 9788u, 96175u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)]) | vec4<u32>(var_2.a.d.c, 4294967295u, var_2.a.d.c, 1u), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)] | ~1u, 10u)], vec4<u32>(var_2.a.d.c, func_1(vec2<bool>(false, false), false), ~17992u, var_2.a.d.d.x ^ global1.a.d.d.x)));
    global3 = array<Struct_3, 11>();
    let var_4 = var_2.a.d.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1241f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1792f, 1424f), _wgslsmith_f_op_f32(1854f + var_2.a.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))), vec2<f32>(global1.a.e, _wgslsmith_f_op_f32(ceil(global1.a.e))), -820f);
}

