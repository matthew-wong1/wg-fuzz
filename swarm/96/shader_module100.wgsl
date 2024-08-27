struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-1984f, Struct_2(Struct_1(1u, vec3<bool>(true, false, false), vec3<f32>(-1000f, -392f, 259f))), vec3<u32>(1098u, 8873u, 8201u), Struct_1(24235u, vec3<bool>(false, true, false), vec3<f32>(891f, 1000f, -1302f)));

var<private> global1: u32;

var<private> global2: array<Struct_4, 32>;

var<private> global3: vec2<i32> = vec2<i32>(-796i, -61026i);

var<private> global4: Struct_1 = Struct_1(4294967295u, vec3<bool>(false, false, false), vec3<f32>(-2082f, 1112f, -731f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global4.c.x))));
    var var_1 = select(countOneBits(~max(vec4<i32>(global3.x, global3.x, global3.x, u_input.d.x), ~vec4<i32>(1i, 26752i, global3.x, global3.x))), firstLeadingBit(abs(abs(vec4<i32>(0i, u_input.d.x, 0i, u_input.e)))), global4.b.x);
    var var_2 = Struct_3(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1464f, global0.b.a.c.x, global0.d.c.x)))))) * vec3<f32>(_wgslsmith_f_op_f32(-global0.d.c.x), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-992f, 166f), 706f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global4.c.x + -752f))))));
    let var_3 = 199f;
    var_2 = Struct_3(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d.c) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3, 428f, 1331f))), global0.d.c))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a.c.x));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4.c.x))) + global0.b.a.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global0.d.b.x, 4294967295u, false)), 1048f) - global0.a) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(273f - global0.b.a.c.x))), _wgslsmith_f_op_f32(385f * global4.c.x)))), all(!select(vec3<bool>(global4.b.x, true, global4.b.x), vec3<bool>(global0.d.b.x, false, arg_0.x), vec3<bool>(global0.d.b.x, arg_0.x, arg_0.x)))));
    let var_1 = Struct_1(firstTrailingBit(u_input.a), vec3<bool>(any(arg_0.zy), global4.b.x && arg_0.x, global4.b.x), global0.b.a.c);
    var var_2 = reverseBits(global0.c);
    var var_3 = vec3<bool>(false, !var_1.b.x, !any(!var_1.b));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.c.x)));
    return all(select(!vec2<bool>(var_1.b.x, true), !select(!global4.b.zx, select(var_3.yz, global0.d.b.yx, global4.b.x), any(vec4<bool>(false, global0.b.a.b.x, var_3.x, var_1.b.x))), vec2<bool>(true, all(!vec4<bool>(arg_0.x, false, global4.b.x, global4.b.x)))));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = vec2<f32>(global0.b.a.c.x, global0.d.c.x);
    var var_1 = arg_0;
    global3 = ~_wgslsmith_mod_vec2_i32(-u_input.d, u_input.b);
    let var_2 = select(vec4<bool>(!global0.d.b.x, global4.b.x, true, true), !vec4<bool>(true, _wgslsmith_add_i32(-34250i, global3.x) >= 1i, true, !(2147483647i == global3.x)), select(vec4<bool>(!select(true, false, false), !(var_0.x < 873f), all(!vec2<bool>(false, global4.b.x)), (global0.d.b.x & true) == global4.b.x), !vec4<bool>(func_2(global0.d.b, vec4<i32>(2147483647i, u_input.d.x, global3.x, -1i)), true, !global0.b.a.b.x, global0.d.b.x), !global4.b.x));
    var var_3 = reverseBits(~firstLeadingBit(min(vec4<i32>(-2147483647i, global3.x, 9101i, global3.x), vec4<i32>(2147483647i, 0i, 2147483647i, u_input.b.x)) << (firstTrailingBit(vec4<u32>(48152u, u_input.a, arg_0, 29918u)) % vec4<u32>(32u))));
    return 25176u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(249f, global0.b, ~min(~global0.c, global0.c) | global0.c, Struct_1(min(global4.a, global0.b.a.a) | (func_1(1u) | global4.a), global4.b, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.d.c.x, global4.c.x, _wgslsmith_f_op_f32(max(global0.a, 1000f)))))));
    global2 = array<Struct_4, 32>();
    let var_0 = global0.b.a;
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~select(27076u & _wgslsmith_sub_u32(u_input.a, u_input.a), 92857u, !(global4.b.x && var_0.b.x)), _wgslsmith_add_u32(~_wgslsmith_div_u32(firstTrailingBit(4294967295u), 0u), _wgslsmith_clamp_u32(~4294967295u, ~(global4.a << (var_0.a % 32u)), min(~u_input.a, ~global0.c.x)))), 32u)];
    global1 = global0.d.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_0.c.yz * var_0.c.yx), 70335u, vec3<i32>(-(~global3.x), -40935i, global3.x) | abs(vec3<i32>(_wgslsmith_mod_i32(36174i, -10459i), u_input.d.x, i32(-1i) * -1i)));
}

