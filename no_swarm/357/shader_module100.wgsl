struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: array<vec4<f32>, 15>;

var<private> global2: bool;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<bool> {
    var var_0 = ~(87049u ^ ~_wgslsmith_sub_u32(1u, ~arg_0.x));
    let var_1 = abs(max(_wgslsmith_add_i32(~arg_1.a.x, 31182i), _wgslsmith_dot_vec4_i32(-(u_input.d << (vec4<u32>(0u, 0u, 9245u, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(-u_input.d, u_input.d ^ u_input.d))));
    var var_2 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), min(-2147483647i, -1i)), -global3.a), abs(abs(-1i))), min(u_input.d.zyy, select((vec3<i32>(-1i, arg_1.b, arg_1.a.x) << (vec3<u32>(u_input.b.x, 1u, u_input.b.x) % vec3<u32>(32u))) | vec3<i32>(var_1, u_input.d.x, var_1), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -13067i, var_1), vec3<i32>(0i, 0i, global3.a.x), arg_1.a.yxw), select(vec3<bool>(arg_2.x, global3.c.x, arg_1.c), global3.c.yzy, false))), global3.c);
    var var_3 = -2246i;
    let var_4 = arg_1;
    return var_2.c;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global3.a, u_input.d.xwx, vec4<bool>(false, any(!global3.c.yw), true, global3.c.x));
    global1 = array<vec4<f32>, 15>();
    let var_1 = Struct_1(-countOneBits(vec2<i32>(742i, u_input.c.x) ^ vec2<i32>(4439i, 2147483647i)), _wgslsmith_div_vec3_i32(~var_0.b, _wgslsmith_clamp_vec3_i32(~vec3<i32>(global3.b.x, 1i, 8658i), vec3<i32>(firstLeadingBit(var_0.b.x), global3.b.x ^ 9686i, _wgslsmith_div_i32(global3.b.x, global3.a.x)), ~_wgslsmith_div_vec3_i32(vec3<i32>(-16151i, var_0.b.x, global3.b.x), var_0.b))), select(!vec4<bool>(var_0.c.x, false, global3.c.x, global3.c.x), func_3(~u_input.a.yzw << (u_input.b % vec3<u32>(32u)), Struct_2(vec4<i32>(0i, -2147483647i, 0i, var_0.b.x) >> (u_input.a % vec4<u32>(32u)), global3.b.x, global3.c.x), global3.c.yw), !vec4<bool>(var_0.c.x, any(vec4<bool>(false, true, var_0.c.x, false)), true, var_0.c.x == global3.c.x)));
    let var_2 = u_input.b.zy;
    global0 = array<Struct_2, 9>();
    return var_1;
}

fn func_1(arg_0: f32) -> Struct_2 {
    global2 = true;
    let var_0 = func_2();
    let var_1 = global0[_wgslsmith_index_u32(~(~(~27382u)), 9u)];
    var var_2 = var_0;
    var_2 = func_2();
    return Struct_2(reverseBits(-vec4<i32>(-1i, ~var_2.b.x, reverseBits(-2147483647i), ~u_input.c.x)), 2147483647i, !all(func_2().c.yy));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> f32 {
    let var_0 = ~12641i;
    let var_1 = !global3.c;
    let var_2 = Struct_1(~select(~vec2<i32>(4000i, 24006i) ^ -arg_1.zz, abs(vec2<i32>(global3.b.x, global3.b.x)), any(!vec4<bool>(false, false, global3.c.x, true))), u_input.d.zxw, var_1);
    global1 = array<vec4<f32>, 15>();
    var var_3 = ~(vec3<u32>(u_input.a.x, 16375u, ~u_input.a.x) >> (~u_input.a.yxx % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -979f)) + -443f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-983f, -199f)) * -3027f))), _wgslsmith_f_op_f32(floor(-606f)), 1544f);
    global1 = array<vec4<f32>, 15>();
    global0 = array<Struct_2, 9>();
    let var_1 = _wgslsmith_div_u32(~(42434u & u_input.a.x), u_input.b.x);
    var var_2 = countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(select(-2147483647i, global3.a.x, false), _wgslsmith_mod_i32(global3.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, global3.a.x, -11005i, -64852i), u_input.d)), 1i, ~(-2147483647i) ^ -global3.b.x), u_input.d));
    var_2 = -38434i;
    var var_3 = _wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -244f))), -vec3<i32>(u_input.c.x, ~select(-53987i, 1i, global3.c.x), min(~u_input.c.x, ~1i))));
    global1 = array<vec4<f32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-388f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -387f)))), var_0.x, _wgslsmith_f_op_f32(-var_0.x));
}

