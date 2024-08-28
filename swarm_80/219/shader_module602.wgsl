struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<vec2<u32>, 23>;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-31191i, vec4<f32>(-751f, 1293f, 156f, -503f), vec2<bool>(false, true)), Struct_1(2147483647i, vec4<f32>(-1851f, -1084f, -309f, 220f), vec2<bool>(true, false)), Struct_1(-54705i, vec4<f32>(179f, -1880f, 1000f, -237f), vec2<bool>(true, true)), Struct_1(0i, vec4<f32>(-1156f, 597f, -2011f, -863f), vec2<bool>(true, true)), Struct_1(0i, vec4<f32>(583f, 978f, 449f, 143f), vec2<bool>(true, true)), Struct_1(-1i, vec4<f32>(491f, 776f, -452f, -129f), vec2<bool>(true, false)), Struct_1(-67950i, vec4<f32>(1092f, -592f, -103f, 341f), vec2<bool>(true, true)));

var<private> global2: Struct_1 = Struct_1(-23403i, vec4<f32>(293f, -735f, -939f, 1000f), vec2<bool>(true, false));

var<private> global3: i32 = 0i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> vec2<f32> {
    let var_0 = ~(-324i);
    global0 = array<vec2<u32>, 23>();
    let var_1 = _wgslsmith_add_u32(4763u, _wgslsmith_mult_u32(0u, u_input.a.x));
    global0 = array<vec2<u32>, 23>();
    let var_2 = 38948u;
    return global2.b.ww;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>) -> vec2<bool> {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 7u)];
    let var_1 = -1564i;
    let var_2 = global2.b;
    let var_3 = ~vec2<u32>(select(~select(u_input.a.x, 4294967295u, true), u_input.a.x, var_0.c.x | (-1961f <= var_2.x)), _wgslsmith_dot_vec2_u32(~max(global0[_wgslsmith_index_u32(70604u, 23u)], vec2<u32>(757u, 1u)), global0[_wgslsmith_index_u32(1u, 23u)]));
    var var_4 = Struct_2(!(!select(!vec3<bool>(arg_0.x, false, true), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(false, false, global2.c.x))), global2.b.x, var_0.c, Struct_1(-39140i, global2.b, vec2<bool>(all(vec4<bool>(var_0.c.x, false, arg_0.x, global2.c.x)), var_0.c.x)));
    return vec2<bool>(select(arg_0.x, arg_0.x, all(var_4.a)), global2.a > (_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(var_4.d.a, var_4.d.a)) ^ -16535i));
}

fn func_2() -> bool {
    var var_0 = Struct_1(global2.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global2.b)) * vec4<f32>(_wgslsmith_f_op_f32(839f + global2.b.x), global2.b.x, _wgslsmith_f_op_f32(abs(global2.b.x)), _wgslsmith_f_op_f32(-global2.b.x))))), vec2<bool>(true, global2.c.x));
    var var_1 = !vec2<bool>(any(select(vec4<bool>(true, global2.c.x, var_0.c.x, var_0.c.x), !vec4<bool>(var_0.c.x, var_0.c.x, true, global2.c.x), vec4<bool>(global2.c.x, true, false, false))), ~(0u & u_input.a.x) < 1u);
    global3 = 27637i;
    global3 = -var_0.a;
    var_1 = !select(vec2<bool>(true, true), select(!func_3(vec2<bool>(var_0.c.x, global2.c.x), vec3<i32>(-21843i, 2147483647i, -2147483647i)), vec2<bool>(!var_1.x, var_1.x), var_0.b.x >= global2.b.x), true);
    return true || var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -252f), -1045f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_1())))));
    var var_1 = Struct_2(vec3<bool>(true, any(!(!global2.c)), global2.c.x), 1f, select(!global2.c, select(global2.c, vec2<bool>(global2.c.x, false), !func_2()), vec2<bool>(!func_2(), func_2())), Struct_1(0i, _wgslsmith_f_op_vec4_f32(-global2.b), select(select(!global2.c, vec2<bool>(true, global2.c.x), !global2.c.x), select(!global2.c, global2.c, select(global2.c.x, false, true)), true)));
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.b.x), global2.b.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -183f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.d.b.x, -586f))))))));
    var var_2 = u_input.a.x;
    global0 = array<vec2<u32>, 23>();
    var_2 = _wgslsmith_clamp_u32(u_input.a.x << (_wgslsmith_dot_vec4_u32(~(~u_input.a), ~(~u_input.a)) % 32u), u_input.a.x, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(firstLeadingBit(vec2<i32>(2147483647i, global2.a))), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.d.a, 11671i), vec2<i32>(global2.a, var_1.d.a) << (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u)))), ~_wgslsmith_sub_i32(var_1.d.a, -21179i) << (~(~u_input.a.x) % 32u), ~(-6458i)));
}

